@interface SCATGestureProvider
- (BOOL)allowsDwellScanningToAbortAfterTimeout;
- (BOOL)allowsDwellSelection;
- (BOOL)drawingViewController:(id)a3 moveFingersToPoints:(id)a4;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (BOOL)shouldKeepScannerAwake;
- (CGPoint)_startingPointForGestures;
- (CGPoint)currentHoldPoint;
- (CGPoint)endPointForLineGesture;
- (CGPoint)keyboardSlideStartPoint;
- (CGPoint)lastSelectedKeyboardSlidePoint;
- (CGPoint)pinchFulcrum;
- (CGPoint)startingScreenPointForGestures;
- (CGRect)_rectForFingers:(id)a3;
- (CGRect)_rectToClearForPinchGesture;
- (CGRect)rectToClearForFingersWithGestureSheet:(BOOL)a3;
- (CGRect)rectToClearForStop:(id)a3;
- (SCATElement)elementForFingers;
- (SCATGestureProvider)initWithMenu:(id)a3;
- (SCATGestureProviderDelegate)delegate;
- (double)_pinchAngleAdjustedByDelta:(double)a3;
- (double)_pinchRadiusAdjustedByDelta:(double)a3;
- (id)_fingerController;
- (id)_panPositionsAdjustedByDelta:(CGSize)a3;
- (id)_pinchPositionsWithRadius:(double)a3 angle:(double)a4;
- (id)_pointStringForPoint:(CGPoint)a3;
- (id)_promptForLineGesture:(unint64_t)a3;
- (id)_repositionedGestureFromOriginalGesture:(id)a3;
- (id)_startingPointsAsStrings;
- (id)contextForCustomGestureItemsViewController:(id)a3;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)gesturesSheet;
- (id)lastElementWithOptions:(int *)a3;
- (id)nameForConfirmationButton:(id)a3;
- (unint64_t)_numberOfFingers;
- (unint64_t)_numberOfFingersWithGestureSheet:(BOOL)a3;
- (void)_addPointsToContinuousGestureData:(id)a3;
- (void)_clearArrowView;
- (void)_clearLineGestureState;
- (void)_clearTellMeWhenTimer;
- (void)_continueKeyboardSlideWithGesture:(id)a3;
- (void)_didChooseFlickWithAngle:(double)a3 name:(id)a4;
- (void)_didChoosePanWithName:(id)a3 selector:(SEL)a4;
- (void)_didChoosePinchItemWithName:(id)a3 selector:(SEL)a4;
- (void)_endKeyboardSlideGesture;
- (void)_endKeyboardSlideGestureSegment;
- (void)_endPinchMode;
- (void)_finishLineGesture;
- (void)_handleCompletedContinuousGesture;
- (void)_initializeContinuousGestureDataWithName:(id)a3 points:(id)a4;
- (void)_panByDelta:(CGSize)a3;
- (void)_performFlickGestureWithAngle:(double)a3 name:(id)a4;
- (void)_performForceTouchGesture;
- (void)_performGesture:(id)a3;
- (void)_performGesture:(id)a3 withBlock:(id)a4;
- (void)_performTapGestureForDoubleTap:(BOOL)a3;
- (void)_prepareToBeginContinuousGesture;
- (void)_requestSwitchControllerPrivileges;
- (void)_resetContinuousGestureData;
- (void)_resignSwitchControllerPrivileges;
- (void)_saveRecentGesture:(id)a3;
- (void)_selectNextPointForKeyboardSlide:(CGPoint)a3;
- (void)_setNumberOfFingersForGestures:(unint64_t)a3;
- (void)_setShowsFingers:(BOOL)a3;
- (void)_startConfirmingLineGestureWithEndpoint:(CGPoint)a3;
- (void)_startKeyboardSlideGesture:(id)a3;
- (void)_startNextKeyboardSlideGestureSegmentAtPoint:(CGPoint)a3 element:(id)a4;
- (void)_startPickingNextPointForLineGesture:(unint64_t)a3;
- (void)_startPinchMode;
- (void)_startTellMeWhenTimerWithSelector:(SEL)a3 interval:(double)a4;
- (void)_updatePinchPositionsWithAttemptedRadiusDelta:(double)a3 angleDelta:(double)a4;
- (void)_updateShowsFingers;
- (void)_updateStartingPointForGesturesWithScreenPoint:(id)a3 forDisplayID:(unsigned int)a4;
- (void)_updateVisibleFingers;
- (void)customGestureItemsViewController:(id)a3 didChooseGesture:(id)a4;
- (void)dealloc;
- (void)didChooseActiveHoldAndDragGesture:(id)a3;
- (void)didChooseAddRecentInCustomGestureItemsViewController:(id)a3;
- (void)didChooseContinuousSlideGesture:(id)a3 completion:(id)a4;
- (void)didChooseCreateInCustomGestureItemsViewController:(id)a3;
- (void)didChooseDoubleTapGesture:(id)a3;
- (void)didChooseDrawingGesture:(id)a3;
- (void)didChooseFavorites:(id)a3;
- (void)didChooseFingers:(id)a3;
- (void)didChooseFlickGesture:(id)a3;
- (void)didChooseForceTouchGesture:(id)a3;
- (void)didChoosePanGesture:(id)a3;
- (void)didChoosePinchGesture:(id)a3;
- (void)didChooseSlideGesture:(id)a3 startElement:(id)a4 completion:(id)a5;
- (void)didChooseStop:(id)a3;
- (void)didConfirmGesture:(id)a3;
- (void)didRequestRedoGesture:(id)a3;
- (void)drawingViewController:(id)a3 shouldResetScanningFromElement:(id)a4;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 willFocusOnContext:(id)a4;
- (void)driver:(id)a3 willUnfocusFromContext:(id)a4;
- (void)exitDrawingViewController:(id)a3;
- (void)fingerItemsViewController:(id)a3 didChooseNumberOfFingers:(unint64_t)a4;
- (void)fingersElement:(id)a3 didBecomeFocused:(BOOL)a4;
- (void)menuDidAppear:(id)a3;
- (void)menuDidDisappear:(id)a3;
- (void)menuDidFinishTransition:(id)a3;
- (void)menuWillAppear:(id)a3;
- (void)orientationDidChange:(id)a3;
- (void)performHoldAtPoint:(CGPoint)a3 isDown:(BOOL)a4;
- (void)performTap;
- (void)performTapAndHold;
- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4;
- (void)replayGesture:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
- (void)setAlphaForFingers:(double)a3;
- (void)setCurrentSwitchController:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setShouldAllowFingersForContinuousGesture:(BOOL)a3;
- (void)setStartingDisplayIDForGestures:(unsigned int)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)toggleActiveHoldAndDragGestureAtScreenPoint:(CGPoint)a3 withDisplayID:(unsigned int)a4;
- (void)touchDownForDrawingViewController:(id)a3;
- (void)touchUpForDrawingViewController:(id)a3;
@end

