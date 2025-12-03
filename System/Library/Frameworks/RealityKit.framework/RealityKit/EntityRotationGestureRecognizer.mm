@interface EntityRotationGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (_TtC10RealityKit31EntityRotationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation EntityRotationGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  EntityRotationGestureRecognizer.touchesBegan(_:with:)(v6, eventCopy);
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = EntityRotationGestureRecognizer.canPrevent(_:)(recognizerCopy);

  return self & 1;
}

- (_TtC10RealityKit31EntityRotationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return EntityRotationGestureRecognizer.init(target:action:)(v6, action);
}

@end