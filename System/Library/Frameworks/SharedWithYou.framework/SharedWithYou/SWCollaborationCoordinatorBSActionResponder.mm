@interface SWCollaborationCoordinatorBSActionResponder
+ (SWCollaborationCoordinatorBSActionResponder)sharedActionResponder;
- (SWCollaborationCoordinatorBSActionResponder)init;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)_appDidFinishLaunching:(id)launching;
@end

@implementation SWCollaborationCoordinatorBSActionResponder

+ (SWCollaborationCoordinatorBSActionResponder)sharedActionResponder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SWCollaborationCoordinatorBSActionResponder_sharedActionResponder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    _hasApplicationCalledLaunchDelegate = [mEMORY[0x1E69DC668] _hasApplicationCalledLaunchDelegate];

    if (_hasApplicationCalledLaunchDelegate)
    {
      mEMORY[0x1E697B6F8] = [MEMORY[0x1E697B6F8] sharedManager];
      [mEMORY[0x1E697B6F8] applicationHasFinishedLaunching];
    }

    else
    {
      mEMORY[0x1E697B6F8] = [MEMORY[0x1E696AD88] defaultCenter];
      [mEMORY[0x1E697B6F8] addObserver:v2 selector:sel__appDidFinishLaunching_ name:*MEMORY[0x1E69DDAD0] object:0];
    }
  }

  return v2;
}

- (void)_appDidFinishLaunching:(id)launching
{
  mEMORY[0x1E697B6F8] = [MEMORY[0x1E697B6F8] sharedManager];
  [mEMORY[0x1E697B6F8] applicationHasFinishedLaunching];
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __109__SWCollaborationCoordinatorBSActionResponder__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
  v20 = &unk_1E7FDE0A8;
  v9 = v7;
  v21 = v9;
  v10 = v8;
  v22 = v10;
  [actionsCopy enumerateObjectsUsingBlock:&v17];
  if ([v9 count])
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[SWCollaborationCoordinatorBSActionResponder _respondToActions:forFBSScene:inUIScene:fromTransitionContext:]";
      _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_DEFAULT, "%s we have incoming actions to deliver to the collaboration coordinator.", buf, 0xCu);
    }

    mEMORY[0x1E697B6F8] = [MEMORY[0x1E697B6F8] sharedManager];
    allObjects = [v9 allObjects];
    [mEMORY[0x1E697B6F8] processIncomingActions:allObjects];
  }

  v14 = [actionsCopy mutableCopy];
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