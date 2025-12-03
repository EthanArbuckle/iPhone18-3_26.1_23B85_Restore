@interface AVInteractiveTransitionGestureTracker
- (AVInteractiveTransitionGestureTracker)init;
- (AVTransitionDriverDelegate)transitionDriverDelegate;
- (BOOL)_isWaitingToContinue;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)_filteredUntranslatedLocationInWindow;
- (CGPoint)_untranslatedUnfilteredLocationInFixedCoordinateSpace;
- (CGPoint)anchorLocationInWindow;
- (CGPoint)gestureLocationAfterBoundsChange;
- (CGPoint)lastReportedLocationInWindow;
- (CGPoint)locationInWindow;
- (CGPoint)translationInWindow;
- (CGPoint)velocityInWindow;
- (CGRect)initialCoordinateSpaceBounds;
- (UIPanGestureRecognizer)contentTransitioningViewGestureRecognizer;
- (UIView)view;
- (double)pinchScale;
- (double)pinchVelocity;
- (double)rotation;
- (double)rotationVelocity;
- (id)_locationRecognizer;
- (void)_beginTracking:(int64_t)tracking;
- (void)_cancel;
- (void)_finish;
- (void)_handlePanGesture:(id)gesture;
- (void)_handlePinchGesture:(id)gesture;
- (void)_handleRotationGesture:(id)gesture;
- (void)_reset;
- (void)_resetGesturesIfPossible;
- (void)_setHasContinuedIfNeeded;
- (void)_updateLastNonZeroVelocityDirection;
- (void)addRecognizersToView:(id)view;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setContentTransitioningViewGestureRecognizer:(id)recognizer;
- (void)willMoveToView:(id)view;
@end

@implementation AVInteractiveTransitionGestureTracker

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGPoint)anchorLocationInWindow
{
  x = self->_anchorLocationInWindow.x;
  y = self->_anchorLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastReportedLocationInWindow
{
  x = self->_lastReportedLocationInWindow.x;
  y = self->_lastReportedLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gestureLocationAfterBoundsChange
{
  x = self->_gestureLocationAfterBoundsChange.x;
  y = self->_gestureLocationAfterBoundsChange.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)initialCoordinateSpaceBounds
{
  x = self->_initialCoordinateSpaceBounds.origin.x;
  y = self->_initialCoordinateSpaceBounds.origin.y;
  width = self->_initialCoordinateSpaceBounds.size.width;
  height = self->_initialCoordinateSpaceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVTransitionDriverDelegate)transitionDriverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDriverDelegate);

  return WeakRetained;
}

- (UIPanGestureRecognizer)contentTransitioningViewGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentTransitioningViewGestureRecognizer);

  return WeakRetained;
}

- (void)_updateLastNonZeroVelocityDirection
{
  [(AVInteractiveTransitionGestureTracker *)self velocityInWindow];
  if (v3 != 0.0)
  {
    if (v3 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      [(AVInteractiveTransitionGestureTracker *)self angleOfVelocityInWindow];
      if (v4 < 0.0)
      {
        v4 = -v4;
      }

      v5 = v4 < 80.0;
    }

    [(AVInteractiveTransitionGestureTracker *)self setLastNonZeroVelocityWasDownward:v5];
  }
}

