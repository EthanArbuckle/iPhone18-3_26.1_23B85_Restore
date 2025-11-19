@interface VisitedPlacesCountsManager
- (NSArray)storeSubscriptionTypes;
- (void)dealloc;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)storeDidChange:(id)a3;
@end

@implementation VisitedPlacesCountsManager

- (void)dealloc
{
  type metadata accessor for MapsSyncStore();
  v3 = self;
  v4 = static MapsSyncStore.sharedStore.getter();
  v5 = v3;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for VisitedPlacesCountsManager();
  [(VisitedPlacesCountsManager *)&v6 dealloc];
}

- (NSArray)storeSubscriptionTypes
{
  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_storeSubscriptionTypes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)storeDidChange:(id)a3
{
  v3 = self;
  _s4Maps26VisitedPlacesCountsManagerC14storeDidChangeyySay0A4Sync0aI6ObjectCmGF_0();
}

@end