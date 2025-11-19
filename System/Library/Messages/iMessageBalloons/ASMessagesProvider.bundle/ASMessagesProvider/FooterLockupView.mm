@interface FooterLockupView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider16FooterLockupView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider16FooterLockupView)initWithEffect:(id)a3;
- (void)clickActionHandlerTrampoline;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FooterLockupView

- (_TtC18ASMessagesProvider16FooterLockupView)initWithCoder:(id)a3
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
    v3 = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_6733AC(v7);

  return v9 & 1;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_672884();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = a3;
  [(FooterLockupView *)&v9 traitCollectionDidChange:v5];
  v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 traitCollection];
    sub_11D37C(v8);
  }
}

- (_TtC18ASMessagesProvider16FooterLockupView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end