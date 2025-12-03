@interface AFContextManager
+ (id)defaultContextManager;
- (AFContextManager)init;
- (BOOL)addContextProvider:(id)provider;
- (id)_collateContexts;
- (id)_serverName;
- (void)_collateContextsIntoArray:(id)array;
- (void)_shutdownServer;
- (void)_startListening;
- (void)_stopListening;
- (void)dealloc;
- (void)removeContextProvider:(id)provider;
- (void)startCenter:(id)center;
@end

@implementation AFContextManager

- (void)_startListening
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__shutdownServer object:0];
  if (!self->_center)
  {
    _serverName = [(AFContextManager *)self _serverName];
    v3 = [MEMORY[0x1E698B688] pidRestrictedCenterNamed:_serverName];
    center = self->_center;
    self->_center = v3;

    [(CPDistributedMessagingCenter *)self->_center setTargetPID:getpid()];
    [(CPDistributedMessagingCenter *)self->_center registerForMessageName:@"CollateContexts" target:self selector:sel__collateContexts];
    [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_startCenter_ toTarget:self withObject:self->_center];
  }
}

- (id)_serverName
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = AFContextProviderNameForBundleId(bundleIdentifier);

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

- (void)removeContextProvider:(id)provider
{
  providerCopy = provider;
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
      if (v7 == providerCopy)
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

- (BOOL)addContextProvider:(id)provider
{
  providerCopy = provider;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __assert_rtn("[AFContextManager addContextProvider:]", "AFContextManager.m", 197, "[NSThread isMainThread]");
  }

  Count = CFArrayGetCount(self->_contextProviders);
  v6 = Count - 1;
  if (Count < 1)
  {
LABEL_7:
    CFArrayAppendValue(self->_contextProviders, providerCopy);
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

      if (v9 == providerCopy)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v10 = CFArrayGetValueAtIndex(self->_contextProviders, v6);
        v11 = [v10 allowContextProvider:providerCopy];

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
  array = [MEMORY[0x1E695DF70] array];
  [(AFContextManager *)self performSelectorOnMainThread:sel__collateContextsIntoArray_ withObject:array waitUntilDone:1];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:array forKey:@"Contexts"];

  return v4;
}

- (void)startCenter:(id)center
{
  centerCopy = center;
  v4 = objc_autoreleasePoolPush();
  [centerCopy runServerOnCurrentThreadProtectedByEntitlement:@"com.apple.assistant.contextprovider"];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  v6 = objc_alloc(MEMORY[0x1E695DFF0]);
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v6 initWithFireDate:distantFuture interval:self target:sel_nothing selector:0 userInfo:0 repeats:15.0];

  [currentRunLoop addTimer:v8 forMode:*MEMORY[0x1E695D918]];
  do
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:15.0];
    [currentRunLoop runUntilDate:v9];
    doesServerExist = [centerCopy doesServerExist];
  }

  while ((doesServerExist & 1) != 0);
  [v8 invalidate];

  objc_autoreleasePoolPop(v4);
}

- (void)_collateContextsIntoArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
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
      getCurrentContext = [v8 getCurrentContext];
      firstObject = [getCurrentContext firstObject];
      if (firstObject)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x1E69C76D8] dictionaryArrayWithAceObjectArray:getCurrentContext];

          getCurrentContext = v11;
        }
      }

      if (getCurrentContext)
      {
        [arrayCopy addObject:getCurrentContext];
      }

      --v7;
    }

    while (v7 > 1);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end