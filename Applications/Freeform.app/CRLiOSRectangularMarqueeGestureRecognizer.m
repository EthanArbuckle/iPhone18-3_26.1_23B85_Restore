@interface CRLiOSRectangularMarqueeGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (BOOL)p_isCanvasCurrentlyInQuickSelectMode;
- (CRLInteractiveCanvasController)icc;
- (CRLiOSRectangularMarqueeGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (void)operationDidEnd;
- (void)p_setModifierFlags;
- (void)p_updateTrackerWithUnscaledPoint:(CGPoint)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateAfterAutoscroll:(id)a3;
@end

@implementation CRLiOSRectangularMarqueeGestureRecognizer

- (CRLiOSRectangularMarqueeGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = [v4 dynamicOperationController];
  v9.receiver = self;
  v9.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)&v9 initWithTarget:v5 action:"handleTrackerManipulator:"];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_interactiveCanvasController, v4);
  }

  return v7;
}

- (void)setState:(int64_t)a3
{
  v5 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self state];
  if (a3 == 1 && v5 != 1)
  {
    v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    v7 = [v6 dynamicOperationController];

    v8 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    v9 = [v8 tmCoordinator];

    [v9 registerTrackerManipulator:self];
    [v9 takeControlWithTrackerManipulator:self];
    [v7 beginOperation];
  }

  v10.receiver = self;
  v10.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v10 setState:a3];
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v4 = [WeakRetained tmCoordinator];

  v5 = [v4 controllingTM];

  if (v5 == self)
  {
    [v4 relinquishTrackerManipulatorControl:self];
  }

  [v4 unregisterTrackerManipulator:self];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v9 = [WeakRetained layerHost];
  v10 = [v9 asUIKitHost];

  if (!self->_trackingTouch)
  {
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self setMinimumPressDuration:0.5];
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self setAllowableMovement:10.0];
    if ([(CRLiOSRectangularMarqueeGestureRecognizer *)self p_isCanvasCurrentlyInQuickSelectMode])
    {
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setMinimumPressDuration:0.02];
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setAllowableMovement:1.79769313e308];
    }

    if ([v6 count] == 1)
    {
      v11 = [v6 anyObject];
      if ([v11 type] == 3)
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
    v12 = [v6 anyObject];
    v13 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
    [v12 locationInView:v13];
    v15 = v14;
    v17 = v16;

    v18 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self icc];
    [v18 convertBoundsToUnscaledPoint:{v15, v17}];
    v20 = v19;
    v22 = v21;

    if ([v6 count] > 1 || objc_msgSend(v12, "tapCount") > 1 || self->_trackingTouch || objc_msgSend(v10, "disallowRectangularMarqueeOperationAtUnscaledPoint:", v20, v22))
    {
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self setState:5];
    }

    else
    {
      objc_storeStrong(&self->_trackingTouch, v12);
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

          v34 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
          [v34 setStartingUnscaledPoint:{v20, v22}];

          self->_initialScaledTouchLocation.x = v15;
          self->_initialScaledTouchLocation.y = v17;
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self minimumPressDuration];
          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressAnimationWhenMarqueeBegins:v35 < 0.1];
          if ([(UITouch *)self->_trackingTouch type]== 3)
          {
            v36 = 1;
          }

          else
          {
            v36 = [v10 isCurrentlyInQuickSelectMode];
          }

          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressContextMenu:v36];
          [(CRLRectangularMarqueeTracker *)self->_marqueeTracker setShouldSuppressRestoringOriginalSelectionIfNothingSelected:v36];
          [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_setModifierFlags];
        }
      }
    }
  }

  v37.receiver = self;
  v37.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v37 touchesBegan:v6 withEvent:v7];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v18.receiver = self;
  v18.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  v6 = a3;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)&v18 touchesMoved:v6 withEvent:a4];
  LODWORD(a4) = [v6 containsObject:{self->_trackingTouch, v18.receiver, v18.super_class}];

  if (a4)
  {
    trackingTouch = self->_trackingTouch;
    v8 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
    [(UITouch *)trackingTouch locationInView:v8];
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

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained layerHost];
  v7 = [v6 asUIKitHost];

  v12.receiver = self;
  v12.super_class = CRLiOSRectangularMarqueeGestureRecognizer;
  if ([(CRLiOSRectangularMarqueeGestureRecognizer *)&v12 canPreventGestureRecognizer:v4])
  {
    [(CRLiOSRectangularMarqueeGestureRecognizer *)self minimumPressDuration];
    if (v8 <= 0.02)
    {
      v10 = [v7 doubleTapGestureRecognizer];
      v9 = v10 != v4;
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

- (void)updateAfterAutoscroll:(id)a3
{
  trackingTouch = self->_trackingTouch;
  v5 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self view];
  [(UITouch *)trackingTouch locationInView:v5];
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
  v4 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [v4 setShouldCenterResizeMarqueeRect:v3];

  v5 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_shouldInvertOriginalSelectionForModifierFlags:[(CRLiOSRectangularMarqueeGestureRecognizer *)self modifierFlags]];
  v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [v6 setShouldInvertOriginalSelection:v5];
}

- (void)p_updateTrackerWithUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLiOSRectangularMarqueeGestureRecognizer *)self p_setModifierFlags];
  v6 = [(CRLiOSRectangularMarqueeGestureRecognizer *)self marqueeTracker];
  [v6 setCurrentUnscaledDragPoint:{x, y}];
}

- (BOOL)p_isCanvasCurrentlyInQuickSelectMode
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v3 = [WeakRetained layerHost];
  v4 = [v3 asUIKitHost];
  v5 = [v4 isCurrentlyInQuickSelectMode];

  return v5;
}

- (CRLInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end