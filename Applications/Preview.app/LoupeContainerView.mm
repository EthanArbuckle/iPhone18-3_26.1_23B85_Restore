@interface LoupeContainerView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC7Preview18LoupeContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
- (void)handlePan:(id)pan;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
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
  selfCopy = self;
  [(LoupeContainerView *)&v4 layoutMarginsDidChange];
  [(LoupeContainerView *)selfCopy setNeedsLayout:v4.receiver];
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
  selfCopy = self;
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

  selfCopy = self;
  sub_100035A00();
}

- (void)touchesBegan:(id)began withEvent:(id)event
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
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for LoupeContainerView();
  [(LoupeContainerView *)&v9 touchesBegan:isa withEvent:eventCopy];

  if ([(LoupeContainerView *)selfCopy isUserInteractionEnabled])
  {
    sub_100037F40(1u, 0.0, 0.0);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
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
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for LoupeContainerView();
  [(LoupeContainerView *)&v9 touchesEnded:isa withEvent:eventCopy];

  if ([(LoupeContainerView *)selfCopy isUserInteractionEnabled]&& *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase) != 2)
  {
    sub_100039008(0.0, 0.0);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  eventCopy = event;
  selfCopy = self;
  v10 = sub_10003A308(x, y);

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  beginCopy = begin;
  selfCopy = self;
  v7 = sub_100037A58(beginCopy);

  return v7 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
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
    recognizerCopy = recognizer;
    gestureRecognizerCopy = gestureRecognizer;
    selfCopy = self;
    v11 = v7;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [gestureRecognizerCopy setState:5];
    }
  }

  else
  {
  }

  return 0;
}

- (void)handlePan:(id)pan
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  panCopy = pan;
  selfCopy = self;
  sub_100037D28(panCopy);
}

- (_TtC7Preview18LoupeContainerView)initWithFrame:(CGRect)frame
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