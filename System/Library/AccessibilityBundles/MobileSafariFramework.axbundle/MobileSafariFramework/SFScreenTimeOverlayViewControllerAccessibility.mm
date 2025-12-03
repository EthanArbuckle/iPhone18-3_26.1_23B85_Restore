@interface SFScreenTimeOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShouldHideWebView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler;
@end

@implementation SFScreenTimeOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"showBlockingViewControllerForURL:withPolicy:animated:" withFullSignature:{"@", "q", "B", 0}];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceMethod:@"hideBlockingViewControllerWithCompletionHandler:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SFScreenTimeOverlayViewController" hasInstanceVariable:@"_blockingViewController" withType:"STBlockingViewController"];
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

  view = [v4 view];
  window = [view window];
  LOBYTE(v3) = window != 0;

  return v3;
}

- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = SFScreenTimeOverlayViewControllerAccessibility;
  [(SFScreenTimeOverlayViewControllerAccessibility *)&v4 hideBlockingViewControllerWithCompletionHandler:handler];
  [(SFScreenTimeOverlayViewControllerAccessibility *)self _axHideWebView:0];
}

@end