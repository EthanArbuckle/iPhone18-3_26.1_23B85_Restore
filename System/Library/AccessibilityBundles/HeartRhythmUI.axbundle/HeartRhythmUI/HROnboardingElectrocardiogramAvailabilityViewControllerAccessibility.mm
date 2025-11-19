@interface HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HROnboardingElectrocardiogramAvailabilityViewController" hasInstanceMethod:@"heroView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HROnboardingElectrocardiogramAvailabilityViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
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

  v5 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F88] | v5];
  v6 = [(HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v7 = [v6 accessibilityTraits];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v7];
}

@end