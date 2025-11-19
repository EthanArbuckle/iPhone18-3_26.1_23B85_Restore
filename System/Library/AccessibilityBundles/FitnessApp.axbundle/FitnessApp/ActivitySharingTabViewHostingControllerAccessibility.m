@interface ActivitySharingTabViewHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation ActivitySharingTabViewHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.ActivitySharingTabViewHostingController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewIsAppearing:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UINavigationItem" hasInstanceMethod:@"rightBarButtonItem" withFullSignature:{"@", 0}];
}

@end