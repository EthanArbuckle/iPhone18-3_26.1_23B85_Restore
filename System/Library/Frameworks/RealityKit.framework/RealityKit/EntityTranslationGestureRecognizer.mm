@interface EntityTranslationGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (_TtC10RealityKit34EntityTranslationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation EntityTranslationGestureRecognizer

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  specialized EntityTranslationGestureRecognizer.touchesMoved(_:with:)();
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = EntityTranslationGestureRecognizer.canPrevent(_:)(v4);

  return self & 1;
}

- (_TtC10RealityKit34EntityTranslationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return EntityTranslationGestureRecognizer.init(target:action:)(v6, a4);
}

@end