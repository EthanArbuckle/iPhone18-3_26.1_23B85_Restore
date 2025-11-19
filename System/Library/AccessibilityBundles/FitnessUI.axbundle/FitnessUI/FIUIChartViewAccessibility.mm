@interface FIUIChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame:(id)a3;
- (id)accessibilityLabel:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateChartSlices;
- (void)dealloc;
- (void)reloadData;
@end

@implementation FIUIChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FIUIChartView" hasInstanceMethod:@"reloadData" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FIUIChartView" hasInstanceMethod:@"_chartRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"FIUIChartView" hasInstanceMethod:@"dateInterval" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIChartView" hasInstanceVariable:@"_containerView" withType:"UIView"];
  [v3 validateClass:@"FIUIChartView" hasInstanceVariable:@"_chartSeries" withType:"NSArray"];
  [v3 validateClass:@"FIUIChartView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
}

- (void)_axUpdateChartSlices
{
  v10 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"dataSource"];
  v3 = [(FIUIChartViewAccessibility *)self safeUIViewForKey:@"_containerView"];
  if ([v10 _accessibilityShouldUseSlices])
  {
    v4 = [v10 _accessibilityNumberOfSlices];
    if (v4)
    {
      v5 = v4;
      v6 = [NSMutableArray arrayWithCapacity:v4];
      for (i = 0; i != v5; ++i)
      {
        v8 = [[FIUIChartViewSliceAccessibilityElement alloc] initWithAccessibilityContainer:self];
        [(FIUIChartViewSliceAccessibilityElement *)v8 setSliceIndex:i];
        [(FIUIChartViewSliceAccessibilityElement *)v8 setAccessibilityDelegate:self];
        [v6 addObject:v8];
      }

      [v3 setAccessibilityElements:v6];
      [(FIUIChartViewAccessibility *)self _setAccessibilityChartSlices:v6];
    }

    else
    {
      [v3 setAccessibilityElements:0];
    }
  }

  else
  {
    v9 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"_chartSeries"];
    [v3 setAccessibilityElements:v9];
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)dealloc
{
  v3 = [(FIUIChartViewAccessibility *)self _accessibilityChartSlices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setAccessibilityDelegate:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = FIUIChartViewAccessibility;
  [(FIUIChartViewAccessibility *)&v8 dealloc];
}

- (CGRect)accessibilityFrame:(id)a3
{
  v4 = a3;
  v5 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"_chartRect"];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 sliceIndex];
  v15 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"dataSource"];
  v16 = [v15 _accessibilityNumberOfSlices];
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  v31.origin.x = v7 + CGRectGetWidth(v30) * v14 / v16;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  CGRectGetWidth(v31);
  v17 = [(FIUIChartViewAccessibility *)self safeUIViewForKey:@"_containerView"];
  UIAccessibilityFrameForBounds();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)accessibilityLabel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"dateInterval"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 startDate];

  v8 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"dataSource"];
  [v8 _accessibilityTimeIntervalPerSlice];
  v10 = v9;
  v11 = [v7 dateByAddingTimeInterval:{v9 * objc_msgSend(v4, "sliceIndex")}];
  v12 = [v7 dateByAddingTimeInterval:{v10 * (objc_msgSend(v4, "sliceIndex") + 1)}];
  v13 = accessibilityLocalizedString(@"chart.slice.date.format");
  v14 = AXClockTimeStringForDate();
  v15 = AXClockTimeStringForDate();
  v16 = [NSString stringWithFormat:v13, v14, v15];

  v17 = [(FIUIChartViewAccessibility *)self safeValueForKey:@"dataSource"];
  v20 = [v17 _accessibilityQuantityForSliceAtIndex:{objc_msgSend(v4, "sliceIndex")}];
  v18 = __AXStringForVariables();

  return v18;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = FIUIChartViewAccessibility;
  [(FIUIChartViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(FIUIChartViewAccessibility *)self _axUpdateChartSlices];
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = FIUIChartViewAccessibility;
  [(FIUIChartViewAccessibility *)&v3 reloadData];
  [(FIUIChartViewAccessibility *)self _axUpdateChartSlices];
}

@end