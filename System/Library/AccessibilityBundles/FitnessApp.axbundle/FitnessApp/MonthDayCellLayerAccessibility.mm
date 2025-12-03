@interface MonthDayCellLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MonthDayCellLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ActivitySummaryCache" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MonthDayCellLayer" hasInstanceVariable:@"_hasWorkout" withType:"B"];
  [validationsCopy validateClass:@"MonthDayCellLayer" hasInstanceMethod:@"isFutureDay" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKCalendarDayCell" hasInstanceMethod:@"representsToday" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKCalendarDayCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MonthDayCellLayer" isKindOfClass:@"HKCalendarDayCell"];
  [validationsCopy validateClass:@"MonthWeekView"];
  [validationsCopy validateClass:@"MonthScrollViewController"];
  [validationsCopy validateClass:@"MonthViewController"];
}

- (id)accessibilityLabel
{
  if ([(MonthDayCellLayerAccessibility *)self safeBoolForKey:@"representsToday"])
  {
    v3 = accessibilityLocalizedString(@"today");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MonthDayCellLayerAccessibility *)self safeValueForKey:@"date"];
  v5 = __UIAccessibilitySafeClass();

  accessibilityContainer = [(MonthDayCellLayerAccessibility *)self accessibilityContainer];
  AXSafeClassFromString();
  objc_opt_isKindOfClass();

  v9 = AXDateStringForFormat();
  v7 = __UIAXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MonthDayCellLayerAccessibility;
  return UIAccessibilityTraitButton | [(MonthDayCellLayerAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if ([(MonthDayCellLayerAccessibility *)self safeBoolForKey:@"isFutureDay"])
  {
    v3 = accessibilityLocalizedString(@"no.data");
  }

  else
  {
    v4 = [(MonthDayCellLayerAccessibility *)self safeValueForKey:@"date"];
    v5 = __UIAccessibilitySafeClass();

    v6 = accessibilityFitnessStringForDate(v5, 1);
    if ([(MonthDayCellLayerAccessibility *)self safeBoolForKey:@"_hasWorkout"])
    {
      v11 = accessibilityLocalizedString(@"worked.out");
      v7 = __UIAXStringForVariables();
    }

    else
    {
      v7 = 0;
    }

    v8 = __UIAXStringForVariables();

    if ([v8 length])
    {
      v9 = v8;
    }

    else
    {
      v9 = accessibilityLocalizedString(@"no.data");
    }

    v3 = v9;
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  [(MonthDayCellLayerAccessibility *)self frame];
  v4 = v3;
  v6 = v5 + 70.0;
  v8 = v7 + 20.0;
  v10 = v9 + -10.0;
  v11 = [(MonthDayCellLayerAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v20.origin.x = v10;
  v20.origin.y = v4;
  v20.size.width = v8;
  v20.size.height = v6;
  v21 = UIAccessibilityConvertFrameToScreenCoordinates(v20, v11);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end