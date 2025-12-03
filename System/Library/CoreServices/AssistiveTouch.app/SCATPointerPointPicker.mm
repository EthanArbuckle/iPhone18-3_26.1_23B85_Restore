@interface SCATPointerPointPicker
- (BOOL)_isWithinLastDwellBounds:(CGPoint)bounds;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (CGPoint)delayedPickedPoint;
- (CGPoint)lastDwellStartPoint;
- (CGPoint)pickedPoint;
- (id)_initWithMenu:(id)menu;
- (void)_startDwellTimer;
- (void)cancelDwellTimer;
- (void)dealloc;
- (void)didSweepOverPoint:(CGPoint)point;
- (void)moveToPoint:(CGPoint)point;
- (void)pressFingersDown:(BOOL)down;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
- (void)setDwellSwitchAssigned:(BOOL)assigned;
- (void)setShouldTrackFocusContext:(BOOL)context;
@end

@implementation SCATPointerPointPicker

- (id)_initWithMenu:(id)menu
{
  menuCopy = menu;
  v19.receiver = self;
  v19.super_class = SCATPointerPointPicker;
  v5 = [(SCATPointPicker *)&v19 _initWithMenu:menuCopy];
  if (v5)
  {
    v6 = [(SCATPointPickerViewController *)[SCATPointerPointPickerViewController alloc] initWithElementManager:v5 menu:menuCopy];
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

- (void)setShouldTrackFocusContext:(BOOL)context
{
  if (self->_shouldTrackFocusContext != context)
  {
    if (!context)
    {
      [(SCATPointerPointPicker *)self setSweepFocusContext:0];
    }

    self->_shouldTrackFocusContext = context;
  }
}

- (CGPoint)pickedPoint
{
  [(SCATPointerPointPicker *)self delayedPickedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)pressFingersDown:(BOOL)down
{
  downCopy = down;
  controlViewController = [(SCATPointerPointPicker *)self controlViewController];
  [controlViewController pressFingersDown:downCopy];
}

- (void)scannerWillMakeManagerActive:(id)active
{
  v5.receiver = self;
  v5.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v5 scannerWillMakeManagerActive:active];
  controlViewController = [(SCATPointerPointPicker *)self controlViewController];
  [controlViewController setShouldUpdateZoomLocation:1];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v6.receiver = self;
  v6.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:active forDisplayID:*&d];
  controlViewController = [(SCATPointerPointPicker *)self controlViewController];
  [controlViewController setShouldUpdateZoomLocation:1];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = SCATPointerPointPicker;
  [(SCATElementManager *)&v6 scannerWillMakeManagerInactive:inactive activeElementManager:manager];
  controlViewController = [(SCATPointerPointPicker *)self controlViewController];
  [controlViewController setShouldUpdateZoomLocation:0];
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  action = [action action];
  if ((action - 100) > 9 || ((1 << (action - 100)) & 0x25F) == 0)
  {
    v8 = 0;
  }

  else
  {
    controlViewController = [(SCATPointerPointPicker *)self controlViewController];
    [controlViewController pickPoint];

    v8 = 1;
  }

  [(SCATPointerPointPicker *)self cancelDwellTimer];
  v9 = +[SCATScannerManager sharedManager];
  selectActionHandler = [v9 selectActionHandler];
  isPending = [selectActionHandler isPending];

  if ((isPending & 1) == 0)
  {
    [v9 beginScanningWithFocusContext:0];
  }

  return v8;
}

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v24.receiver = self;
  v24.super_class = SCATPointerPointPicker;
  [(SCATPointPicker *)&v24 moveToPoint:?];
  controlViewController = [(SCATPointerPointPicker *)self controlViewController];
  [controlViewController moveToPoint:{x, y}];

  historyOfPoints = [(SCATPointerPointPicker *)self historyOfPoints];
  v8 = [NSValue valueWithPoint:x, y];
  [historyOfPoints addObject:v8];

  historyOfTimestamps = [(SCATPointerPointPicker *)self historyOfTimestamps];
  v10 = +[NSDate date];
  [historyOfTimestamps addObject:v10];

  historyOfPoints2 = [(SCATPointerPointPicker *)self historyOfPoints];
  v12 = [historyOfPoints2 count];

  if (v12)
  {
    do
    {
      v13 = +[NSDate date];
      historyOfTimestamps2 = [(SCATPointerPointPicker *)self historyOfTimestamps];
      firstObject = [historyOfTimestamps2 firstObject];
      [v13 timeIntervalSinceDate:firstObject];
      v17 = v16;

      if (v17 <= 0.1)
      {
        break;
      }

      historyOfPoints3 = [(SCATPointerPointPicker *)self historyOfPoints];
      firstObject2 = [historyOfPoints3 firstObject];

      historyOfPoints4 = [(SCATPointerPointPicker *)self historyOfPoints];
      [historyOfPoints4 removeObjectAtIndex:0];

      historyOfTimestamps3 = [(SCATPointerPointPicker *)self historyOfTimestamps];
      [historyOfTimestamps3 removeObjectAtIndex:0];

      [firstObject2 pointValue];
      [(SCATPointerPointPicker *)self setDelayedPickedPoint:?];

      historyOfPoints5 = [(SCATPointerPointPicker *)self historyOfPoints];
      v23 = [historyOfPoints5 count];
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

- (void)didSweepOverPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[SCATScannerManager sharedManager];
  v25 = [v6 scatUIContextForDisplayID:{-[SCATPointPicker currentDisplayID](self, "currentDisplayID")}];

  [HNDScreen convertPoint:v25 fromView:x, y];
  v8 = v7;
  v10 = v9;
  sweepFocusContext = [(SCATPointerPointPicker *)self sweepFocusContext];
  v12 = [sweepFocusContext containsPoint:{v8, v10}];

  if ((v12 & 1) == 0)
  {
    sweepFocusContext2 = [(SCATPointerPointPicker *)self sweepFocusContext];

    if (sweepFocusContext2)
    {
      delegate = [(SCATPointPicker *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(SCATPointPicker *)self delegate];
        sweepFocusContext3 = [(SCATPointerPointPicker *)self sweepFocusContext];
        [delegate2 pointPicker:self didSweepOutOfFocusContext:sweepFocusContext3 isRefiningPoint:{-[SCATPointPicker isRefiningPoint](self, "isRefiningPoint")}];

        [(SCATPointerPointPicker *)self setSweepFocusContext:0];
      }
    }

    v18 = +[HNDAccessibilityManager sharedManager];
    v19 = [v18 elementAtPoint:{v8, v10}];

    if (v19)
    {
      v20 = +[SCATScannerManager sharedManager];
      activeElementManager = [v20 activeElementManager];
      v22 = [SCATFocusContext focusContextWithElement:v19 elementManager:activeElementManager selectBehavior:0 options:0];

      [(SCATPointerPointPicker *)self setSweepFocusContext:v22];
      delegate3 = [(SCATPointPicker *)self delegate];
      LOBYTE(activeElementManager) = objc_opt_respondsToSelector();

      if (activeElementManager)
      {
        delegate4 = [(SCATPointPicker *)self delegate];
        [delegate4 pointPicker:self didSweepIntoFocusContext:v22 isRefiningPoint:{-[SCATPointPicker isRefiningPoint](self, "isRefiningPoint")}];
      }
    }

    else
    {
      [(SCATPointerPointPicker *)self setSweepFocusContext:0];
    }
  }
}

- (void)setDwellSwitchAssigned:(BOOL)assigned
{
  if (self->_dwellSwitchAssigned && !assigned)
  {
    [(SCATPointerPointPicker *)self cancelDwellTimer];
  }

  self->_dwellSwitchAssigned = assigned;
}

- (BOOL)_isWithinLastDwellBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
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
    controlViewController = [(SCATPointerPointPicker *)self controlViewController];
    [controlViewController currentPoint];
    v5 = v4;
    v7 = v6;

    if (![(SCATPointerPointPicker *)self _isWithinLastDwellBounds:v5, v7])
    {
      [(SCATPointerPointPicker *)self cancelDwellTimer];
      [(SCATPointerPointPicker *)self setLastDwellStartPoint:v5, v7];
      v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(SCATPointerPointPicker *)self setDwellTimer:v8];

      dwellTimer = [(SCATPointerPointPicker *)self dwellTimer];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BC2FC;
      v11[3] = &unk_1001D3488;
      v11[4] = self;
      [dwellTimer afterDelay:v11 processBlock:0 cancelBlock:0.25];
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
  dwellTimer = [(SCATPointerPointPicker *)self dwellTimer];
  [dwellTimer cancel];

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