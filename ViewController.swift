//
//  ViewController.swift
//  SwiftAlgos
//
//  Created by Utsha Guha on 9/24/17.
//  Copyright © 2017 Utsha Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var out = findPeakElement([1,2,3])
        print(out)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }
        else if nums.count == 2{
            for k in 0...nums.count{
                if nums[k] == nums.max(){
                    return k
                }
            }
        }
        
        for i in 1...nums.count-2{
            if nums[i]>nums[i-1] && nums[i]>nums[i+1] {
                return i;
            }
        }
        
        for j in 0...nums.count{
            if nums[j] == nums.max(){
                return j
            }
        }
        return 0
    }


}

