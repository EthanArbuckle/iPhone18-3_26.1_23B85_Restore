@interface CARWallpaperCellSpecifier
- (CARWallpaperCellSpecifier)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4 carSession:(id)a5 actionBlock:(id)a6;
@end

@implementation CARWallpaperCellSpecifier

- (CARWallpaperCellSpecifier)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4 carSession:(id)a5 actionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[CARWallpaperCellView alloc] initWithWallpaper:v13 wallpaperPreferences:v12];

  [(CARWallpaperCellView *)v14 setCarSession:v11];
  v15 = [(CARSettingsCellViewSpecifier *)self initWithView:v14 actionBlock:v10];

  return v15;
}

@end