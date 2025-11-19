@interface CRLiOSRepRotateKnobGestureRecognizer
- (CGPoint)p_rotationCenterInNaturalSpace;
- (CGPoint)p_rotationCenterInParentSpace;
- (CGPoint)p_rotationCenterInUnscaledSpace;
- (CRLiOSRepRotateKnobGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (double)p_angleInRadiansForPoint:(CGPoint)a3;
- (unint64_t)p_standardKnobTagBeingDragged;
- (void)operationDidEnd;
- (void)p_updateTrackerStateAtUnscaledPoint:(CGPoint)a3;
- (void)reset;
- (void)setAllowedTouchTypes:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSRepRotateKnobGestureRecognizer

- (CRLiOSRepRotateKnobGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLiOSRepRotateKnobGestureRecognizer;
  v5 = [(CRLiOSRepRotateKnobGestureRecognizer *)&v9 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
    v8.receiver = v6;
    v8.super_class = CRLiOSRepRotateKnobGestureRecognizer;
    [(CRLiOSRepRotateKnobGestureRecognizer *)&v8 setAllowedTouchTypes:&off_1018E1320];
  }

  return v6;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CRLiOSRepRotateKnobGestureRecognizer;
  [(CRLiOSRepRotateKnobGestureRecognizer *)&v4 reset];
  [(CRLiOSRepRotateKnobGestureRecognizer *)self setTracker:0];
  [(CRLiOSRepRotateKnobGestureRecognizer *)self setRep:0];
  [(CRLiOSRepRotateKnobGestureRecognizer *)self setKnob:0];
  self->_rotatingAroundOppositeKnob = 0;
  self->_lastAngleInRadians = 0.0;
  v3 = CGPointZero;
  self->_unscaledRotationCenter = CGPointZero;
  self->_knobToTouchUnscaledOffset = v3;
  self->_repCenterInNaturalSpace = v3;
  self->_oppositeKnobPositionInNaturalSpace = xmmword_1014629F0;
}

- (void)setAllowedTouchTypes:(id)a3
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133F6AC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133F6C0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133F748();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLiOSRepRotateKnobGestureRecognizer setAllowedTouchTypes:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateKnobGestureRecognizer.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:78 isFatal:0 description:"Should not be trying to customize the touch types for this gesture!"];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F770();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133F784();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133F80C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSRepRotateKnobGestureRecognizer touchesBegan:withEvent:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateKnobGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:83 isFatal:0 description:"Only expect a single touch in this logic."];
  }

  if ([(CRLiOSRepRotateKnobGestureRecognizer *)self state])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F834();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133F85C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133F8E4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSRepRotateKnobGestureRecognizer touchesBegan:withEvent:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateKnobGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:84 isFatal:0 description:"Only expect a touch to begin when we are possible."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v15 = [WeakRetained dynamicOperationController];
  v16 = [WeakRetained tmCoordinator];
  if ((-[CRLiOSRepRotateKnobGestureRecognizer state](self, "state") || ![WeakRetained currentlyScrolling]) && (v67.receiver = self, v67.super_class = CRLiOSRepRotateKnobGestureRecognizer, -[CRLiOSRepRotateKnobGestureRecognizer touchesBegan:withEvent:](&v67, "touchesBegan:withEvent:", v6, v7), (-[CRLiOSRepRotateKnobGestureRecognizer modifierFlags](self, "modifierFlags") & 0x100000) != 0))
  {
    v17 = [v6 anyObject];
    v18 = [WeakRetained canvasView];
    [v17 locationInView:v18];
    [WeakRetained convertBoundsToUnscaledPoint:?];
    v20 = v19;
    v22 = v21;

    v66 = 0;
    v23 = [WeakRetained hitKnobAtPoint:sub_10042B6C0(objc_msgSend(v17 inputType:"type")) returningRep:{&v66, v20, v22}];
    v24 = v66;
    if (v23 && (sub_100345928([v23 tag]) & 0x3DE) != 0 && (objc_msgSend(v24, "layout"), v65 = v24, v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "supportsRotation"), v25, v24 = v65, v26))
    {
      v62 = v17;
      [(CRLiOSRepRotateKnobGestureRecognizer *)self setRep:v65];
      [(CRLiOSRepRotateKnobGestureRecognizer *)self setKnob:v23];
      [(CRLiOSRepRotateKnobGestureRecognizer *)self setState:1];
      [v65 centerForRotation];
      self->_repCenterInNaturalSpace.x = v27;
      self->_repCenterInNaturalSpace.y = v28;
      v29 = sub_100345B0C([(CRLiOSRepRotateKnobGestureRecognizer *)self p_standardKnobTagBeingDragged]);
      v30 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
      v31 = v29;
      v32 = [v30 knobForTag:v29];

      v64 = v32;
      if (v32)
      {
        [v32 position];
        self->_oppositeKnobPositionInNaturalSpace.x = v33;
        self->_oppositeKnobPositionInNaturalSpace.y = v34;
      }

      else if ((v31 - 1) <= 8)
      {
        v35 = v31;
        v36 = [CRLCanvasKnob alloc];
        v37 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
        v61 = [(CRLCanvasKnob *)v36 initWithType:0 position:v35 radius:v37 tag:CGPointZero.x onRep:CGPointZero.y, 15.0];

        v38 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
        v39 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
        [v39 trackingBoundsForStandardKnobs];
        [v38 positionOfStandardKnob:v61 forBounds:?];
        self->_oppositeKnobPositionInNaturalSpace.x = v40;
        self->_oppositeKnobPositionInNaturalSpace.y = v41;
      }

      v42 = [v65 interactiveCanvasController];
      v43 = [v42 customRotateTrackerForCurrentSelection];
      [(CRLiOSRepRotateKnobGestureRecognizer *)self setTracker:v43];

      v44 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];

      v17 = v62;
      if (!v44)
      {
        v45 = [[CRLCanvasRepRotateTracker alloc] initWithRep:v65];
        [(CRLiOSRepRotateKnobGestureRecognizer *)self setTracker:v45];
      }

      v46 = objc_opt_class();
      v47 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
      v48 = sub_100014370(v46, v47);

      if (v48)
      {
        [v48 setShouldRespectScaledHUDPosition:1];
        [v48 setShouldShowGuides:0];
      }

      v63 = v48;
      [(CRLiOSRepRotateKnobGestureRecognizer *)self addTarget:v15 action:"handleGestureRecognizer:"];
      [v16 registerTrackerManipulator:self];
      v24 = v65;
      if ([v16 takeControlWithTrackerManipulator:self])
      {
        if ([v15 isInPossibleDynamicOperation])
        {
          v49 = [v15 currentlyTransformingReps];
          [v15 stopTransformingReps:v49];
        }

        [v15 beginOperation];
        v50 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
        v51 = [v50 repsBeingRotated];
        [v15 startTransformingReps:v51];

        v24 = v65;
      }

      [v23 position];
      [v24 convertNaturalPointToUnscaledCanvas:?];
      self->_knobToTouchUnscaledOffset.x = sub_10011F31C(v52, v53, v20);
      self->_knobToTouchUnscaledOffset.y = v54;
      self->_rotatingAroundOppositeKnob = [(CRLiOSRepRotateKnobGestureRecognizer *)self p_shouldRotateAroundOppositeKnob];
      [(CRLiOSRepRotateKnobGestureRecognizer *)self p_rotationCenterInUnscaledSpace];
      v56 = v55;
      v58 = v57;
      self->_unscaledRotationCenter.x = v55;
      self->_unscaledRotationCenter.y = v57;
      v59 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
      [v59 setUnscaledCenterForRotation:{v56, v58}];

      [(CRLiOSRepRotateKnobGestureRecognizer *)self p_angleInRadiansForPoint:v20, v22];
      self->_lastAngleInRadians = v60;
      [(CRLiOSRepRotateKnobGestureRecognizer *)self p_updateTrackerStateAtUnscaledPoint:v20, v22];
    }

    else
    {
      [(CRLiOSRepRotateKnobGestureRecognizer *)self setState:5];
    }
  }

  else
  {
    [(CRLiOSRepRotateKnobGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14.receiver = self;
  v14.super_class = CRLiOSRepRotateKnobGestureRecognizer;
  v6 = a3;
  [(CRLiOSRepRotateKnobGestureRecognizer *)&v14 touchesMoved:v6 withEvent:a4];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v8 = [v6 anyObject];

  v9 = [WeakRetained canvasView];
  [v8 locationInView:v9];
  [WeakRetained convertBoundsToUnscaledPoint:?];
  v11 = v10;
  v13 = v12;

  [(CRLiOSRepRotateKnobGestureRecognizer *)self p_updateTrackerStateAtUnscaledPoint:v11, v13];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CRLiOSRepRotateKnobGestureRecognizer;
  [(CRLiOSRepRotateKnobGestureRecognizer *)&v9 touchesEnded:a3 withEvent:a4];
  if ([(CRLiOSRepRotateKnobGestureRecognizer *)self state])
  {
    v5 = 3;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F90C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133F934();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133F9BC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSRepRotateKnobGestureRecognizer touchesEnded:withEvent:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateKnobGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:184 isFatal:0 description:"Should have made a decision before touchesEnded"];

    v5 = 5;
  }

  [(CRLiOSRepRotateKnobGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = CRLiOSRepRotateKnobGestureRecognizer;
  [(CRLiOSRepRotateKnobGestureRecognizer *)&v6 touchesCancelled:a3 withEvent:a4];
  v5 = [(CRLiOSRepRotateKnobGestureRecognizer *)self state];
  if (v5 <= 5)
  {
    [(CRLiOSRepRotateKnobGestureRecognizer *)self setState:qword_101463C40[v5]];
  }
}

- (void)operationDidEnd
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v5 = [WeakRetained dynamicOperationController];

  if (self->_tracker)
  {
    [(CRLiOSRepRotateKnobGestureRecognizer *)self removeTarget:v5 action:"handleGestureRecognizer:"];
    tracker = self->_tracker;
    self->_tracker = 0;
  }
}

- (void)p_updateTrackerStateAtUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(CRLiOSRepRotateKnobGestureRecognizer *)self modifierFlags]& 0x20000) != 0)
  {
    v6 = 22.5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
  [v7 setSnapThreshold:v6];

  [(CRLiOSRepRotateKnobGestureRecognizer *)self p_angleInRadiansForPoint:x, y];
  v9 = v8;
  v10 = v8 - self->_lastAngleInRadians;
  v11 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
  [v11 addRotateDelta:v10];

  self->_lastAngleInRadians = v9;
  v12 = [(CRLiOSRepRotateKnobGestureRecognizer *)self p_shouldRotateAroundOppositeKnob];
  if (self->_rotatingAroundOppositeKnob != v12)
  {
    self->_rotatingAroundOppositeKnob = v12;
    v13 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
    [v13 currentTotalAngleOfRotationInRadians];
    v15 = v14;

    v16 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
    [v16 addRotateDelta:-v15];

    [(CRLiOSRepRotateKnobGestureRecognizer *)self p_rotationCenterInUnscaledSpace];
    v18 = v17;
    v20 = v19;
    self->_unscaledRotationCenter.x = v17;
    self->_unscaledRotationCenter.y = v19;
    v21 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
    [v21 setUnscaledCenterForRotation:{v18, v20}];

    [(CRLiOSRepRotateKnobGestureRecognizer *)self p_angleInRadiansForPoint:x, y];
    v23 = v22;
    v24 = [(CRLiOSRepRotateKnobGestureRecognizer *)self p_standardKnobTagBeingDragged];
    v25 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
    [v25 boundsForStandardKnobs];
    *&v30 = sub_100345F44(v24, v26, v27, v28, v29);
    v45 = v31;
    v46 = v30;

    v32 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
    v33 = [v32 layout];
    v34 = v33;
    if (v33)
    {
      [v33 originalTransformInRoot];
      v35 = v48;
      v36 = v49;
      v37 = v50;
    }

    else
    {
      v37 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
    }

    v47 = vaddq_f64(v37, vmlaq_n_f64(vmulq_n_f64(v36, *&v45), v35, *&v46));

    [(CRLiOSRepRotateKnobGestureRecognizer *)self p_angleInRadiansForPoint:*&v47];
    v39 = v23 - v38;
    v40 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
    [v40 addRotateDelta:v39];

    self->_lastAngleInRadians = v23;
  }

  v41 = objc_opt_class();
  v42 = [(CRLiOSRepRotateKnobGestureRecognizer *)self tracker];
  v43 = sub_100014370(v41, v42);

  if (v43)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    [WeakRetained convertUnscaledToBoundsPoint:{x, y}];
    [v43 setScaledHUDPosition:?];
  }
}

