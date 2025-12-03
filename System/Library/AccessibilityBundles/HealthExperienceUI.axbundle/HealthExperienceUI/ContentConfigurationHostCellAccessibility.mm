@interface ContentConfigurationHostCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ContentConfigurationHostCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ContentConfigurationHostCellAccessibility;
  accessibilityTraits = [(ContentConfigurationHostCellAccessibility *)&v7 accessibilityTraits];
  _axIsSelectable = [(HealthExperienceUI_CollectionViewCellAccessibility *)self _axIsSelectable];
  v5 = *MEMORY[0x29EDC7F70];
  if (!_axIsSelectable)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end