@interface MenuCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_axChildSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MenuCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.MenuCell" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MenuCell" hasInstanceMethod:@"accessibilityIsDimmed" withFullSignature:{"B", 0}];
}

- (id)_axChildSwitch
{
  v3 = objc_opt_class();

  return [(MenuCellAccessibility *)self _accessibilityDescendantOfType:v3];
}

- (id)accessibilityValue
{
  _axChildSwitch = [(MenuCellAccessibility *)self _axChildSwitch];

  if (_axChildSwitch)
  {
    _axChildSwitch2 = [(MenuCellAccessibility *)self _axChildSwitch];
    accessibilityValue = [_axChildSwitch2 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MenuCellAccessibility;
    accessibilityValue = [(MenuCellAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axChildSwitch = [(MenuCellAccessibility *)self _axChildSwitch];

  if (_axChildSwitch)
  {
    _axChildSwitch2 = [(MenuCellAccessibility *)self _axChildSwitch];
    [_axChildSwitch2 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MenuCellAccessibility;
    [(MenuCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = MenuCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MenuCellAccessibility *)&v10 accessibilityTraits];
  _axChildSwitch = [(MenuCellAccessibility *)self _axChildSwitch];

  v5 = *MEMORY[0x29EDC7FE8];
  if (!_axChildSwitch)
  {
    v5 = 0;
  }

  v6 = v3 | v5;
  v7 = [(MenuCellAccessibility *)self safeBoolForKey:@"accessibilityIsDimmed"];
  v8 = *MEMORY[0x29EDC7FA8];
  if (!v7)
  {
    v8 = 0;
  }

  return v6 | v8;
}

@end