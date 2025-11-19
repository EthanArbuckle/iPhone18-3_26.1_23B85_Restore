@interface CPWPreferencesLRUCache
- (NSArray)entries;
- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)init;
- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)initWithCapacity:(int64_t)a3 domain:(id)a4 versionKey:(id)a5 cachedDataKey:(id)a6;
- (void)markEntryAsRecentlyUsed:(id)a3;
- (void)setVersion:(int64_t)a3;
@end

@implementation CPWPreferencesLRUCache

- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)initWithCapacity:(int64_t)a3 domain:(id)a4 versionKey:(id)a5 cachedDataKey:(id)a6
{
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_capacity) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey) = a6;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CPWPreferencesLRUCache();
  v9 = a4;
  v10 = a5;
  v11 = a6;
  return [(CPWPreferencesLRUCache *)&v13 init];
}

- (void)setVersion:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey);
  v4 = self;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v3, isa, *(&v4->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
}

- (NSArray)entries
{
  v2 = self;
  CPWPreferencesLRUCache.entries.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)markEntryAsRecentlyUsed:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CPWPreferencesLRUCache.markEntryAsRecentlyUsed(_:)(v8);
}

- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end