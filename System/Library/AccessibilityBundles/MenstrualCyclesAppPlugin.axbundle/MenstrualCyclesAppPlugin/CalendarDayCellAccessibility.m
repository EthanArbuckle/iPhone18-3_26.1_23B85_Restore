@interface CalendarDayCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CalendarDayCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MenstrualCyclesAppPlugin.CalendarDayCell" hasInstanceMethod:@"axDayShowsDayIndicator" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MenstrualCyclesAppPlugin.CalendarDayCell" hasInstanceMethod:@"axDayLocalizedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CalendarDayCellAccessibility *)self accessibilityDate];
  v3 = _AXGetStringForDay(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(CalendarDayCellAccessibility *)self _axDayShowsDayIndicator];
  v7.receiver = self;
  v7.super_class = CalendarDayCellAccessibility;
  v4 = [(CalendarDayCellAccessibility *)&v7 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v5 = 0;
  }

  return v5 | v4 | *MEMORY[0x29EDC7F70];
}

@end