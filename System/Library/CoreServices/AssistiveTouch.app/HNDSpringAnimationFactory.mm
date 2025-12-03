@interface HNDSpringAnimationFactory
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping;
- (CAMediaTimingFunction)timingFunction;
- (HNDSpringAnimationFactory)init;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_timingFunctionForAnimation;
- (void)setTimingFunction:(id)function;
@end

@implementation HNDSpringAnimationFactory

- (CAMediaTimingFunction)timingFunction
{
  v3 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimingFunction:(id)function
{
  v5 = OBJC_IVAR___HNDSpringAnimationFactory_timingFunction;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = function;
  functionCopy = function;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping
{
  v8 = type metadata accessor for SpringAnimationFactory();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_timingFunction] = 0;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory____lazy_storage___springAnimation] = 0;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_mass] = mass;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_stiffness] = stiffness;
  *&v9[OBJC_IVAR___HNDSpringAnimationFactory_damping] = damping;
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, "init");

  return v10;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  selfCopy = self;
  v5 = sub_100126610();

  return v5;
}

- (id)_timingFunctionForAnimation
{
  v2 = *((swift_isaMask & self->super.isa) + 0xC0);
  selfCopy = self;
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