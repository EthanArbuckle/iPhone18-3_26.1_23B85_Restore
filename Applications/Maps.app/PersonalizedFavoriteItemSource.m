@interface PersonalizedFavoriteItemSource
- (NSArray)allItems;
- (NSArray)storeSubscriptionTypes;
- (_TtC4Maps30PersonalizedFavoriteItemSource)init;
- (_TtC4Maps30PersonalizedFavoriteItemSource)initWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4;
- (void)dealloc;
- (void)mapViewRegionWillChange:(void *)a3;
- (void)refreshItemsWithDataChanged:(BOOL)a3;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation PersonalizedFavoriteItemSource

- (NSArray)allItems
{
  v2 = self;
  sub_1000CE6B8(&qword_101917C40);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000CE6B8(&unk_101917C48);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)mapViewRegionWillChange:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_10004A4E0(v4);
}

- (NSArray)storeSubscriptionTypes
{

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  *(self + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_storeSubscriptionTypes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MapsSyncStore();
  v4 = self;
  v5 = static MapsSyncStore.sharedStore.getter();
  v6 = v4;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(PersonalizedFavoriteItemSource *)&v7 dealloc];
}

- (void)storeDidChange:(id)a3
{
  v3 = self;
  sub_10004A634(1);
}

- (void)refreshItemsWithDataChanged:(BOOL)a3
{
  v4 = self;
  sub_10004A634(a3);
}

- (_TtC4Maps30PersonalizedFavoriteItemSource)initWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps30PersonalizedFavoriteItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end