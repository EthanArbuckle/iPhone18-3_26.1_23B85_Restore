@interface FMCopyableLabel
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)copy:(id)a3;
- (void)showMenuWithSender:(id)a3;
@end

@implementation FMCopyableLabel

- (void)showMenuWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1001AD55C();
  swift_unknownObjectRelease();
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = [objc_opt_self() generalPasteboard];
  v7 = [(FMCopyableLabel *)self text];
  [v6 setString:v7];

  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController) hideMenuFromView:self];
  sub_10000D2C0(v8);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
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