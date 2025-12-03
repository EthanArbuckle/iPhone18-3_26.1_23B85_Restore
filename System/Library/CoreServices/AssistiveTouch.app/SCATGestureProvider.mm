@interface SCATGestureProvider
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)allowsDwellSelection;
- (BOOL)drawingViewController:(id)controller moveFingersToPoints:(id)points;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (BOOL)shouldKeepScannerAwake;
- (CGPoint)_startingPointForGestures;
- (CGPoint)currentHoldPoint;
- (CGPoint)endPointForLineGesture;
- (CGPoint)keyboardSlideStartPoint;
- (CGPoint)lastSelectedKeyboardSlidePoint;
- (CGPoint)pinchFulcrum;
- (CGPoint)startingScreenPointForGestures;
- (CGRect)_rectForFingers:(id)fingers;
- (CGRect)_rectToClearForPinchGesture;
- (CGRect)rectToClearForFingersWithGestureSheet:(BOOL)sheet;
- (CGRect)rectToClearForStop:(id)stop;
- (SCATElement)elementForFingers;
- (SCATGestureProvider)initWithMenu:(id)menu;
- (SCATGestureProviderDelegate)delegate;
- (double)_pinchAngleAdjustedByDelta:(double)delta;
- (double)_pinchRadiusAdjustedByDelta:(double)delta;
- (id)_fingerController;
- (id)_panPositionsAdjustedByDelta:(CGSize)delta;
- (id)_pinchPositionsWithRadius:(double)radius angle:(double)angle;
- (id)_pointStringForPoint:(CGPoint)point;
- (id)_promptForLineGesture:(unint64_t)gesture;
- (id)_repositionedGestureFromOriginalGesture:(id)gesture;
- (id)_startingPointsAsStrings;
- (id)contextForCustomGestureItemsViewController:(id)controller;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)gesturesSheet;
- (id)lastElementWithOptions:(int *)options;
- (id)nameForConfirmationButton:(id)button;
- (unint64_t)_numberOfFingers;
- (unint64_t)_numberOfFingersWithGestureSheet:(BOOL)sheet;
- (void)_addPointsToContinuousGestureData:(id)data;
- (void)_clearArrowView;
- (void)_clearLineGestureState;
- (void)_clearTellMeWhenTimer;
- (void)_continueKeyboardSlideWithGesture:(id)gesture;
- (void)_didChooseFlickWithAngle:(double)angle name:(id)name;
- (void)_didChoosePanWithName:(id)name selector:(SEL)selector;
- (void)_didChoosePinchItemWithName:(id)name selector:(SEL)selector;
- (void)_endKeyboardSlideGesture;
- (void)_endKeyboardSlideGestureSegment;
- (void)_endPinchMode;
- (void)_finishLineGesture;
- (void)_handleCompletedContinuousGesture;
- (void)_initializeContinuousGestureDataWithName:(id)name points:(id)points;
- (void)_panByDelta:(CGSize)delta;
- (void)_performFlickGestureWithAngle:(double)angle name:(id)name;
- (void)_performForceTouchGesture;
- (void)_performGesture:(id)gesture;
- (void)_performGesture:(id)gesture withBlock:(id)block;
- (void)_performTapGestureForDoubleTap:(BOOL)tap;
- (void)_prepareToBeginContinuousGesture;
- (void)_requestSwitchControllerPrivileges;
- (void)_resetContinuousGestureData;
- (void)_resignSwitchControllerPrivileges;
- (void)_saveRecentGesture:(id)gesture;
- (void)_selectNextPointForKeyboardSlide:(CGPoint)slide;
- (void)_setNumberOfFingersForGestures:(unint64_t)gestures;
- (void)_setShowsFingers:(BOOL)fingers;
- (void)_startConfirmingLineGestureWithEndpoint:(CGPoint)endpoint;
- (void)_startKeyboardSlideGesture:(id)gesture;
- (void)_startNextKeyboardSlideGestureSegmentAtPoint:(CGPoint)point element:(id)element;
- (void)_startPickingNextPointForLineGesture:(unint64_t)gesture;
- (void)_startPinchMode;
- (void)_startTellMeWhenTimerWithSelector:(SEL)selector interval:(double)interval;
- (void)_updatePinchPositionsWithAttemptedRadiusDelta:(double)delta angleDelta:(double)angleDelta;
- (void)_updateShowsFingers;
- (void)_updateStartingPointForGesturesWithScreenPoint:(id)point forDisplayID:(unsigned int)d;
- (void)_updateVisibleFingers;
- (void)customGestureItemsViewController:(id)controller didChooseGesture:(id)gesture;
- (void)dealloc;
- (void)didChooseActiveHoldAndDragGesture:(id)gesture;
- (void)didChooseAddRecentInCustomGestureItemsViewController:(id)controller;
- (void)didChooseContinuousSlideGesture:(id)gesture completion:(id)completion;
- (void)didChooseCreateInCustomGestureItemsViewController:(id)controller;
- (void)didChooseDoubleTapGesture:(id)gesture;
- (void)didChooseDrawingGesture:(id)gesture;
- (void)didChooseFavorites:(id)favorites;
- (void)didChooseFingers:(id)fingers;
- (void)didChooseFlickGesture:(id)gesture;
- (void)didChooseForceTouchGesture:(id)gesture;
- (void)didChoosePanGesture:(id)gesture;
- (void)didChoosePinchGesture:(id)gesture;
- (void)didChooseSlideGesture:(id)gesture startElement:(id)element completion:(id)completion;
- (void)didChooseStop:(id)stop;
- (void)didConfirmGesture:(id)gesture;
- (void)didRequestRedoGesture:(id)gesture;
- (void)drawingViewController:(id)controller shouldResetScanningFromElement:(id)element;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver willFocusOnContext:(id)context;
- (void)driver:(id)driver willUnfocusFromContext:(id)context;
- (void)exitDrawingViewController:(id)controller;
- (void)fingerItemsViewController:(id)controller didChooseNumberOfFingers:(unint64_t)fingers;
- (void)fingersElement:(id)element didBecomeFocused:(BOOL)focused;
- (void)menuDidAppear:(id)appear;
- (void)menuDidDisappear:(id)disappear;
- (void)menuDidFinishTransition:(id)transition;
- (void)menuWillAppear:(id)appear;
- (void)orientationDidChange:(id)change;
- (void)performHoldAtPoint:(CGPoint)point isDown:(BOOL)down;
- (void)performTap;
- (void)performTapAndHold;
- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point;
- (void)replayGesture:(id)gesture;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
- (void)setAlphaForFingers:(double)fingers;
- (void)setCurrentSwitchController:(id)controller;
- (void)setHidden:(BOOL)hidden;
- (void)setShouldAllowFingersForContinuousGesture:(BOOL)gesture;
- (void)setStartingDisplayIDForGestures:(unsigned int)gestures;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)toggleActiveHoldAndDragGestureAtScreenPoint:(CGPoint)point withDisplayID:(unsigned int)d;
- (void)touchDownForDrawingViewController:(id)controller;
- (void)touchUpForDrawingViewController:(id)controller;
@end

@implementation SCATGestureProvider

- (SCATGestureProvider)initWithMenu:(id)menu
{
  menuCopy = menu;
  v15.receiver = self;
  v15.super_class = SCATGestureProvider;
  v6 = [(SCATGestureProvider *)&v15 init];
  if (v6)
  {
    if (!menuCopy)
    {
      _AXAssert();
    }

    objc_storeStrong(v6 + 5, menu);
    v7 = +[HNDDefaults sharedDefaults];
    v8 = [v7 preferenceForKey:@"ScannerNumberOfFingers"];

    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    *(v6 + 13) = integerValue;
    [menuCopy registerMenuObserver:v6];
    *(v6 + 24) = AXSwitchRecipeHoldPointNone;
    *(v6 + 37) = 0x3FF0000000000000;
    v10 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v10 mainDisplayManager];
    *(v6 + 51) = [mainDisplayManager displayID];

    v12 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
    v13 = *(v6 + 20);
    *(v6 + 20) = v12;

    [*(v6 + 20) addObserver:v6];
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
  }

  return v6;
}

- (void)dealloc
{
  [(SCATMenu *)self->_menu unregisterMenuObserver:self];
  [(SCATGestureProvider *)self _clearTellMeWhenTimer];
  [(SCATGestureProvider *)self _clearArrowView];
  v3.receiver = self;
  v3.super_class = SCATGestureProvider;
  [(SCATGestureProvider *)&v3 dealloc];
}

