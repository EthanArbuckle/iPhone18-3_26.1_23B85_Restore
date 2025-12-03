@interface AVTViewThrottler
- (AVTDeviceResourceConsumerDelegate)consumerDelegate;
- (AVTViewThrottler)initWithAVTView:(id)view environment:(id)environment;
- (void)applyThrottling;
- (void)autoUnthrottle;
- (void)cancelAutoUnthrottling;
- (void)dealloc;
- (void)releaseRenderingResourceForEstimatedDuration:(double)duration;
- (void)scheduleAutoUnthrottlingAfterDelay:(double)delay;
- (void)throttle;
- (void)throttleForDelay:(double)delay;
- (void)unthrottle;
@end

@implementation AVTViewThrottler

- (AVTViewThrottler)initWithAVTView:(id)view environment:(id)environment
{
  viewCopy = view;
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = AVTViewThrottler;
  v9 = [(AVTViewThrottler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avtView, view);
    logger = [environmentCopy logger];
    logger = v10->_logger;
    v10->_logger = logger;
  }

  return v10;
}

- (void)dealloc
{
  autoUnthrottlingTimer = [(AVTViewThrottler *)self autoUnthrottlingTimer];
  [autoUnthrottlingTimer invalidate];

  v4.receiver = self;
  v4.super_class = AVTViewThrottler;
  [(AVTViewThrottler *)&v4 dealloc];
}

- (void)throttle
{
  [(AVTViewThrottler *)self cancelAutoUnthrottling];

  [(AVTViewThrottler *)self applyThrottling];
}

- (void)cancelAutoUnthrottling
{
  autoUnthrottlingTimer = [(AVTViewThrottler *)self autoUnthrottlingTimer];

  if (autoUnthrottlingTimer)
  {
    autoUnthrottlingTimer2 = [(AVTViewThrottler *)self autoUnthrottlingTimer];
    [autoUnthrottlingTimer2 invalidate];

    [(AVTViewThrottler *)self setAutoUnthrottlingTimer:0];
  }
}

- (void)throttleForDelay:(double)delay
{
  if (![(AVTViewThrottler *)self throttling]|| ([(AVTViewThrottler *)self autoUnthrottlingTimer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [(AVTViewThrottler *)self applyThrottling];

    [(AVTViewThrottler *)self scheduleAutoUnthrottlingAfterDelay:delay];
  }
}

- (void)applyThrottling
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Only call from main thread"];
  }

  if (![(AVTViewThrottler *)self throttling])
  {
    [(AVTViewThrottler *)self setThrottling:1];
    logger = [(AVTViewThrottler *)self logger];
    [logger logThrottlingAVTView];

    avtView = [(AVTViewThrottler *)self avtView];
    [avtView setPreferredFramesPerSecond:30];

    avtView2 = [(AVTViewThrottler *)self avtView];
    faceTracker = [avtView2 faceTracker];
    [faceTracker decreaseFrameRate];
  }
}

- (void)unthrottle
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Only call from main thread"];
  }

  [(AVTViewThrottler *)self cancelAutoUnthrottling];
  if ([(AVTViewThrottler *)self throttling])
  {
    [(AVTViewThrottler *)self setThrottling:0];
    logger = [(AVTViewThrottler *)self logger];
    [logger logUnthrottlingAVTView];

    consumerDelegate = [(AVTViewThrottler *)self consumerDelegate];
    [consumerDelegate consumer:self willConsumeRenderingResourceForEstimatedDuration:0.0];

    avtView = [(AVTViewThrottler *)self avtView];
    [avtView setPreferredFramesPerSecond:0];

    avtView2 = [(AVTViewThrottler *)self avtView];
    faceTracker = [avtView2 faceTracker];
    [faceTracker increaseFrameRateToMaximum];
  }
}

- (void)scheduleAutoUnthrottlingAfterDelay:(double)delay
{
  [(AVTViewThrottler *)self cancelAutoUnthrottling];
  if (delay > 0.0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695DFF0];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __55__AVTViewThrottler_scheduleAutoUnthrottlingAfterDelay___block_invoke;
    v10 = &unk_1E7F3B938;
    objc_copyWeak(&v11, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v7 block:delay];
    [(AVTViewThrottler *)self setAutoUnthrottlingTimer:v6, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __55__AVTViewThrottler_scheduleAutoUnthrottlingAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained autoUnthrottle];
}

- (void)autoUnthrottle
{
  [(AVTViewThrottler *)self setAutoUnthrottlingTimer:0];

  [(AVTViewThrottler *)self unthrottle];
}

- (void)releaseRenderingResourceForEstimatedDuration:(double)duration
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__AVTViewThrottler_releaseRenderingResourceForEstimatedDuration___block_invoke;
  v3[3] = &unk_1E7F3C300;
  v3[4] = self;
  *&v3[5] = duration;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __65__AVTViewThrottler_releaseRenderingResourceForEstimatedDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) consumerDelegate];

  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40) == 0.0)
    {

      [v3 throttle];
    }

    else
    {

      [v3 throttleForDelay:?];
    }
  }
}

- (AVTDeviceResourceConsumerDelegate)consumerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_consumerDelegate);

  return WeakRetained;
}

@end