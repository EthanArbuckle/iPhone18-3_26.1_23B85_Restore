@interface BuddyProximitySetupControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation BuddyProximitySetupControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = BuddyProximitySetupControllerAccessibility;
  [(BuddyProximitySetupControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v2 = accessibilityLocalizedString(@"accessibility.button");
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  navigationItem = [v3 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setAccessibilityLabel:v2];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = BuddyProximitySetupControllerAccessibility;
  [(BuddyProximitySetupControllerAccessibility *)&v3 loadView];
  [(BuddyProximitySetupControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end