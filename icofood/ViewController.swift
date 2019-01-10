//
//  ViewController.swift
//  icofood
//
//  Created by mac on 1/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var webView: UIWebView!
    @IBAction func setupWebButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            webView.goBack()
        case 1:
            webView.goForward()
        case 2:
            webView.reload()
        default:
            print("Error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWebView()
        print("added gif")
    }
    
    private func setupWebView() {
        guard let url = URL(string: "https://icofood.store") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.loadRequest(urlRequest)
    }
}
