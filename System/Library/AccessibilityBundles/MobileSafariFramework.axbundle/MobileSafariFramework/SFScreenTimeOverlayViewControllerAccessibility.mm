@interface SFScreenTimeOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axShouldHideWebView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)hideBlockingViewControllerWithCompletionHandler:(id)a3;
@end

@implementation SFScreenTimeOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFScreenTimeOverlayViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"showBlockingViewControllerForURL:withPolicy:animated:" withFullSignature:{"@", "q", "B", 0}];
  [v3 validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"hideBlockingViewControllerWithCompletionHandler:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SFScreenTimeOverlayViewController" hasInstanceVariable:@"_blockingViewController" withType:"STBlockingViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:[(SFScreenTimeOverlayViewControllerAccessibility *)self _axShouldHideWebView]];
}

- (BOOL)_axShouldHideWebView
{
  objc_opt_class();
  v3 = [(SFScreenTimeOverlayViewControllerAccessibility *)self safeValueForKey:@"_blockingViewController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 view];
  v6 = [v5 window];
  LOBYTE(v3) = v6 != 0;

  return v3;
}

- (void)hideBlockingViewControllerWithCompletionHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v4 hideBlockingViewControllerWithCompletionHandler:a3];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:0];
}

@end