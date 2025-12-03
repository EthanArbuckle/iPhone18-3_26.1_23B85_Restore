@interface HistoryTableViewController
- (_TtC11Diagnostics26HistoryTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)donePressed;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HistoryTableViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001465C0(disappear);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001466E4(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)donePressed
{
  v2 = sub_100066608();
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (_TtC11Diagnostics26HistoryTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end