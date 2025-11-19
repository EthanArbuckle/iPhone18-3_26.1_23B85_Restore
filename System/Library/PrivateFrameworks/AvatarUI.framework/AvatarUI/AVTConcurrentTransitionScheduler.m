@interface AVTConcurrentTransitionScheduler
- (AVTConcurrentTransitionScheduler)initWithEventHandler:(id)a3 delay:(double)a4;
- (void)scheduleEvent;
- (void)scheduleTransitionTimer;
- (void)stop;
@end

@implementation AVTConcurrentTransitionScheduler

- (AVTConcurrentTransitionScheduler)initWithEventHandler:(id)a3 delay:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AVTConcurrentTransitionScheduler;
  v7 = [(AVTConcurrentTransitionScheduler *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    eventHandler = v7->_eventHandler;
    v7->_eventHandler = v8;

    v7->_delay = a4;
  }

  return v7;
}

- (void)scheduleEvent
{
  v3 = [(AVTConcurrentTransitionScheduler *)self transitionTimer];

  if (!v3)
  {
    [(AVTConcurrentTransitionScheduler *)self scheduleTransitionTimer];
    v4 = [(AVTConcurrentTransitionScheduler *)self eventHandler];
    v4[2]();
  }
}

- (void)stop
{
  v3 = [(AVTConcurrentTransitionScheduler *)self transitionTimer];
  [v3 invalidate];

  [(AVTConcurrentTransitionScheduler *)self setTransitionTimer:0];
}

- (void)scheduleTransitionTimer
{
  v3 = [(AVTConcurrentTransitionScheduler *)self transitionTimer];

  if (v3)
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
  v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v9 addTimer:v8 forMode:*MEMORY[0x1E695DA28]];

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