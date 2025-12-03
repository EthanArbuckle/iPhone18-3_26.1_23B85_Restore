@interface CRLiOSRepNudgeGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (CGRect)p_affectedRepsRect:(id)rect;
- (CRLCanvasLayoutManipulatingTracker)tracker;
- (CRLiOSRepNudgeGestureRecognizer)initWithInteractiveCanvasController:(id)controller;
- (id)p_ICC;
- (void)cancelBecauseOfRotation;
- (void)operationDidEnd;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLiOSRepNudgeGestureRecognizer

- (CRLiOSRepNudgeGestureRecognizer)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLiOSRepNudgeGestureRecognizer;
  v5 = [(CRLiOSRepNudgeGestureRecognizer *)&v12 initWithTarget:0 action:0];
  if (v5)
  {
    if (!controllerCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101322630();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101322658();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013226FC();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:69 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
    v9 = objc_alloc_init(NSMutableSet);
    allTouchesDown = v5->_allTouchesDown;
    v5->_allTouchesDown = v9;
  }

  return v5;
}

- (void)reset
{
  v15.receiver = self;
  v15.super_class = CRLiOSRepNudgeGestureRecognizer;
  [(CRLiOSRepNudgeGestureRecognizer *)&v15 reset];
  if (qword_101AD5A00 != -1)
  {
    sub_101322724();
  }

  v3 = off_1019ED810;
  if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
  {
    sub_10132274C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  self->_didNudge = 0;
  anchorTouch = self->_anchorTouch;
  self->_anchorTouch = 0;

  swipeTouch = self->_swipeTouch;
  self->_swipeTouch = 0;

  dragTracker = self->_dragTracker;
  self->_dragTracker = 0;

  [(NSMutableSet *)self->_allTouchesDown removeAllObjects];
  self->_numSwipeTouches = 0;
  v14 = CGPointZero;
  self->_anchorTouchStartLocationInWindow = CGPointZero;
  self->_swipeTouchStartLocationInCanvas = v14;
}

- (void)setState:(int64_t)state
{
  if ([(CRLiOSRepNudgeGestureRecognizer *)self state]!= state)
  {
    if (qword_101AD5A00 != -1)
    {
      sub_101322784();
    }

    v5 = off_1019ED810;
    if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
    {
      sub_101322798(v5, state);
    }
  }

  v6.receiver = self;
  v6.super_class = CRLiOSRepNudgeGestureRecognizer;
  [(CRLiOSRepNudgeGestureRecognizer *)&v6 setState:state];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v97.receiver = self;
  v97.super_class = CRLiOSRepNudgeGestureRecognizer;
  [(CRLiOSRepNudgeGestureRecognizer *)&v97 touchesBegan:beganCopy withEvent:event];
  p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
  layerHost = [p_ICC layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  if (-[CRLiOSRepNudgeGestureRecognizer state](self, "state") || ![p_ICC currentlyScrolling])
  {
    v16 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
    if (![(NSMutableSet *)self->_allTouchesDown count])
    {
      if (self->_anchorTouch)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101322838();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101322860();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013228F0();
        }

        v17 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v17);
        }

        v18 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]"];
        v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
        [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:113 isFatal:0 description:"anchor touch not null when first touch comes down"];
      }

      tmCoordinator = [p_ICC tmCoordinator];
      [tmCoordinator registerTrackerManipulator:self];
    }

    if ([(NSMutableSet *)self->_allTouchesDown count]== 1)
    {
      if (!self->_anchorTouch)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101322918();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101322940();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013229E4();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v21);
        }

        v22 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
        [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:119 isFatal:0 description:"invalid nil value for '%{public}s'", "_anchorTouch"];
      }

      anyObject = [(NSMutableSet *)self->_allTouchesDown anyObject];
      if (anyObject != self->_anchorTouch)
      {
        if (qword_101AD5A00 != -1)
        {
          sub_101322A0C();
        }

        v25 = off_1019ED810;
        if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
        {
          sub_101322A34(v25, v26, v27, v28, v29, v30, v31, v32);
        }

        v33 = self->_numSwipeTouches - 1;
        self->_numSwipeTouches = v33;
        if (v33)
        {
          v34 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101322A6C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101322A94(&self->_numSwipeTouches, v34);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101322B4C();
          }

          v35 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v35);
          }

          v36 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]"];
          v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
          [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:124 isFatal:0 description:"non-zero (%lu) swipe touches when there should be zero", self->_numSwipeTouches];

          v16 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
        }

        swipeTouch = self->_swipeTouch;
        self->_swipeTouch = 0;

        objc_storeStrong(&self->_anchorTouch, anyObject);
        [(UITouch *)self->_anchorTouch timestamp];
        self->_anchorTouchStartTimestamp = v39;
        anchorTouch = self->_anchorTouch;
        window = [(UITouch *)anchorTouch window];
        [(UITouch *)anchorTouch locationInView:window];
        self->_anchorTouchStartLocationInWindow.x = v42;
        self->_anchorTouchStartLocationInWindow.y = v43;
      }
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v84 = beganCopy;
    v44 = beganCopy;
    v45 = [v44 countByEnumeratingWithState:&v93 objects:v108 count:16];
    if (!v45)
    {
LABEL_96:

      [(NSMutableSet *)self->_allTouchesDown unionSet:v44];
      beganCopy = v84;
      goto LABEL_97;
    }

    v46 = v45;
    v47 = *v94;
    v85 = v44;
    v86 = *v94;
