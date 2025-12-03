@interface LightLevelControllerWrapper
- (_TtC5Books27LightLevelControllerWrapper)init;
- (void)dealloc;
@end

@implementation LightLevelControllerWrapper

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for LightLevelControllerWrapper();
  [(LightLevelControllerWrapper *)&v4 dealloc];
}

- (_TtC5Books27LightLevelControllerWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end