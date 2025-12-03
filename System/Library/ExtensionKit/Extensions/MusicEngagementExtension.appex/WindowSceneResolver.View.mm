@interface WindowSceneResolver.View
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder;
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation WindowSceneResolver.View

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd);
  Binding.wrappedValue.setter();
}

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end