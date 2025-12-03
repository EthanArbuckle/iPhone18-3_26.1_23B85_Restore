@interface ArcadeSubscribePageView
- (_TtC8AppStore23ArcadeSubscribePageView)initWithCoder:(id)coder;
- (_TtC8AppStore23ArcadeSubscribePageView)initWithFrame:(CGRect)frame;
- (void)didTapDismiss:(id)dismiss;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArcadeSubscribePageView

- (_TtC8AppStore23ArcadeSubscribePageView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100488CB4();
}

- (void)didTapDismiss:(id)dismiss
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock);
  if (v5)
  {

    v5(v6);
    sub_10001F63C(v5);

    sub_100007000(v6);
  }

  else
  {
    sub_100007000(v6);
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

- (_TtC8AppStore23ArcadeSubscribePageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end