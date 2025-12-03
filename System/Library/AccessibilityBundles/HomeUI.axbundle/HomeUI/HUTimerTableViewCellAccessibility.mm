@interface HUTimerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation HUTimerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUTimerTableViewCell" hasInstanceMethod:@"timerNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUTimerTableViewCell" hasInstanceMethod:@"timerTimeLabel" withFullSignature:{"@", 0}];
}

@end