@interface HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility *)self safeBoolForKey:@"axItemIsFavorited"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end