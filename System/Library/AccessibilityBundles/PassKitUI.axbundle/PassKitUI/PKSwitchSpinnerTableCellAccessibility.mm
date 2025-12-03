@interface PKSwitchSpinnerTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKSwitchSpinnerTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSwitchSpinnerTableCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSwitchSpinnerTableCell" hasInstanceVariable:@"_switch" withType:"UISwitch"];
}

- (id)accessibilityLabel
{
  v2 = [(PKSwitchSpinnerTableCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 safeStringForKey:@"text"];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PKSwitchSpinnerTableCellAccessibility *)self safeValueForKey:@"_switch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PKSwitchSpinnerTableCellAccessibility *)self safeValueForKey:@"_switch"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end