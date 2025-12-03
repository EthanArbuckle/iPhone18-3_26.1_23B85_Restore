@interface SCATGestureDrawingViewController
- (BOOL)_isPerformingMove;
- (BOOL)allowsDwellSelection;
- (CGPoint)_fingerCenter;
- (SCATGestureDrawingViewController)init;
- (SCATGestureDrawingViewController)initWithElementManager:(id)manager startingFingerPositions:(id)positions menu:(id)menu;
- (SCATGestureDrawingViewDelegate)delegate;
- (double)_previewDistance;
- (id)_currentElementProvider;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (void)_adjustCurvatureWithDirection:(double)direction;
- (void)_cancelMoveTimerAndEndMove:(BOOL)move;
- (void)_cleanUp;
- (void)_curveOnLeft:(BOOL)left withCurveRadius:(double)radius;
- (void)_endGeneralTimer;
- (void)_endMovementAndForceLift:(BOOL)lift;
- (void)_installStopButtonForActionName:(id)name;
- (void)_move;
- (void)_moveStraight;
- (void)_pushFreehandSheetOfClass:(Class)class;
- (void)_rotateClockwise;
- (void)_rotateCounterclockwise;
- (void)_startGeneralTimerWithSelector:(SEL)selector actionName:(id)name;
- (void)_uninstallStopButton;
- (void)_updateMainViewToolbarFrame;
- (void)autoLiftToggledForFreehandSheet:(id)sheet;
- (void)autoPressToggledForFreehandSheet:(id)sheet;
- (void)bendForFreehandSheet:(id)sheet;
- (void)bendLeftForFreehandSheet:(id)sheet;
- (void)bendRightForFreehandSheet:(id)sheet;
- (void)dealloc;
- (void)decreaseVelocityForFreehandSheet:(id)sheet;
- (void)didPopFreehandSheet:(id)sheet;
- (void)freehandSheet:(id)sheet didHighlightBend:(BOOL)bend;
- (void)freehandSheet:(id)sheet didHighlightBendLeft:(BOOL)left;
- (void)freehandSheet:(id)sheet didHighlightBendRight:(BOOL)right;
- (void)freehandSheet:(id)sheet didHighlightMove:(BOOL)move;
- (void)freehandSheet:(id)sheet didHighlightRotate:(BOOL)rotate;
- (void)freehandSheet:(id)sheet didHighlightRotateCCW90:(BOOL)w90;
- (void)freehandSheet:(id)sheet didHighlightRotateCCW:(BOOL)w;
- (void)freehandSheet:(id)sheet didHighlightRotateCW90:(BOOL)w90;
- (void)freehandSheet:(id)sheet didHighlightRotateCW:(BOOL)w;
- (void)freehandSheet:(id)sheet didHighlightStraighten:(BOOL)straighten;
- (void)increaseVelocityForFreehandSheet:(id)sheet;
- (void)loadView;
- (void)menuWillDisappear:(id)disappear;
- (void)moveForFreehandSheet:(id)sheet;
- (void)moveToolbarForFreehandSheet:(id)sheet;
- (void)rotate90ClockwiseForFreehandSheet:(id)sheet;
- (void)rotate90CounterclockwiseForFreehandSheet:(id)sheet;
- (void)rotateClockwiseForFreehandSheet:(id)sheet;
- (void)rotateCounterclockwiseForFreehandSheet:(id)sheet;
- (void)rotateForFreehandSheet:(id)sheet;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
- (void)setAngle:(double)angle;
- (void)setAreFingersPressed:(BOOL)pressed;
- (void)setCurvature:(double)curvature;
- (void)setFingerPositions:(id)positions;
- (void)setLiftsOnMoveEnd:(BOOL)end;
- (void)setPressesOnMoveStart:(BOOL)start;
- (void)setVelocity:(double)velocity;
- (void)stopForFreehandSheet:(id)sheet;
- (void)toggleTouchForFreehandSheet:(id)sheet;
- (void)viewDidLoad;
@end

@implementation SCATGestureDrawingViewController

- (SCATGestureDrawingViewController)init
{
  _AXAssert();

  return 0;
}

