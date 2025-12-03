@interface CarMapNudgerizer
- (CarMapNudgerizer)init;
- (CarMapNudgerizerDelegate)delegate;
- (MKMapView)mapView;
- (double)_userDefaultsDoubleForKey:(id)key defaultValue:(double)value;
- (double)holdMagnitudeForDirection:(int64_t)direction;
- (double)impulseMagnitudeForDirection:(int64_t)direction;
- (id)_behaviorForDirection:(int64_t)direction;
- (int64_t)_eventDirectionForButtonType:(int64_t)type;
- (void)_addPanRecognizers;
- (void)_beginAnimatingIfNeeded;
- (void)_beginImpulseDown;
- (void)_beginImpulseInDirection:(int64_t)direction withMagnitude:(double)magnitude;
- (void)_beginImpulseLeft;
- (void)_beginImpulseRight;
- (void)_beginImpulseUp;
- (void)_clearGesture:(id)gesture;
- (void)_clearGestureRecognizersInFlight;
- (void)_clearGesturesAndAnimations;
- (void)_configureAnimator;
- (void)_endAnimating;
- (void)_endAnimatingIfNeeded;
- (void)_endImpulseDown;
- (void)_endImpulseLeft;
- (void)_endImpulseRight;
- (void)_endImpulseUp;
- (void)_momentaryImpulseDown;
- (void)_momentaryImpulseLeft;
- (void)_momentaryImpulseRight;
- (void)_momentaryImpulseUp;
- (void)_removePanRecognizers;
- (void)_setImpulseInDirection:(int64_t)direction magnitude:(double)magnitude;
- (void)beginImpulseInDirection:(int64_t)direction;
- (void)endImpluseInDirection:(int64_t)direction;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)momentaryImpulseInDirection:(int64_t)direction;
- (void)setActive:(BOOL)active;
@end

@implementation CarMapNudgerizer

- (void)_removePanRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [WeakRetained removeGestureRecognizer:self->_leftTapRecognizer];

  v4 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v4 removeGestureRecognizer:self->_leftLongPressRecognizer];

  v5 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v5 removeGestureRecognizer:self->_rightTapRecognizer];

  v6 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v6 removeGestureRecognizer:self->_rightLongPressRecognizer];

  v7 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v7 removeGestureRecognizer:self->_upTapRecognizer];

  v8 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v8 removeGestureRecognizer:self->_upLongPressRecognizer];

  v9 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v9 removeGestureRecognizer:self->_downTapRecognizer];

  v10 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v10 removeGestureRecognizer:self->_downLongPressRecognizer];

  leftTapRecognizer = self->_leftTapRecognizer;
  self->_leftTapRecognizer = 0;

  leftLongPressRecognizer = self->_leftLongPressRecognizer;
  self->_leftLongPressRecognizer = 0;

  rightTapRecognizer = self->_rightTapRecognizer;
  self->_rightTapRecognizer = 0;

  rightLongPressRecognizer = self->_rightLongPressRecognizer;
  self->_rightLongPressRecognizer = 0;

  upTapRecognizer = self->_upTapRecognizer;
  self->_upTapRecognizer = 0;

  upLongPressRecognizer = self->_upLongPressRecognizer;
  self->_upLongPressRecognizer = 0;

  downTapRecognizer = self->_downTapRecognizer;
  self->_downTapRecognizer = 0;

  downLongPressRecognizer = self->_downLongPressRecognizer;
  self->_downLongPressRecognizer = 0;
}

- (CarMapNudgerizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (double)_userDefaultsDoubleForKey:(id)key defaultValue:(double)value
{
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:keyCopy];

  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 doubleForKey:keyCopy];
    value = v9;
  }

  return value;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  allowedPressTypes = [pressCopy allowedPressTypes];
  firstObject = [allowedPressTypes firstObject];
  v6 = -[CarMapNudgerizer _eventDirectionForButtonType:](self, "_eventDirectionForButtonType:", [firstObject integerValue]);

  if ([pressCopy state] == 1)
  {
    [(CarMapNudgerizer *)self beginImpulseInDirection:v6];
  }

  else if ([pressCopy state] == 3 || objc_msgSend(pressCopy, "state") == 4)
  {
    [(CarMapNudgerizer *)self endImpluseInDirection:v6];
  }
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    allowedPressTypes = [tapCopy allowedPressTypes];
    firstObject = [allowedPressTypes firstObject];
    v6 = -[CarMapNudgerizer _eventDirectionForButtonType:](self, "_eventDirectionForButtonType:", [firstObject integerValue]);

    [(CarMapNudgerizer *)self momentaryImpulseInDirection:v6];
  }
}

