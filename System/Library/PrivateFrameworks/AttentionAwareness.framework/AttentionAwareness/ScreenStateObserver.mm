@interface ScreenStateObserver
- (ScreenStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4;
- (void)backlight:(id)a3 performingEvent:(id)a4;
@end

@implementation ScreenStateObserver

- (void)backlight:(id)a3 performingEvent:(id)a4
{
  [a4 state];
  IsActive = BLSBacklightStateIsActive();
  if (self->_displayState != IsActive)
  {
    self->_displayState = IsActive;
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__ScreenStateObserver_backlight_performingEvent___block_invoke;
    block[3] = &unk_1E7F38038;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

- (ScreenStateObserver)initWithCallbackQueue:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ScreenStateObserver;
  v9 = [(ScreenStateObserver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      __assert_rtn("[ScreenStateObserver initWithCallbackQueue:observer:]", "ScreenStateObserver.m", 28, "callbackQueue != nil");
    }

    if (!v8)
    {
      __assert_rtn("[ScreenStateObserver initWithCallbackQueue:observer:]", "ScreenStateObserver.m", 29, "observer != nil");
    }

    objc_storeStrong(&v9->_observer, a4);
    objc_storeStrong(&v10->_callbackQueue, a3);
    v11 = dispatch_queue_create("com.apple.AttentionAwareness.BacklightServices.Observer", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    v10->_displayState = 1;
    v13 = [MEMORY[0x1E698E520] sharedBacklight];
    [v13 addObserver:v10];

    callbackQueue = v10->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__ScreenStateObserver_initWithCallbackQueue_observer___block_invoke;
    block[3] = &unk_1E7F38038;
    v17 = v10;
    dispatch_async(callbackQueue, block);
  }

  return v10;
}

@end