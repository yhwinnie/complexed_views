//
//  ViewController.swift
//  complexed_views
//
//  Created by Marquavious on 10/31/16.
//  Copyright © 2016 marqmakesapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerViewOne: UIView!
    @IBOutlet weak var containerViewTwo: UIView!
    @IBOutlet weak var containerViewThree: UIView!

    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBAction func indexChanged(_ sender: AnyObject) {
        
        switch segmentController.selectedSegmentIndex {
        case 0:
            containerViewOne.isHidden = false
            containerViewTwo.isHidden = true
            containerViewThree.isHidden = true
        case 1:
            containerViewOne.isHidden = true
            containerViewTwo.isHidden = false
            containerViewThree.isHidden = true
        case 2:
            containerViewOne.isHidden = true
            containerViewTwo.isHidden = true
            containerViewThree.isHidden = false
        default:
            break;
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerViewTwo.isHidden = true
        containerViewThree.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        if revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