- (int64_t)_eventDirectionForButtonType:(int64_t)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_clearGesturesAndAnimations
{
  [(CarMapNudgerizer *)self _clearGestureRecognizersInFlight];
  [(CarMapNudgerizer *)self _endImpulseUp];
  [(CarMapNudgerizer *)self _endImpulseDown];
  [(CarMapNudgerizer *)self _endImpulseLeft];
  [(CarMapNudgerizer *)self _endImpulseRight];

  [(CarMapNudgerizer *)self _endAnimating];
}

- (void)_clearGestureRecognizersInFlight
{
  [(CarMapNudgerizer *)self _clearGesture:self->_leftTapRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_leftLongPressRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_rightTapRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_rightLongPressRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_upTapRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_upLongPressRecognizer];
  [(CarMapNudgerizer *)self _clearGesture:self->_downTapRecognizer];
  downLongPressRecognizer = self->_downLongPressRecognizer;

  [(CarMapNudgerizer *)self _clearGesture:downLongPressRecognizer];
}

- (void)_clearGesture:(id)gesture
{
  gestureCopy = gesture;
  isEnabled = [gestureCopy isEnabled];
  [gestureCopy setEnabled:0];
  [gestureCopy setEnabled:isEnabled];
}

- (void)_addPanRecognizers
{
  v3 = +[CarDisplayController sharedInstance];
  window = [v3 window];
  objc_storeWeak(&self->_gestureRecognizerView, window);

  v5 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleLongPress:"];
  leftLongPressRecognizer = self->_leftLongPressRecognizer;
  self->_leftLongPressRecognizer = v5;

  [(UILongPressGestureRecognizer *)self->_leftLongPressRecognizer setAllowedPressTypes:&off_1016ED190];
  v7 = self->_leftLongPressRecognizer;
  [(CarMapNudgerizer *)self panningMetrics];
  [(UILongPressGestureRecognizer *)v7 setMinimumPressDuration:v36];
  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  leftTapRecognizer = self->_leftTapRecognizer;
  self->_leftTapRecognizer = v8;

  [(UITapGestureRecognizer *)self->_leftTapRecognizer setAllowedPressTypes:&off_1016ED1A8];
  [(UITapGestureRecognizer *)self->_leftTapRecognizer requireGestureRecognizerToFail:self->_leftLongPressRecognizer];
  v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleLongPress:"];
  rightLongPressRecognizer = self->_rightLongPressRecognizer;
  self->_rightLongPressRecognizer = v10;

  [(UILongPressGestureRecognizer *)self->_rightLongPressRecognizer setAllowedPressTypes:&off_1016ED1C0];
  v12 = self->_rightLongPressRecognizer;
  [(CarMapNudgerizer *)self panningMetrics];
  [(UILongPressGestureRecognizer *)v12 setMinimumPressDuration:v35];
  v13 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  rightTapRecognizer = self->_rightTapRecognizer;
  self->_rightTapRecognizer = v13;

  [(UITapGestureRecognizer *)self->_rightTapRecognizer setAllowedPressTypes:&off_1016ED1D8];
  [(UITapGestureRecognizer *)self->_rightTapRecognizer requireGestureRecognizerToFail:self->_rightLongPressRecognizer];
  v15 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleLongPress:"];
  upLongPressRecognizer = self->_upLongPressRecognizer;
  self->_upLongPressRecognizer = v15;

  [(UILongPressGestureRecognizer *)self->_upLongPressRecognizer setAllowedPressTypes:&off_1016ED1F0];
  v17 = self->_upLongPressRecognizer;
  [(CarMapNudgerizer *)self panningMetrics];
  [(UILongPressGestureRecognizer *)v17 setMinimumPressDuration:v34];
  v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  upTapRecognizer = self->_upTapRecognizer;
  self->_upTapRecognizer = v18;

  [(UITapGestureRecognizer *)self->_upTapRecognizer setAllowedPressTypes:&off_1016ED208];
  [(UITapGestureRecognizer *)self->_upTapRecognizer requireGestureRecognizerToFail:self->_upLongPressRecognizer];
  v20 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleLongPress:"];
  downLongPressRecognizer = self->_downLongPressRecognizer;
  self->_downLongPressRecognizer = v20;

  [(UILongPressGestureRecognizer *)self->_downLongPressRecognizer setAllowedPressTypes:&off_1016ED220];
  v22 = self->_downLongPressRecognizer;
  [(CarMapNudgerizer *)self panningMetrics];
  [(UILongPressGestureRecognizer *)v22 setMinimumPressDuration:v33];
  v23 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  downTapRecognizer = self->_downTapRecognizer;
  self->_downTapRecognizer = v23;

  [(UITapGestureRecognizer *)self->_downTapRecognizer setAllowedPressTypes:&off_1016ED238];
  [(UITapGestureRecognizer *)self->_downTapRecognizer requireGestureRecognizerToFail:self->_downLongPressRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [WeakRetained addGestureRecognizer:self->_leftTapRecognizer];

  v26 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v26 addGestureRecognizer:self->_leftLongPressRecognizer];

  v27 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v27 addGestureRecognizer:self->_rightTapRecognizer];

  v28 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v28 addGestureRecognizer:self->_rightLongPressRecognizer];

  v29 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v29 addGestureRecognizer:self->_upTapRecognizer];

  v30 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v30 addGestureRecognizer:self->_upLongPressRecognizer];

  v31 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v31 addGestureRecognizer:self->_downTapRecognizer];

  v32 = objc_loadWeakRetained(&self->_gestureRecognizerView);
  [v32 addGestureRecognizer:self->_downLongPressRecognizer];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(CarMapNudgerizer *)self _addPanRecognizers];
    }

    else
    {
      [(CarMapNudgerizer *)self _removePanRecognizers];
    }
  }
}

