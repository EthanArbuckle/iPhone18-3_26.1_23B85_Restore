@interface OnboardingPageView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC18ASMessagesProvider18OnboardingPageView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider18OnboardingPageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OnboardingPageView

- (_TtC18ASMessagesProvider18OnboardingPageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_51D394();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  v4 = 0.0;
  height = a3.height;
  result.var1 = a3.height;
  result.var0 = a3.width;
  result.var3 = v4;
  result.var2 = height;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_51D7BC(a3);
}

- (_TtC18ASMessagesProvider18OnboardingPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end