@interface PersonalizedFavoriteItemSource
- (NSArray)allItems;
- (NSArray)storeSubscriptionTypes;
- (_TtC4Maps30PersonalizedFavoriteItemSource)init;
- (_TtC4Maps30PersonalizedFavoriteItemSource)initWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype;
- (void)dealloc;
- (void)mapViewRegionWillChange:(void *)change;
- (void)refreshItemsWithDataChanged:(BOOL)changed;
- (void)setStoreSubscriptionTypes:(id)types;
- (void)storeDidChange:(id)change;
@end

@implementation PersonalizedFavoriteItemSource

- (NSArray)allItems
{
  selfCopy = self;
  sub_1000CE6B8(&qword_101917C40);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000CE6B8(&unk_101917C48);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)mapViewRegionWillChange:(void *)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10004A4E0(changeCopy);
}

- (NSArray)storeSubscriptionTypes
{

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)types
{
  sub_1000CE6B8(&qword_1019083F0);
  *(self + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_storeSubscriptionTypes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MapsSyncStore();
  selfCopy = self;
  v5 = static MapsSyncStore.sharedStore.getter();
  v6 = selfCopy;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(PersonalizedFavoriteItemSource *)&v7 dealloc];
}

- (void)storeDidChange:(id)change
{
  selfCopy = self;
  sub_10004A634(1);
}

- (void)refreshItemsWithDataChanged:(BOOL)changed
{
  selfCopy = self;
  sub_10004A634(changed);
}

- (_TtC4Maps30PersonalizedFavoriteItemSource)initWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype
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