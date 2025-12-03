@interface OnboardingAdPrivacyHeaderIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation OnboardingAdPrivacyHeaderIconView

- (_TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003756B0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label);
  selfCopy = self;
  [v9 sizeToFit];
  [*(&self->super.super.super.isa + v8) frame];
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100753B84();
  v12 = v11;
  v14 = v13;

  (*(v5 + 8))(v7, v4);
  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (_TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end