@interface HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility;
  [(HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end