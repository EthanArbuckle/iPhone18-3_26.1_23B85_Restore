@interface DepthRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithCoder:(id)coder;
- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithFrame:(CGRect)frame;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)provider;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation DepthRectangularView

- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithCoder:(id)coder
{
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_alwaysOn) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView) = xmmword_36DC0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider) = 0;
  result = sub_35758();
  __break(1u);
  return result;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  selfCopy = self;
  sub_29750(provider);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_28A74();
}

- (CLKMonochromeFilterProvider)filterProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFilterProvider:(id)provider
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  selfCopy = self;
  sub_28E94(fraction);
}

- (void)updateMonochromeColor
{
  selfCopy = self;
  sub_2906C();
}

- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end