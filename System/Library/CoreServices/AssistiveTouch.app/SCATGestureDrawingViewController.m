@interface SCATGestureDrawingViewController
- (BOOL)_isPerformingMove;
- (BOOL)allowsDwellSelection;
- (CGPoint)_fingerCenter;
- (SCATGestureDrawingViewController)init;
- (SCATGestureDrawingViewController)initWithElementManager:(id)a3 startingFingerPositions:(id)a4 menu:(id)a5;
- (SCATGestureDrawingViewDelegate)delegate;
- (double)_previewDistance;
- (id)_currentElementProvider;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (void)_adjustCurvatureWithDirection:(double)a3;
- (void)_cancelMoveTimerAndEndMove:(BOOL)a3;
- (void)_cleanUp;
- (void)_curveOnLeft:(BOOL)a3 withCurveRadius:(double)a4;
- (void)_endGeneralTimer;
- (void)_endMovementAndForceLift:(BOOL)a3;
- (void)_installStopButtonForActionName:(id)a3;
- (void)_move;
- (void)_moveStraight;
- (void)_pushFreehandSheetOfClass:(Class)a3;
- (void)_rotateClockwise;
- (void)_rotateCounterclockwise;
- (void)_startGeneralTimerWithSelector:(SEL)a3 actionName:(id)a4;
- (void)_uninstallStopButton;
- (void)_updateMainViewToolbarFrame;
- (void)autoLiftToggledForFreehandSheet:(id)a3;
- (void)autoPressToggledForFreehandSheet:(id)a3;
- (void)bendForFreehandSheet:(id)a3;
- (void)bendLeftForFreehandSheet:(id)a3;
- (void)bendRightForFreehandSheet:(id)a3;
- (void)dealloc;
- (void)decreaseVelocityForFreehandSheet:(id)a3;
- (void)didPopFreehandSheet:(id)a3;
- (void)freehandSheet:(id)a3 didHighlightBend:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightBendLeft:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightBendRight:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightMove:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightRotate:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightRotateCCW90:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightRotateCCW:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightRotateCW90:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightRotateCW:(BOOL)a4;
- (void)freehandSheet:(id)a3 didHighlightStraighten:(BOOL)a4;
- (void)increaseVelocityForFreehandSheet:(id)a3;
- (void)loadView;
- (void)menuWillDisappear:(id)a3;
- (void)moveForFreehandSheet:(id)a3;
- (void)moveToolbarForFreehandSheet:(id)a3;
- (void)rotate90ClockwiseForFreehandSheet:(id)a3;
- (void)rotate90CounterclockwiseForFreehandSheet:(id)a3;
- (void)rotateClockwiseForFreehandSheet:(id)a3;
- (void)rotateCounterclockwiseForFreehandSheet:(id)a3;
- (void)rotateForFreehandSheet:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
- (void)setAngle:(double)a3;
- (void)setAreFingersPressed:(BOOL)a3;
- (void)setCurvature:(double)a3;
- (void)setFingerPositions:(id)a3;
- (void)setLiftsOnMoveEnd:(BOOL)a3;
- (void)setPressesOnMoveStart:(BOOL)a3;
- (void)setVelocity:(double)a3;
- (void)stopForFreehandSheet:(id)a3;
- (void)toggleTouchForFreehandSheet:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATGestureDrawingViewController

- (SCATGestureDrawingViewController)init
{
  _AXAssert();

  return 0;
}

