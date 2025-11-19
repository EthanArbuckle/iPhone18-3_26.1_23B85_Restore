@interface TabSwitcherAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabSwitcherAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TabSwitcherAccessibility;
  [(TabSwitcherAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(TabSwitcherAccessibility *)self safeValueForKey:@"tabOverviewDisplayItem"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end