- (void)momentaryImpulseInDirection:(int64_t)direction
{
  if (direction > 2)
  {
    if (direction == 4)
    {
      [(CarMapNudgerizer *)self _momentaryImpulseRight];
    }

    else if (direction == 3)
    {
      [(CarMapNudgerizer *)self _momentaryImpulseLeft];
    }
  }

  else if (direction == 1)
  {
    [(CarMapNudgerizer *)self _momentaryImpulseUp];
  }

  else if (direction == 2)
  {
    [(CarMapNudgerizer *)self _momentaryImpulseDown];
  }
}

- (void)endImpluseInDirection:(int64_t)direction
{
  if (direction > 2)
  {
    if (direction == 4)
    {
      [(CarMapNudgerizer *)self _endImpulseRight];
    }

    else if (direction == 3)
    {
      [(CarMapNudgerizer *)self _endImpulseLeft];
    }
  }

  else if (direction == 1)
  {
    [(CarMapNudgerizer *)self _endImpulseUp];
  }

  else if (direction == 2)
  {
    [(CarMapNudgerizer *)self _endImpulseDown];
  }
}

- (void)beginImpulseInDirection:(int64_t)direction
{
  if (direction > 2)
  {
    if (direction == 4)
    {
      [(CarMapNudgerizer *)self _beginImpulseRight];
    }

    else if (direction == 3)
    {
      [(CarMapNudgerizer *)self _beginImpulseLeft];
    }
  }

  else if (direction == 1)
  {
    [(CarMapNudgerizer *)self _beginImpulseUp];
  }

  else if (direction == 2)
  {
    [(CarMapNudgerizer *)self _beginImpulseDown];
  }
}

- (void)_setImpulseInDirection:(int64_t)direction magnitude:(double)magnitude
{
  [(CarMapNudgerizer *)self _beginAnimatingIfNeeded];
  v7 = [(CarMapNudgerizer *)self _behaviorForDirection:direction];
  [v7 setMagnitude:magnitude];
}

- (id)_behaviorForDirection:(int64_t)direction
{
  if ((direction - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.isa + qword_101215010[direction - 1]);
  }

  return v4;
}

