@interface EKUIYearMonthViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsCurrentMonth;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation EKUIYearMonthViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKUIYearMonthView" hasInstanceVariable:@"_todayIndex" withType:"q"];
  [validationsCopy validateClass:@"EKUIYearMonthView" hasInstanceVariable:@"_calendarDate" withType:"EKCalendarDate"];
}

- (BOOL)_axIsCurrentMonth
{
  v2 = [(EKUIYearMonthViewAccessibility *)self safeValueForKey:@"_todayIndex"];
  v3 = [v2 integerValue] != -1;

  return v3;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(EKUIYearMonthViewAccessibility *)self safeValueForKey:@"_calendarDate"];
  v4 = __UIAccessibilityCastAsClass();

  date = [v4 date];
  v6 = MEMORY[0x29C2D5150]();

  if ([(EKUIYearMonthViewAccessibility *)self _axIsCurrentMonth])
  {
    v7 = accessibilityLocalizedString(@"current.month.indicator");
    v8 = __UIAXStringForVariables();

    v6 = v8;
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(EKUIYearMonthViewAccessibility *)self safeValueForKey:@"_calendarDate"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29C2D5140]([v4 month]);
  v6 = MEMORY[0x29C2D5180]();

  return v6;
}

@end