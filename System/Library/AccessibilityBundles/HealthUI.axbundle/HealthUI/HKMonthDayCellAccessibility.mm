@interface HKMonthDayCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HKMonthDayCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKMonthDayCell" isKindOfClass:@"HKCalendarDayCell"];
  [v3 validateClass:@"HKCalendarDayCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKCalendarDayCell" hasInstanceMethod:@"representsToday" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HKCalendarDayCell" hasInstanceMethod:@"circle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HKMonthDayCellAccessibility *)self safeValueForKey:@"date"];
  if (v3)
  {
    v4 = AXDateStringForFormat();
    if ([(HKMonthDayCellAccessibility *)self safeBoolForKey:@"representsToday"])
    {
      v5 = accessibilityLocalizedString(@"today.button");
      v6 = __AXStringForVariables();
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HKMonthDayCellAccessibility;
  v3 = [(HKMonthDayCellAccessibility *)&v7 accessibilityTraits];
  objc_opt_class();
  v4 = [(HKMonthDayCellAccessibility *)self safeValueForKey:@"circle"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5 && ([v5 isHidden] & 1) == 0)
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

@end