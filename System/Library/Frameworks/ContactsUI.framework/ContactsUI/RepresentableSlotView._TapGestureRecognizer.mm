@interface RepresentableSlotView._TapGestureRecognizer
- (_TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation RepresentableSlotView._TapGestureRecognizer

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_199B23B64();
  sub_199B23B1C(&qword_1EAF74CC8, sub_199B23B64);
  v6 = sub_199DFA24C();
  eventCopy = event;
  selfCopy = self;
  sub_199B212B8(v6, eventCopy);
}

- (_TtCV10ContactsUI21RepresentableSlotView21_TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
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