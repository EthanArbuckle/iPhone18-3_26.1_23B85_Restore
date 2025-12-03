@interface ToggleCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)_axChildSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation ToggleCellAccessibility

- (id)_axChildSwitch
{
  v3 = objc_opt_class();

  return [(ToggleCellAccessibility *)self _accessibilityDescendantOfType:v3];
}

- (id)accessibilityValue
{
  _axChildSwitch = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (_axChildSwitch)
  {
    _axChildSwitch2 = [(ToggleCellAccessibility *)self _axChildSwitch];
    accessibilityValue = [_axChildSwitch2 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ToggleCellAccessibility;
    accessibilityValue = [(ToggleCellAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axChildSwitch = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (_axChildSwitch)
  {
    _axChildSwitch2 = [(ToggleCellAccessibility *)self _axChildSwitch];
    [_axChildSwitch2 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ToggleCellAccessibility;
    [(ToggleCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  _axChildSwitch = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (_axChildSwitch)
  {
    _axChildSwitch2 = [(ToggleCellAccessibility *)self _axChildSwitch];
    accessibilityTraits = [_axChildSwitch2 accessibilityTraits];

    return accessibilityTraits;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ToggleCellAccessibility;
    return [(ToggleCellAccessibility *)&v7 accessibilityTraits];
  }
}

@end