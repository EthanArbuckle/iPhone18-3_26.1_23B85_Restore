@interface PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation;
- (_TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter)init;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation;
- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type;
- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
- (void)pictureInPictureProxy:(id)proxy failedToStartPictureInPictureWithAnimationType:(int64_t)type error:(id)error;
- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type;
@end

@implementation PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  selfCopy = self;
  animationCopy = animation;
  v4(v11);
  v7 = v12;
  v8 = v13;
  result = __swift_project_boxed_opaque_existential_1(v11, v12);
  if (animationCopy)
  {
    v10 = (*(v8 + 8))(animationCopy, v7, v8);

    __swift_destroy_boxed_opaque_existential_0(v11);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  selfCopy = self;
  animationCopy = animation;
  v4(v20);
  v7 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (animationCopy)
  {
    v13 = (*(v8 + 16))(animationCopy, v7, v8);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_0(v20);
    v9 = v13;
    v10 = v15;
    v11 = v17;
    v12 = v19;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type
{
  proxyCopy = proxy;
  selfCopy = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(proxy, "Will present preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type
{
  proxyCopy = proxy;
  selfCopy = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(proxy, "Presented preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  proxyCopy = proxy;
  selfCopy = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(proxy, "Stopping preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)proxy failedToStartPictureInPictureWithAnimationType:(int64_t)type error:(id)error
{
  proxyCopy = proxy;
  selfCopy = self;
  errorCopy = error;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:failedToStartPictureInPictureWith:error:)(proxy, error);
}

- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = _s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0;
  }

  proxyCopy = proxy;
  selfCopy = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(proxy, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (_TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end