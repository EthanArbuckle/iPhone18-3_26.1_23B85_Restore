@interface PKDrawingGestureRecognizer
- (BOOL)_shouldBeginDrawing:(id)drawing withEvent:(id)event;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (CGRect)currentBoundingBoxInWindow;
- (PKDrawingGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (PKDrawingGestureTarget)drawingTarget;
- (void)_beginDrawingWithTouch:(id)touch;
- (void)_cancelDrawing;
- (void)_drawingBegan;
- (void)_drawingCancelled;
- (void)_drawingEnded;
- (void)_drawingMoved:(id)moved;
- (void)_updateDrawingWithEvent:(id)event;
- (void)reset;
- (void)setThresholdDistance:(double)distance;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesEstimatedPropertiesUpdated:(id)updated;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKDrawingGestureRecognizer

- (PKDrawingGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = PKDrawingGestureRecognizer;
  v4 = [(PKDrawingGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(PKDrawingGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(PKDrawingGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(PKDrawingGestureRecognizer *)v5 setRequiresExclusiveTouchType:0];
    [(PKDrawingGestureRecognizer *)v5 setThresholdDistance:163.0];
  }

  return v5;
}

- (void)setThresholdDistance:(double)distance
{
  if (self->_thresholdDistance != distance)
  {
    self->_thresholdDistance = distance;
    self->_squaredThreshold = distance * distance;
  }
}

- (BOOL)_shouldBeginDrawing:(id)drawing withEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  eventCopy = event;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = drawingCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      allowedTouchTypes = [(PKDrawingGestureRecognizer *)self allowedTouchTypes];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "type")}];
      v16 = [allowedTouchTypes containsObject:v15];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    delegate = [(PKDrawingGestureRecognizer *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20 & 1) == 0 || (-[PKDrawingGestureRecognizer delegate](self, "delegate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 drawingGestureRecognizer:self shouldBeginDrawingWithTouches:v8 event:eventCopy], v21, (v22))
    {
      v23 = 1;
      goto LABEL_18;
    }

    v17 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      v18 = "shouldBeginDrawingWithTouches returned NO";
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:

    v17 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      v18 = "Allowed touch type not found";
LABEL_16:
      _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, v18, v25, 2u);
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Touches drawing", buf, 2u);
  }

  if ([(PKDrawingGestureRecognizer *)self state]|| [(PKDrawingGestureRecognizer *)self _shouldBeginDrawing:beganCopy withEvent:eventCopy])
  {
    v9 = [beganCopy objectsPassingTest:&__block_literal_global_26];
    anyObject = [v9 anyObject];

    if (anyObject)
    {
      self->_gestureDetected = 1;
      self->_activeInputProperties = [eventCopy PK_activeInputPropertiesForTouch:anyObject];
      [(PKDrawingGestureRecognizer *)self _beginDrawingWithTouch:anyObject];
    }

    else if (!self->_ignoreFingerTouchesUntilReset)
    {
      if (self->_drawingTouch || [beganCopy count] >= 2)
      {
        if (!self->_gestureDetected)
        {
          v11 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Multiple touches cancel drawing", v14, 2u);
          }

          self->_ignoreFingerTouchesUntilReset = 1;
          [(PKDrawingGestureRecognizer *)self _cancelDrawing];
        }
      }

      else if (!self->_drawingTargetIsDrawing)
      {
        anyObject2 = [beganCopy anyObject];
        self->_activeInputProperties = [eventCopy PK_activeInputPropertiesForTouch:anyObject2];
        [(PKDrawingGestureRecognizer *)self _beginDrawingWithTouch:anyObject2];
      }
    }
  }

  else
  {
    v12 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Drawing should not begin so cancelDrawing", v15, 2u);
    }

    [(PKDrawingGestureRecognizer *)self _cancelDrawing];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  if ([moved containsObject:self->_drawingTouch])
  {
    if (self->_drawingTargetIsDrawing)
    {
      [(PKDrawingGestureRecognizer *)self _updateDrawingWithEvent:eventCopy];
    }

    else
    {
      [(PKDrawingGestureRecognizer *)self _beginDrawingWithTouch:self->_drawingTouch];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([cancelled containsObject:{self->_drawingTouch, event}])
  {
    v5 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Touches cancelled", v6, 2u);
    }

    [(PKDrawingGestureRecognizer *)self _cancelDrawing];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([ended containsObject:{self->_drawingTouch, event}])
  {
    delegate = [(PKDrawingGestureRecognizer *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(PKDrawingGestureRecognizer *)self delegate];
      [delegate2 drawingGestureRecognizer:self touchesEndedWithDrawingTouch:self->_drawingTouch];
    }

    [(PKDrawingGestureRecognizer *)self _endDrawing];
  }
}

- (void)touchesEstimatedPropertiesUpdated:(id)updated
{
  updatedCopy = updated;
  drawingTarget = [(PKDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingEstimatedPropertiesUpdated:updatedCopy];
}

- (void)_beginDrawingWithTouch:(id)touch
{
  touchCopy = touch;
  if (self->_drawingTargetIsDrawing)
  {
    if (self->_drawingTouch == touchCopy)
    {
      goto LABEL_13;
    }

    [(PKDrawingGestureRecognizer *)self _drawingCancelled];
  }

  if (!self->_drawingTouch)
  {
    [(UITouch *)touchCopy locationInView:0];
    self->_drawTouchStartPoint.x = v5;
    self->_drawTouchStartPoint.y = v6;
  }

  objc_storeStrong(&self->_drawingTouch, touch);
  if (!self->_drawingTargetIsDrawing)
  {
    delegate = [(PKDrawingGestureRecognizer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0 || (-[PKDrawingGestureRecognizer delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 drawingGestureRecognizer:self shouldDelayDrawingBeganWithTouch:touchCopy], v9, (v10 & 1) == 0))
    {
      [(PKDrawingGestureRecognizer *)self _drawingBegan];
    }
  }

  if (self->_gestureDetected && ![(PKDrawingGestureRecognizer *)self state])
  {
    [(PKDrawingGestureRecognizer *)self setState:1];
  }

LABEL_13:
}

- (void)_updateDrawingWithEvent:(id)event
{
  eventCopy = event;
  v8 = eventCopy;
  if (self->_gestureDetected)
  {
    [(PKDrawingGestureRecognizer *)self _drawingMoved:eventCopy];
    if (!self->_gestureDetected)
    {
      goto LABEL_9;
    }

    v5 = 2;
    goto LABEL_8;
  }

  [(UITouch *)self->_drawingTouch locationInView:0];
  if ((self->_drawTouchStartPoint.y - v7) * (self->_drawTouchStartPoint.y - v7) + (self->_drawTouchStartPoint.x - v6) * (self->_drawTouchStartPoint.x - v6) > self->_squaredThreshold)
  {
    self->_gestureDetected = 1;
  }

  [(PKDrawingGestureRecognizer *)self _drawingMoved:v8];
  if (self->_gestureDetected)
  {
    v5 = 1;
LABEL_8:
    [(PKDrawingGestureRecognizer *)self setState:v5];
  }

LABEL_9:
}

- (void)_cancelDrawing
{
  if (self->_drawingTargetIsDrawing)
  {
    [(PKDrawingGestureRecognizer *)self _drawingCancelled];
  }

  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  if (self->_gestureDetected)
  {
    self->_gestureDetected = 0;
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  [(PKDrawingGestureRecognizer *)self setState:v4];
}

- (void)reset
{
  if (([(PKDrawingGestureRecognizer *)self state]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (self->_drawingTargetIsDrawing)
    {
      [(PKDrawingGestureRecognizer *)self _drawingCancelled];
    }
  }

  else if (self->_drawingTargetIsDrawing)
  {
    [(PKDrawingGestureRecognizer *)self _drawingEnded];
  }

  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  self->_drawingTargetIsDrawing = 0;
  self->_gestureDetected = 0;
  self->_ignoreFingerTouchesUntilReset = 0;
}

- (void)_drawingBegan
{
  self->_drawingTargetIsDrawing = 1;
  self->_startTimeInterval = CACurrentMediaTime();
  [(UITouch *)self->_drawingTouch locationInView:0];
  self->_currentBoundingBoxInWindow.origin.x = v3;
  self->_currentBoundingBoxInWindow.origin.y = v4;
  self->_currentBoundingBoxInWindow.size.width = 0.0;
  self->_currentBoundingBoxInWindow.size.height = 0.0;
  drawingTarget = [(PKDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingBegan:self->_drawingTouch];
}

- (void)_drawingMoved:(id)moved
{
  drawingTouch = self->_drawingTouch;
  movedCopy = moved;
  [(UITouch *)drawingTouch locationInView:0];
  v10.origin.x = v6;
  v10.origin.y = v7;
  v10.size.width = 0.0;
  v10.size.height = 0.0;
  self->_currentBoundingBoxInWindow = CGRectUnion(self->_currentBoundingBoxInWindow, v10);
  drawingTarget = [(PKDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingMoved:self->_drawingTouch withEvent:movedCopy];
}

- (void)_drawingEnded
{
  drawingTarget = [(PKDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingEnded:self->_drawingTouch];

  self->_drawingTargetIsDrawing = 0;
}

- (void)_drawingCancelled
{
  drawingTarget = [(PKDrawingGestureRecognizer *)self drawingTarget];
  [drawingTarget drawingCancelled];

  self->_drawingTargetIsDrawing = 0;
}

- (PKDrawingGestureTarget)drawingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->drawingTarget);

  return WeakRetained;
}

- (CGRect)currentBoundingBoxInWindow
{
  x = self->_currentBoundingBoxInWindow.origin.x;
  y = self->_currentBoundingBoxInWindow.origin.y;
  width = self->_currentBoundingBoxInWindow.size.width;
  height = self->_currentBoundingBoxInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end