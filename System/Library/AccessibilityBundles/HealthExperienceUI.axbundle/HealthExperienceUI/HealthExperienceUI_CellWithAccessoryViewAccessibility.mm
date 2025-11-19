@interface HealthExperienceUI_CellWithAccessoryViewAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)_axSwitchView;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HealthExperienceUI_CellWithAccessoryViewAccessibility

- (id)accessibilityValue
{
  v3 = [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)self _axSwitchView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HealthExperienceUI_CellWithAccessoryViewAccessibility;
    v5 = [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)self _axSwitchView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityTraits];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HealthExperienceUI_CellWithAccessoryViewAccessibility;
    v5 = [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)&v8 accessibilityTraits];
  }

  v6 = v5;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)self _axSwitchView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HealthExperienceUI_CellWithAccessoryViewAccessibility;
    [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)_axSwitchView
{
  v3 = objc_opt_class();

  return [(HealthExperienceUI_CellWithAccessoryViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end