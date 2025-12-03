@interface PKTextInputDrawingGestureRecognizer
+ (id)_systemGestureClassesToAvoid;
- (BOOL)_gestureStartedInsideTargetElement;
- (BOOL)_hasMovedPastMinimumPanThresholdForTouch:(id)touch;
- (BOOL)_hasMovedPastScrollThresholdForTouch:(id)touch;
- (BOOL)_isValidLongPress;
- (BOOL)_isValidLongPressOverDuration:(double)duration;
- (BOOL)_isWithinLongPressDistanceForTouch:(id)touch;
- (BOOL)hasMovedPastTapUseTimestampFromTouch:(BOOL)touch;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (CGPoint)locationInView:(id)view;
- (NSString)description;
- (PKDrawingGestureTarget)drawingTarget;
- (PKTextInputDrawingGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_distanceFromStartPositionForTouch:(id)touch;
- (double)timeIntervalSinceStartOfGesture;
- (double)timeIntervalSinceTouchesBeganForTouch:(id)touch;
- (int64_t)_panDirectionForTouch:(id)touch;
- (void)_acceptStrokeTimeoutTriggered;
- (void)_beginDrawingIfNeeded;
- (void)_cancelLongPressTimerBlocks;
- (void)_cancelNotMovingCancellationBlock;
- (void)_cancelOrFailGesture;
- (void)_cancelScheduledStrokeAcceptanceBlock;
- (void)_drawingBegan;
- (void)_drawingEnded;
- (void)_drawingMoved:(id)moved;
- (void)_enumerateTouchesForUpdateWithEvent:(id)event block:(id)block;
- (void)_evaluateCancelIfNotMoving;
- (void)_evaluateMovingToBeganStateUseTimestampFromTouch:(BOOL)touch;
- (void)_longPressSuccessTimerFired;
- (void)_longPressTentativeTimerFired;
- (void)_replayDrawingBegan:(id *)began;
- (void)_replayDrawingBegan:(id *)began coordinateSpace:(id)space activeInputProperties:(unint64_t)properties inputType:(int64_t)type;
- (void)_replayDrawingCancelled;
- (void)_replayDrawingEnded;
- (void)_replayDrawingMoved:(id *)moved;
- (void)_replayDrawingMoved:(id *)moved coordinateSpace:(id)space;
- (void)_scheduleLongPressTimerBlocks;
- (void)_setDrawingTargetIsDrawing:(BOOL)drawing;
- (void)_setLongPressState:(int64_t)state;
- (void)_setPanState:(int64_t)state;
- (void)_setStrokeAcceptanceState:(int64_t)state;
- (void)_updateLongPressValidityForTouch:(id)touch;
- (void)_updatePanGestureStateForTouch:(id)touch;
- (void)_updatePanStateForCandidateElements:(id)elements;
- (void)_updateStrokeAcceptanceStateUseTimestampFromTouch:(BOOL)touch;
- (void)cancel;
- (void)cancelDrawing;
- (void)finishedElementFindingWithElement:(id)element candidateElements:(id)elements;
- (void)reportDebugStateDescription:(id)description;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesEstimatedPropertiesUpdated:(id)updated;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKTextInputDrawingGestureRecognizer

- (PKTextInputDrawingGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PKTextInputDrawingGestureRecognizer;
  v4 = [(PKTextInputDrawingGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PKTextInputDrawingGestureRecognizer *)v4 setDelaysTouchesBegan:1];
    [(PKTextInputDrawingGestureRecognizer *)v5 setCancelsTouchesInView:1];
    [(PKTextInputDrawingGestureRecognizer *)v5 setRequiresExclusiveTouchType:1];
    [(PKTextInputDrawingGestureRecognizer *)v5 setAllowedTouchTypes:&unk_1F47C1EC8];
  }

  return v5;
}

- (void)setState:(int64_t)state
{
  v24 = *MEMORY[0x1E69E9840];
  state = [(PKTextInputDrawingGestureRecognizer *)self state];
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
    v8 = _PKNameForGestureState(state);
    v9 = _PKNameForGestureState(state);
    *buf = 134218498;
    v19 = drawingTouch;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "Gesture touch %p changing state: %@ -> %@", buf, 0x20u);
  }

  v17.receiver = self;
  v17.super_class = PKTextInputDrawingGestureRecognizer;
  [(PKTextInputDrawingGestureRecognizer *)&v17 setState:state];
  if (state != state)
  {
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    gestureEnvironmentResetTimeoutBlock = self->_gestureEnvironmentResetTimeoutBlock;
    if (gestureEnvironmentResetTimeoutBlock)
    {
      dispatch_block_cancel(gestureEnvironmentResetTimeoutBlock);
      v11 = self->_gestureEnvironmentResetTimeoutBlock;
      self->_gestureEnvironmentResetTimeoutBlock = 0;
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__PKTextInputDrawingGestureRecognizer_setState___block_invoke;
      block[3] = &unk_1E82D69B8;
      objc_copyWeak(&v16, buf);
      v12 = dispatch_block_create(0, block);
      v13 = self->_gestureEnvironmentResetTimeoutBlock;
      self->_gestureEnvironmentResetTimeoutBlock = v12;

      v14 = dispatch_time(0, 500000000);
      dispatch_after(v14, MEMORY[0x1E69E96A0], self->_gestureEnvironmentResetTimeoutBlock);
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }
}

void __48__PKTextInputDrawingGestureRecognizer_setState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 5 || objc_msgSend(v2, "state") == 3)
    {
      if ([v2 state] == 3)
      {
        v3 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          *v5 = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Stuck gesture environment after moving to Ended detected", v5, 2u);
        }
      }

      [v2 _cancelOrFailGesture];
    }

    v4 = v2[44];
    v2[44] = 0;
  }
}

