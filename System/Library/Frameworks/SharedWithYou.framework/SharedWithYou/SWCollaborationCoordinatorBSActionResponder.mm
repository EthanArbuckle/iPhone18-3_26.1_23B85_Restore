@interface SWCollaborationCoordinatorBSActionResponder
+ (SWCollaborationCoordinatorBSActionResponder)sharedActionResponder;
- (SWCollaborationCoordinatorBSActionResponder)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_appDidFinishLaunching:(id)a3;
@end

@implementation SWCollaborationCoordinatorBSActionResponder

+ (SWCollaborationCoordinatorBSActionResponder)sharedActionResponder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SWCollaborationCoordinatorBSActionResponder_sharedActionResponder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedActionResponder_onceToken != -1)
  {
    dispatch_once(&sharedActionResponder_onceToken, block);
  }

  v2 = sharedActionResponder_shared;

  return v2;
}

uint64_t __68__SWCollaborationCoordinatorBSActionResponder_sharedActionResponder__block_invoke(uint64_t a1)
{
  sharedActionResponder_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (SWCollaborationCoordinatorBSActionResponder)init
{
  v7.receiver = self;
  v7.super_class = SWCollaborationCoordinatorBSActionResponder;
  v2 = [(SWCollaborationCoordinatorBSActionResponder *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 _hasApplicationCalledLaunchDelegate];

    if (v4)
    {
      v5 = [MEMORY[0x1E697B6F8] sharedManager];
      [v5 applicationHasFinishedLaunching];
    }

    else
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:v2 selector:sel__appDidFinishLaunching_ name:*MEMORY[0x1E69DDAD0] object:0];
    }
  }

  return v2;
}

- (void)_appDidFinishLaunching:(id)a3
{
  v3 = [MEMORY[0x1E697B6F8] sharedManager];
  [v3 applicationHasFinishedLaunching];
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __109__SWCollaborationCoordinatorBSActionResponder__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
  v20 = &unk_1E7FDE0A8;
  v9 = v7;
  v21 = v9;
  v10 = v8;
  v22 = v10;
  [v6 enumerateObjectsUsingBlock:&v17];
  if ([v9 count])
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[SWCollaborationCoordinatorBSActionResponder _respondToActions:forFBSScene:inUIScene:fromTransitionContext:]";
      _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_DEFAULT, "%s we have incoming actions to deliver to the collaboration coordinator.", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E697B6F8] sharedManager];
    v13 = [v9 allObjects];
    [v12 processIncomingActions:v13];
  }

  v14 = [v6 mutableCopy];
  [v14 minusSet:v10];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __109__SWCollaborationCoordinatorBSActionResponder__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E697B6D0] actionWithDestinationAction:?];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }
}

@end