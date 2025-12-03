@interface EKEventEstimatedTravelTimeResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation EKEventEstimatedTravelTimeResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventEstimatedTravelTimeResultCell" isKindOfClass:@"EKCalendarChooserCell"];
  [validationsCopy validateClass:@"EKCalendarChooserCell" hasInstanceVariable:@"_colorDot" withType:"UIImage"];
}

- (id)accessibilityLabel
{
  selfCopy = self;
  objc_opt_class();
  v3 = [(EKEventEstimatedTravelTimeResultCellAccessibility *)selfCopy safeValueForKey:@"_colorDot"];
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
      v14 = selfCopy;
      _AXAssert();
      v7 = 0;
      goto LABEL_7;
    }

    v8 = @"travel.time.estimate.walking";
  }

  v7 = accessibilityLocalizedString(v8);
LABEL_7:
  textLabel = [(EKEventEstimatedTravelTimeResultCellAccessibility *)selfCopy textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  detailTextLabel = [(EKEventEstimatedTravelTimeResultCellAccessibility *)selfCopy detailTextLabel];
  accessibilityLabel2 = [detailTextLabel accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end