@interface ClimateOverlayViewController
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate28ClimateOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handleTapOutsidePopoverFrames;
- (void)requestQuickControl:(id)control;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ClimateOverlayViewController

- (NSArray)preferredFocusEnvironments
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000040E8(&unk_100114770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000D5DA0;
    *(v5 + 32) = v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = type metadata accessor for ClimateOverlayViewController(0);
    selfCopy = self;
    preferredFocusEnvironments = [(ClimateOverlayViewController *)&v10 preferredFocusEnvironments];
    sub_1000040E8(&unk_1001150F0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000040E8(&unk_1001150F0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateOverlayViewController(0);
  v4 = v7.receiver;
  [(ClimateOverlayViewController *)&v7 viewDidDisappear:disappearCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong _unregisterSceneActionsHandlerArray:{v4, v7.receiver, v7.super_class}];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001CBF8(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10001D07C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001D510();
}

- (_TtC7Climate28ClimateOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTapOutsidePopoverFrames
{
  selfCopy = self;
  sub_10001F3E0();
}

- (void)requestQuickControl:(id)control
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100024C9C(v4, v6);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100026CD0(contextCopy, coordinatorCopy);
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  focusHeading = [contextCopy focusHeading];
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading) = focusHeading;
  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for ClimateOverlayViewController(0);
  v7 = [(ClimateOverlayViewController *)&v9 shouldUpdateFocusInContext:contextCopy];

  return v7;
}

@end