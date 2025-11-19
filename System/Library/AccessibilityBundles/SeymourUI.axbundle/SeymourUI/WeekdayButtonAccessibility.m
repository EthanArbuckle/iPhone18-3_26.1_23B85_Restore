@interface WeekdayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation WeekdayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.WeekdayButton" hasSwiftField:@"item" withSwiftType:"Optional<WeekdayPickerItem>"];
  [v3 validateSwiftStruct:@"SeymourUI.WeekdayPickerItem" hasSwiftField:@"weekday" withSwiftType:"Weekday"];
}

- (id)accessibilityLabel
{
  v3 = [(WeekdayButtonAccessibility *)self safeSwiftValueForKey:@"item"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeSwiftValueForKey:@"weekday"];
    v6 = [v5 safeSwiftEnumCase];

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"weekday.button.%@", v6];
    v8 = accessibilityLocalizedString(v7);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WeekdayButtonAccessibility;
    v8 = [(WeekdayButtonAccessibility *)&v10 accessibilityLabel];
  }

  return v8;
}

@end