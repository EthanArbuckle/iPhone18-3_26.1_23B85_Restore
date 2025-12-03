@interface CubicSpringTimingParameters
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)init;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithCoder:(id)coder;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDampingRatio:(double)ratio initialVelocity:(CGVector)velocity;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDuration:(double)duration bounce:(double)bounce initialVelocity:(CGVector)velocity;
- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(CGVector)velocity;
- (id)copyWithZone:(void *)zone;
@end

@implementation CubicSpringTimingParameters

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_D8750(zone, v7);

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

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CubicSpringTimingParameters();
  coderCopy = coder;
  v5 = [(CubicSpringTimingParameters *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDampingRatio:(double)ratio initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v8 initWithDampingRatio:ratio initialVelocity:dx, dy];
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v12 initWithMass:mass stiffness:stiffness damping:damping initialVelocity:dx, dy];
}

- (_TtC12NowPlayingUI27CubicSpringTimingParameters)initWithDuration:(double)duration bounce:(double)bounce initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CubicSpringTimingParameters();
  return [(CubicSpringTimingParameters *)&v10 initWithDuration:duration bounce:bounce initialVelocity:dx, dy];
}

@end