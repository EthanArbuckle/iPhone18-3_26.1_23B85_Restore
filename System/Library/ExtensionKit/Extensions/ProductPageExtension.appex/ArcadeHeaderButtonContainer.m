@interface ArcadeHeaderButtonContainer
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension27ArcadeHeaderButtonContainer)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension27ArcadeHeaderButtonContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateAccountButtonVisibility;
@end

@implementation ArcadeHeaderButtonContainer

- (_TtC20ProductPageExtension27ArcadeHeaderButtonContainer)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ArcadeHeaderButtonContainer *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateAccountButtonVisibility
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton);
  v5 = self;
  v3 = [(ArcadeHeaderButtonContainer *)v5 traitCollection];
  v4 = sub_1007706CC();

  [v2 setHidden:v4 & 1];
}

- (_TtC20ProductPageExtension27ArcadeHeaderButtonContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end