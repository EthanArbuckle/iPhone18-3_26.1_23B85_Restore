@interface EntityTranslationGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (_TtC10RealityKit34EntityTranslationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation EntityTranslationGestureRecognizer

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  specialized EntityTranslationGestureRecognizer.touchesMoved(_:with:)();
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = EntityTranslationGestureRecognizer.canPrevent(_:)(recognizerCopy);

  return self & 1;
}

- (_TtC10RealityKit34EntityTranslationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

  return EntityTranslationGestureRecognizer.init(target:action:)(v6, action);
}

@end