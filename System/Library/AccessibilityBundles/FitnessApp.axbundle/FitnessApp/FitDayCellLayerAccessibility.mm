@interface FitDayCellLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation FitDayCellLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitDayCellLayer" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitDayCellLayer" hasInstanceMethod:@"isToday" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MonthWeekView"];
  [v3 validateClass:@"FitDayCellLayer" hasClassMethod:@"activityCellImageWithDiameter: thickness: calories: briskMinutes: hourlyBreak: fadeInnerRings: fadeAll:" withFullSignature:{"@", "d", "d", "d", "d", "d", "B", "B", 0}];
}

- (id)accessibilityLabel
{
  if ([(FitDayCellLayerAccessibility *)self safeBoolForKey:@"isToday"])
  {
    v3 = accessibilityLocalizedString(@"today");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(FitDayCellLayerAccessibility *)self safeValueForKey:@"date"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [(FitDayCellLayerAccessibility *)self accessibilityContainer];
  AXSafeClassFromString();
  objc_opt_isKindOfClass();

  v9 = AXDateStringForFormat();
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(FitDayCellLayerAccessibility *)self safeValueForKey:@"ringLayer"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 contents];
  v5 = [v4 accessibilityLabel];

  return v5;
}

@end