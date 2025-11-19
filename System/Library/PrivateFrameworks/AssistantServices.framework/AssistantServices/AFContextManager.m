@interface AFContextManager
+ (id)defaultContextManager;
- (AFContextManager)init;
- (BOOL)addContextProvider:(id)a3;
- (id)_collateContexts;
- (id)_serverName;
- (void)_collateContextsIntoArray:(id)a3;
- (void)_shutdownServer;
- (void)_startListening;
- (void)_stopListening;
- (void)dealloc;
- (void)removeContextProvider:(id)a3;
- (void)startCenter:(id)a3;
@end

@implementation AFContextManager

- (void)_startListening
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__shutdownServer object:0];
  if (!self->_center)
  {
    v5 = [(AFContextManager *)self _serverName];
    v3 = [MEMORY[0x1E698B688] pidRestrictedCenterNamed:v5];
    center = self->_center;
    self->_center = v3;

    [(CPDistributedMessagingCenter *)self->_center setTargetPID:getpid()];
    [(CPDistributedMessagingCenter *)self->_center registerForMessageName:@"CollateContexts" target:self selector:sel__collateContexts];
    [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_startCenter_ toTarget:self withObject:self->_center];
  }
}

- (id)_serverName
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = AFContextProviderNameForBundleId(v3);

  return v4;
}

+ (id)defaultContextManager
{
  if (defaultContextManager_onceToken != -1)
  {
    dispatch_once(&defaultContextManager_onceToken, &__block_literal_global_5530);
  }

  v3 = __defaultContextManager;

  return v3;
}

void __41__AFContextManager_defaultContextManager__block_invoke()
{
  v0 = objc_alloc_init(AFContextManager);
  v1 = __defaultContextManager;
  __defaultContextManager = v0;
}

- (AFContextManager)init
{
  v4.receiver = self;
  v4.super_class = AFContextManager;
  v2 = [(AFContextManager *)&v4 init];
  if (v2)
  {
    v2->_contextProviders = CFArrayCreateMutable(0, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_contextProviders);
  v3.receiver = self;
  v3.super_class = AFContextManager;
  [(AFContextManager *)&v3 dealloc];
}

- (void)removeContextProvider:(id)a3
{
  v8 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __assert_rtn("[AFContextManager removeContextProvider:]", "AFContextManager.m", 222, "[NSThread isMainThread]");
  }

  Count = CFArrayGetCount(self->_contextProviders);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      v7 = CFArrayGetValueAtIndex(self->_contextProviders, v6);
      if (v7 == v8)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    CFArrayRemoveValueAtIndex(self->_contextProviders, v6);
  }

LABEL_8:
  if (!CFArrayGetCount(self->_contextProviders))
  {
    [(AFContextManager *)self _stopListening];
  }
}

- (BOOL)addContextProvider:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __assert_rtn("[AFContextManager addContextProvider:]", "AFContextManager.m", 197, "[NSThread isMainThread]");
  }

  Count = CFArrayGetCount(self->_contextProviders);
  v6 = Count - 1;
  if (Count < 1)
  {
LABEL_7:
    CFArrayAppendValue(self->_contextProviders, v4);
    [(AFContextManager *)self _startListening];
    v12 = 1;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      v9 = CFArrayGetValueAtIndex(self->_contextProviders, v8);

      if (v9 == v4)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v10 = CFArrayGetValueAtIndex(self->_contextProviders, v6);
        v11 = [v10 allowContextProvider:v4];

        if (v11)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    v12 = 0;
  }

  return v12;
}

- (void)_stopListening
{
  if (self->_center)
  {
    [(AFContextManager *)self performSelector:sel__shutdownServer withObject:0 afterDelay:15.0];
  }
}

- (void)_shutdownServer
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  [(CPDistributedMessagingCenter *)self->_center stopServer];
  center = self->_center;
  self->_center = 0;
}

- (id)_collateContexts
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(AFContextManager *)self performSelectorOnMainThread:sel__collateContextsIntoArray_ withObject:v3 waitUntilDone:1];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Contexts"];

  return v4;
}

- (void)startCenter:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  [v11 runServerOnCurrentThreadProtectedByEntitlement:@"com.apple.assistant.contextprovider"];
  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v6 = objc_alloc(MEMORY[0x1E695DFF0]);
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v6 initWithFireDate:v7 interval:self target:sel_nothing selector:0 userInfo:0 repeats:15.0];

  [v5 addTimer:v8 forMode:*MEMORY[0x1E695D918]];
  do
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:15.0];
    [v5 runUntilDate:v9];
    v10 = [v11 doesServerExist];
  }

  while ((v10 & 1) != 0);
  [v8 invalidate];

  objc_autoreleasePoolPop(v4);
}

- (void)_collateContextsIntoArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __assert_rtn("[AFContextManager _collateContextsIntoArray:]", "AFContextManager.m", 77, "[NSThread isMainThread]");
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[AFContextManager _collateContextsIntoArray:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  Count = CFArrayGetCount(self->_contextProviders);
  if (Count >= 1)
  {
    v7 = Count + 1;
    do
    {
      v8 = CFArrayGetValueAtIndex(self->_contextProviders, v7 - 2);
      v9 = [v8 getCurrentContext];
      v10 = [v9 firstObject];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x1E69C76D8] dictionaryArrayWithAceObjectArray:v9];

          v9 = v11;
        }
      }

      if (v9)
      {
        [v4 addObject:v9];
      }

      --v7;
    }

    while (v7 > 1);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end