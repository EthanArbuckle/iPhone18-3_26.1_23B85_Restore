@interface HROnboardingElectrocardiogramResultViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateExpandedViewState;
@end

@implementation HROnboardingElectrocardiogramResultViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HROnboardingElectrocardiogramResultView" hasInstanceMethod:@"numberedTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HROnboardingElectrocardiogramResultView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HROnboardingElectrocardiogramResultView" hasInstanceMethod:@"expandedView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HROnboardingElectrocardiogramResultView" hasInstanceMethod:@"_updateExpandedViewState" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramResultViewAccessibility;
  [(HROnboardingElectrocardiogramResultViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HROnboardingElectrocardiogramResultViewAccessibility *)self safeValueForKey:@"numberedTitleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
}

- (void)_updateExpandedViewState
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramResultViewAccessibility;
  [(HROnboardingElectrocardiogramResultViewAccessibility *)&v5 _updateExpandedViewState];
  if ([(HROnboardingElectrocardiogramResultViewAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v3 = *MEMORY[0x29EDC7ED8];
    v4 = [(HROnboardingElectrocardiogramResultViewAccessibility *)self safeValueForKey:@"expandedView"];
    UIAccessibilityPostNotification(v3, v4);
  }
}

@end