- (void)orientationDidChange:(id)change
{
  menu = self->_menu;
  changeCopy = change;
  element = [(SCATMenu *)menu element];
  if (element)
  {
    [element scatFrame];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v11 = [NSValue valueWithPoint:MidX, CGRectGetMidY(v16)];
    [(SCATGestureProvider *)self _updateStartingPointForGesturesWithScreenPoint:v11];
  }

  [(SCATGestureProvider *)self _updateVisibleFingers];
  drawingViewController = [(SCATGestureDrawingElementManager *)self->_drawingElementManager drawingViewController];
  [drawingViewController orientationDidChange:changeCopy];
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    hiddenCopy = hidden;
    self->_hidden = hidden;
    [(SCATGestureProvider *)self _updateShowsFingers];
    arrowView = [(SCATGestureProvider *)self arrowView];
    [arrowView setHidden:hiddenCopy];
  }
}

- (void)setAlphaForFingers:(double)fingers
{
  if (self->_alphaForFingers != fingers)
  {
    self->_alphaForFingers = fingers;
    [(SCATGestureProvider *)self _updateVisibleFingers];
  }
}

- (SCATElement)elementForFingers
{
  elementForFingers = self->_elementForFingers;
  if (!elementForFingers)
  {
    v4 = objc_alloc_init(SCATGestureFingersElement);
    v5 = self->_elementForFingers;
    self->_elementForFingers = v4;

    [(SCATGestureFingersElement *)self->_elementForFingers setDelegate:self];
    elementForFingers = self->_elementForFingers;
  }

  return elementForFingers;
}

- (void)setStartingDisplayIDForGestures:(unsigned int)gestures
{
  if (gestures)
  {
    self->_startingDisplayIDForGestures = gestures;
  }
}

- (id)_fingerController
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:{-[SCATGestureProvider startingDisplayIDForGestures](self, "startingDisplayIDForGestures")}];
  fingerController = [v4 fingerController];

  return fingerController;
}

- (void)_updateStartingPointForGesturesWithScreenPoint:(id)point forDisplayID:(unsigned int)d
{
  v4 = *&d;
  pointCopy = point;
  v15 = pointCopy;
  if (pointCopy)
  {
    [pointCopy pointValue];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    element = [(SCATMenu *)self->_menu element];

    if (!element)
    {
      goto LABEL_6;
    }

    element2 = [(SCATMenu *)self->_menu element];
    [element2 scatFrame];
    AX_CGRectGetCenter();
    v8 = v13;
    v10 = v14;
  }

  [(SCATGestureProvider *)self setStartingScreenPointForGestures:v8, v10];
  [(SCATGestureProvider *)self setStartingDisplayIDForGestures:v4];
LABEL_6:
}

- (CGPoint)_startingPointForGestures
{
  [(SCATGestureProvider *)self currentHoldPoint];
  if (v4 == AXSwitchRecipeHoldPointNone[0] && v3 == AXSwitchRecipeHoldPointNone[1])
  {
    [(SCATGestureProvider *)self startingScreenPointForGestures];
    v9 = v8;
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [WeakRetained contentViewForGestureProvider:self];
    [HNDScreen convertPoint:v13 toView:v9, v11];
    v15 = v14;
    v17 = v16;

    v6 = v15;
    v7 = v17;
  }

  else
  {

    [(SCATGestureProvider *)self currentHoldPoint];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (id)_startingPointsAsStrings
{
  [(SCATGestureProvider *)self _startingPointForGestures];

  return [(SCATGestureProvider *)self _pointStringForPoint:?];
}

- (id)_pointStringForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_foreheadRect = &self->_foreheadRect;
  if (self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 17.0 + 5.0 > point.y && AXDeviceHasJindo())
  {
    y = p_foreheadRect->origin.y + p_foreheadRect->size.height + 17.0 + 5.0;
  }

  _numberOfFingers = [(SCATGestureProvider *)self _numberOfFingers];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  fingerContainerView = [_fingerController fingerContainerView];
  [fingerContainerView bounds];
  v14 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:_numberOfFingers aroundPoint:x withinBounds:y, v10, v11, v12, v13];

  return v14;
}

- (void)_resetContinuousGestureData
{
  continuousGestureName = self->_continuousGestureName;
  self->_continuousGestureName = 0;

  continuousGesturePoints = self->_continuousGesturePoints;
  self->_continuousGesturePoints = 0;

  continuousGestureTimes = self->_continuousGestureTimes;
  self->_continuousGestureTimes = 0;
}

- (void)_prepareToBeginContinuousGesture
{
  v2 = 0.0;
  if (!self->_drawingElementManager)
  {
    v2 = 1.0;
  }

  [(SCATGestureProvider *)self setAlphaForFingers:v2];
}

- (void)_initializeContinuousGestureDataWithName:(id)name points:(id)points
{
  nameCopy = name;
  pointsCopy = points;
  [(SCATGestureProvider *)self _resetContinuousGestureData];
  objc_storeStrong(&self->_continuousGestureName, name);
  v8 = [pointsCopy count];
  v9 = [[NSMutableArray alloc] initWithCapacity:v8];
  continuousGesturePoints = self->_continuousGesturePoints;
  self->_continuousGesturePoints = v9;

  v11 = [[NSMutableArray alloc] initWithCapacity:v8];
  continuousGestureTimes = self->_continuousGestureTimes;
  self->_continuousGestureTimes = v11;

  v13 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = pointsCopy;
  v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = self->_continuousGesturePoints;
        nameCopy = [NSMutableArray arrayWithObject:*(*(&v24 + 1) + 8 * v17), nameCopy];
        [(NSMutableArray *)v18 addObject:nameCopy];

        v20 = self->_continuousGestureTimes;
        v21 = [NSMutableArray arrayWithObject:v13];
        [(NSMutableArray *)v20 addObject:v21];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)_addPointsToContinuousGestureData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy count];
  v5 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  if ([(NSMutableArray *)self->_continuousGesturePoints count]!= v4)
  {
    v10 = v4;
    v11 = [(NSMutableArray *)self->_continuousGesturePoints count];
    _AXAssert();
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSMutableArray *)self->_continuousGesturePoints objectAtIndex:i, v10, v11];
      v8 = [(NSMutableArray *)self->_continuousGestureTimes objectAtIndex:i];
      v9 = [dataCopy objectAtIndex:i];
      [v7 addObject:v9];

      [v8 addObject:v5];
    }
  }
}

- (void)_handleCompletedContinuousGesture
{
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  legacyLiftFingersUp = [_fingerController legacyLiftFingersUp];

  [(SCATGestureProvider *)self _addPointsToContinuousGestureData:legacyLiftFingersUp];
  v4 = [AXNamedReplayableGesture gestureWithPoints:self->_continuousGesturePoints times:self->_continuousGestureTimes forces:0];
  [v4 setName:self->_continuousGestureName];
  [v4 setShouldPerformAtOriginalLocation:1];
  [v4 setHasLocalizableName:1];
  [(SCATGestureProvider *)self _saveRecentGesture:v4];
  [(SCATGestureProvider *)self _resetContinuousGestureData];
  self->_isReversingContinuousGesture = 0;
  [(SCATGestureProvider *)self setPanFingerPositions:0];
  [(SCATGestureProvider *)self setShouldAllowFingersForContinuousGesture:0];
  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)_saveRecentGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchRecentGestures = [v4 assistiveTouchRecentGestures];
  v8 = [assistiveTouchRecentGestures mutableCopy];

  if (v8)
  {
    [v8 removeObject:gestureCopy];
  }

  else
  {
    v8 = [NSMutableArray arrayWithCapacity:1];
  }

  [v8 insertObject:gestureCopy atIndex:0];

  v6 = [v8 count];
  if (v6 >= 4)
  {
    [v8 removeObjectsInRange:{3, v6 - 3}];
  }

  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchRecentGestures:v8];
}

- (void)_performGesture:(id)gesture
{
  if (gesture)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008CE10;
    v3[3] = &unk_1001D5E70;
    v3[4] = self;
    [(SCATGestureProvider *)self _performGesture:gesture withBlock:v3];
  }
}

