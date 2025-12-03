@interface ARDisplayLink
- (ARDisplayLink)init;
- (ARDisplayLink)initWithPreferredFramesPerSecond:(int64_t)second callback:(id)callback;
- (double)vsyncOffset;
- (int64_t)preferredFramesPerSecond;
- (void)_recomputeActualVsyncOffsetWithVsyncOffset:(double)offset preferredFramesPerSecond:(int64_t)second;
- (void)dealloc;
- (void)displayLinkCallback;
- (void)invalidate;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setVsyncOffset:(double)offset;
@end

@implementation ARDisplayLink

- (ARDisplayLink)initWithPreferredFramesPerSecond:(int64_t)second callback:(id)callback
{
  callbackCopy = callback;
  v20.receiver = self;
  v20.super_class = ARDisplayLink;
  v7 = [(ARDisplayLink *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [callbackCopy copy];
    callback = v8->_callback;
    v8->_callback = v9;

    v8->_currentFramesPerSecond = 0.0;
    v8->_preferredFramesPerSecond = second;
    v11 = [ARRunLoop alloc];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.arkit.ardisplaylink.%p", v8];
    v13 = [(ARRunLoop *)v11 initWithName:v12];
    runloop = v8->_runloop;
    v8->_runloop = v13;

    [(ARRunLoop *)v8->_runloop start];
    objc_initWeak(&location, v8);
    v15 = v8->_runloop;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__ARDisplayLink_initWithPreferredFramesPerSecond_callback___block_invoke;
    v17[3] = &unk_1E817C4E8;
    objc_copyWeak(v18, &location);
    v18[1] = second;
    [(ARRunLoop *)v15 runOnRunLoop:v17];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __59__ARDisplayLink_initWithPreferredFramesPerSecond_callback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v8 = [[_ARDisplayLinkHelper alloc] initWithDisplayLink:WeakRetained];
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:v8 selector:sel_callback_];
    v5 = v3[1];
    v3[1] = v4;

    v10 = CAFrameRateRangeMake(*(a1 + 40), *(a1 + 40), *(a1 + 40));
    [v3[1] setPreferredFrameRateRange:{*&v10.minimum, *&v10.maximum, *&v10.preferred}];
    v6 = v3[1];
    v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];
  }
}

- (ARDisplayLink)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[ARDisplayLink init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return [(ARDisplayLink *)self init];
}

- (void)dealloc
{
  [(ARDisplayLink *)self invalidate];
  v3.receiver = self;
  v3.super_class = ARDisplayLink;
  [(ARDisplayLink *)&v3 dealloc];
}

- (void)setVsyncOffset:(double)offset
{
  os_unfair_lock_lock(&self->_lock);
  self->_vsyncOffset = offset;
  [(ARDisplayLink *)self _recomputeActualVsyncOffsetWithVsyncOffset:self->_preferredFramesPerSecond preferredFramesPerSecond:offset];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)vsyncOffset
{
  os_unfair_lock_lock(&self->_lock);
  vsyncOffset = self->_vsyncOffset;
  os_unfair_lock_unlock(&self->_lock);
  return vsyncOffset;
}

- (int64_t)preferredFramesPerSecond
{
  os_unfair_lock_lock(&self->_lock);
  preferredFramesPerSecond = self->_preferredFramesPerSecond;
  os_unfair_lock_unlock(&self->_lock);
  return preferredFramesPerSecond;
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_preferredFramesPerSecond != second)
  {
    self->_preferredFramesPerSecond = second;
    v5 = self->_displayLink;
    runloop = self->_runloop;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __45__ARDisplayLink_setPreferredFramesPerSecond___block_invoke;
    v11 = &unk_1E817BDD8;
    v12 = v5;
    secondCopy = second;
    v7 = v5;
    [(ARRunLoop *)runloop runOnRunLoop:&v8];
    [(ARDisplayLink *)self _recomputeActualVsyncOffsetWithVsyncOffset:self->_preferredFramesPerSecond preferredFramesPerSecond:self->_vsyncOffset, v8, v9, v10, v11];
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __45__ARDisplayLink_setPreferredFramesPerSecond___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(*(a1 + 40), *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 setPreferredFrameRateRange:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

- (void)invalidate
{
  v3 = self->_displayLink;
  runloop = self->_runloop;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__ARDisplayLink_invalidate__block_invoke;
  v6[3] = &unk_1E817BFE8;
  v7 = v3;
  v5 = v3;
  [(ARRunLoop *)runloop runOnRunLoop:v6];
  [(ARRunLoop *)self->_runloop cancel];
}

- (void)_recomputeActualVsyncOffsetWithVsyncOffset:(double)offset preferredFramesPerSecond:(int64_t)second
{
  v5 = 1.0 / second;
  v6 = fmod(offset, v5);
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 + v6;
  }

  v8 = v7 - ARDispatchAfterLeewayForTimeInterval(v7);
  runloop = self->_runloop;
  v10[1] = 3221225472;
  v10[0] = MEMORY[0x1E69E9820];
  v10[2] = __85__ARDisplayLink__recomputeActualVsyncOffsetWithVsyncOffset_preferredFramesPerSecond___block_invoke;
  v10[3] = &unk_1E817BDD8;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v10[4] = self;
  *&v10[5] = v8;
  [(ARRunLoop *)runloop runOnRunLoop:v10];
}

double __85__ARDisplayLink__recomputeActualVsyncOffsetWithVsyncOffset_preferredFramesPerSecond___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (void)displayLinkCallback
{
  [(CADisplayLink *)self->_displayLink targetTimestamp];
  v4 = v3;
  [(CADisplayLink *)self->_displayLink timestamp];
  self->_currentFramesPerSecond = 1.0 / (v4 - v5);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E695DFF0];
  actualVsyncOffset = self->_actualVsyncOffset;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__ARDisplayLink_displayLinkCallback__block_invoke;
  v9[3] = &unk_1E817E078;
  objc_copyWeak(&v10, &location);
  v8 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:actualVsyncOffset];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __36__ARDisplayLink_displayLinkCallback__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained[2] + 16))();
  }

  [v4 invalidate];
}

@end