@interface SBUIAlertViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SBUIAlertViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIAlertView" hasInstanceMethod:@"show" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUIController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

@end