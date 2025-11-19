@interface CubicSpringTimingParameters
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)init;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDampingRatio:(double)a3 initialVelocity:(CGVector)a4;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDuration:(double)a3 bounce:(double)a4 initialVelocity:(CGVector)a5;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 initialVelocity:(CGVector)a6;
- (id)copyWithZone:(void *)a3;
@end

@implementation CubicSpringTimingParameters

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_D8750(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1453AC();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v3 init];
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CubicSpringTimingParameters();
  v4 = a3;
  v5 = [(CubicSpringTimingParameters *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDampingRatio:(double)a3 initialVelocity:(CGVector)a4
{
  dy = a4.dy;
  dx = a4.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v8 initWithDampingRatio:a3 initialVelocity:dx, dy];
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 initialVelocity:(CGVector)a6
{
  dy = a6.dy;
  dx = a6.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v12 initWithMass:a3 stiffness:a4 damping:a5 initialVelocity:dx, dy];
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDuration:(double)a3 bounce:(double)a4 initialVelocity:(CGVector)a5
{
  dy = a5.dy;
  dx = a5.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v10 initWithDuration:a3 bounce:a4 initialVelocity:dx, dy];
}

@end