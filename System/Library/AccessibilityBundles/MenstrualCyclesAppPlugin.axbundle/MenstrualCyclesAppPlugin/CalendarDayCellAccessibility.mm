@interface CalendarDayCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CalendarDayCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CalendarDayCell" hasInstanceMethod:@"axDayShowsDayIndicator" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CalendarDayCell" hasInstanceMethod:@"axDayLocalizedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  accessibilityDate = [(CalendarDayCellAccessibility *)self accessibilityDate];
  v3 = _AXGetStringForDay(accessibilityDate);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  _axDayShowsDayIndicator = [(CalendarDayCellAccessibility *)self _axDayShowsDayIndicator];
  v7.receiver = self;
  v7.super_class = CalendarDayCellAccessibility;
  accessibilityTraits = [(CalendarDayCellAccessibility *)&v7 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!_axDayShowsDayIndicator)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits | *MEMORY[0x29EDC7F70];
}

@end