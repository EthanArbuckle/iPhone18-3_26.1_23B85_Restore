@interface CKFullScreenBalloonViewControllerPhoneAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKFullScreenBalloonViewControllerPhoneAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKFullScreenBalloonViewControllerPhoneAccessibility;
  [(CKFullScreenBalloonViewControllerPhoneAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKFullScreenBalloonViewControllerPhoneAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

@end