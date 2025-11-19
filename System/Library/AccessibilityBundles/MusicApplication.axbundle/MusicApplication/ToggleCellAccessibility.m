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
  v3 = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (v3)
  {
    v4 = [(ToggleCellAccessibility *)self _axChildSwitch];
    v5 = [v4 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ToggleCellAccessibility;
    v5 = [(ToggleCellAccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (v3)
  {
    v4 = [(ToggleCellAccessibility *)self _axChildSwitch];
    [v4 accessibilityActivationPoint];
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
  v3 = [(ToggleCellAccessibility *)self _axChildSwitch];

  if (v3)
  {
    v4 = [(ToggleCellAccessibility *)self _axChildSwitch];
    v5 = [v4 accessibilityTraits];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ToggleCellAccessibility;
    return [(ToggleCellAccessibility *)&v7 accessibilityTraits];
  }
}

@end