- (SCATGestureDrawingViewController)initWithElementManager:(id)manager startingFingerPositions:(id)positions menu:(id)menu
{
  positionsCopy = positions;
  menuCopy = menu;
  v24.receiver = self;
  v24.super_class = SCATGestureDrawingViewController;
  v10 = [(SCATElementManagerViewController *)&v24 initWithElementManager:manager];
  v11 = v10;
  if (v10)
  {
    [(SCATGestureDrawingViewController *)v10 setFingerPositions:positionsCopy];
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
      bOOLValue = [v16 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(SCATGestureDrawingViewController *)v11 setPressesOnMoveStart:bOOLValue];
    if (v17)
    {
      bOOLValue2 = [v17 BOOLValue];
    }

    else
    {
      bOOLValue2 = 1;
    }

    [(SCATGestureDrawingViewController *)v11 setLiftsOnMoveEnd:bOOLValue2];
    objc_storeStrong(&v11->_menu, menu);
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
  menuVisualProvider = [(SCATMenu *)self->_menu menuVisualProvider];
  [menuVisualProvider frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setFrameForToolbar:{v4, v6, v8, v10}];
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
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  fingerPositions = [(SCATGestureDrawingViewController *)self fingerPositions];
  [mainView setFingerPositions:fingerPositions];

  [(SCATGestureDrawingViewController *)self angle];
  [mainView setAngle:?];
  [(SCATGestureDrawingViewController *)self curvature];
  [mainView setCurvature:?];
  [(SCATGestureDrawingViewController *)self _previewDistance];
  [mainView setPreviewDistance:?];
}

- (void)_pushFreehandSheetOfClass:(Class)class
{
  v4 = [[class alloc] initWithMenu:self->_menu];
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

- (void)setVelocity:(double)velocity
{
  if (self->_velocity != velocity)
  {
    self->_velocity = velocity;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      [(SCATGestureDrawingViewController *)self _previewDistance];
      v6 = v5;
      mainView = [(SCATGestureDrawingViewController *)self mainView];
      [mainView setPreviewDistance:v6];
    }

    v9 = +[HNDDefaults sharedDefaults];
    v8 = [NSNumber numberWithDouble:velocity];
    [v9 setPreference:v8 forKey:@"DrawingVelocity"];
  }
}

- (void)setFingerPositions:(id)positions
{
  positionsCopy = positions;
  if (self->_fingerPositions != positionsCopy)
  {
    v7 = positionsCopy;
    objc_storeStrong(&self->_fingerPositions, positions);
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      mainView = [(SCATGestureDrawingViewController *)self mainView];
      [mainView setFingerPositions:v7];
    }
  }

  _objc_release_x2();
}

- (void)setAngle:(double)angle
{
  if (self->_angle != angle)
  {
    self->_angle = angle;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      mainView = [(SCATGestureDrawingViewController *)self mainView];
      [mainView setAngle:angle];
    }

    v7 = +[HNDDefaults sharedDefaults];
    v6 = [NSNumber numberWithDouble:angle];
    [v7 setPreference:v6 forKey:@"DrawingAngle"];
  }
}

- (void)setCurvature:(double)curvature
{
  if (self->_curvature != curvature)
  {
    self->_curvature = curvature;
    if ([(SCATGestureDrawingViewController *)self isViewLoaded])
    {
      mainView = [(SCATGestureDrawingViewController *)self mainView];
      [mainView setCurvature:curvature];
    }

    v7 = +[HNDDefaults sharedDefaults];
    v6 = [NSNumber numberWithDouble:curvature];
    [v7 setPreference:v6 forKey:@"DrawingCurvature"];
  }
}

- (void)setPressesOnMoveStart:(BOOL)start
{
  if (self->_pressesOnMoveStart != start)
  {
    startCopy = start;
    self->_pressesOnMoveStart = start;
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithBool:startCopy];
    [v6 setPreference:v5 forKey:@"DrawingPressOnMove"];
  }
}

- (void)setLiftsOnMoveEnd:(BOOL)end
{
  if (self->_liftsOnMoveEnd != end)
  {
    endCopy = end;
    self->_liftsOnMoveEnd = end;
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithBool:endCopy];
    [v6 setPreference:v5 forKey:@"DrawingLiftOnMove"];
  }
}

