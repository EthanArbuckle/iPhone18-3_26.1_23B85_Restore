@interface FKAGestureViewController
- (BOOL)isPerformingGesture;
- (CGPoint)_convertedPointToGestureView:(CGPoint)a3;
- (FKAGestureViewController)initWithDisplayUUID:(id)a3;
- (id)_fingerModelsForFingerControllerPoint:(CGPoint)a3 numberOfFingers:(unint64_t)a4;
- (void)_beginPinchOrRotateFromPoint:(CGPoint)a3 type:(int64_t)a4 pinchGestureSpeed:(double)a5 angleUpdateMultiplier:(double)a6;
- (void)_cancelGestureIfNecessary;
- (void)_cleanUpExistingIncrementalGesture;
- (void)begin3DTouchAtPoint:(CGPoint)a3;
- (void)beginPinchInFromPoint:(CGPoint)a3;
- (void)beginPinchOutFromPoint:(CGPoint)a3;
- (void)beginRotateLeftFromPoint:(CGPoint)a3;
- (void)beginRotateRightFromPoint:(CGPoint)a3;
- (void)beginSwipeFromPoint:(CGPoint)a3 inDirection:(int64_t)a4 numberOfFingers:(unint64_t)a5;
- (void)endIncrementalGesture;
- (void)lift;
- (void)loadView;
- (void)pressAtPoint:(CGPoint)a3 numberOfFingers:(unint64_t)a4;
- (void)tapAtPoint:(CGPoint)a3;
@end

@implementation FKAGestureViewController

- (FKAGestureViewController)initWithDisplayUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FKAGestureViewController;
  v5 = [(FKAGestureViewController *)&v9 init];
  if (v5)
  {
    v6 = [[AXPIFingerController alloc] initWithDisplayUUID:v4];
    fingerController = v5->_fingerController;
    v5->_fingerController = v6;
  }

  return v5;
}

- (void)loadView
{
  v3 = [(FKAGestureViewController *)self fingerController];
  v4 = [v3 fingerContainerView];
  [(FKAGestureViewController *)self setView:v4];

  v5 = [(FKAGestureViewController *)self view];
  [v5 setAlpha:0.0];
}

- (BOOL)isPerformingGesture
{
  v3 = [(FKAGestureViewController *)self fingerController];
  v4 = [v3 fingerModels];
  if ([v4 count])
  {
    v5 = [(FKAGestureViewController *)self fingerController];
    v6 = [v5 fingerModels];
    v7 = [v6 firstObject];
    v8 = [v7 isPressed];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fingerModelsForFingerControllerPoint:(CGPoint)a3 numberOfFingers:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(FKAGestureViewController *)self view];
  [v7 bounds];
  v12 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a4 aroundPoint:x withinBounds:y, v8, v9, v10, v11];
  v13 = [AXPIFingerUtilities fingerModelsForPointStrings:v12];

  return v13;
}

- (void)_cancelGestureIfNecessary
{
  v3 = [(FKAGestureViewController *)self fingerController];
  v4 = [v3 isPerformingGesture];

  if (v4)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cancel current gesture", v7, 2u);
    }

    v6 = [(FKAGestureViewController *)self fingerController];
    [v6 cancelGesture];
  }

  [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
}

- (void)pressAtPoint:(CGPoint)a3 numberOfFingers:(unint64_t)a4
{
  y = CGPointZero.y;
  if (a3.x != CGPointZero.x || a3.y != y)
  {
    v7 = a3.y;
    x = a3.x;
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v10 = FKALogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v24.x = x;
      v24.y = v7;
      v11 = NSStringFromCGPoint(v24);
      v20 = 138412546;
      v21 = v11;
      v22 = 2048;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Press at %@ with %lu finger(s)", &v20, 0x16u);
    }

    v12 = [(FKAGestureViewController *)self view];
    [v12 setAlpha:1.0];

    [(FKAGestureViewController *)self _convertedPointToGestureView:x, v7];
    v14 = v13;
    v16 = v15;
    v17 = [(FKAGestureViewController *)self fingerController];
    v18 = [(FKAGestureViewController *)self _fingerModelsForFingerControllerPoint:a4 numberOfFingers:v14, v16];
    [v17 showFingerModels:v18 animated:0 startPointForAnimation:{CGPointZero.x, y}];

    v19 = [(FKAGestureViewController *)self fingerController];
    [v19 pressFingersDownAnimated:0];
  }
}

- (void)lift
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Lift fingers", v6, 2u);
  }

  v4 = [(FKAGestureViewController *)self fingerController];
  [v4 liftFingersUpAnimated:0];

  v5 = [(FKAGestureViewController *)self fingerController];
  [v5 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];
}

