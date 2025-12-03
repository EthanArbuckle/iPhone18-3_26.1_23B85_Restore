@interface WeekdayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation WeekdayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.WeekdayButton" hasSwiftField:@"item" withSwiftType:"Optional<WeekdayPickerItem>"];
  [validationsCopy validateSwiftStruct:@"SeymourUI.WeekdayPickerItem" hasSwiftField:@"weekday" withSwiftType:"Weekday"];
}

- (id)accessibilityLabel
{
  v3 = [(WeekdayButtonAccessibility *)self safeSwiftValueForKey:@"item"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeSwiftValueForKey:@"weekday"];
    safeSwiftEnumCase = [v5 safeSwiftEnumCase];

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"weekday.button.%@", safeSwiftEnumCase];
    accessibilityLabel = accessibilityLocalizedString(v7);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WeekdayButtonAccessibility;
    accessibilityLabel = [(WeekdayButtonAccessibility *)&v10 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end