- (void)_installStopButtonForActionName:(id)name
{
  nameCopy = name;
  v8 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFreehandStopSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFreehandSheetBase *)v8 setDelegate:self];
  [(SCATModernMenuGestureFreehandStopSheet *)v8 setActionToStop:nameCopy];

  [(SCATMenu *)self->_menu pushSheet:v8];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsRotationControls:0];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  [mainView2 setShowsRotation90Controls:0];

  mainView3 = [(SCATGestureDrawingViewController *)self mainView];
  [mainView3 setShowsCurvatureControls:0];
}

- (void)_uninstallStopButton
{
  isRotating = [(SCATGestureDrawingViewController *)self isRotating];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsRotationControls:isRotating];

  isRotating2 = [(SCATGestureDrawingViewController *)self isRotating];
  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  [mainView2 setShowsRotation90Controls:isRotating2];

  isCurving = [(SCATGestureDrawingViewController *)self isCurving];
  mainView3 = [(SCATGestureDrawingViewController *)self mainView];
  [mainView3 setShowsCurvatureControls:isCurving];
}

- (void)_startGeneralTimerWithSelector:(SEL)selector actionName:(id)name
{
  nameCopy = name;
  v6 = +[AXSettings sharedInstance];
  v7 = dbl_1001BD3C0[[v6 switchControlScanningStyle] == 0];

  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:selector selector:0 userInfo:1 repeats:v7];
  [(SCATGestureDrawingViewController *)self setGeneralTimer:v8];

  [(SCATGestureDrawingViewController *)self _installStopButtonForActionName:nameCopy];
}

- (void)_endGeneralTimer
{
  generalTimer = [(SCATGestureDrawingViewController *)self generalTimer];
  [generalTimer invalidate];

  [(SCATGestureDrawingViewController *)self setGeneralTimer:0];

  [(SCATGestureDrawingViewController *)self _uninstallStopButton];
}

