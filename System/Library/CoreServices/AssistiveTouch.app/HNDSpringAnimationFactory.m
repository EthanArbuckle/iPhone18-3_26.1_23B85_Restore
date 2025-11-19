@interface HNDSpringAnimationFactory
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5;
- (CAMediaTimingFunction)timingFunction;
- (HNDSpringAnimationFactory)init;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_timingFunctionForAnimation;
- (void)setTimingFunction:(id)a3;
@end

@implementation HNDSpringAnimationFactory

- (CAMediaTimingFunction)timingFunction
{
  v3 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimingFunction:(id)a3
{
  v5 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5
{
  v8 = type metadata accessor for SpringAnimationFactory();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_timingFunction] = 0;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory____lazy_storage___springAnimation] = 0;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_mass] = a3;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_stiffness] = a4;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_damping] = a5;
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, "init");

  return v10;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v4 = self;
  v5 = sub_100126610();

  return v5;
}

- (id)_timingFunctionForAnimation
{
  v2 = *((swift_isaMask & self->super.isa) + 0xC0);
  v3 = self;
  v4 = v2();
  if (!v4)
  {
    static os_log_type_t.info.getter();
    result = ASTLogCommon();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    os_log(_:dso:log:_:_:)();

    v4 = [objc_allocWithZone(CAMediaTimingFunction) init];
  }

  v7 = v4;

  return v7;
}

- (HNDSpringAnimationFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end