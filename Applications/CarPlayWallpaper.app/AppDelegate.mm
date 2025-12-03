@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
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

  wallpaperCache = [(AppDelegate *)self wallpaperCache];
  [wallpaperCache updateCacheVersionIfNeededWithVersion:CRSUIWallpaperCacheCurrentVersion];

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];

  v8 = [v6 initWithName:@"Default Configuration" sessionRole:role];

  return v8;
}

@end