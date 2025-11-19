@interface DeviceOrientationAdjustingView
- (_TtC21AvatarPosterExtension30DeviceOrientationAdjustingView)initWithCoder:(id)a3;
- (_TtC21AvatarPosterExtension30DeviceOrientationAdjustingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DeviceOrientationAdjustingView

- (_TtC21AvatarPosterExtension30DeviceOrientationAdjustingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_deviceOrientation) = 1;
  result = sub_10001A6FC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceOrientationAdjustingView();
  v2 = v3.receiver;
  [(DeviceOrientationAdjustingView *)&v3 layoutSubviews];
  sub_100016580(*&v2[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_deviceOrientation]);
}

- (_TtC21AvatarPosterExtension30DeviceOrientationAdjustingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end