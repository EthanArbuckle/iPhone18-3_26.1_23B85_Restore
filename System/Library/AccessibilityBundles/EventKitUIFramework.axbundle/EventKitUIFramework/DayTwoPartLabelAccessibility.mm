@interface DayTwoPartLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation DayTwoPartLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_firstLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_secondLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_entireString" withType:"UILabel"];
  [validationsCopy validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_overlayLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_useSeparateFormat" withType:"B"];
}

- (id)accessibilityLabel
{
  v3 = [(DayTwoPartLabelAccessibility *)self safeBoolForKey:@"_useSeparateFormat"];
  if (v3)
  {
    v4 = @"_firstLabel";
  }

  else
  {
    v4 = @"_entireString";
  }

  if (v3)
  {
    v5 = @"_secondLabel";
  }

  else
  {
    v5 = @"_overlayLabel";
  }

  v6 = [(DayTwoPartLabelAccessibility *)self safeValueForKey:v4];
  accessibilityLabel = [v6 accessibilityLabel];
  v8 = [(DayTwoPartLabelAccessibility *)self safeValueForKey:v5];
  accessibilityLabel2 = [v8 accessibilityLabel];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end