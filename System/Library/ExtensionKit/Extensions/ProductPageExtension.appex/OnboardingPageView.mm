@interface OnboardingPageView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension18OnboardingPageView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension18OnboardingPageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OnboardingPageView

- (_TtC20ProductPageExtension18OnboardingPageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100564B28();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  v4 = 0.0;
  height = fitting.height;
  result.var1 = fitting.height;
  result.var0 = fitting.width;
  result.var3 = v4;
  result.var2 = height;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100564F50(change);
}

- (_TtC20ProductPageExtension18OnboardingPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end