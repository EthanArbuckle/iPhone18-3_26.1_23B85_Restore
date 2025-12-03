@interface FitDayCellLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation FitDayCellLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitDayCellLayer" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitDayCellLayer" hasInstanceMethod:@"isToday" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MonthWeekView"];
  [validationsCopy validateClass:@"FitDayCellLayer" hasClassMethod:@"activityCellImageWithDiameter: thickness: calories: briskMinutes: hourlyBreak: fadeInnerRings: fadeAll:" withFullSignature:{"@", "d", "d", "d", "d", "d", "B", "B", 0}];
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

  accessibilityContainer = [(FitDayCellLayerAccessibility *)self accessibilityContainer];
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

  contents = [v3 contents];
  accessibilityLabel = [contents accessibilityLabel];

  return accessibilityLabel;
}

@end