- (void)_performGesture:(id)gesture withBlock:(id)block
{
  blockCopy = block;
  gestureCopy = gesture;
  v7 = +[SCATScannerManager sharedManager];
  [v7 addReasonToDisableScanning:@"PerformingGesture"];
  blockCopy[2](blockCopy, gestureCopy);

  +[HNDDisplayManager fadeDuration];
  v8 = v7;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_performTapGestureForDoubleTap:(BOOL)tap
{
  tapCopy = tap;
  [(SCATGestureProvider *)self _startingPointForGestures];
  v7 = [AXNamedReplayableGesture tapGestureAtPoint:tapCopy isDoubleTap:[(SCATGestureProvider *)self _numberOfFingers] numberOfFingers:v5, v6];
  v9 = v7;
  v8 = &off_1001D6CF8;
  if (!tapCopy)
  {
    v8 = &off_1001D6C68;
  }

  [v7 setName:*v8];
  [v9 setHasLocalizableName:1];
  [v9 setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:v9];
}

- (void)_performFlickGestureWithAngle:(double)angle name:(id)name
{
  nameCopy = name;
  [(SCATGestureProvider *)self _startingPointForGestures];
  angle = [AXNamedReplayableGesture flickGestureAtPoint:[(SCATGestureProvider *)self _numberOfFingers] angle:v7 numberOfFingers:v8, angle];
  [angle setName:nameCopy];

  [angle setHasLocalizableName:1];
  [angle setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:angle];
}

- (void)_performForceTouchGesture
{
  [(SCATGestureProvider *)self _startingPointForGestures];
  v3 = [AXNamedReplayableGesture forceTouchGestureAtPoint:?];
  [v3 setName:@"FORCE_TOUCH"];
  [v3 setHasLocalizableName:1];
  [v3 setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:v3];
}

- (id)_pinchPositionsWithRadius:(double)radius angle:(double)angle
{
  [(SCATGestureProvider *)self pinchFulcrum];
  v8 = v7;
  v9 = __sincos_stret(angle);
  [(SCATGestureProvider *)self pinchFulcrum];
  v11 = v10 + radius * v9.__sinval;
  [(SCATGestureProvider *)self pinchFulcrum];
  v13 = v12;
  v14 = __sincos_stret(angle + 3.14159265);
  [(SCATGestureProvider *)self pinchFulcrum];
  v16 = v15 + radius * v14.__sinval;
  v22.x = v8 + radius * v9.__cosval;
  v22.y = v11;
  v17 = NSStringFromCGPoint(v22);
  v23.x = v13 + radius * v14.__cosval;
  v23.y = v16;
  v18 = NSStringFromCGPoint(v23);
  v19 = [NSArray arrayWithObjects:v17, v18, 0];

  return v19;
}

- (double)_pinchRadiusAdjustedByDelta:(double)delta
{
  if (self->_isReversingContinuousGesture)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = 1.0;
  }

  [(SCATGestureProvider *)self pinchRadius];
  return v5 + delta * v4;
}

- (double)_pinchAngleAdjustedByDelta:(double)delta
{
  if (self->_isReversingContinuousGesture)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = 1.0;
  }

  [(SCATGestureProvider *)self pinchAngle];
  return v5 + delta * v4;
}

- (void)_updatePinchPositionsWithAttemptedRadiusDelta:(double)delta angleDelta:(double)angleDelta
{
  [(SCATGestureProvider *)self _pinchRadiusAdjustedByDelta:?];
  v8 = v7;
  [(SCATGestureProvider *)self _pinchAngleAdjustedByDelta:angleDelta];
  v10 = v9;
  pinchFingerOriginalPositions = [(SCATGestureProvider *)self pinchFingerOriginalPositions];
  if (v8 < 20.0 || v8 > 200.0)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [(SCATGestureProvider *)self _pinchPositionsWithRadius:v8 angle:v10];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  v14 = [_fingerController moveFingersToPoints:v12];

  if ((v14 & 1) == 0)
  {
LABEL_8:
    if (self->_isReversingContinuousGesture)
    {
      v15 = 0;
    }

    else
    {
      [(SCATGestureProvider *)self pinchRadius];
      v17 = v16;
      [(SCATGestureProvider *)self pinchAngle];
      v19 = [(SCATGestureProvider *)self _pinchPositionsWithRadius:v17 angle:v18];
      v20 = [v19 isEqualToArray:pinchFingerOriginalPositions];

      if (v20)
      {
        goto LABEL_20;
      }

      v15 = !self->_isReversingContinuousGesture;
    }

    self->_isReversingContinuousGesture = v15;
    [(SCATGestureProvider *)self _pinchRadiusAdjustedByDelta:delta];
    v8 = v21;
    [(SCATGestureProvider *)self _pinchAngleAdjustedByDelta:angleDelta];
    v10 = v22;
    if (v8 >= 20.0 && v8 <= 200.0)
    {
      v23 = [(SCATGestureProvider *)self _pinchPositionsWithRadius:v8 angle:v22];

      _fingerController2 = [(SCATGestureProvider *)self _fingerController];
      v25 = [_fingerController2 moveFingersToPoints:v23];

      v12 = v23;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    v27 = v12;
    isReversingContinuousGesture = self->_isReversingContinuousGesture;
    v26 = pinchFingerOriginalPositions;
    _AXAssert();
LABEL_20:
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:v26];
    goto LABEL_21;
  }

LABEL_15:
  [(SCATGestureProvider *)self setPinchRadius:v8];
  [(SCATGestureProvider *)self setPinchAngle:v10];
  [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v12];
  if ([v12 isEqualToArray:pinchFingerOriginalPositions])
  {
    if (!self->_isReversingContinuousGesture)
    {
      _AXAssert();
    }

    self->_isReversingContinuousGesture = 0;
  }

LABEL_21:
}

