@interface HistoryListViewController
- (_TtC10FitnessApp25HistoryListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp25HistoryListViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)presentManualLoggingViewController;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation HistoryListViewController

- (void)presentManualLoggingViewController
{
  v2 = self;
  sub_10059D0EC();
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if ([v5 numberOfRowsInSection:a4] < 1)
  {
    v7 = 0.0;
  }

  else
  {
    [objc_opt_self() preferredHeight];
    v7 = v6;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10059F1D0(v6, a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1005A2078();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [a3 numberOfSections];
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    result = 11.0;
    if (v5 - 1 == a4)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_10059DF18();

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_1005A2398();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1005A25CC(v9, a5);

  swift_unknownObjectRelease();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10059FBBC(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1005A28EC(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(self + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems);
  if (*(v4 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = *(*(v4 + 8 * a4 + 32) + 16);
  if (*(self + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9) << 8 == 512)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

- (_TtC10FitnessApp25HistoryListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp25HistoryListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end