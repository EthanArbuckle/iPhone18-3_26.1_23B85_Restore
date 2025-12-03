@interface FMBatteryWrapperView
- (_TtC6FindMy20FMBatteryWrapperView)initWithCoder:(id)coder;
- (_TtC6FindMy20FMBatteryWrapperView)initWithFrame:(CGRect)frame;
@end

@implementation FMBatteryWrapperView

- (_TtC6FindMy20FMBatteryWrapperView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for FMBatteryWrapperView();
  height = [(FMBatteryWrapperView *)&v11 initWithFrame:x, y, width, height];
  sub_10042E120();

  return height;
}

- (_TtC6FindMy20FMBatteryWrapperView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end