- (id)_panPositionsAdjustedByDelta:(CGSize)delta
{
  height = delta.height;
  width = delta.width;
  panFingerPositions = [(SCATGestureProvider *)self panFingerPositions];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [panFingerPositions count]);

  if (self->_isReversingContinuousGesture)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = 1.0;
  }

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  panFingerPositions2 = [(SCATGestureProvider *)self panFingerPositions];
  v10 = [panFingerPositions2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(panFingerPositions2);
        }

        v14 = CGPointFromString(*(*(&v17 + 1) + 8 * i));
        v23.x = v14.x + width * v8;
        v23.y = v14.y + height * v8;
        v15 = NSStringFromCGPoint(v23);
        [v7 addObject:v15];
      }

      v11 = [panFingerPositions2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (void)_panByDelta:(CGSize)delta
{
  height = delta.height;
  width = delta.width;
  v6 = [(SCATGestureProvider *)self _panPositionsAdjustedByDelta:?];
  _startingPointsAsStrings = [(SCATGestureProvider *)self _startingPointsAsStrings];
  if ([v6 isEqualToArray:_startingPointsAsStrings])
  {
    if (!self->_isReversingContinuousGesture)
    {
      _AXAssert();
    }

    self->_isReversingContinuousGesture = 0;
  }

  _fingerController = [(SCATGestureProvider *)self _fingerController];
  v9 = [_fingerController moveFingersToPoints:v6];

  if (v9)
  {
    height = v6;
LABEL_7:
    [(SCATGestureProvider *)self setPanFingerPositions:v6];
    [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v6];
    goto LABEL_12;
  }

  if (self->_isReversingContinuousGesture || (-[SCATGestureProvider panFingerPositions](self, "panFingerPositions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToArray:_startingPointsAsStrings], v10, (v11 & 1) != 0))
  {
    height = v6;
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:v14];
  }

  else
  {
    self->_isReversingContinuousGesture = 1;
    height = [(SCATGestureProvider *)self _panPositionsAdjustedByDelta:width, height];

    _fingerController2 = [(SCATGestureProvider *)self _fingerController];
    v13 = [_fingerController2 moveFingersToPoints:height];

    if (v13)
    {
      v6 = height;
      goto LABEL_7;
    }

    isReversingContinuousGesture = self->_isReversingContinuousGesture;
    _AXAssert();
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:_startingPointsAsStrings];
  }

LABEL_12:
}

- (void)_finishLineGesture
{
  [(SCATGestureProvider *)self _startingPointForGestures];
  v4 = v3;
  v6 = v5;
  [(SCATGestureProvider *)self endPointForLineGesture];
  v8 = v7;
  v10 = v9;
  lineGestureType = [(SCATGestureProvider *)self lineGestureType];
  if (lineGestureType == 2)
  {
    AX_CGPointGetDistanceToPoint();
    v18 = v17 / 80.0;
    v26.x = v4;
    v26.y = v6;
    v19 = NSStringFromCGPoint(v26);
    v27.x = v8;
    v27.y = v10;
    v20 = NSStringFromCGPoint(v27);
    v21 = [NSArray arrayWithObjects:v19, v20, 0];
    v22 = [AXNamedReplayableGesture lineGestureBetweenPoints:v21 duration:[(SCATGestureProvider *)self _numberOfFingers] numberOfFingers:v18 initialHoldDuration:0.5];

    [v22 setName:@"HOLD_AND_DRAG"];
  }

  else if (lineGestureType == 1)
  {
    v22 = [AXNamedReplayableGesture flickGestureStartingAtPoint:[(SCATGestureProvider *)self _numberOfFingers] endingAtPoint:v4 numberOfFingers:v6, v8, v10];
    [v22 setName:@"FLICK_ARBITRARY"];
  }

  else if (lineGestureType)
  {
    v22 = 0;
  }

  else
  {
    AX_CGPointGetDistanceToPoint();
    v13 = v12 / 80.0;
    v24.x = v4;
    v24.y = v6;
    v14 = NSStringFromCGPoint(v24);
    v25.x = v8;
    v25.y = v10;
    v15 = NSStringFromCGPoint(v25);
    v16 = [NSArray arrayWithObjects:v14, v15, 0];
    v22 = [AXNamedReplayableGesture lineGestureBetweenPoints:v16 duration:[(SCATGestureProvider *)self _numberOfFingers] numberOfFingers:v13];

    [v22 setName:@"DRAG_AND_DROP"];
  }

  [v22 setHasLocalizableName:1];
  [v22 setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:v22];
}

- (void)_startPinchMode
{
  [(SCATGestureProvider *)self setIsPinching:1];
  [(SCATGestureProvider *)self alphaForFingers];
  v4 = v3;
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  fingerContainerView = [_fingerController fingerContainerView];
  [fingerContainerView setAlpha:v4];

  _fingerController2 = [(SCATGestureProvider *)self _fingerController];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [_fingerController2 showPinchFingersAnimated:1 midpoint:?];
}

- (void)_endPinchMode
{
  [(SCATGestureProvider *)self setIsPinching:0];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [_fingerController clearAllFingersAnimated:1 endPointForAnimation:?];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)_updateVisibleFingers
{
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  if ([_fingerController isPerformingGesture])
  {
    _startingPointsAsStrings = ASTLogCommon();
    if (os_log_type_enabled(_startingPointsAsStrings, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, _startingPointsAsStrings, OS_LOG_TYPE_DEFAULT, "Not updating visible fingers because a gesture is in progress", v21, 2u);
    }

    goto LABEL_17;
  }

  numberOfFingers = [_fingerController numberOfFingers];
  if (self->_showsFingers)
  {
    v6 = numberOfFingers;
    [(SCATGestureProvider *)self alphaForFingers];
    v8 = v7;
    fingerContainerView = [_fingerController fingerContainerView];
    [fingerContainerView setAlpha:v8];

    drawingElementManager = self->_drawingElementManager;
    if (!drawingElementManager)
    {
      [(SCATGestureProvider *)self currentHoldPoint];
      if (v16 == AXSwitchRecipeHoldPointNone[0] && v15 == AXSwitchRecipeHoldPointNone[1])
      {
        v18 = v6 == 0;
        if ([(SCATGestureProvider *)self isPinching])
        {
          [(SCATGestureProvider *)self _startingPointForGestures];
          [_fingerController showPinchFingersAnimated:v18 midpoint:?];
          goto LABEL_18;
        }

        _startingPointsAsStrings = [(SCATGestureProvider *)self _startingPointsAsStrings];
        v19 = [AXPIFingerUtilities fingerModelsForPointStrings:_startingPointsAsStrings];
      }

      else
      {
        v18 = v6 == 0;
        [(SCATGestureProvider *)self currentHoldPoint];
        _startingPointsAsStrings = [AXPIFingerModel fingerModelForLocation:?];
        v22 = _startingPointsAsStrings;
        v19 = [NSArray arrayWithObjects:&v22 count:1];
      }

      v20 = v19;
      [_fingerController showFingerModels:v19 animated:v18 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

LABEL_17:
      goto LABEL_18;
    }

    v11 = v6 == 0;
    drawingViewController = [(SCATGestureDrawingElementManager *)drawingElementManager drawingViewController];
    fingerPositions = [drawingViewController fingerPositions];
    v14 = [AXPIFingerUtilities fingerModelsForPointStrings:fingerPositions];
    [_fingerController showFingerModels:v14 animated:v11 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  else
  {
    [(SCATGestureProvider *)self _startingPointForGestures];
    [_fingerController clearAllFingersAnimated:1 endPointForAnimation:?];
  }

LABEL_18:
}

- (void)_clearTellMeWhenTimer
{
  [(NSTimer *)self->_tellMeWhenGestureTimer invalidate];
  tellMeWhenGestureTimer = self->_tellMeWhenGestureTimer;
  self->_tellMeWhenGestureTimer = 0;
}

- (void)_startTellMeWhenTimerWithSelector:(SEL)selector interval:(double)interval
{
  if (self->_tellMeWhenGestureTimer)
  {
    _AXAssert();
  }

  if (interval == 0.0)
  {
    v7 = +[AXSettings sharedInstance];
    interval = dbl_1001BD3C0[[v7 switchControlScanningStyle] == 0];
  }

  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:selector selector:0 userInfo:1 repeats:interval];
  tellMeWhenGestureTimer = self->_tellMeWhenGestureTimer;
  self->_tellMeWhenGestureTimer = v8;

  _objc_release_x1(v8, tellMeWhenGestureTimer);
}

- (void)_clearArrowView
{
  arrowView = [(SCATGestureProvider *)self arrowView];
  [arrowView removeFromSuperview];

  [(SCATGestureProvider *)self setArrowView:0];
}

- (void)_setNumberOfFingersForGestures:(unint64_t)gestures
{
  if (self->_numberOfFingersForGestures != gestures)
  {
    self->_numberOfFingersForGestures = gestures;
    [(SCATGestureProvider *)self _updateVisibleFingers];
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithInteger:gestures];
    [v6 setPreference:v5 forKey:@"ScannerNumberOfFingers"];
  }
}

- (unint64_t)_numberOfFingersWithGestureSheet:(BOOL)sheet
{
  if (sheet)
  {
    return self->_numberOfFingersForGestures;
  }

  if ([(SCATGestureProvider *)self lineGestureState])
  {
    return self->_numberOfFingersForGestures;
  }

  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];

  if (currentSwitchController)
  {
    return self->_numberOfFingersForGestures;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_numberOfFingers
{
  containsGestureSheet = [(SCATMenu *)self->_menu containsGestureSheet];

  return [(SCATGestureProvider *)self _numberOfFingersWithGestureSheet:containsGestureSheet];
}

- (void)_setShowsFingers:(BOOL)fingers
{
  if (self->_showsFingers != fingers)
  {
    fingersCopy = fingers;
    self->_showsFingers = fingers;
    [(SCATGestureProvider *)self _updateVisibleFingers];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureProvider:self didShowFingers:fingersCopy];
  }
}

- (void)_updateShowsFingers
{
  isHidden = [(SCATGestureProvider *)self isHidden];
  if ((isHidden & 1) != 0 || [(SCATMenu *)self->_menu tipObject]== 1 || [(SCATGestureProvider *)self lineGestureState])
  {

    [(SCATGestureProvider *)self _setShowsFingers:isHidden ^ 1];
  }

  else
  {
    currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
    if (currentSwitchController)
    {
      shouldAllowFingersForContinuousGesture = 1;
    }

    else
    {
      shouldAllowFingersForContinuousGesture = [(SCATGestureProvider *)self shouldAllowFingersForContinuousGesture];
    }

    [(SCATGestureProvider *)self _setShowsFingers:shouldAllowFingersForContinuousGesture];
  }
}

- (CGRect)_rectForFingers:(id)fingers
{
  fingersCopy = fingers;
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  [_fingerController rectForFingersAtPoints:fingersCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_rectToClearForPinchGesture
{
  [(SCATGestureProvider *)self _startingPointForGestures];
  v4 = v3;
  v6 = v5;
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  fingerContainerView = [_fingerController fingerContainerView];
  [fingerContainerView bounds];
  v13 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:v4 withinBounds:v6, v9, v10, v11, v12];
  [(SCATGestureProvider *)self _rectForFingers:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)rectToClearForFingersWithGestureSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  [(SCATGestureProvider *)self _startingPointForGestures];
  v6 = v5;
  v8 = v7;
  v9 = [(SCATGestureProvider *)self _numberOfFingersWithGestureSheet:sheetCopy];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  fingerContainerView = [_fingerController fingerContainerView];
  [fingerContainerView bounds];
  v16 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:v9 aroundPoint:v6 withinBounds:v8, v12, v13, v14, v15];

  [(SCATGestureProvider *)self _rectForFingers:v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)_clearLineGestureState
{
  if ([(SCATGestureProvider *)self lineGestureState])
  {
    [(SCATGestureProvider *)self setLineGestureState:0];
    currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
    lineGesturePointPicker = self->_lineGesturePointPicker;

    if (currentSwitchController == lineGesturePointPicker)
    {
      [(SCATGestureProvider *)self setCurrentSwitchController:0];
      v5 = self->_lineGesturePointPicker;
      self->_lineGesturePointPicker = 0;
    }

    else
    {
      [(SCATGestureProvider *)self _updateShowsFingers];
    }

    [(SCATGestureProvider *)self _clearArrowView];
  }
}

- (id)_promptForLineGesture:(unint64_t)gesture
{
  if (gesture > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_100042B24(*(&off_1001D5EB8 + gesture));
  }

  return v4;
}

- (void)_startPickingNextPointForLineGesture:(unint64_t)gesture
{
  if ([(SCATGestureProvider *)self lineGestureState]&& [(SCATGestureProvider *)self lineGestureState]!= 2)
  {
    lineGestureState = [(SCATGestureProvider *)self lineGestureState];
    _AXAssert();
  }

  [(SCATGestureProvider *)self setLineGestureState:1, lineGestureState];
  [(SCATGestureProvider *)self setLineGestureType:gesture];
  lineGesturePointPicker = self->_lineGesturePointPicker;
  if (!lineGesturePointPicker)
  {
    v6 = +[AXSettings sharedInstance];
    assistiveTouchScanningMode = [v6 assistiveTouchScanningMode];

    if (assistiveTouchScanningMode)
    {
      [SCATPointPicker mostSuitablePointPickerWithMenu:self->_menu];
    }

    else
    {
      [SCATPointPicker pointPickerWithMode:1 menu:self->_menu];
    }
    v8 = ;
    [(SCATPointPicker *)v8 setShouldKeepScannerAwake:1];
    [(SCATPointPicker *)v8 setDelegate:self];
    v9 = self->_lineGesturePointPicker;
    self->_lineGesturePointPicker = v8;

    lineGesturePointPicker = self->_lineGesturePointPicker;
  }

  visualProvider = [(SCATElementManager *)lineGesturePointPicker visualProvider];
  [visualProvider setPromptPosition:{-[SCATGestureProvider lineGestureType](self, "lineGestureType") != 4}];

  visualProvider2 = [(SCATElementManager *)self->_lineGesturePointPicker visualProvider];
  v12 = [(SCATGestureProvider *)self _promptForLineGesture:gesture];
  [visualProvider2 setPrompt:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCATElementManager *)self->_lineGesturePointPicker redisplayIfNeeded:0];
    if (gesture == 3)
    {
      [(SCATGestureProvider *)self _startingPointForGestures];
      v14 = v13;
      v16 = v15;
      [(SCATPointPicker *)self->_lineGesturePointPicker moveToPoint:?];
      [(SCATPointPicker *)self->_lineGesturePointPicker pressFingersDown:1];
      v17 = +[SCATScannerManager sharedManager];
      [v17 overrideMotionTrackerLookAtPoint:{v14, v16}];

      v18 = +[SCATScannerManager sharedManager];
      [v18 addPointerPointPickerForMovementNotifications:self->_lineGesturePointPicker];

      [(SCATGestureProvider *)self _setShowsFingers:0];
    }

    else
    {
      v19 = +[SCATScannerManager sharedManager];
      [v19 addPointerPointPickerForMovementNotifications:self->_lineGesturePointPicker];
    }
  }

  [(SCATGestureProvider *)self _clearArrowView];
  v20 = self->_lineGesturePointPicker;

  [(SCATGestureProvider *)self setCurrentSwitchController:v20];
}

- (void)_startConfirmingLineGestureWithEndpoint:(CGPoint)endpoint
{
  y = endpoint.y;
  x = endpoint.x;
  if ([(SCATGestureProvider *)self lineGestureState]!= 1)
  {
    lineGestureState = [(SCATGestureProvider *)self lineGestureState];
    _AXAssert();
  }

  [(SCATGestureProvider *)self setLineGestureState:2, lineGestureState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[SCATScannerManager sharedManager](SCATScannerManager, "sharedManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 removePointerPointPickerForMovementNotifications:self->_lineGesturePointPicker], v6, self->_lineGestureType == 3))
  {
    [(SCATPointPicker *)self->_lineGesturePointPicker pressFingersDown:0];
    [(SCATGestureProvider *)self _clearLineGestureState];
    keyboardSlideGestureCompletion = [(SCATGestureProvider *)self keyboardSlideGestureCompletion];

    if (keyboardSlideGestureCompletion)
    {
      keyboardSlideGestureCompletion2 = [(SCATGestureProvider *)self keyboardSlideGestureCompletion];
      keyboardSlideGestureCompletion2[2](keyboardSlideGestureCompletion2, 1);

      [(SCATGestureProvider *)self setKeyboardSlideGestureCompletion:0];
    }
  }

  else
  {
    lineGesturePointPicker = self->_lineGesturePointPicker;
    self->_lineGesturePointPicker = 0;

    [(SCATGestureProvider *)self setCurrentSwitchController:0];
    [(SCATGestureProvider *)self setEndPointForLineGesture:x, y];
    v18 = [(SCATModernMenuSheet *)[SCATModernMenuConfirmGestureSheet alloc] initWithMenu:self->_menu];
    [(SCATModernMenuConfirmGestureSheet *)v18 setDelegate:self];
    [(SCATMenu *)self->_menu presentWithRootLevelSheet:v18 useCurrentElementAndPoint:1];
    [(SCATGestureProvider *)self _startingPointForGestures];
    v11 = v10;
    v13 = v12;
    v14 = objc_alloc_init(SCATGestureArrowView);
    [(SCATGestureArrowView *)v14 setStyle:6];
    [(SCATGestureArrowView *)v14 setStartPoint:v11 endPoint:v13, x, y];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained contentViewForGestureProvider:self];

    [v16 insertSubview:v14 atIndex:0];
    [(SCATGestureProvider *)self setArrowView:v14];
  }
}

- (void)_selectNextPointForKeyboardSlide:(CGPoint)slide
{
  y = slide.y;
  x = slide.x;
  if ([(SCATGestureProvider *)self lineGestureState]!= 1)
  {
    lineGestureState = [(SCATGestureProvider *)self lineGestureState];
    _AXAssert();
  }

  [(SCATGestureProvider *)self lastSelectedKeyboardSlidePoint];
  v7 = v6;
  v9 = v8;
  [(SCATGestureProvider *)self keyboardSlideStartPoint];
  v12 = v9 == v11 && v7 == v10;
  if (v12)
  {
    [(SCATGestureProvider *)self keyboardSlideStartPoint];
  }

  else
  {
    [(SCATGestureProvider *)self lastSelectedKeyboardSlidePoint];
  }

  v15 = v13;
  v16 = v14;
  AX_CGPointGetDistanceToPoint();
  v18 = v17 / 2400.0;
  v27.x = v15;
  v27.y = v16;
  v19 = NSStringFromCGPoint(v27);
  v28.x = x;
  v28.y = y;
  v20 = NSStringFromCGPoint(v28);
  v21 = [NSArray arrayWithObjects:v19, v20, 0];
  v25 = [AXNamedReplayableGesture lineGestureBetweenPoints:v21 duration:[(SCATGestureProvider *)self _numberOfFingers] numberOfFingers:v18];

  [v25 setName:@"DRAG_AND_DROP"];
  if (v12)
  {
    visualProvider = [(SCATElementManager *)self->_lineGesturePointPicker visualProvider];
    [visualProvider setPrompt:0];

    _fingerController = [(SCATGestureProvider *)self _fingerController];
    [_fingerController clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

    [(SCATGestureProvider *)self _startKeyboardSlideGesture:v25];
  }

  else
  {
    [(SCATGestureProvider *)self _continueKeyboardSlideWithGesture:v25];
  }

  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:x, y];
}

- (void)didChooseFavorites:(id)favorites
{
  v4 = [[SCATModernMenuCustomGesturesSheet alloc] initWithType:0 menu:self->_menu];
  [(SCATModernMenuCustomGesturesSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseFlickGesture:(id)gesture
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFlickSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFlickSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChoosePanGesture:(id)gesture
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGesturePanSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGesturePanSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChoosePinchGesture:(id)gesture
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGesturePinchSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGesturePinchSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseContinuousSlideGesture:(id)gesture completion:(id)completion
{
  gestureCopy = gesture;
  [(SCATGestureProvider *)self setKeyboardSlideGestureCompletion:completion];
  [(SCATGestureProvider *)self didChooseActiveHoldAndDragGesture:gestureCopy];
}

- (void)didChooseSlideGesture:(id)gesture startElement:(id)element completion:(id)completion
{
  completionCopy = completion;
  [(SCATGestureProvider *)self setKeyboardSlideStartElement:element];
  [(SCATGestureProvider *)self setIsStartingNextKeyboardSlideSegment:0];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [(SCATGestureProvider *)self setKeyboardSlideStartPoint:?];
  [(SCATGestureProvider *)self keyboardSlideStartPoint];
  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:?];
  [(SCATGestureProvider *)self setKeyboardSlideGestureCompletion:completionCopy];

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:4];
}

- (void)toggleActiveHoldAndDragGestureAtScreenPoint:(CGPoint)point withDisplayID:(unsigned int)d
{
  v4 = *&d;
  y = point.y;
  x = point.x;
  if ([(SCATGestureProvider *)self lineGestureType]!= 4)
  {
    if ([(SCATGestureProvider *)self lineGestureState]== 1)
    {
      v8 = CGPointZero.y;

      [(SCATGestureProvider *)self _startConfirmingLineGestureWithEndpoint:CGPointZero.x, v8];
    }

    else
    {
      v9 = [NSValue valueWithPoint:x, y];
      [(SCATGestureProvider *)self _updateStartingPointForGesturesWithScreenPoint:v9 forDisplayID:v4];
      [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:3];
    }
  }
}

- (void)didChooseActiveHoldAndDragGesture:(id)gesture
{
  menu = [gesture menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [menu currentDisplayID]);

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:3];
}

- (void)didChooseDoubleTapGesture:(id)gesture
{
  menu = [gesture menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [menu currentDisplayID]);

  [(SCATGestureProvider *)self _performTapGestureForDoubleTap:1];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)didChooseFingers:(id)fingers
{
  menu = [fingers menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [menu currentDisplayID]);

  v5 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFingersSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFingersSheet *)v5 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v5];
}

- (void)didChooseDrawingGesture:(id)gesture
{
  menu = [gesture menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [menu currentDisplayID]);

  v5 = [SCATGestureDrawingElementManager alloc];
  _startingPointsAsStrings = [(SCATGestureProvider *)self _startingPointsAsStrings];
  v7 = [(SCATGestureDrawingElementManager *)v5 initWithStartingFingerPositions:_startingPointsAsStrings menu:self->_menu];

  drawingViewController = [(SCATGestureDrawingElementManager *)v7 drawingViewController];
  [drawingViewController setDelegate:self];

  [(SCATGestureProvider *)self setCurrentSwitchController:v7];
  drawingElementManager = self->_drawingElementManager;
  self->_drawingElementManager = v7;

  [(SCATGestureProvider *)self setAlphaForFingers:0.0];
}

- (void)_didChooseFlickWithAngle:(double)angle name:(id)name
{
  [(SCATGestureProvider *)self _performFlickGestureWithAngle:name name:angle];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)didChooseForceTouchGesture:(id)gesture
{
  [(SCATGestureProvider *)self _performForceTouchGesture];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)_didChoosePanWithName:(id)name selector:(SEL)selector
{
  nameCopy = name;
  v10 = [(SCATModernMenuSheet *)[SCATModernMenuStopContinuousGestureSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuStopContinuousGestureSheet *)v10 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v10];
  [(SCATGestureProvider *)self _prepareToBeginContinuousGesture];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  legacyPressFingersDown = [_fingerController legacyPressFingersDown];

  [(SCATGestureProvider *)self _startTellMeWhenTimerWithSelector:selector];
  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:nameCopy points:legacyPressFingersDown];

  _startingPointsAsStrings = [(SCATGestureProvider *)self _startingPointsAsStrings];
  [(SCATGestureProvider *)self setPanFingerPositions:_startingPointsAsStrings];
}

