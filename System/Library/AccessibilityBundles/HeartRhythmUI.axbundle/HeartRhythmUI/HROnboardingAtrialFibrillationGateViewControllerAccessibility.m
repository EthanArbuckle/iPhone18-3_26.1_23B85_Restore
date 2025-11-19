@interface HROnboardingAtrialFibrillationGateViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupSelectionRow:(id)a3 expectedResult:(BOOL)a4;
@end

@implementation HROnboardingAtrialFibrillationGateViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HROnboardingAtrialFibrillationGateViewControllerAccessibility;
  [(HROnboardingAtrialFibrillationGateViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetupSelectionRow:(id)a3 expectedResult:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    [v6 setIsAccessibilityElement:1];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __101__HROnboardingAtrialFibrillationGateViewControllerAccessibility__axSetupSelectionRow_expectedResult___block_invoke;
    v10[3] = &unk_29F2C5D10;
    objc_copyWeak(&v11, &from);
    [v6 _setAccessibilityLabelBlock:v10];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __101__HROnboardingAtrialFibrillationGateViewControllerAccessibility__axSetupSelectionRow_expectedResult___block_invoke_2;
    v7[3] = &unk_29F2C5D38;
    objc_copyWeak(&v8, &location);
    v9 = a4;
    [v6 _setAccessibilityTraitsBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

id __101__HROnboardingAtrialFibrillationGateViewControllerAccessibility__axSetupSelectionRow_expectedResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = UIAXStringForAllChildren();

  return v2;
}

uint64_t __101__HROnboardingAtrialFibrillationGateViewControllerAccessibility__axSetupSelectionRow_expectedResult___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_diagnosis"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  if (v4 && *(a1 + 40) == [v4 BOOLValue])
  {
    v5 |= *MEMORY[0x29EDC7FC0];
  }

  return v5;
}

@end