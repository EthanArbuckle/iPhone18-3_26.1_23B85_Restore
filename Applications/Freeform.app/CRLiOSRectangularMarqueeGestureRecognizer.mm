@interface CRLiOSRectangularMarqueeGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)p_isCanvasCurrentlyInQuickSelectMode;
- (CRLInteractiveCanvasController)icc;
- (CRLiOSRectangularMarqueeGestureRecognizer)initWithInteractiveCanvasController:(id)controller;
- (void)operationDidEnd;
- (void)p_setModifierFlags;
- (void)p_updateTrackerWithUnscaledPoint:(CGPoint)point;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateAfterAutoscroll:(id)autoscroll;
@end

@implementation CRLiOSRectangularMarqueeGestureRecognizer

- (CRLiOSRectangularMarqueeGestureRecognizer)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  dynamicOperationController = [controllerCopy dynamicOperationController];
  v9.receiver = self;
  v9.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)&v9 initWithTarget:dynamicOperationController action:"handleTrackerManipulator:"];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_interactiveCanvasController, controllerCopy);
  }

  return v7;
}

- (void)setState:(int64_t)state
{
  state = [(CRLiOSRectangularMarqueeGestureRecognizer *)self state];
  if (state == 1 && state != 1)
  {
    v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    dynamicOperationController = [v6 dynamicOperationController];

    v8 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    tmCoordinator = [v8 tmCoordinator];

    [tmCoordinator registerTrackerManipulator:self];
    [tmCoordinator takeControlWithTrackerManipulator:self];
    [dynamicOperationController beginOperation];
  }

  v10.receiver = self;
  v10.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v10 setState:state];
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  tmCoordinator = [WeakRetained tmCoordinator];

  controllingTM = [tmCoordinator controllingTM];

  if (controllingTM == self)
  {
    [tmCoordinator relinquishTrackerManipulatorControl:self];
  }

  [tmCoordinator unregisterTrackerManipulator:self];
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  [(CRLCanvasAutoscroll *)self->_autoscroll invalidate];
  autoscroll = self->_autoscroll;
  self->_autoscroll = 0;

  marqueeTracker = self->_marqueeTracker;
  self->_marqueeTracker = 0;

  self->_initialScaledTouchLocation = xmmword_1014629E0;
  v9.receiver = self;
  v9.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v9 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  layerHost = [WeakRetained layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  if (!self->_trackingTouch)
  {
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self setMinimumPressDuration:0.5];
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self setAllowableMovement:10.0];
    if ([(CRLiOSRectangularMarqueeGestureRecognizer *)self p_isCanvasCurrentlyInQuickSelectMode])
    {
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setMinimumPressDuration:0.02];
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setAllowableMovement:1.79769313e308];
    }

    if ([beganCopy count] == 1)
    {
      anyObject = [beganCopy anyObject];
      if ([anyObject type] == 3)
      {
        [(CRLiOSRectangularMarqueeGestureRecognizer *)self setMinimumPressDuration:0.0];
        if (([(CRLiOSRectangularMarqueeGestureRecognizer *)self buttonMask]& 2) != 0 || ([(CRLiOSRectangularMarqueeGestureRecognizer *)self modifierFlags]& 0x40000) != 0)
        {
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:5];
        }
      }
    }
  }

  if (![(CRLiOSRectangularMarqueeGestureRecognizer *)self state])
  {
    anyObject2 = [beganCopy anyObject];
    view = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
    [anyObject2 locationInView:view];
    v15 = v14;
    v17 = v16;

    v18 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    [v18 convertBoundsToUnscaledPoint:{v15, v17}];
    v20 = v19;
    v22 = v21;

    if ([beganCopy count] > 1 || objc_msgSend(anyObject2, "tapCount") > 1 || self->_trackingTouch || objc_msgSend(asUIKitHost, "disallowRectangularMarqueeOperationAtUnscaledPoint:", v20, v22))
    {
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:5];
    }

    else
    {
      objc_storeStrong(&self->_trackingTouch, anyObject2);
      v23 = sub_10042B6C0([(UITouch *)self->_trackingTouch type]);
      v24 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
      v25 = [v24 hitKnobAtPoint:v23 inputType:0 returningRep:{v20, v22}];

      if (v25)
      {
        [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:5];
      }

      else
      {
        v26 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
        v27 = [v26 hitRep:{v20, v22}];

        if (v27 && (([v27 shouldPreventMarqueeInitiationAtPoint:-[UITouch type](self->_trackingTouch withTouchType:{"type"), v20, v22}] & 1) != 0 || (objc_msgSend(v27, "repForDragging"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "shouldPreventMarqueeInitiationAtPoint:withTouchType:", -[UITouch type](self->_trackingTouch, "type"), v20, v22), v28, v29)))
        {
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:5];
        }

        else
        {
          v30 = [CRLRectangularMarqueeTracker alloc];
          v31 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
          v32 = [(CRLRectangularMarqueeTracker *)v30 initWithInteractiveCanvasController:v31];
          marqueeTracker = self->_marqueeTracker;
          self->_marqueeTracker = v32;

          marqueeTracker = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
          [marqueeTracker setStartingUnscaledPoint:{v20, v22}];

          self->_initialScaledTouchLocation.x = v15;
          self->_initialScaledTouchLocation.y = v17;
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self minimumPressDuration];
          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressAnimationWhenMarqueeBegins:v35 < 0.1];
          if ([(UITouch *)self->_trackingTouch type]== 3)
          {
            isCurrentlyInQuickSelectMode = 1;
          }

          else
          {
            isCurrentlyInQuickSelectMode = [asUIKitHost isCurrentlyInQuickSelectMode];
          }

          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressContextMenu:isCurrentlyInQuickSelectMode];
          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressRestoringOriginalSelectionIfNothingSelected:isCurrentlyInQuickSelectMode];
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_setModifierFlags];
        }
      }
    }
  }

  v37.receiver = self;
  v37.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v37 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v18.receiver = self;
  v18.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  movedCopy = moved;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v18 touchesMoved:movedCopy withEvent:event];
  LODWORD(event) = [movedCopy containsObject:{self->_trackingTouch, v18.receiver, v18.super_class}];

  if (event)
  {
    trackingTouch = self->_trackingTouch;
    view = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
    [(UITouch *)trackingTouch locationInView:view];
    v10 = v9;
    v12 = v11;

    v13 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    [v13 convertBoundsToUnscaledPoint:{v10, v12}];
    v15 = v14;
    v17 = v16;

    if (sub_100120090(v10, v12, self->_initialScaledTouchLocation.x, self->_initialScaledTouchLocation.y) > 14.0)
    {
      [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressRestoringOriginalSelectionIfNothingSelected:1];
    }

    [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_updateTrackerWithUnscaledPoint:v15, v17];
    [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v15, v17];
  }
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  layerHost = [WeakRetained layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  v12.receiver = self;
  v12.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  if ([(CRLiOSRectangularMarqueeGestureRecognizer *)&v12 canPreventGestureRecognizer:recognizerCopy])
  {
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self minimumPressDuration];
    if (v8 <= 0.02)
    {
      doubleTapGestureRecognizer = [asUIKitHost doubleTapGestureRecognizer];
      v9 = doubleTapGestureRecognizer != recognizerCopy;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)operationDidEnd
{
  [(CRLCanvasAutoscroll *)self->_autoscroll invalidate];
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  trackingTouch = self->_trackingTouch;
  view = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
  [(UITouch *)trackingTouch locationInView:view];
  v7 = v6;
  v9 = v8;

  v10 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
  [v10 convertBoundsToUnscaledPoint:{v7, v9}];
  v12 = v11;
  v14 = v13;

  [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_updateTrackerWithUnscaledPoint:v12, v14];

  [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:2];
}

- (void)p_setModifierFlags
{
  v3 = ([(CRLiOSRectangularMarqueeGestureRecognizer *)self modifierFlags]>> 19) & 1;
  marqueeTracker = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [marqueeTracker setShouldCenterResizeMarqueeRect:v3];

  v5 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_shouldInvertOriginalSelectionForModifierFlags:[(CRLiOSRectangularMarqueeGestureRecognizer *)self modifierFlags]];
  marqueeTracker2 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [marqueeTracker2 setShouldInvertOriginalSelection:v5];
}

- (void)p_updateTrackerWithUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_setModifierFlags];
  marqueeTracker = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [marqueeTracker setCurrentUnscaledDragPoint:{x, y}];
}

- (BOOL)p_isCanvasCurrentlyInQuickSelectMode
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  layerHost = [WeakRetained layerHost];
  asUIKitHost = [layerHost asUIKitHost];
  isCurrentlyInQuickSelectMode = [asUIKitHost isCurrentlyInQuickSelectMode];

  return isCurrentlyInQuickSelectMode;
}

- (CRLInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end