- (void)finishedElementFindingWithElement:(id)element candidateElements:(id)elements
{
  v19 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  elementsCopy = elements;
  v8 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
    v10 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
    v11 = 134218754;
    v12 = drawingTouch;
    v13 = 2048;
    v14 = elementCopy;
    v15 = 2048;
    v16 = elementsCopy;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Gesture touch %p finishedElementFindingWithElement: %p, candidateElements: %p state: %@", &v11, 0x2Au);
  }

  if (self->_waitingForTargetElementSearch)
  {
    [(PKTextInputDrawingGestureRecognizer *)self setTargetElement:elementCopy];
    [(PKTextInputDrawingGestureRecognizer *)self _updatePanStateForCandidateElements:elementsCopy];
    self->_waitingForTargetElementSearch = 0;
    [(PKTextInputDrawingGestureRecognizer *)self _evaluateMovingToBeganStateUseTimestampFromTouch:0];
    [(PKTextInputDrawingGestureRecognizer *)self _updateStrokeAcceptanceStateUseTimestampFromTouch:0];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (CGPoint)locationInView:(id)view
{
  if (view && self->_drawingTouch)
  {
    drawingTouch = self->_drawingTouch;

    [(UITouch *)drawingTouch PK_locationInView:?];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = PKTextInputDrawingGestureRecognizer;
    [(PKTextInputDrawingGestureRecognizer *)&v8 locationInView:?];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (double)_distanceFromStartPositionForTouch:(id)touch
{
  x = self->_drawTouchStartPoint.x;
  y = self->_drawTouchStartPoint.y;
  [touch locationInView:0];
  return sqrt((y - v6) * (y - v6) + (x - v5) * (x - v5));
}

- (double)timeIntervalSinceStartOfGesture
{
  if (!self->_drawingTouch)
  {
    return 0.0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return v3 - self->_drawStartTime;
}

- (double)timeIntervalSinceTouchesBeganForTouch:(id)touch
{
  touchCopy = touch;
  v5 = touchCopy;
  if (touchCopy)
  {
    if (self->_drawingTouch)
    {
      [touchCopy timestamp];
      v7 = v6 - self->_touchesBeganTimestamp;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceStartOfGesture];
    v7 = v8;
  }

  return v7;
}

- (BOOL)_gestureStartedInsideTargetElement
{
  targetElement = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
  coordinateSpace = [(PKTextInputElement *)targetElement coordinateSpace];

  if (!coordinateSpace)
  {
    return 0;
  }

  targetElement2 = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
  frame = [(PKTextInputElement *)targetElement2 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  targetElement3 = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
  coordinateSpace2 = [(PKTextInputElement *)targetElement3 coordinateSpace];
  view = [(PKTextInputDrawingGestureRecognizer *)self view];
  window = [view window];
  v17 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace2, window, frame, v8, v10, v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  x = self->_drawTouchStartPoint.x;
  y = self->_drawTouchStartPoint.y;
  v26 = v17;
  v27 = v19;
  v28 = v21;
  v29 = v23;

  return CGRectContainsPoint(*&v26, *&x);
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PKTextInputDrawingGestureRecognizer;
  v3 = [(PKTextInputDrawingGestureRecognizer *)&v7 description];
  v4 = [PKTextInputDebugStateIntrospector debugStateLineDescriptionForIntrospectable:self];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (BOOL)hasMovedPastTapUseTimestampFromTouch:(BOOL)touch
{
  v5 = +[PKTextInputSettings sharedSettings];
  [v5 drawingGestureTapDetectionDistanceThreshold];
  v7 = v6;

  v8 = +[PKTextInputSettings sharedSettings];
  [v8 drawingGestureTapDetectionTimeInterval];
  v10 = v9;

  drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
  [(PKTextInputDrawingGestureRecognizer *)self _distanceFromStartPositionForTouch:drawingTouch];
  v13 = v12;

  if ([(PKTextInputDrawingGestureRecognizer *)self _gestureStartedInsideTargetElement])
  {
    v14 = v10 + -v10 / (v7 * v7) * (v13 * v13);
    if (touch)
    {
      drawingTouch2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceTouchesBeganForTouch:drawingTouch2];
      v17 = v16;
    }

    else
    {
      [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceTouchesBeganForTouch:0];
      v17 = v19;
    }

    v18 = v17 <= v14;
  }

  else
  {
    v18 = v13 <= v7;
  }

  return !v18;
}

- (void)_enumerateTouchesForUpdateWithEvent:(id)event block:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v7 = [event coalescedTouchesForTouch:self->_drawingTouch];
    if ([v7 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * v12++));
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    else
    {
      (blockCopy)[2](blockCopy, self->_drawingTouch);
    }
  }
}

- (void)_setLongPressState:(int64_t)state
{
  if (self->_longPressState != state)
  {
    self->_longPressState = state;
    delegate = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    [delegate drawingGestureRecognizerLongPressStateDidChange:self];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (BOOL)_isValidLongPress
{
  if (([(PKTextInputDrawingGestureRecognizer *)self longPressState]- 1) > 1)
  {
    return 0;
  }

  v3 = +[PKTextInputSettings sharedSettings];
  [v3 drawingGestureLongPressDetectionTimeInterval];
  v4 = [(PKTextInputDrawingGestureRecognizer *)self _isValidLongPressOverDuration:?];

  return v4;
}

- (BOOL)_isWithinLongPressDistanceForTouch:(id)touch
{
  [(PKTextInputDrawingGestureRecognizer *)self _distanceFromStartPositionForTouch:touch];
  v4 = v3;
  v5 = +[PKTextInputSettings sharedSettings];
  [v5 drawingGestureLongPressMaxDistance];
  v7 = v6;

  return v4 <= v7;
}

- (BOOL)_isValidLongPressOverDuration:(double)duration
{
  drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
  v6 = [(PKTextInputDrawingGestureRecognizer *)self _isWithinLongPressDistanceForTouch:drawingTouch];

  [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceStartOfGesture];
  return v7 > duration && v6;
}

- (void)_scheduleLongPressTimerBlocks
{
  [(PKTextInputDrawingGestureRecognizer *)self _cancelLongPressTimerBlocks];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKTextInputDrawingGestureRecognizer__scheduleLongPressTimerBlocks__block_invoke;
  block[3] = &unk_1E82D69B8;
  objc_copyWeak(&v20, &location);
  v3 = dispatch_block_create(0, block);
  longPressTentativeBlock = self->_longPressTentativeBlock;
  self->_longPressTentativeBlock = v3;

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKTextInputDrawingGestureRecognizer__scheduleLongPressTimerBlocks__block_invoke_2;
  v17[3] = &unk_1E82D69B8;
  objc_copyWeak(&v18, &location);
  v5 = dispatch_block_create(0, v17);
  longPressSuccessBlock = self->_longPressSuccessBlock;
  self->_longPressSuccessBlock = v5;

  v7 = +[PKTextInputSettings sharedSettings];
  [v7 drawingGestureTapDetectionTimeInterval];
  v9 = v8;

  v10 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_after(v10, MEMORY[0x1E69E96A0], self->_longPressTentativeBlock);
  v11 = +[PKTextInputSettings sharedSettings];
  [v11 drawingGestureLongPressDetectionTimeInterval];
  v13 = v12;

  v14 = dispatch_time(0, (v13 * 1000000000.0));
  v15 = self->_longPressSuccessBlock;
  v16 = MEMORY[0x1E69E96A0];
  dispatch_after(v14, MEMORY[0x1E69E96A0], v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __68__PKTextInputDrawingGestureRecognizer__scheduleLongPressTimerBlocks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _longPressTentativeTimerFired];
}

void __68__PKTextInputDrawingGestureRecognizer__scheduleLongPressTimerBlocks__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _longPressSuccessTimerFired];
}

- (void)_longPressTentativeTimerFired
{
  longPressTentativeBlock = self->_longPressTentativeBlock;
  self->_longPressTentativeBlock = 0;

  v4 = +[PKTextInputSettings sharedSettings];
  [v4 drawingGestureTapDetectionTimeInterval];
  v6 = v5;

  if ([(PKTextInputDrawingGestureRecognizer *)self state]>= 1 && [(PKTextInputDrawingGestureRecognizer *)self state]<= 2 && [(PKTextInputDrawingGestureRecognizer *)self _isValidLongPressOverDuration:v6])
  {

    [(PKTextInputDrawingGestureRecognizer *)self _setLongPressState:1];
  }
}

- (void)_longPressSuccessTimerFired
{
  longPressSuccessBlock = self->_longPressSuccessBlock;
  self->_longPressSuccessBlock = 0;

  if ([(PKTextInputDrawingGestureRecognizer *)self state]>= 1 && [(PKTextInputDrawingGestureRecognizer *)self state]<= 2 && [(PKTextInputDrawingGestureRecognizer *)self _isValidLongPress]&& [(PKTextInputDrawingGestureRecognizer *)self longPressState]== 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(PKTextInputDrawingGestureRecognizer *)self _setLongPressState:v4];
}

- (void)_updateLongPressValidityForTouch:(id)touch
{
  touchCopy = touch;
  if (self->_longPressSuccessBlock)
  {
    v6 = touchCopy;
    v5 = [(PKTextInputDrawingGestureRecognizer *)self _isWithinLongPressDistanceForTouch:touchCopy];
    touchCopy = v6;
    if (!v5)
    {
      [(PKTextInputDrawingGestureRecognizer *)self _cancelLongPressTimerBlocks];
      [(PKTextInputDrawingGestureRecognizer *)self _setLongPressState:3];
      touchCopy = v6;
    }
  }
}

- (void)_cancelLongPressTimerBlocks
{
  longPressTentativeBlock = self->_longPressTentativeBlock;
  if (longPressTentativeBlock)
  {
    dispatch_block_cancel(longPressTentativeBlock);
    v4 = self->_longPressTentativeBlock;
    self->_longPressTentativeBlock = 0;
  }

  longPressSuccessBlock = self->_longPressSuccessBlock;
  if (longPressSuccessBlock)
  {
    dispatch_block_cancel(longPressSuccessBlock);
    v6 = self->_longPressSuccessBlock;
    self->_longPressSuccessBlock = 0;
  }
}

- (void)_setPanState:(int64_t)state
{
  if (self->_panState != state)
  {
    self->_panState = state;
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (BOOL)_hasMovedPastMinimumPanThresholdForTouch:(id)touch
{
  [(PKTextInputDrawingGestureRecognizer *)self _distanceFromStartPositionForTouch:touch];
  v4 = v3;
  v5 = +[PKTextInputSettings sharedSettings];
  [v5 drawingGestureMinimumPanDistanceThreshold];
  v7 = v6;

  return v4 > v7;
}

- (BOOL)_hasMovedPastScrollThresholdForTouch:(id)touch
{
  touchCopy = touch;
  targetElement = [(PKTextInputDrawingGestureRecognizer *)self targetElement];

  if (targetElement)
  {
    [(PKTextInputDrawingGestureRecognizer *)self _distanceFromStartPositionForTouch:touchCopy];
    v7 = v6;
    v8 = +[PKTextInputSettings sharedSettings];
    [v8 drawingGestureMinimumScrollDistanceThreshold];
    v10 = v9;

    v11 = v7 > v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updatePanGestureStateForTouch:(id)touch
{
  touchCopy = touch;
  if (![(PKTextInputDrawingGestureRecognizer *)self panState])
  {
    if (![(PKTextInputDrawingGestureRecognizer *)self _hasMovedPastMinimumPanThresholdForTouch:touchCopy])
    {
      [(PKTextInputDrawingGestureRecognizer *)self _setPanDirection:0];
      goto LABEL_12;
    }

    [(PKTextInputDrawingGestureRecognizer *)self _setPanDirection:[(PKTextInputDrawingGestureRecognizer *)self _panDirectionForTouch:touchCopy]];
    if ([(PKTextInputDrawingGestureRecognizer *)self panDirection]== 1 || [(PKTextInputDrawingGestureRecognizer *)self panDirection]== 3)
    {
      selfCopy2 = self;
      v6 = 1;
LABEL_10:
      [(PKTextInputDrawingGestureRecognizer *)selfCopy2 _setPanState:v6];
      goto LABEL_12;
    }

LABEL_9:
    selfCopy2 = self;
    v6 = 2;
    goto LABEL_10;
  }

  if ([(PKTextInputDrawingGestureRecognizer *)self panState]== 1)
  {
    v4 = [(PKTextInputDrawingGestureRecognizer *)self _panDirectionForTouch:touchCopy];
    if ([(PKTextInputDrawingGestureRecognizer *)self panDirection]!= v4)
    {
      [(PKTextInputDrawingGestureRecognizer *)self _setPanDirection:0];
      goto LABEL_9;
    }
  }

LABEL_12:
  if ([(PKTextInputDrawingGestureRecognizer *)self state]!= 4 && [(PKTextInputDrawingGestureRecognizer *)self panState]== 1 && [(PKTextInputDrawingGestureRecognizer *)self _hasMovedPastScrollThresholdForTouch:touchCopy])
  {
    [(PKTextInputDrawingGestureRecognizer *)self cancel];
  }
}

- (int64_t)_panDirectionForTouch:(id)touch
{
  x = self->_drawTouchStartPoint.x;
  y = self->_drawTouchStartPoint.y;
  [touch locationInView:0];
  v7 = (atan2(v6 - y, v5 - x) * 57.2957795 + 90.0 + 45.0);
  v8 = fmod(v7, 360.0);
  if (v7 <= 0x168)
  {
    v8 = v7;
  }

  if (v8 < 0.0)
  {
    v8 = v8 + 360.0;
  }

  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return (v8 / 90.0) + 1;
}

- (void)_updatePanStateForCandidateElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  if ([elementsCopy count] < 2)
  {
    goto LABEL_19;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
LABEL_18:

    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      referenceView = [(PKTextInputElement *)*(*(&v15 + 1) + 8 * i) referenceView];
      if (!referenceView)
      {
        v12 = v8;
        goto LABEL_17;
      }

      v12 = referenceView;
      pK_enclosingScrollableScrollView = [referenceView PK_enclosingScrollableScrollView];
      v14 = pK_enclosingScrollableScrollView;
      if (v8)
      {
        if (v8 != pK_enclosingScrollableScrollView)
        {

LABEL_17:
          goto LABEL_18;
        }
      }

      else
      {
        v8 = pK_enclosingScrollableScrollView;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (!v8)
  {
LABEL_19:
    [(PKTextInputDrawingGestureRecognizer *)self _setPanDirection:0, v15];
    [(PKTextInputDrawingGestureRecognizer *)self _setPanState:2];
    v8 = 0;
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v33 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  if (!self->_isReplaying)
  {
    if (self->_drawingTouch)
    {
      anyObject = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(anyObject, OS_LOG_TYPE_ERROR))
      {
        drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
        v27 = 134217984;
        v28 = drawingTouch;
        _os_log_error_impl(&dword_1C7CCA000, anyObject, OS_LOG_TYPE_ERROR, "Gesture touch %p touchesBegan called multiple times", &v27, 0xCu);
      }

      goto LABEL_20;
    }

    v9 = [beganCopy objectsPassingTest:&__block_literal_global_95];
    anyObject = [v9 anyObject];

    if (!anyObject)
    {
LABEL_20:

      goto LABEL_21;
    }

    [anyObject timestamp];
    self->_touchesBeganTimestamp = v10;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_drawStartTime = v11;
    objc_storeStrong(&self->_drawingTouch, anyObject);
    self->_activeInputProperties = [eventCopy PK_activeInputPropertiesForTouch:anyObject];
    [(UITouch *)self->_drawingTouch locationInView:0];
    self->_drawTouchStartPoint.x = v12;
    self->_drawTouchStartPoint.y = v13;
    delegate = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    self->_requiresTargetElementToBegin = [delegate drawingGestureRecognizerRequiresTargetElementToBegin:self];

    delegate2 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    self->_requiresPastTapToBegin = [delegate2 drawingGestureRecognizerRequiresPastTapToBegin:self];

    [(PKTextInputDrawingGestureRecognizer *)self setTargetElement:0];
    self->_waitingForTargetElementSearch = self->_requiresTargetElementToBegin;
    if ([(PKTextInputDrawingGestureRecognizer *)self state]|| ([(PKTextInputDrawingGestureRecognizer *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      v16 = 1;
    }

    else
    {
      delegate3 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
      v24 = [delegate3 drawingGestureRecognizer:self shouldBeginDrawingWithTouches:beganCopy event:eventCopy];

      if (!v24)
      {
        v16 = 0;
        v17 = 0;
        goto LABEL_10;
      }

      delegate4 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
      v16 = [delegate4 drawingGestureRecognizerLongPressShouldBegin:self];
    }

    v17 = 1;
LABEL_10:
    v18 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      if (v17)
      {
        v20 = @"Y";
      }

      else
      {
        v20 = @"N";
      }

      v21 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
      v27 = 134218498;
      v28 = drawingTouch2;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Gesture touch %p touchesBegan, canBeginDrawing: %@, state: %@.", &v27, 0x20u);
    }

    if (v17)
    {
      [(PKTextInputDrawingGestureRecognizer *)self _evaluateMovingToBeganStateUseTimestampFromTouch:1];
      if (v16)
      {
        [(PKTextInputDrawingGestureRecognizer *)self _scheduleLongPressTimerBlocks];
      }
    }

    else
    {
      [(PKTextInputDrawingGestureRecognizer *)self _cancelOrFailGesture];
    }

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    goto LABEL_20;
  }

LABEL_21:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  if ([moved containsObject:self->_drawingTouch])
  {
    if (!self->_isReplaying)
    {
      [(PKTextInputDrawingGestureRecognizer *)self _evaluateMovingToBeganStateUseTimestampFromTouch:1];
      [(PKTextInputDrawingGestureRecognizer *)self _drawingMoved:eventCopy];
      [(PKTextInputDrawingGestureRecognizer *)self _updateStrokeAcceptanceStateUseTimestampFromTouch:1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__PKTextInputDrawingGestureRecognizer_touchesMoved_withEvent___block_invoke;
      v8[3] = &unk_1E82DCA60;
      v8[4] = self;
      [(PKTextInputDrawingGestureRecognizer *)self _enumerateTouchesForUpdateWithEvent:eventCopy block:v8];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__PKTextInputDrawingGestureRecognizer_touchesMoved_withEvent___block_invoke_2;
      v7[3] = &unk_1E82DCA60;
      v7[4] = self;
      [(PKTextInputDrawingGestureRecognizer *)self _enumerateTouchesForUpdateWithEvent:eventCopy block:v7];
      if (([(PKTextInputDrawingGestureRecognizer *)self state]== 1 || [(PKTextInputDrawingGestureRecognizer *)self state]== 2) && [(PKTextInputDrawingGestureRecognizer *)self strokeAcceptanceState]== 1)
      {
        [(PKTextInputDrawingGestureRecognizer *)self _cancelScheduledStrokeAcceptanceBlock];
        if ([(PKTextInputDrawingGestureRecognizer *)self state]== 1)
        {
          [(PKTextInputDrawingGestureRecognizer *)self setState:2];
        }
      }
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_isReplaying)
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      v7 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
      v8 = 134218242;
      v9 = drawingTouch;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Gesture touch %p touchesCancelled, state: %@. Cancelling gesture.", &v8, 0x16u);
    }

    [(PKTextInputDrawingGestureRecognizer *)self _cancelOrFailGesture];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  eventCopy = event;
  if (self->_isReplaying)
  {
    goto LABEL_14;
  }

  if (![endedCopy containsObject:self->_drawingTouch])
  {
    v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      v16 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
      v18 = 134218242;
      v19 = drawingTouch;
      v20 = 2112;
      v21 = v16;
      v17 = "Gesture touch %p touchesEnded, but touches do not contain the original drawing touch, state: %@. Cancelling gesture.";
LABEL_12:
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, v17, &v18, 0x16u);
    }

LABEL_13:

    [(PKTextInputDrawingGestureRecognizer *)self _cancelOrFailGesture];
    goto LABEL_14;
  }

  delegate = [(PKTextInputDrawingGestureRecognizer *)self delegate];

  if (delegate)
  {
    delegate2 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    v10 = [delegate2 drawingGestureRecognizer:self shouldFinishGestureWithTouch:self->_drawingTouch];

    if ((v10 & 1) == 0)
    {
      v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
        v16 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
        v18 = 134218242;
        v19 = drawingTouch;
        v20 = 2112;
        v21 = v16;
        v17 = "Gesture touch %p touchesEnded, but delegate.shouldFinishGestureWithTouch: N, state: %@. Cancelling gesture.";
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  delegate3 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    [delegate4 drawingGestureRecognizer:self touchesEndedWithDrawingTouch:self->_drawingTouch];
  }

  [(PKTextInputDrawingGestureRecognizer *)self _endDrawing];
LABEL_14:
}

- (void)touchesEstimatedPropertiesUpdated:(id)updated
{
  updatedCopy = updated;
  drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingEstimatedPropertiesUpdated:updatedCopy];
}

- (void)_beginDrawingIfNeeded
{
  if ((![(PKTextInputDrawingGestureRecognizer *)self state]|| [(PKTextInputDrawingGestureRecognizer *)self state]== 1 || [(PKTextInputDrawingGestureRecognizer *)self state]== 2) && ![(PKTextInputDrawingGestureRecognizer *)self drawingTargetIsDrawing])
  {

    [(PKTextInputDrawingGestureRecognizer *)self _drawingBegan];
  }
}

- (void)_evaluateMovingToBeganStateUseTimestampFromTouch:(BOOL)touch
{
  touchCopy = touch;
  v46 = *MEMORY[0x1E69E9840];
  if ([(PKTextInputDrawingGestureRecognizer *)self state])
  {
    return;
  }

  if (!self->_requiresTargetElementToBegin)
  {
    v6 = [(PKTextInputDrawingGestureRecognizer *)self hasMovedPastTapUseTimestampFromTouch:touchCopy];
    goto LABEL_6;
  }

  targetElement = [(PKTextInputDrawingGestureRecognizer *)self targetElement];

  v6 = [(PKTextInputDrawingGestureRecognizer *)self hasMovedPastTapUseTimestampFromTouch:touchCopy];
  if (targetElement)
  {
LABEL_6:
    v7 = !self->_requiresPastTapToBegin || v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v8 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
    v19 = @"N";
    if (v7)
    {
      v20 = @"Y";
    }

    else
    {
      v20 = @"N";
    }

    if (self->_requiresTargetElementToBegin)
    {
      v21 = @"Y";
    }

    else
    {
      v21 = @"N";
    }

    v22 = [(PKTextInputDrawingGestureRecognizer *)self targetElement:v20];
    if (v22)
    {
      v23 = @"Y";
    }

    else
    {
      v23 = @"N";
    }

    if (self->_requiresPastTapToBegin)
    {
      v24 = @"Y";
    }

    else
    {
      v24 = @"N";
    }

    if (v6)
    {
      v19 = @"Y";
    }

    drawingTouch2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
    [(PKTextInputDrawingGestureRecognizer *)self _distanceFromStartPositionForTouch:drawingTouch2];
    *location = 134219522;
    *&location[4] = v28;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v21;
    v38 = 2112;
    v39 = v23;
    v40 = 2112;
    v41 = v24;
    v42 = 2112;
    v43 = v19;
    v44 = 2048;
    v45 = v26;
    _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Gesture touch %p evaluateMovingToBeganState shouldBegin: %@, requiresTargetElementToBegin: %@, hasTargetElement: %@, requiresPastTap: %@, hasMovedPastTap: %@, movedDistance: %0.2f", location, 0x48u);
  }

  if (v7)
  {
    [(PKTextInputDrawingGestureRecognizer *)self setState:1];
    if ([(PKTextInputDrawingGestureRecognizer *)self state]== 5)
    {
      [(PKTextInputDrawingGestureRecognizer *)self _cancelOrFailGesture];
    }

    else
    {
      [(PKTextInputDrawingGestureRecognizer *)self _beginDrawingIfNeeded];
      [(PKTextInputDrawingGestureRecognizer *)self _updateStrokeAcceptanceStateUseTimestampFromTouch:1];
      v12 = +[PKTextInputSettings sharedSettings];
      [v12 asyncElementRequestTimeout];
      v14 = v13;

      if (![(PKTextInputDrawingGestureRecognizer *)self strokeAcceptanceState]&& !self->_timeoutBlock && v14 > 0.0)
      {
        objc_initWeak(location, self);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __88__PKTextInputDrawingGestureRecognizer__evaluateMovingToBeganStateUseTimestampFromTouch___block_invoke;
        v31[3] = &unk_1E82D69B8;
        objc_copyWeak(&v32, location);
        v15 = dispatch_block_create(0, v31);
        timeoutBlock = self->_timeoutBlock;
        self->_timeoutBlock = v15;

        v17 = dispatch_time(0, (v14 * 1000000000.0));
        dispatch_after(v17, MEMORY[0x1E69E96A0], self->_timeoutBlock);
        objc_destroyWeak(&v32);
        objc_destroyWeak(location);
      }
    }

    [(PKTextInputDrawingGestureRecognizer *)self _cancelNotMovingCancellationBlock];
  }

  else if (!self->_notMovingCancelBlock)
  {
    objc_initWeak(location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PKTextInputDrawingGestureRecognizer__evaluateMovingToBeganStateUseTimestampFromTouch___block_invoke_2;
    block[3] = &unk_1E82D69B8;
    objc_copyWeak(&v30, location);
    v9 = dispatch_block_create(0, block);
    notMovingCancelBlock = self->_notMovingCancelBlock;
    self->_notMovingCancelBlock = v9;

    v11 = dispatch_time(0, 500000000);
    dispatch_after(v11, MEMORY[0x1E69E96A0], self->_notMovingCancelBlock);
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

void __88__PKTextInputDrawingGestureRecognizer__evaluateMovingToBeganStateUseTimestampFromTouch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _acceptStrokeTimeoutTriggered];
}

void __88__PKTextInputDrawingGestureRecognizer__evaluateMovingToBeganStateUseTimestampFromTouch___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateCancelIfNotMoving];
}

- (void)_updateStrokeAcceptanceStateUseTimestampFromTouch:(BOOL)touch
{
  v40 = *MEMORY[0x1E69E9840];
  if (![(PKTextInputDrawingGestureRecognizer *)self strokeAcceptanceState])
  {
    v5 = +[PKTextInputSettings sharedSettings];
    if ([(PKTextInputDrawingGestureRecognizer *)self state]== 1 || [(PKTextInputDrawingGestureRecognizer *)self state]== 2)
    {
      if (!self->_requiresTargetElementToBegin || ([(PKTextInputDrawingGestureRecognizer *)self targetElement], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
      {
        v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
          if (self->_requiresTargetElementToBegin)
          {
            v9 = @"Y";
          }

          else
          {
            v9 = @"N";
          }

          targetElement = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
          v28 = 134218498;
          if (targetElement)
          {
            v11 = @"Y";
          }

          else
          {
            v11 = @"N";
          }

          v29 = drawingTouch;
          v30 = 2112;
          v31 = v9;
          v32 = 2112;
          v33 = v11;
          _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Gesture touch %p updateStrokeAcceptanceState acceping stroke, requiresElement: %@, hasElement: %@", &v28, 0x20u);
        }

        v12 = 1;
        goto LABEL_39;
      }
    }

    if (self->_requiresTargetElementToBegin)
    {
      if (self->_waitingForTargetElementSearch)
      {
        v13 = 0;
LABEL_21:
        targetElement2 = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
        v14 = targetElement2 != 0;

        goto LABEL_22;
      }

      targetElement3 = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
      v13 = targetElement3 == 0;

      if (self->_requiresTargetElementToBegin)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 1;
LABEL_22:
    if (touch)
    {
      drawingTouch2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceTouchesBeganForTouch:drawingTouch2];
      v19 = v18;
    }

    else
    {
      [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceTouchesBeganForTouch:0];
      v19 = v20;
    }

    [v5 asyncElementRequestTimeout];
    v22 = v21;
    if (!v13 && (v19 <= v21 || v14))
    {
      goto LABEL_40;
    }

    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch3 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      if (v13)
      {
        v24 = @"Y";
      }

      else
      {
        v24 = @"N";
      }

      if (v14)
      {
        v25 = @"Y";
      }

      else
      {
        v25 = @"N";
      }

      if (v19 > v22)
      {
        v26 = @"Y";
      }

      else
      {
        v26 = @"N";
      }

      [v5 asyncElementRequestTimeout];
      v28 = 134219266;
      v29 = drawingTouch3;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      v36 = 2048;
      v37 = v19;
      v38 = 2048;
      v39 = v27;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Gesture touch %p updateStrokeAcceptanceState rejecting stroke. targetSearchFailed: %@, targetSearchSatisfied: %@, targetSearchTimedOut: %@, timeSinceStart: %0.3f, cancelTime: %0.3f", &v28, 0x3Eu);
    }

    v12 = 2;
LABEL_39:

    [(PKTextInputDrawingGestureRecognizer *)self _setStrokeAcceptanceState:v12];
LABEL_40:
  }
}

- (void)_setStrokeAcceptanceState:(int64_t)state
{
  if (self->_strokeAcceptanceState != state)
  {
    self->_strokeAcceptanceState = state;
    if (state)
    {
      delegate = [(PKTextInputDrawingGestureRecognizer *)self delegate];
      [delegate drawingGestureStrokeAcceptanceStateDidChange:self];
    }

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_evaluateCancelIfNotMoving
{
  v15 = *MEMORY[0x1E69E9840];
  [(PKTextInputDrawingGestureRecognizer *)self _cancelNotMovingCancellationBlock];
  if (self->_requiresPastTapToBegin && ![(PKTextInputDrawingGestureRecognizer *)self state]&& ![(PKTextInputDrawingGestureRecognizer *)self hasMovedPastTapUseTimestampFromTouch:0]&& ![(PKTextInputDrawingGestureRecognizer *)self _gestureStartedInsideTargetElement])
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      drawingTouch2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      [(PKTextInputDrawingGestureRecognizer *)self timeIntervalSinceTouchesBeganForTouch:drawingTouch2];
      v7 = v6;
      v8 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
      v9 = 134218498;
      v10 = drawingTouch;
      v11 = 2048;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Gesture touch %p Cancelling gesture because it hasn't moved past tap (outside of target) after %0.2fs, state: %@.", &v9, 0x20u);
    }

    [(PKTextInputDrawingGestureRecognizer *)self cancel];
  }
}

- (void)_cancelNotMovingCancellationBlock
{
  notMovingCancelBlock = self->_notMovingCancelBlock;
  if (notMovingCancelBlock)
  {
    dispatch_block_cancel(notMovingCancelBlock);
    v4 = self->_notMovingCancelBlock;
    self->_notMovingCancelBlock = 0;
  }
}

- (void)_cancelScheduledStrokeAcceptanceBlock
{
  timeoutBlock = self->_timeoutBlock;
  if (timeoutBlock)
  {
    dispatch_block_cancel(timeoutBlock);
    v4 = self->_timeoutBlock;
    self->_timeoutBlock = 0;
  }
}

- (void)_acceptStrokeTimeoutTriggered
{
  [(PKTextInputDrawingGestureRecognizer *)self _cancelScheduledStrokeAcceptanceBlock];

  [(PKTextInputDrawingGestureRecognizer *)self _updateStrokeAcceptanceStateUseTimestampFromTouch:0];
}

- (void)_cancelOrFailGesture
{
  if ([(PKTextInputDrawingGestureRecognizer *)self state])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  [(PKTextInputDrawingGestureRecognizer *)self setState:v3];
  if (self->_drawingTargetIsDrawing)
  {
    [(PKTextInputDrawingGestureRecognizer *)self cancelDrawing];
  }

  [(PKTextInputDrawingGestureRecognizer *)self _cancelLongPressTimerBlocks];

  [(PKTextInputDrawingGestureRecognizer *)self _setLongPressState:3];
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PKTextInputDrawingGestureRecognizer *)self state]!= 5 && [(PKTextInputDrawingGestureRecognizer *)self state]!= 4)
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
      v5 = 134218240;
      v6 = drawingTouch;
      v7 = 2048;
      state = [(PKTextInputDrawingGestureRecognizer *)self state];
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Gesture touch %p cancel called, state: %ld. Cancelling gesture.", &v5, 0x16u);
    }

    [(PKTextInputDrawingGestureRecognizer *)self _cancelOrFailGesture];
  }
}

- (void)reset
{
  v17 = *MEMORY[0x1E69E9840];
  gestureEnvironmentResetTimeoutBlock = self->_gestureEnvironmentResetTimeoutBlock;
  if (gestureEnvironmentResetTimeoutBlock)
  {
    dispatch_block_cancel(gestureEnvironmentResetTimeoutBlock);
    v4 = self->_gestureEnvironmentResetTimeoutBlock;
    self->_gestureEnvironmentResetTimeoutBlock = 0;
  }

  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    drawingTouch = [(PKTextInputDrawingGestureRecognizer *)self drawingTouch];
    if (self->_drawingTargetIsDrawing)
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v8 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
    v11 = 134218498;
    v12 = drawingTouch;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Gesture touch %p reset, drawingTargetIsDrawing: %@, state: %@", &v11, 0x20u);
  }

  state = [(PKTextInputDrawingGestureRecognizer *)self state];
  if (self->_drawingTargetIsDrawing)
  {
    if ((state & 0xFFFFFFFFFFFFFFFELL) == 4 || [(PKTextInputDrawingGestureRecognizer *)self strokeAcceptanceState]!= 1)
    {
      [(PKTextInputDrawingGestureRecognizer *)self cancelDrawing];
    }

    else
    {
      [(PKTextInputDrawingGestureRecognizer *)self _drawingEnded];
    }
  }

  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  self->_drawingTargetIsDrawing = 0;
  self->_strokeAcceptanceState = 0;
  [(PKTextInputDrawingGestureRecognizer *)self setTargetElement:0];
  self->_waitingForTargetElementSearch = 0;
  self->_requiresTargetElementToBegin = 0;
  self->_requiresPastTapToBegin = 0;
  [(PKTextInputDrawingGestureRecognizer *)self _cancelScheduledStrokeAcceptanceBlock];
  [(PKTextInputDrawingGestureRecognizer *)self _cancelNotMovingCancellationBlock];
  [(PKTextInputDrawingGestureRecognizer *)self _cancelLongPressTimerBlocks];
  [(PKTextInputDrawingGestureRecognizer *)self _setLongPressState:0];
  [(PKTextInputDrawingGestureRecognizer *)self _setPanState:0];
  [(PKTextInputDrawingGestureRecognizer *)self _setPanDirection:0];
  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

+ (id)_systemGestureClassesToAvoid
{
  if (_MergedGlobals_20 != -1)
  {
    dispatch_once(&_MergedGlobals_20, &__block_literal_global_25);
  }

  v3 = qword_1EC297268;

  return v3;
}

void __67__PKTextInputDrawingGestureRecognizer__systemGestureClassesToAvoid__block_invoke()
{
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v0 = NSClassFromString(&cfstr_Uitouchduratio.isa);
  if (v0)
  {
    [v6 addObject:v0];
  }

  v1 = NSClassFromString(&cfstr_Uisystemgestur.isa);
  if (v1)
  {
    [v6 addObject:v1];
  }

  v2 = NSClassFromString(&cfstr_Uirelationship.isa);
  v3 = v6;
  if (v2)
  {
    [v6 addObject:?];
    v3 = v6;
  }

  v4 = [v3 copy];
  v5 = qword_1EC297268;
  qword_1EC297268 = v4;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  v28 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _systemGestureClassesToAvoid = [objc_opt_class() _systemGestureClassesToAvoid];
  v5 = [_systemGestureClassesToAvoid countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(_systemGestureClassesToAvoid);
      }

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [_systemGestureClassesToAvoid countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    name = [recognizerCopy name];

    if (name == @"com.apple.PencilKit.tapGestureFailure")
    {
      v16 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 1;
      goto LABEL_22;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    view = [recognizerCopy view];
    _systemGestureClassesToAvoid = [view gestureRecognizers];

    v11 = [_systemGestureClassesToAvoid countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (!v11)
    {
      v16 = 1;
      goto LABEL_21;
    }

    v12 = v11;
    v13 = *v19;
LABEL_13:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(_systemGestureClassesToAvoid);
      }

      name2 = [*(*(&v18 + 1) + 8 * v14) name];

      if (name2 == @"com.apple.PencilKit.tapGestureFailure")
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [_systemGestureClassesToAvoid countByEnumeratingWithState:&v18 objects:v26 count:16];
        v16 = 1;
        if (v12)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }
  }

  v16 = 0;
LABEL_21:

LABEL_22:
  return v16;
}

- (void)_setDrawingTargetIsDrawing:(BOOL)drawing
{
  if (self->_drawingTargetIsDrawing != drawing)
  {
    self->_drawingTargetIsDrawing = drawing;
    delegate = [(PKTextInputDrawingGestureRecognizer *)self delegate];
    [delegate drawingGestureRecognizerDrawingTargetIsDrawingDidChange:self];
  }
}

- (void)_drawingBegan
{
  if (!self->_drawingTargetIsDrawing)
  {
    [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:1];
    drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    [drawingTarget drawingBegan:self->_drawingTouch];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_drawingMoved:(id)moved
{
  if (self->_drawingTargetIsDrawing)
  {
    movedCopy = moved;
    drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    [drawingTarget drawingMoved:self->_drawingTouch withEvent:movedCopy];
  }
}

- (void)_drawingEnded
{
  if (self->_drawingTargetIsDrawing)
  {
    drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    [drawingTarget drawingEnded:self->_drawingTouch];

    [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:0];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)cancelDrawing
{
  if (self->_drawingTargetIsDrawing)
  {
    drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    [drawingTarget drawingCancelled];

    [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:0];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  v4 = _PKNameForGestureState([(PKTextInputDrawingGestureRecognizer *)self state]);
  descriptionCopy[2](descriptionCopy, @"Gesture state", v4);

  if ([(PKTextInputDrawingGestureRecognizer *)self drawingTargetIsDrawing])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"drawingTargetIsDrawing", v5);
  strokeAcceptanceState = [(PKTextInputDrawingGestureRecognizer *)self strokeAcceptanceState];
  if (strokeAcceptanceState > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E82DCAB0[strokeAcceptanceState];
  }

  descriptionCopy[2](descriptionCopy, @"strokeAcceptanceState", v7);
  longPressState = [(PKTextInputDrawingGestureRecognizer *)self longPressState];
  if (longPressState > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E82DCAC8[longPressState];
  }

  descriptionCopy[2](descriptionCopy, @"longPressState", v9);
  panState = [(PKTextInputDrawingGestureRecognizer *)self panState];
  if (panState > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E82DCAE8[panState];
  }

  descriptionCopy[2](descriptionCopy, @"panState", v11);
  panDirection = [(PKTextInputDrawingGestureRecognizer *)self panDirection];
  if (panDirection > 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E82DCB00[panDirection];
  }

  descriptionCopy[2](descriptionCopy, @"panDirection", v13);
  if (self->_requiresTargetElementToBegin)
  {
    v14 = @"Yes";
  }

  else
  {
    v14 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"requiresTargetElementToBegin", v14);
  if (self->_requiresPastTapToBegin)
  {
    v15 = @"Yes";
  }

  else
  {
    v15 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"requiresPastTapToBegin", v15);
  if (self->_waitingForTargetElementSearch)
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"waitingForTargetElementSearch", v16);
  targetElement = [(PKTextInputDrawingGestureRecognizer *)self targetElement];
  if (targetElement)
  {
    v18 = @"Yes";
  }

  else
  {
    v18 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"hasTargetElement", v18);
}

- (void)_replayDrawingBegan:(id *)began
{
  view = [(PKTextInputDrawingGestureRecognizer *)self view];
  v6 = *&began->var13;
  v10[6] = *&began->var11;
  v10[7] = v6;
  var15 = began->var15;
  v7 = *&began->var5;
  v10[2] = *&began->var3;
  v10[3] = v7;
  v8 = *&began->var9;
  v10[4] = *&began->var7;
  v10[5] = v8;
  v9 = *&began->var1;
  v10[0] = began->var0;
  v10[1] = v9;
  [(PKTextInputDrawingGestureRecognizer *)self _replayDrawingBegan:v10 coordinateSpace:view activeInputProperties:23 inputType:1];
}

- (void)_replayDrawingBegan:(id *)began coordinateSpace:(id)space activeInputProperties:(unint64_t)properties inputType:(int64_t)type
{
  spaceCopy = space;
  [(PKTextInputDrawingGestureRecognizer *)self setIsReplaying:1];
  [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:1];
  [(PKTextInputDrawingGestureRecognizer *)self _setStrokeAcceptanceState:1];
  drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    drawingTarget2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    v14 = *&began->var13;
    v18[6] = *&began->var11;
    v18[7] = v14;
    var15 = began->var15;
    v15 = *&began->var5;
    v18[2] = *&began->var3;
    v18[3] = v15;
    v16 = *&began->var9;
    v18[4] = *&began->var7;
    v18[5] = v16;
    v17 = *&began->var1;
    v18[0] = began->var0;
    v18[1] = v17;
    [drawingTarget2 _replayDrawingBegan:v18 coordinateSpace:spaceCopy activeInputProperties:properties inputType:type];
  }
}

- (void)_replayDrawingMoved:(id *)moved
{
  view = [(PKTextInputDrawingGestureRecognizer *)self view];
  v6 = *&moved->var13;
  v10[6] = *&moved->var11;
  v10[7] = v6;
  var15 = moved->var15;
  v7 = *&moved->var5;
  v10[2] = *&moved->var3;
  v10[3] = v7;
  v8 = *&moved->var9;
  v10[4] = *&moved->var7;
  v10[5] = v8;
  v9 = *&moved->var1;
  v10[0] = moved->var0;
  v10[1] = v9;
  [(PKTextInputDrawingGestureRecognizer *)self _replayDrawingMoved:v10 coordinateSpace:view];
}

- (void)_replayDrawingMoved:(id *)moved coordinateSpace:(id)space
{
  spaceCopy = space;
  drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    drawingTarget2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    v10 = *&moved->var13;
    v14[6] = *&moved->var11;
    v14[7] = v10;
    var15 = moved->var15;
    v11 = *&moved->var5;
    v14[2] = *&moved->var3;
    v14[3] = v11;
    v12 = *&moved->var9;
    v14[4] = *&moved->var7;
    v14[5] = v12;
    v13 = *&moved->var1;
    v14[0] = moved->var0;
    v14[1] = v13;
    [drawingTarget2 _replayDrawingMoved:v14 coordinateSpace:spaceCopy];
  }
}

- (void)_replayDrawingEnded
{
  if ([(PKTextInputDrawingGestureRecognizer *)self drawingTargetIsDrawing])
  {
    drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      drawingTarget2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
      [drawingTarget2 _replayDrawingEnded];
    }

    [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:0];
  }

  [(PKTextInputDrawingGestureRecognizer *)self setIsReplaying:0];

  [(PKTextInputDrawingGestureRecognizer *)self reset];
}

- (void)_replayDrawingCancelled
{
  if ([(PKTextInputDrawingGestureRecognizer *)self isReplaying])
  {
    [(PKTextInputDrawingGestureRecognizer *)self cancel];
    if ([(PKTextInputDrawingGestureRecognizer *)self drawingTargetIsDrawing])
    {
      drawingTarget = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        drawingTarget2 = [(PKTextInputDrawingGestureRecognizer *)self drawingTarget];
        [drawingTarget2 _replayDrawingCancelled];
      }

      [(PKTextInputDrawingGestureRecognizer *)self _setDrawingTargetIsDrawing:0];
    }

    [(PKTextInputDrawingGestureRecognizer *)self setIsReplaying:0];
  }

  [(PKTextInputDrawingGestureRecognizer *)self reset];
}

- (PKDrawingGestureTarget)drawingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->drawingTarget);

  return WeakRetained;
}

@end