@implementation SCATGestureProvider

- (SCATGestureProvider)initWithMenu:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SCATGestureProvider;
  v6 = [(SCATGestureProvider *)&v15 init];
  if (v6)
  {
    if (!v5)
    {
      _AXAssert();
    }

    objc_storeStrong(v6 + 5, a3);
    v7 = +[HNDDefaults sharedDefaults];
    v8 = [v7 preferenceForKey:@"ScannerNumberOfFingers"];

    if (v8)
    {
      v9 = [v8 integerValue];
    }

    else
    {
      v9 = 1;
    }

    *(v6 + 13) = v9;
    [v5 registerMenuObserver:v6];
    *(v6 + 24) = AXSwitchRecipeHoldPointNone;
    *(v6 + 37) = 0x3FF0000000000000;
    v10 = +[HNDHandManager sharedManager];
    v11 = [v10 mainDisplayManager];
    *(v6 + 51) = [v11 displayID];

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

- (void)orientationDidChange:(id)a3
{
  menu = self->_menu;
  v5 = a3;
  v13 = [(SCATMenu *)menu element];
  if (v13)
  {
    [v13 scatFrame];
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
  v12 = [(SCATGestureDrawingElementManager *)self->_drawingElementManager drawingViewController];
  [v12 orientationDidChange:v5];
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    v4 = a3;
    self->_hidden = a3;
    [(SCATGestureProvider *)self _updateShowsFingers];
    v6 = [(SCATGestureProvider *)self arrowView];
    [v6 setHidden:v4];
  }
}

- (void)setAlphaForFingers:(double)a3
{
  if (self->_alphaForFingers != a3)
  {
    self->_alphaForFingers = a3;
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

- (void)setStartingDisplayIDForGestures:(unsigned int)a3
{
  if (a3)
  {
    self->_startingDisplayIDForGestures = a3;
  }
}

- (id)_fingerController
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:{-[SCATGestureProvider startingDisplayIDForGestures](self, "startingDisplayIDForGestures")}];
  v5 = [v4 fingerController];

  return v5;
}

- (void)_updateStartingPointForGesturesWithScreenPoint:(id)a3 forDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v15 = v6;
  if (v6)
  {
    [v6 pointValue];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(SCATMenu *)self->_menu element];

    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [(SCATMenu *)self->_menu element];
    [v12 scatFrame];
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

- (id)_pointStringForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_foreheadRect = &self->_foreheadRect;
  if (self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 17.0 + 5.0 > a3.y && AXDeviceHasJindo())
  {
    y = p_foreheadRect->origin.y + p_foreheadRect->size.height + 17.0 + 5.0;
  }

  v7 = [(SCATGestureProvider *)self _numberOfFingers];
  v8 = [(SCATGestureProvider *)self _fingerController];
  v9 = [v8 fingerContainerView];
  [v9 bounds];
  v14 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:v7 aroundPoint:x withinBounds:y, v10, v11, v12, v13];

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

- (void)_initializeContinuousGestureDataWithName:(id)a3 points:(id)a4
{
  v22 = a3;
  v7 = a4;
  [(SCATGestureProvider *)self _resetContinuousGestureData];
  objc_storeStrong(&self->_continuousGestureName, a3);
  v8 = [v7 count];
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
  obj = v7;
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
        v19 = [NSMutableArray arrayWithObject:*(*(&v24 + 1) + 8 * v17), v22];
        [(NSMutableArray *)v18 addObject:v19];

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

- (void)_addPointsToContinuousGestureData:(id)a3
{
  v12 = a3;
  v4 = [v12 count];
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
      v9 = [v12 objectAtIndex:i];
      [v7 addObject:v9];

      [v8 addObject:v5];
    }
  }
}

- (void)_handleCompletedContinuousGesture
{
  v3 = [(SCATGestureProvider *)self _fingerController];
  v5 = [v3 legacyLiftFingersUp];

  [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v5];
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

- (void)_saveRecentGesture:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchRecentGestures];
  v8 = [v5 mutableCopy];

  if (v8)
  {
    [v8 removeObject:v3];
  }

  else
  {
    v8 = [NSMutableArray arrayWithCapacity:1];
  }

  [v8 insertObject:v3 atIndex:0];

  v6 = [v8 count];
  if (v6 >= 4)
  {
    [v8 removeObjectsInRange:{3, v6 - 3}];
  }

  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchRecentGestures:v8];
}

- (void)_performGesture:(id)a3
{
  if (a3)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10008CE10;
    v3[3] = &unk_1001D5E70;
    v3[4] = self;
    [(SCATGestureProvider *)self _performGesture:a3 withBlock:v3];
  }
}

