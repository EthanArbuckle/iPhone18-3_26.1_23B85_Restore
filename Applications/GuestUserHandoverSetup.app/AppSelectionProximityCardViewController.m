@interface AppSelectionProximityCardViewController
- (_TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController)initWithContentView:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)startGuestMode;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AppSelectionProximityCardViewController

- (void)startGuestMode
{
  v2 = self;
  sub_100012BF0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100012DC8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100013484();
}

- (_TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_100014E78(v5);

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v11 deselectRowAtIndexPath:isa animated:1];

  sub_100013FD4(v10);
  (*(v7 + 8))(v10, v6);
}

@end