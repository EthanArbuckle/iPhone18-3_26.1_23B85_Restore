@interface ArcadeHeaderButtonContainer
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension27ArcadeHeaderButtonContainer)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension27ArcadeHeaderButtonContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateAccountButtonVisibility;
@end

@implementation ArcadeHeaderButtonContainer

- (_TtC22SubscribePageExtension27ArcadeHeaderButtonContainer)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(sub_10000C518(&unk_10093EC20)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ArcadeHeaderButtonContainer *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateAccountButtonVisibility
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton);
  selfCopy = self;
  traitCollection = [(ArcadeHeaderButtonContainer *)selfCopy traitCollection];
  v4 = sub_1007537B4();

  [v2 setHidden:v4 & 1];
}

- (_TtC22SubscribePageExtension27ArcadeHeaderButtonContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end