- (void)_performGesture:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SCATScannerManager sharedManager];
  [v7 addReasonToDisableScanning:@"PerformingGesture"];
  v5[2](v5, v6);

  +[HNDDisplayManager fadeDuration];
  v8 = v7;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_performTapGestureForDoubleTap:(BOOL)a3
{
  v3 = a3;
  [(SCATGestureProvider *)self _startingPointForGestures];
  v7 = [AXNamedReplayableGesture tapGestureAtPoint:v3 isDoubleTap:[(SCATGestureProvider *)self _numberOfFingers] numberOfFingers:v5, v6];
  v9 = v7;
  v8 = &off_1001D6CF8;
  if (!v3)
  {
    v8 = &off_1001D6C68;
  }

  [v7 setName:*v8];
  [v9 setHasLocalizableName:1];
  [v9 setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:v9];
}

- (void)_performFlickGestureWithAngle:(double)a3 name:(id)a4
{
  v6 = a4;
  [(SCATGestureProvider *)self _startingPointForGestures];
  v9 = [AXNamedReplayableGesture flickGestureAtPoint:[(SCATGestureProvider *)self _numberOfFingers] angle:v7 numberOfFingers:v8, a3];
  [v9 setName:v6];

  [v9 setHasLocalizableName:1];
  [v9 setShouldPerformAtOriginalLocation:1];
  [(SCATGestureProvider *)self _performGesture:v9];
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

- (id)_pinchPositionsWithRadius:(double)a3 angle:(double)a4
{
  [(SCATGestureProvider *)self pinchFulcrum];
  v8 = v7;
  v9 = __sincos_stret(a4);
  [(SCATGestureProvider *)self pinchFulcrum];
  v11 = v10 + a3 * v9.__sinval;
  [(SCATGestureProvider *)self pinchFulcrum];
  v13 = v12;
  v14 = __sincos_stret(a4 + 3.14159265);
  [(SCATGestureProvider *)self pinchFulcrum];
  v16 = v15 + a3 * v14.__sinval;
  v22.x = v8 + a3 * v9.__cosval;
  v22.y = v11;
  v17 = NSStringFromCGPoint(v22);
  v23.x = v13 + a3 * v14.__cosval;
  v23.y = v16;
  v18 = NSStringFromCGPoint(v23);
  v19 = [NSArray arrayWithObjects:v17, v18, 0];

  return v19;
}

- (double)_pinchRadiusAdjustedByDelta:(double)a3
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
  return v5 + a3 * v4;
}

- (double)_pinchAngleAdjustedByDelta:(double)a3
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
  return v5 + a3 * v4;
}

- (void)_updatePinchPositionsWithAttemptedRadiusDelta:(double)a3 angleDelta:(double)a4
{
  [(SCATGestureProvider *)self _pinchRadiusAdjustedByDelta:?];
  v8 = v7;
  [(SCATGestureProvider *)self _pinchAngleAdjustedByDelta:a4];
  v10 = v9;
  v29 = [(SCATGestureProvider *)self pinchFingerOriginalPositions];
  if (v8 < 20.0 || v8 > 200.0)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [(SCATGestureProvider *)self _pinchPositionsWithRadius:v8 angle:v10];
  v13 = [(SCATGestureProvider *)self _fingerController];
  v14 = [v13 moveFingersToPoints:v12];

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
      v20 = [v19 isEqualToArray:v29];

      if (v20)
      {
        goto LABEL_20;
      }

      v15 = !self->_isReversingContinuousGesture;
    }

    self->_isReversingContinuousGesture = v15;
    [(SCATGestureProvider *)self _pinchRadiusAdjustedByDelta:a3];
    v8 = v21;
    [(SCATGestureProvider *)self _pinchAngleAdjustedByDelta:a4];
    v10 = v22;
    if (v8 >= 20.0 && v8 <= 200.0)
    {
      v23 = [(SCATGestureProvider *)self _pinchPositionsWithRadius:v8 angle:v22];

      v24 = [(SCATGestureProvider *)self _fingerController];
      v25 = [v24 moveFingersToPoints:v23];

      v12 = v23;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    v27 = v12;
    isReversingContinuousGesture = self->_isReversingContinuousGesture;
    v26 = v29;
    _AXAssert();
LABEL_20:
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:v26];
    goto LABEL_21;
  }

LABEL_15:
  [(SCATGestureProvider *)self setPinchRadius:v8];
  [(SCATGestureProvider *)self setPinchAngle:v10];
  [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v12];
  if ([v12 isEqualToArray:v29])
  {
    if (!self->_isReversingContinuousGesture)
    {
      _AXAssert();
    }

    self->_isReversingContinuousGesture = 0;
  }

LABEL_21:
}