- (void)_beginImpulseInDirection:(int64_t)direction withMagnitude:(double)magnitude
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  if (!WeakRetained || ((v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_mapView), [v9 bounds], v11 = v10, v13 = v12, height = CGSizeZero.height, v9, v8, v11 == CGSizeZero.width) ? (v15 = v13 == height) : (v15 = 0), v15))
  {
    v23 = sub_100006E1C();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
LABEL_23:

      return;
    }

    v24 = objc_loadWeakRetained(&self->_mapView);
    if (!v24)
    {
      v29 = @"<nil>";
      goto LABEL_22;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_20;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_20:

LABEL_22:
    v30 = objc_loadWeakRetained(&self->_mapView);
    [v30 bounds];
    v31 = NSStringFromCGRect(v37);
    *buf = 138412546;
    v33 = v29;
    v34 = 2112;
    v35 = v31;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Cannot begin map panning impulse with mapView:%@ bounds:%@", buf, 0x16u);

    goto LABEL_23;
  }

  v16 = objc_loadWeakRetained(&self->_mapView);
  userTrackingMode = [v16 userTrackingMode];

  if (userTrackingMode)
  {
    v18 = objc_loadWeakRetained(&self->_mapView);
    [v18 _setUserTrackingMode:0 animated:0 fromTrackingButton:0];
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_loadWeakRetained(&self->_mapView);
    [v21 nudgerizer:self didGestureMapView:v22 inDirection:direction];
  }

  [(CarMapNudgerizer *)self _setImpulseInDirection:direction magnitude:magnitude];
}

- (double)impulseMagnitudeForDirection:(int64_t)direction
{
  [(CarMapNudgerizer *)self panningMetrics];
  v5 = v22;
  v6 = +[NSDate date];
  lastImpulseDate = [(CarMapNudgerizer *)self lastImpulseDate];
  [(CarMapNudgerizer *)self panningMetrics];
  v8 = [lastImpulseDate dateByAddingTimeInterval:v21];
  v9 = [v8 compare:v6];

  if ([(CarMapNudgerizer *)self lastImpulseDirection]== direction && v9 == 1)
  {
    impulseCount = [(CarMapNudgerizer *)self impulseCount];
    [(CarMapNudgerizer *)self panningMetrics];
    [(CarMapNudgerizer *)self panningMetrics];
    v5 = fmin(v22 + v20 * impulseCount, v19);
  }

  else
  {
    [(CarMapNudgerizer *)self setLastImpulseDirection:direction];
    [(CarMapNudgerizer *)self setImpulseCount:0];
  }

  [(CarMapNudgerizer *)self setLastImpulseDate:v6];
  [(CarMapNudgerizer *)self setImpulseCount:[(CarMapNudgerizer *)self impulseCount]+ 1];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained bounds];
  if ((direction - 1) > 1)
  {
    Width = CGRectGetWidth(*&v12);
  }

  else
  {
    Width = CGRectGetHeight(*&v12);
  }

  v17 = Width;

  return v17 * v5;
}

- (double)holdMagnitudeForDirection:(int64_t)direction
{
  [(CarMapNudgerizer *)self panningMetrics];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained bounds];
  Height = CGRectGetHeight(v10);
  v6 = objc_loadWeakRetained(&self->_mapView);
  [v6 bounds];
  v7 = fmax(Height, CGRectGetWidth(v11)) * v9;

  return v7;
}

- (void)_momentaryImpulseRight
{
  [(CarMapNudgerizer *)self impulseMagnitudeForDirection:4];
  [(CarMapNudgerizer *)self _beginImpulseInDirection:4 withMagnitude:?];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseRight" object:0];
  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:1 inDirection:4];
  [(CarMapNudgerizer *)self panningMetrics];
  [(CarMapNudgerizer *)self performSelector:"_endImpulseRight" withObject:0 afterDelay:v3];
}

- (void)_endImpulseRight
{
  v3 = [(CarMapNudgerizer *)self _behaviorForDirection:4];
  [v3 setMagnitude:0.0];

  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:0 inDirection:4];
}

- (void)_beginImpulseRight
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseRight" object:0];
  [(CarMapNudgerizer *)self holdMagnitudeForDirection:4];

  [(CarMapNudgerizer *)self _beginImpulseInDirection:4 withMagnitude:?];
}

- (void)_momentaryImpulseLeft
{
  [(CarMapNudgerizer *)self impulseMagnitudeForDirection:3];
  [(CarMapNudgerizer *)self _beginImpulseInDirection:3 withMagnitude:?];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseLeft" object:0];
  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:1 inDirection:3];
  [(CarMapNudgerizer *)self panningMetrics];
  [(CarMapNudgerizer *)self performSelector:"_endImpulseLeft" withObject:0 afterDelay:v3];
}

