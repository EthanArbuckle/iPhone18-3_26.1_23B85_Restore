@interface AAUIDeviceLocatorService
+ (id)sharedInstance;
- (AAUIDeviceLocatorService)init;
- (BOOL)isChangingState;
- (BOOL)isEnabled;
- (BOOL)isStateKnown;
- (BOOL)shouldEnable;
- (void)_updateStateAndNotify:(BOOL)notify completion:(id)completion;
- (void)disableInContext:(unint64_t)context withWipeToken:(id)token completion:(id)completion;
- (void)enableInContext:(unint64_t)context completion:(id)completion;
- (void)refreshCurrentState:(id)state;
- (void)setShouldEnable:(BOOL)enable;
@end

@implementation AAUIDeviceLocatorService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AAUIDeviceLocatorService sharedInstance];
  }

  v3 = sharedInstance___service;

  return v3;
}

void __42__AAUIDeviceLocatorService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AAUIDeviceLocatorService);
  v1 = sharedInstance___service;
  sharedInstance___service = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = sharedInstance___service;
  v4 = *MEMORY[0x1E699C850];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _AAUIHandleFMIPStateChange, v4, 0, 0);
}

- (AAUIDeviceLocatorService)init
{
  v7.receiver = self;
  v7.super_class = AAUIDeviceLocatorService;
  v2 = [(AAUIDeviceLocatorService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.accounts.dls.update", v3);
    stateUpdateQueue = v2->_stateUpdateQueue;
    v2->_stateUpdateQueue = v4;

    v2->_lastKnownState = 4;
  }

  return v2;
}

- (BOOL)isEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasAttemptedToFetchState)
  {
    v3 = selfCopy->_lastKnownState - 1 < 2;
  }

  else
  {
    [(AAUIDeviceLocatorService *)selfCopy _updateStateAndNotify:1 completion:0];
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isChangingState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasAttemptedToFetchState)
  {
    v3 = (selfCopy->_lastKnownState & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v3 = 1;
    [(AAUIDeviceLocatorService *)selfCopy _updateStateAndNotify:1 completion:0];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isStateKnown
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastKnownState != 4;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_updateStateAndNotify:(BOOL)notify completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke;
  aBlock[3] = &unk_1E820C028;
  notifyCopy = notify;
  aBlock[4] = self;
  v14 = completionCopy;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  stateUpdateQueue = self->_stateUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke_2;
  block[3] = &unk_1E820B780;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(stateUpdateQueue, block);
}

uint64_t __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 16) = 1;
  *(*(a1 + 32) + 8) = a2;
  if (*(a1 + 48) == 1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"AADeviceLocatorStateDidChange" object:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Refreshing FMiP state...", buf, 2u);
  }

  dispatch_suspend(*(*(a1 + 32) + 24));
  v3 = [MEMORY[0x1E699C848] sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke_6;
  v5[3] = &unk_1E820C050;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 fmipStateWithCompletion:v5];
}

void __61__AAUIDeviceLocatorService__updateStateAndNotify_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "findmydeviced provided FMiP state %lu and error %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 24));
}

- (void)refreshCurrentState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AAUIDeviceLocatorService_refreshCurrentState___block_invoke;
  v6[3] = &unk_1E820C078;
  v7 = stateCopy;
  v5 = stateCopy;
  [(AAUIDeviceLocatorService *)self _updateStateAndNotify:1 completion:v6];
}

- (void)enableInContext:(unint64_t)context completion:(id)completion
{
  completionCopy = completion;
  stateUpdateQueue = self->_stateUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AAUIDeviceLocatorService_enableInContext_completion___block_invoke;
  block[3] = &unk_1E820BCC8;
  v10 = completionCopy;
  contextCopy = context;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(stateUpdateQueue, block);
}

void __55__AAUIDeviceLocatorService_enableInContext_completion___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1[4] + 8) = 1;
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Dispatching request to enable FMiP with context %lu", &v8, 0xCu);
  }

  v4 = [MEMORY[0x1E699C848] sharedInstance];
  v5 = [v4 enableFMIPInContext:a1[6]];

  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Request to enable FMiP completed with error: %{public}@", &v8, 0xCu);
  }

  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v5 == 0);
  }
}

- (void)disableInContext:(unint64_t)context withWipeToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if (![tokenCopy length])
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "OOPS: The disable-FMiP request came in with an empty token. This will not end well.", buf, 2u);
    }
  }

  stateUpdateQueue = self->_stateUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AAUIDeviceLocatorService_disableInContext_withWipeToken_completion___block_invoke;
  block[3] = &unk_1E820BCC8;
  v16 = completionCopy;
  contextCopy = context;
  v15 = tokenCopy;
  v12 = completionCopy;
  v13 = tokenCopy;
  dispatch_async(stateUpdateQueue, block);
}

void __70__AAUIDeviceLocatorService_disableInContext_withWipeToken_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Dispatching request to disable FMiP with context %lu", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E699C848] sharedInstance];
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AAUIDeviceLocatorService_disableInContext_withWipeToken_completion___block_invoke_8;
  v7[3] = &unk_1E820C0A0;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v4 disableFMIPUsingToken:v6 inContext:v5 completion:v7];
}

void __70__AAUIDeviceLocatorService_disableInContext_withWipeToken_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Request to disable FMiP completed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 != 0);
  }
}

- (void)setShouldEnable:(BOOL)enable
{
  obj = self;
  objc_sync_enter(obj);
  obj->_wantsToEnable = enable;
  objc_sync_exit(obj);
}

- (BOOL)shouldEnable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wantsToEnable = selfCopy->_wantsToEnable;
  objc_sync_exit(selfCopy);

  return wantsToEnable;
}

@end