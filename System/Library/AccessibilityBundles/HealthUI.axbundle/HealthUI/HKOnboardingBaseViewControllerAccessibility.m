@interface HKOnboardingBaseViewControllerAccessibility
- (void)setUpConstraints;
@end

@implementation HKOnboardingBaseViewControllerAccessibility

- (void)setUpConstraints
{
  v3.receiver = self;
  v3.super_class = HKOnboardingBaseViewControllerAccessibility;
  [(HKOnboardingBaseViewControllerAccessibility *)&v3 setUpConstraints];
  [(HKOnboardingBaseViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end