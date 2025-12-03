@interface Choice
- (_TtC13AskToMessages6Choice)init;
- (void)tappedWithSender:(id)sender;
@end

@implementation Choice

- (void)tappedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_579CC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *(&self->super.isa + OBJC_IVAR____TtC13AskToMessages6Choice_action);
  if (v6)
  {
    v7 = *&self->id[OBJC_IVAR____TtC13AskToMessages6Choice_action];
    v6(self);
  }

  sub_D1A8(v8);
}

- (_TtC13AskToMessages6Choice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end