- (void)setAreFingersPressed:(BOOL)pressed
{
  if (self->_areFingersPressed != pressed)
  {
    pressedCopy = pressed;
    self->_areFingersPressed = pressed;
    mainView = [(SCATGestureDrawingViewController *)self mainView];
    [mainView setFingersPressed:pressedCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = WeakRetained;
    if (pressedCopy)
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

- (void)_adjustCurvatureWithDirection:(double)direction
{
  [(SCATGestureDrawingViewController *)self curvature];
  v6 = fabs(v5) * 0.01;
  if (v6 < 0.0001)
  {
    v6 = 0.0001;
  }

  v7 = v6 * direction;
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
  moveTimer = [(SCATGestureDrawingViewController *)self moveTimer];
  v3 = moveTimer != 0;

  return v3;
}

- (void)_cancelMoveTimerAndEndMove:(BOOL)move
{
  moveCopy = move;
  moveTimer = [(SCATGestureDrawingViewController *)self moveTimer];
  [moveTimer invalidate];

  if (moveCopy)
  {
    [(SCATGestureDrawingViewController *)self setMoveTimer:0];
    mainView = [(SCATGestureDrawingViewController *)self mainView];
    [mainView setFingersHighlighted:0];
  }
}

- (void)_endMovementAndForceLift:(BOOL)lift
{
  liftCopy = lift;
  [(SCATGestureDrawingViewController *)self _cancelMoveTimerAndEndMove:1];
  if (([(SCATGestureDrawingViewController *)self liftsOnMoveEnd]|| liftCopy) && [(SCATGestureDrawingViewController *)self areFingersPressed])
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
  fingerPositions = [(SCATGestureDrawingViewController *)self fingerPositions];
  v7 = [fingerPositions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(fingerPositions);
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
      v8 = [fingerPositions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  fingerPositions = [(SCATGestureDrawingViewController *)self fingerPositions];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fingerPositions count]);

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
  fingerPositions2 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v14 = [fingerPositions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(fingerPositions2);
        }

        v19 = CGPointFromString(*(*(&v23 + 1) + 8 * i));
        v28.x = v16 + v19.x;
        v28.y = v10 * v12 + v19.y;
        v20 = NSStringFromCGPoint(v28);
        [v4 addObject:v20];
      }

      v15 = [fingerPositions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)_curveOnLeft:(BOOL)left withCurveRadius:(double)radius
{
  leftCopy = left;
  fingerPositions = [(SCATGestureDrawingViewController *)self fingerPositions];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fingerPositions count]);

  [(SCATGestureDrawingViewController *)self _fingerCenter];
  v10 = v9;
  v12 = v11;
  v33 = 0.0;
  v32 = CGPointZero;
  [(SCATGestureDrawingViewController *)self angle];
  v14 = v13;
  [(SCATGestureDrawingViewController *)self velocity];
  [SCATGestureArrowView getCurveArcCenter:0 startAngle:0 endAngle:0 updatedFingerAngle:&v33 updatedFingerCenter:&v32 withFingerAngle:leftCopy fingerCenter:v14 curveRadius:v10 distanceToMove:v12 onLeft:radius, v15];
  v16 = v32;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  fingerPositions2 = [(SCATGestureDrawingViewController *)self fingerPositions];
  v18 = [fingerPositions2 countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(fingerPositions2);
        }

        v24 = CGPointFromString(*(*(&v28 + 1) + 8 * v23));
        v35.x = v20 + v24.x;
        v35.y = v21 + v24.y;
        v25 = NSStringFromCGPoint(v35);
        [v8 addObject:v25];

        v23 = v23 + 1;
      }

      while (v19 != v23);
      v19 = [fingerPositions2 countByEnumeratingWithState:&v28 objects:v34 count:16];
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

- (void)didPopFreehandSheet:(id)sheet
{
  if ([(SCATGestureDrawingViewController *)self isRotating])
  {
    [(SCATGestureDrawingViewController *)self setIsRotating:0];
    mainView = [(SCATGestureDrawingViewController *)self mainView];
    [mainView setShowsRotationControls:0];

    mainView2 = [(SCATGestureDrawingViewController *)self mainView];
    [mainView2 setShowsRotation90Controls:0];
  }

  else
  {
    if (![(SCATGestureDrawingViewController *)self isCurving])
    {
      return;
    }

    [(SCATGestureDrawingViewController *)self setIsCurving:0];
    mainView2 = [(SCATGestureDrawingViewController *)self mainView];
    [mainView2 setShowsCurvatureControls:0];
  }
}

- (void)freehandSheet:(id)sheet didHighlightMove:(BOOL)move
{
  v5 = move || [(SCATGestureDrawingViewController *)self _isPerformingMove];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setFingersHighlighted:v5];
}

- (void)freehandSheet:(id)sheet didHighlightRotate:(BOOL)rotate
{
  rotateCopy = rotate;
  v6 = rotate || [(SCATGestureDrawingViewController *)self isRotating];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsRotationControls:v6];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  rotateClockwiseControl = [mainView2 rotateClockwiseControl];
  [rotateClockwiseControl setHighlighted:rotateCopy];

  mainView3 = [(SCATGestureDrawingViewController *)self mainView];
  rotateCounterclockwiseControl = [mainView3 rotateCounterclockwiseControl];
  [rotateCounterclockwiseControl setHighlighted:rotateCopy];
}

- (void)freehandSheet:(id)sheet didHighlightBend:(BOOL)bend
{
  bendCopy = bend;
  v6 = bend || [(SCATGestureDrawingViewController *)self isCurving];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsCurvatureControls:v6];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  decreaseCurveControl = [mainView2 decreaseCurveControl];
  [decreaseCurveControl setHighlighted:bendCopy];

  mainView3 = [(SCATGestureDrawingViewController *)self mainView];
  increaseCurveControl = [mainView3 increaseCurveControl];
  [increaseCurveControl setHighlighted:bendCopy];

  mainView4 = [(SCATGestureDrawingViewController *)self mainView];
  straightenCurveControl = [mainView4 straightenCurveControl];
  [straightenCurveControl setHighlighted:bendCopy];
}

- (void)freehandSheet:(id)sheet didHighlightRotateCCW:(BOOL)w
{
  wCopy = w;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  rotateCounterclockwiseControl = [mainView rotateCounterclockwiseControl];
  [rotateCounterclockwiseControl setHighlighted:wCopy];
}

