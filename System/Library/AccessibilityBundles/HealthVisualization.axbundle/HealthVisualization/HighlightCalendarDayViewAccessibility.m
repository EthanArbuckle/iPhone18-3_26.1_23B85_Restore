@interface HighlightCalendarDayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axProjectionValues:(int64_t)a3 projectionKind:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation HighlightCalendarDayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthVisualization.HighlightCalendarDayView" hasInstanceMethod:@"axDate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthVisualization.HighlightCalendarDayView" hasInstanceMethod:@"axProjectionKind" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthVisualization.HighlightCalendarDayView" hasInstanceMethod:@"axProbability" withFullSignature:{"q", 0}];
  [v3 validateClass:@"HealthVisualization.HighlightCalendarDayView" hasInstanceMethod:@"axCircleState" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HighlightCalendarDayViewAccessibility *)self safeValueForKey:@"axDate"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = _AXGetStringForDay(v4);

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(HighlightCalendarDayViewAccessibility *)self safeIntegerForKey:@"axProbability"];
  v4 = [(HighlightCalendarDayViewAccessibility *)self safeStringForKey:@"axProjectionKind"];
  v5 = [(HighlightCalendarDayViewAccessibility *)self _axProjectionValues:v3 projectionKind:v4];

  return v5;
}

- (id)_axProjectionValues:(int64_t)a3 projectionKind:(id)a4
{
  v6 = a4;
  v7 = [(HighlightCalendarDayViewAccessibility *)self safeIntegerForKey:@"axCircleState"];
  if (v6)
  {
    if (a3 == 2)
    {
      if ([v6 isEqualToString:@"menstruation"])
      {
        v8 = @"predicted.period";
      }

      else
      {
        v8 = @"predicted.fertile";
      }

      goto LABEL_14;
    }

    if (a3 == 1 && [v6 isEqualToString:@"menstruation"])
    {
      v8 = @"possible.period";
LABEL_14:
      v9 = accessibilityLocalizedString(v8);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v7 == 1)
  {
    v8 = @"data.logged";
    goto LABEL_14;
  }

  if (v7 != 3)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_16;
  }

  v9 = UIAXStringForAllChildren();
LABEL_15:
  v10 = v9;
LABEL_16:

  return v10;
}

@end