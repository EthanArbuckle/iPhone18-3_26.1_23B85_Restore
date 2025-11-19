@interface DepthRectangularLiveView
- (_TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation DepthRectangularLiveView

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for DepthRectangularLiveView();
  [(DepthRectangularLiveView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_172A4();
}

- (_TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end