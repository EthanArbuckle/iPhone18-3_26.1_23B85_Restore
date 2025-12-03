@interface AppSelectionProximityCardViewController
- (_TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController)initWithContentView:(id)view;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)startGuestMode;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AppSelectionProximityCardViewController

- (void)startGuestMode
{
  selfCopy = self;
  sub_100012BF0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100012DC8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100013484();
}

- (_TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_100014E78(viewCopy);

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [viewCopy deselectRowAtIndexPath:isa animated:1];

  sub_100013FD4(v10);
  (*(v7 + 8))(v10, v6);
}

@end