- (SCATGestureDrawingViewController)initWithElementManager:(id)a3 startingFingerPositions:(id)a4 menu:(id)a5
{
  v8 = a4;
  v9 = a5;
  v24.receiver = self;
  v24.super_class = SCATGestureDrawingViewController;
  v10 = [(SCATElementManagerViewController *)&v24 initWithElementManager:a3];
  v11 = v10;
  if (v10)
  {
    [(SCATGestureDrawingViewController *)v10 setFingerPositions:v8];
    v12 = +[HNDDefaults sharedDefaults];
    v13 = [v12 preferenceForKey:@"DrawingAngle"];
    v14 = [v12 preferenceForKey:@"DrawingVelocity"];
    v15 = [v12 preferenceForKey:@"DrawingCurvature"];
    v16 = [v12 preferenceForKey:@"DrawingPressOnMove"];
    v17 = [v12 preferenceForKey:@"DrawingLiftOnMove"];
    if (v13)
    {
      [v13 doubleValue];
    }

    else
    {
      v18 = -0.785398163;
    }

    [(SCATGestureDrawingViewController *)v11 setAngle:v18];
    if (v14)
    {
      [v14 doubleValue];
    }

    else
    {
      v19 = 1.0;
    }

    [(SCATGestureDrawingViewController *)v11 setVelocity:v19];
    if (v15)
    {
      [v15 doubleValue];
    }

    else
    {
      v20 = 0.0;
    }

    [(SCATGestureDrawingViewController *)v11 setCurvature:v20];
    if (v16)
    {
      v21 = [v16 BOOLValue];
    }

    else
    {
      v21 = 1;
    }

    [(SCATGestureDrawingViewController *)v11 setPressesOnMoveStart:v21];
    if (v17)
    {
      v22 = [v17 BOOLValue];
    }

    else
    {
      v22 = 1;
    }

    [(SCATGestureDrawingViewController *)v11 setLiftsOnMoveEnd:v22];
    objc_storeStrong(&v11->_menu, a5);
    [(SCATMenu *)v11->_menu registerMenuObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  [(SCATMenu *)self->_menu unregisterMenuObserver:self];
  v3.receiver = self;
  v3.super_class = SCATGestureDrawingViewController;
  [(SCATGestureDrawingViewController *)&v3 dealloc];
}

- (void)_updateMainViewToolbarFrame
{
  v12 = [(SCATMenu *)self->_menu menuVisualProvider];
  [v12 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SCATGestureDrawingViewController *)self mainView];
  [v11 setFrameForToolbar:{v4, v6, v8, v10}];
}

- (void)loadView
{
  v3 = objc_alloc_init(SCATGestureDrawingView);
  [(SCATGestureDrawingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SCATGestureDrawingViewController;
  [(SCATElementManagerViewController *)&v5 viewDidLoad];
  v3 = [(SCATGestureDrawingViewController *)self mainView];
  v4 = [(SCATGestureDrawingViewController *)self fingerPositions];
  [v3 setFingerPositions:v4];

  [(SCATGestureDrawingViewController *)self angle];
  [v3 setAngle:?];
  [(SCATGestureDrawingViewController *)self curvature];
  [v3 setCurvature:?];
  [(SCATGestureDrawingViewController *)self _previewDistance];
  [v3 setPreviewDistance:?];
}

- (void)_pushFreehandSheetOfClass:(Class)a3
{
  v4 = [[a3 alloc] initWithMenu:self->_menu];
  [v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (double)_previewDistance
{
  [HNDHandManager screenFrame:]_0();
  v4 = v3;
  [HNDHandManager screenFrame:]_0();
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  v8 = +[SCATStyleProvider sharedStyleProvider];
  [v8 arrowHeadTipOffset];
  v10 = v7 - v9 + -5.0;

  [(SCATGestureDrawingViewController *)self velocity];
  return (log(v11) + 2.30258509) / 4.60517019 * (v10 + -50.0) + 50.0;
}

- (void)setVelocity:(double)a3
{
  if (self->_velocity != a3)
  {
    self->_velocity = a3;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      [(SCATGestureDrawingViewController *)self _previewDistance];
      v6 = v5;
      v7 = [(SCATGestureDrawingViewController *)self mainView];
      [v7 setPreviewDistance:v6];
    }

    v9 = +[HNDDefaults sharedDefaults];
    v8 = [NSNumber numberWithDouble:a3];
    [v9 setPreference:v8 forKey:@"DrawingVelocity"];
  }
}

- (void)setFingerPositions:(id)a3
{
  v5 = a3;
  if (self->_fingerPositions != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_fingerPositions, a3);
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      v6 = [(SCATGestureDrawingViewController *)self mainView];
      [v6 setFingerPositions:v7];
    }
  }

  _objc_release_x2();
}

- (void)setAngle:(double)a3
{
  if (self->_angle != a3)
  {
    self->_angle = a3;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      v5 = [(SCATGestureDrawingViewController *)self mainView];
      [v5 setAngle:a3];
    }

    v7 = +[HNDDefaults sharedDefaults];
    v6 = [NSNumber numberWithDouble:a3];
    [v7 setPreference:v6 forKey:@"DrawingAngle"];
  }
}

- (void)setCurvature:(double)a3
{
  if (self->_curvature != a3)
  {
    self->_curvature = a3;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      v5 = [(SCATGestureDrawingViewController *)self mainView];
      [v5 setCurvature:a3];
    }

    v7 = +[HNDDefaults sharedDefaults];
    v6 = [NSNumber numberWithDouble:a3];
    [v7 setPreference:v6 forKey:@"DrawingCurvature"];
  }
}

