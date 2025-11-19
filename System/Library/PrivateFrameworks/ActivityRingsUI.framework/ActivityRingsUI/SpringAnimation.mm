@interface SpringAnimation
- (BOOL)advanceWithDeltaTime:(double)a3;
- (_TtC15ActivityRingsUI15SpringAnimation)init;
- (_TtC15ActivityRingsUI15SpringAnimation)initWithInitialValue:(double)a3 delay:(double)a4;
- (double)target;
- (void)completeWithSnap;
- (void)configureWithTension:(double)a3 friction:(double)a4 target:(double)a5;
- (void)updateTarget:(double)a3;
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

- (_TtC15ActivityRingsUI15SpringAnimation)initWithInitialValue:(double)a3 delay:(double)a4
{
  v4 = self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  *v4 = a3;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_delay) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay) = a4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SpringAnimation();
  return [(SpringAnimation *)&v6 init];
}

- (void)configureWithTension:(double)a3 friction:(double)a4 target:(double)a5
{
  v5 = (self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  *(v5 + 40) = 1;
}

- (void)updateTarget:(double)a3
{
  v3 = (self + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState);
  if (self->animationState[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 16] == 1)
  {
    v3[4] = a3;
    *(v3 + 40) = 1;
  }

  else
  {
    sub_1CFD8D2BC();
    __break(1u);
  }
}

- (BOOL)advanceWithDeltaTime:(double)a3
{
  v4 = self;
  v5 = sub_1CFD877DC(a3);

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