- (void)_didChoosePinchItemWithName:(id)name selector:(SEL)selector
{
  nameCopy = name;
  v15 = [(SCATModernMenuSheet *)[SCATModernMenuStopContinuousGestureSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuStopContinuousGestureSheet *)v15 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v15];
  [(SCATGestureProvider *)self _prepareToBeginContinuousGesture];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  legacyPressFingersDown = [_fingerController legacyPressFingersDown];

  [(SCATGestureProvider *)self _startTellMeWhenTimerWithSelector:selector];
  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:nameCopy points:legacyPressFingersDown];

  if ([legacyPressFingersDown count] != 2)
  {
    _AXAssert();
  }

  v9 = [legacyPressFingersDown objectAtIndex:0];
  v10 = CGPointFromString(v9);

  v11 = [legacyPressFingersDown objectAtIndex:1];
  CGPointFromString(v11);

  AX_CGPointGetMidpointToPoint();
  [(SCATGestureProvider *)self setPinchFulcrum:?];
  [(SCATGestureProvider *)self pinchFulcrum];
  v13 = v10.y - v12;
  [(SCATGestureProvider *)self pinchFulcrum];
  [(SCATGestureProvider *)self setPinchAngle:atan2(v13, v10.x - v14)];
  [(SCATGestureProvider *)self pinchFulcrum];
  AX_CGPointGetDistanceToPoint();
  [(SCATGestureProvider *)self setPinchRadius:?];
  [(SCATGestureProvider *)self setPinchFingerOriginalPositions:legacyPressFingersDown];
}