- (void)_setHasContinuedIfNeeded
{
  if ([(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Cannot continue if still waiting.", v4, 2u);
    }
  }

  if (![(AVInteractiveTransitionGestureTracker *)self hasContinued])
  {
    [(AVInteractiveTransitionGestureTracker *)self setHasContinued:1];
    [(AVInteractiveTransitionGestureTracker *)self _resetGesturesIfPossible];
  }
}

- (void)_resetGesturesIfPossible
{
  if (![(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
  {
    [(AVInteractiveTransitionGestureTracker *)self setLastNonZeroVelocityWasDownward:0];
    [(AVInteractiveTransitionGestureTracker *)self locationInWindow];
    [(AVInteractiveTransitionGestureTracker *)self setAnchorLocationInWindow:?];
    rotationGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self rotationGestureRecognizer];
    [rotationGestureRecognizer setRotation:0.0];

    pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
    [pinchGestureRecognizer setScale:1.0];
  }
}

- (void)_reset
{
  if (![(AVInteractiveTransitionGestureTracker *)self isTracking])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Cannot reset when not tracking.", v4, 2u);
    }
  }

  [(AVInteractiveTransitionGestureTracker *)self setPinchToDismissEnabled:0];
  [(AVInteractiveTransitionGestureTracker *)self setPinchToPresentEnabled:0];
  [(AVInteractiveTransitionGestureTracker *)self setPanToDismissEnabled:0];
  [(AVInteractiveTransitionGestureTracker *)self setTransitionInteraction:0];
  [(AVInteractiveTransitionGestureTracker *)self setHasRotated:0];
  [(AVInteractiveTransitionGestureTracker *)self setHasContinued:0];
  [(AVInteractiveTransitionGestureTracker *)self setWaitingForBoundsChange:0];
  [(AVInteractiveTransitionGestureTracker *)self setWaitingForLocationChangeAfterBoundsChange:0];
  [(AVInteractiveTransitionGestureTracker *)self setWaitingForTransition:0];
  [(AVInteractiveTransitionGestureTracker *)self setInitialInterfaceOrientation:0];
  [(AVInteractiveTransitionGestureTracker *)self _resetGesturesIfPossible];
}

- (BOOL)_isWaitingToContinue
{
  _locationRecognizer = [(AVInteractiveTransitionGestureTracker *)self _locationRecognizer];
  v4 = _locationRecognizer;
  if (self)
  {
    v5 = [_locationRecognizer _activeEventOfType:10];
    v6 = v5;
    if (v5)
    {
      [v5 timestamp];
    }

    else
    {
      [v4 lastTouchTimestamp];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if ([(AVInteractiveTransitionGestureTracker *)self isWaitingForBoundsChange])
  {
    view = [(AVInteractiveTransitionGestureTracker *)self view];
    window = [view window];
    windowScene = [window windowScene];
    coordinateSpace = [windowScene coordinateSpace];
    [coordinateSpace bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(AVInteractiveTransitionGestureTracker *)self initialCoordinateSpaceBounds];
    v32.origin.x = v14;
    v32.origin.y = v16;
    v32.size.width = v18;
    v32.size.height = v20;
    if (!CGRectEqualToRect(v31, v32))
    {
      [(AVInteractiveTransitionGestureTracker *)self _untranslatedUnfilteredLocationInFixedCoordinateSpace];
      [(AVInteractiveTransitionGestureTracker *)self setGestureLocationAfterBoundsChange:?];
      [(AVInteractiveTransitionGestureTracker *)self setWaitingForLocationChangeAfterBoundsChange:1];
      [(AVInteractiveTransitionGestureTracker *)self setWaitingForBoundsChange:0];
    }
  }

  if (![(AVInteractiveTransitionGestureTracker *)self isWaitingForBoundsChange])
  {
    if ([(AVInteractiveTransitionGestureTracker *)self isWaitingForLocationChangeAfterBoundsChange])
    {
      [(AVInteractiveTransitionGestureTracker *)self _untranslatedUnfilteredLocationInFixedCoordinateSpace];
      v22 = v21;
      v24 = v23;
      [(AVInteractiveTransitionGestureTracker *)self gestureLocationAfterBoundsChange];
      if (v22 != v26 || v24 != v25)
      {
        [(AVInteractiveTransitionGestureTracker *)self setWaitingForLocationChangeAfterBoundsChange:0];
        [(AVInteractiveTransitionGestureTracker *)self setTimestampOfTouchWithLocationChangeAfterBoundsChange:v8];
      }
    }
  }

  _locationRecognizer2 = [(AVInteractiveTransitionGestureTracker *)self _locationRecognizer];
  state = [_locationRecognizer2 state];

  if (state > 2)
  {
    return 0;
  }

  if ([(AVInteractiveTransitionGestureTracker *)self isWaitingForBoundsChange]|| [(AVInteractiveTransitionGestureTracker *)self isWaitingForTransition]|| [(AVInteractiveTransitionGestureTracker *)self isWaitingForLocationChangeAfterBoundsChange])
  {
    return 1;
  }

  [(AVInteractiveTransitionGestureTracker *)self timestampOfTouchWithLocationChangeAfterBoundsChange];
  return v8 - v30 < 0.0166666667;
}

- (void)_finish
{
  if (![(AVInteractiveTransitionGestureTracker *)self isTracking])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Cannot finish when not tracking.", v5, 2u);
    }
  }

  transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
  [transitionDriverDelegate transitionDriverDidFinishInteraction:self];

  [(AVInteractiveTransitionGestureTracker *)self _reset];
}

- (void)_cancel
{
  if (![(AVInteractiveTransitionGestureTracker *)self isTracking])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Cannot cancel when not tracking.", v5, 2u);
    }
  }

  transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
  [transitionDriverDelegate transitionDriverDidCancelInteraction:self];

  [(AVInteractiveTransitionGestureTracker *)self _reset];
}

