@interface MonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation MonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKCalendarWeekView" hasInstanceMethod:@"monthTitleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MonthWeekView" isKindOfClass:@"HKCalendarWeekView"];
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  v4 = [(MonthWeekViewAccessibility *)self layer];
  v5 = [v4 sublayers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        AXSafeClassFromString();
        if (objc_opt_isKindOfClass())
        {
          [v11 setAccessibilityContainer:{self, v16}];
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = +[NSMutableArray array];
  v13 = [(MonthWeekViewAccessibility *)self safeValueForKey:@"monthTitleView"];
  [v12 axSafelyAddObject:v13];
  if (v3)
  {
    [v12 addObjectsFromArray:v3];
  }

  v14 = [v12 sortedArrayUsingSelector:{"accessibilityCompareGeometry:", v16}];

  return v14;
}

@end