- (void)_endImpulseLeft
{
  v3 = [(CarMapNudgerizer *)self _behaviorForDirection:3];
  [v3 setMagnitude:0.0];

  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:0 inDirection:3];
}

- (void)_beginImpulseLeft
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseLeft" object:0];
  [(CarMapNudgerizer *)self holdMagnitudeForDirection:3];

  [(CarMapNudgerizer *)self _beginImpulseInDirection:3 withMagnitude:?];
}

- (void)_momentaryImpulseDown
{
  [(CarMapNudgerizer *)self impulseMagnitudeForDirection:2];
  [(CarMapNudgerizer *)self _beginImpulseInDirection:2 withMagnitude:?];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseDown" object:0];
  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:1 inDirection:2];
  [(CarMapNudgerizer *)self panningMetrics];
  [(CarMapNudgerizer *)self performSelector:"_endImpulseDown" withObject:0 afterDelay:v3];
}

- (void)_endImpulseDown
{
  v3 = [(CarMapNudgerizer *)self _behaviorForDirection:2];
  [v3 setMagnitude:0.0];

  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:0 inDirection:2];
}

- (void)_beginImpulseDown
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseDown" object:0];
  [(CarMapNudgerizer *)self holdMagnitudeForDirection:2];

  [(CarMapNudgerizer *)self _beginImpulseInDirection:2 withMagnitude:?];
}

- (void)_momentaryImpulseUp
{
  [(CarMapNudgerizer *)self impulseMagnitudeForDirection:1];
  [(CarMapNudgerizer *)self _beginImpulseInDirection:1 withMagnitude:?];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseUp" object:0];
  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:1 inDirection:1];
  [(CarMapNudgerizer *)self panningMetrics];
  [(CarMapNudgerizer *)self performSelector:"_endImpulseUp" withObject:0 afterDelay:v3];
}

- (void)_endImpulseUp
{
  v3 = [(CarMapNudgerizer *)self _behaviorForDirection:1];
  [v3 setMagnitude:0.0];

  [(CarMapNudgerizer *)self _setHasBegunMomentaryImpulse:0 inDirection:1];
}

- (void)_beginImpulseUp
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_endImpulseUp" object:0];
  [(CarMapNudgerizer *)self holdMagnitudeForDirection:1];

  [(CarMapNudgerizer *)self _beginImpulseInDirection:1 withMagnitude:?];
}

- (void)_endAnimatingIfNeeded
{
  if (self->_animating && ![(UIDynamicAnimator *)self->_animator isRunning])
  {

    [(CarMapNudgerizer *)self _endAnimating];
  }
}

- (void)_endAnimating
{
  [(UIDynamicAnimator *)self->_animator removeAllBehaviors];
  animator = self->_animator;
  self->_animator = 0;

  item = self->_item;
  self->_item = 0;

  if (self->_animating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _stopPanningAtPoint:{self->_initialPanPoint.x, self->_initialPanPoint.y}];
  }

  self->_animating = 0;
}

- (void)_beginAnimatingIfNeeded
{
  if (!self->_animating)
  {
    [(CarMapNudgerizer *)self _configureAnimator];
    [(CarImpulsePanningDynamicItem *)self->_item setCenter:CGPointZero.x, CGPointZero.y];
    self->_animating = 1;
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v16.origin.x = v6;
    v16.origin.y = v8;
    v16.size.width = v10;
    v16.size.height = v12;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    MidY = CGRectGetMidY(v17);
    self->_initialPanPoint.x = MidX;
    self->_initialPanPoint.y = MidY;
    v15 = objc_loadWeakRetained(&self->_mapView);
    [v15 _startPanningAtPoint:{self->_initialPanPoint.x, self->_initialPanPoint.y}];
  }
}

