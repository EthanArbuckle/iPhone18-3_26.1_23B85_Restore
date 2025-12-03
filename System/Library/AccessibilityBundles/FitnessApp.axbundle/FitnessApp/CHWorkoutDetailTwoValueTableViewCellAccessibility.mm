@interface CHWorkoutDetailTwoValueTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axStringForValue:(id)value;
- (id)accessibilityElements;
- (void)configureWithTitle1:(id)title1 value1:(id)value1;
- (void)configureWithTitle2:(id)title2 value2:(id)value2;
@end

@implementation CHWorkoutDetailTwoValueTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_titleLabel1" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_titleLabel2" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_valueLabel1" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_valueLabel2" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceMethod:@"configureWithTitle1: value1:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceMethod:@"configureWithTitle2: value2:" withFullSignature:{"v", "@", "@", 0}];
}

- (id)accessibilityElements
{
  _axElements = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axElements];

  if (!_axElements)
  {
    v4 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_titleLabel1"];
    v5 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_titleLabel2"];
    v6 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel1"];
    v7 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel2"];
    v8 = v7;
    if (v4 && v5 && v6 && v7)
    {
      v9 = [[AXGroupedTitleValueView alloc] initWithAccessibilityContainer:self titleView:v4 valueView:v6];
      v10 = [[AXGroupedTitleValueView alloc] initWithAccessibilityContainer:self titleView:v5 valueView:v8];
      v14[0] = v9;
      v14[1] = v10;
      v11 = [NSArray arrayWithObjects:v14 count:2];
      [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axSetElements:v11];
    }
  }

  _axElements2 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axElements];

  return _axElements2;
}

- (void)configureWithTitle1:(id)title1 value1:(id)value1
{
  v9.receiver = self;
  v9.super_class = CHWorkoutDetailTwoValueTableViewCellAccessibility;
  value1Copy = value1;
  [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)&v9 configureWithTitle1:title1 value1:value1Copy];
  v7 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel1", v9.receiver, v9.super_class];
  v8 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axStringForValue:value1Copy];

  [v7 setAccessibilityLabel:v8];
}

- (void)configureWithTitle2:(id)title2 value2:(id)value2
{
  v9.receiver = self;
  v9.super_class = CHWorkoutDetailTwoValueTableViewCellAccessibility;
  value2Copy = value2;
  [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)&v9 configureWithTitle2:title2 value2:value2Copy];
  v7 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel2", v9.receiver, v9.super_class];
  v8 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axStringForValue:value2Copy];

  [v7 setAccessibilityLabel:v8];
}

- (id)_axStringForValue:(id)value
{
  valueCopy = value;
  string = [valueCopy string];
  if ([string containsString:@"--"])
  {

LABEL_4:
    accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"no.data");
LABEL_5:
    accessibilityUserDefinedLabel = accessibilityUserDefinedLabel2;
    goto LABEL_6;
  }

  string2 = [valueCopy string];
  v6 = [string2 containsString:@"––"];

  if (v6)
  {
    goto LABEL_4;
  }

  accessibilityUserDefinedLabel = [valueCopy accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [valueCopy accessibilityUserDefinedLabel];
    goto LABEL_5;
  }

LABEL_6:

  return accessibilityUserDefinedLabel;
}

@end