- (void)setPressesOnMoveStart:(BOOL)a3
{
  if (self->_pressesOnMoveStart != a3)
  {
    v4 = a3;
    self->_pressesOnMoveStart = a3;
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithBool:v4];
    [v6 setPreference:v5 forKey:@"DrawingPressOnMove"];
  }
}

- (void)setLiftsOnMoveEnd:(BOOL)a3
{
  if (self->_liftsOnMoveEnd != a3)
  {
    v4 = a3;
    self->_liftsOnMoveEnd = a3;
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithBool:v4];
    [v6 setPreference:v5 forKey:@"DrawingLiftOnMove"];
  }
}

- (void)_installStopButtonForActionName:(id)a3
{
  v4 = a3;
  v8 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFreehandStopSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFreehandSheetBase *)v8 setDelegate:self];
  [(SCATModernMenuGestureFreehandStopSheet *)v8 setActionToStop:v4];

  [(SCATMenu *)self->_menu pushSheet:v8];
  v5 = [(SCATGestureDrawingViewController *)self mainView];
  [v5 setShowsRotationControls:0];

  v6 = [(SCATGestureDrawingViewController *)self mainView];
  [v6 setShowsRotation90Controls:0];

  v7 = [(SCATGestureDrawingViewController *)self mainView];
  [v7 setShowsCurvatureControls:0];
}

- (void)_uninstallStopButton
{
  v3 = [(SCATGestureDrawingViewController *)self isRotating];
  v4 = [(SCATGestureDrawingViewController *)self mainView];
  [v4 setShowsRotationControls:v3];

  v5 = [(SCATGestureDrawingViewController *)self isRotating];
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  [v6 setShowsRotation90Controls:v5];

  v7 = [(SCATGestureDrawingViewController *)self isCurving];
  v8 = [(SCATGestureDrawingViewController *)self mainView];
  [v8 setShowsCurvatureControls:v7];
}

- (void)_startGeneralTimerWithSelector:(SEL)a3 actionName:(id)a4
{
  v9 = a4;
  v6 = +[AXSettings sharedInstance];
  v7 = dbl_1001BD3C0[[v6 switchControlScanningStyle] == 0];

  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:a3 selector:0 userInfo:1 repeats:v7];
  [(SCATGestureDrawingViewController *)self setGeneralTimer:v8];

  [(SCATGestureDrawingViewController *)self _installStopButtonForActionName:v9];
}

- (void)_endGeneralTimer
{
  v3 = [(SCATGestureDrawingViewController *)self generalTimer];
  [v3 invalidate];

  [(SCATGestureDrawingViewController *)self setGeneralTimer:0];

  [(SCATGestureDrawingViewController *)self _uninstallStopButton];
}

- (void)setAreFingersPressed:(BOOL)a3
{
  if (self->_areFingersPressed != a3)
  {
    v4 = a3;
    self->_areFingersPressed = a3;
    v6 = [(SCATGestureDrawingViewController *)self mainView];
    [v6 setFingersPressed:v4];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = WeakRetained;
    if (v4)
    {
      [WeakRetained touchDownForDrawingViewController:self];
    }

    else
    {
      [WeakRetained touchUpForDrawingViewController:self];
    }
  }
}

