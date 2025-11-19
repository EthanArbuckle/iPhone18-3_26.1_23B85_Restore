@interface HMFitNoiseCheckTopViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HMFitNoiseCheckTopViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HearingModeUI.HMFitNoiseCheckTopView" hasSwiftFieldOfAnyClass:@"topFitCheckView"];
  [v3 validateClass:@"_TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView" hasSwiftFieldOfAnyClass:@"leftBudLabel"];
  [v3 validateClass:@"_TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView" hasSwiftFieldOfAnyClass:@"leftResultLabel"];
  [v3 validateClass:@"_TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView" hasSwiftFieldOfAnyClass:@"rightBudLabel"];
  [v3 validateClass:@"_TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView" hasSwiftFieldOfAnyClass:@"rightResultLabel"];
  [v3 validateClass:@"_TtCC13HearingModeUI22HMFitNoiseCheckTopViewP33_6442BD22BF01B0421AF5366A801593E921FitNoiseCheckBudsView" hasSwiftFieldOfAnyClass:@"spacerLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v26.receiver = self;
  v26.super_class = HMFitNoiseCheckTopViewAccessibility;
  [(HMFitNoiseCheckTopViewAccessibility *)&v26 _accessibilityLoadAccessibilityInformation];
  v3 = [(HMFitNoiseCheckTopViewAccessibility *)self safeSwiftValueForKey:@"topFitCheckView"];
  v4 = [v3 safeSwiftValueForKey:@"leftBudLabel"];
  objc_initWeak(&location, v4);

  v5 = [v3 safeSwiftValueForKey:@"leftResultLabel"];
  objc_initWeak(&from, v5);

  v6 = objc_loadWeakRetained(&from);
  [v6 setIsAccessibilityElement:0];

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __81__HMFitNoiseCheckTopViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v21[3] = &unk_29F2C55A0;
  objc_copyWeak(&v22, &from);
  objc_copyWeak(&v23, &location);
  v7 = objc_loadWeakRetained(&location);
  [v7 setAccessibilityLabelBlock:v21];

  v8 = [v3 safeSwiftValueForKey:@"rightBudLabel"];
  objc_initWeak(&v20, v8);

  v9 = [v3 safeSwiftValueForKey:@"rightResultLabel"];
  objc_initWeak(&v19, v9);

  v10 = objc_loadWeakRetained(&v19);
  [v10 setIsAccessibilityElement:0];

  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __81__HMFitNoiseCheckTopViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v16 = &unk_29F2C55A0;
  objc_copyWeak(&v17, &v19);
  objc_copyWeak(&v18, &v20);
  v11 = objc_loadWeakRetained(&v20);
  [v11 setAccessibilityLabelBlock:&v13];

  v12 = [v3 safeSwiftValueForKey:{@"spacerLabel", v13, v14, v15, v16}];
  [v12 setIsAccessibilityElement:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __81__HMFitNoiseCheckTopViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alpha];
  v4 = v3;

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 text];
  if (v4 == 1.0)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v10 = [v7 text];
    v8 = __UIAXStringForVariables();

    v6 = v8;
  }

  return v6;
}

id __81__HMFitNoiseCheckTopViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alpha];
  v4 = v3;

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 text];
  if (v4 == 1.0)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v10 = [v7 text];
    v8 = __UIAXStringForVariables();

    v6 = v8;
  }

  return v6;
}

@end