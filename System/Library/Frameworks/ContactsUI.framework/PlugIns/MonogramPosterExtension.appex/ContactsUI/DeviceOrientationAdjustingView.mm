@interface DeviceOrientationAdjustingView
- (_TtC23MonogramPosterExtension30DeviceOrientationAdjustingView)initWithCoder:(id)coder;
- (_TtC23MonogramPosterExtension30DeviceOrientationAdjustingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DeviceOrientationAdjustingView

- (_TtC23MonogramPosterExtension30DeviceOrientationAdjustingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation) = 1;
  result = sub_100026D10();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceOrientationAdjustingView();
  v2 = v3.receiver;
  [(DeviceOrientationAdjustingView *)&v3 layoutSubviews];
  sub_10001F91C(*&v2[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation]);
}

- (_TtC23MonogramPosterExtension30DeviceOrientationAdjustingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end