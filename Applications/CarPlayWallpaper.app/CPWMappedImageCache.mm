@interface CPWMappedImageCache
- (NSArray)allImageKeys;
- (_TtC16CarPlayWallpaper19CPWMappedImageCache)init;
- (_TtC16CarPlayWallpaper19CPWMappedImageCache)initWithCacheID:(id)d persistenceOptions:(unint64_t)options;
- (id)imageWith:(id)with;
- (void)removeAllImagesWithCompletion:(id)completion;
- (void)saveWithImage:(id)image with:(id)with completion:(id)completion;
@end

@implementation CPWMappedImageCache

- (_TtC16CarPlayWallpaper19CPWMappedImageCache)initWithCacheID:(id)d persistenceOptions:(unint64_t)options
{
  result = [objc_allocWithZone(BSUIMappedImageCache) initWithUniqueIdentifier:d];
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache) = result;
    *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_persistenceOptions) = options;
    v7.receiver = self;
    v7.super_class = type metadata accessor for CPWMappedImageCache();
    return [(CPWMappedImageCache *)&v7 init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)imageWith:(id)with
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache) imageForKey:with];

  return v3;
}

- (void)saveWithImage:(id)image with:(id)with completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1000090D4;
  }

  else
  {
    v11 = 0;
  }

  imageCopy = image;
  selfCopy = self;
  CPWMappedImageCache.save(image:with:completion:)(imageCopy, v8, v10, v7, v11);
  sub_10000907C(v7);
}

- (void)removeAllImagesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000090C4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v10[4] = sub_1000093C0;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000093A4;
  v10[3] = &unk_1000149F0;
  v8 = _Block_copy(v10);
  selfCopy = self;
  sub_100006418(v4);

  [v6 removeAllImagesWithCompletion:v8];
  sub_10000907C(v4);
  _Block_release(v8);
}

- (NSArray)allImageKeys
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  selfCopy = self;
  result = [v2 allKeys];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC16CarPlayWallpaper19CPWMappedImageCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end