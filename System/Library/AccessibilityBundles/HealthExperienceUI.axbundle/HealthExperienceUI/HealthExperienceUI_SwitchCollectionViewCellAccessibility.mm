@interface HealthExperienceUI_SwitchCollectionViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)_axSwitchView;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HealthExperienceUI_SwitchCollectionViewCellAccessibility

- (id)accessibilityValue
{
  _axSwitchView = [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)self _axSwitchView];
  v4 = _axSwitchView;
  if (_axSwitchView)
  {
    accessibilityValue = [_axSwitchView accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HealthExperienceUI_SwitchCollectionViewCellAccessibility;
    accessibilityValue = [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  _axSwitchView = [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)self _axSwitchView];
  v4 = _axSwitchView;
  if (_axSwitchView)
  {
    accessibilityTraits = [_axSwitchView accessibilityTraits];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HealthExperienceUI_SwitchCollectionViewCellAccessibility;
    accessibilityTraits = [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)&v8 accessibilityTraits];
  }

  v6 = accessibilityTraits;

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  _axSwitchView = [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)self _axSwitchView];
  v4 = _axSwitchView;
  if (_axSwitchView)
  {
    [_axSwitchView accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HealthExperienceUI_SwitchCollectionViewCellAccessibility;
    [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)&v11 accessibilityActivationPoint];
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

  return [(HealthExperienceUI_SwitchCollectionViewCellAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end