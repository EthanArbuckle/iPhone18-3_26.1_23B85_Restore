@interface CCUIMainViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)overlayBackgroundViewTapped:(id)a3;
@end

@implementation CCUIMainViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIMainViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUIMainViewController" hasInstanceMethod:@"overlayBackgroundViewTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)overlayBackgroundViewTapped:(id)a3
{
  v4 = a3;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() && !_AXSCommandAndControlEnabled())
  {
    v5.receiver = self;
    v5.super_class = CCUIMainViewControllerAccessibility;
    [(CCUIMainViewControllerAccessibility *)&v5 overlayBackgroundViewTapped:v4];
  }
}

@end