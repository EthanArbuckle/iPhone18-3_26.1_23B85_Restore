@interface CKComposeNavbarCanvasViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKComposeNavbarCanvasViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKComposeNavbarCanvasViewControllerAccessibility;
  [(CKComposeNavbarCanvasViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKComposeNavbarCanvasViewControllerAccessibility *)self safeValueForKey:@"cancelButton"];
  v4 = accessibilityLocalizedString(@"compose.cancel.button");
  [v3 setAccessibilityLabel:v4];
}

@end