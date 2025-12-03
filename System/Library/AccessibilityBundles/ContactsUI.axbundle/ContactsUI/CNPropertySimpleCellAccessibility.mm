@interface CNPropertySimpleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CNPropertySimpleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertySimpleCell" hasInstanceVariable:@"_labelLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CNPropertySimpleCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(CNPropertySimpleCellAccessibility *)self safeValueForKey:@"_labelLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CNPropertySimpleCellAccessibility *)self safeValueForKey:@"_valueLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end