- (void)_rotateClockwise
{
  [(SCATGestureDrawingViewController *)self angle];
  v4 = v3 + 0.00436332313;

  [(SCATGestureDrawingViewController *)self setAngle:v4];
}

- (void)_rotateCounterclockwise
{
  [(SCATGestureDrawingViewController *)self angle];
  v4 = v3 + -0.00436332313;

  [(SCATGestureDrawingViewController *)self setAngle:v4];
}

- (void)_adjustCurvatureWithDirection:(double)a3
{
  [(SCATGestureDrawingViewController *)self curvature];
  v6 = fabs(v5) * 0.01;
  if (v6 < 0.0001)
  {
    v6 = 0.0001;
  }

  v7 = v6 * a3;
  [(SCATGestureDrawingViewController *)self curvature];
  [(SCATGestureDrawingViewController *)self setCurvature:v8 + v7];
  [(SCATGestureDrawingViewController *)self curvature];
  if (v9 <= 0.0)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = 1.0;
  }

  [(SCATGestureDrawingViewController *)self curvature];
  if (v11 * v10 > 0.2)
  {

    [(SCATGestureDrawingViewController *)self setCurvature:v10 * 0.2];
  }
}

- (BOOL)_isPerformingMove
{
  v2 = [(SCATGestureDrawingViewController *)self moveTimer];
  v3 = v2 != 0;

  return v3;
}

- (void)_cancelMoveTimerAndEndMove:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATGestureDrawingViewController *)self moveTimer];
  [v5 invalidate];

  if (v3)
  {
    [(SCATGestureDrawingViewController *)self setMoveTimer:0];
    v6 = [(SCATGestureDrawingViewController *)self mainView];
    [v6 setFingersHighlighted:0];
  }
}

- (void)_endMovementAndForceLift:(BOOL)a3
{
  v3 = a3;
  [(SCATGestureDrawingViewController *)self _cancelMoveTimerAndEndMove:1];
  if (([(SCATGestureDrawingViewController *)self liftsOnMoveEnd]|| v3) && [(SCATGestureDrawingViewController *)self areFingersPressed])
  {
    [(SCATGestureDrawingViewController *)self setAreFingersPressed:0];
  }

  [(SCATGestureDrawingViewController *)self _uninstallStopButton];
}

- (CGPoint)_fingerCenter
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = CGSizeZero.height;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = CGPointFromString(*(*(&v15 + 1) + 8 * v11));
        v23.origin.x = v12.x;
        v23.origin.y = v12.y;
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        v23.size.width = CGSizeZero.width;
        v23.size.height = v10;
        v22 = CGRectUnion(v21, v23);
        x = v22.origin.x;
        y = v22.origin.y;
        width = v22.size.width;
        height = v22.size.height;
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  AX_CGRectGetCenter();
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_moveStraight
{
  v3 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  [(SCATGestureDrawingViewController *)self velocity];
  v6 = v5;
  [(SCATGestureDrawingViewController *)self angle];
  v8 = cos(v7);
  [(SCATGestureDrawingViewController *)self velocity];
  v10 = v9;
  [(SCATGestureDrawingViewController *)self angle];
  v12 = sin(v11);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = v6 * v8;
    v17 = *v24;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = CGPointFromString(*(*(&v23 + 1) + 8 * i));
        v28.x = v16 + v19.x;
        v28.y = v10 * v12 + v19.y;
        v20 = NSStringFromCGPoint(v28);
        [v4 addObject:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v22 = [WeakRetained drawingViewController:self moveFingersToPoints:v4];

  if (v22)
  {
    [(SCATGestureDrawingViewController *)self setFingerPositions:v4];
  }

  else
  {
    [(SCATGestureDrawingViewController *)self _cancelMoveTimerAndEndMove:0];
  }
}

- (void)_curveOnLeft:(BOOL)a3 withCurveRadius:(double)a4
{
  v5 = a3;
  v7 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  [(SCATGestureDrawingViewController *)self _fingerCenter];
  v10 = v9;
  v12 = v11;
  v33 = 0.0;
  v32 = CGPointZero;
  [(SCATGestureDrawingViewController *)self angle];
  v14 = v13;
  [(SCATGestureDrawingViewController *)self velocity];
  [SCATGestureArrowView getCurveArcCenter:0 startAngle:0 endAngle:0 updatedFingerAngle:&v33 updatedFingerCenter:&v32 withFingerAngle:v5 fingerCenter:v14 curveRadius:v10 distanceToMove:v12 onLeft:a4, v15];
  v16 = v32;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = v16.x - v10;
    v21 = v16.y - v12;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = CGPointFromString(*(*(&v28 + 1) + 8 * v23));
        v35.x = v20 + v24.x;
        v35.y = v21 + v24.y;
        v25 = NSStringFromCGPoint(v35);
        [v8 addObject:v25];

        v23 = v23 + 1;
      }

      while (v19 != v23);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v19);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v27 = [WeakRetained drawingViewController:self moveFingersToPoints:v8];

  if (v27)
  {
    [(SCATGestureDrawingViewController *)self setFingerPositions:v8];
    [(SCATGestureDrawingViewController *)self setAngle:v33];
  }

  else
  {
    [(SCATGestureDrawingViewController *)self _cancelMoveTimerAndEndMove:0];
  }
}

