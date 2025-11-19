@interface PKPaletteOptionSwitchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteOptionSwitchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteOptionSwitchCell" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaletteOptionSwitchCell" hasInstanceVariable:@"_switchButton" withType:"UISwitch"];
}

- (id)accessibilityLabel
{
  v2 = [(PKPaletteOptionSwitchCellAccessibility *)self safeValueForKey:@"_textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PKPaletteOptionSwitchCellAccessibility *)self _axSwitchButton];
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