- (void)_beginTracking:(int64_t)tracking
{
  [(AVInteractiveTransitionGestureTracker *)self _filteredUntranslatedLocationInWindow];
  if ([(AVInteractiveTransitionGestureTracker *)self isTracking])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Began tracking when already tracking.", buf, 2u);
    }
  }

  [(AVInteractiveTransitionGestureTracker *)self setWaitingForTransition:1];
  view = [(AVInteractiveTransitionGestureTracker *)self view];
  window = [view window];
  windowScene = [window windowScene];

  -[AVInteractiveTransitionGestureTracker setInitialInterfaceOrientation:](self, "setInitialInterfaceOrientation:", [windowScene interfaceOrientation]);
  coordinateSpace = [windowScene coordinateSpace];
  [coordinateSpace bounds];
  [(AVInteractiveTransitionGestureTracker *)self setInitialCoordinateSpaceBounds:?];

  [(AVInteractiveTransitionGestureTracker *)self setTransitionInteraction:tracking];
  [(AVInteractiveTransitionGestureTracker *)self _resetGesturesIfPossible];
  transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
  transitionInteraction = [(AVInteractiveTransitionGestureTracker *)self transitionInteraction];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVInteractiveTransitionGestureTracker__beginTracking___block_invoke;
  v12[3] = &unk_1E720A090;
  v12[4] = self;
  [transitionDriverDelegate transitionDriver:self didBeginTrackingTransitionInteraction:transitionInteraction readyToProceedHandler:v12];
}