- (double)p_angleInRadiansForPoint:(CGPoint)a3
{
  v3 = sub_10011F31C(a3.x, a3.y, self->_unscaledRotationCenter.x);

  return sub_100120F68(v3, v4);
}

- (CGPoint)p_rotationCenterInUnscaledSpace
{
  [(CRLiOSRepRotateKnobGestureRecognizer *)self p_rotationCenterInNaturalSpace];
  v13 = v4;
  v14 = v3;
  v5 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
  v6 = [v5 layout];
  v7 = v6;
  if (v6)
  {
    [v6 originalTransformInRoot];
    v8 = v16;
    v9 = v17;
    v10 = v18;
  }

  else
  {
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v15 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v13), v8, v14));

  v12 = v15.f64[1];
  v11 = v15.f64[0];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)p_rotationCenterInParentSpace
{
  v3 = [(CRLiOSRepRotateKnobGestureRecognizer *)self rep];
  v4 = [v3 layout];
  v5 = [v4 originalGeometry];

  [(CRLiOSRepRotateKnobGestureRecognizer *)self p_rotationCenterInNaturalSpace];
  if (v5)
  {
    v13 = v7;
    v14 = v6;
    [v5 transform];
    v7 = v13;
    v6 = v14;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v10 = 0uLL;
    v9 = 0uLL;
    v8 = 0uLL;
  }

  v15 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v8, v7), v9, v6));

  v12 = v15.f64[1];
  v11 = v15.f64[0];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)p_rotationCenterInNaturalSpace
{
  if (self->_rotatingAroundOppositeKnob)
  {
    v2 = &OBJC_IVAR___CRLiOSRepRotateKnobGestureRecognizer__oppositeKnobPositionInNaturalSpace;
  }

  else
  {
    v2 = &OBJC_IVAR___CRLiOSRepRotateKnobGestureRecognizer__repCenterInNaturalSpace;
  }

  v3 = (self + *v2);
  v4 = *v3;
  v5 = v3[1];
  result.y = v5;
  result.x = v4;
  return result;
}

- (unint64_t)p_standardKnobTagBeingDragged
{
  v2 = [(CRLiOSRepRotateKnobGestureRecognizer *)self knob];
  v3 = [v2 tag];

  return v3;
}

@end