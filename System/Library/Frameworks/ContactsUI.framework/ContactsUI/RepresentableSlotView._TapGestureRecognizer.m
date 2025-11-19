@interface RepresentableSlotView._TapGestureRecognizer
- (_TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation RepresentableSlotView._TapGestureRecognizer

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_199B23B64();
  sub_199B23B1C(&qword_1EAF74CC8, sub_199B23B64);
  v6 = sub_199DFA24C();
  v7 = a4;
  v8 = self;
  sub_199B212B8(v6, v7);
}

- (_TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end