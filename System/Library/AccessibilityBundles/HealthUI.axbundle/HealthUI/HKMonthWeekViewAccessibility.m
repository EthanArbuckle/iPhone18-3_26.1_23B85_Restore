@interface HKMonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation HKMonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKCalendarWeekView" hasInstanceMethod:@"monthTitleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKMonthWeekView" isKindOfClass:@"HKCalendarWeekView"];
  [v3 validateClass:@"_HKMonthTitleView" hasInstanceMethod:@"monthTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(HKMonthWeekViewAccessibility *)self safeValueForKey:@"monthTitleView"];
  v5 = [v4 safeValueForKey:@"monthTitle"];

  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
    [v5 setAccessibilityContainer:self];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HKMonthWeekViewAccessibility *)self safeValueForKey:@"layer", 0];
  v7 = [v6 safeValueForKey:@"sublayers"];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        MEMORY[0x29C2D9130](@"HKMonthDayCell");
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v12];
          [v12 setAccessibilityContainer:self];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];

  return v3;
}

@end