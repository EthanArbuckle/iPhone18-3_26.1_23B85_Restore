@interface CCUIMainViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)overlayBackgroundViewTapped:(id)tapped;
@end

@implementation CCUIMainViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIMainViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIMainViewController" hasInstanceMethod:@"overlayBackgroundViewTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)overlayBackgroundViewTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() && !_AXSCommandAndControlEnabled())
  {
    v5.receiver = self;
    v5.super_class = CCUIMainViewControllerAccessibility;
    [(CCUIMainViewControllerAccessibility *)&v5 overlayBackgroundViewTapped:tappedCopy];
  }
}

@end