@interface FKAGestureViewController
- (BOOL)isPerformingGesture;
- (CGPoint)_convertedPointToGestureView:(CGPoint)view;
- (FKAGestureViewController)initWithDisplayUUID:(id)d;
- (id)_fingerModelsForFingerControllerPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers;
- (void)_beginPinchOrRotateFromPoint:(CGPoint)point type:(int64_t)type pinchGestureSpeed:(double)speed angleUpdateMultiplier:(double)multiplier;
- (void)_cancelGestureIfNecessary;
- (void)_cleanUpExistingIncrementalGesture;
- (void)begin3DTouchAtPoint:(CGPoint)point;
- (void)beginPinchInFromPoint:(CGPoint)point;
- (void)beginPinchOutFromPoint:(CGPoint)point;
- (void)beginRotateLeftFromPoint:(CGPoint)point;
- (void)beginRotateRightFromPoint:(CGPoint)point;
- (void)beginSwipeFromPoint:(CGPoint)point inDirection:(int64_t)direction numberOfFingers:(unint64_t)fingers;
- (void)endIncrementalGesture;
- (void)lift;
- (void)loadView;
- (void)pressAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers;
- (void)tapAtPoint:(CGPoint)point;
@end

@implementation FKAGestureViewController

- (FKAGestureViewController)initWithDisplayUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FKAGestureViewController;
  v5 = [(FKAGestureViewController *)&v9 init];
  if (v5)
  {
    v6 = [[AXPIFingerController alloc] initWithDisplayUUID:dCopy];
    fingerController = v5->_fingerController;
    v5->_fingerController = v6;
  }

  return v5;
}

- (void)loadView
{
  fingerController = [(FKAGestureViewController *)self fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  [(FKAGestureViewController *)self setView:fingerContainerView];

  view = [(FKAGestureViewController *)self view];
  [view setAlpha:0.0];
}

- (BOOL)isPerformingGesture
{
  fingerController = [(FKAGestureViewController *)self fingerController];
  fingerModels = [fingerController fingerModels];
  if ([fingerModels count])
  {
    fingerController2 = [(FKAGestureViewController *)self fingerController];
    fingerModels2 = [fingerController2 fingerModels];
    firstObject = [fingerModels2 firstObject];
    isPressed = [firstObject isPressed];
  }

  else
  {
    isPressed = 0;
  }

  return isPressed;
}

- (id)_fingerModelsForFingerControllerPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers
{
  y = point.y;
  x = point.x;
  view = [(FKAGestureViewController *)self view];
  [view bounds];
  v12 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:fingers aroundPoint:x withinBounds:y, v8, v9, v10, v11];
  v13 = [AXPIFingerUtilities fingerModelsForPointStrings:v12];

  return v13;
}

- (void)_cancelGestureIfNecessary
{
  fingerController = [(FKAGestureViewController *)self fingerController];
  isPerformingGesture = [fingerController isPerformingGesture];

  if (isPerformingGesture)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cancel current gesture", v7, 2u);
    }

    fingerController2 = [(FKAGestureViewController *)self fingerController];
    [fingerController2 cancelGesture];
  }

  [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
}

- (void)pressAtPoint:(CGPoint)point numberOfFingers:(unint64_t)fingers
{
  y = CGPointZero.y;
  if (point.x != CGPointZero.x || point.y != y)
  {
    v7 = point.y;
    x = point.x;
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
      fingersCopy = fingers;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Press at %@ with %lu finger(s)", &v20, 0x16u);
    }

    view = [(FKAGestureViewController *)self view];
    [view setAlpha:1.0];

    [(FKAGestureViewController *)self _convertedPointToGestureView:x, v7];
    v14 = v13;
    v16 = v15;
    fingerController = [(FKAGestureViewController *)self fingerController];
    v18 = [(FKAGestureViewController *)self _fingerModelsForFingerControllerPoint:fingers numberOfFingers:v14, v16];
    [fingerController showFingerModels:v18 animated:0 startPointForAnimation:{CGPointZero.x, y}];

    fingerController2 = [(FKAGestureViewController *)self fingerController];
    [fingerController2 pressFingersDownAnimated:0];
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

  fingerController = [(FKAGestureViewController *)self fingerController];
  [fingerController liftFingersUpAnimated:0];

  fingerController2 = [(FKAGestureViewController *)self fingerController];
  [fingerController2 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];
}

