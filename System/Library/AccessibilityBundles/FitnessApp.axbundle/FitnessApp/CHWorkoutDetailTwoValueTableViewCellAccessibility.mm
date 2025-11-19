@interface CHWorkoutDetailTwoValueTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axStringForValue:(id)a3;
- (id)accessibilityElements;
- (void)configureWithTitle1:(id)a3 value1:(id)a4;
- (void)configureWithTitle2:(id)a3 value2:(id)a4;
@end

@implementation CHWorkoutDetailTwoValueTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_titleLabel1" withType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_titleLabel2" withType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_valueLabel1" withType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceVariable:@"_valueLabel2" withType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceMethod:@"configureWithTitle1: value1:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailTwoValueTableViewCell" hasInstanceMethod:@"configureWithTitle2: value2:" withFullSignature:{"v", "@", "@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axElements];

  if (!v3)
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

  v12 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axElements];

  return v12;
}

- (void)configureWithTitle1:(id)a3 value1:(id)a4
{
  v9.receiver = self;
  v9.super_class = CHWorkoutDetailTwoValueTableViewCellAccessibility;
  v6 = a4;
  [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)&v9 configureWithTitle1:a3 value1:v6];
  v7 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel1", v9.receiver, v9.super_class];
  v8 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axStringForValue:v6];

  [v7 setAccessibilityLabel:v8];
}

- (void)configureWithTitle2:(id)a3 value2:(id)a4
{
  v9.receiver = self;
  v9.super_class = CHWorkoutDetailTwoValueTableViewCellAccessibility;
  v6 = a4;
  [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)&v9 configureWithTitle2:a3 value2:v6];
  v7 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self safeValueForKey:@"_valueLabel2", v9.receiver, v9.super_class];
  v8 = [(CHWorkoutDetailTwoValueTableViewCellAccessibility *)self _axStringForValue:v6];

  [v7 setAccessibilityLabel:v8];
}

- (id)_axStringForValue:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  if ([v4 containsString:@"--"])
  {

LABEL_4:
    v7 = accessibilityLocalizedString(@"no.data");
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  v5 = [v3 string];
  v6 = [v5 containsString:@"––"];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = [v3 accessibilityUserDefinedLabel];

  if (v8)
  {
    v7 = [v3 accessibilityUserDefinedLabel];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

@end