- (void)didChooseStop:(id)stop
{
  [(SCATGestureProvider *)self _clearTellMeWhenTimer];

  [(SCATGestureProvider *)self _handleCompletedContinuousGesture];
}

- (CGRect)rectToClearForStop:(id)stop
{
  if ([(SCATGestureProvider *)self isPinching])
  {
    [(SCATGestureProvider *)self _rectToClearForPinchGesture];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)nameForConfirmationButton:(id)button
{
  lineGestureType = [(SCATGestureProvider *)self lineGestureType];
  if (lineGestureType > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_100042B24(*(&off_1001D5EE0 + lineGestureType));
  }

  return v4;
}

- (void)didConfirmGesture:(id)gesture
{
  [(SCATGestureProvider *)self _finishLineGesture];

  [(SCATGestureProvider *)self _clearLineGestureState];
}

- (void)didRequestRedoGesture:(id)gesture
{
  lineGestureType = [(SCATGestureProvider *)self lineGestureType];

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:lineGestureType];
}

- (void)fingerItemsViewController:(id)controller didChooseNumberOfFingers:(unint64_t)fingers
{
  [(SCATGestureProvider *)self _setNumberOfFingersForGestures:fingers];
  menu = self->_menu;

  [(SCATMenu *)menu popSheet];
}

- (id)contextForCustomGestureItemsViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained contentViewForGestureProvider:self];

  return v5;
}

- (id)_repositionedGestureFromOriginalGesture:(id)gesture
{
  gestureCopy = gesture;
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  [_fingerController midpointOfStartingFingersForGesture:gestureCopy];
  v7 = v6;
  v9 = v8;

  [(SCATGestureProvider *)self _startingPointForGestures];
  v12 = [gestureCopy gestureShiftedByOffset:{v10 - v7, v11 - v9}];

  [v12 setShouldPerformAtOriginalLocation:1];

  return v12;
}

- (void)customGestureItemsViewController:(id)controller didChooseGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([controller type] == 1)
  {
    v6 = +[AXSettings sharedInstance];
    assistiveTouchSavedGestures = [v6 assistiveTouchSavedGestures];
    v8 = [assistiveTouchSavedGestures mutableCopy];

    if (!v8)
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [v8 addObject:gestureCopy];
    [v6 setAssistiveTouchSavedGestures:v8];
    [(SCATMenu *)self->_menu popSheet];
  }

  else
  {
    if ([gestureCopy shouldPerformAtOriginalLocation])
    {
      v9 = gestureCopy;
    }

    else
    {
      v10 = [(SCATGestureProvider *)self _repositionedGestureFromOriginalGesture:gestureCopy];

      v9 = v10;
    }

    gestureCopy = v9;
    [(SCATGestureProvider *)self _performGesture:v9];
    [(SCATGestureProvider *)self _updateVisibleFingers];
  }
}

