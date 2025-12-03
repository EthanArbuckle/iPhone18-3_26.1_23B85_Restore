@interface CatchAllPassiveGestureRecognizer
- (_TtC5Music32CatchAllPassiveGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation CatchAllPassiveGestureRecognizer

- (_TtC5Music32CatchAllPassiveGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

  return sub_100658FA4(v6, action);
}

@end