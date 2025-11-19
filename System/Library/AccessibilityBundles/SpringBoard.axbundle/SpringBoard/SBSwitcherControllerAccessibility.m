@interface SBSwitcherControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateContentViewControllerIfNeeded;
@end

@implementation SBSwitcherControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_updateContentViewControllerIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherCoordinator" withFullSignature:{"@", 0}];
}

- (void)_updateContentViewControllerIfNeeded
{
  v4.receiver = self;
  v4.super_class = SBSwitcherControllerAccessibility;
  [(SBSwitcherControllerAccessibility *)&v4 _updateContentViewControllerIfNeeded];
  v3 = [(SBSwitcherControllerAccessibility *)self safeValueForKey:@"switcherCoordinator"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end