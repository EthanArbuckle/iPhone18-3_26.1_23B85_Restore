@interface SpringAnimation
- (BOOL)advanceWithDeltaTime:(double)time;
- (_TtC15ActivityRingsUI15SpringAnimation)init;
- (_TtC15ActivityRingsUI15SpringAnimation)initWithInitialValue:(double)value delay:(double)delay;
- (double)target;
- (void)completeWithSnap;
- (void)configureWithTension:(double)tension friction:(double)friction target:(double)target;
- (void)updateTarget:(double)target;
@end

@implementation SpringAnimation

- (double)target
{
  if (self->animationState[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 16] == 1)
  {
    return *&self->animationState[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 8];
  }

  sub_1CFD8D2BC();
  __break(1u);
  return result;
}

- (_TtC15ActivityRingsUI15SpringAnimation)initWithInitialValue:(double)value delay:(double)delay
{
  v4 = self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  *v4 = value;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_delay) = delay;
  *(&self->super.isa + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay) = delay;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SpringAnimation();
  return [(SpringAnimation *)&v6 init];
}

- (void)configureWithTension:(double)tension friction:(double)friction target:(double)target
{
  v5 = (self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState);
  v5[2] = tension;
  v5[3] = friction;
  v5[4] = target;
  *(v5 + 40) = 1;
}

- (void)updateTarget:(double)target
{
  v3 = (self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState);
  if (self->animationState[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 16] == 1)
  {
    v3[4] = target;
    *(v3 + 40) = 1;
  }

  else
  {
    sub_1CFD8D2BC();
    __break(1u);
  }
}

- (BOOL)advanceWithDeltaTime:(double)time
{
  selfCopy = self;
  v5 = sub_1CFD877DC(time);

  return v5 & 1;
}

- (void)completeWithSnap
{
  v2 = self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  if (self->animationState[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 16] == 1)
  {
    *v2 = *(v2 + 4);
    *(v2 + 1) = 0;
    v2[40] = 1;
  }
}

- (_TtC15ActivityRingsUI15SpringAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end