- (id)_panPositionsAdjustedByDelta:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SCATGestureProvider *)self panFingerPositions];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);

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
  v9 = [(SCATGestureProvider *)self panFingerPositions];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = CGPointFromString(*(*(&v17 + 1) + 8 * i));
        v23.x = v14.x + width * v8;
        v23.y = v14.y + height * v8;
        v15 = NSStringFromCGPoint(v23);
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (void)_panByDelta:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SCATGestureProvider *)self _panPositionsAdjustedByDelta:?];
  v7 = [(SCATGestureProvider *)self _startingPointsAsStrings];
  if ([v6 isEqualToArray:v7])
  {
    if (!self->_isReversingContinuousGesture)
    {
      _AXAssert();
    }

    self->_isReversingContinuousGesture = 0;
  }

  v8 = [(SCATGestureProvider *)self _fingerController];
  v9 = [v8 moveFingersToPoints:v6];

  if (v9)
  {
    v18 = v6;
LABEL_7:
    [(SCATGestureProvider *)self setPanFingerPositions:v6];
    [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v6];
    goto LABEL_12;
  }

  if (self->_isReversingContinuousGesture || (-[SCATGestureProvider panFingerPositions](self, "panFingerPositions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToArray:v7], v10, (v11 & 1) != 0))
  {
    v18 = v6;
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:v14];
  }

  else
  {
    self->_isReversingContinuousGesture = 1;
    v18 = [(SCATGestureProvider *)self _panPositionsAdjustedByDelta:width, height];

    v12 = [(SCATGestureProvider *)self _fingerController];
    v13 = [v12 moveFingersToPoints:v18];

    if (v13)
    {
      v6 = v18;
      goto LABEL_7;
    }

    isReversingContinuousGesture = self->_isReversingContinuousGesture;
    _AXAssert();
    [(SCATGestureProvider *)self _clearTellMeWhenTimer:v7];
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
  v11 = [(SCATGestureProvider *)self lineGestureType];
  if (v11 == 2)
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

  else if (v11 == 1)
  {
    v22 = [AXNamedReplayableGesture flickGestureStartingAtPoint:[(SCATGestureProvider *)self _numberOfFingers] endingAtPoint:v4 numberOfFingers:v6, v8, v10];
    [v22 setName:@"FLICK_ARBITRARY"];
  }

  else if (v11)
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
  v5 = [(SCATGestureProvider *)self _fingerController];
  v6 = [v5 fingerContainerView];
  [v6 setAlpha:v4];

  v7 = [(SCATGestureProvider *)self _fingerController];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [v7 showPinchFingersAnimated:1 midpoint:?];
}

- (void)_endPinchMode
{
  [(SCATGestureProvider *)self setIsPinching:0];
  v3 = [(SCATGestureProvider *)self _fingerController];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [v3 clearAllFingersAnimated:1 endPointForAnimation:?];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)_updateVisibleFingers
{
  v3 = [(SCATGestureProvider *)self _fingerController];
  if ([v3 isPerformingGesture])
  {
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not updating visible fingers because a gesture is in progress", v21, 2u);
    }

    goto LABEL_17;
  }

  v5 = [v3 numberOfFingers];
  if (self->_showsFingers)
  {
    v6 = v5;
    [(SCATGestureProvider *)self alphaForFingers];
    v8 = v7;
    v9 = [v3 fingerContainerView];
    [v9 setAlpha:v8];

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
          [v3 showPinchFingersAnimated:v18 midpoint:?];
          goto LABEL_18;
        }

        v4 = [(SCATGestureProvider *)self _startingPointsAsStrings];
        v19 = [AXPIFingerUtilities fingerModelsForPointStrings:v4];
      }

      else
      {
        v18 = v6 == 0;
        [(SCATGestureProvider *)self currentHoldPoint];
        v4 = [AXPIFingerModel fingerModelForLocation:?];
        v22 = v4;
        v19 = [NSArray arrayWithObjects:&v22 count:1];
      }

      v20 = v19;
      [v3 showFingerModels:v19 animated:v18 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

LABEL_17:
      goto LABEL_18;
    }

    v11 = v6 == 0;
    v12 = [(SCATGestureDrawingElementManager *)drawingElementManager drawingViewController];
    v13 = [v12 fingerPositions];
    v14 = [AXPIFingerUtilities fingerModelsForPointStrings:v13];
    [v3 showFingerModels:v14 animated:v11 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  else
  {
    [(SCATGestureProvider *)self _startingPointForGestures];
    [v3 clearAllFingersAnimated:1 endPointForAnimation:?];
  }

LABEL_18:
}

- (void)_clearTellMeWhenTimer
{
  [(NSTimer *)self->_tellMeWhenGestureTimer invalidate];
  tellMeWhenGestureTimer = self->_tellMeWhenGestureTimer;
  self->_tellMeWhenGestureTimer = 0;
}

- (void)_startTellMeWhenTimerWithSelector:(SEL)a3 interval:(double)a4
{
  if (self->_tellMeWhenGestureTimer)
  {
    _AXAssert();
  }

  if (a4 == 0.0)
  {
    v7 = +[AXSettings sharedInstance];
    a4 = dbl_1001BD3C0[[v7 switchControlScanningStyle] == 0];
  }

  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:a3 selector:0 userInfo:1 repeats:a4];
  tellMeWhenGestureTimer = self->_tellMeWhenGestureTimer;
  self->_tellMeWhenGestureTimer = v8;

  _objc_release_x1(v8, tellMeWhenGestureTimer);
}

- (void)_clearArrowView
{
  v3 = [(SCATGestureProvider *)self arrowView];
  [v3 removeFromSuperview];

  [(SCATGestureProvider *)self setArrowView:0];
}

- (void)_setNumberOfFingersForGestures:(unint64_t)a3
{
  if (self->_numberOfFingersForGestures != a3)
  {
    self->_numberOfFingersForGestures = a3;
    [(SCATGestureProvider *)self _updateVisibleFingers];
    v6 = +[HNDDefaults sharedDefaults];
    v5 = [NSNumber numberWithInteger:a3];
    [v6 setPreference:v5 forKey:@"ScannerNumberOfFingers"];
  }
}

- (unint64_t)_numberOfFingersWithGestureSheet:(BOOL)a3
{
  if (a3)
  {
    return self->_numberOfFingersForGestures;
  }

  if ([(SCATGestureProvider *)self lineGestureState])
  {
    return self->_numberOfFingersForGestures;
  }

  v4 = [(SCATGestureProvider *)self currentSwitchController];

  if (v4)
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
  v3 = [(SCATMenu *)self->_menu containsGestureSheet];

  return [(SCATGestureProvider *)self _numberOfFingersWithGestureSheet:v3];
}

- (void)_setShowsFingers:(BOOL)a3
{
  if (self->_showsFingers != a3)
  {
    v4 = a3;
    self->_showsFingers = a3;
    [(SCATGestureProvider *)self _updateVisibleFingers];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureProvider:self didShowFingers:v4];
  }
}

- (void)_updateShowsFingers
{
  v3 = [(SCATGestureProvider *)self isHidden];
  if ((v3 & 1) != 0 || [(SCATMenu *)self->_menu tipObject]== 1 || [(SCATGestureProvider *)self lineGestureState])
  {

    [(SCATGestureProvider *)self _setShowsFingers:v3 ^ 1];
  }

  else
  {
    v5 = [(SCATGestureProvider *)self currentSwitchController];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(SCATGestureProvider *)self shouldAllowFingersForContinuousGesture];
    }

    [(SCATGestureProvider *)self _setShowsFingers:v4];
  }
}

