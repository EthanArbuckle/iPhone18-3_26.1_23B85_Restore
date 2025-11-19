@interface PKPaymentAuthorizationNavigationBarAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didUpdateInterfaceStyle;
@end

@implementation PKPaymentAuthorizationNavigationBarAccessibility

- (void)didUpdateInterfaceStyle
{
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationNavigationBarAccessibility;
  [(PKPaymentAuthorizationNavigationBarAccessibility *)&v3 didUpdateInterfaceStyle];
  [(PKPaymentAuthorizationNavigationBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationNavigationBarAccessibility;
  [(PKPaymentAuthorizationNavigationBarAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPaymentAuthorizationNavigationBarAccessibility *)self safeValueForKey:@"topItem"];
  v4 = [v3 safeValueForKey:@"leftBarButtonItem"];

  [v4 accessibilitySetIdentification:kAXCustomButtonIdentifier];
  v5 = [v4 safeValueForKey:@"_view"];
  [v5 accessibilitySetIdentification:kAXCustomButtonIdentifier];
}

@end