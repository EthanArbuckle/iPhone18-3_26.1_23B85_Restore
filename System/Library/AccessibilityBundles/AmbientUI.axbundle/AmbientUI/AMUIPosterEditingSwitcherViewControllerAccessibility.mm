@interface AMUIPosterEditingSwitcherViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation AMUIPosterEditingSwitcherViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AMUIPosterEditingSwitcherViewControllerAccessibility;
  [(AMUIPosterEditingSwitcherViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AMUIPosterEditingSwitcherViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIPosterEditingSwitcherViewControllerAccessibility;
  [(AMUIPosterEditingSwitcherViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(AMUIPosterEditingSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end