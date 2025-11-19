@interface AMUIInlineAuthenticationViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation AMUIInlineAuthenticationViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AMUIInlineAuthenticationViewControllerAccessibility;
  [(AMUIInlineAuthenticationViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AMUIInlineAuthenticationViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIInlineAuthenticationViewControllerAccessibility;
  [(AMUIInlineAuthenticationViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(AMUIInlineAuthenticationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end