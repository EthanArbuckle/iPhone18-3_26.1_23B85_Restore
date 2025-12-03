@interface SWCollaborationCoordinatorSceneComponent
+ (void)_registerWithUIKit;
- (SWCollaborationCoordinatorSceneComponent)initWithScene:(id)scene;
- (UIScene)_scene;
- (id)_actionRespondersForScene:(id)scene;
@end

@implementation SWCollaborationCoordinatorSceneComponent

+ (void)_registerWithUIKit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SWCollaborationCoordinatorSceneComponent__registerWithUIKit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_registerWithUIKit_onceToken != -1)
  {
    dispatch_once(&_registerWithUIKit_onceToken, block);
  }
}

void __62__SWCollaborationCoordinatorSceneComponent__registerWithUIKit__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == objc_opt_class())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SWCollaborationCoordinatorSceneComponent__registerWithUIKit__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __62__SWCollaborationCoordinatorSceneComponent__registerWithUIKit__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCE70];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v1 _registerSceneComponentClass:v2 withKey:@"SWCollaborationCoordinatorSceneComponent" predicate:v3];
}

- (SWCollaborationCoordinatorSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = SWCollaborationCoordinatorSceneComponent;
  v5 = [(SWCollaborationCoordinatorSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (id)_actionRespondersForScene:(id)scene
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = +[SWCollaborationCoordinatorBSActionResponder sharedActionResponder];
  v8[0] = v3;
  v4 = +[SWShareableContentBSActionResponder sharedActionResponder];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end