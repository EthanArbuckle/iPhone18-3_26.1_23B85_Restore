@interface LockScreenStateObserver
- (LockScreenStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4;
@end

@implementation LockScreenStateObserver

- (LockScreenStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = LockScreenStateObserver;
  v9 = [(LockScreenStateObserver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      __assert_rtn("[LockScreenStateObserver initWithCallbackQueue:observer:]", "LockScreenStateObserver.m", 27, "callbackQueue != nil");
    }

    if (!v8)
    {
      __assert_rtn("[LockScreenStateObserver initWithCallbackQueue:observer:]", "LockScreenStateObserver.m", 28, "observer != nil");
    }

    objc_storeStrong(&v9->_callbackQueue, a3);
    objc_storeStrong(&v10->_observer, a4);
    v10->_lockToken = 0;
    callbackQueue = v10->_callbackQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__LockScreenStateObserver_initWithCallbackQueue_observer___block_invoke;
    handler[3] = &unk_1E7F37BC0;
    v12 = v10;
    v17 = v12;
    notify_register_dispatch("com.apple.springboard.lockstate", &v10->_lockToken, callbackQueue, handler);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__LockScreenStateObserver_initWithCallbackQueue_observer___block_invoke_2;
    v14[3] = &unk_1E7F38038;
    v15 = v12;
    if (initWithCallbackQueue_observer__onceToken != -1)
    {
      dispatch_once(&initWithCallbackQueue_observer__onceToken, v14);
    }
  }

  return v10;
}

uint64_t __58__LockScreenStateObserver_initWithCallbackQueue_observer___block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 24), &state64);
  *(*(a1 + 32) + 28) = state64 != 0;
  return [*(*(a1 + 32) + 16) LockScreenStateChanging:*(*(a1 + 32) + 28)];
}

uint64_t __58__LockScreenStateObserver_initWithCallbackQueue_observer___block_invoke_2(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 24), &state64);
  *(*(a1 + 32) + 28) = state64 != 0;
  return [*(*(a1 + 32) + 16) LockScreenStateChanging:*(*(a1 + 32) + 28)];
}

@end