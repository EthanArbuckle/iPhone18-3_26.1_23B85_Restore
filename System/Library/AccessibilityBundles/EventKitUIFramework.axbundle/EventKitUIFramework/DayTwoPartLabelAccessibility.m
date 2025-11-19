@interface DayTwoPartLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation DayTwoPartLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_firstLabel" withType:"UILabel"];
  [v3 validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_secondLabel" withType:"UILabel"];
  [v3 validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_entireString" withType:"UILabel"];
  [v3 validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_overlayLabel" withType:"UILabel"];
  [v3 validateClass:@"DayTwoPartLabel" hasInstanceVariable:@"_useSeparateFormat" withType:"B"];
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
  v7 = [v6 accessibilityLabel];
  v8 = [(DayTwoPartLabelAccessibility *)self safeValueForKey:v5];
  v11 = [v8 accessibilityLabel];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end