- (CGRect)_rectForFingers:(id)a3
{
  v4 = a3;
  v5 = [(SCATGestureProvider *)self _fingerController];
  [v5 rectForFingersAtPoints:v4];
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
  v7 = [(SCATGestureProvider *)self _fingerController];
  v8 = [v7 fingerContainerView];
  [v8 bounds];
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

- (CGRect)rectToClearForFingersWithGestureSheet:(BOOL)a3
{
  v3 = a3;
  [(SCATGestureProvider *)self _startingPointForGestures];
  v6 = v5;
  v8 = v7;
  v9 = [(SCATGestureProvider *)self _numberOfFingersWithGestureSheet:v3];
  v10 = [(SCATGestureProvider *)self _fingerController];
  v11 = [v10 fingerContainerView];
  [v11 bounds];
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
    v3 = [(SCATGestureProvider *)self currentSwitchController];
    lineGesturePointPicker = self->_lineGesturePointPicker;

    if (v3 == lineGesturePointPicker)
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

- (id)_promptForLineGesture:(unint64_t)a3
{
  if (a3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_100042B24(*(&off_1001D5EB8 + a3));
  }

  return v4;
}

- (void)_startPickingNextPointForLineGesture:(unint64_t)a3
{
  if ([(SCATGestureProvider *)self lineGestureState]&& [(SCATGestureProvider *)self lineGestureState]!= 2)
  {
    v21 = [(SCATGestureProvider *)self lineGestureState];
    _AXAssert();
  }

  [(SCATGestureProvider *)self setLineGestureState:1, v21];
  [(SCATGestureProvider *)self setLineGestureType:a3];
  lineGesturePointPicker = self->_lineGesturePointPicker;
  if (!lineGesturePointPicker)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchScanningMode];

    if (v7)
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

  v10 = [(SCATElementManager *)lineGesturePointPicker visualProvider];
  [v10 setPromptPosition:{-[SCATGestureProvider lineGestureType](self, "lineGestureType") != 4}];

  v11 = [(SCATElementManager *)self->_lineGesturePointPicker visualProvider];
  v12 = [(SCATGestureProvider *)self _promptForLineGesture:a3];
  [v11 setPrompt:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCATElementManager *)self->_lineGesturePointPicker redisplayIfNeeded:0];
    if (a3 == 3)
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

- (void)_startConfirmingLineGestureWithEndpoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SCATGestureProvider *)self lineGestureState]!= 1)
  {
    v17 = [(SCATGestureProvider *)self lineGestureState];
    _AXAssert();
  }

  [(SCATGestureProvider *)self setLineGestureState:2, v17];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[SCATScannerManager sharedManager](SCATScannerManager, "sharedManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 removePointerPointPickerForMovementNotifications:self->_lineGesturePointPicker], v6, self->_lineGestureType == 3))
  {
    [(SCATPointPicker *)self->_lineGesturePointPicker pressFingersDown:0];
    [(SCATGestureProvider *)self _clearLineGestureState];
    v7 = [(SCATGestureProvider *)self keyboardSlideGestureCompletion];

    if (v7)
    {
      v8 = [(SCATGestureProvider *)self keyboardSlideGestureCompletion];
      v8[2](v8, 1);

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

- (void)_selectNextPointForKeyboardSlide:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SCATGestureProvider *)self lineGestureState]!= 1)
  {
    v24 = [(SCATGestureProvider *)self lineGestureState];
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
    v22 = [(SCATElementManager *)self->_lineGesturePointPicker visualProvider];
    [v22 setPrompt:0];

    v23 = [(SCATGestureProvider *)self _fingerController];
    [v23 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

    [(SCATGestureProvider *)self _startKeyboardSlideGesture:v25];
  }

  else
  {
    [(SCATGestureProvider *)self _continueKeyboardSlideWithGesture:v25];
  }

  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:x, y];
}

- (void)didChooseFavorites:(id)a3
{
  v4 = [[SCATModernMenuCustomGesturesSheet alloc] initWithType:0 menu:self->_menu];
  [(SCATModernMenuCustomGesturesSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseFlickGesture:(id)a3
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFlickSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFlickSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChoosePanGesture:(id)a3
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGesturePanSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGesturePanSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChoosePinchGesture:(id)a3
{
  v4 = [(SCATModernMenuSheet *)[SCATModernMenuGesturePinchSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGesturePinchSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseContinuousSlideGesture:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(SCATGestureProvider *)self setKeyboardSlideGestureCompletion:a4];
  [(SCATGestureProvider *)self didChooseActiveHoldAndDragGesture:v6];
}

- (void)didChooseSlideGesture:(id)a3 startElement:(id)a4 completion:(id)a5
{
  v7 = a5;
  [(SCATGestureProvider *)self setKeyboardSlideStartElement:a4];
  [(SCATGestureProvider *)self setIsStartingNextKeyboardSlideSegment:0];
  [(SCATGestureProvider *)self _startingPointForGestures];
  [(SCATGestureProvider *)self setKeyboardSlideStartPoint:?];
  [(SCATGestureProvider *)self keyboardSlideStartPoint];
  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:?];
  [(SCATGestureProvider *)self setKeyboardSlideGestureCompletion:v7];

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:4];
}

- (void)toggleActiveHoldAndDragGestureAtScreenPoint:(CGPoint)a3 withDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  y = a3.y;
  x = a3.x;
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

- (void)didChooseActiveHoldAndDragGesture:(id)a3
{
  v4 = [a3 menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [v4 currentDisplayID]);

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:3];
}

- (void)didChooseDoubleTapGesture:(id)a3
{
  v4 = [a3 menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [v4 currentDisplayID]);

  [(SCATGestureProvider *)self _performTapGestureForDoubleTap:1];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)didChooseFingers:(id)a3
{
  v4 = [a3 menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [v4 currentDisplayID]);

  v5 = [(SCATModernMenuSheet *)[SCATModernMenuGestureFingersSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuGestureFingersSheet *)v5 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v5];
}

- (void)didChooseDrawingGesture:(id)a3
{
  v4 = [a3 menu];
  -[SCATGestureProvider setStartingDisplayIDForGestures:](self, "setStartingDisplayIDForGestures:", [v4 currentDisplayID]);

  v5 = [SCATGestureDrawingElementManager alloc];
  v6 = [(SCATGestureProvider *)self _startingPointsAsStrings];
  v7 = [(SCATGestureDrawingElementManager *)v5 initWithStartingFingerPositions:v6 menu:self->_menu];

  v8 = [(SCATGestureDrawingElementManager *)v7 drawingViewController];
  [v8 setDelegate:self];

  [(SCATGestureProvider *)self setCurrentSwitchController:v7];
  drawingElementManager = self->_drawingElementManager;
  self->_drawingElementManager = v7;

  [(SCATGestureProvider *)self setAlphaForFingers:0.0];
}

- (void)_didChooseFlickWithAngle:(double)a3 name:(id)a4
{
  [(SCATGestureProvider *)self _performFlickGestureWithAngle:a4 name:a3];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)didChooseForceTouchGesture:(id)a3
{
  [(SCATGestureProvider *)self _performForceTouchGesture];

  [(SCATGestureProvider *)self _updateVisibleFingers];
}

- (void)_didChoosePanWithName:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v10 = [(SCATModernMenuSheet *)[SCATModernMenuStopContinuousGestureSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuStopContinuousGestureSheet *)v10 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v10];
  [(SCATGestureProvider *)self _prepareToBeginContinuousGesture];
  v7 = [(SCATGestureProvider *)self _fingerController];
  v8 = [v7 legacyPressFingersDown];

  [(SCATGestureProvider *)self _startTellMeWhenTimerWithSelector:a4];
  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:v6 points:v8];

  v9 = [(SCATGestureProvider *)self _startingPointsAsStrings];
  [(SCATGestureProvider *)self setPanFingerPositions:v9];
}

