@interface ConsentNoticeTableViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC11Diagnostics32ConsentNoticeTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics32ConsentNoticeTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ConsentNoticeTableViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ConsentNoticeTableViewController();
  v4 = v6.receiver;
  [(ConsentNoticeViewController *)&v6 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView];
  [v5 invalidateIntrinsicContentSize];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return UITableViewAutomaticDimension;
}

- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_100102D00();
  (*(v5 + 8))(v7, v4);

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v9 deselectRowAtIndexPath:isa animated:1];

  (*(v6 + 8))(v8, v5);
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (_TtC11Diagnostics32ConsentNoticeTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_100102894(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_100102894(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC11Diagnostics32ConsentNoticeTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_100102AB0(v9, v11, a4, v13, a5, a6);
}

@end