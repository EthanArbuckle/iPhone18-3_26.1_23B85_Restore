@interface SCATPointerPointPicker
- (BOOL)_isWithinLastDwellBounds:(CGPoint)a3;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (CGPoint)delayedPickedPoint;
- (CGPoint)lastDwellStartPoint;
- (CGPoint)pickedPoint;
- (id)_initWithMenu:(id)a3;
- (void)_startDwellTimer;
- (void)cancelDwellTimer;
- (void)dealloc;
- (void)didSweepOverPoint:(CGPoint)a3;
- (void)moveToPoint:(CGPoint)a3;
- (void)pressFingersDown:(BOOL)a3;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
- (void)setDwellSwitchAssigned:(BOOL)a3;
- (void)setShouldTrackFocusContext:(BOOL)a3;
@end

@implementation SCATPointerPointPicker

- (id)_initWithMenu:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SCATPointerPointPicker;
  v5 = [(SCATPointPicker *)&v19 _initWithMenu:v4];
  if (v5)
  {
    v6 = [(SCATPointPickerViewController *)[SCATPointerPointPickerViewController alloc] initWithElementManager:v5 menu:v4];
    [v5 setVisualProvider:v6];
    v7 = +[NSMutableArray array];
    v8 = *(v5 + 15);
    *(v5 + 15) = v7;

    v9 = +[NSMutableArray array];
    v10 = *(v5 + 16);
    *(v5 + 16) = v9;

    *(v5 + 168) = HNDPointNull;
    v11 = +[AXSettings sharedInstance];
    [v11 switchControlCameraPointPickerDwellMovementToleranceRadius];
    *(v5 + 18) = v12;

    objc_initWeak(&location, v5);
    v13 = +[AXSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BB8CC;
    v16[3] = &unk_1001D3460;
    objc_copyWeak(&v17, &location);
    v14 = objc_loadWeakRetained(&location);
    [v13 registerUpdateBlock:v16 forRetrieveSelector:"switchControlCameraPointPickerDwellMovementToleranceRadius" withListener:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(SCATPointerPointPicker *)self cancelDwellTimer];
  v3.receiver = self;
  v3.super_class = SCATPointerPointPicker;
  [(SCATPointerPointPicker *)&v3 dealloc];
}

- (void)setShouldTrackFocusContext:(BOOL)a3
{
  if (self->_shouldTrackFocusContext != a3)
  {
    if (!a3)
    {
      [(SCATPointerPointPicker *)self setSweepFocusContext:0];
    }

    self->_shouldTrackFocusContext = a3;
  }
}

- (CGPoint)pickedPoint
{
  [(SCATPointerPointPicker *)self delayedPickedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)pressFingersDown:(BOOL)a3
{
  v3 = a3;
  v4 = [(SCATPointerPointPicker *)self controlViewController];
  [v4 pressFingersDown:v3];
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v5 scannerWillMakeManagerActive:a3];
  v4 = [(SCATPointerPointPicker *)self controlViewController];
  [v4 setShouldUpdateZoomLocation:1];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v6.receiver = self;
  v6.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:a3 forDisplayID:*&a4];
  v5 = [(SCATPointerPointPicker *)self controlViewController];
  [v5 setShouldUpdateZoomLocation:1];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  v6.receiver = self;
  v6.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v6 scannerWillMakeManagerInactive:a3 activeElementManager:a4];
  v5 = [(SCATPointerPointPicker *)self controlViewController];
  [v5 setShouldUpdateZoomLocation:0];
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v5 = [a3 action];
  if ((v5 - 100) > 9 || ((1 << (v5 - 100)) & 0x25F) == 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(SCATPointerPointPicker *)self controlViewController];
    [v7 pickPoint];

    v8 = 1;
  }

  [(SCATPointerPointPicker *)self cancelDwellTimer];
  v9 = +[SCATScannerManager sharedManager];
  v10 = [v9 selectActionHandler];
  v11 = [v10 isPending];

  if ((v11 & 1) == 0)
  {
    [v9 beginScanningWithFocusContext:0];
  }

  return v8;
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24.receiver = self;
  v24.super_class = SCATPointerPointPicker;
  [(SCATPointPicker *)&v24 moveToPoint:?];
  v6 = [(SCATPointerPointPicker *)self controlViewController];
  [v6 moveToPoint:{x, y}];

  v7 = [(SCATPointerPointPicker *)self historyOfPoints];
  v8 = [NSValue valueWithPoint:x, y];
  [v7 addObject:v8];

  v9 = [(SCATPointerPointPicker *)self historyOfTimestamps];
  v10 = +[NSDate date];
  [v9 addObject:v10];

  v11 = [(SCATPointerPointPicker *)self historyOfPoints];
  v12 = [v11 count];

  if (v12)
  {
    do
    {
      v13 = +[NSDate date];
      v14 = [(SCATPointerPointPicker *)self historyOfTimestamps];
      v15 = [v14 firstObject];
      [v13 timeIntervalSinceDate:v15];
      v17 = v16;

      if (v17 <= 0.1)
      {
        break;
      }

      v18 = [(SCATPointerPointPicker *)self historyOfPoints];
      v19 = [v18 firstObject];

      v20 = [(SCATPointerPointPicker *)self historyOfPoints];
      [v20 removeObjectAtIndex:0];

      v21 = [(SCATPointerPointPicker *)self historyOfTimestamps];
      [v21 removeObjectAtIndex:0];

      [v19 pointValue];
      [(SCATPointerPointPicker *)self setDelayedPickedPoint:?];

      v22 = [(SCATPointerPointPicker *)self historyOfPoints];
      v23 = [v22 count];
    }

    while (v23);
  }

  if ([(SCATPointerPointPicker *)self shouldTrackFocusContext])
  {
    [(SCATPointerPointPicker *)self didSweepOverPoint:x, y];
  }

  if ([(SCATPointerPointPicker *)self dwellSwitchAssigned])
  {
    [(SCATPointerPointPicker *)self _startDwellTimer];
  }
}

