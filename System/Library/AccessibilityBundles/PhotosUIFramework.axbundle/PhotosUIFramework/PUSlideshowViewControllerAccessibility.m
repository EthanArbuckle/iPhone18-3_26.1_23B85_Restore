@interface PUSlideshowViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateAirplayButton;
@end

@implementation PUSlideshowViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUSlideshowViewController" hasInstanceMethod:@"_updateAirplayButton" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUSlideshowViewController" isKindOfClass:@"UIViewController"];
}

- (void)_updateAirplayButton
{
  v6.receiver = self;
  v6.super_class = PUSlideshowViewControllerAccessibility;
  [(PUSlideshowViewControllerAccessibility *)&v6 _updateAirplayButton];
  v3 = [(PUSlideshowViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = accessibilityUIKitLocalizedString();
  v5 = [v3 rightBarButtonItem];
  [v5 setAccessibilityLabel:v4];
}

@end