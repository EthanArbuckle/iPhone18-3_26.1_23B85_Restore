@interface HROnboardingBulletPointViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingBulletPointViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = HROnboardingBulletPointViewControllerAccessibility;
  [(HROnboardingBulletPointViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(HROnboardingBulletPointViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityTraits = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end