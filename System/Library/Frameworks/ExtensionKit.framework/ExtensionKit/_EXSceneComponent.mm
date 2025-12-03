@interface _EXSceneComponent
- (_EXSceneComponent)init;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_setScene:(id)scene;
@end

@implementation _EXSceneComponent

- (void)_setScene:(id)scene
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXSceneComponent__scene);
  *(&self->super.isa + OBJC_IVAR____EXSceneComponent__scene) = scene;
  sceneCopy = scene;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1D29EA2B0(invalidateCopy);
}

- (_EXSceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end