- (void)_didChoosePinchItemWithName:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v15 = [(SCATModernMenuSheet *)[SCATModernMenuStopContinuousGestureSheet alloc] initWithMenu:self->_menu];
  [(SCATModernMenuStopContinuousGestureSheet *)v15 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v15];
  [(SCATGestureProvider *)self _prepareToBeginContinuousGesture];
  v7 = [(SCATGestureProvider *)self _fingerController];
  v8 = [v7 legacyPressFingersDown];

  [(SCATGestureProvider *)self _startTellMeWhenTimerWithSelector:a4];
  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:v6 points:v8];

  if ([v8 count] != 2)
  {
    _AXAssert();
  }

  v9 = [v8 objectAtIndex:0];
  v10 = CGPointFromString(v9);

  v11 = [v8 objectAtIndex:1];
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
  [(SCATGestureProvider *)self setPinchFingerOriginalPositions:v8];
}

- (void)didChooseStop:(id)a3
{
  [(SCATGestureProvider *)self _clearTellMeWhenTimer];

  [(SCATGestureProvider *)self _handleCompletedContinuousGesture];
}

- (CGRect)rectToClearForStop:(id)a3
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

- (id)nameForConfirmationButton:(id)a3
{
  v3 = [(SCATGestureProvider *)self lineGestureType];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_100042B24(*(&off_1001D5EE0 + v3));
  }

  return v4;
}

- (void)didConfirmGesture:(id)a3
{
  [(SCATGestureProvider *)self _finishLineGesture];

  [(SCATGestureProvider *)self _clearLineGestureState];
}

- (void)didRequestRedoGesture:(id)a3
{
  v4 = [(SCATGestureProvider *)self lineGestureType];

  [(SCATGestureProvider *)self _startPickingNextPointForLineGesture:v4];
}

- (void)fingerItemsViewController:(id)a3 didChooseNumberOfFingers:(unint64_t)a4
{
  [(SCATGestureProvider *)self _setNumberOfFingersForGestures:a4];
  menu = self->_menu;

  [(SCATMenu *)menu popSheet];
}

- (id)contextForCustomGestureItemsViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained contentViewForGestureProvider:self];

  return v5;
}

- (id)_repositionedGestureFromOriginalGesture:(id)a3
{
  v4 = a3;
  v5 = [(SCATGestureProvider *)self _fingerController];
  [v5 midpointOfStartingFingersForGesture:v4];
  v7 = v6;
  v9 = v8;

  [(SCATGestureProvider *)self _startingPointForGestures];
  v12 = [v4 gestureShiftedByOffset:{v10 - v7, v11 - v9}];

  [v12 setShouldPerformAtOriginalLocation:1];

  return v12;
}

- (void)customGestureItemsViewController:(id)a3 didChooseGesture:(id)a4
{
  v11 = a4;
  if ([a3 type] == 1)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchSavedGestures];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [v8 addObject:v11];
    [v6 setAssistiveTouchSavedGestures:v8];
    [(SCATMenu *)self->_menu popSheet];
  }

  else
  {
    if ([v11 shouldPerformAtOriginalLocation])
    {
      v9 = v11;
    }

    else
    {
      v10 = [(SCATGestureProvider *)self _repositionedGestureFromOriginalGesture:v11];

      v9 = v10;
    }

    v11 = v9;
    [(SCATGestureProvider *)self _performGesture:v9];
    [(SCATGestureProvider *)self _updateVisibleFingers];
  }
}

- (void)didChooseAddRecentInCustomGestureItemsViewController:(id)a3
{
  v4 = [[SCATModernMenuCustomGesturesSheet alloc] initWithType:1 menu:self->_menu];
  [(SCATModernMenuCustomGesturesSheet *)v4 setDelegate:self];
  [(SCATMenu *)self->_menu pushSheet:v4];
}

- (void)didChooseCreateInCustomGestureItemsViewController:(id)a3
{
  v4 = [(SCATGestureProvider *)self delegate];
  [v4 didChooseCreateCustomGestureFromGestureProvider:self];
}

