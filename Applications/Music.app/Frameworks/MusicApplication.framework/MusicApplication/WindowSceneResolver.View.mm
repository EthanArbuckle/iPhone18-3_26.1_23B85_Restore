@interface WindowSceneResolver.View
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder;
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation WindowSceneResolver.View

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  windowCopy = window;
  v5 = v7.receiver;
  [(WindowSceneResolver.View *)&v7 willMoveToWindow:windowCopy];
  windowScene = [windowCopy windowScene];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB7800();
}

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end