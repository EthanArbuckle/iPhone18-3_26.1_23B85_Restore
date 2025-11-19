@interface AXInvertColors_Wallpaper
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_Wallpaper

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"WallpaperControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"WallpaperMagicTableCategoryButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"WallpaperPhotoCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end