@interface HKOnboardingCompactDatePickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpInitialLabel:(id)label;
@end

@implementation HKOnboardingCompactDatePickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKOnboardingCompactDatePickerView" hasInstanceVariable:@"_initialTextLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HKOnboardingCompactDatePickerView" hasInstanceMethod:@"_setUpInitialLabel:" withFullSignature:{"v", "@", 0}];
}

- (void)_setUpInitialLabel:(id)label
{
  labelCopy = label;
  v10.receiver = self;
  v10.super_class = HKOnboardingCompactDatePickerViewAccessibility;
  [(HKOnboardingCompactDatePickerViewAccessibility *)&v10 _setUpInitialLabel:labelCopy];
  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(HKOnboardingCompactDatePickerViewAccessibility *)self safeUIViewForKey:@"_initialTextLabel"];
  v6 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v6);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __69__HKOnboardingCompactDatePickerViewAccessibility__setUpInitialLabel___block_invoke;
  v7[3] = &unk_29F2C44A0;
  objc_copyWeak(&v8, &location);
  [v6 _setAccessibilityFrameBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

double __69__HKOnboardingCompactDatePickerViewAccessibility__setUpInitialLabel___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  [v2 bounds];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bounds];
  [v2 sizeThatFits:{v4, v6}];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 bounds];

  v8 = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityFrameForBounds();
  v10 = v9;

  return v10;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HKOnboardingCompactDatePickerViewAccessibility;
  [(HKOnboardingCompactDatePickerViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end