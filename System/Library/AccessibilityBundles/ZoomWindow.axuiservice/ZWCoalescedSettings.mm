@interface ZWCoalescedSettings
+ (id)sharedInstance;
- (BOOL)zoomInStandby;
- (CGPoint)zoomPanOffset;
- (CGPoint)zoomSlugNormalizedPosition;
- (CGRect)zoomWindowFrame;
- (double)dockSize;
- (double)zoomFactor;
- (void)setDockSize:(double)size;
- (void)setZoomFactor:(double)factor;
- (void)setZoomInStandby:(BOOL)standby;
- (void)setZoomPanOffset:(CGPoint)offset;
- (void)setZoomSlugNormalizedPosition:(CGPoint)position;
- (void)setZoomWindowFrame:(CGRect)frame;
@end

@implementation ZWCoalescedSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ZWCoalescedSettings sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

void __37__ZWCoalescedSettings_sharedInstance__block_invoke(id a1)
{
  sharedInstance__Shared = objc_opt_new();

  _objc_release_x1();
}

- (CGRect)zoomWindowFrame
{
  zoomLensFrameUpdateTimer = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];
  isPending = [zoomLensFrameUpdateTimer isPending];

  if (isPending)
  {
    x = self->_cachedZoomLensFrame.origin.x;
    y = self->_cachedZoomLensFrame.origin.y;
    width = self->_cachedZoomLensFrame.size.width;
    height = self->_cachedZoomLensFrame.size.height;
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    [v9 zoomWindowFrame];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setZoomWindowFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_cachedZoomLensFrame = frame;
  zoomLensFrameUpdateTimer = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];

  if (!zoomLensFrameUpdateTimer)
  {
    v9 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomLensFrameUpdateTimer:v9];
    [v9 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  zoomLensFrameUpdateTimer2 = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __42__ZWCoalescedSettings_setZoomWindowFrame___block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  *&v11[4] = x;
  *&v11[5] = y;
  *&v11[6] = width;
  *&v11[7] = height;
  [zoomLensFrameUpdateTimer2 afterDelay:v11 processBlock:1.0];
}

void __42__ZWCoalescedSettings_setZoomWindowFrame___block_invoke(double *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomWindowFrame:{v1, v2, v3, v4}];
}

- (double)zoomFactor
{
  zoomFactorUpdateTimer = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];
  isPending = [zoomFactorUpdateTimer isPending];

  if (isPending)
  {
    return self->_cachedZoomFactor;
  }

  v6 = +[AXSettings sharedInstance];
  [v6 zoomScale];
  v8 = v7;

  return v8;
}

- (void)setZoomFactor:(double)factor
{
  self->_cachedZoomFactor = factor;
  zoomFactorUpdateTimer = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];

  if (!zoomFactorUpdateTimer)
  {
    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomFactorUpdateTimer:v6];
    [v6 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  zoomFactorUpdateTimer2 = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __37__ZWCoalescedSettings_setZoomFactor___block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  *&v8[4] = factor;
  [zoomFactorUpdateTimer2 afterDelay:v8 processBlock:1.0];
}

void __37__ZWCoalescedSettings_setZoomFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v2 setZoomScale:v1];
}

- (double)dockSize
{
  dockSizeUpdateTimer = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];
  isPending = [dockSizeUpdateTimer isPending];

  if (isPending)
  {
    return self->_cachedDockSize;
  }

  v6 = +[AXSettings sharedInstance];
  [v6 dockSize];
  v8 = v7;

  return v8;
}

- (void)setDockSize:(double)size
{
  self->_cachedDockSize = size;
  dockSizeUpdateTimer = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];

  if (!dockSizeUpdateTimer)
  {
    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setDockSizeUpdateTimer:v6];
    [v6 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  dockSizeUpdateTimer2 = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __35__ZWCoalescedSettings_setDockSize___block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  *&v8[4] = size;
  [dockSizeUpdateTimer2 afterDelay:v8 processBlock:1.0];
}

void __35__ZWCoalescedSettings_setDockSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v2 setDockSize:v1];
}

- (void)setZoomInStandby:(BOOL)standby
{
  standbyCopy = standby;
  v4 = +[AXSettings sharedInstance];
  [v4 setZoomInStandby:standbyCopy];
}

- (BOOL)zoomInStandby
{
  v2 = +[AXSettings sharedInstance];
  zoomInStandby = [v2 zoomInStandby];

  return zoomInStandby;
}

- (CGPoint)zoomPanOffset
{
  zoomPanOffsetUpdateTimer = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];
  isPending = [zoomPanOffsetUpdateTimer isPending];

  if (isPending)
  {
    x = self->_cachedZoomPanOffset.x;
    y = self->_cachedZoomPanOffset.y;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    [v7 zoomPanOffset];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setZoomPanOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  self->_cachedZoomPanOffset = offset;
  zoomPanOffsetUpdateTimer = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];

  if (!zoomPanOffsetUpdateTimer)
  {
    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomPanOffsetUpdateTimer:v7];
    [v7 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  zoomPanOffsetUpdateTimer2 = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __40__ZWCoalescedSettings_setZoomPanOffset___block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  *&v9[4] = x;
  *&v9[5] = y;
  [zoomPanOffsetUpdateTimer2 afterDelay:v9 processBlock:1.0];
}

void __40__ZWCoalescedSettings_setZoomPanOffset___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[AXSettings sharedInstance];
  [v3 setZoomPanOffset:{v1, v2}];
}

- (CGPoint)zoomSlugNormalizedPosition
{
  zoomSlugPositionUpdateTimer = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];
  isPending = [zoomSlugPositionUpdateTimer isPending];

  if (isPending)
  {
    x = self->_cachedZoomSlugPosition.x;
    y = self->_cachedZoomSlugPosition.y;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    [v7 zoomSlugNormalizedPosition];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setZoomSlugNormalizedPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  self->_cachedZoomSlugPosition = position;
  zoomSlugPositionUpdateTimer = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];

  if (!zoomSlugPositionUpdateTimer)
  {
    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomSlugPositionUpdateTimer:v7];
    [v7 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  zoomSlugPositionUpdateTimer2 = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__ZWCoalescedSettings_setZoomSlugNormalizedPosition___block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  *&v9[4] = x;
  *&v9[5] = y;
  [zoomSlugPositionUpdateTimer2 afterDelay:v9 processBlock:1.0];
}

void __53__ZWCoalescedSettings_setZoomSlugNormalizedPosition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[AXSettings sharedInstance];
  [v3 setZoomSlugNormalizedPosition:{v1, v2}];
}

@end