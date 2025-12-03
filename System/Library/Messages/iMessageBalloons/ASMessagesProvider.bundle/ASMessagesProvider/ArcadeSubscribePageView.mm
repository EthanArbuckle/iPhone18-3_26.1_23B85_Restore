@interface ArcadeSubscribePageView
- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithFrame:(CGRect)frame;
- (void)didTapDismiss:(id)dismiss;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArcadeSubscribePageView

- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_237848();
}

- (void)didTapDismiss:(id)dismiss
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_76A510();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock);
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

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(ArcadeSubscribePageView *)&v6 traitCollectionDidChange:changeCopy];
  [v5 setNeedsLayout];
}

- (_TtC18ASMessagesProvider23ArcadeSubscribePageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end