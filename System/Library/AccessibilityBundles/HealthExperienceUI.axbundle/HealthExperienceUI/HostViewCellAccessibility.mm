@interface HostViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)_axButton;
- (unint64_t)accessibilityTraits;
@end

@implementation HostViewCellAccessibility

- (id)_axButton
{
  v2 = [(HostViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_7];
  firstObject = [v2 firstObject];

  return firstObject;
}

uint64_t __38__HostViewCellAccessibility__axButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGPoint)accessibilityActivationPoint
{
  _axButton = [(HostViewCellAccessibility *)self _axButton];
  v4 = _axButton;
  if (_axButton)
  {
    [_axButton accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HostViewCellAccessibility;
    [(HostViewCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = HostViewCellAccessibility;
  accessibilityTraits = [(HostViewCellAccessibility *)&v6 accessibilityTraits];
  _axButton = [(HostViewCellAccessibility *)self _axButton];
  if (_axButton)
  {

LABEL_4:
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
    return accessibilityTraits;
  }

  if ([(HealthExperienceUI_CollectionViewCellAccessibility *)self _axIsSelectable])
  {
    goto LABEL_4;
  }

  return accessibilityTraits;
}

@end