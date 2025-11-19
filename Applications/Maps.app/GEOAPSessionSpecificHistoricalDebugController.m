@interface GEOAPSessionSpecificHistoricalDebugController
- (_TtC4Maps45GEOAPSessionSpecificHistoricalDebugController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation GEOAPSessionSpecificHistoricalDebugController

- (void)viewDidLoad
{
  v2 = self;
  sub_10052CC10();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = [(GEOAPSessionSpecificHistoricalDebugController *)v9 tableView];
  if (v10)
  {
    v11 = v10;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 deselectRowAtIndexPath:isa animated:1];

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps45GEOAPSessionSpecificHistoricalDebugController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end