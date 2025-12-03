@interface EntityGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (_TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate)init;
@end

@implementation EntityGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = EntityGestureRecognizerDelegate.gestureRecognizer(_:shouldRequireFailureOf:)(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (_TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end