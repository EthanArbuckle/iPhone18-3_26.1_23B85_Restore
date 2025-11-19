@interface CAMetalDisplayLink
- (CAFrameRateRange)preferredFrameRateRange;
- (CAMetalDisplayLink)initWithMetalLayer:(CAMetalLayer *)layer;
- (id)_initWithMetalLinkItem:(void *)a3;
- (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode;
- (void)dealloc;
- (void)removeFromRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode;
- (void)setPreferredFrameLatency:(float)preferredFrameLatency;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange;
@end

@implementation CAMetalDisplayLink

- (CAFrameRateRange)preferredFrameRateRange
{
  impl = self->_impl;
  v3 = impl[19];
  v4 = impl[20];
  v5 = impl[21];
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange
{
  preferred = preferredFrameRateRange.preferred;
  maximum = preferredFrameRateRange.maximum;
  minimum = preferredFrameRateRange.minimum;
  if (!CAFrameRateRangeIsValid(preferredFrameRateRange.minimum, preferredFrameRateRange.maximum, preferredFrameRateRange.preferred))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid range (minimum: %.2f maximum: %.2f preferred: %.2f)", minimum, maximum, preferred];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  impl = self->_impl;
  v8 = minimum;
  v9 = maximum;
  v10 = preferred;

  CA::Display::DisplayLinkItem::set_preferred_fps_range(impl, *&v8, 1, 1);
}

- (void)setPreferredFrameLatency:(float)preferredFrameLatency
{
  if (CADeviceAllowMetalFrameInterpolation::once != -1)
  {
    dispatch_once(&CADeviceAllowMetalFrameInterpolation::once, &__block_literal_global_153);
  }

  v5 = 2.0;
  if (CADeviceAllowMetalFrameInterpolation::allowed)
  {
    v5 = 5.0;
  }

  if (floorf(preferredFrameLatency) == preferredFrameLatency && preferredFrameLatency >= 1.0 && v5 >= preferredFrameLatency)
  {
    *(self->_impl + 84) = preferredFrameLatency;
  }
}

- (void)removeFromRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode
{
  impl = self->_impl;
  v6 = [(NSRunLoop *)runloop getCFRunLoop];

  CA::Display::DisplayLinkItem::unschedule(impl, v6, mode);
}

- (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode
{
  impl = self->_impl;
  v6 = [(NSRunLoop *)runloop getCFRunLoop];

  CA::Display::DisplayLinkItem::schedule(impl, v6, mode);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CAMetalDisplayLink;
  [(CAMetalDisplayLink *)&v4 dealloc];
}

- (CAMetalDisplayLink)initWithMetalLayer:(CAMetalLayer *)layer
{
  v4 = *(*(layer->_priv + 2) + 48);
  if (v4)
  {
    v5 = *(*(v4 + 24) + 24);
  }

  else
  {
    v5 = 0;
  }

  if (CADisplayLookupFromDisplayId(v5))
  {
    operator new();
  }

  return 0;
}

- (id)_initWithMetalLinkItem:(void *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAMetalDisplayLink;
  v4 = [(CAMetalDisplayLink *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = a3;
    *(a3 + 32) = v4;
  }

  else if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  return v5;
}

@end