- (void)setShouldAllowFingersForContinuousGesture:(BOOL)a3
{
  if (self->_shouldAllowFingersForContinuousGesture != a3)
  {
    self->_shouldAllowFingersForContinuousGesture = a3;
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
  v3 = [(SCATGestureProvider *)self _fingerController];
  v4 = [v3 legacyPressFingersDown];

  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:@"TAP_AND_HOLD" points:v4];
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
  v6 = [v5 switchControlGesturesMenuItems];
  v7 = [(SCATModernMenuSimpleSheet *)v3 initWithMenu:menu menuItemDictionaryArray:v6];

  return v7;
}

- (void)replayGesture:(id)a3
{
  v4 = a3;
  [(SCATGestureProvider *)self _fingerController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008FF3C;
  v7 = v6[3] = &unk_1001D3750;
  v5 = v7;
  [v5 performGesture:v4 completion:v6];
}

- (void)performHoldAtPoint:(CGPoint)a3 isDown:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = SWCHLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100129F14(v4, v8, x, y);
  }

  v10 = AXSwitchRecipeHoldPointNone[0];
  v9 = AXSwitchRecipeHoldPointNone[1];
  if (x == AXSwitchRecipeHoldPointNone[0] && y == v9)
  {
    _AXAssert();
  }

  [(SCATGestureProvider *)self currentHoldPoint];
  if (v4)
  {
    if (v12 != v10 || v13 != v9)
    {
      v15 = SWCHLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A00C(self, v15);
      }

      v16 = [(SCATGestureProvider *)self _fingerController];
      [v16 liftFingersUpAnimated:1];
    }

    [(SCATGestureProvider *)self setCurrentHoldPoint:x, y];
    [(SCATGestureProvider *)self _setShowsFingers:1];
    [(SCATGestureProvider *)self _updateVisibleFingers];
    v17 = [(SCATGestureProvider *)self _fingerController];
    [v17 pressFingersDownAnimated:1];
  }

  else
  {
    if (v12 == x && v13 == y)
    {
      v18 = [(SCATGestureProvider *)self _fingerController];
      [v18 liftFingersUpAnimated:1];

      [(SCATGestureProvider *)self _setShowsFingers:0];
      [(SCATGestureProvider *)self _updateVisibleFingers];
      [(SCATGestureProvider *)self setCurrentHoldPoint:v10, v9];
      return;
    }

    v17 = SWCHLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100129FC8(v17);
    }
  }
}

- (void)_startKeyboardSlideGesture:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000901BC;
  v4[3] = &unk_1001D5E98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SCATGestureProvider *)v5 _performGesture:v3 withBlock:v4];
}

- (void)_continueKeyboardSlideWithGesture:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000902A8;
  v4[3] = &unk_1001D5E98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SCATGestureProvider *)v5 _performGesture:v3 withBlock:v4];
}

- (void)_startNextKeyboardSlideGestureSegmentAtPoint:(CGPoint)a3 element:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SCATGestureProvider *)self setKeyboardSlideStartElement:a4];
  [(SCATGestureProvider *)self setKeyboardSlideStartPoint:x, y];
  [(SCATGestureProvider *)self setLastSelectedKeyboardSlidePoint:x, y];
  v9 = [(SCATGestureProvider *)self _fingerController];
  v7 = [(SCATGestureProvider *)self _pointStringForPoint:x, y];
  v8 = [AXPIFingerUtilities fingerModelsForPointStrings:v7];
  [v9 showFingerModels:v8 animated:1 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
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
  v7 = self;
  v4 = v6;
  [v4 endGestureWithCompletion:v5];
}

- (void)menuWillAppear:(id)a3
{
  v5 = a3;
  if ([(SCATGestureProvider *)self lineGestureState]!= 2)
  {
    v4 = [v5 screenPoint];
    -[SCATGestureProvider _updateStartingPointForGesturesWithScreenPoint:forDisplayID:](self, "_updateStartingPointForGesturesWithScreenPoint:forDisplayID:", v4, [v5 currentDisplayID]);
  }

  [(SCATGestureProvider *)self _updateShowsFingers];
}

- (void)menuDidAppear:(id)a3
{
  v4 = [a3 currentSheet];
  v5 = [v4 allowsExitAction];

  v6 = 1.0;
  if (v5)
  {
    v6 = 0.5;
  }

  [(SCATGestureProvider *)self setAlphaForFingers:v6];
}

- (void)menuDidDisappear:(id)a3
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

