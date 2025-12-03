@interface SceneSplitViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)preferredFocusEnvironments;
- (_TtC7Journal24SceneSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)forwardingTargetForSelector:(SEL)selector;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)startExport:(id)export;
- (void)startExportDebug:(id)debug;
- (void)startExportDemo:(id)demo;
- (void)startPrintDebug:(id)debug;
- (void)updateUserActivityState:(id)state;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation SceneSplitViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000250E0();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1000F24EC(&qword_100ADD440);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for SceneSplitViewController(0);
  v13.receiver = self;
  v13.super_class = v8;
  selfCopy = self;
  [(SceneSplitViewController *)&v13 viewIsAppearing:appearingCopy];
  v10 = type metadata accessor for SceneSplitViewController.State(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(v7, selfCopy + v11, &qword_100ADD440);
  swift_endAccess();
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  selfCopy = self;
  v7 = sub_1002ED9C0();

  return v7;
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  v4 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController;
  selfCopy = self;
  sub_10001B6F4();
  sub_10002CCF8(0);
  [*(&self->super.super.super.isa + v4) setClearsSelectionOnViewWillAppear:1];
}

- (void)updateUserActivityState:(id)state
{
  v4 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
  swift_beginAccess();
  sub_10000D6E8(self + v7, v6, type metadata accessor for SceneSplitViewController.ContentType);
  selfCopy = self;
  userActivity = [(SceneSplitViewController *)selfCopy userActivity];
  type metadata accessor for SceneSplitViewController(0);
  sub_10000C59C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  RestorableController.addRestorableState(_:to:)();

  sub_10000D628(v6, type metadata accessor for SceneSplitViewController.State);
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941D50;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000F24EC(&unk_100ADD5A0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)showViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  areAnimationsEnabled = [objc_opt_self() areAnimationsEnabled];
  if ([*(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed])
  {
    v11 = &OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController;
  }

  [*(&self->super.super.super.isa + *v11) pushViewController:controller animated:{areAnimationsEnabled, v12, v13}];

  sub_100004F84(&v12, &qword_100AD13D0);
}

- (_TtC7Journal24SceneSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  v7 = sub_1002EDB30();

  return v7;
}

- (void)splitViewControllerDidExpand:(id)expand
{
  v4 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController;
  selfCopy = self;
  sub_10001B6F4();
  sub_10002CCF8(0);
  [*(&self->super.super.super.isa + v4) setClearsSelectionOnViewWillAppear:0];
  v5 = *(&self->super.super.super.isa + v4);
  sub_10013F8E0();
  [v5 showRelevantTips];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  sub_1002E9C44(action, v11);
  v9 = v8;

  sub_100004F84(v11, &qword_100AD13D0);
  return v9 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1002E9798([commandCopy action]);
  if (v5)
  {
    v6 = v5;
    [v5 validateCommand:commandCopy];
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for SceneSplitViewController(0);
    [(SceneSplitViewController *)&v8 validateCommand:commandCopy];
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  sub_1002E9798(selector);
  v6 = v5;

  if (v6)
  {
    v8 = v6;
    sub_1000065A8(0, &qword_100AD4C80);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  return v6;
}

- (void)startExport:(id)export
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (export)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy3 = self;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy3;
  sub_1003E9628(0, 0, v7, &unk_10094D600, v13);

  sub_100004F84(v14, &qword_100AD13D0);
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  v3 = sub_1002EA64C();

  return v3;
}

- (void)startExportDemo:(id)demo
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (demo)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
  }

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy3 = self;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = 50;
  *(v13 + 40) = 0;
  *(v13 + 48) = selfCopy3;
  sub_1003E9628(0, 0, v7, &unk_100966548, v13);

  sub_100004F84(v14, &qword_100AD13D0);
}

- (void)startExportDebug:(id)debug
{
  if (debug)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v6 = qword_100B30290;
  sub_10073C800(v6, self, 0);

  sub_100004F84(v7, &qword_100AD13D0);
}

- (void)startPrintDebug:(id)debug
{
  if (debug)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  sub_10073D4E8(self, 0);

  sub_100004F84(v6, &qword_100AD13D0);
}

@end