- (void)freehandSheet:(id)sheet didHighlightRotateCW:(BOOL)w
{
  wCopy = w;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  rotateClockwiseControl = [mainView rotateClockwiseControl];
  [rotateClockwiseControl setHighlighted:wCopy];
}

- (void)freehandSheet:(id)sheet didHighlightRotateCCW90:(BOOL)w90
{
  w90Copy = w90;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  rotateCounterclockwiseControl = [mainView rotateCounterclockwiseControl];
  [rotateCounterclockwiseControl setHighlighted:w90Copy];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  rotate90CounterclockwiseButton = [mainView2 rotate90CounterclockwiseButton];
  [rotate90CounterclockwiseButton setHighlighted:w90Copy];
}

- (void)freehandSheet:(id)sheet didHighlightRotateCW90:(BOOL)w90
{
  w90Copy = w90;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  rotateClockwiseControl = [mainView rotateClockwiseControl];
  [rotateClockwiseControl setHighlighted:w90Copy];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  rotate90ClockwiseButton = [mainView2 rotate90ClockwiseButton];
  [rotate90ClockwiseButton setHighlighted:w90Copy];
}

- (void)freehandSheet:(id)sheet didHighlightBendRight:(BOOL)right
{
  rightCopy = right;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  increaseCurveControl = [mainView increaseCurveControl];
  [increaseCurveControl setHighlighted:rightCopy];
}

- (void)freehandSheet:(id)sheet didHighlightBendLeft:(BOOL)left
{
  leftCopy = left;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  decreaseCurveControl = [mainView decreaseCurveControl];
  [decreaseCurveControl setHighlighted:leftCopy];
}

- (void)freehandSheet:(id)sheet didHighlightStraighten:(BOOL)straighten
{
  straightenCopy = straighten;
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  straightenCurveControl = [mainView straightenCurveControl];
  [straightenCurveControl setHighlighted:straightenCopy];
}

- (void)moveToolbarForFreehandSheet:(id)sheet
{
  [(SCATMenu *)self->_menu slideDockToPosition:[(SCATMenu *)self->_menu dockPosition]== 0];

  [(SCATGestureDrawingViewController *)self _updateMainViewToolbarFrame];
}

- (void)moveForFreehandSheet:(id)sheet
{
  if ([(SCATGestureDrawingViewController *)self pressesOnMoveStart]&& ![(SCATGestureDrawingViewController *)self areFingersPressed])
  {
    [(SCATGestureDrawingViewController *)self setAreFingersPressed:1];
  }

  v4 = +[AXSettings sharedInstance];
  v5 = dbl_1001BD3C0[[v4 switchControlScanningStyle] == 0];

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_move" selector:0 userInfo:1 repeats:v5];
  [(SCATGestureDrawingViewController *)self setMoveTimer:v6];

  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setFingersHighlighted:1];

  v8 = sub_100042B24(@"FREEHAND_MOVING");
  [(SCATGestureDrawingViewController *)self _installStopButtonForActionName:v8];
}

- (void)autoPressToggledForFreehandSheet:(id)sheet
{
  v4 = [(SCATGestureDrawingViewController *)self pressesOnMoveStart]^ 1;

  [(SCATGestureDrawingViewController *)self setPressesOnMoveStart:v4];
}

- (void)autoLiftToggledForFreehandSheet:(id)sheet
{
  v4 = [(SCATGestureDrawingViewController *)self liftsOnMoveEnd]^ 1;

  [(SCATGestureDrawingViewController *)self setLiftsOnMoveEnd:v4];
}

- (void)stopForFreehandSheet:(id)sheet
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

- (void)rotateForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self setIsRotating:1];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsRotationControls:1];

  mainView2 = [(SCATGestureDrawingViewController *)self mainView];
  [mainView2 setShowsRotation90Controls:1];

  v6 = objc_opt_class();

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:v6];
}

- (void)bendForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self setIsCurving:1];
  mainView = [(SCATGestureDrawingViewController *)self mainView];
  [mainView setShowsCurvatureControls:1];

  v5 = objc_opt_class();

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:v5];
}

