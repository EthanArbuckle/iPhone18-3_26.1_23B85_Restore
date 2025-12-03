@interface HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HROnboardingElectrocardiogramAvailabilityViewController" hasInstanceMethod:@"heroView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HROnboardingElectrocardiogramAvailabilityViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility;
  [(HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility *)self safeValueForKey:@"heroView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityHealthCinnamonLocalizedString(@"simulated.watch.ecg");
  [v3 setAccessibilityLabel:v4];

  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F88] | accessibilityTraits];
  v6 = [(HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits2 = [v6 accessibilityTraits];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits2];
}

@end