void __56__AVInteractiveTransitionGestureTracker__beginTracking___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v18 = [v3 windowScene];

  LODWORD(v3) = ([*(a1 + 32) initialInterfaceOrientation] - 1) < 2;
  v4 = ([v18 interfaceOrientation] - 1) < 2;
  v5 = [v18 coordinateSpace];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v3 != v4)
  {
    [*(a1 + 32) initialCoordinateSpaceBounds];
    v21.origin.x = v14;
    v21.origin.y = v15;
    v21.size.width = v16;
    v21.size.height = v17;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    if (CGRectEqualToRect(v20, v21))
    {
      [*(a1 + 32) setWaitingForBoundsChange:1];
    }
  }

  [*(a1 + 32) setWaitingForTransition:0];
  [*(a1 + 32) _resetGesturesIfPossible];
  [*(a1 + 32) _filteredUntranslatedLocationInWindow];
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(AVInteractiveTransitionGestureTracker *)self isPanToDismissEnabled])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Recognized pan gesture without enabling pan to dismiss.", v8, 2u);
    }
  }

  state = [gestureCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(AVInteractiveTransitionGestureTracker *)self _beginTracking:3];
    }

    else if (state == 2 && ![(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
    {
      [(AVInteractiveTransitionGestureTracker *)self _setHasContinuedIfNeeded];
      [(AVInteractiveTransitionGestureTracker *)self _updateLastNonZeroVelocityDirection];
      transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
      [transitionDriverDelegate transitionDriverDidContinueInteraction:self];
    }
  }

  else
  {
    if (state != 3)
    {
      if (state != 4 && state != 5)
      {
        goto LABEL_20;
      }

LABEL_15:
      [(AVInteractiveTransitionGestureTracker *)self _cancel];
      goto LABEL_20;
    }

    if ([(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
    {
      goto LABEL_15;
    }

    if ([(AVInteractiveTransitionGestureTracker *)self isWaitingForBoundsChange])
    {
      [(AVInteractiveTransitionGestureTracker *)self _updateLastNonZeroVelocityDirection];
    }

    [(AVInteractiveTransitionGestureTracker *)self _finish];
  }

LABEL_20:
}

- (void)_handleRotationGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  v5 = gestureCopy;
  if (state != 1)
  {
    if (state != 2)
    {
      goto LABEL_11;
    }

    if (![(AVInteractiveTransitionGestureTracker *)self hasRotated])
    {
      [(AVInteractiveTransitionGestureTracker *)self setHasRotated:1];
      [gestureCopy setRotation:0.0];
    }

    hasRotated = [(AVInteractiveTransitionGestureTracker *)self hasRotated];
    v5 = gestureCopy;
    if (hasRotated)
    {
      [gestureCopy rotation];
      v5 = gestureCopy;
      if (v7 < 0.0)
      {
        v7 = -v7;
      }

      if (v7 < 0.636619772)
      {
        [(AVInteractiveTransitionGestureTracker *)self _rotation];
        v9 = v8;
        [gestureCopy rotation];
        [(AVInteractiveTransitionGestureTracker *)self _setRotation:v9 + v10];
        v5 = gestureCopy;
      }
    }
  }

  [v5 setRotation:0.0];
LABEL_11:
}

- (void)_handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(AVInteractiveTransitionGestureTracker *)self isPinchToPresentEnabled]&& ![(AVInteractiveTransitionGestureTracker *)self isPinchToDismissEnabled])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Recognized pinch gesture without enabling pinch to present or pinch to dismiss.", buf, 2u);
    }
  }

  isPinchToPresentEnabled = [(AVInteractiveTransitionGestureTracker *)self isPinchToPresentEnabled];
  if (isPinchToPresentEnabled == [(AVInteractiveTransitionGestureTracker *)self isPinchToDismissEnabled])
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Pinch to present and pinch to dismiss cannot be simultaneously enabled.", v29, 2u);
    }
  }

  state = [gestureCopy state];
  if (state > 2)
  {
    if (state == 3)
    {
      if (![(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
      {
        [(AVInteractiveTransitionGestureTracker *)self _finish];
        goto LABEL_33;
      }
    }

    else if (state != 4 && state != 5)
    {
      goto LABEL_33;
    }

    [(AVInteractiveTransitionGestureTracker *)self _cancel];
    goto LABEL_33;
  }

  if (state == 1)
  {
    if ([(AVInteractiveTransitionGestureTracker *)self isPinchToDismissEnabled])
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [(AVInteractiveTransitionGestureTracker *)self _beginTracking:v28];
    [gestureCopy scale];
    [(AVInteractiveTransitionGestureTracker *)self setPreviousPinchScale:?];
  }

  else if (state == 2 && ![(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
  {
    [(AVInteractiveTransitionGestureTracker *)self _setHasContinuedIfNeeded];
    if ([(AVInteractiveTransitionGestureTracker *)self isPinchToPresentEnabled])
    {
      view = [gestureCopy view];
      [view bounds];
      Width = CGRectGetWidth(v31);
      view2 = [gestureCopy view];
      window = [view2 window];
      [window bounds];
      v13 = Width / CGRectGetWidth(v32);

      view3 = [gestureCopy view];
      [view3 bounds];
      Height = CGRectGetHeight(v33);
      view4 = [gestureCopy view];
      window2 = [view4 window];
      [window2 bounds];
      v18 = Height / CGRectGetHeight(v34);

      [(AVInteractiveTransitionGestureTracker *)self previousPinchScale];
      v20 = v19;
      [gestureCopy scale];
      v22 = v21;
      [(AVInteractiveTransitionGestureTracker *)self previousPinchScale];
      v24 = v22 - v23;
      if (v13 >= v18)
      {
        v25 = v13;
      }

      else
      {
        v25 = v18;
      }

      [gestureCopy setScale:v20 + v24 * v25];
    }

    [gestureCopy scale];
    [(AVInteractiveTransitionGestureTracker *)self setPreviousPinchScale:?];
    if (![(AVInteractiveTransitionGestureTracker *)self hasRotated])
    {
      rotationGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self rotationGestureRecognizer];
      [rotationGestureRecognizer setRotation:0.0];
    }

    transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
    [transitionDriverDelegate transitionDriverDidContinueInteraction:self];
  }

LABEL_33:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];

  if (pinchGestureRecognizer == recognizerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_11;
  }

  panGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self panGestureRecognizer];
  v10 = panGestureRecognizer;
  if (panGestureRecognizer == recognizerCopy)
  {
  }

  else
  {
    indirectPanGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self indirectPanGestureRecognizer];

    if (indirectPanGestureRecognizer != recognizerCopy)
    {
      isKindOfClass = 0;
      goto LABEL_11;
    }
  }

  contentTransitioningViewGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
  if (contentTransitioningViewGestureRecognizer == gestureRecognizerCopy)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

LABEL_11:
  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];

  rotationGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self rotationGestureRecognizer];

  if (pinchGestureRecognizer == recognizerCopy)
  {
    v10 = rotationGestureRecognizer == gestureRecognizerCopy;
  }

  else if (rotationGestureRecognizer == recognizerCopy)
  {
    pinchGestureRecognizer2 = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
    v10 = pinchGestureRecognizer2 == gestureRecognizerCopy;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_storeStrong(&self->_activePanGestureRecognizer, begin);
    [(UIPanGestureRecognizer *)self->_activePanGestureRecognizer velocityInView:0];
    v8 = v7;
    v10 = v9;
    [(UIPanGestureRecognizer *)self->_activePanGestureRecognizer translationInView:0];
    v12 = v11;
    v14 = v13;
    activePanGestureRecognizer = self->_activePanGestureRecognizer;
    view = [beginCopy view];
    [(UIPanGestureRecognizer *)activePanGestureRecognizer locationInView:view];
    v18 = v17;
    v20 = v19;

    view2 = [beginCopy view];
    [view2 bounds];
    v36.origin.x = v22 + 16.0;
    v36.origin.y = v23 + 16.0;
    v36.size.width = v24 + -32.0;
    v36.size.height = v25 + -32.0;
    v35.x = v18;
    v35.y = v20;
    if (CGRectContainsPoint(v36, v35) || v10 > 44.0 || v10 > fabs(v8 * 0.125))
    {
    }

    else
    {

      if (v14 <= fabs(v12 * 0.125))
      {
        v33 = 0;
        goto LABEL_17;
      }
    }
  }

  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
  v27 = pinchGestureRecognizer;
  if (pinchGestureRecognizer == beginCopy)
  {
  }

  else
  {
    rotationGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self rotationGestureRecognizer];

    if (rotationGestureRecognizer != beginCopy)
    {
      if (isKindOfClass)
      {
        if (![(AVInteractiveTransitionGestureTracker *)self isTracking])
        {
          transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
          -[AVInteractiveTransitionGestureTracker setPanToDismissEnabled:](self, "setPanToDismissEnabled:", [transitionDriverDelegate transitionDriver:self shouldDriveTransitionInteractionOfType:3]);
        }

        isPanToDismissEnabled = [(AVInteractiveTransitionGestureTracker *)self isPanToDismissEnabled];
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if (![(AVInteractiveTransitionGestureTracker *)self isTracking])
  {
    transitionDriverDelegate2 = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
    -[AVInteractiveTransitionGestureTracker setPinchToDismissEnabled:](self, "setPinchToDismissEnabled:", [transitionDriverDelegate2 transitionDriver:self shouldDriveTransitionInteractionOfType:2]);

    transitionDriverDelegate3 = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
    -[AVInteractiveTransitionGestureTracker setPinchToPresentEnabled:](self, "setPinchToPresentEnabled:", [transitionDriverDelegate3 transitionDriver:self shouldDriveTransitionInteractionOfType:1]);
  }

  if (![(AVInteractiveTransitionGestureTracker *)self isPinchToDismissEnabled])
  {
    isPanToDismissEnabled = [(AVInteractiveTransitionGestureTracker *)self isPinchToPresentEnabled];
LABEL_16:
    v33 = isPanToDismissEnabled;
    goto LABEL_17;
  }

LABEL_14:
  v33 = 1;
LABEL_17:

  return v33;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([touchCopy _isPointerTouch])
  {
    v8 = 0;
  }

  else
  {
    transitionDriverDelegate = [(AVInteractiveTransitionGestureTracker *)self transitionDriverDelegate];
    v8 = [transitionDriverDelegate transitionDriver:self gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
  }

  return v8;
}

- (double)rotationVelocity
{
  if (([(AVInteractiveTransitionGestureTracker *)self transitionInteraction]- 1) > 1)
  {
    return 0.0;
  }

  rotationGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self rotationGestureRecognizer];
  [rotationGestureRecognizer velocity];
  v5 = v4;

  return v5;
}

- (double)rotation
{
  if (([(AVInteractiveTransitionGestureTracker *)self transitionInteraction]- 1) > 1)
  {
    return 0.0;
  }

  [(AVInteractiveTransitionGestureTracker *)self _rotation];
  return result;
}

- (double)pinchVelocity
{
  if (([(AVInteractiveTransitionGestureTracker *)self transitionInteraction]- 1) > 1)
  {
    return 0.0;
  }

  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
  [pinchGestureRecognizer velocity];
  v5 = v4;

  return v5;
}

- (double)pinchScale
{
  if (([(AVInteractiveTransitionGestureTracker *)self transitionInteraction]- 1) > 1)
  {
    return 0.0;
  }

  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
  [pinchGestureRecognizer scale];
  v5 = v4;

  return v5;
}

- (CGPoint)velocityInWindow
{
  if ([(AVInteractiveTransitionGestureTracker *)self transitionInteraction]== 3)
  {
    activePanGestureRecognizer = self->_activePanGestureRecognizer;
    view = [(AVInteractiveTransitionGestureTracker *)self view];
    window = [view window];
    [(UIPanGestureRecognizer *)activePanGestureRecognizer velocityInView:window];
    v16 = v7;
    v17 = v6;

    initialInterfaceOrientation = [(AVInteractiveTransitionGestureTracker *)self initialInterfaceOrientation];
    view2 = [(AVInteractiveTransitionGestureTracker *)self view];
    window2 = [view2 window];
    interfaceOrientation = [window2 interfaceOrientation];

    if ((initialInterfaceOrientation - 2) > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_18B6EC6F0[initialInterfaceOrientation - 2];
    }

    if ((interfaceOrientation - 2) > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_18B6EC708[interfaceOrientation - 2];
    }

    CGAffineTransformMakeRotation(&v18, (v14 + v12) * 1.57079633);
    v13 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, v16), *&v18.a, v17));
  }

  else
  {
    v13 = *MEMORY[0x1E695EFF8];
  }

  v15 = v13.f64[1];
  result.x = v13.f64[0];
  result.y = v15;
  return result;
}

