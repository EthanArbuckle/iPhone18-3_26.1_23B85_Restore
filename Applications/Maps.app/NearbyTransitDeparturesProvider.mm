@interface NearbyTransitDeparturesProvider
- (NSArray)storeSubscriptionTypes;
- (id)ticketForTransitMapItemUpdater:(id)updater;
- (void)setStoreSubscriptionTypes:(id)types;
- (void)storeDidChange:(id)change;
- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date;
- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error;
- (void)transitMapItemUpdater:willUpdateMapItem:;
@end

@implementation NearbyTransitDeparturesProvider

- (NSArray)storeSubscriptionTypes
{

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)types
{
  sub_1000CE6B8(&qword_1019083F0);
  *(self + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_storeSubscriptionTypes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (id)ticketForTransitMapItemUpdater:(id)updater
{
  updaterCopy = updater;
  selfCopy = self;
  v6 = sub_100160AB8();

  return v6;
}

- (void)transitMapItemUpdater:(id)updater updatedMapItem:(id)item error:(id)error
{
  updaterCopy = updater;
  itemCopy = item;
  selfCopy = self;
  errorCopy = error;
  sub_100160D10(itemCopy, error);
}

- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  updaterCopy = updater;
  selfCopy = self;
  sub_10016108C(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)storeDidChange:(id)change
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_10020AAE4(0, 0, v5, &unk_1011E9F20, v8);
}

- (void)transitMapItemUpdater:willUpdateMapItem:
{
  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_10195FFB8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Will update mapItem", v2, 2u);
  }
}

@end