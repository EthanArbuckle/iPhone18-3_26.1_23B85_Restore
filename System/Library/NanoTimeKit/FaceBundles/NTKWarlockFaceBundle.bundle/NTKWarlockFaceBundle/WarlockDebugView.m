@interface WarlockDebugView
- (_TtC20NTKWarlockFaceBundle16WarlockDebugView)initWithCoder:(id)a3;
- (_TtC20NTKWarlockFaceBundle16WarlockDebugView)initWithFrame:(CGRect)a3;
@end

@implementation WarlockDebugView

- (_TtC20NTKWarlockFaceBundle16WarlockDebugView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_radius) = 0x4024000000000000;
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_headShapeLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CAShapeLayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_ambientShapeLayers) = &_swiftEmptyArrayStorage;
  result = sub_37A30();
  __break(1u);
  return result;
}

- (_TtC20NTKWarlockFaceBundle16WarlockDebugView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end