- (void)didChooseAddRecentInCustomGestureItemsViewController:(id)controller
{
  v4 = [[SCATModernMenuCustomGesturesSheet alloc] initWithType:1 menu:self->_menu];
  [(SCATModernMenuCustomGesturesSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseCreateInCustomGestureItemsViewController:(id)controller
{
  delegate = [(SCATGestureProvider *)self delegate];
  [delegate didChooseCreateCustomGestureFromGestureProvider:self];
}

- (void)setShouldAllowFingersForContinuousGesture:(BOOL)gesture
{
  if (self->_shouldAllowFingersForContinuousGesture != gesture)
  {
    self->_shouldAllowFingersForContinuousGesture = gesture;
    [(SCATGestureProvider *)self _updateShowsFingers];
  }
}

- (void)performTapAndHold
{
  v5 = [(SCATModernMenuSheet *)[SCATModernMenuStopContinuousGestureSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuStopContinuousGestureSheet *)v5 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v5];
  [(SCATGestureProvider *)self setShouldAllowFingersForContinuousGesture:1];
  [(SCATGestureProvider *)self _prepareToBeginContinuousGesture];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  legacyPressFingersDown = [_fingerController legacyPressFingersDown];

  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:@"TAP_AND_HOLD" points:legacyPressFingersDown];
}

- (void)performTap
{
  [(SCATGestureProvider *)self _performTapGestureForDoubleTap:0];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (id)gesturesSheet
{
  v3 = [SCATModernMenuGesturesSheet alloc];
  menu = self->_menu;
  v5 = +[AXSettings sharedInstance];
  switchControlGesturesMenuItems = [v5 switchControlGesturesMenuItems];
  v7 = [(SCATModernMenuSimpleSheet *)v3 initWithMenu:menu menuItemDictionaryArray:switchControlGesturesMenuItems];

  return v7;
}

- (void)replayGesture:(id)gesture
{
  gestureCopy = gesture;
  [(SCATGestureProvider *)self _fingerController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008FF3C;
  v7 = v6[3] = &unk_1001D3750;
  v5 = v7;
  [v5 performGesture:gestureCopy completion:v6];
}

- (void)performHoldAtPoint:(CGPoint)point isDown:(BOOL)down
{
  downCopy = down;
  y = point.y;
  x = point.x;
  v8 = SWCHLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100129F14(downCopy, v8, x, y);
  }

  v10 = AXSwitchRecipeHoldPointNone[0];
  v9 = AXSwitchRecipeHoldPointNone[1];
  if (x == AXSwitchRecipeHoldPointNone[0] && y == v9)
  {
    _AXAssert();
  }

  [(SCATGestureProvider *)self currentHoldPoint];
  if (downCopy)
  {
    if (v12 != v10 || v13 != v9)
    {
      v15 = SWCHLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A00C(self, v15);
      }

      _fingerController = [(SCATGestureProvider *)self _fingerController];
      [_fingerController liftFingersUpAnimated:1];
    }

    [(SCATGestureProvider *)self setCurrentHoldPoint:x, y];
    [(SCATGestureProvider *)self _setShowsFingers:1];
    [(SCATGestureProvider *)self _updateVisibleFingers];
    _fingerController2 = [(SCATGestureProvider *)self _fingerController];
    [_fingerController2 pressFingersDownAnimated:1];
  }

  else
  {
    if (v12 == x && v13 == y)
    {
      _fingerController3 = [(SCATGestureProvider *)self _fingerController];
      [_fingerController3 liftFingersUpAnimated:1];

      [(SCATGestureProvider *)self _setShowsFingers:0];
      [(SCATGestureProvider *)self _updateVisibleFingers];
      [(SCATGestureProvider *)self setCurrentHoldPoint:v10, v9];
      return;
    }

    _fingerController2 = SWCHLogCommon();
    if (os_log_type_enabled(_fingerController2, OS_LOG_TYPE_DEBUG))
    {
      sub_100129FC8(_fingerController2);
    }
  }
}

- (void)_startKeyboardSlideGesture:(id)gesture
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000901BC;
  v4[3] = &unk_1001D5E98;
  selfCopy = self;
  gestureCopy = gesture;
  v3 = gestureCopy;
  [(SCATGestureProvider *)selfCopy _performGesture:v3 withBlock:v4];
}

- (void)_continueKeyboardSlideWithGesture:(id)gesture
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000902A8;
  v4[3] = &unk_1001D5E98;
  selfCopy = self;
  gestureCopy = gesture;
  v3 = gestureCopy;
  [(SCATGestureProvider *)selfCopy _performGesture:v3 withBlock:v4];
}

- (void)_startNextKeyboardSlideGestureSegmentAtPoint:(CGPoint)point element:(id)element
{
  y = point.y;
  x = point.x;
  [(SCATGestureProvider *)self setKeyboardSlideStartElement:element];
  [(SCATGestureProvider *)self setKeyboardSlideStartPoint:x, y];
  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:x, y];
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  v7 = [(SCATGestureProvider *)self _pointStringForPoint:x, y];
  v8 = [AXPIFingerUtilities fingerModelsForPointStrings:v7];
  [_fingerController showFingerModels:v8 animated:1 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
}

