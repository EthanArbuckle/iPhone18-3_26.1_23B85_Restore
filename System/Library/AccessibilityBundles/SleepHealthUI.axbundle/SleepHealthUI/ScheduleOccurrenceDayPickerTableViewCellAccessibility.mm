@interface ScheduleOccurrenceDayPickerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ScheduleOccurrenceDayPickerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SleepHealthUI.ScheduleOccurrenceDayPickerTableViewCell" hasInstanceMethod:@"accessibilityDayPicker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleDayPicker" hasInstanceMethod:@"accessibilityPickerDays" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = [(ScheduleOccurrenceDayPickerTableViewCellAccessibility *)self safeValueForKey:@"accessibilityDayPicker"];
  v3 = [v2 safeArrayForKey:@"accessibilityPickerDays"];

  return v3;
}

@end