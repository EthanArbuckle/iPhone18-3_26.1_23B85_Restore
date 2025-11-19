@interface CarNavigationShareTripViewController
- (MSPSharedTripSharingIdentity)sharingIdentity;
- (NSArray)searchResults;
- (NSDictionary)contactByHandle;
- (NSString)searchQuery;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)a3 dataSource:(id)a4 sharingIdentity:(id)a5;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)a3 dataSource:(id)a4 sharingIdentity:(id)a5 searchResults:(id)a6 searchQuery:(id)a7;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps44CarNavigationShareTripViewControllerDelegate_)delegate;
- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4;
- (void)commitPendingShares;
- (void)didScroll;
- (void)didSelectUserInputWithAction:(unint64_t)a3 interactionModel:(unint64_t)a4;
- (void)setContactByHandle:(id)a3;
- (void)setSearchQuery:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)setSharingIdentity:(id)a3;
- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)a3;
- (void)updateViewModels;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarNavigationShareTripViewController

- (_TtP4Maps44CarNavigationShareTripViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (MSPSharedTripSharingIdentity)sharingIdentity
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setSharingIdentity:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  static Published.subscript.setter();
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)a3 dataSource:(id)a4 sharingIdentity:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  v10 = sub_10027D08C(a3, v8, a5);
  swift_unknownObjectRelease();

  return v10;
}

- (NSArray)searchResults
{
  sub_100014C84(0, &unk_101911D50);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setSearchResults:(id)a3
{
  sub_100014C84(0, &unk_101911D50);
  *(self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (NSString)searchQuery
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSearchQuery:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)a3 dataSource:(id)a4 sharingIdentity:(id)a5 searchResults:(id)a6 searchQuery:(id)a7
{
  sub_100014C84(0, &unk_101911D50);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_unknownObjectRetain();
  v14 = a4;
  v15 = a5;
  return sub_100277D50(a3, v14, a5, v10, v11, v13);
}

- (NSDictionary)contactByHandle
{
  sub_100014C84(0, &unk_101911D50);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setContactByHandle:(id)a3
{
  sub_100014C84(0, &unk_101911D50);
  *(self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarNavigationShareTripViewController();
  v4 = v7.receiver;
  [(CarNavigationShareTripViewController *)&v7 viewWillAppear:v3];
  sub_100278BF4();
  [*&v4[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_dataSource] setDelegate:{v4, v7.receiver, v7.super_class}];
  v5 = [objc_opt_self() sharedFetcher];
  if (v5)
  {
    v6 = v5;
    [v5 registerObserver:v4];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarNavigationShareTripViewController();
  v4 = v7.receiver;
  [(CarNavigationShareTripViewController *)&v7 viewWillDisappear:v3];
  v5 = [objc_opt_self() sharedFetcher];
  if (v5)
  {
    v6 = v5;
    [v5 unregisterObserver:v4];
  }
}

- (void)commitPendingShares
{
  v2 = self;
  sub_100278934();
}

- (void)updateViewModels
{
  v2 = self;
  sub_100278BF4();
}

- (void)didSelectUserInputWithAction:(unint64_t)a3 interactionModel:(unint64_t)a4
{
  v6 = self;
  sub_100279EE0(a3, a4);
}

- (void)didScroll
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong carNavigationShareTripViewControllerDidScroll:self];

    swift_unknownObjectRelease();
  }
}

- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)a3
{
  v3 = self;
  sub_100278BF4();
}

- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4
{
  v4 = self;
  sub_100278BF4();
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end