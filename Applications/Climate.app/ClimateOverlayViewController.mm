@interface ClimateOverlayViewController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate28ClimateOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handleTapOutsidePopoverFrames;
- (void)requestQuickControl:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
    v6 = self;
    v7 = [(ClimateOverlayViewController *)&v10 preferredFocusEnvironments];
    sub_1000040E8(&unk_1001150F0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000040E8(&unk_1001150F0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateOverlayViewController(0);
  v4 = v7.receiver;
  [(ClimateOverlayViewController *)&v7 viewDidDisappear:v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong _unregisterSceneActionsHandlerArray:{v4, v7.receiver, v7.super_class}];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10001CBF8(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10001D07C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10001D510();
}

- (_TtC7Climate28ClimateOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTapOutsidePopoverFrames
{
  v2 = self;
  sub_10001F3E0();
}

- (void)requestQuickControl:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100024C9C(v4, v6);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100026CD0(v6, v7);
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 focusHeading];
  *(&v5->super.super.super.isa + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading) = v6;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for ClimateOverlayViewController(0);
  v7 = [(ClimateOverlayViewController *)&v9 shouldUpdateFocusInContext:v4];

  return v7;
}

@end