- (CGPoint)translationInWindow
{
  [(AVInteractiveTransitionGestureTracker *)self locationInWindow];
  v4 = v3;
  v6 = v5;
  [(AVInteractiveTransitionGestureTracker *)self anchorLocationInWindow];
  v8 = v4 - v7;
  v10 = v6 - v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)locationInWindow
{
  [(AVInteractiveTransitionGestureTracker *)self _filteredUntranslatedLocationInWindow];
  v4 = v3;
  v6 = v5;
  initialInterfaceOrientation = [(AVInteractiveTransitionGestureTracker *)self initialInterfaceOrientation];
  view = [(AVInteractiveTransitionGestureTracker *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  view2 = [(AVInteractiveTransitionGestureTracker *)self view];
  window2 = [view2 window];
  [window2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ((initialInterfaceOrientation - 2) > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_18B6EC6F0[initialInterfaceOrientation - 2];
  }

  if ((interfaceOrientation - 2) > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_18B6EC708[interfaceOrientation - 2];
  }

  v23 = v22 + v21;
  if (v23 == 2)
  {
    v29.origin.x = v14;
    v29.origin.y = v16;
    v29.size.width = v18;
    v29.size.height = v20;
    v4 = CGRectGetWidth(v29) - v4;
    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    v24 = CGRectGetHeight(v30) - v6;
LABEL_14:
    v6 = v4;
    goto LABEL_15;
  }

  if (v23 == 1)
  {
    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    v6 = CGRectGetHeight(v28) - v6;
    v24 = v4;
    goto LABEL_15;
  }

  if (v23 != -1)
  {
    v24 = v6;
    goto LABEL_14;
  }

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v24 = CGRectGetWidth(v27) - v4;
LABEL_15:
  v25 = v6;
  result.y = v24;
  result.x = v25;
  return result;
}

- (CGPoint)_filteredUntranslatedLocationInWindow
{
  _locationRecognizer = [(AVInteractiveTransitionGestureTracker *)self _locationRecognizer];
  view = [(AVInteractiveTransitionGestureTracker *)self view];
  window = [view window];
  [_locationRecognizer locationInView:window];
  v7 = v6;
  v9 = v8;

  if (![(AVInteractiveTransitionGestureTracker *)self _isWaitingToContinue])
  {
    [(AVInteractiveTransitionGestureTracker *)self setLastReportedLocationInWindow:v7, v9];
  }

  [(AVInteractiveTransitionGestureTracker *)self lastReportedLocationInWindow];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_untranslatedUnfilteredLocationInFixedCoordinateSpace
{
  view = [(AVInteractiveTransitionGestureTracker *)self view];
  window = [view window];
  windowScene = [window windowScene];
  coordinateSpace = [windowScene coordinateSpace];

  _locationRecognizer = [(AVInteractiveTransitionGestureTracker *)self _locationRecognizer];
  [_locationRecognizer locationInView:0];
  v9 = v8;
  v11 = v10;

  view2 = [(AVInteractiveTransitionGestureTracker *)self view];
  window2 = [view2 window];
  screen = [window2 screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  [fixedCoordinateSpace convertPoint:coordinateSpace fromCoordinateSpace:{v9, v11}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)_locationRecognizer
{
  pinchGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self pinchGestureRecognizer];
  if ([(AVInteractiveTransitionGestureTracker *)self isPanToDismissEnabled])
  {
    v4 = self->_activePanGestureRecognizer;

    pinchGestureRecognizer = v4;
  }

  return pinchGestureRecognizer;
}

- (void)willMoveToView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  recognizers = [(AVInteractiveTransitionGestureTracker *)self recognizers];
  v6 = [recognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(recognizers);
        }

        [viewCopy removeGestureRecognizer:*(*(&v13 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [recognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  contentTransitioningViewGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
  view = [contentTransitioningViewGestureRecognizer view];
  contentTransitioningViewGestureRecognizer2 = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
  [view removeGestureRecognizer:contentTransitioningViewGestureRecognizer2];
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(AVInteractiveTransitionGestureTracker *)self setView:viewCopy];
  [(AVInteractiveTransitionGestureTracker *)self addRecognizersToView:viewCopy];
}

- (void)setContentTransitioningViewGestureRecognizer:(id)recognizer
{
  obj = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_contentTransitioningViewGestureRecognizer);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_contentTransitioningViewGestureRecognizer);
    view = [v5 view];
    v7 = objc_loadWeakRetained(&self->_contentTransitioningViewGestureRecognizer);
    [view removeGestureRecognizer:v7];

    objc_storeWeak(&self->_contentTransitioningViewGestureRecognizer, obj);
    view2 = [(AVInteractiveTransitionGestureTracker *)self view];
    v9 = objc_loadWeakRetained(&self->_contentTransitioningViewGestureRecognizer);
    [view2 addGestureRecognizer:v9];
  }
}

- (void)addRecognizersToView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recognizers = [(AVInteractiveTransitionGestureTracker *)self recognizers];
  v6 = [recognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(recognizers);
        }

        [viewCopy addGestureRecognizer:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [recognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  contentTransitioningViewGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];

  if (contentTransitioningViewGestureRecognizer)
  {
    contentTransitioningViewGestureRecognizer2 = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
    [viewCopy addGestureRecognizer:contentTransitioningViewGestureRecognizer2];
  }
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recognizers = [(AVInteractiveTransitionGestureTracker *)self recognizers];
  v4 = [recognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(recognizers);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        view = [v8 view];
        [view removeGestureRecognizer:v8];
      }

      v5 = [recognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  contentTransitioningViewGestureRecognizer = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
  view2 = [contentTransitioningViewGestureRecognizer view];
  contentTransitioningViewGestureRecognizer2 = [(AVInteractiveTransitionGestureTracker *)self contentTransitioningViewGestureRecognizer];
  [view2 addGestureRecognizer:contentTransitioningViewGestureRecognizer2];

  v13.receiver = self;
  v13.super_class = AVInteractiveTransitionGestureTracker;
  [(AVInteractiveTransitionGestureTracker *)&v13 dealloc];
}

- (AVInteractiveTransitionGestureTracker)init
{
  v19 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVInteractiveTransitionGestureTracker;
  v2 = [(AVInteractiveTransitionGestureTracker *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v2 action:sel__handlePanGesture_];
    panGestureRecognizer = v2->_panGestureRecognizer;
    v2->_panGestureRecognizer = v3;

    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setDelegate:v2];
    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setAllowedTouchTypes:&unk_1EFF12DB8];
    v5 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v2 action:sel__handlePinchGesture_];
    pinchGestureRecognizer = v2->_pinchGestureRecognizer;
    v2->_pinchGestureRecognizer = v5;

    [(UIPinchGestureRecognizer *)v2->_pinchGestureRecognizer setDelegate:v2];
    [(UIPinchGestureRecognizer *)v2->_pinchGestureRecognizer _setEndsOnSingleTouch:1];
    [(UIPinchGestureRecognizer *)v2->_pinchGestureRecognizer _setRequiresSystemGesturesToFail:1];
    v7 = [objc_alloc(MEMORY[0x1E69DCE68]) initWithTarget:v2 action:sel__handleRotationGesture_];
    rotationGestureRecognizer = v2->_rotationGestureRecognizer;
    v2->_rotationGestureRecognizer = v7;

    [(UIRotationGestureRecognizer *)v2->_rotationGestureRecognizer setDelegate:v2];
    v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v2 action:sel__handlePanGesture_];
    indirectPanGestureRecognizer = v2->_indirectPanGestureRecognizer;
    v2->_indirectPanGestureRecognizer = v9;

    [(UIPanGestureRecognizer *)v2->_indirectPanGestureRecognizer setDelegate:v2];
    [(UIPanGestureRecognizer *)v2->_indirectPanGestureRecognizer setMaximumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)v2->_indirectPanGestureRecognizer setMinimumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)v2->_indirectPanGestureRecognizer setAllowedTouchTypes:&unk_1EFF12DD0];
    [(UIPanGestureRecognizer *)v2->_indirectPanGestureRecognizer setAllowedScrollTypesMask:2];
    v11 = v2->_indirectPanGestureRecognizer;
    v16 = v2->_panGestureRecognizer;
    v17 = *&v2->_pinchGestureRecognizer;
    v18 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:4];
    recognizers = v2->_recognizers;
    v2->_recognizers = v12;

    [(AVInteractiveTransitionGestureTracker *)v2 setEnabled:1];
  }

  return v2;
}

@end