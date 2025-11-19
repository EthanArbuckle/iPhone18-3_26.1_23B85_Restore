@interface HROnboardingAtrialFibrillationEnableViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingAtrialFibrillationEnableViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = HROnboardingAtrialFibrillationEnableViewControllerAccessibility;
  [(HROnboardingAtrialFibrillationEnableViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(HROnboardingAtrialFibrillationEnableViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v5];
}

@end