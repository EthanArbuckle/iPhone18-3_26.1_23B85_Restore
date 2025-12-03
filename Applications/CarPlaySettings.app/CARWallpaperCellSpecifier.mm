@interface CARWallpaperCellSpecifier
- (CARWallpaperCellSpecifier)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences carSession:(id)session actionBlock:(id)block;
@end

@implementation CARWallpaperCellSpecifier

- (CARWallpaperCellSpecifier)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences carSession:(id)session actionBlock:(id)block
{
  blockCopy = block;
  sessionCopy = session;
  preferencesCopy = preferences;
  wallpaperCopy = wallpaper;
  v14 = [[CARWallpaperCellView alloc] initWithWallpaper:wallpaperCopy wallpaperPreferences:preferencesCopy];

  [(CARWallpaperCellView *)v14 setCarSession:sessionCopy];
  v15 = [(CARSettingsCellViewSpecifier *)self initWithView:v14 actionBlock:blockCopy];

  return v15;
}

@end