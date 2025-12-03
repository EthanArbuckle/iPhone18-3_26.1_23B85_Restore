@interface FMCopyableLabel
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)copy:(id)copy;
- (void)showMenuWithSender:(id)sender;
@end

@implementation FMCopyableLabel

- (void)showMenuWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001AD55C();
  swift_unknownObjectRelease();
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  generalPasteboard = [objc_opt_self() generalPasteboard];
  text = [(FMCopyableLabel *)self text];
  [generalPasteboard setString:text];

  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController) hideMenuFromView:self];
  sub_10000D2C0(v8);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = static Selector.== infix(_:_:)();
  sub_10000D2C0(v6);
  return v4 & 1;
}

@end