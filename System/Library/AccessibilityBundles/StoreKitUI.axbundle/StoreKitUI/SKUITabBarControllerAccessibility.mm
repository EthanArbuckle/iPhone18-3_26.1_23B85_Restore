@interface SKUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SKUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SKUIFloatingOverlayView"];
  [validationsCopy validateClass:@"SKUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

@end