- (void)_move
{
  [(SCATGestureDrawingViewController *)self curvature];
  if (v4 == 0.0)
  {

    [(SCATGestureDrawingViewController *)self _moveStraight:v3];
  }

  else
  {
    [(SCATGestureDrawingViewController *)self curvature];
    v6 = v5 < 0.0;
    [(SCATGestureDrawingViewController *)self curvature];
    v8 = fabs(1.0 / v7);

    [(SCATGestureDrawingViewController *)self _curveOnLeft:v6 withCurveRadius:v8];
  }
}

- (void)_cleanUp
{
  if ([(SCATGestureDrawingViewController *)self _isPerformingMove])
  {

    [(SCATGestureDrawingViewController *)self _endMovementAndForceLift:1];
  }

  else
  {
    [(SCATGestureDrawingViewController *)self _endGeneralTimer];
    if ([(SCATGestureDrawingViewController *)self areFingersPressed])
    {

      [(SCATGestureDrawingViewController *)self setAreFingersPressed:0];
    }
  }
}

- (void)didPopFreehandSheet:(id)a3
{
  if ([(SCATGestureDrawingViewController *)self isRotating])
  {
    [(SCATGestureDrawingViewController *)self setIsRotating:0];
    v4 = [(SCATGestureDrawingViewController *)self mainView];
    [v4 setShowsRotationControls:0];

    v5 = [(SCATGestureDrawingViewController *)self mainView];
    [v5 setShowsRotation90Controls:0];
  }

  else
  {
    if (![(SCATGestureDrawingViewController *)self isCurving])
    {
      return;
    }

    [(SCATGestureDrawingViewController *)self setIsCurving:0];
    v5 = [(SCATGestureDrawingViewController *)self mainView];
    [v5 setShowsCurvatureControls:0];
  }
}

- (void)freehandSheet:(id)a3 didHighlightMove:(BOOL)a4
{
  v5 = a4 || [(SCATGestureDrawingViewController *)self _isPerformingMove];
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  [v6 setFingersHighlighted:v5];
}

