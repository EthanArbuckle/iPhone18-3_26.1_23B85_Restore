@interface LightLevelControllerWrapper
- (_TtC5Books27LightLevelControllerWrapper)init;
- (void)dealloc;
@end

@implementation LightLevelControllerWrapper

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
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