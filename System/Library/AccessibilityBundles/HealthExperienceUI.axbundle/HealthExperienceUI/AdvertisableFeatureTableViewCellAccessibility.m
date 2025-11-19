@interface AdvertisableFeatureTableViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)_axFeatureSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AdvertisableFeatureTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(AdvertisableFeatureTableViewCellAccessibility *)self _axFeatureSwitch];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AdvertisableFeatureTableViewCellAccessibility *)self _axFeatureSwitch];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AdvertisableFeatureTableViewCellAccessibility *)self _axFeatureSwitch];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)_axFeatureSwitch
{
  v2 = [(AdvertisableFeatureTableViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();

  return v3;
}

uint64_t __65__AdvertisableFeatureTableViewCellAccessibility__axFeatureSwitch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end