@interface PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3;
- (_TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter)init;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3;
- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5;
- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4;
@end

@implementation PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  v5 = self;
  v6 = a3;
  v4(v11);
  v7 = v12;
  v8 = v13;
  result = __swift_project_boxed_opaque_existential_1(v11, v12);
  if (v6)
  {
    v10 = (*(v8 + 8))(v6, v7, v8);

    __swift_destroy_boxed_opaque_existential_0(v11);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  v5 = self;
  v6 = a3;
  v4(v20);
  v7 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (v6)
  {
    v13 = (*(v8 + 16))(v6, v7, v8);
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

- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(a3, "Will present preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(a3, "Presented preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(a3, "Stopping preview in picture in picture for session: %s");
}

- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:failedToStartPictureInPictureWith:error:)(a3, a5);
}

- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = _s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0;
  }

  v7 = a3;
  v8 = self;
  specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(a3, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (_TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end