@interface SUUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SUUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SUUIFloatingOverlayView"];
  [validationsCopy validateClass:@"SUUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

@end