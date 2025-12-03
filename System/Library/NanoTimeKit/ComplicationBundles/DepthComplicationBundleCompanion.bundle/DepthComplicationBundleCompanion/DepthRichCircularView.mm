@interface DepthRichCircularView
- (CLKMonochromeFilterProvider)filterProvider;
- (_TtC32DepthComplicationBundleCompanion21DepthRichCircularView)initWithFrame:(CGRect)frame;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)provider;
- (void)setFontDescriptor:(id)descriptor;
- (void)setFontSizeFactor:(double)factor;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation DepthRichCircularView

- (CLKMonochromeFilterProvider)filterProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFilterProvider:(id)provider
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_filterProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  selfCopy = self;
  sub_26A0C(provider);
}

- (void)setFontDescriptor:(id)descriptor
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor) = descriptor;
  descriptorCopy = descriptor;
  selfCopy = self;

  sub_24430();
}

- (void)setFontSizeFactor:(double)factor
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontSizeFactor) = factor;
  selfCopy = self;
  sub_24430();
}

- (void)updateMonochromeColor
{
  selfCopy = self;
  sub_239F0(0, 1);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  selfCopy = self;
  sub_239F0(*&fraction, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23CF4();
}

- (_TtC32DepthComplicationBundleCompanion21DepthRichCircularView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end