- (void)menuDidFinishTransition:(id)a3
{
  if (![(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {

    [(SCATGestureProvider *)self _updateVisibleFingers];
  }
}

- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v23 = a3;
  v7 = [(SCATGestureProvider *)self lineGestureType];
  if (v7 < 4)
  {
    [(SCATGestureProvider *)self _startConfirmingLineGestureWithEndpoint:x, y];
    goto LABEL_17;
  }

  if (v7 == 4)
  {
    v8 = +[SCATScannerManager sharedManager];
    [v23 pickedPointInDeviceCoordinates];
    v9 = [v8 focusContextAtPoint:?];

    v10 = [v9 element];
    if ([v10 scatIsKeyboardKey])
    {
      [(SCATGestureProvider *)self lastSelectedKeyboardSlidePoint];
      v12 = v11;
      v14 = v13;
      [(SCATGestureProvider *)self keyboardSlideStartPoint];
      v16 = v15;
      v18 = v17;
      v19 = [(SCATGestureProvider *)self keyboardSlideStartElement];
      v20 = [v10 isEqual:v19];

      if (v20 && v12 == v16 && v14 == v18)
      {
        goto LABEL_16;
      }

      v21 = [v10 scatIdentifier];
      v22 = [v21 isEqualToString:@"space"];

      if (!v22)
      {
        if ([(SCATGestureProvider *)self isStartingNextKeyboardSlideSegment])
        {
          [(SCATGestureProvider *)self setIsStartingNextKeyboardSlideSegment:0];
          [(SCATGestureProvider *)self _startNextKeyboardSlideGestureSegmentAtPoint:v10 element:x, y];
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
      if (![v10 scatIsAutocorrectCandidate] || !objc_msgSend(v10, "scatIsAXElement"))
      {
        [(SCATGestureProvider *)self _endKeyboardSlideGesture];
        goto LABEL_16;
      }

      [v10 simulateTapWithFingerIndex:2];
    }

    [(SCATGestureProvider *)self _endKeyboardSlideGestureSegment];
LABEL_16:
  }

LABEL_17:
}

- (void)touchDownForDrawingViewController:(id)a3
{
  v4 = [(SCATGestureProvider *)self _fingerController];
  v5 = [v4 legacyPressFingersDown];

  [(SCATGestureProvider *)self _initializeContinuousGestureDataWithName:@"DRAWING" points:v5];
}

- (void)touchUpForDrawingViewController:(id)a3
{
  if ([(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {

    [(SCATGestureProvider *)self _handleCompletedContinuousGesture];
  }
}

- (BOOL)drawingViewController:(id)a3 moveFingersToPoints:(id)a4
{
  v5 = a4;
  v6 = [(SCATGestureProvider *)self _fingerController];
  v7 = [v6 moveFingersToPoints:v5];

  if (v7 && [(SCATGestureProvider *)self _isPerformingContinuousGesture])
  {
    [(SCATGestureProvider *)self _addPointsToContinuousGestureData:v5];
  }

  return v7;
}

- (void)exitDrawingViewController:(id)a3
{
  drawingElementManager = self->_drawingElementManager;
  if (drawingElementManager)
  {
    self->_drawingElementManager = 0;

    [(SCATGestureProvider *)self setCurrentSwitchController:0];
  }
}

- (void)drawingViewController:(id)a3 shouldResetScanningFromElement:(id)a4
{
  v9 = a4;
  v6 = [a3 drawingElementManager];
  v7 = [(SCATGestureProvider *)self currentSwitchController];

  if (v6 == v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureProvider:self shouldResetScanningFromElement:v9];
  }
}

- (void)setCurrentSwitchController:(id)a3
{
  v5 = a3;
  if (self->_currentSwitchController != v5)
  {
    v7 = v5;
    if (v5)
    {
      objc_storeStrong(&self->_currentSwitchController, a3);
      [(SCATGestureProvider *)self _requestSwitchControllerPrivileges];
    }

    else
    {
      [(SCATGestureProvider *)self _resignSwitchControllerPrivileges];
      currentSwitchController = self->_currentSwitchController;
      self->_currentSwitchController = 0;
    }

    [(SCATGestureProvider *)self _updateShowsFingers];
    v5 = v7;
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

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureProvider *)self currentSwitchController];
  v5 = [v4 firstElementWithOptions:a3];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureProvider *)self currentSwitchController];
  v5 = [v4 lastElementWithOptions:a3];

  return v5;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureProvider *)self currentSwitchController];
  v10 = [v9 elementAfter:v8 didWrap:a4 options:a5];

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureProvider *)self currentSwitchController];
  v10 = [v9 elementBefore:v8 didWrap:a4 options:a5];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v4 = a3;
  v5 = [(SCATGestureProvider *)self currentSwitchController];
  [v5 scannerWillMakeManagerActive:v4];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(SCATGestureProvider *)self currentSwitchController];
  [v7 scannerWillMakeManagerActive:v6 forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCATGestureProvider *)self currentSwitchController];
  [v8 scannerWillMakeManagerInactive:v7 activeElementManager:v6];
}

- (BOOL)shouldKeepScannerAwake
{
  v2 = [(SCATGestureProvider *)self currentSwitchController];
  v3 = [v2 shouldKeepScannerAwake];

  return v3;
}

- (BOOL)allowsDwellSelection
{
  v2 = [(SCATGestureProvider *)self currentSwitchController];
  v3 = [v2 allowsDwellSelection];

  return v3;
}

- (BOOL)allowsDwellScanningToAbortAfterTimeout
{
  v2 = [(SCATGestureProvider *)self currentSwitchController];
  v3 = [v2 allowsDwellScanningToAbortAfterTimeout];

  return v3;
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCATGestureProvider *)self currentSwitchController];
  v9 = [v8 handleInputAction:v7 withElement:v6];

  return v9;
}

- (void)driver:(id)a3 willFocusOnContext:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCATGestureProvider;
  v6 = a4;
  v7 = a3;
  [(SCATElementManager *)&v9 driver:v7 willFocusOnContext:v6];
  v8 = [(SCATGestureProvider *)self currentSwitchController:v9.receiver];
  [v8 driver:v7 willFocusOnContext:v6];
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v12.receiver = self;
  v12.super_class = SCATGestureProvider;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(SCATElementManager *)&v12 driver:v10 didFocusOnContext:v9 oldContext:v8];
  v11 = [(SCATGestureProvider *)self currentSwitchController:v12.receiver];
  [v11 driver:v10 didFocusOnContext:v9 oldContext:v8];
}

- (void)driver:(id)a3 willUnfocusFromContext:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCATGestureProvider;
  v6 = a4;
  v7 = a3;
  [(SCATElementManager *)&v9 driver:v7 willUnfocusFromContext:v6];
  v8 = [(SCATGestureProvider *)self currentSwitchController:v9.receiver];
  [v8 driver:v7 willUnfocusFromContext:v6];
}

- (void)fingersElement:(id)a3 didBecomeFocused:(BOOL)a4
{
  if (a4)
  {
    [(SCATGestureProvider *)self setAlphaForFingers:a3, 1.0];
  }

  else
  {
    [(SCATGestureProvider *)self setAlphaForFingers:a3, 0.5];
  }
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v24 = a3;
  if ([v24 count] == 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([v24 count] != 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v24 objectAtIndexedSubscript:1];
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