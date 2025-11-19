@interface HCSRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation HCSRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"willBeginTransition:forCompactModule:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"dashboardNavigationView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDashboardNavigationView" hasInstanceMethod:@"headerTitleLabel" withFullSignature:{"@", 0}];
}

@end