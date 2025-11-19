@interface UILargeContentViewerInteractionBridge
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4;
- (void)enabledStatusDidChange;
- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5;
@end

@implementation UILargeContentViewerInteractionBridge

- (void)enabledStatusDidChange
{
  v2 = self;
  UILargeContentViewerInteractionBridge.enabledStatusDidChange()();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UILargeContentViewerInteractionBridge.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = UILargeContentViewerInteractionBridge.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v9 = a3;
  v10 = a4;
  v11 = self;
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

- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:didEndOn:at:)(a4);

  swift_unknownObjectRelease();
}

- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:itemAt:)(x, y);

  return v9;
}

@end