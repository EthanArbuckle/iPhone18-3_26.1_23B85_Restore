@interface SBControlCenterControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_didEndTransition;
- (void)_willBeginTransition;
@end

@implementation SBControlCenterControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBControlCenterController" hasInstanceVariable:@"_viewController" withType:"UIViewController<CCUIMainViewController><CCUIMainViewControllerPPTSupporting>"];
  [v3 validateClass:@"SBControlCenterController" hasInstanceMethod:@"_willBeginTransition" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBControlCenterController" hasInstanceMethod:@"_didEndTransition" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AXSBHearingAidDeviceController" hasClassMethod:@"sharedController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AXSBHearingAidDeviceController" hasInstanceMethod:@"showHearingAidControl:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBControlCenterControllerAccessibility;
  [(SBControlCenterControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBControlCenterControllerAccessibility *)self safeValueForKey:@"_viewController"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

- (void)_willBeginTransition
{
  v4.receiver = self;
  v4.super_class = SBControlCenterControllerAccessibility;
  [(SBControlCenterControllerAccessibility *)&v4 _willBeginTransition];
  v3 = [(SBControlCenterControllerAccessibility *)self safeValueForKey:@"_window"];
  [v3 setAccessibilityViewIsModal:1];

  AXPerformSafeBlock();
}

void __62__SBControlCenterControllerAccessibility__willBeginTransition__block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Axsbhearingaid.isa) safeValueForKey:@"sharedController"];
  [v0 showHearingAidControl:0];
}

- (void)_didEndTransition
{
  v4.receiver = self;
  v4.super_class = SBControlCenterControllerAccessibility;
  [(SBControlCenterControllerAccessibility *)&v4 _didEndTransition];
  v3 = [(SBControlCenterControllerAccessibility *)self safeValueForKey:@"_window"];
  [v3 setAccessibilityViewIsModal:0];
}

@end