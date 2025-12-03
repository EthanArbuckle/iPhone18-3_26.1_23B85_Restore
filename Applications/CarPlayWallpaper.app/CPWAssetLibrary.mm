@interface CPWAssetLibrary
- (NSString)wallpaperOverlayPath;
- (void)setWallpaperOverlayPath:(id)path;
@end

@implementation CPWAssetLibrary

- (NSString)wallpaperOverlayPath
{
  v2 = (self + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWallpaperOverlayPath:(id)path
{
  if (path)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000096A0(v4, v6);
  v8 = (selfCopy + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = v4;
  v8[1] = v6;

  sub_100009890();
}

@end