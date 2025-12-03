@interface NonMovableTapGestureRecognizer
- (_TtC19VolumeLimitSettings30NonMovableTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation NonMovableTapGestureRecognizer

- (_TtC19VolumeLimitSettings30NonMovableTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_A434();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1450(v6, action);
}

@end