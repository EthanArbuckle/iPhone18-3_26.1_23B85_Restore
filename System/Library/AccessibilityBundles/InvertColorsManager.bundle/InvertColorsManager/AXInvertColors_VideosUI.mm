@interface AXInvertColors_VideosUI
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_VideosUI

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"VUICollectionViewFeaturedCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"VUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end