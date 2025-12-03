@interface UILargeContentViewerInteractionBridge
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point;
- (void)enabledStatusDidChange;
- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point;
@end

@implementation UILargeContentViewerInteractionBridge

- (void)enabledStatusDidChange
{
  selfCopy = self;
  UILargeContentViewerInteractionBridge.enabledStatusDidChange()();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = UILargeContentViewerInteractionBridge.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = UILargeContentViewerInteractionBridge.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    type metadata accessor for UIKitGestureRecognizer();
    v13 = swift_dynamicCastClass() != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:didEndOn:at:)(item);

  swift_unknownObjectRelease();
}

- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:itemAt:)(x, y);

  return v9;
}

@end