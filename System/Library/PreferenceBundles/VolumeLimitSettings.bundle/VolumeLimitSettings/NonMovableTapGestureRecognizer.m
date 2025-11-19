@interface NonMovableTapGestureRecognizer
- (_TtC19VolumeLimitSettings30NonMovableTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation NonMovableTapGestureRecognizer

- (_TtC19VolumeLimitSettings30NonMovableTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_A434();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1450(v6, a4);
}

@end