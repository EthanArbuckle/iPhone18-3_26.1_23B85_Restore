@interface VOTMapsExplorationGestureManager
- (BOOL)explorationIsActive;
- (BOOL)explorationIsPending;
- (BOOL)handleSelection;
- (BOOL)handleTracking:(CGPoint)tracking;
- (BOOL)handleVerbosityChangeIncreasing:(BOOL)increasing;
- (BOOL)processEvent:(id)event;
- (VOTMapsExplorationGestureManager)init;
- (VOTMapsExplorationGestureManagerDelegate)mapsExplorationGestureManagerDelegate;
- (id)currentIntersectionInformation;
- (id)currentMap;
- (id)explorationSegmentsForRoadsWithAngles:(id)angles;
- (int64_t)indexForPoint:(CGPoint)point;
- (void)_playSound:(id)sound;
- (void)_speakText:(id)text doesNotInterrupt:(BOOL)interrupt cannotBeInterrupted:(BOOL)interrupted;
- (void)beginExploration;
- (void)endExploration;
- (void)processTouch:(CGPoint)touch;
- (void)setActive:(BOOL)active;
- (void)updateCurrentLocation;
- (void)updateExplorationSegments;
@end

@implementation VOTMapsExplorationGestureManager

- (VOTMapsExplorationGestureManager)init
{
  v16.receiver = self;
  v16.super_class = VOTMapsExplorationGestureManager;
  v2 = [(VOTGesturedTextInputManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(VOTMapsExplorationGestureManager *)v2 updateExplorationSegments];
    v3->_currentIndex = -1;
    v3->_selectionIndex = -1;
    v3->_movedAngle = 0.0;
    v3->_lastAngle = -1.0;
    v3->_recentlyMoved = 0;
    v3->_currentLocation = CGPointZero;
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v14 = v6;
    v15 = v5;

    v7.f64[0] = v15;
    v7.f64[1] = v14;
    __asm { FMOV            V0.2D, #0.5 }

    v3->_currentCenter = vmulq_f64(v7, _Q0);
  }

  return v3;
}

- (id)currentMap
{
  v2 = +[VOTWorkspace sharedWorkspace];
  currentElement = [v2 currentElement];

  v4 = kAXMapTrait;
  if (([currentElement doesHaveTraits:kAXMapTrait] & 1) != 0 || (objc_msgSend(currentElement, "touchContainer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "doesHaveTraits:", v4), v5, v6))
  {
    v7 = +[VOTWorkspace sharedWorkspace];
    currentElement2 = [v7 currentElement];
    touchContainer = [currentElement2 touchContainer];
  }

  else
  {
    touchContainer = 0;
  }

  return touchContainer;
}

- (void)updateExplorationSegments
{
  v3 = +[VOTWorkspace sharedWorkspace];
  if (v3 && (v4 = v3, +[VOTWorkspace sharedWorkspace](VOTWorkspace, "sharedWorkspace"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentElement], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
    mapsExplorationCurrentRoadsWithAngles = [currentMap mapsExplorationCurrentRoadsWithAngles];

    v8 = [(VOTMapsExplorationGestureManager *)self explorationSegmentsForRoadsWithAngles:mapsExplorationCurrentRoadsWithAngles];
    explorationSegments = self->_explorationSegments;
    self->_explorationSegments = v8;
  }

  else
  {
    self->_explorationSegments = objc_opt_new();
  }

  _objc_release_x1();
}

- (void)updateCurrentLocation
{
  p_currentLocation = &self->_currentLocation;
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  [currentMap mapsExplorationCurrentLocation];
  p_currentLocation->x = v3;
  p_currentLocation->y = v4;
}

- (id)currentIntersectionInformation
{
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  mapsExplorationCurrentIntersectionDescription = [currentMap mapsExplorationCurrentIntersectionDescription];

  return mapsExplorationCurrentIntersectionDescription;
}

- (BOOL)explorationIsActive
{
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  mapsExplorationIsActive = [currentMap mapsExplorationIsActive];

  return mapsExplorationIsActive;
}

- (BOOL)explorationIsPending
{
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  mapsExplorationIsPending = [currentMap mapsExplorationIsPending];

  return mapsExplorationIsPending;
}

- (void)beginExploration
{
  v2 = +[VOTWorkspace sharedWorkspace];
  currentElement = [v2 currentElement];

  [currentElement mapsExplorationBeginFromCurrentElement:{objc_msgSend(currentElement, "mapFeatureType") == 1}];
}

- (void)endExploration
{
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  [currentMap mapsExplorationEnd];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  isActive = [(VOTGesturedTextInputManager *)self isActive];
  v9.receiver = self;
  v9.super_class = VOTMapsExplorationGestureManager;
  [(VOTGesturedTextInputManager *)&v9 setActive:activeCopy];
  if (!activeCopy || (isActive & 1) != 0)
  {
    if (!activeCopy && ((isActive ^ 1) & 1) == 0)
    {
      v8 = +[VOTDisplayManager displayManager];
      [v8 hideMapsExplorationUI];

      if ([(VOTMapsExplorationGestureManager *)self explorationIsActive])
      {
        [(VOTMapsExplorationGestureManager *)self endExploration];
      }
    }
  }

  else
  {
    if (![(VOTMapsExplorationGestureManager *)self explorationIsActive])
    {
      [(VOTMapsExplorationGestureManager *)self beginExploration];
    }

    [(VOTMapsExplorationGestureManager *)self updateExplorationSegments];
    v6 = +[VOTDisplayManager displayManager];
    [v6 showMapsExplorationUIWithCenter:self->_explorationSegments andData:{self->_currentCenter.x, self->_currentCenter.y}];

    [(VOTMapsExplorationGestureManager *)self updateCurrentLocation];
    v7 = +[VOTDisplayManager displayManager];
    [v7 updateMapsExplorationUIWithCurrentLocation:{self->_currentLocation.x, self->_currentLocation.y}];
  }
}

- (BOOL)handleTracking:(CGPoint)tracking
{
  y = tracking.y;
  x = tracking.x;
  [(VOTMapsExplorationGestureManager *)self processTouch:?];
  v6 = [(VOTMapsExplorationGestureManager *)self indexForPoint:x, y];
  if (v6 != self->_currentIndex)
  {
    self->_currentIndex = v6;
    if (v6 != -1)
    {
      self->_selectionIndex = v6;
      v7 = sub_1000511CC(off_1001FDDD0, @"one.of.many", 0);
      v8 = [NSString localizedStringWithFormat:v7, self->_selectionIndex + 1, [(NSArray *)self->_explorationSegments count]];

      v9 = [(NSArray *)self->_explorationSegments objectAtIndex:self->_selectionIndex];
      v10 = [v9 objectAtIndex:2];

      v11 = __AXStringForVariables();
      [(VOTMapsExplorationGestureManager *)self _speakText:v11 doesNotInterrupt:0 cannotBeInterrupted:0, v8, @"__AXStringForVariablesSentinel"];

      v12 = +[VOTDisplayManager displayManager];
      [v12 highlightMapsExplorationSegmentWithIndex:self->_currentIndex];
    }
  }

  return 1;
}

- (BOOL)handleSelection
{
  if ((self->_selectionIndex & 0x8000000000000000) == 0)
  {
    v3 = +[VOTOutputManager outputManager];
    v4 = +[VOSOutputEvent DidActivateElement];
    [v3 sendEvent:v4];

    currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
    [currentMap mapsExplorationContinueWithVertexIndex:self->_selectionIndex];

    if ([(VOTMapsExplorationGestureManager *)self explorationIsPending])
    {
      do
      {
        [NSThread sleepForTimeInterval:1.0];
      }

      while ([(VOTMapsExplorationGestureManager *)self explorationIsPending]);
    }

    [(VOTMapsExplorationGestureManager *)self updateExplorationSegments];
    v6 = +[VOTDisplayManager displayManager];
    [v6 showMapsExplorationUIWithCenter:self->_explorationSegments andData:{self->_currentCenter.x, self->_currentCenter.y}];

    [(VOTMapsExplorationGestureManager *)self updateCurrentLocation];
    v7 = +[VOTDisplayManager displayManager];
    [v7 updateMapsExplorationUIWithCurrentLocation:{self->_currentLocation.x, self->_currentLocation.y}];

    currentIntersectionInformation = [(VOTMapsExplorationGestureManager *)self currentIntersectionInformation];
    [(VOTMapsExplorationGestureManager *)self _speakText:currentIntersectionInformation doesNotInterrupt:0 cannotBeInterrupted:0];

    self->_recentlyMoved = 1;
    self->_movedAngle = self->_lastAngle;
    self->_lastAngle = -1.0;
    self->_currentIndex = -1;
    self->_selectionIndex = -1;
  }

  return 1;
}

- (BOOL)handleVerbosityChangeIncreasing:(BOOL)increasing
{
  increasingCopy = increasing;
  currentMap = [(VOTMapsExplorationGestureManager *)self currentMap];
  v6 = [currentMap mapsExplorationChangeVerbosity:increasingCopy];

  [(VOTMapsExplorationGestureManager *)self _speakText:v6 doesNotInterrupt:0 cannotBeInterrupted:0];
  return 1;
}

- (BOOL)processEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  v6 = [command isEqualToString:kVOTEventCommandTracking];

  if (v6)
  {
    [eventCopy touchPoint];
    handleSelection = [(VOTMapsExplorationGestureManager *)self handleTracking:?];
    goto LABEL_7;
  }

  command2 = [eventCopy command];
  if ([command2 isEqualToString:kVOTEventCommandSplitTapTap])
  {

LABEL_6:
    handleSelection = [(VOTMapsExplorationGestureManager *)self handleSelection];
    goto LABEL_7;
  }

  command3 = [eventCopy command];
  v10 = [command3 isEqualToString:kVOTEventCommandSimpleTap];

  if (v10)
  {
    goto LABEL_6;
  }

  command4 = [eventCopy command];
  v14 = [command4 isEqualToString:kVOTEventCommandSearchRotorUp];

  if (v14)
  {
    selfCopy2 = self;
    v16 = 1;
  }

  else
  {
    command5 = [eventCopy command];
    v18 = [command5 isEqualToString:kVOTEventCommandSearchRotorDown];

    if (!v18)
    {
      v19.receiver = self;
      v19.super_class = VOTMapsExplorationGestureManager;
      handleSelection = [(VOTGesturedTextInputManager *)&v19 processEvent:eventCopy];
      goto LABEL_7;
    }

    selfCopy2 = self;
    v16 = 0;
  }

  handleSelection = [(VOTMapsExplorationGestureManager *)selfCopy2 handleVerbosityChangeIncreasing:v16];
LABEL_7:
  v11 = handleSelection;

  return v11;
}

- (id)explorationSegmentsForRoadsWithAngles:(id)angles
{
  anglesCopy = angles;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = anglesCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = objc_opt_new();
        v12 = [v10 objectAtIndex:{1, v25}];
        [v11 addObject:v12];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = [v5 count];
  if (v13 >= 1)
  {
    v14 = v13;
    for (j = 0; j != v14; ++j)
    {
      v16 = [v5 objectAtIndex:{j, v25}];
      firstObject = [v16 firstObject];
      [firstObject floatValue];
      v19 = v18;

      v20 = [v4 objectAtIndex:j];
      v21 = [NSNumber numberWithDouble:v19 + 0.400000006];
      [v20 insertObject:v21 atIndex:0];

      v22 = [v4 objectAtIndex:j];
      v23 = [NSNumber numberWithDouble:v19 + -0.400000006];
      [v22 insertObject:v23 atIndex:0];
    }
  }

  return v4;
}

- (void)processTouch:(CGPoint)touch
{
  p_currentCenter = &self->_currentCenter;
  x = touch.x;
  y = touch.y;
  SCRCMathGetDistanceBetweenPoints();
  if (*&v4 > 200.0)
  {
    v13 = *&v4 + -200.0 + 5.0;
    v5.f64[0] = x;
    v5.f64[1] = y;
    v17 = vdivq_f64(vsubq_f64(v5, *p_currentCenter), vdupq_lane_s64(v4, 0));
    v6 = +[UIScreen mainScreen];
    [v6 bounds];
    v15 = v7;
    v12 = v8;

    v9.f64[0] = v15;
    v9.f64[1] = v12;
    v10 = vaddq_f64(v9, vdupq_n_s64(0xC069000000000000));
    v11 = vmlaq_n_f64(*p_currentCenter, v17, v13);
    *p_currentCenter = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v11, v10), v10, v11), vdupq_n_s64(0x4069000000000000uLL));
    v18 = +[VOTDisplayManager displayManager];
    [v18 updateMapsExplorationUIWithCurrentCenter:{p_currentCenter->f64[0], p_currentCenter->f64[1]}];
  }
}

- (int64_t)indexForPoint:(CGPoint)point
{
  v4 = point.x - self->_currentCenter.x;
  v5 = point.y - self->_currentCenter.y;
  v6 = v4;
  v7 = atan2f(v5, v6);
  if (v7 <= 0.0)
  {
    v8 = v7 + 6.28318531;
  }

  else
  {
    v8 = v7;
  }

  if (self->_recentlyMoved)
  {
    if (vabdd_f64(v8, self->_movedAngle) < 0.200000003)
    {
      return -1;
    }

    self->_recentlyMoved = 0;
  }

  v9 = [(NSArray *)self->_explorationSegments count];
  if (v9 < 1)
  {
LABEL_19:
    self->_lastAngle = -1.0;
    return -1;
  }

  v10 = v9;
  v11 = 0;
  v29 = vdupq_n_s64(0xC01921FB54442D18);
  v30 = vdupq_n_s64(0x401921FB54442D18uLL);
  while (1)
  {
    v12 = [(NSArray *)self->_explorationSegments objectAtIndex:v11, *&v29, *&v30];
    firstObject = [v12 firstObject];
    [firstObject floatValue];
    v32 = v14;

    v15 = [v12 objectAtIndex:1];
    [v15 floatValue];
    v31 = v16;

    v17 = vcvtq_f64_f32(__PAIR64__(v31, v32));
    v18 = vcltz_f32(__PAIR64__(v31, v32));
    v19.i64[0] = v18.i32[0];
    v19.i64[1] = v18.i32[1];
    v20 = vbslq_s8(v19, vaddq_f64(v17, v30), v17);
    v21 = vbslq_s8(vcgtq_f64(v20, v30), vaddq_f64(v20, v29), v20);
    if (*v21.i64 > *&v21.i64[1] && (v8 > *v21.i64 || v8 < *&v21.i64[1]))
    {
      break;
    }

    if (v8 > *v21.i64 && v8 < *&v21.i64[1])
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_19;
    }
  }

  v24 = (*v21.i64 + *&v21.i64[1]) * 0.5;
  if (v24 < 0.0)
  {
    v24 = v24 + 6.28318531;
  }

  lastAngle = self->_lastAngle;
  if (lastAngle != -1.0)
  {
    v26 = lastAngle <= v24 || v8 > v24;
    if (!v26 || (lastAngle < v24 ? (v27 = v8 < v24) : (v27 = 1), !v27))
    {
      [(VOTMapsExplorationGestureManager *)self _playSound:@"Sounds/Edge.aiff"];
    }
  }

  self->_lastAngle = v8;

  return v11;
}

- (void)_speakText:(id)text doesNotInterrupt:(BOOL)interrupt cannotBeInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  interruptCopy = interrupt;
  textCopy = text;
  if (textCopy)
  {
    v10 = textCopy;
    v8 = objc_opt_new();
    [v8 setDoesNotInterrupt:interruptCopy];
    [v8 setCannotBeInterrupted:interruptedCopy];
    v9 = [v8 addString:v10];
    [v8 send];

    textCopy = v10;
  }
}

- (void)_playSound:(id)sound
{
  soundCopy = sound;
  v4 = +[VOTOutputManager outputManager];
  [v4 playSoundFast:soundCopy];
}

- (VOTMapsExplorationGestureManagerDelegate)mapsExplorationGestureManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapsExplorationGestureManagerDelegate);

  return WeakRetained;
}

@end