- (void)rotateCounterclockwiseForFreehandSheet:(id)sheet
{
  v4 = sub_100042B24(@"FREEHAND_ROTATING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_rotateCounterclockwise" actionName:v4];
}

- (void)rotateClockwiseForFreehandSheet:(id)sheet
{
  v4 = sub_100042B24(@"FREEHAND_ROTATING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_rotateClockwise" actionName:v4];
}

- (void)rotate90CounterclockwiseForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self angle];
  v5 = v4 + -1.57079633;

  [(SCATGestureDrawingViewController *)self setAngle:v5];
}

- (void)rotate90ClockwiseForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self angle];
  v5 = v4 + 1.57079633;

  [(SCATGestureDrawingViewController *)self setAngle:v5];
}

- (void)bendRightForFreehandSheet:(id)sheet
{
  v4 = sub_100042B24(@"FREEHAND_BENDING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_increaseCurvature" actionName:v4];
}

- (void)bendLeftForFreehandSheet:(id)sheet
{
  v4 = sub_100042B24(@"FREEHAND_BENDING");
  [(SCATGestureDrawingViewController *)self _startGeneralTimerWithSelector:"_decreaseCurvature" actionName:v4];
}

- (void)increaseVelocityForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self velocity];
  v5 = v4 * 1.1;
  if (v5 > 10.0)
  {
    v5 = 10.0;
  }

  [(SCATGestureDrawingViewController *)self setVelocity:v5];
}

- (void)decreaseVelocityForFreehandSheet:(id)sheet
{
  [(SCATGestureDrawingViewController *)self velocity];
  v5 = v4 / 1.1;
  if (v5 < 0.1)
  {
    v5 = 0.1;
  }

  [(SCATGestureDrawingViewController *)self setVelocity:v5];
}

- (void)toggleTouchForFreehandSheet:(id)sheet
{
  v4 = [(SCATGestureDrawingViewController *)self areFingersPressed]^ 1;

  [(SCATGestureDrawingViewController *)self setAreFingersPressed:v4];
}

- (void)menuWillDisappear:(id)disappear
{
  delegate = [(SCATGestureDrawingViewController *)self delegate];
  [delegate exitDrawingViewController:self];
}

- (id)_currentElementProvider
{
  currentSheet = [(SCATMenu *)self->_menu currentSheet];
  elementProvider = [currentSheet elementProvider];

  return elementProvider;
}

- (id)firstElementWithOptions:(int *)options
{
  _currentElementProvider = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v5 = [_currentElementProvider firstElementWithOptions:options];

  return v5;
}

- (id)lastElementWithOptions:(int *)options
{
  _currentElementProvider = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v5 = [_currentElementProvider lastElementWithOptions:options];

  return v5;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  _currentElementProvider = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v10 = [_currentElementProvider elementAfter:afterCopy didWrap:wrap options:options];

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  _currentElementProvider = [(SCATGestureDrawingViewController *)self _currentElementProvider];
  v10 = [_currentElementProvider elementBefore:beforeCopy didWrap:wrap options:options];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)active
{
  scatUIContext = [active scatUIContext];
  [scatUIContext bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(SCATGestureDrawingViewController *)self view];
  [view setFrame:{v5, v7, v9, v11}];

  view2 = [(SCATGestureDrawingViewController *)self view];
  [scatUIContext insertSubview:view2 atIndex:0];

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:objc_opt_class()];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v15 = [active scatUIContextForDisplayID:*&d];
  [v15 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(SCATGestureDrawingViewController *)self view];
  [view setFrame:{v6, v8, v10, v12}];

  view2 = [(SCATGestureDrawingViewController *)self view];
  [v15 insertSubview:view2 atIndex:0];

  [(SCATGestureDrawingViewController *)self _pushFreehandSheetOfClass:objc_opt_class()];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  v5 = [(SCATGestureDrawingViewController *)self view:inactive];
  [v5 removeFromSuperview];

  [(SCATGestureDrawingViewController *)self _cleanUp];
}

- (BOOL)allowsDwellSelection
{
  currentSheet = [(SCATMenu *)self->_menu currentSheet];
  shouldAllowDwellSelection = [currentSheet shouldAllowDwellSelection];

  return shouldAllowDwellSelection;
}

- (SCATGestureDrawingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end