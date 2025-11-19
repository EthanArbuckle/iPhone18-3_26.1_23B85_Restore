@interface SUUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SUUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SUUIFloatingOverlayView"];
  [v3 validateClass:@"SUUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

@end