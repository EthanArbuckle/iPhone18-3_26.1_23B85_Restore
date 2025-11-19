@interface ScheduleOccurrenceDayPickerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation ScheduleOccurrenceDayPickerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SleepHealthUI.ScheduleOccurrenceDayPickerTableViewCell" hasInstanceMethod:@"accessibilityDayPicker" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleDayPicker" hasInstanceMethod:@"accessibilityPickerDays" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = [(ScheduleOccurrenceDayPickerTableViewCellAccessibility *)self safeValueForKey:@"accessibilityDayPicker"];
  v3 = [v2 safeArrayForKey:@"accessibilityPickerDays"];

  return v3;
}

@end