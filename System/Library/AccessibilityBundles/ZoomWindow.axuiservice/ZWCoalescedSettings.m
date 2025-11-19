@interface ZWCoalescedSettings
+ (id)sharedInstance;
- (BOOL)zoomInStandby;
- (CGPoint)zoomPanOffset;
- (CGPoint)zoomSlugNormalizedPosition;
- (CGRect)zoomWindowFrame;
- (double)dockSize;
- (double)zoomFactor;
- (void)setDockSize:(double)a3;
- (void)setZoomFactor:(double)a3;
- (void)setZoomInStandby:(BOOL)a3;
- (void)setZoomPanOffset:(CGPoint)a3;
- (void)setZoomSlugNormalizedPosition:(CGPoint)a3;
- (void)setZoomWindowFrame:(CGRect)a3;
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
  v3 = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];
  v4 = [v3 isPending];

  if (v4)
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

- (void)setZoomWindowFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_cachedZoomLensFrame = a3;
  v8 = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];

  if (!v8)
  {
    v9 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomLensFrameUpdateTimer:v9];
    [v9 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v10 = [(ZWCoalescedSettings *)self zoomLensFrameUpdateTimer];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __42__ZWCoalescedSettings_setZoomWindowFrame___block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  *&v11[4] = x;
  *&v11[5] = y;
  *&v11[6] = width;
  *&v11[7] = height;
  [v10 afterDelay:v11 processBlock:1.0];
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
  v3 = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];
  v4 = [v3 isPending];

  if (v4)
  {
    return self->_cachedZoomFactor;
  }

  v6 = +[AXSettings sharedInstance];
  [v6 zoomScale];
  v8 = v7;

  return v8;
}

- (void)setZoomFactor:(double)a3
{
  self->_cachedZoomFactor = a3;
  v5 = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];

  if (!v5)
  {
    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomFactorUpdateTimer:v6];
    [v6 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v7 = [(ZWCoalescedSettings *)self zoomFactorUpdateTimer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __37__ZWCoalescedSettings_setZoomFactor___block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  *&v8[4] = a3;
  [v7 afterDelay:v8 processBlock:1.0];
}

void __37__ZWCoalescedSettings_setZoomFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v2 setZoomScale:v1];
}

- (double)dockSize
{
  v3 = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];
  v4 = [v3 isPending];

  if (v4)
  {
    return self->_cachedDockSize;
  }

  v6 = +[AXSettings sharedInstance];
  [v6 dockSize];
  v8 = v7;

  return v8;
}

- (void)setDockSize:(double)a3
{
  self->_cachedDockSize = a3;
  v5 = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];

  if (!v5)
  {
    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setDockSizeUpdateTimer:v6];
    [v6 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v7 = [(ZWCoalescedSettings *)self dockSizeUpdateTimer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __35__ZWCoalescedSettings_setDockSize___block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  *&v8[4] = a3;
  [v7 afterDelay:v8 processBlock:1.0];
}

void __35__ZWCoalescedSettings_setDockSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v2 setDockSize:v1];
}

- (void)setZoomInStandby:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setZoomInStandby:v3];
}

- (BOOL)zoomInStandby
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 zoomInStandby];

  return v3;
}

- (CGPoint)zoomPanOffset
{
  v3 = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];
  v4 = [v3 isPending];

  if (v4)
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

- (void)setZoomPanOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_cachedZoomPanOffset = a3;
  v6 = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];

  if (!v6)
  {
    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomPanOffsetUpdateTimer:v7];
    [v7 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v8 = [(ZWCoalescedSettings *)self zoomPanOffsetUpdateTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __40__ZWCoalescedSettings_setZoomPanOffset___block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  *&v9[4] = x;
  *&v9[5] = y;
  [v8 afterDelay:v9 processBlock:1.0];
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
  v3 = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];
  v4 = [v3 isPending];

  if (v4)
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

- (void)setZoomSlugNormalizedPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_cachedZoomSlugPosition = a3;
  v6 = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];

  if (!v6)
  {
    v7 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWCoalescedSettings *)self setZoomSlugPositionUpdateTimer:v7];
    [v7 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v8 = [(ZWCoalescedSettings *)self zoomSlugPositionUpdateTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__ZWCoalescedSettings_setZoomSlugNormalizedPosition___block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  *&v9[4] = x;
  *&v9[5] = y;
  [v8 afterDelay:v9 processBlock:1.0];
}

void __53__ZWCoalescedSettings_setZoomSlugNormalizedPosition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[AXSettings sharedInstance];
  [v3 setZoomSlugNormalizedPosition:{v1, v2}];
}

@end