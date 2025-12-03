@interface PKPaletteOptionSwitchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteOptionSwitchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteOptionSwitchCell" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaletteOptionSwitchCell" hasInstanceVariable:@"_switchButton" withType:"UISwitch"];
}

- (id)accessibilityLabel
{
  v2 = [(PKPaletteOptionSwitchCellAccessibility *)self safeValueForKey:@"_textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axSwitchButton = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
  accessibilityValue = [_axSwitchButton accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  _axSwitchButton = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
  accessibilityTraits = [_axSwitchButton accessibilityTraits];

  return accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  _axSwitchButton = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
  [_axSwitchButton accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end