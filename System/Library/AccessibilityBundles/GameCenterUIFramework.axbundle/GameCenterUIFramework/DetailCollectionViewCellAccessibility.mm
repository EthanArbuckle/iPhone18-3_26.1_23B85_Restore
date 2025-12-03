@interface DetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_axSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation DetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityAccessoryView" withFullSignature:{"@", 0}];
}

- (id)_axSwitch
{
  _axAccessoryView = [(DetailCollectionViewCellAccessibility *)self _axAccessoryView];
  MEMORY[0x29C2D7090](@"UISwitch");
  if (objc_opt_isKindOfClass())
  {
    v3 = _axAccessoryView;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)accessibilityValue
{
  _axSwitch = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  v4 = _axSwitch;
  if (_axSwitch)
  {
    accessibilityValue = [_axSwitch accessibilityValue];
  }

  else
  {
    _axAccessoryView = [(DetailCollectionViewCellAccessibility *)self _axAccessoryView];
    accessibilityValue = [_axAccessoryView accessibilityLabel];
  }

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axSwitch = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  if (_axSwitch)
  {
    _axSwitch2 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
    [_axSwitch2 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DetailCollectionViewCellAccessibility;
    [(DetailCollectionViewCellAccessibility *)&v13 accessibilityActivationPoint];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (unint64_t)accessibilityTraits
{
  _axSwitch = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  if (_axSwitch)
  {
    _axSwitch2 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
    accessibilityTraits = [_axSwitch2 accessibilityTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DetailCollectionViewCellAccessibility;
    accessibilityTraits = *MEMORY[0x29EDC7F70] | [(DetailCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  }

  return accessibilityTraits;
}

@end