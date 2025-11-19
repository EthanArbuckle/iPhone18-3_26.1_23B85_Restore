@interface ContentConfigurationHostCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ContentConfigurationHostCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ContentConfigurationHostCellAccessibility;
  v3 = [(ContentConfigurationHostCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HealthExperienceUI_CollectionViewCellAccessibility *)self _axIsSelectable];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end