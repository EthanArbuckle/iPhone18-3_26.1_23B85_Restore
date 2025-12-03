@interface LibraryItemsCountManager
+ (_TtC4Maps24LibraryItemsCountManager)sharedManager;
- (NSArray)storeSubscriptionTypes;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)setLastFetchedCounts:(id)counts;
- (void)setNeedsRefresh;
- (void)setStoreSubscriptionTypes:(id)types;
- (void)storeDidChange:(id)change;
- (void)visitedPlacesCountsManager:(id)manager didUpdateCount:(int64_t)count;
@end

@implementation LibraryItemsCountManager

+ (_TtC4Maps24LibraryItemsCountManager)sharedManager
{
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  v3 = static LibraryItemsCountManager.shared;

  return v3;
}

- (void)setLastFetchedCounts:(id)counts
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
  *(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts) = counts;
  countsCopy = counts;
}

- (void)setNeedsRefresh
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  if ((*(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) & 1) == 0)
  {
    *(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) = 1;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = self;
    selfCopy = self;
    sub_10020AAE4(0, 0, v5, &unk_10120A670, v7);
  }
}

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if ((*(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) & 1) == 0)
  {
    *(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) = 1;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = self;
    selfCopy = self;
    sub_10020AAE4(0, 0, v7, &unk_10120A668, v9);
  }
}

- (NSArray)storeSubscriptionTypes
{
  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)types
{
  sub_1000CE6B8(&qword_1019083F0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_storeSubscriptionTypes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)storeDidChange:(id)change
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if ((*(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) & 1) == 0)
  {
    *(self + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) = 1;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = self;
    selfCopy = self;
    sub_10020AAE4(0, 0, v6, &unk_10120A658, v8);
  }
}

- (void)visitedPlacesCountsManager:(id)manager didUpdateCount:(int64_t)count
{
  managerCopy = manager;
  selfCopy = self;
  sub_1004A93F4(count);
}

@end