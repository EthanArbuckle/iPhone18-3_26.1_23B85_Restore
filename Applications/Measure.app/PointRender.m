@interface PointRender
- (SCNVector3)position;
- (_TtC7Measure11PointRender)init;
- (void)setPosition:(SCNVector3)a3;
@end

@implementation PointRender

- (SCNVector3)position
{
  [*(&self->super.super.isa + OBJC_IVAR____TtC7Measure11PointRender_point) position];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(SCNVector3)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7Measure11PointRender_point);
  v14 = self;
  *&v7 = x;
  *&v8 = y;
  *&v9 = z;
  [v6 setWorldPosition:{v7, v8, v9}];
  v10 = *(&v14->super.super.isa + OBJC_IVAR____TtC7Measure11PointRender_pointPrime);
  *&v11 = x;
  *&v12 = y;
  *&v13 = z;
  [v10 setWorldPosition:{v11, v12, v13}];
}

- (_TtC7Measure11PointRender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end