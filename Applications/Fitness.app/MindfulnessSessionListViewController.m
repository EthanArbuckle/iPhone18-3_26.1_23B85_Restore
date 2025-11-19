@interface MindfulnessSessionListViewController
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithAllMindfulnessSessionViewModels:(id)a3 dataProvider:(id)a4 fitnessAppContext:(id)a5 fiuiFormattingManager:(id)a6 healthStore:(id)a7 mindfulnessSessionFormattingManager:(id)a8;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation MindfulnessSessionListViewController

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithAllMindfulnessSessionViewModels:(id)a3 dataProvider:(id)a4 fitnessAppContext:(id)a5 fiuiFormattingManager:(id)a6 healthStore:(id)a7 mindfulnessSessionFormattingManager:(id)a8
{
  type metadata accessor for MindfulnessSessionViewModel();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10018BDD8(v13, a4, a5, a6, a7, a8);
  return result;
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
  v8 = sub_10018DA14(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (IndexPath.row.getter())
  {
    v8 = UITableViewAutomaticDimension;
  }

  else
  {
    [objc_opt_self() heightForMindfulnessSessions];
    v8 = v9;
  }

  (*(v5 + 8))(v7, v4);
  return v8;
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

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_1001922DC();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_10019247C(v9, a5);

  swift_unknownObjectRelease();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v10 deselectRowAtIndexPath:isa animated:1];

  sub_10018EA88();
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
  v12 = sub_10019279C(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end