@interface ArcadeSubscribePageView
- (_TtC8AppStore23ArcadeSubscribePageView)initWithCoder:(id)a3;
- (_TtC8AppStore23ArcadeSubscribePageView)initWithFrame:(CGRect)a3;
- (void)didTapDismiss:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArcadeSubscribePageView

- (_TtC8AppStore23ArcadeSubscribePageView)initWithCoder:(id)a3
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
  v2 = self;
  sub_100488CB4();
}

- (void)didTapDismiss:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock);
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

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(ArcadeSubscribePageView *)&v6 traitCollectionDidChange:v4];
  [v5 setNeedsLayout];
}

- (_TtC8AppStore23ArcadeSubscribePageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end