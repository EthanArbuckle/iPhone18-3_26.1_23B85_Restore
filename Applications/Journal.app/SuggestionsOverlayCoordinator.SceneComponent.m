@interface SuggestionsOverlayCoordinator.SceneComponent
- (UIScene)_scene;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent)init;
- (void)_scene:(id)a3 didTransitionFromActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_setScene:(id)a3;
@end

@implementation SuggestionsOverlayCoordinator.SceneComponent

- (UIScene)_scene
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window) windowScene];

  return v2;
}

- (void)_setScene:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window);
  if (a3 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v10 = v6;
    v7 = a3;
  }

  else
  {
    v10 = 0;
  }

  v8 = a3;
  v9 = self;
  [v5 setWindowScene:v10];
}

- (void)_scene:(id)a3 didTransitionFromActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  v6 = a3;
  v7 = self;
  if ([v6 activationState] == 2)
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