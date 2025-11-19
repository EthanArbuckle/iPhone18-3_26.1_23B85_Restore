@interface DepthRichCircularView
- (CLKMonochromeFilterProvider)filterProvider;
- (_TtC32DepthComplicationBundleCompanion21DepthRichCircularView)initWithFrame:(CGRect)a3;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
- (void)setFontDescriptor:(id)a3;
- (void)setFontSizeFactor:(double)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation DepthRichCircularView

- (CLKMonochromeFilterProvider)filterProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFilterProvider:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_filterProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_26A0C(a3);
}

- (void)setFontDescriptor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor) = a3;
  v5 = a3;
  v6 = self;

  sub_24430();
}

- (void)setFontSizeFactor:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontSizeFactor) = a3;
  v3 = self;
  sub_24430();
}

- (void)updateMonochromeColor
{
  v2 = self;
  sub_239F0(0, 1);
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v4 = self;
  sub_239F0(*&a3, 0);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_23CF4();
}

- (_TtC32DepthComplicationBundleCompanion21DepthRichCircularView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end