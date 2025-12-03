@interface HistoryDayViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC10FitnessApp24HistoryDayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)share;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation HistoryDayViewController

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HistoryDayViewController();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(HistoryDayViewController *)&v6 willMoveToParentViewController:controllerCopy];
  [*&v5[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView] _scrollToTopHidingTableHeader:{0, v6.receiver, v6.super_class}];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10050CD54();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for HistoryDayViewController();
  v2 = v14.receiver;
  [(HistoryDayViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10050E958(appear);
}

- (void)share
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
  {
    selfCopy = self;
    sub_100511674();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_shareWhenDataLoads) = 1;
  }
}

- (_TtC10FitnessApp24HistoryDayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_100512C24();

  return v6;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_100512DB0(operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005138D0();
  swift_unknownObjectRelease();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100687C2C(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100684E58(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100686C60(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_100687F10(section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10068803C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = IndexPath.section.getter();
  v9 = sub_1001E5AFC(v8);
  (*(v5 + 8))(v7, v4);
  return (v9 - 7) < 3u;
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
  sub_100687528(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end