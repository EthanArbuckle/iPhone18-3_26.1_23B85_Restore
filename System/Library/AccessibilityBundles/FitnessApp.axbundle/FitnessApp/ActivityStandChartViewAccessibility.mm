@interface ActivityStandChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ActivityStandChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.ActivityStandChartView" hasInstanceMethod:@"standChartPoints" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitnessApp.ActivityStandChartView" hasInstanceMethod:@"reloadDataWithAnimated:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityElements
{
  v3 = [(ActivityStandChartViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];
  if (!v3)
  {
    _accessibilityGraphData = [(ActivityStandChartViewAccessibility *)self _accessibilityGraphData];
    v5 = [_accessibilityGraphData count];
    v6 = [NSMutableArray arrayWithCapacity:v5];
    [ActivityStandChartViewAccessibility _accessibilitySetRetainedValue:"_accessibilitySetRetainedValue:forKey:" forKey:?];
    v7 = objc_alloc_init(NSDateIntervalFormatter);
    v8 = +[NSCalendar currentCalendar];
    v9 = +[NSDate date];
    v10 = [v8 startOfDayForDate:v9];

    objc_opt_class();
    v38 = __UIAccessibilityCastAsClass();
    v37 = v6;
    v11 = v10;
    v12 = v38;
    if (_accessibilityGraphData)
    {
      if (v38)
      {
        [v38 frame];
        v14 = v13;
        [v38 frame];
        if (v5)
        {
          v16 = 0;
          v17 = 0;
          v18 = v14;
          v19 = floorf(v18);
          v20 = v15 / v5;
          v21 = ceilf(v20);
          v33 = v5 - 1;
          v34 = _accessibilityGraphData;
          v35 = v11;
          v36 = v5;
          do
          {
            v22 = [_accessibilityGraphData objectAtIndex:v17];
            [v22 CGPointValue];
            v24 = v23;
            if (v24 <= 0.0)
            {
              v25 = @"stand.goal.inactive";
            }

            else
            {
              v25 = @"stand.goal.active";
            }

            v26 = accessibilityLocalizedString(v25);
            v27 = [NSDate dateWithTimeInterval:v11 sinceDate:v16];
            if (v33 == v17)
            {
              v28 = @"h:mma";
            }

            else
            {
              v28 = @"ha";
            }

            v29 = [NSDate dateWithTimeInterval:v27 sinceDate:dbl_143A0[v33 == v17]];
            [v7 setDateTemplate:v28];
            v30 = [v7 stringFromDate:v27 toDate:v29];
            v31 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:v12];
            [v31 setAccessibilityFrameInContainerSpace:{v21 * v17, 0.0, v21, v19}];
            [v31 setAccessibilityLabel:v30];
            [v31 setAccessibilityValue:v26];
            [v37 addObject:v31];

            v12 = v38;
            _accessibilityGraphData = v34;

            v11 = v35;
            ++v17;
            v16 += 3600;
          }

          while (v36 != v17);
        }
      }
    }

    [(ActivityStandChartViewAccessibility *)self _accessibilitySetRetainedValue:v37 forKey:kUIAccessibilityStorageKeyChildren];

    v3 = v37;
  }

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = ActivityStandChartViewAccessibility;
  [(ActivityStandChartViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(ActivityStandChartViewAccessibility *)self safeArrayForKey:@"standChartPoints"];
  v4 = v3;
  if (v3 && [v3 count] && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    selfCopy2 = self;
    v8 = v4;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  [(ActivityStandChartViewAccessibility *)selfCopy2 _accessibilitySetRetainedValue:v8 forKey:@"kAXDayViewCellGraphElements"];
  [(ActivityStandChartViewAccessibility *)self _accessibilitySetRetainedValue:0 forKey:kUIAccessibilityStorageKeyChildren];
}

@end