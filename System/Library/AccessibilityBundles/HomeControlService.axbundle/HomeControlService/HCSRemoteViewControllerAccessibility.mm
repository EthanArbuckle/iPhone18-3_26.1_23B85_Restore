@interface HCSRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation HCSRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"willBeginTransition:forCompactModule:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"dashboardNavigationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUDashboardNavigationView" hasInstanceMethod:@"headerTitleLabel" withFullSignature:{"@", 0}];
}

@end