- (void)tapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (point.x != CGPointZero.x || point.y != CGPointZero.y)
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

    view = [(FKAGestureViewController *)self view];
    [view setAlpha:0.0];

    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v11 = v10;
    v13 = v12;
    fingerController = [(FKAGestureViewController *)self fingerController];
    v15 = [AXNamedReplayableGesture tapGestureAtPoint:v11, v13];
    [fingerController performGesture:v15];
  }
}

- (void)_cleanUpExistingIncrementalGesture
{
  incrementalGestureState = [(FKAGestureViewController *)self incrementalGestureState];
  if (incrementalGestureState)
  {
    v4 = FKALogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clean up existing incremental gesture", v13, 2u);
    }

    fingerController = [(FKAGestureViewController *)self fingerController];
    [fingerController liftFingersUpAnimated:0];

    fingerController2 = [(FKAGestureViewController *)self fingerController];
    [fingerController2 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

    startGestureTimer = [incrementalGestureState startGestureTimer];
    isValid = [startGestureTimer isValid];

    if (isValid)
    {
      startGestureTimer2 = [incrementalGestureState startGestureTimer];
      [startGestureTimer2 invalidate];
    }

    gestureUpdateTimer = [incrementalGestureState gestureUpdateTimer];
    isValid2 = [gestureUpdateTimer isValid];

    if (isValid2)
    {
      gestureUpdateTimer2 = [incrementalGestureState gestureUpdateTimer];
      [gestureUpdateTimer2 invalidate];
    }

    [(FKAGestureViewController *)self setIncrementalGestureState:0];
  }
}

- (void)beginSwipeFromPoint:(CGPoint)point inDirection:(int64_t)direction numberOfFingers:(unint64_t)fingers
{
  y = point.y;
  x = point.x;
  if (point.x != CGPointZero.x || point.y != CGPointZero.y)
  {
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v39.x = x;
      v39.y = y;
      v12 = NSStringFromCGPoint(v39);
      v13 = v12;
      if ((direction - 1) > 2)
      {
        v14 = @"left";
      }

      else
      {
        v14 = off_100028748[direction - 1];
      }

      *buf = 138412802;
      v34 = v12;
      v35 = 2112;
      v36 = v14;
      v37 = 2048;
      fingersCopy = fingers;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Begin swipe from %@ %@ with %lu finger(s)", buf, 0x20u);
    }

    view = [(FKAGestureViewController *)self view];
    [view setAlpha:1.0];

    v16 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v18 = v17;
    v20 = v19;
    [v16 setStartFingerControllerPoint:?];
    [v16 setDirection:direction];
    [v16 setNumberOfFingers:fingers];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000230C;
    v26 = &unk_1000286B8;
    v27 = v16;
    selfCopy = self;
    v29 = v18;
    v30 = v20;
    fingersCopy2 = fingers;
    directionCopy = direction;
    v21 = v16;
    v22 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v23 block:0.3];
    [v21 setStartGestureTimer:{v22, v23, v24, v25, v26}];

    [(FKAGestureViewController *)self setIncrementalGestureState:v21];
  }
}

- (void)beginPinchOutFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)beginPinchInFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)beginRotateLeftFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)beginRotateRightFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)_beginPinchOrRotateFromPoint:(CGPoint)point type:(int64_t)type pinchGestureSpeed:(double)speed angleUpdateMultiplier:(double)multiplier
{
  y = point.y;
  x = point.x;
  if (point.x != CGPointZero.x || point.y != CGPointZero.y)
  {
    [(FKAGestureViewController *)self _cancelGestureIfNecessary];
    v13 = FKALogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Begin pinch/rotate", buf, 2u);
    }

    view = [(FKAGestureViewController *)self view];
    [view setAlpha:1.0];

    v15 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, y];
    v17 = v16;
    v19 = v18;
    [v15 setStartFingerControllerPoint:?];
    [v15 setType:type];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100002CFC;
    v25 = &unk_1000286B8;
    v28 = v17;
    v29 = v19;
    v26 = v15;
    selfCopy = self;
    speedCopy = speed;
    multiplierCopy = multiplier;
    v20 = v15;
    v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v22 block:0.3];
    [v20 setStartGestureTimer:{v21, v22, v23, v24, v25}];

    [(FKAGestureViewController *)self setIncrementalGestureState:v20];
  }
}

