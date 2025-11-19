@interface SKUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SKUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SKUIFloatingOverlayView"];
  [v3 validateClass:@"SKUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

@end