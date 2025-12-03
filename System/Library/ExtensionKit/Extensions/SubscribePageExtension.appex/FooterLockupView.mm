@interface FooterLockupView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension16FooterLockupView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension16FooterLockupView)initWithEffect:(id)effect;
- (void)clickActionHandlerTrampoline;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FooterLockupView

- (_TtC22SubscribePageExtension16FooterLockupView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_tapGestureRecognizer) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)clickActionHandlerTrampoline
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100668404(touchCopy);

  return v9 & 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1006663D4(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006678DC();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(FooterLockupView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
  if (v6)
  {
    v7 = v6;
    traitCollection = [v4 traitCollection];
    sub_1001F4D8C(traitCollection);
  }
}

- (_TtC22SubscribePageExtension16FooterLockupView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end