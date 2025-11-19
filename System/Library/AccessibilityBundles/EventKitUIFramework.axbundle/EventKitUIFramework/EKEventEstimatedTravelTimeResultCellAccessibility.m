@interface EKEventEstimatedTravelTimeResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation EKEventEstimatedTravelTimeResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventEstimatedTravelTimeResultCell" isKindOfClass:@"EKCalendarChooserCell"];
  [v3 validateClass:@"EKCalendarChooserCell" hasInstanceVariable:@"_colorDot" withType:"UIImage"];
}

- (id)accessibilityLabel
{
  v2 = self;
  objc_opt_class();
  v3 = [(EKEventEstimatedTravelTimeResultCellAccessibility *)v2 safeValueForKey:@"_colorDot"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = CarImage();

  if (v4 == v5)
  {
    v8 = @"travel.time.estimate.car";
  }

  else
  {
    v6 = WalkmanImage();

    if (v4 != v6)
    {
      v14 = v2;
      _AXAssert();
      v7 = 0;
      goto LABEL_7;
    }

    v8 = @"travel.time.estimate.walking";
  }

  v7 = accessibilityLocalizedString(v8);
LABEL_7:
  v9 = [(EKEventEstimatedTravelTimeResultCellAccessibility *)v2 textLabel];
  v10 = [v9 accessibilityLabel];
  v11 = [(EKEventEstimatedTravelTimeResultCellAccessibility *)v2 detailTextLabel];
  v15 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end