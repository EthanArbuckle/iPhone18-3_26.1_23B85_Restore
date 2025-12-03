@interface AXInvertColors_Wallpaper
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_Wallpaper

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"WallpaperControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"WallpaperMagicTableCategoryButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"WallpaperPhotoCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end