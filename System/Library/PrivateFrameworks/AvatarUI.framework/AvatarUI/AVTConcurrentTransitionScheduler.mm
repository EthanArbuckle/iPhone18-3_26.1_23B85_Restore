@interface AVTConcurrentTransitionScheduler
- (AVTConcurrentTransitionScheduler)initWithEventHandler:(id)handler delay:(double)delay;
- (void)scheduleEvent;
- (void)scheduleTransitionTimer;
- (void)stop;
@end

@implementation AVTConcurrentTransitionScheduler

- (AVTConcurrentTransitionScheduler)initWithEventHandler:(id)handler delay:(double)delay
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = AVTConcurrentTransitionScheduler;
  v7 = [(AVTConcurrentTransitionScheduler *)&v11 init];
  if (v7)
  {
    v8 = [handlerCopy copy];
    eventHandler = v7->_eventHandler;
    v7->_eventHandler = v8;

    v7->_delay = delay;
  }

  return v7;
}

- (void)scheduleEvent
{
  transitionTimer = [(AVTConcurrentTransitionScheduler *)self transitionTimer];

  if (!transitionTimer)
  {
    [(AVTConcurrentTransitionScheduler *)self scheduleTransitionTimer];
    eventHandler = [(AVTConcurrentTransitionScheduler *)self eventHandler];
    eventHandler[2]();
  }
}

- (void)stop
{
  transitionTimer = [(AVTConcurrentTransitionScheduler *)self transitionTimer];
  [transitionTimer invalidate];

  [(AVTConcurrentTransitionScheduler *)self setTransitionTimer:0];
}

- (void)scheduleTransitionTimer
{
  transitionTimer = [(AVTConcurrentTransitionScheduler *)self transitionTimer];

  if (transitionTimer)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Calling schedule transition timer while timer is already running" userInfo:0];
    [v4 raise];
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  [(AVTConcurrentTransitionScheduler *)self delay];
  v7 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__AVTConcurrentTransitionScheduler_scheduleTransitionTimer__block_invoke;
  v13 = &unk_1E7F3B938;
  objc_copyWeak(&v14, &location);
  v8 = [v5 timerWithTimeInterval:1 repeats:&v10 block:v7];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:v8 forMode:*MEMORY[0x1E695DA28]];

  [(AVTConcurrentTransitionScheduler *)self setTransitionTimer:v8];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __59__AVTConcurrentTransitionScheduler_scheduleTransitionTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventHandler];
  v1[2]();
}

@end