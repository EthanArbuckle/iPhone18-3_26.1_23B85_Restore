@interface AMSUIDynamicViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AMSUIDynamicViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AMSUIDynamicViewControllerAccessibility;
  [(AMSUIDynamicViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AMSUIDynamicViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = [v3 safeValueForKey:@"rightBarButtonItem"];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_0];
}

@end