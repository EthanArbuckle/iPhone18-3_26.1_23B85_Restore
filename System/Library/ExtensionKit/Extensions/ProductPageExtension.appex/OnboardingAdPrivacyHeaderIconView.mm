@interface OnboardingAdPrivacyHeaderIconView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation OnboardingAdPrivacyHeaderIconView

- (_TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10036B1C4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label);
  v10 = self;
  [v9 sizeToFit];
  [*(&self->super.super.super.isa + v8) frame];
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100770AAC();
  v12 = v11;
  v14 = v13;

  (*(v5 + 8))(v7, v4);
  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (_TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end