- (void)tapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v7 = FKALogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18.x = x;
      v18.y = y;
      v8 = NSStringFromCGPoint(v18);
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tap at %@", &v16, 0xCu);
    }

    v9 = [(FKAGestureViewController *)self view];
    [v9 setAlpha:0.0];

    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v11 = v10;
    v13 = v12;
    v14 = [(FKAGestureViewController *)self fingerController];
    v15 = [AXNamedReplayableGesture tapGestureAtPoint:v11, v13];
    [v14 performGesture:v15];
  }
}

- (void)_cleanUpExistingIncrementalGesture
{
  v3 = [(FKAGestureViewController *)self incrementalGestureState];
  if (v3)
  {
    v4 = FKALogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clean up existing incremental gesture", v13, 2u);
    }

    v5 = [(FKAGestureViewController *)self fingerController];
    [v5 liftFingersUpAnimated:0];

    v6 = [(FKAGestureViewController *)self fingerController];
    [v6 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

    v7 = [v3 startGestureTimer];
    v8 = [v7 isValid];

    if (v8)
    {
      v9 = [v3 startGestureTimer];
      [v9 invalidate];
    }

    v10 = [v3 gestureUpdateTimer];
    v11 = [v10 isValid];

    if (v11)
    {
      v12 = [v3 gestureUpdateTimer];
      [v12 invalidate];
    }

    [(FKAGestureViewController *)self setIncrementalGestureState:0];
  }
}

- (void)beginSwipeFromPoint:(CGPoint)a3 inDirection:(int64_t)a4 numberOfFingers:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v39.x = x;
      v39.y = y;
      v12 = NSStringFromCGPoint(v39);
      v13 = v12;
      if ((a4 - 1) > 2)
      {
        v14 = @"left";
      }

      else
      {
        v14 = off_100028748[a4 - 1];
      }

      *buf = 138412802;
      v34 = v12;
      v35 = 2112;
      v36 = v14;
      v37 = 2048;
      v38 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Begin swipe from %@ %@ with %lu finger(s)", buf, 0x20u);
    }

    v15 = [(FKAGestureViewController *)self view];
    [v15 setAlpha:1.0];

    v16 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v18 = v17;
    v20 = v19;
    [v16 setStartFingerControllerPoint:?];
    [v16 setDirection:a4];
    [v16 setNumberOfFingers:a5];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000230C;
    v26 = &unk_1000286B8;
    v27 = v16;
    v28 = self;
    v29 = v18;
    v30 = v20;
    v31 = a5;
    v32 = a4;
    v21 = v16;
    v22 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v23 block:0.3];
    [v21 setStartGestureTimer:{v22, v23, v24, v25, v26}];

    [(FKAGestureViewController *)self setIncrementalGestureState:v21];
  }
}

- (void)beginPinchOutFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10.x = x;
    v10.y = y;
    v7 = NSStringFromCGPoint(v10);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Begin pinch out from %@", &v8, 0xCu);
  }

  [(FKAGestureViewController *)self _beginPinchOrRotateFromPoint:0 type:x pinchGestureSpeed:y angleUpdateMultiplier:30.0, 0.0];
}

- (void)beginPinchInFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10.x = x;
    v10.y = y;
    v7 = NSStringFromCGPoint(v10);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Begin pinch in from %@", &v8, 0xCu);
  }

  [(FKAGestureViewController *)self _beginPinchOrRotateFromPoint:1 type:x pinchGestureSpeed:y angleUpdateMultiplier:-20.0, 0.0];
}

- (void)beginRotateLeftFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10.x = x;
    v10.y = y;
    v7 = NSStringFromCGPoint(v10);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Begin rotate left from %@", &v8, 0xCu);
  }

  [(FKAGestureViewController *)self _beginPinchOrRotateFromPoint:2 type:x pinchGestureSpeed:y angleUpdateMultiplier:0.0, -1.0];
}

- (void)beginRotateRightFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10.x = x;
    v10.y = y;
    v7 = NSStringFromCGPoint(v10);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Begin rotate right from %@", &v8, 0xCu);
  }

  [(FKAGestureViewController *)self _beginPinchOrRotateFromPoint:3 type:x pinchGestureSpeed:y angleUpdateMultiplier:0.0, 1.0];
}

