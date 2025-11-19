@interface ArcadeSubscribePageView
- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithFrame:(CGRect)a3;
- (void)didTapDismiss:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArcadeSubscribePageView

- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_237848();
}

- (void)didTapDismiss:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_76A510();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock);
  if (v5)
  {

    v5(v6);
    sub_F704(v5);

    sub_BEB8(v6);
  }

  else
  {
    sub_BEB8(v6);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(ArcadeSubscribePageView *)&v6 traitCollectionDidChange:v4];
  [v5 setNeedsLayout];
}

- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end