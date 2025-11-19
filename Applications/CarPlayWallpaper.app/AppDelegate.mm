@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = objc_alloc_init(_TtC16CarPlayWallpaper15CPWAssetLibrary);
  [(AppDelegate *)self setAssetLibrary:v5];

  if (MGGetBoolAnswer())
  {
    v6 = 5;
  }

  else
  {
    v6 = 9;
  }

  v7 = [[_TtC16CarPlayWallpaper19CPWMappedImageCache alloc] initWithCacheID:@"com.apple.CarPlayApp.wallpaper-images" persistenceOptions:v6];
  v8 = [_TtC16CarPlayWallpaper22CPWPreferencesLRUCache alloc];
  v9 = [(CPWPreferencesLRUCache *)v8 initWithCapacity:6 domain:@"com.apple.CarPlayApp" versionKey:CRSUIWallpaperCacheVersionKey cachedDataKey:CRSUIWallpaperCacheImageIDsKey];
  v10 = [[_TtC16CarPlayWallpaper22CPWWallpaperImageCache alloc] initWithImageCache:v7 imageIDsCache:v9];
  [(AppDelegate *)self setWallpaperCache:v10];

  v11 = [(AppDelegate *)self wallpaperCache];
  [v11 updateCacheVersionIfNeededWithVersion:CRSUIWallpaperCacheCurrentVersion];

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];

  v8 = [v6 initWithName:@"Default Configuration" sessionRole:v7];

  return v8;
}

@end