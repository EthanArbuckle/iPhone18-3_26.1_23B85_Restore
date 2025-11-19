@interface SBUIAlertViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SBUIAlertViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIAlertView" hasInstanceMethod:@"show" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUIController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

@end