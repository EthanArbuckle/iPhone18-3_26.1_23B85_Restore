@interface CPWWallpaperImageCache
- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)init;
- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)initWithImageCache:(id)a3 imageIDsCache:(id)a4;
- (id)imageWithKey:(id)a3;
- (void)saveImage:(id)a3 withKey:(id)a4 completion:(id)a5;
- (void)updateCacheVersionIfNeededWithVersion:(int64_t)a3;
@end

@implementation CPWWallpaperImageCache

- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)initWithImageCache:(id)a3 imageIDsCache:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CPWWallpaperImageCache();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(CPWWallpaperImageCache *)&v5 init];
}

- (void)updateCacheVersionIfNeededWithVersion:(int64_t)a3
{
  v4 = self;
  CPWWallpaperImageCache.updateCacheVersionIfNeeded(version:)(a3);
}

- (id)imageWithKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = CPWWallpaperImageCache.image(with:)(v8);

  return v9;
}

- (void)saveImage:(id)a3 withKey:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1000093BC;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = self;
  CPWWallpaperImageCache.save(image:with:completion:)(v12, v8, v10, v7, v11);
  sub_10000907C(v7);
}

- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end