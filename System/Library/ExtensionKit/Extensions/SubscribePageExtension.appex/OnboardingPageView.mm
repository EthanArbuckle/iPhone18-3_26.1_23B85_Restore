@interface OnboardingPageView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension18OnboardingPageView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension18OnboardingPageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OnboardingPageView

- (_TtC22SubscribePageExtension18OnboardingPageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentView) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000DD384();
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
  sub_1000DD7AC(change);
}

- (_TtC22SubscribePageExtension18OnboardingPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end