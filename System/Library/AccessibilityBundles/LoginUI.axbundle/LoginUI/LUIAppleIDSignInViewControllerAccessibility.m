@interface LUIAppleIDSignInViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation LUIAppleIDSignInViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = LUIAppleIDSignInViewControllerAccessibility;
  [(LUIAppleIDSignInViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(LUIAppleIDSignInViewControllerAccessibility *)self safeValueForKey:@"usernameCell"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 accessibilitySetIdentification:@"AXLUITableViewCellTextFieldOnlyTag"];
}

@end