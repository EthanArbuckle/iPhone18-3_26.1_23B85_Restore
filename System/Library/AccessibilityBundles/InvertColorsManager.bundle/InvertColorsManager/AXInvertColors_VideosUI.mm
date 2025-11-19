@interface AXInvertColors_VideosUI
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_VideosUI

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"VUICollectionViewFeaturedCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"VUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end