- (void)freehandSheet:(id)a3 didHighlightRotate:(BOOL)a4
{
  v4 = a4;
  v6 = a4 || [(SCATGestureDrawingViewController *)self isRotating];
  v7 = [(SCATGestureDrawingViewController *)self mainView];
  [v7 setShowsRotationControls:v6];

  v8 = [(SCATGestureDrawingViewController *)self mainView];
  v9 = [v8 rotateClockwiseControl];
  [v9 setHighlighted:v4];

  v11 = [(SCATGestureDrawingViewController *)self mainView];
  v10 = [v11 rotateCounterclockwiseControl];
  [v10 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightBend:(BOOL)a4
{
  v4 = a4;
  v6 = a4 || [(SCATGestureDrawingViewController *)self isCurving];
  v7 = [(SCATGestureDrawingViewController *)self mainView];
  [v7 setShowsCurvatureControls:v6];

  v8 = [(SCATGestureDrawingViewController *)self mainView];
  v9 = [v8 decreaseCurveControl];
  [v9 setHighlighted:v4];

  v10 = [(SCATGestureDrawingViewController *)self mainView];
  v11 = [v10 increaseCurveControl];
  [v11 setHighlighted:v4];

  v13 = [(SCATGestureDrawingViewController *)self mainView];
  v12 = [v13 straightenCurveControl];
  [v12 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightRotateCCW:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v5 = [v6 rotateCounterclockwiseControl];
  [v5 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightRotateCW:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v5 = [v6 rotateClockwiseControl];
  [v5 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightRotateCCW90:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v7 = [v6 rotateCounterclockwiseControl];
  [v7 setHighlighted:v4];

  v9 = [(SCATGestureDrawingViewController *)self mainView];
  v8 = [v9 rotate90CounterclockwiseButton];
  [v8 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightRotateCW90:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v7 = [v6 rotateClockwiseControl];
  [v7 setHighlighted:v4];

  v9 = [(SCATGestureDrawingViewController *)self mainView];
  v8 = [v9 rotate90ClockwiseButton];
  [v8 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightBendRight:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v5 = [v6 increaseCurveControl];
  [v5 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightBendLeft:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v5 = [v6 decreaseCurveControl];
  [v5 setHighlighted:v4];
}

- (void)freehandSheet:(id)a3 didHighlightStraighten:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCATGestureDrawingViewController *)self mainView];
  v5 = [v6 straightenCurveControl];
  [v5 setHighlighted:v4];
}

- (void)moveToolbarForFreehandSheet:(id)a3
{
  [(SCATMenu *)self->_menu slideDockToPosition:[(SCATMenu *)self->_menu dockPosition]== 0];

  [(SCATGestureDrawingViewController *)self _updateMainViewToolbarFrame];
}

- (void)moveForFreehandSheet:(id)a3
{
  if ([(SCATGestureDrawingViewController *)self pressesOnMoveStart]&& ![(SCATGestureDrawingViewController *)self areFingersPressed])
  {
    [(SCATGestureDrawingViewController *)self setAreFingersPressed:1];
  }

  v4 = +[AXSettings sharedInstance];
  v5 = dbl_1001BD3C0[[v4 switchControlScanningStyle] == 0];

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_move" selector:0 userInfo:1 repeats:v5];
  [(SCATGestureDrawingViewController *)self setMoveTimer:v6];

  v7 = [(SCATGestureDrawingViewController *)self mainView];
  [v7 setFingersHighlighted:1];

  v8 = sub_100042B24(@"FREEHAND_MOVING");
  [(SCATGestureDrawingViewController *)self _installStopButtonForActionName:v8];
}

- (void)autoPressToggledForFreehandSheet:(id)a3
{
  v4 = [(SCATGestureDrawingViewController *)self pressesOnMoveStart]^ 1;

  [(SCATGestureDrawingViewController *)self setPressesOnMoveStart:v4];
}

- (void)autoLiftToggledForFreehandSheet:(id)a3
{
  v4 = [(SCATGestureDrawingViewController *)self liftsOnMoveEnd]^ 1;

  [(SCATGestureDrawingViewController *)self setLiftsOnMoveEnd:v4];
}

- (void)stopForFreehandSheet:(id)a3
{
  if ([(SCATGestureDrawingViewController *)self _isPerformingMove])
  {
    [(SCATGestureDrawingViewController *)self _endMovementAndForceLift:0];
  }

  else
  {
    [(SCATGestureDrawingViewController *)self _endGeneralTimer];
  }

  menu = self->_menu;

  [(SCATMenu *)menu popSheet];
}

- (void)rotateForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self setIsRotating:1];
  v4 = [(SCATGestureDrawingViewController *)self mainView];
  [v4 setShowsRotationControls:1];

  v5 = [(SCATGestureDrawingViewController *)self mainView];
  [v5 setShowsRotation90Controls:1];

  v6 = objc_opt_class();

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:v6];
}

- (void)bendForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self setIsCurving:1];
  v4 = [(SCATGestureDrawingViewController *)self mainView];
  [v4 setShowsCurvatureControls:1];

  v5 = objc_opt_class();

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:v5];
}