- (void)didSweepOverPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[SCATScannerManager sharedManager];
  v25 = [v6 scatUIContextForDisplayID:{-[SCATPointPicker currentDisplayID](self, "currentDisplayID")}];

  [HNDScreen convertPoint:v25 fromView:x, y];
  v8 = v7;
  v10 = v9;
  v11 = [(SCATPointerPointPicker *)self sweepFocusContext];
  v12 = [v11 containsPoint:{v8, v10}];

  if ((v12 & 1) == 0)
  {
    v13 = [(SCATPointerPointPicker *)self sweepFocusContext];

    if (v13)
    {
      v14 = [(SCATPointPicker *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(SCATPointPicker *)self delegate];
        v17 = [(SCATPointerPointPicker *)self sweepFocusContext];
        [v16 pointPicker:self didSweepOutOfFocusContext:v17 isRefiningPoint:{-[SCATPointPicker isRefiningPoint](self, "isRefiningPoint")}];

        [(SCATPointerPointPicker *)self setSweepFocusContext:0];
      }
    }

    v18 = +[HNDAccessibilityManager sharedManager];
    v19 = [v18 elementAtPoint:{v8, v10}];

    if (v19)
    {
      v20 = +[SCATScannerManager sharedManager];
      v21 = [v20 activeElementManager];
      v22 = [SCATFocusContext focusContextWithElement:v19 elementManager:v21 selectBehavior:0 options:0];

      [(SCATPointerPointPicker *)self setSweepFocusContext:v22];
      v23 = [(SCATPointPicker *)self delegate];
      LOBYTE(v21) = objc_opt_respondsToSelector();

      if (v21)
      {
        v24 = [(SCATPointPicker *)self delegate];
        [v24 pointPicker:self didSweepIntoFocusContext:v22 isRefiningPoint:{-[SCATPointPicker isRefiningPoint](self, "isRefiningPoint")}];
      }
    }

    else
    {
      [(SCATPointerPointPicker *)self setSweepFocusContext:0];
    }
  }
}

- (void)setDwellSwitchAssigned:(BOOL)a3
{
  if (self->_dwellSwitchAssigned && !a3)
  {
    [(SCATPointerPointPicker *)self cancelDwellTimer];
  }

  self->_dwellSwitchAssigned = a3;
}

- (BOOL)_isWithinLastDwellBounds:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SCATPointerPointPicker *)self lastDwellStartPoint];
  v8 = v7 == -1.0 && v6 == -1.0;
  result = 0;
  if (!v8)
  {
    [(SCATPointerPointPicker *)self cachedToleranceRadius];
    v10 = v9;
    [(SCATPointerPointPicker *)self lastDwellStartPoint];
    if (vabdd_f64(x, v11) < v10)
    {
      [(SCATPointerPointPicker *)self lastDwellStartPoint];
      if (vabdd_f64(y, v12) < v10)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)_startDwellTimer
{
  if ([(SCATPointerPointPicker *)self dwellSwitchAssigned])
  {
    v3 = [(SCATPointerPointPicker *)self controlViewController];
    [v3 currentPoint];
    v5 = v4;
    v7 = v6;

    if (![(SCATPointerPointPicker *)self _isWithinLastDwellBounds:v5, v7])
    {
      [(SCATPointerPointPicker *)self cancelDwellTimer];
      [(SCATPointerPointPicker *)self setLastDwellStartPoint:v5, v7];
      v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(SCATPointerPointPicker *)self setDwellTimer:v8];

      v9 = [(SCATPointerPointPicker *)self dwellTimer];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BC2FC;
      v11[3] = &unk_1001D3488;
      v11[4] = self;
      [v9 afterDelay:v11 processBlock:0 cancelBlock:0.25];
    }
  }

  else
  {
    v10 = ASTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10012AD54(v10);
    }
  }
}

- (void)cancelDwellTimer
{
  [(SCATPointerPointPicker *)self setLastDwellStartPoint:-1.0, -1.0];
  v3 = [(SCATPointerPointPicker *)self dwellTimer];
  [v3 cancel];

  AXPerformBlockOnMainThread();
}

- (CGPoint)delayedPickedPoint
{
  x = self->_delayedPickedPoint.x;
  y = self->_delayedPickedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastDwellStartPoint
{
  x = self->_lastDwellStartPoint.x;
  y = self->_lastDwellStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end