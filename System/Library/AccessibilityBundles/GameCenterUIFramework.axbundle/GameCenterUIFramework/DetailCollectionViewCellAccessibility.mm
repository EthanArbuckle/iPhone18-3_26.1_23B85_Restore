@interface DetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_axSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation DetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.DetailCollectionViewCell" hasInstanceMethod:@"accessibilityAccessoryView" withFullSignature:{"@", 0}];
}

- (id)_axSwitch
{
  v2 = [(DetailCollectionViewCellAccessibility *)self _axAccessoryView];
  MEMORY[0x29C2D7090](@"UISwitch");
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v3 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
  }

  else
  {
    v6 = [(DetailCollectionViewCellAccessibility *)self _axAccessoryView];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  if (v3)
  {
    v4 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
    [v4 accessibilityActivationPoint];
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
  v3 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
  if (v3)
  {
    v4 = [(DetailCollectionViewCellAccessibility *)self _axSwitch];
    v5 = [v4 accessibilityTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DetailCollectionViewCellAccessibility;
    v5 = *MEMORY[0x29EDC7F70] | [(DetailCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  }

  return v5;
}

@end