- (void)begin3DTouchAtPoint:(CGPoint)point
{
  y = CGPointZero.y;
  if (point.x != CGPointZero.x || point.y != y)
  {
    v5 = point.y;
    x = point.x;
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

    view = [(FKAGestureViewController *)self view];
    [view setAlpha:1.0];

    v11 = objc_opt_new();
    [(FKAGestureViewController *)self _convertedPointToGestureView:x, v5];
    v13 = v12;
    v15 = v14;
    [v11 setStartFingerControllerPoint:?];
    v16 = +[NSDate date];
    [v11 setGestureStartTime:v16];

    fingerController = [(FKAGestureViewController *)self fingerController];
    v18 = [(FKAGestureViewController *)self _fingerModelsForFingerControllerPoint:1 numberOfFingers:v13, v15];
    [fingerController showFingerModels:v18 animated:0 startPointForAnimation:{CGPointZero.x, y}];

    fingerController2 = [(FKAGestureViewController *)self fingerController];
    [fingerController2 pressFingersDownAnimated:0];

    AXForceTouchThreshold();
    v20 = AXForceTouchUpdateInterval;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003344;
    v24[3] = &unk_100028728;
    v25 = v11;
    selfCopy = self;
    v27 = v21;
    v22 = v11;
    v23 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v24 block:v20];
    [v22 setGestureUpdateTimer:v23];

    [(FKAGestureViewController *)self setIncrementalGestureState:v22];
  }
}

- (void)endIncrementalGesture
{
  incrementalGestureState = [(FKAGestureViewController *)self incrementalGestureState];
  v4 = FKALogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (incrementalGestureState)
  {
    if (v5)
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "End incremental gesture", &v25, 2u);
    }

    gestureStartTime = [incrementalGestureState gestureStartTime];
    if (gestureStartTime)
    {

      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
      goto LABEL_33;
    }

    if ([incrementalGestureState isSwipe])
    {
      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
    }

    else
    {
      isPinchOrRotate = [incrementalGestureState isPinchOrRotate];
      [(FKAGestureViewController *)self _cleanUpExistingIncrementalGesture];
      if ((isPinchOrRotate & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      isSwipe = [incrementalGestureState isSwipe];
      v10 = @"pinch/rotate";
      if (isSwipe)
      {
        v10 = @"swipe";
      }

      v25 = 138412290;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Performing a fast %@ because the incremental version never started.", &v25, 0xCu);
    }

    if ([incrementalGestureState isSwipe])
    {
      v11 = incrementalGestureState;
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

      numberOfFingers = [v11 numberOfFingers];

      v21 = [AXNamedReplayableGesture flickGestureAtPoint:numberOfFingers angle:v13 numberOfFingers:v15, v17];
      goto LABEL_32;
    }

    v18 = incrementalGestureState;
    view = [(FKAGestureViewController *)self view];
    [view bounds];

    type = [v18 type];
    v21 = 0;
    if (type > 1)
    {
      if (type == 2)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture rotateLeftGestureWithPoint:"rotateLeftGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }

      if (type == 3)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture rotateRightGestureWithPoint:"rotateRightGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }
    }

    else
    {
      if (!type)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture pinchOutGestureWithPoint:"pinchOutGestureWithPoint:bounds:" bounds:?];
        goto LABEL_30;
      }

      if (type == 1)
      {
        [v18 startFingerControllerPoint];
        v22 = [AXNamedReplayableGesture pinchInGestureWithPoint:"pinchInGestureWithPoint:bounds:" bounds:?];
LABEL_30:
        v21 = v22;
      }
    }

LABEL_32:
    fingerController = [(FKAGestureViewController *)self fingerController];
    [fingerController performGesture:v21];

    goto LABEL_33;
  }

  if (v5)
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempted to end incremental gesture, but none in progress", &v25, 2u);
  }

LABEL_33:
}

- (CGPoint)_convertedPointToGestureView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  view = [(FKAGestureViewController *)self view];
  window = [view window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  view2 = [(FKAGestureViewController *)self view];
  [fixedCoordinateSpace convertPoint:view2 toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

@end