LABEL_50:
    v48 = 0;
    while (1)
    {
      if (*v94 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v93 + 1) + 8 * v48);
      v50 = v16[362];
      v51 = *(&self->super.super.isa + v50);
      if (v49 == v51)
      {
        goto LABEL_94;
      }

      if (v51)
      {
        break;
      }

      if ([*(*(&v93 + 1) + 8 * v48) tapCount] == 1)
      {
        v53 = [asiOSCVC hitRepWithTouch:v49];
        repForDragging = [v53 repForDragging];

        if (!repForDragging)
        {
          goto LABEL_74;
        }

        if (self->_swipeTouch)
        {
          v55 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101322CC0();
          }

          v56 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v101 = v55;
            v102 = 2082;
            v103 = "[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]";
            v104 = 2082;
            v105 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m";
            v106 = 1024;
            v107 = 143;
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d swipe touch not null when setting anchor touch", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101322CE8();
          }

          v57 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v82 = v57;
            v83 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v101 = v55;
            v102 = 2114;
            v103 = v83;
            _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v58 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer touchesBegan:withEvent:]"];
          v59 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
          [CRLAssertionHandler handleFailureInFunction:v58 file:v59 lineNumber:143 isFatal:0 description:"swipe touch not null when setting anchor touch"];

          v16 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
        }

        objc_storeStrong((&self->super.super.isa + v50), v49);
        [*(&self->super.super.isa + v50) timestamp];
        self->_anchorTouchStartTimestamp = v60;
        v61 = *(&self->super.super.isa + v50);
        window2 = [v61 window];
        [v61 locationInView:window2];
        self->_anchorTouchStartLocationInWindow.x = v63;
        self->_anchorTouchStartLocationInWindow.y = v64;

        v65 = *(&self->super.super.isa + v50);
        canvasView = [p_ICC canvasView];
        [v65 locationInView:canvasView];
        [p_ICC convertBoundsToUnscaledPoint:?];
        v69 = [repForDragging dragTypeAtCanvasPoint:objc_msgSend(*(&self->super.super.isa + v50) forTouchType:{"type"), v67, v68}];

        v44 = v85;
        if (!v69)
        {
LABEL_74:
          [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
        }

        goto LABEL_93;
      }

      [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
LABEL_94:
      if (v46 == ++v48)
      {
        v46 = [v44 countByEnumeratingWithState:&v93 objects:v108 count:16];
        if (!v46)
        {
          goto LABEL_96;
        }

        goto LABEL_50;
      }
    }

    if (self->_swipeTouch)
    {
      if (qword_101AD5A00 != -1)
      {
        sub_101322B74();
      }

      v52 = off_1019ED810;
      if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
      {
        sub_101322B9C(v98, self, &v99, v52);
      }

      ++self->_numSwipeTouches;
      goto LABEL_94;
    }

    v70 = [asiOSCVC hitRepWithTouch:*(*(&v93 + 1) + 8 * v48)];
    repForDragging2 = [v70 repForDragging];

    v72 = [asiOSCVC hitRepWithTouch:*(&self->super.super.isa + v50)];
    repForDragging3 = [v72 repForDragging];

    dynamicOperationController = [p_ICC dynamicOperationController];
    if (![dynamicOperationController isInOperation] && repForDragging2 && repForDragging2 == repForDragging3)
    {
      demandsExclusiveSelection = [repForDragging3 demandsExclusiveSelection];

      if ((demandsExclusiveSelection & 1) == 0)
      {
        if (qword_101AD5A00 != -1)
        {
          sub_101322BF0();
        }

        v44 = v85;
        v76 = off_1019ED810;
        if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
        {
          sub_101322C18(&v89, v90, v76);
        }

        [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
LABEL_92:

        v16 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
LABEL_93:
        v47 = v86;
        goto LABEL_94;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_swipeTouch, v49);
    if (qword_101AD5A00 != -1)
    {
      sub_101322C58();
    }

    v77 = off_1019ED810;
    if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
    {
      sub_101322C80(&v91, v92, v77);
    }

    self->_numSwipeTouches = 1;
    v78 = self->_swipeTouch;
    canvasView2 = [p_ICC canvasView];
    [(UITouch *)v78 locationInView:canvasView2];
    [p_ICC convertBoundsToUnscaledPoint:?];
    self->_swipeTouchStartLocationInCanvas.x = v80;
    self->_swipeTouchStartLocationInCanvas.y = v81;

    v44 = v85;
    goto LABEL_92;
  }

  if (qword_101AD5A00 != -1)
  {
    sub_101322D10();
  }

  v8 = off_1019ED810;
  if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
  {
    sub_101322D38(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
LABEL_97:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v20.receiver = self;
  v20.super_class = CRLiOSRepNudgeGestureRecognizer;
  movedCopy = moved;
  [(CRLiOSRepNudgeGestureRecognizer *)&v20 touchesMoved:movedCopy withEvent:event];
  LODWORD(event) = [movedCopy containsObject:{self->_anchorTouch, v20.receiver, v20.super_class}];

  if (event)
  {
    if (self->_swipeTouch)
    {
      anchorTouch = self->_anchorTouch;
      window = [(UITouch *)anchorTouch window];
      [(UITouch *)anchorTouch locationInView:window];
      v11 = sub_100120090(self->_anchorTouchStartLocationInWindow.x, self->_anchorTouchStartLocationInWindow.y, v9, v10);
      [(UITouch *)self->_anchorTouch timestamp];
      v14 = sub_100349760(0, v13, v12 - self->_anchorTouchStartTimestamp);

      if (v11 >= v14)
      {
        swipeTouch = self->_swipeTouch;
        self->_swipeTouch = 0;

        p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
        layerHost = [p_ICC layerHost];
        asiOSCVC = [layerHost asiOSCVC];

        repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
        if ([repDragGestureRecognizer state] == 5)
        {
          [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
        }
      }
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v65.receiver = self;
  v65.super_class = CRLiOSRepNudgeGestureRecognizer;
  [(CRLiOSRepNudgeGestureRecognizer *)&v65 touchesEnded:endedCopy withEvent:event];
  if (qword_101AD5A00 != -1)
  {
    sub_101322D70();
  }

  v7 = off_1019ED810;
  if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
  {
    sub_101322D98(self, v7, v8);
  }

  p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
  layerHost = [p_ICC layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  dynamicOperationController = [p_ICC dynamicOperationController];
  if (([endedCopy containsObject:self->_anchorTouch] & 1) == 0)
  {
    swipeTouch = self->_swipeTouch;
    if (swipeTouch)
    {
      canvasView = [p_ICC canvasView];
      [(UITouch *)swipeTouch locationInView:canvasView];
      [p_ICC convertBoundsToUnscaledPoint:?];
      v14 = v13;
      v16 = v15;

      if (sub_100120090(self->_swipeTouchStartLocationInCanvas.x, self->_swipeTouchStartLocationInCanvas.y, v14, v16) >= 14.0)
      {
        if (self->_didNudge)
        {
          goto LABEL_12;
        }

        self->_didNudge = 1;
        repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
        if (([repDragGestureRecognizer i_beginGestureExternally] & 1) == 0)
        {
          [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
          self->_didNudge = 0;
        }

        if (self->_didNudge)
        {
LABEL_12:
          tmCoordinator = [p_ICC tmCoordinator];
          v19 = [tmCoordinator takeControlWithTrackerManipulator:self];

          if (v19)
          {
            if ([(CRLiOSRepNudgeGestureRecognizer *)self state])
            {
              [(CRLiOSRepNudgeGestureRecognizer *)self setState:2];
            }

            else
            {
              [(CRLiOSRepNudgeGestureRecognizer *)self addTarget:dynamicOperationController action:"handleGestureRecognizer:"];
              [(CRLiOSRepNudgeGestureRecognizer *)self setState:1];
              if (([dynamicOperationController isInOperation] & 1) == 0)
              {
                +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101322E14();
                }

                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_101322E3C();
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101322ECC();
                }

                v20 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130DA10(v20);
                }

                v21 = [NSString stringWithUTF8String:"[CRLiOSRepNudgeGestureRecognizer touchesEnded:withEvent:]"];
                v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepNudgeGestureRecognizer.m"];
                [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:238 isFatal:0 description:"not in dynamic operation for nudge"];
              }
            }

            numSwipeTouches = self->_numSwipeTouches;
            if (numSwipeTouches <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = 10 * numSwipeTouches - 10;
            }

            v25 = sub_10011F31C(v14, v16, self->_swipeTouchStartLocationInCanvas.x);
            v26 = fabs(v25);
            v28 = fabs(v27);
            v29 = -v24;
            if (v27 <= 0.0)
            {
              v30 = -v24;
            }

            else
            {
              v30 = v24;
            }

            if (v25 > 0.0)
            {
              v29 = v24;
            }

            if (v26 > v28)
            {
              v31 = v29;
            }

            else
            {
              v31 = 0.0;
            }

            if (v26 > v28)
            {
              v32 = 0.0;
            }

            else
            {
              v32 = v30;
            }

            currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];
            [(CRLiOSRepNudgeGestureRecognizer *)self p_affectedRepsRect:currentlyTransformingReps];
            v35 = v34;

            v36 = v35 - v35;
            if (v36 > 0.5)
            {
              v36 = v36 + -1.0;
            }

            if (v31 == 0.0)
            {
              v37 = 0.0;
            }

            else
            {
              v37 = v36;
            }

            v38 = sub_10011F31C(v31, v32, v37);
            v40 = v39;
            v41 = objc_opt_class();
            tracker = [(CRLiOSRepNudgeGestureRecognizer *)self tracker];
            v43 = sub_100014370(v41, tracker);

            [v43 addUnscaledDragDelta:0 roundDeltaToViewScale:{v38, v40}];
            if (qword_101AD5A00 != -1)
            {
              sub_101322EF4();
            }

            v44 = off_1019ED810;
            if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
            {
              sub_101322F1C(v44, v38, v40);
            }

            anchorTouch = self->_anchorTouch;
            canvasView2 = [p_ICC canvasView];
            [(UITouch *)anchorTouch locationInView:canvasView2];
            [v43 setLogicalDragPoint:?];

            [v43 setShouldSnapToGuides:0];
            [v43 setShouldShowGuides:1];
          }
        }
      }

      v47 = self->_swipeTouch;
      self->_swipeTouch = 0;
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v48 = endedCopy;
  v49 = [v48 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v62;
    do
    {
      v52 = 0;
      do
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(v48);
        }

        if (*(*(&v61 + 1) + 8 * v52) != self->_anchorTouch)
        {
          --self->_numSwipeTouches;
          if (qword_101AD5A00 != -1)
          {
            sub_101322FCC();
          }

          v53 = off_1019ED810;
          if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
          {
            v54 = self->_numSwipeTouches;
            *buf = 134217984;
            v67 = v54;
            _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "removing swipe touch (%lu)", buf, 0xCu);
          }
        }

        v52 = v52 + 1;
      }

      while (v50 != v52);
      v50 = [v48 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v50);
  }

  [(NSMutableSet *)self->_allTouchesDown minusSet:v48];
  if (![(NSMutableSet *)self->_allTouchesDown count])
  {
    tmCoordinator2 = [p_ICC tmCoordinator];
    [tmCoordinator2 unregisterTrackerManipulator:self];

    if (self->_didNudge)
    {
      v56 = 3;
    }

    else
    {
      v56 = 5;
    }

    [(CRLiOSRepNudgeGestureRecognizer *)self setState:v56];
    v57 = self->_anchorTouch;
    self->_anchorTouch = 0;

    v58 = self->_swipeTouch;
    self->_swipeTouch = 0;
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v22.receiver = self;
  v22.super_class = CRLiOSRepNudgeGestureRecognizer;
  [(CRLiOSRepNudgeGestureRecognizer *)&v22 touchesEnded:cancelledCopy withEvent:event];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = cancelledCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        anchorTouch = self->_anchorTouch;
        if (*(*(&v18 + 1) + 8 * i) == anchorTouch)
        {
          self->_anchorTouch = 0;
        }

        else
        {
          --self->_numSwipeTouches;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)self->_allTouchesDown minusSet:v7, v18];
  if (![(NSMutableSet *)self->_allTouchesDown count])
  {
    p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
    tmCoordinator = [p_ICC tmCoordinator];
    [tmCoordinator unregisterTrackerManipulator:self];

    if (self->_didNudge)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    [(CRLiOSRepNudgeGestureRecognizer *)self setState:v15];
    v16 = self->_anchorTouch;
    self->_anchorTouch = 0;

    swipeTouch = self->_swipeTouch;
    self->_swipeTouch = 0;
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([recognizerCopy view], v5 = objc_claimAutoreleasedReturnValue(), -[CRLiOSRepNudgeGestureRecognizer p_ICC](self, "p_ICC"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "canvasView"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "enclosingScrollView"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v5 == v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLiOSRepNudgeGestureRecognizer;
    v9 = [(CRLiOSRepNudgeGestureRecognizer *)&v11 canBePreventedByGestureRecognizer:recognizerCopy];
  }

  return v9;
}

- (void)cancelBecauseOfRotation
{
  if (self->_anchorTouch)
  {
    [(CRLiOSRepNudgeGestureRecognizer *)self setState:5];
  }
}

- (CRLCanvasLayoutManipulatingTracker)tracker
{
  p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
  layerHost = [p_ICC layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  dragTracker = self->_dragTracker;
  if (!dragTracker)
  {
    repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
    repDragTracker = [repDragGestureRecognizer repDragTracker];
    v9 = self->_dragTracker;
    self->_dragTracker = repDragTracker;

    dragTracker = self->_dragTracker;
  }

  v10 = dragTracker;

  return dragTracker;
}

- (void)operationDidEnd
{
  if (qword_101AD5A00 != -1)
  {
    sub_101322FF4();
  }

  v3 = off_1019ED810;
  if (os_log_type_enabled(off_1019ED810, OS_LOG_TYPE_DEBUG))
  {
    sub_101323008(v3, self);
  }

  if (![(CRLiOSRepNudgeGestureRecognizer *)self state]|| [(CRLiOSRepNudgeGestureRecognizer *)self state]== 1 || [(CRLiOSRepNudgeGestureRecognizer *)self state]== 2)
  {
    [(CRLiOSRepNudgeGestureRecognizer *)self setState:3];
  }

  p_ICC = [(CRLiOSRepNudgeGestureRecognizer *)self p_ICC];
  dynamicOperationController = [p_ICC dynamicOperationController];
  [(CRLiOSRepNudgeGestureRecognizer *)self removeTarget:dynamicOperationController action:"handleGestureRecognizer:"];
}

- (id)p_ICC
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

- (CGRect)p_affectedRepsRect:(id)rect
{
  rectCopy = rect;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [rectCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(rectCopy);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        layout = [v12 layout];
        [layout alignmentFrame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        layout2 = [v12 layout];
        parent = [layout2 parent];
        v24 = parent;
        if (parent)
        {
          [parent transformInRoot];
        }

        else
        {
          memset(&v32, 0, sizeof(v32));
        }

        v38.origin.x = v15;
        v38.origin.y = v17;
        v38.size.width = v19;
        v38.size.height = v21;
        v39 = CGRectApplyAffineTransform(v38, &v32);
        x = sub_10011FC04(x, y, width, height, v39.origin.x, v39.origin.y, v39.size.width, v39.size.height);
        y = v25;
        width = v26;
        height = v27;
      }

      v9 = [rectCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

@end