- (void)_configureAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v38 = [[CarImpulsePanningDynamicItem alloc] initWithBounds:v5, v7, v9, v11];
  objc_storeStrong(&self->_item, v38);
  [(CarImpulsePanningDynamicItem *)self->_item setCenter:CGPointZero.x, CGPointZero.y];
  v12 = objc_alloc_init(UIDynamicBehavior);
  panBehavior = self->_panBehavior;
  self->_panBehavior = v12;

  v14 = [UIDynamicItemBehavior alloc];
  item = self->_item;
  v15 = [NSArray arrayWithObjects:&item count:1];
  v16 = [v14 initWithItems:v15];

  [v16 setResistance:5.0];
  [(UIDynamicBehavior *)self->_panBehavior addChildBehavior:v16];
  v17 = [UIPushBehavior alloc];
  v45 = self->_item;
  v18 = [NSArray arrayWithObjects:&v45 count:1];
  v19 = [v17 initWithItems:v18 mode:0];
  leftPush = self->_leftPush;
  self->_leftPush = v19;

  [(UIPushBehavior *)self->_leftPush setAngle:0.0];
  v21 = [UIPushBehavior alloc];
  v44 = self->_item;
  v22 = [NSArray arrayWithObjects:&v44 count:1];
  v23 = [v21 initWithItems:v22 mode:0];
  rightPush = self->_rightPush;
  self->_rightPush = v23;

  [(UIPushBehavior *)self->_rightPush setAngle:3.14159265];
  v25 = [UIPushBehavior alloc];
  v43 = self->_item;
  v26 = [NSArray arrayWithObjects:&v43 count:1];
  v27 = [v25 initWithItems:v26 mode:0];
  upPush = self->_upPush;
  self->_upPush = v27;

  [(UIPushBehavior *)self->_upPush setAngle:1.57079633];
  v29 = [UIPushBehavior alloc];
  v42 = self->_item;
  v30 = [NSArray arrayWithObjects:&v42 count:1];
  v31 = [v29 initWithItems:v30 mode:0];
  downPush = self->_downPush;
  self->_downPush = v31;

  [(UIPushBehavior *)self->_downPush setAngle:4.71238898];
  [(UIDynamicBehavior *)self->_panBehavior addChildBehavior:self->_leftPush];
  [(UIDynamicBehavior *)self->_panBehavior addChildBehavior:self->_rightPush];
  [(UIDynamicBehavior *)self->_panBehavior addChildBehavior:self->_downPush];
  [(UIDynamicBehavior *)self->_panBehavior addChildBehavior:self->_upPush];
  v33 = [UIDynamicAnimator alloc];
  v34 = objc_loadWeakRetained(&self->_mapView);
  v35 = [v33 initWithReferenceView:v34];
  animator = self->_animator;
  self->_animator = v35;

  [(UIDynamicAnimator *)self->_animator addBehavior:self->_panBehavior];
  [(UIDynamicAnimator *)self->_animator setDelegate:self];
  objc_initWeak(&location, self);
  v37 = self->_panBehavior;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1009A6EA0;
  v39[3] = &unk_101661B98;
  objc_copyWeak(&v40, &location);
  [(UIDynamicBehavior *)v37 setAction:v39];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (CarMapNudgerizer)init
{
  v14.receiver = self;
  v14.super_class = CarMapNudgerizer;
  v2 = [(CarMapNudgerizer *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(CarMapNudgerizer *)v2 _userDefaultsCGFloatForKey:@"CarMapNudgerizerMagnitudeHold" defaultValue:0.25];
    v5 = v4;
    [(CarMapNudgerizer *)v3 _userDefaultsCGFloatForKey:@"CarMapNudgerizerMagnitudeImpulse" defaultValue:0.300000012];
    v7 = v6;
    [(CarMapNudgerizer *)v3 _userDefaultsCGFloatForKey:@"CarMapNudgerizerMagnitudeImpulseAcceleration" defaultValue:0.100000001];
    v9 = v8;
    [(CarMapNudgerizer *)v3 _userDefaultsCGFloatForKey:@"CarMapNudgerizerMagnitudeImpulseMax" defaultValue:0.699999988];
    v11 = v10;
    [(CarMapNudgerizer *)v3 _userDefaultsDoubleForKey:@"CarMapNudgerizerImpulseAccelerationTimeout" defaultValue:5.0];
    v3->_panningMetrics.holdTime = 0.25;
    v3->_panningMetrics.holdMagnitude = v5;
    v3->_panningMetrics.impulseMagnitude = v7;
    v3->_panningMetrics.impulseMagnitudeAccelerationFactor = v9;
    v3->_panningMetrics.impulseMagnitudeMax = v11;
    v3->_panningMetrics.impulseAccelerationTimeout = v12;
    v3->_panningMetrics.stopTimer = 0.5;
  }

  return v3;
}

@end