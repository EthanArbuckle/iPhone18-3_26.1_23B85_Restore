@interface GEOAPSessionSpecificHistoricalDebugController
- (_TtC4Maps45GEOAPSessionSpecificHistoricalDebugController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation GEOAPSessionSpecificHistoricalDebugController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10052CC10();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  tableView = [(GEOAPSessionSpecificHistoricalDebugController *)selfCopy tableView];
  if (tableView)
  {
    v11 = tableView;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 deselectRowAtIndexPath:isa animated:1];

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps45GEOAPSessionSpecificHistoricalDebugController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end