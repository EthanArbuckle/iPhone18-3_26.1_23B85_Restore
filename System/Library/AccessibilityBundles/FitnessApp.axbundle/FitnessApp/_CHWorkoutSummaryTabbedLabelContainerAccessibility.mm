@interface _CHWorkoutSummaryTabbedLabelContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _CHWorkoutSummaryTabbedLabelContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_CHWorkoutSummaryTabbedLabelContainer" hasInstanceVariable:@"_titleText" withType:"NSString"];
  [validationsCopy validateClass:@"_CHWorkoutSummaryTabbedLabelContainer" hasInstanceVariable:@"_totalText" withType:"NSString"];
  [validationsCopy validateClass:@"_CHWorkoutSummaryTabbedLabelContainer" hasInstanceVariable:@"_averageText" withType:"NSString"];
}

- (id)accessibilityLabel
{
  v3 = +[NSMutableArray array];
  v4 = [(_CHWorkoutSummaryTabbedLabelContainerAccessibility *)self safeValueForKey:@"_titleText"];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  _accessibilityLabelAttribute = [(_CHWorkoutSummaryTabbedLabelContainerAccessibility *)self _accessibilityLabelAttribute];
  objc_opt_class();
  v6 = [(_CHWorkoutSummaryTabbedLabelContainerAccessibility *)self safeValueForKey:@"_totalText"];
  v7 = __UIAccessibilityCastAsClass();

  if ([v7 length])
  {
    v8 = accessibilityLocalizedString(@"summary.cell.header.total");
    [v3 addObject:v8];

    if (_accessibilityLabelAttribute)
    {
      v9 = [[AXAttributedString alloc] initWithString:v7];
      [v9 setAttribute:&__kCFBooleanTrue forKey:_accessibilityLabelAttribute];
      [v3 addObject:v9];
    }

    else
    {
      [v3 addObject:v7];
    }
  }

  objc_opt_class();
  v10 = [(_CHWorkoutSummaryTabbedLabelContainerAccessibility *)self safeValueForKey:@"_averageText"];
  v11 = __UIAccessibilityCastAsClass();

  if ([v11 length])
  {
    v12 = accessibilityLocalizedString(@"summary.cell.header.average");
    [v3 addObject:v12];

    if (_accessibilityLabelAttribute)
    {
      v13 = [[AXAttributedString alloc] initWithString:v11];
      [v13 setAttribute:&__kCFBooleanTrue forKey:_accessibilityLabelAttribute];
      [v3 addObject:v13];
    }

    else
    {
      [v3 addObject:v11];
    }
  }

  v14 = UIAXLabelForElements();

  return v14;
}

@end