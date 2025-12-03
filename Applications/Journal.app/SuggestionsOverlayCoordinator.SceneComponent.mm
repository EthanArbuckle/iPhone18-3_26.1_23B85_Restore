@interface SuggestionsOverlayCoordinator.SceneComponent
- (UIScene)_scene;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent)init;
- (void)_scene:(id)_scene didTransitionFromActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
- (void)_setScene:(id)scene;
@end

@implementation SuggestionsOverlayCoordinator.SceneComponent

- (UIScene)_scene
{
  windowScene = [*(&self->super.isa + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window) windowScene];

  return windowScene;
}

- (void)_setScene:(id)scene
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window);
  if (scene && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v10 = v6;
    sceneCopy = scene;
  }

  else
  {
    v10 = 0;
  }

  sceneCopy2 = scene;
  selfCopy = self;
  [v5 setWindowScene:v10];
}

- (void)_scene:(id)_scene didTransitionFromActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  _sceneCopy = _scene;
  selfCopy = self;
  if ([_sceneCopy activationState] == 2)
  {
    sub_1003ABAF8();
  }
}

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end