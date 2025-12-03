@interface CPWPreferencesLRUCache
- (NSArray)entries;
- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)init;
- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)initWithCapacity:(int64_t)capacity domain:(id)domain versionKey:(id)key cachedDataKey:(id)dataKey;
- (void)markEntryAsRecentlyUsed:(id)used;
- (void)setVersion:(int64_t)version;
@end

@implementation CPWPreferencesLRUCache

- (_TtC16CarPlayWallpaper22CPWPreferencesLRUCache)initWithCapacity:(int64_t)capacity domain:(id)domain versionKey:(id)key cachedDataKey:(id)dataKey
{
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_capacity) = capacity;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain) = domain;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey) = key;
  *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey) = dataKey;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CPWPreferencesLRUCache();
  domainCopy = domain;
  keyCopy = key;
  dataKeyCopy = dataKey;
  return [(CPWPreferencesLRUCache *)&v13 init];
}

- (void)setVersion:(int64_t)version
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey);
  selfCopy = self;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v3, isa, *(&selfCopy->super.isa + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
}

- (NSArray)entries
{
  selfCopy = self;
  CPWPreferencesLRUCache.entries.getter();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)markEntryAsRecentlyUsed:(id)used
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
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