@interface MindfulnessSessionListViewController
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithAllMindfulnessSessionViewModels:(id)models dataProvider:(id)provider fitnessAppContext:(id)context fiuiFormattingManager:(id)manager healthStore:(id)store mindfulnessSessionFormattingManager:(id)formattingManager;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithCoder:(id)coder;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation MindfulnessSessionListViewController

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithAllMindfulnessSessionViewModels:(id)models dataProvider:(id)provider fitnessAppContext:(id)context fiuiFormattingManager:(id)manager healthStore:(id)store mindfulnessSessionFormattingManager:(id)formattingManager
{
  type metadata accessor for MindfulnessSessionViewModel();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10018BDD8(v13, provider, context, manager, store, formattingManager);
  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([viewCopy numberOfRowsInSection:section] < 1)
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10018DA14(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  numberOfSections = [view numberOfSections];
  if (__OFSUB__(numberOfSections, 1))
  {
    __break(1u);
  }

  else
  {
    result = 11.0;
    if (numberOfSections - 1 == section)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1001922DC();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10019247C(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [viewCopy deselectRowAtIndexPath:isa animated:1];

  sub_10018EA88();
  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10019279C(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp36MindfulnessSessionListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end