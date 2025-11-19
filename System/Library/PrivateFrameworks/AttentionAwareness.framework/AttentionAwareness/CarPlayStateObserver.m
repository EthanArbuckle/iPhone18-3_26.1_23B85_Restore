@interface CarPlayStateObserver
- (BOOL)getCarPlayState;
- (CarPlayStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4;
- (void)setCarPlayState:(BOOL)a3;
@end

@implementation CarPlayStateObserver

- (void)setCarPlayState:(BOOL)a3
{
  if (self->_carPlayConnected != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_carPlayConnected = a3;
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CarPlayStateObserver_setCarPlayState___block_invoke;
    block[3] = &unk_1E7F38038;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

- (BOOL)getCarPlayState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  callbackQueue = self->_callbackQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CarPlayStateObserver_getCarPlayState__block_invoke;
  v5[3] = &unk_1E7F37F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async(callbackQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__CarPlayStateObserver_getCarPlayState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) currentSession];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (CarPlayStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CarPlayStateObserver;
  v9 = [(CarPlayStateObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      __assert_rtn("[CarPlayStateObserver initWithCallbackQueue:observer:]", "CarPlayStateObserver.m", 26, "callbackQueue != nil");
    }

    if (!v8)
    {
      __assert_rtn("[CarPlayStateObserver initWithCallbackQueue:observer:]", "CarPlayStateObserver.m", 27, "observer != nil");
    }

    objc_storeStrong(&v9->_observer, a4);
    objc_storeStrong(&v10->_callbackQueue, a3);
    v10->_carPlayConnected = 0;
    v11 = objc_opt_new();
    carSessionStatus = v10->_carSessionStatus;
    v10->_carSessionStatus = v11;

    [(CARSessionStatus *)v10->_carSessionStatus addSessionObserver:v10];
    [(CarPlayStateObserver *)v10 setCarPlayState:[(CarPlayStateObserver *)v10 getCarPlayState]];
  }

  return v10;
}

@end