@interface CNPropertySimpleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CNPropertySimpleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertySimpleCell" hasInstanceVariable:@"_labelLabel" withType:"UILabel"];
  [v3 validateClass:@"CNPropertySimpleCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(CNPropertySimpleCellAccessibility *)self safeValueForKey:@"_labelLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CNPropertySimpleCellAccessibility *)self safeValueForKey:@"_valueLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end