- (void)rotateCounterclockwiseForFreehandSheet:(id)a3
{
  v4 = sub_100042B24(@"FREEHAND_ROTATING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_rotateCounterclockwise" actionName:v4];
}

- (void)rotateClockwiseForFreehandSheet:(id)a3
{
  v4 = sub_100042B24(@"FREEHAND_ROTATING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_rotateClockwise" actionName:v4];
}

- (void)rotate90CounterclockwiseForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self angle];
  v5 = v4 + -1.57079633;

  [(SCATGestureDrawingViewController *)self setAngle:v5];
}

- (void)rotate90ClockwiseForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self angle];
  v5 = v4 + 1.57079633;

  [(SCATGestureDrawingViewController *)self setAngle:v5];
}

- (void)bendRightForFreehandSheet:(id)a3
{
  v4 = sub_100042B24(@"FREEHAND_BENDING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_increaseCurvature" actionName:v4];
}

- (void)bendLeftForFreehandSheet:(id)a3
{
  v4 = sub_100042B24(@"FREEHAND_BENDING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_decreaseCurvature" actionName:v4];
}

- (void)increaseVelocityForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self velocity];
  v5 = v4 * 1.1;
  if (v5 > 10.0)
  {
    v5 = 10.0;
  }

  [(SCATGestureDrawingViewController *)self setVelocity:v5];
}

- (void)decreaseVelocityForFreehandSheet:(id)a3
{
  [(SCATGestureDrawingViewController *)self velocity];
  v5 = v4 / 1.1;
  if (v5 < 0.1)
  {
    v5 = 0.1;
  }

  [(SCATGestureDrawingViewController *)self setVelocity:v5];
}

- (void)toggleTouchForFreehandSheet:(id)a3
{
  v4 = [(SCATGestureDrawingViewController *)self areFingersPressed]^ 1;

  [(SCATGestureDrawingViewController *)self setAreFingersPressed:v4];
}

- (void)menuWillDisappear:(id)a3
{
  v4 = [(SCATGestureDrawingViewController *)self delegate];
  [v4 exitDrawingViewController:self];
}

- (id)_currentElementProvider
{
  v2 = [(SCATMenu *)self->_menu currentSheet];
  v3 = [v2 elementProvider];

  return v3;
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v5 = [v4 firstElementWithOptions:a3];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v5 = [v4 lastElementWithOptions:a3];

  return v5;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v10 = [v9 elementAfter:v8 didWrap:a4 options:a5];

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v10 = [v9 elementBefore:v8 didWrap:a4 options:a5];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v14 = [a3 scatUIContext];
  [v14 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SCATGestureDrawingViewController *)self view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(SCATGestureDrawingViewController *)self view];
  [v14 insertSubview:v13 atIndex:0];

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:objc_opt_class()];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v15 = [a3 scatUIContextForDisplayID:*&a4];
  [v15 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SCATGestureDrawingViewController *)self view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(SCATGestureDrawingViewController *)self view];
  [v15 insertSubview:v14 atIndex:0];

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:objc_opt_class()];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  v5 = [(SCATGestureDrawingViewController *)self view:a3];
  [v5 removeFromSuperview];

  [(SCATGestureDrawingViewController *)self _cleanUp];
}

- (BOOL)allowsDwellSelection
{
  v2 = [(SCATMenu *)self->_menu currentSheet];
  v3 = [v2 shouldAllowDwellSelection];

  return v3;
}

- (SCATGestureDrawingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end