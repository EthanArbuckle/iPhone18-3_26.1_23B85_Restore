@interface _EXSceneComponent
- (_EXSceneComponent)init;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_setScene:(id)a3;
@end

@implementation _EXSceneComponent

- (void)_setScene:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____EXSceneComponent__scene);
  *(&self->super.isa + OBJC_IVAR____EXSceneComponent__scene) = a3;
  v3 = a3;
}

- (void)_sceneWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D29EA2B0(v4);
}

- (_EXSceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end