@interface ActivityMoveAndExerciseChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ActivityMoveAndExerciseChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.ActivityMoveAndExerciseChartView" hasInstanceMethod:@"moveAndExerciseChartPoints" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.ActivityMoveAndExerciseChartView" hasInstanceMethod:@"moveAndExerciseChartMaxYValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"FitnessApp.ActivityMoveAndExerciseChartView" hasInstanceMethod:@"moveAndExerciseChartViewType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"FitnessApp.ActivityMoveAndExerciseChartView" hasInstanceMethod:@"accessibilityReloadData" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v2 = self;
  v3 = [(ActivityMoveAndExerciseChartViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];
  if (!v3)
  {
    v37 = [NSMutableArray arrayWithCapacity:8];
    [ActivityMoveAndExerciseChartViewAccessibility _accessibilitySetRetainedValue:v2 forKey:"_accessibilitySetRetainedValue:forKey:"];
    v36 = objc_alloc_init(NSDateIntervalFormatter);
    v4 = +[NSCalendar currentCalendar];
    v5 = +[NSDate date];
    v35 = [v4 startOfDayForDate:v5];

    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    v7 = [(ActivityMoveAndExerciseChartViewAccessibility *)v2 _accessibilityGraphData];
    v8 = v7;
    v38 = v6;
    if (v6 && v7)
    {
      [v6 frame];
      v10 = v9;
      v11 = floorf(v10);
      [v6 frame];
      v13 = v12 * 0.125;
      v14 = floorf(v13);
      v15 = [v8 count];
      v16 = 0;
      v17 = rintf((v15 / 8));
      v34 = v2;
      do
      {
        v18 = v17 * v16;
        v19 = v16 + 1;
        if (v17 * (v16 + 1) >= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = v17 * (v16 + 1);
        }

        v21 = 0.0;
        while (v18 < v20)
        {
          v22 = [v8 objectAtIndex:v18];
          [v22 CGPointValue];
          v21 = v23 + v21;

          ++v18;
        }

        v24 = [(ActivityMoveAndExerciseChartViewAccessibility *)v2 safeIntForKey:@"moveAndExerciseChartViewType"];
        if (v24 - 1 >= 2)
        {
          if (v24)
          {
            v26 = 0;
            goto LABEL_17;
          }

          v25 = accessibilityLocalizedString(@"calories.format");
          v27 = AXFormatFloat();
          v26 = [NSString stringWithFormat:v25, v27];
        }

        else
        {
          v25 = accessibilityLocalizedString(@"minutes.format");
          v26 = [NSString stringWithFormat:v25, v21];
        }

LABEL_17:
        v28 = [NSDate dateWithTimeInterval:v35 sinceDate:(10800 * v16)];
        if (v16 == 7)
        {
          v29 = @"h:mma";
        }

        else
        {
          v29 = @"hxa";
        }

        v30 = [NSDate dateWithTimeInterval:v28 sinceDate:dbl_14380[v16 == 7]];
        [v36 setDateTemplate:v29];
        v31 = [v36 stringFromDate:v28 toDate:v30];
        v32 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:v38];
        [v32 setAccessibilityFrameInContainerSpace:{v14 * v16, 0.0, v14, v11}];
        [v32 setAccessibilityLabel:v31];
        [v32 setAccessibilityValue:v26];
        [v37 addObject:v32];

        ++v16;
        v2 = v34;
      }

      while (v19 != 8);
    }

    v3 = v37;
    [(ActivityMoveAndExerciseChartViewAccessibility *)v2 _accessibilitySetRetainedValue:v37 forKey:kUIAccessibilityStorageKeyChildren];
  }

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = ActivityMoveAndExerciseChartViewAccessibility;
  [(ActivityMoveAndExerciseChartViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(ActivityMoveAndExerciseChartViewAccessibility *)self safeArrayForKey:@"moveAndExerciseChartPoints"];
  v4 = v3;
  if (v3 && [v3 count] && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = self;
    v8 = v4;
  }

  else
  {
    v7 = self;
    v8 = 0;
  }

  [(ActivityMoveAndExerciseChartViewAccessibility *)v7 _accessibilitySetRetainedValue:v8 forKey:@"kAXDayViewCellGraphElements"];
  [(ActivityMoveAndExerciseChartViewAccessibility *)self _accessibilitySetRetainedValue:0 forKey:kUIAccessibilityStorageKeyChildren];
}

@end