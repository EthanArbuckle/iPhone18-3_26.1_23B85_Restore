@interface TargetDeviceDescriptionView
- (_TtC11Diagnostics27TargetDeviceDescriptionView)initWithCoder:(id)a3;
- (_TtC11Diagnostics27TargetDeviceDescriptionView)initWithFrame:(CGRect)a3;
@end

@implementation TargetDeviceDescriptionView

- (_TtC11Diagnostics27TargetDeviceDescriptionView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  v5 = type metadata accessor for TargetDevice();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics27TargetDeviceDescriptionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end