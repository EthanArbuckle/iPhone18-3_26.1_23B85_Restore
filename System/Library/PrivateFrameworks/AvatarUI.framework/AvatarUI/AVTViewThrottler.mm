@interface AVTViewThrottler
- (AVTDeviceResourceConsumerDelegate)consumerDelegate;
- (AVTViewThrottler)initWithAVTView:(id)a3 environment:(id)a4;
- (void)applyThrottling;
- (void)autoUnthrottle;
- (void)cancelAutoUnthrottling;
- (void)dealloc;
- (void)releaseRenderingResourceForEstimatedDuration:(double)a3;
- (void)scheduleAutoUnthrottlingAfterDelay:(double)a3;
- (void)throttle;
- (void)throttleForDelay:(double)a3;
- (void)unthrottle;
@end

@implementation AVTViewThrottler

- (AVTViewThrottler)initWithAVTView:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVTViewThrottler;
  v9 = [(AVTViewThrottler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avtView, a3);
    v11 = [v8 logger];
    logger = v10->_logger;
    v10->_logger = v11;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(AVTViewThrottler *)self autoUnthrottlingTimer];
  [v3 invalidate];

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
  v3 = [(AVTViewThrottler *)self autoUnthrottlingTimer];

  if (v3)
  {
    v4 = [(AVTViewThrottler *)self autoUnthrottlingTimer];
    [v4 invalidate];

    [(AVTViewThrottler *)self setAutoUnthrottlingTimer:0];
  }
}

- (void)throttleForDelay:(double)a3
{
  if (![(AVTViewThrottler *)self throttling]|| ([(AVTViewThrottler *)self autoUnthrottlingTimer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [(AVTViewThrottler *)self applyThrottling];

    [(AVTViewThrottler *)self scheduleAutoUnthrottlingAfterDelay:a3];
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
    v3 = [(AVTViewThrottler *)self logger];
    [v3 logThrottlingAVTView];

    v4 = [(AVTViewThrottler *)self avtView];
    [v4 setPreferredFramesPerSecond:30];

    v6 = [(AVTViewThrottler *)self avtView];
    v5 = [v6 faceTracker];
    [v5 decreaseFrameRate];
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
    v3 = [(AVTViewThrottler *)self logger];
    [v3 logUnthrottlingAVTView];

    v4 = [(AVTViewThrottler *)self consumerDelegate];
    [v4 consumer:self willConsumeRenderingResourceForEstimatedDuration:0.0];

    v5 = [(AVTViewThrottler *)self avtView];
    [v5 setPreferredFramesPerSecond:0];

    v7 = [(AVTViewThrottler *)self avtView];
    v6 = [v7 faceTracker];
    [v6 increaseFrameRateToMaximum];
  }
}

- (void)scheduleAutoUnthrottlingAfterDelay:(double)a3
{
  [(AVTViewThrottler *)self cancelAutoUnthrottling];
  if (a3 > 0.0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695DFF0];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __55__AVTViewThrottler_scheduleAutoUnthrottlingAfterDelay___block_invoke;
    v10 = &unk_1E7F3B938;
    objc_copyWeak(&v11, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v7 block:a3];
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

- (void)releaseRenderingResourceForEstimatedDuration:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__AVTViewThrottler_releaseRenderingResourceForEstimatedDuration___block_invoke;
  v3[3] = &unk_1E7F3C300;
  v3[4] = self;
  *&v3[5] = a3;
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