- (void)_endKeyboardSlideGestureSegment
{
  [(SCATGestureProvider *)self setIsStartingNextKeyboardSlideSegment:1];
  [(SCATGestureProvider *)self _fingerController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090474;
  v5 = v4[3] = &unk_1001D3750;
  v3 = v5;
  [v3 endGestureWithCompletion:v4];
}

- (void)_endKeyboardSlideGesture
{
  lineGesturePointPicker = self->_lineGesturePointPicker;
  self->_lineGesturePointPicker = 0;

  [(SCATGestureProvider *)self setCurrentSwitchController:0];
  [(SCATGestureProvider *)self _fingerController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100090544;
  v6 = v5[3] = &unk_1001D4048;
  selfCopy = self;
  v4 = v6;
  [v4 endGestureWithCompletion:v5];
}

- (void)menuWillAppear:(id)appear
{
  appearCopy = appear;
  if ([(SCATGestureProvider *)self lineGestureState]!= 2)
  {
    screenPoint = [appearCopy screenPoint];
    -[SCATGestureProvider _updateStartingPointForGesturesWithScreenPoint:forDisplayID:](self, "_updateStartingPointForGesturesWithScreenPoint:forDisplayID:", screenPoint, [appearCopy currentDisplayID]);
  }

  [(SCATGestureProvider *)self _updateShowsFingers];
}

- (void)menuDidAppear:(id)appear
{
  currentSheet = [appear currentSheet];
  allowsExitAction = [currentSheet allowsExitAction];

  v6 = 1.0;
  if (allowsExitAction)
  {
    v6 = 0.5;
  }

  [(SCATGestureProvider *)self setAlphaForFingers:v6];
}

- (void)menuDidDisappear:(id)disappear
{
  if ([(SCATGestureProvider *)self lineGestureState]== 2)
  {
    [(SCATGestureProvider *)self _clearLineGestureState];
  }

  if ([(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {
    [(SCATGestureProvider *)self _clearTellMeWhenTimer];
    [(SCATGestureProvider *)self _handleCompletedContinuousGesture];
  }

  else
  {
    [(SCATGestureProvider *)self _updateVisibleFingers];
  }

  if ([(SCATGestureProvider *)self isPinching])
  {
    [(SCATGestureProvider *)self _endPinchMode];
  }

  [(SCATGestureProvider *)self _updateShowsFingers];
}

- (void)menuDidFinishTransition:(id)transition
{
  if (![(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {

    [(SCATGestureProvider *)self _updateVisibleFingers];
  }
}

- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pickerCopy = picker;
  lineGestureType = [(SCATGestureProvider *)self lineGestureType];
  if (lineGestureType < 4)
  {
    [(SCATGestureProvider *)self _startConfirmingLineGestureWithEndpoint:x, y];
    goto LABEL_17;
  }

  if (lineGestureType == 4)
  {
    v8 = +[SCATScannerManager sharedManager];
    [pickerCopy pickedPointInDeviceCoordinates];
    v9 = [v8 focusContextAtPoint:?];

    element = [v9 element];
    if ([element scatIsKeyboardKey])
    {
      [(SCATGestureProvider *)self lastSelectedKeyboardSlidePoint];
      v12 = v11;
      v14 = v13;
      [(SCATGestureProvider *)self keyboardSlideStartPoint];
      v16 = v15;
      v18 = v17;
      keyboardSlideStartElement = [(SCATGestureProvider *)self keyboardSlideStartElement];
      v20 = [element isEqual:keyboardSlideStartElement];

      if (v20 && v12 == v16 && v14 == v18)
      {
        goto LABEL_16;
      }

      scatIdentifier = [element scatIdentifier];
      v22 = [scatIdentifier isEqualToString:@"space"];

      if (!v22)
      {
        if ([(SCATGestureProvider *)self isStartingNextKeyboardSlideSegment])
        {
          [(SCATGestureProvider *)self setIsStartingNextKeyboardSlideSegment:0];
          [(SCATGestureProvider *)self _startNextKeyboardSlideGestureSegmentAtPoint:element element:x, y];
        }

        else
        {
          [(SCATGestureProvider *)self _selectNextPointForKeyboardSlide:x, y];
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (![element scatIsAutocorrectCandidate] || !objc_msgSend(element, "scatIsAXElement"))
      {
        [(SCATGestureProvider *)self _endKeyboardSlideGesture];
        goto LABEL_16;
      }

      [element simulateTapWithFingerIndex:2];
    }

    [(SCATGestureProvider *)self _endKeyboardSlideGestureSegment];
LABEL_16:
  }

LABEL_17:
}

- (void)touchDownForDrawingViewController:(id)controller
{
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  legacyPressFingersDown = [_fingerController legacyPressFingersDown];

  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:@"DRAWING" points:legacyPressFingersDown];
}

- (void)touchUpForDrawingViewController:(id)controller
{
  if ([(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {

    [(SCATGestureProvider *)self _handleCompletedContinuousGesture];
  }
}

- (BOOL)drawingViewController:(id)controller moveFingersToPoints:(id)points
{
  pointsCopy = points;
  _fingerController = [(SCATGestureProvider *)self _fingerController];
  v7 = [_fingerController moveFingersToPoints:pointsCopy];

  if (v7 && [(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {
    [(SCATGestureProvider *)self _addPointsToContinuousGestureData:pointsCopy];
  }

  return v7;
}

- (void)exitDrawingViewController:(id)controller
{
  drawingElementManager = self->_drawingElementManager;
  if (drawingElementManager)
  {
    self->_drawingElementManager = 0;

    [(SCATGestureProvider *)self setCurrentSwitchController:0];
  }
}

- (void)drawingViewController:(id)controller shouldResetScanningFromElement:(id)element
{
  elementCopy = element;
  drawingElementManager = [controller drawingElementManager];
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];

  if (drawingElementManager == currentSwitchController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureProvider:self shouldResetScanningFromElement:elementCopy];
  }
}

- (void)setCurrentSwitchController:(id)controller
{
  controllerCopy = controller;
  if (self->_currentSwitchController != controllerCopy)
  {
    v7 = controllerCopy;
    if (controllerCopy)
    {
      objc_storeStrong(&self->_currentSwitchController, controller);
      [(SCATGestureProvider *)self _requestSwitchControllerPrivileges];
    }

    else
    {
      [(SCATGestureProvider *)self _resignSwitchControllerPrivileges];
      currentSwitchController = self->_currentSwitchController;
      self->_currentSwitchController = 0;
    }

    [(SCATGestureProvider *)self _updateShowsFingers];
    controllerCopy = v7;
  }
}

- (void)_requestSwitchControllerPrivileges
{
  self->_needsScanning = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldStartScanningGestureProvider:self];
}

- (void)_resignSwitchControllerPrivileges
{
  self->_needsScanning = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldEndScanningGestureProvider:self];
}

- (id)firstElementWithOptions:(int *)options
{
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  v5 = [currentSwitchController firstElementWithOptions:options];

  return v5;
}

- (id)lastElementWithOptions:(int *)options
{
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  v5 = [currentSwitchController lastElementWithOptions:options];

  return v5;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  v10 = [currentSwitchController elementAfter:afterCopy didWrap:wrap options:options];

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  v10 = [currentSwitchController elementBefore:beforeCopy didWrap:wrap options:options];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)active
{
  activeCopy = active;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  [currentSwitchController scannerWillMakeManagerActive:activeCopy];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v4 = *&d;
  activeCopy = active;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  [currentSwitchController scannerWillMakeManagerActive:activeCopy forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  managerCopy = manager;
  inactiveCopy = inactive;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  [currentSwitchController scannerWillMakeManagerInactive:inactiveCopy activeElementManager:managerCopy];
}

- (BOOL)shouldKeepScannerAwake
{
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  shouldKeepScannerAwake = [currentSwitchController shouldKeepScannerAwake];

  return shouldKeepScannerAwake;
}

- (BOOL)allowsDwellSelection
{
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  allowsDwellSelection = [currentSwitchController allowsDwellSelection];

  return allowsDwellSelection;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  allowsDwellScanningToAbortAfterTimeout = [currentSwitchController allowsDwellScanningToAbortAfterTimeout];

  return allowsDwellScanningToAbortAfterTimeout;
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  elementCopy = element;
  actionCopy = action;
  currentSwitchController = [(SCATGestureProvider *)self currentSwitchController];
  v9 = [currentSwitchController handleInputAction:actionCopy withElement:elementCopy];

  return v9;
}

- (void)driver:(id)driver willFocusOnContext:(id)context
{
  v9.receiver = self;
  v9.super_class = SCATGestureProvider;
  contextCopy = context;
  driverCopy = driver;
  [(SCATElementManager *)&v9 driver:driverCopy willFocusOnContext:contextCopy];
  v8 = [(SCATGestureProvider *)self currentSwitchController:v9.receiver];
  [v8 driver:driverCopy willFocusOnContext:contextCopy];
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  v12.receiver = self;
  v12.super_class = SCATGestureProvider;
  oldContextCopy = oldContext;
  contextCopy = context;
  driverCopy = driver;
  [(SCATElementManager *)&v12 driver:driverCopy didFocusOnContext:contextCopy oldContext:oldContextCopy];
  v11 = [(SCATGestureProvider *)self currentSwitchController:v12.receiver];
  [v11 driver:driverCopy didFocusOnContext:contextCopy oldContext:oldContextCopy];
}

- (void)driver:(id)driver willUnfocusFromContext:(id)context
{
  v9.receiver = self;
  v9.super_class = SCATGestureProvider;
  contextCopy = context;
  driverCopy = driver;
  [(SCATElementManager *)&v9 driver:driverCopy willUnfocusFromContext:contextCopy];
  v8 = [(SCATGestureProvider *)self currentSwitchController:v9.receiver];
  [v8 driver:driverCopy willUnfocusFromContext:contextCopy];
}

- (void)fingersElement:(id)element didBecomeFocused:(BOOL)focused
{
  if (focused)
  {
    [(SCATGestureProvider *)self setAlphaForFingers:element, 1.0];
  }

  else
  {
    [(SCATGestureProvider *)self setAlphaForFingers:element, 0.5];
  }
}

- (void)systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count] == 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([changeCopy count] != 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [changeCopy objectAtIndexedSubscript:1];
    [v19 CGRectValue];
    v27.origin.x = v20;
    v27.origin.y = v21;
    v27.size.width = v22;
    v27.size.height = v23;
    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    *v10 = CGRectUnion(v26, v27);
  }

LABEL_6:
}

- (SCATGestureProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)startingScreenPointForGestures
{
  x = self->_startingScreenPointForGestures.x;
  y = self->_startingScreenPointForGestures.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pinchFulcrum
{
  x = self->_pinchFulcrum.x;
  y = self->_pinchFulcrum.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPointForLineGesture
{
  x = self->_endPointForLineGesture.x;
  y = self->_endPointForLineGesture.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)keyboardSlideStartPoint
{
  x = self->_keyboardSlideStartPoint.x;
  y = self->_keyboardSlideStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastSelectedKeyboardSlidePoint
{
  x = self->_lastSelectedKeyboardSlidePoint.x;
  y = self->_lastSelectedKeyboardSlidePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentHoldPoint
{
  x = self->_currentHoldPoint.x;
  y = self->_currentHoldPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end