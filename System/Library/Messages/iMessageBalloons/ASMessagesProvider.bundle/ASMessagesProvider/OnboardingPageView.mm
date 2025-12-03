@interface OnboardingPageView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider18OnboardingPageView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider18OnboardingPageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OnboardingPageView

- (_TtC18ASMessagesProvider18OnboardingPageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_51D394();
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
  sub_51D7BC(change);
}

- (_TtC18ASMessagesProvider18OnboardingPageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end