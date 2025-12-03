@interface EntityScaleGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (_TtC10RealityKit28EntityScaleGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation EntityScaleGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  EntityScaleGestureRecognizer.touchesBegan(_:with:)(v6, eventCopy);
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = EntityScaleGestureRecognizer.canPrevent(_:)(recognizerCopy);

  return self & 1;
}

- (_TtC10RealityKit28EntityScaleGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

  return EntityScaleGestureRecognizer.init(target:action:)(v6, action);
}

@end