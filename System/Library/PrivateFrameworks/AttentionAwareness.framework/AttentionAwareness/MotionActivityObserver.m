@interface MotionActivityObserver
- (MotionActivityObserver)initWithCallbackQueue:(id)a3 observer:(id)a4;
@end

@implementation MotionActivityObserver

- (MotionActivityObserver)initWithCallbackQueue:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = MotionActivityObserver;
  v9 = [(MotionActivityObserver *)&v24 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      __assert_rtn("[MotionActivityObserver initWithCallbackQueue:observer:]", "MotionActivityObserver.m", 30, "callbackQueue != nil");
    }

    if (!v8)
    {
      __assert_rtn("[MotionActivityObserver initWithCallbackQueue:observer:]", "MotionActivityObserver.m", 31, "observer != nil");
    }

    objc_storeStrong(&v9->_callbackQueue, a3);
    objc_storeStrong(&v10->_observer, a4);
    v10->_isDeviceStationary = 0;
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    callbackQueue = v10->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MotionActivityObserver_initWithCallbackQueue_observer___block_invoke;
    block[3] = &unk_1E7F38038;
    v14 = v10;
    v23 = v14;
    dispatch_async(callbackQueue, block);
    v15 = objc_alloc_init(MEMORY[0x1E69634C0]);
    motionActivityManager = v14->_motionActivityManager;
    v14->_motionActivityManager = v15;

    v17 = v14->_motionActivityManager;
    v18 = v10->_operationQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__MotionActivityObserver_initWithCallbackQueue_observer___block_invoke_2;
    v20[3] = &unk_1E7F37B70;
    v21 = v14;
    [(CMMotionActivityManager *)v17 startActivityUpdatesToQueue:v18 withHandler:v20];
  }

  return v10;
}

void __57__MotionActivityObserver_initWithCallbackQueue_observer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MotionActivityObserver_initWithCallbackQueue_observer___block_invoke_3;
  v7[3] = &unk_1E7F38060;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __57__MotionActivityObserver_initWithCallbackQueue_observer___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  result = [*(a1 + 40) stationary];
  if (v2 != result)
  {
    *(*(a1 + 32) + 40) = [*(a1 + 40) stationary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);

    return [v5 MotionStateChanging:v6];
  }

  return result;
}

@end