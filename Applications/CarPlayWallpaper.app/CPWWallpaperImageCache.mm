@interface CPWWallpaperImageCache
- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)init;
- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)initWithImageCache:(id)cache imageIDsCache:(id)dsCache;
- (id)imageWithKey:(id)key;
- (void)saveImage:(id)image withKey:(id)key completion:(id)completion;
- (void)updateCacheVersionIfNeededWithVersion:(int64_t)version;
@end

@implementation CPWWallpaperImageCache

- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)initWithImageCache:(id)cache imageIDsCache:(id)dsCache
{
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache) = cache;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache) = dsCache;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CPWWallpaperImageCache();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(CPWWallpaperImageCache *)&v5 init];
}

- (void)updateCacheVersionIfNeededWithVersion:(int64_t)version
{
  selfCopy = self;
  CPWWallpaperImageCache.updateCacheVersionIfNeeded(version:)(version);
}

- (id)imageWithKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = CPWWallpaperImageCache.image(with:)(v8);

  return v9;
}

- (void)saveImage:(id)image withKey:(id)key completion:(id)completion
{
  v7 = _Block_copy(completion);
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

  imageCopy = image;
  selfCopy = self;
  CPWWallpaperImageCache.save(image:with:completion:)(imageCopy, v8, v10, v7, v11);
  sub_10000907C(v7);
}

- (_TtC16CarPlayWallpaper22CPWWallpaperImageCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end