//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceView1.image = #imageLiteral(resourceName: "DiceOne")
        diceView2.image = #imageLiteral(resourceName: "DiceOne")
    
        diceView1.layer.cornerRadius = 25
        diceView2.layer.cornerRadius = 25
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let array = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        chageAlpha()
        diceView1.image = array.randomElement()
        diceView2.image = array.randomElement()
        
    }
    func chageAlpha(){
        diceView1.alpha = 0.5
        diceView2.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(75)) {
            self.diceView1.alpha = 1
            self.diceView2.alpha = 1
        }
      
    }
}

