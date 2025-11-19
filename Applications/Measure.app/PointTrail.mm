@interface PointTrail
- (_TtC7Measure10PointTrail)init;
- (_TtC7Measure10PointTrail)initWithCoder:(id)a3;
@end

@implementation PointTrail

- (_TtC7Measure10PointTrail)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure10PointTrail_pointNodes) = _swiftEmptyArrayStorage;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure10PointTrail_minDistance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure10PointTrail_isStarted) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Measure10PointTrail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end