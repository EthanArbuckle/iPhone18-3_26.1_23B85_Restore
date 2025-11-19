@interface FMBatteryWrapperView
- (_TtC6FindMy20FMBatteryWrapperView)initWithCoder:(id)a3;
- (_TtC6FindMy20FMBatteryWrapperView)initWithFrame:(CGRect)a3;
@end

@implementation FMBatteryWrapperView

- (_TtC6FindMy20FMBatteryWrapperView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for FMBatteryWrapperView();
  v9 = [(FMBatteryWrapperView *)&v11 initWithFrame:x, y, width, height];
  sub_10042E120();

  return v9;
}

- (_TtC6FindMy20FMBatteryWrapperView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end