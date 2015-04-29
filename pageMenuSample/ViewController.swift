//
//  ViewController.swift
//  pageMenuSample
//
//  Created by Yuta Chiba on 2015/04/29.
//  Copyright (c) 2015年 yuinchirn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    
    var backColor :UIColor = UIColor.blackColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "PageMenu"
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black

        // 表示するコントローラー
        var controllerArray : [UIViewController] = []
        
        var controller1 = self.storyboard!.instantiateViewControllerWithIdentifier("test1") as! Test1ViewController
        var controller2 = self.storyboard!.instantiateViewControllerWithIdentifier("test2") as! Test2ViewController
        var controller3 = self.storyboard!.instantiateViewControllerWithIdentifier("test3") as! Test3ViewController

        controllerArray.append(controller1)
        controllerArray.append(controller2)
        controllerArray.append(controller3)


        var parameters: [String: AnyObject] = ["scrollMenuBackgroundColor": backColor,
            "viewBackgroundColor": backColor,
            "selectionIndicatorColor": UIColor.orangeColor(),
            "bottomMenuHairlineColor": backColor,
            "menuItemFont": UIFont(name: "HelveticaNeue", size: 13.0)!,
            "menuHeight": 80.0,
            "menuItemWidth": 120.0,
            "centerMenuItems": true,
            "menuItemSeparatorWidth": 4.3   ]

        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 50.0, self.view.frame.width, self.view.frame.height), options: parameters)
        
        self.view.addSubview(pageMenu!.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

