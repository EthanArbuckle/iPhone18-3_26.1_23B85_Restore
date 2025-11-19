@interface DepthRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithCoder:(id)a3;
- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithFrame:(CGRect)a3;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation DepthRectangularView

- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithCoder:(id)a3
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

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29750(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_28A74();
}

- (CLKMonochromeFilterProvider)filterProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFilterProvider:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v4 = self;
  sub_28E94(a3);
}

- (void)updateMonochromeColor
{
  v2 = self;
  sub_2906C();
}

- (_TtC32DepthComplicationBundleCompanion20DepthRectangularView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end