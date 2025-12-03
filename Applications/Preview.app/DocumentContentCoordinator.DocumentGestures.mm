@interface DocumentContentCoordinator.DocumentGestures
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
@end

@implementation DocumentContentCoordinator.DocumentGestures

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v10 = sub_10001515C(recognizerCopy, touchCopy);

  return v10 & 1;
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
  v7 = sub_10001530C(beginCopy);

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

  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v10 = sub_10001694C(gestureRecognizerCopy);

  return v10;
}

@end