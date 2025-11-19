@interface VOTMapsExplorationGestureManager
- (BOOL)explorationIsActive;
- (BOOL)explorationIsPending;
- (BOOL)handleSelection;
- (BOOL)handleTracking:(CGPoint)a3;
- (BOOL)handleVerbosityChangeIncreasing:(BOOL)a3;
- (BOOL)processEvent:(id)a3;
- (VOTMapsExplorationGestureManager)init;
- (VOTMapsExplorationGestureManagerDelegate)mapsExplorationGestureManagerDelegate;
- (id)currentIntersectionInformation;
- (id)currentMap;
- (id)explorationSegmentsForRoadsWithAngles:(id)a3;
- (int64_t)indexForPoint:(CGPoint)a3;
- (void)_playSound:(id)a3;
- (void)_speakText:(id)a3 doesNotInterrupt:(BOOL)a4 cannotBeInterrupted:(BOOL)a5;
- (void)beginExploration;
- (void)endExploration;
- (void)processTouch:(CGPoint)a3;
- (void)setActive:(BOOL)a3;
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
  v3 = [v2 currentElement];

  v4 = kAXMapTrait;
  if (([v3 doesHaveTraits:kAXMapTrait] & 1) != 0 || (objc_msgSend(v3, "touchContainer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "doesHaveTraits:", v4), v5, v6))
  {
    v7 = +[VOTWorkspace sharedWorkspace];
    v8 = [v7 currentElement];
    v9 = [v8 touchContainer];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateExplorationSegments
{
  v3 = +[VOTWorkspace sharedWorkspace];
  if (v3 && (v4 = v3, +[VOTWorkspace sharedWorkspace](VOTWorkspace, "sharedWorkspace"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentElement], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(VOTMapsExplorationGestureManager *)self currentMap];
    v10 = [v7 mapsExplorationCurrentRoadsWithAngles];

    v8 = [(VOTMapsExplorationGestureManager *)self explorationSegmentsForRoadsWithAngles:v10];
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
  v5 = [(VOTMapsExplorationGestureManager *)self currentMap];
  [v5 mapsExplorationCurrentLocation];
  p_currentLocation->x = v3;
  p_currentLocation->y = v4;
}

- (id)currentIntersectionInformation
{
  v2 = [(VOTMapsExplorationGestureManager *)self currentMap];
  v3 = [v2 mapsExplorationCurrentIntersectionDescription];

  return v3;
}

- (BOOL)explorationIsActive
{
  v2 = [(VOTMapsExplorationGestureManager *)self currentMap];
  v3 = [v2 mapsExplorationIsActive];

  return v3;
}

- (BOOL)explorationIsPending
{
  v2 = [(VOTMapsExplorationGestureManager *)self currentMap];
  v3 = [v2 mapsExplorationIsPending];

  return v3;
}

- (void)beginExploration
{
  v2 = +[VOTWorkspace sharedWorkspace];
  v3 = [v2 currentElement];

  [v3 mapsExplorationBeginFromCurrentElement:{objc_msgSend(v3, "mapFeatureType") == 1}];
}

- (void)endExploration
{
  v2 = [(VOTMapsExplorationGestureManager *)self currentMap];
  [v2 mapsExplorationEnd];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTGesturedTextInputManager *)self isActive];
  v9.receiver = self;
  v9.super_class = VOTMapsExplorationGestureManager;
  [(VOTGesturedTextInputManager *)&v9 setActive:v3];
  if (!v3 || (v5 & 1) != 0)
  {
    if (!v3 && ((v5 ^ 1) & 1) == 0)
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

- (BOOL)handleTracking:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

    v5 = [(VOTMapsExplorationGestureManager *)self currentMap];
    [v5 mapsExplorationContinueWithVertexIndex:self->_selectionIndex];

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

    v8 = [(VOTMapsExplorationGestureManager *)self currentIntersectionInformation];
    [(VOTMapsExplorationGestureManager *)self _speakText:v8 doesNotInterrupt:0 cannotBeInterrupted:0];

    self->_recentlyMoved = 1;
    self->_movedAngle = self->_lastAngle;
    self->_lastAngle = -1.0;
    self->_currentIndex = -1;
    self->_selectionIndex = -1;
  }

  return 1;
}

- (BOOL)handleVerbosityChangeIncreasing:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTMapsExplorationGestureManager *)self currentMap];
  v6 = [v5 mapsExplorationChangeVerbosity:v3];

  [(VOTMapsExplorationGestureManager *)self _speakText:v6 doesNotInterrupt:0 cannotBeInterrupted:0];
  return 1;
}

- (BOOL)processEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 command];
  v6 = [v5 isEqualToString:kVOTEventCommandTracking];

  if (v6)
  {
    [v4 touchPoint];
    v7 = [(VOTMapsExplorationGestureManager *)self handleTracking:?];
    goto LABEL_7;
  }

  v8 = [v4 command];
  if ([v8 isEqualToString:kVOTEventCommandSplitTapTap])
  {

LABEL_6:
    v7 = [(VOTMapsExplorationGestureManager *)self handleSelection];
    goto LABEL_7;
  }

  v9 = [v4 command];
  v10 = [v9 isEqualToString:kVOTEventCommandSimpleTap];

  if (v10)
  {
    goto LABEL_6;
  }

  v13 = [v4 command];
  v14 = [v13 isEqualToString:kVOTEventCommandSearchRotorUp];

  if (v14)
  {
    v15 = self;
    v16 = 1;
  }

  else
  {
    v17 = [v4 command];
    v18 = [v17 isEqualToString:kVOTEventCommandSearchRotorDown];

    if (!v18)
    {
      v19.receiver = self;
      v19.super_class = VOTMapsExplorationGestureManager;
      v7 = [(VOTGesturedTextInputManager *)&v19 processEvent:v4];
      goto LABEL_7;
    }

    v15 = self;
    v16 = 0;
  }

  v7 = [(VOTMapsExplorationGestureManager *)v15 handleVerbosityChangeIncreasing:v16];
LABEL_7:
  v11 = v7;

  return v11;
}

- (id)explorationSegmentsForRoadsWithAngles:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
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
      v17 = [v16 firstObject];
      [v17 floatValue];
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

- (void)processTouch:(CGPoint)a3
{
  p_currentCenter = &self->_currentCenter;
  x = a3.x;
  y = a3.y;
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

- (int64_t)indexForPoint:(CGPoint)a3
{
  v4 = a3.x - self->_currentCenter.x;
  v5 = a3.y - self->_currentCenter.y;
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
    v13 = [v12 firstObject];
    [v13 floatValue];
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

- (void)_speakText:(id)a3 doesNotInterrupt:(BOOL)a4 cannotBeInterrupted:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (v7)
  {
    v10 = v7;
    v8 = objc_opt_new();
    [v8 setDoesNotInterrupt:v6];
    [v8 setCannotBeInterrupted:v5];
    v9 = [v8 addString:v10];
    [v8 send];

    v7 = v10;
  }
}

- (void)_playSound:(id)a3
{
  v3 = a3;
  v4 = +[VOTOutputManager outputManager];
  [v4 playSoundFast:v3];
}

- (VOTMapsExplorationGestureManagerDelegate)mapsExplorationGestureManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapsExplorationGestureManagerDelegate);

  return WeakRetained;
}

@end