@interface MTATimerPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MTATimerPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"picker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"setState:animated:" withFullSignature:{"v", "Q", "B", 0}];
}

@end