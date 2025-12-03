@interface HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility;
  [(HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end