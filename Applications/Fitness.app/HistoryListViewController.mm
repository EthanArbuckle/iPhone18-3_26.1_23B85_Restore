@interface HistoryListViewController
- (_TtC10FitnessApp25HistoryListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp25HistoryListViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)presentManualLoggingViewController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation HistoryListViewController

- (void)presentManualLoggingViewController
{
  selfCopy = self;
  sub_10059D0EC();
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
  sub_10059F1D0(viewCopy, section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1005A2078();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_10059DF18();

  (*(v6 + 8))(v8, v5);

  return v10;
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
  v13 = sub_1005A2398();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005A25CC(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10059FBBC(viewCopy);

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
  v12 = sub_1005A28EC(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(self + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems);
  if (*(v4 + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = *(*(v4 + 8 * section + 32) + 16);
  if (*(self + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9) << 8 == 512)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

- (_TtC10FitnessApp25HistoryListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp25HistoryListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end