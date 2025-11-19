@interface DayNavigationViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DayNavigationViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DayNavigationViewCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DayNavigationViewCell" hasInstanceMethod:@"circled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DayNavigationViewCell" hasInstanceMethod:@"isToday" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(DayNavigationViewCellAccessibility *)self safeValueForKey:@"date"];
  v4 = _AXGetStringsForDate(v3);

  if ([(DayNavigationViewCellAccessibility *)self safeBoolForKey:@"isToday"])
  {
    v5 = accessibilityLocalizedString(@"today.indicator");
    v6 = __UIAXStringForVariables();

    v4 = v6;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = DayNavigationViewCellAccessibility;
  v3 = [(DayNavigationViewCellAccessibility *)&v5 accessibilityTraits];
  if ([(DayNavigationViewCellAccessibility *)self _axIsCircled])
  {
    return (*MEMORY[0x29EDC7FC0] | v3) & ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    return *MEMORY[0x29EDC7F70] | v3;
  }
}

- (id)accessibilityHint
{
  v3 = accessibilityLocalizedString(@"month.day.scroll.hint");
  if (![(DayNavigationViewCellAccessibility *)self _axIsCircled])
  {
    v4 = accessibilityLocalizedString(@"month.day.hint");
    v5 = __UIAXStringForVariables();

    v3 = v5;
  }

  return v3;
}

@end