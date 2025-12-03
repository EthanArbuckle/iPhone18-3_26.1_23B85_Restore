@interface CarNavigationShareTripViewController
- (MSPSharedTripSharingIdentity)sharingIdentity;
- (NSArray)searchResults;
- (NSDictionary)contactByHandle;
- (NSString)searchQuery;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)delegate dataSource:(id)source sharingIdentity:(id)identity;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)delegate dataSource:(id)source sharingIdentity:(id)identity searchResults:(id)results searchQuery:(id)query;
- (_TtC4Maps36CarNavigationShareTripViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps44CarNavigationShareTripViewControllerDelegate_)delegate;
- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles;
- (void)commitPendingShares;
- (void)didScroll;
- (void)didSelectUserInputWithAction:(unint64_t)action interactionModel:(unint64_t)model;
- (void)setContactByHandle:(id)handle;
- (void)setSearchQuery:(id)query;
- (void)setSearchResults:(id)results;
- (void)setSharingIdentity:(id)identity;
- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display;
- (void)updateViewModels;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setSharingIdentity:(id)identity
{
  swift_getKeyPath();
  swift_getKeyPath();
  identityCopy = identity;
  selfCopy = self;
  static Published.subscript.setter();
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)delegate dataSource:(id)source sharingIdentity:(id)identity
{
  swift_unknownObjectRetain();
  sourceCopy = source;
  identityCopy = identity;
  v10 = sub_10027D08C(delegate, sourceCopy, identity);
  swift_unknownObjectRelease();

  return v10;
}

- (NSArray)searchResults
{
  sub_100014C84(0, &unk_101911D50);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setSearchResults:(id)results
{
  sub_100014C84(0, &unk_101911D50);
  *(self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchResults) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (NSString)searchQuery
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSearchQuery:(id)query
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_searchQuery);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithDelegate:(id)delegate dataSource:(id)source sharingIdentity:(id)identity searchResults:(id)results searchQuery:(id)query
{
  sub_100014C84(0, &unk_101911D50);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_unknownObjectRetain();
  sourceCopy = source;
  identityCopy = identity;
  return sub_100277D50(delegate, sourceCopy, identity, v10, v11, v13);
}

- (NSDictionary)contactByHandle
{
  sub_100014C84(0, &unk_101911D50);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setContactByHandle:(id)handle
{
  sub_100014C84(0, &unk_101911D50);
  *(self + OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_contactByHandle) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarNavigationShareTripViewController();
  v4 = v7.receiver;
  [(CarNavigationShareTripViewController *)&v7 viewWillAppear:appearCopy];
  sub_100278BF4();
  [*&v4[OBJC_IVAR____TtC4Maps36CarNavigationShareTripViewController_dataSource] setDelegate:{v4, v7.receiver, v7.super_class}];
  sharedFetcher = [objc_opt_self() sharedFetcher];
  if (sharedFetcher)
  {
    v6 = sharedFetcher;
    [sharedFetcher registerObserver:v4];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarNavigationShareTripViewController();
  v4 = v7.receiver;
  [(CarNavigationShareTripViewController *)&v7 viewWillDisappear:disappearCopy];
  sharedFetcher = [objc_opt_self() sharedFetcher];
  if (sharedFetcher)
  {
    v6 = sharedFetcher;
    [sharedFetcher unregisterObserver:v4];
  }
}

- (void)commitPendingShares
{
  selfCopy = self;
  sub_100278934();
}

- (void)updateViewModels
{
  selfCopy = self;
  sub_100278BF4();
}

- (void)didSelectUserInputWithAction:(unint64_t)action interactionModel:(unint64_t)model
{
  selfCopy = self;
  sub_100279EE0(action, model);
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

- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display
{
  selfCopy = self;
  sub_100278BF4();
}

- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles
{
  selfCopy = self;
  sub_100278BF4();
}

- (_TtC4Maps36CarNavigationShareTripViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end