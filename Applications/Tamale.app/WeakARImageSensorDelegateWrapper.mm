@interface WeakARImageSensorDelegateWrapper
- (ARImageSensorDelegate)delegate;
- (_TtC6Tamale32WeakARImageSensorDelegateWrapper)init;
- (_TtC6Tamale32WeakARImageSensorDelegateWrapper)initWithDelegate:(id)delegate;
@end

@implementation WeakARImageSensorDelegateWrapper

- (ARImageSensorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6Tamale32WeakARImageSensorDelegateWrapper)initWithDelegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(WeakARImageSensorDelegateWrapper *)&v6 init];
}

- (_TtC6Tamale32WeakARImageSensorDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end