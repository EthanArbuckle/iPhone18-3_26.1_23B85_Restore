@interface PUSlideshowViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateAirplayButton;
@end

@implementation PUSlideshowViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUSlideshowViewController" hasInstanceMethod:@"_updateAirplayButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUSlideshowViewController" isKindOfClass:@"UIViewController"];
}

- (void)_updateAirplayButton
{
  v6.receiver = self;
  v6.super_class = PUSlideshowViewControllerAccessibility;
  [(PUSlideshowViewControllerAccessibility *)&v6 _updateAirplayButton];
  v3 = [(PUSlideshowViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = accessibilityUIKitLocalizedString();
  rightBarButtonItem = [v3 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityLabel:v4];
}

@end