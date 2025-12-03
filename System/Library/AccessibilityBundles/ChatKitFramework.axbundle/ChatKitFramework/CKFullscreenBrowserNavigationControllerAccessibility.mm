@interface CKFullscreenBrowserNavigationControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKFullscreenBrowserNavigationControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKFullscreenBrowserNavigationControllerAccessibility;
  [(CKFullscreenBrowserNavigationControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKFullscreenBrowserNavigationControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKFullscreenBrowserNavigationControllerAccessibility;
  [(CKFullscreenBrowserNavigationControllerAccessibility *)&v4 viewWillAppear:appear];
  [(CKFullscreenBrowserNavigationControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end