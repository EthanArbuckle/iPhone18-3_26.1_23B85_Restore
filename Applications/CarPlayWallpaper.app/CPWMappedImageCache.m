@interface CPWMappedImageCache
- (NSArray)allImageKeys;
- (_TtC16CarPlayWallpaper19CPWMappedImageCache)init;
- (_TtC16CarPlayWallpaper19CPWMappedImageCache)initWithCacheID:(id)a3 persistenceOptions:(unint64_t)a4;
- (id)imageWith:(id)a3;
- (void)removeAllImagesWithCompletion:(id)a3;
- (void)saveWithImage:(id)a3 with:(id)a4 completion:(id)a5;
@end

@implementation CPWMappedImageCache

- (_TtC16CarPlayWallpaper19CPWMappedImageCache)initWithCacheID:(id)a3 persistenceOptions:(unint64_t)a4
{
  result = [objc_allocWithZone(BSUIMappedImageCache) initWithUniqueIdentifier:a3];
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache) = result;
    *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_persistenceOptions) = a4;
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

- (id)imageWith:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache) imageForKey:a3];

  return v3;
}

- (void)saveWithImage:(id)a3 with:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
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

  v12 = a3;
  v13 = self;
  CPWMappedImageCache.save(image:with:completion:)(v12, v8, v10, v7, v11);
  sub_10000907C(v7);
}

- (void)removeAllImagesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_100006418(v4);

  [v6 removeAllImagesWithCompletion:v8];
  sub_10000907C(v4);
  _Block_release(v8);
}

- (NSArray)allImageKeys
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v3 = self;
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