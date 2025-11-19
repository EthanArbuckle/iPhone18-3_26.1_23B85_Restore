@interface LoupeContainerView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC7Preview18LoupeContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToWindow;
- (void)handlePan:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation LoupeContainerView

- (void)layoutMarginsDidChange
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for LoupeContainerView();
  v3 = self;
  [(LoupeContainerView *)&v4 layoutMarginsDidChange];
  [(LoupeContainerView *)v3 setNeedsLayout:v4.receiver];
}

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for LoupeContainerView();
  v3 = self;
  [(LoupeContainerView *)&v4 layoutSubviews];
  sub_1000362B4();
}

- (void)didMoveToWindow
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_100035A00();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000085D8(0, &qword_100208020);
  sub_10003A39C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9.receiver = v7;
  v9.super_class = type metadata accessor for LoupeContainerView();
  [(LoupeContainerView *)&v9 touchesBegan:isa withEvent:v6];

  if ([(LoupeContainerView *)v7 isUserInteractionEnabled])
  {
    sub_100037F40(1u, 0.0, 0.0);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000085D8(0, &qword_100208020);
  sub_10003A39C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9.receiver = v7;
  v9.super_class = type metadata accessor for LoupeContainerView();
  [(LoupeContainerView *)&v9 touchesEnded:isa withEvent:v6];

  if ([(LoupeContainerView *)v7 isUserInteractionEnabled]&& *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase) != 2)
  {
    sub_100039008(0.0, 0.0);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a4;
  v9 = self;
  v10 = sub_10003A308(x, y);

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_100037A58(v5);

  return v7 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePanGesture);
  if (v7)
  {
    sub_1000085D8(0, &qword_100207008);
    v8 = a3;
    v9 = a4;
    v10 = self;
    v11 = v7;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [v9 setState:5];
    }
  }

  else
  {
  }

  return 0;
}

- (void)handlePan:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_100037D28(v5);
}

- (_TtC7Preview18LoupeContainerView)initWithFrame:(CGRect)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end