- (void)_beginPinchOrRotateFromPoint:(CGPoint)a3 type:(int64_t)a4 pinchGestureSpeed:(double)a5 angleUpdateMultiplier:(double)a6
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v13 = FKALogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Begin pinch/rotate", buf, 2u);
    }

    v14 = [(FKAGestureViewController *)self view];
    [v14 setAlpha:1.0];

    v15 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v17 = v16;
    v19 = v18;
    [v15 setStartFingerControllerPoint:?];
    [v15 setType:a4];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100002CFC;
    v25 = &unk_1000286B8;
    v28 = v17;
    v29 = v19;
    v26 = v15;
    v27 = self;
    v30 = a5;
    v31 = a6;
    v20 = v15;
    v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v22 block:0.3];
    [v20 setStartGestureTimer:{v21, v22, v23, v24, v25}];

    [(FKAGestureViewController *)self setIncrementalGestureState:v20];
  }
}

- (void)begin3DTouchAtPoint:(CGPoint)a3
{
  y = CGPointZero.y;
  if (a3.x != CGPointZero.x || a3.y != y)
  {
    v5 = a3.y;
    x = a3.x;
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v30.x = x;
      v30.y = v5;
      v9 = NSStringFromCGPoint(v30);
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Begin 3D Touch from %@", buf, 0xCu);
    }

    v10 = [(FKAGestureViewController *)self view];
    [v10 setAlpha:1.0];

    v11 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, v5];
    v13 = v12;
    v15 = v14;
    [v11 setStartFingerControllerPoint:?];
    v16 = +[NSDate date];
    [v11 setGestureStartTime:v16];

    v17 = [(FKAGestureViewController *)self fingerController];
    v18 = [(FKAGestureViewController *)self _fingerModelsForFingerControllerPoint:1 numberOfFingers:v13, v15];
    [v17 showFingerModels:v18 animated:0 startPointForAnimation:{CGPointZero.x, y}];

    v19 = [(FKAGestureViewController *)self fingerController];
    [v19 pressFingersDownAnimated:0];

    AXForceTouchThreshold();
    v20 = AXForceTouchUpdateInterval;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003344;
    v24[3] = &unk_100028728;
    v25 = v11;
    v26 = self;
    v27 = v21;
    v22 = v11;
    v23 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v24 block:v20];
    [v22 setGestureUpdateTimer:v23];

    [(FKAGestureViewController *)self setIncrementalGestureState:v22];
  }
}

- (void)endIncrementalGesture
{
  v3 = [(FKAGestureViewController *)self incrementalGestureState];
  v4 = FKALogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "End incremental gesture", &v25, 2u);
    }

    v6 = [v3 gestureStartTime];
    if (v6)
    {

      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
      goto LABEL_33;
    }

    if ([v3 isSwipe])
    {
      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
    }

    else
    {
      v7 = [v3 isPinchOrRotate];
      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
      if ((v7 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 isSwipe];
      v10 = @"pinch/rotate";
      if (v9)
      {
        v10 = @"swipe";
      }

      v25 = 138412290;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Performing a fast %@ because the incremental version never started.", &v25, 0xCu);
    }

    if ([v3 isSwipe])
    {
      v11 = v3;
      [v11 startFingerControllerPoint];
      v13 = v12;
      v15 = v14;
      v16 = [v11 direction] - 1;
      if (v16 > 2)
      {
        v17 = -3.14159265;
      }

      else
      {
        v17 = dbl_100022680[v16];
      }

      v23 = [v11 numberOfFingers];

      v21 = [AXNamedReplayableGesture flickGestureAtPoint:v23 angle:v13 numberOfFingers:v15, v17];
      goto LABEL_32;
    }

    v18 = v3;
    v19 = [(FKAGestureViewController *)self view];
    [v19 bounds];

    v20 = [v18 type];
    v21 = 0;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture rotateLeftGestureWithPoint:"rotateLeftGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }

      if (v20 == 3)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture rotateRightGestureWithPoint:"rotateRightGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }
    }

    else
    {
      if (!v20)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture pinchOutGestureWithPoint:"pinchOutGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }

      if (v20 == 1)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture pinchInGestureWithPoint:"pinchInGestureWithPoint:bounds:" bounds:?];
LABEL_30:
        v21 = v22;
      }
    }

LABEL_32:
    v24 = [(FKAGestureViewController *)self fingerController];
    [v24 performGesture:v21];

    goto LABEL_33;
  }

  if (v5)
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempted to end incremental gesture, but none in progress", &v25, 2u);
  }

LABEL_33:
}

- (CGPoint)_convertedPointToGestureView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(FKAGestureViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];
  v10 = [(FKAGestureViewController *)self view];
  [v9 convertPoint:v10 toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

@end