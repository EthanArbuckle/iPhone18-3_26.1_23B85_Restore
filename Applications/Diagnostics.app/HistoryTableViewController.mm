@interface HistoryTableViewController
- (_TtC11Diagnostics26HistoryTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)donePressed;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HistoryTableViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001465C0(a3);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1001466E4(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)donePressed
{
  v2 = sub_100066608();
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (_TtC11Diagnostics26HistoryTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end