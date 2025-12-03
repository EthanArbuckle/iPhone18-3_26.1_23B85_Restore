@interface FooterLockupView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider16FooterLockupView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider16FooterLockupView)initWithEffect:(id)effect;
- (void)clickActionHandlerTrampoline;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FooterLockupView

- (_TtC18ASMessagesProvider16FooterLockupView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)clickActionHandlerTrampoline
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_6733AC(touchCopy);

  return v9 & 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_67137C(width, height);
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
  sub_672884();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(FooterLockupView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  if (v6)
  {
    v7 = v6;
    traitCollection = [v4 traitCollection];
    sub_11D37C(traitCollection);
  }
}

- (_TtC18ASMessagesProvider16FooterLockupView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end