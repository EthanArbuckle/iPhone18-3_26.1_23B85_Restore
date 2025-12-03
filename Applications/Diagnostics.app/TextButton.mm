@interface TextButton
- (_TtC11Diagnostics10TextButton)initWithCoder:(id)coder;
- (_TtC11Diagnostics10TextButton)initWithFrame:(CGRect)frame;
- (void)buttonActionWithSender:(id)sender;
@end

@implementation TextButton

- (_TtC11Diagnostics10TextButton)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buttonActionWithSender:(id)sender
{
  v4 = *&self->action[OBJC_IVAR____TtC11Diagnostics10TextButton_action + 16];
  senderCopy = sender;
  selfCopy = self;
  v4(senderCopy);
}

- (_TtC11Diagnostics10TextButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end