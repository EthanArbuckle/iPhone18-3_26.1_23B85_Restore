@interface CRLiOSKnobDragGestureRecognizer
- (BOOL)p_hitRepIsValid:(id)valid;
- (CGPoint)p_pointInUnscaledCanvas;
- (CRLInteractiveCanvasController)icc;
- (CRLiOSKnobDragGestureRecognizer)initWithInteractiveCanvasController:(id)controller;
- (void)cancelBecauseOfRotation;
- (void)dealloc;
- (void)operationDidEnd;
- (void)p_triggerDelayedKnobTracking:(id)tracking;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateAfterAutoscroll:(id)autoscroll;
@end

@implementation CRLiOSKnobDragGestureRecognizer

- (CRLiOSKnobDragGestureRecognizer)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLiOSKnobDragGestureRecognizer;
  v5 = [(CRLiOSKnobDragGestureRecognizer *)&v8 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  v3.receiver = self;
  v3.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v3 dealloc];
}

- (void)setState:(int64_t)state
{
  [(CRLiOSKnobDragGestureRecognizer *)self state];
  v5.receiver = self;
  v5.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v5 setState:state];
}

- (void)reset
{
  v7.receiver = self;
  v7.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v7 reset];
  [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  touch = self->_touch;
  self->_touch = 0;

  secondTouch = self->_secondTouch;
  self->_secondTouch = 0;

  self->_knobToTouchOffset = CGPointZero;
  self->_originalPointInWindow = xmmword_1014629E0;
  lastHitRep = self->_lastHitRep;
  self->_lastHitRep = 0;

  self->_touchesMoved = 0;
  self->_knobTouchHasMoved = 0;
  self->_delayHasElapsed = 0;
  tracker = self->_tracker;
  self->_tracker = 0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
  layerHost = [v8 layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  dynamicOperationController = [v8 dynamicOperationController];
  tmCoordinator = [v8 tmCoordinator];
  if (!-[CRLiOSKnobDragGestureRecognizer state](self, "state") && [v8 currentlyScrolling] || ((objc_msgSend(dynamicOperationController, "isInOperation") & 1) != 0 || objc_msgSend(v8, "isInDynamicOperation")) && !-[CRLiOSKnobDragGestureRecognizer state](self, "state"))
  {
    [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
    goto LABEL_30;
  }

  v116.receiver = self;
  v116.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v116 touchesBegan:beganCopy withEvent:eventCopy];
  self->_touchesMoved = 0;
  lastHitRep = self->_lastHitRep;
  self->_lastHitRep = 0;

  if (![(CRLiOSKnobDragGestureRecognizer *)self state])
  {
    v114 = tmCoordinator;
    if ([beganCopy count] == 1)
    {
      allTouches = [eventCopy allTouches];
      if ([allTouches count] == 1)
      {
        touch = self->_touch;

        if (!touch)
        {
          v110 = asUIKitHost;
          anyObject = [beganCopy anyObject];
          v30 = self->_touch;
          self->_touch = anyObject;

          v31 = self->_touch;
          window = [(UITouch *)v31 window];
          [(UITouch *)v31 locationInView:window];
          self->_originalPointInWindow.x = v33;
          self->_originalPointInWindow.y = v34;

          v35 = sub_10042B6C0([(UITouch *)self->_touch type]);
          [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
          v37 = v36;
          v115 = 0;
          v38 = [v8 hitKnobAtPoint:v35 inputType:&v115 returningRep:?];
          obj = v115;
          v15 = v115;
          v111 = v38;
          if (v38 && -[UITouch tapCount](self->_touch, "tapCount") >= 2 && ![v38 worksWithMultipleTaps])
          {
            asUIKitHost = v110;
LABEL_57:
            tmCoordinator = v114;
LABEL_112:
            [(CRLiOSKnobDragGestureRecognizer *)self setState:5];

            goto LABEL_16;
          }

          v106 = v35;
          asUIKitHost = v110;
          v109 = v15;
          if ([(UITouch *)self->_touch type]== 3)
          {
            modifierFlags = [(CRLiOSKnobDragGestureRecognizer *)self modifierFlags];
            modifierFlags2 = [(CRLiOSKnobDragGestureRecognizer *)self modifierFlags];
            buttonMask = [(CRLiOSKnobDragGestureRecognizer *)self buttonMask];
            if ((modifierFlags & 0x100000) != 0)
            {
              v15 = v109;
              if ((sub_100345928([v111 tag]) & 0x3DE) != 0)
              {
                layout = [v109 layout];
                supportsRotation = [layout supportsRotation];

                v15 = v109;
                if (supportsRotation)
                {
                  goto LABEL_57;
                }
              }
            }

            else
            {
              v15 = v109;
              if (*&modifierFlags2 & 0x40000 | buttonMask & 2)
              {
                goto LABEL_57;
              }
            }
          }

          shouldSelectAndScrollWithApplePencil = [v110 shouldSelectAndScrollWithApplePencil];
          if (!v111 || (shouldSelectAndScrollWithApplePencil & 1) != 0)
          {
            if (!v111)
            {
LABEL_43:
              [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
              repForSelecting2 = v111;
              tmCoordinator = v114;
LABEL_15:

LABEL_16:
              goto LABEL_30;
            }
          }

          else if ([(UITouch *)self->_touch type]== 2)
          {
            freehandDrawingToolkit = [v8 freehandDrawingToolkit];
            isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

            v15 = v109;
            if (([v111 worksWithStylus] & 1) == 0 && (isLassoSelectionForMixedTypeEnabledInDrawingMode & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          knobValidatorBlock = self->_knobValidatorBlock;
          if (knobValidatorBlock && (knobValidatorBlock[2](knobValidatorBlock, v111, v15) & 1) == 0)
          {
            tmCoordinator = v114;
            if (![(CRLiOSKnobDragGestureRecognizer *)self state])
            {
              goto LABEL_112;
            }

            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10134D38C();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10134D3B4();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10134D43C();
            }

            v62 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130F3A8(v62);
            }

            v63 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
            v64 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
            [CRLAssertionHandler handleFailureInFunction:v63 file:v64 lineNumber:184 isFatal:0 description:"Our knob validator block expects to stop knob recognition before we have begun"];

            asUIKitHost = v110;
          }

          else
          {
            if ([v111 type] == 2)
            {
              goto LABEL_43;
            }

            objc_storeStrong(&self->_lastHitRep, obj);
            v48 = [v15 newTrackerForKnob:v111];
            tracker = self->_tracker;
            self->_tracker = v48;

            knob = [(CRLCanvasKnobTracker *)self->_tracker knob];

            v51 = self->_tracker;
            obja = knob;
            if (!v51)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134D464();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10134D48C();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10134D538();
              }

              v52 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10130F3A8(v52);
              }

              v53 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
              v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
              [CRLAssertionHandler handleFailureInFunction:v53 file:v54 lineNumber:197 isFatal:0 description:"invalid nil value for '%{public}s'", "_tracker"];

              v51 = self->_tracker;
              v15 = v109;
              asUIKitHost = v110;
              knob = obja;
            }

            [(CRLCanvasKnobTracker *)v51 setInputType:v106];
            [knob position];
            [v15 convertNaturalPointToUnscaledCanvas:?];
            v56 = v55;
            v58 = v57;
            p_knobToTouchOffset = &self->_knobToTouchOffset;
            if ([(CRLCanvasKnobTracker *)self->_tracker shouldUseKnobOffset])
            {
              x = sub_10011F31C(v56, v58, v37);
              p_knobToTouchOffset->x = x;
              self->_knobToTouchOffset.y = y;
            }

            else
            {
              *p_knobToTouchOffset = CGPointZero;
              x = p_knobToTouchOffset->x;
              y = self->_knobToTouchOffset.y;
            }

            [(CRLCanvasKnobTracker *)self->_tracker i_setKnobOffset:x, y];
            if (!self->_secondTouch || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
              [(CRLCanvasKnobTracker *)self->_tracker setCurrentPosition:sub_10011F334(v65, v66, p_knobToTouchOffset->x)];
              [(CRLiOSKnobDragGestureRecognizer *)self addTarget:dynamicOperationController action:"handleGestureRecognizer:"];
              [v114 registerTrackerManipulator:self];
              v67 = objc_opt_class();
              v112 = sub_100014370(v67, self->_tracker);
              if (v112 && self->_secondTouch)
              {
                v68 = [asUIKitHost hitRepWithTouch:?];
                repForSelecting = [v68 repForSelecting];

                v70 = [(CRLiOSKnobDragGestureRecognizer *)self p_hitRepIsValid:repForSelecting];
                if (v70)
                {
                  v71 = repForSelecting;
                }

                else
                {
                  v71 = 0;
                }

                [v112 setRepToMatch:v71];
                [v112 setShouldResizeFromCenter:v70 ^ 1];
                secondTouch = self->_secondTouch;
                canvasView = [v8 canvasView];
                [(UITouch *)secondTouch locationInView:canvasView];
                [v112 setSecondaryHUDPoint:?];
              }

              knob2 = [(CRLCanvasKnobTracker *)self->_tracker knob];
              dragType = [knob2 dragType];

              if (dragType <= 2)
              {
                repForSelecting2 = obja;
                if (dragType)
                {
                  tmCoordinator = v114;
                  if (dragType != 1)
                  {
                    v76 = dragType == 2;
                    v15 = v109;
                    if (v76)
                    {
                      [(CRLiOSKnobDragGestureRecognizer *)self setState:1];
                      [(CRLCanvasKnobTracker *)self->_tracker delay];
                      if (v77 != 0.0)
                      {
                        +[CRLAssertionHandler _atomicIncrementAssertCount];
                        if (qword_101AD5A10 != -1)
                        {
                          sub_10134D860();
                        }

                        v78 = off_1019EDA68;
                        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                        {
                          sub_10134D888(&self->_tracker, v78);
                        }

                        if (qword_101AD5A10 != -1)
                        {
                          sub_10134D94C();
                        }

                        v79 = off_1019EDA68;
                        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                        {
                          sub_10130F3A8(v79);
                        }

                        v80 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                        v81 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                        [(CRLCanvasKnobTracker *)self->_tracker delay];
                        [CRLAssertionHandler handleFailureInFunction:v80 file:v81 lineNumber:254 isFatal:0 description:"requesting a delay of %f", v82];

                        v15 = v109;
                        asUIKitHost = v110;
                        tmCoordinator = v114;
                        repForSelecting2 = obja;
                      }

                      if ([tmCoordinator takeControlWithTrackerManipulator:self])
                      {
                        if ([dynamicOperationController isInPossibleDynamicOperation])
                        {
                          currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];
                          [dynamicOperationController stopTransformingReps:currentlyTransformingReps];

                          v15 = v109;
                        }

                        [dynamicOperationController beginOperation];
                        repsToTransform = [(CRLCanvasKnobTracker *)self->_tracker repsToTransform];
                        [dynamicOperationController startTransformingReps:repsToTransform];
                      }
                    }

                    goto LABEL_156;
                  }

                  [(CRLCanvasKnobTracker *)self->_tracker delay];
                  if (v102 != 0.0)
                  {
                    goto LABEL_155;
                  }

                  +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134D974();
                  }

                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    sub_10134D99C();
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134DA24();
                  }

                  v103 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    sub_10130F3A8(v103);
                  }

                  v93 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                  v94 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                  v95 = v93;
                  v96 = v94;
                  v97 = 247;
                  goto LABEL_154;
                }

                [(CRLCanvasKnobTracker *)self->_tracker delay];
                tmCoordinator = v114;
                if (v91 == 0.0)
                {
                  +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134DA4C();
                  }

                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    sub_10134DA74();
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134DAFC();
                  }

                  v92 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    sub_10130F3A8(v92);
                  }

                  v93 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                  v94 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                  v95 = v93;
                  v96 = v94;
                  v97 = 241;
LABEL_154:
                  [CRLAssertionHandler handleFailureInFunction:v95 file:v96 lineNumber:v97 isFatal:0 description:"requesting a delay of 0"];

                  asUIKitHost = v110;
                  tmCoordinator = v114;
                  repForSelecting2 = obja;
                  goto LABEL_155;
                }

                goto LABEL_155;
              }

              repForSelecting2 = obja;
              if (dragType == 3)
              {
                [(CRLCanvasKnobTracker *)self->_tracker delay];
                tmCoordinator = v114;
                v15 = v109;
                if (v98 == 0.0)
                {
LABEL_156:

                  goto LABEL_15;
                }

                +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_10134D74C();
                }

                v99 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10134D774(&self->_tracker, v99);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10134D838();
                }

                v100 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130F3A8(v100);
                }

                v88 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                v89 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                [(CRLCanvasKnobTracker *)self->_tracker delay];
                [CRLAssertionHandler handleFailureInFunction:v88 file:v89 lineNumber:275 isFatal:0 description:"requesting a delay of %f", v101];
              }

              else
              {
                tmCoordinator = v114;
                if (dragType == 4)
                {
                  [(CRLCanvasKnobTracker *)self->_tracker delay];
                  if (v104 == 0.0)
                  {
                    +[CRLAssertionHandler _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_10134D674();
                    }

                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      sub_10134D69C();
                    }

                    if (qword_101AD5A10 != -1)
                    {
                      sub_10134D724();
                    }

                    v105 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      sub_10130F3A8(v105);
                    }

                    v93 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                    v94 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                    v95 = v93;
                    v96 = v94;
                    v97 = 281;
                    goto LABEL_154;
                  }

LABEL_155:
                  [(CRLCanvasKnobTracker *)self->_tracker delay];
                  [(CRLiOSKnobDragGestureRecognizer *)self p_requestDelayedKnobTracking:?];
                  v15 = v109;
                  goto LABEL_156;
                }

                v76 = dragType == 5;
                v15 = v109;
                if (!v76)
                {
                  goto LABEL_156;
                }

                [(CRLCanvasKnobTracker *)self->_tracker delay];
                if (v85 == 0.0)
                {
                  goto LABEL_156;
                }

                +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_10134D560();
                }

                v86 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10134D588(&self->_tracker, v86);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10134D64C();
                }

                v87 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130F3A8(v87);
                }

                v88 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer touchesBegan:withEvent:]"];
                v89 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
                [(CRLCanvasKnobTracker *)self->_tracker delay];
                [CRLAssertionHandler handleFailureInFunction:v88 file:v89 lineNumber:287 isFatal:0 description:"requesting a delay of %f", v90];
              }

              v15 = v109;
              asUIKitHost = v110;
              tmCoordinator = v114;
              repForSelecting2 = obja;
              goto LABEL_156;
            }

            v111 = obja;
          }

          tmCoordinator = v114;
          v15 = v109;
          goto LABEL_112;
        }
      }

      else
      {
      }
    }

    [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
    tmCoordinator = v114;
    goto LABEL_30;
  }

  if ([(CRLiOSKnobDragGestureRecognizer *)self state]== 1 || [(CRLiOSKnobDragGestureRecognizer *)self state]== 2)
  {
    v14 = objc_opt_class();
    v15 = sub_100014370(v14, self->_tracker);
    if (!v15 || self->_secondTouch)
    {
      goto LABEL_16;
    }

    anyObject2 = [beganCopy anyObject];
    v17 = self->_secondTouch;
    self->_secondTouch = anyObject2;

    [asUIKitHost hitRepWithTouch:self->_secondTouch];
    v113 = beganCopy;
    v18 = dynamicOperationController;
    v19 = eventCopy;
    v21 = v20 = tmCoordinator;
    repForSelecting2 = [v21 repForSelecting];

    v23 = [(CRLiOSKnobDragGestureRecognizer *)self p_hitRepIsValid:repForSelecting2];
    if (v23)
    {
      v24 = repForSelecting2;
    }

    else
    {
      v24 = 0;
    }

    [v15 setRepToMatch:v24];
    [v15 setShouldResizeFromCenter:v23 ^ 1];
    v25 = self->_secondTouch;
    canvasView2 = [v8 canvasView];
    [(UITouch *)v25 locationInView:canvasView2];
    [v15 setSecondaryHUDPoint:?];

    tmCoordinator = v20;
    eventCopy = v19;
    dynamicOperationController = v18;
    beganCopy = v113;
    goto LABEL_15;
  }

LABEL_30:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  v7 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  if (self->_touchesMoved)
  {
    goto LABEL_5;
  }

  type = [(UITouch *)self->_touch type];
  v9 = &unk_1014666D0;
  if (type != UITouchTypePencil)
  {
    v9 = &unk_1014666D8;
  }

  v10 = *v9;
  [(UITouch *)self->_touch locationInView:0];
  if (sub_100120090(v11, v12, self->_originalPointInWindow.x, self->_originalPointInWindow.y) >= v10)
  {
LABEL_5:
    v13 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
    layerHost = [v13 layerHost];
    asUIKitHost = [layerHost asUIKitHost];

    dynamicOperationController = [v13 dynamicOperationController];
    v56 = v13;
    tmCoordinator = [v13 tmCoordinator];
    self->_touchesMoved = 1;
    self->_knobTouchHasMoved = 1;
    if (!self->_delayHasElapsed)
    {
      knob = [(CRLCanvasKnobTracker *)self->_tracker knob];
      if ([knob dragType] == 4)
      {
        v18 = asUIKitHost;
        v19 = eventCopy;
        touch = self->_touch;
        window = [(UITouch *)touch window];
        v22 = touch;
        eventCopy = v19;
        asUIKitHost = v18;
        [(UITouch *)v22 locationInView:window];
        v25 = sub_100120090(self->_originalPointInWindow.x, self->_originalPointInWindow.y, v23, v24);

        v7 = &OBJC_IVAR___CRLEditorController_mEditorStack;
        if (v25 >= 14.0)
        {
          [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
          [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
        }
      }

      else
      {
      }
    }

    v58.receiver = self;
    v58.super_class = CRLiOSKnobDragGestureRecognizer;
    v54 = eventCopy;
    [(CRLiOSKnobDragGestureRecognizer *)&v58 touchesMoved:movedCopy withEvent:eventCopy];
    if (![movedCopy containsObject:*(&self->super.super.isa + v7[461])])
    {
      goto LABEL_24;
    }

    if ([(CRLiOSKnobDragGestureRecognizer *)self state])
    {
      if ([(CRLiOSKnobDragGestureRecognizer *)self state]== 1)
      {
        selfCopy2 = self;
        v27 = 2;
LABEL_22:
        [(CRLiOSKnobDragGestureRecognizer *)selfCopy2 setState:v27];
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    knob2 = [(CRLCanvasKnobTracker *)self->_tracker knob];
    if ([knob2 dragType] != 3)
    {
      knob3 = [(CRLCanvasKnobTracker *)self->_tracker knob];
      if ([knob3 dragType] != 1)
      {
        knob4 = [(CRLCanvasKnobTracker *)self->_tracker knob];
        dragType = [knob4 dragType];

        if (dragType != 5)
        {
          knob5 = [(CRLCanvasKnobTracker *)self->_tracker knob];
          dragType2 = [knob5 dragType];

          if (dragType2 || !self->_delayHasElapsed)
          {
            goto LABEL_23;
          }

          [(CRLiOSKnobDragGestureRecognizer *)self setState:1];
          goto LABEL_19;
        }

LABEL_18:
        [(CRLiOSKnobDragGestureRecognizer *)self setState:1];
        [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
LABEL_19:
        if (![tmCoordinator takeControlWithTrackerManipulator:self])
        {
          selfCopy2 = self;
          v27 = 5;
          goto LABEL_22;
        }

        [dynamicOperationController beginOperation];
        v30 = [NSSet setWithObject:self->_lastHitRep];
        [dynamicOperationController startTransformingReps:v30];

LABEL_23:
        [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
        [(CRLCanvasKnobTracker *)self->_tracker setCurrentPosition:sub_10011F334(v31, v32, self->_knobToTouchOffset.x)];
LABEL_24:
        modifierFlags = [(CRLiOSKnobDragGestureRecognizer *)self modifierFlags];
        v34 = objc_opt_class();
        v35 = sub_100014370(v34, self->_tracker);
        if (v35)
        {
          v36 = tmCoordinator;
          secondTouch = self->_secondTouch;
          if (secondTouch)
          {
            if ([movedCopy containsObject:self->_secondTouch])
            {
              v53 = asUIKitHost;
              v38 = [asUIKitHost hitRepWithTouch:self->_secondTouch];
              repForSelecting = [v38 repForSelecting];

              if ([(CRLiOSKnobDragGestureRecognizer *)self p_hitRepIsValid:repForSelecting])
              {
                repToMatch = [v35 repToMatch];

                if (repToMatch != repForSelecting)
                {
                  [v35 setRepToMatch:repForSelecting];
                }
              }

              v41 = self->_secondTouch;
              canvasView = [v56 canvasView];
              [(UITouch *)v41 locationInView:canvasView];
              [v35 setSecondaryHUDPoint:?];

              asUIKitHost = v53;
            }
          }

          else
          {
            [v35 setShouldResizeFromCenter:{(-[CRLiOSKnobDragGestureRecognizer modifierFlags](self, "modifierFlags") >> 19) & 1}];
            [v35 setPreserveAspectRatio:{(-[CRLiOSKnobDragGestureRecognizer modifierFlags](self, "modifierFlags") >> 17) & 1}];
          }

          [v35 setSuppressSecondaryHUD:secondTouch == 0];
          [v35 setSnapToGuides:(*&modifierFlags & 0x100000) == 0];
          tmCoordinator = v36;
        }

        v43 = objc_opt_class();
        v44 = sub_100014370(v43, self->_tracker);
        v45 = v44;
        if (v44)
        {
          [v44 setShouldSnapToMagnets:(*&modifierFlags & 0x100000) == 0];
          [v45 setSnapEnabled:(*&modifierFlags & 0x100000) == 0];
        }

        v46 = objc_opt_class();
        v47 = sub_100014370(v46, self->_tracker);
        v48 = v47;
        if (v47)
        {
          [v47 setSnapEnabled:(*&modifierFlags & 0x100000) == 0];
        }

        if ([(CRLiOSKnobDragGestureRecognizer *)self state]== 2 && [(CRLCanvasKnobTracker *)self->_tracker wantsAutoscroll])
        {
          [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
          [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:?];
        }

        eventCopy = v54;
        goto LABEL_41;
      }
    }

    goto LABEL_18;
  }

LABEL_41:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v8 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
  layerHost = [v8 layerHost];
  asUIKitHost = [layerHost asUIKitHost];
  v11 = objc_opt_class();
  v17 = sub_100303920(asUIKitHost, v11, 1, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLUIKitInteractionHost);

  dynamicOperationController = [v8 dynamicOperationController];
  tmCoordinator = [v8 tmCoordinator];
  v39.receiver = self;
  v39.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v39 touchesEnded:endedCopy withEvent:eventCopy];

  if (![endedCopy containsObject:self->_touch])
  {
    goto LABEL_22;
  }

  if (![(CRLiOSKnobDragGestureRecognizer *)self state])
  {
    knob = [(CRLCanvasKnobTracker *)self->_tracker knob];
    if ([knob dragType])
    {
      knob2 = [(CRLCanvasKnobTracker *)self->_tracker knob];
      dragType = [knob2 dragType];

      if (dragType != 3)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
    goto LABEL_22;
  }

LABEL_3:
  if (![(CRLiOSKnobDragGestureRecognizer *)self state]&& !self->_delayHasElapsed)
  {
    knob3 = [(CRLCanvasKnobTracker *)self->_tracker knob];
    if ([knob3 dragType] != 4)
    {
      knob4 = [(CRLCanvasKnobTracker *)self->_tracker knob];
      if ([knob4 dragType])
      {
        knob5 = [(CRLCanvasKnobTracker *)self->_tracker knob];
        dragType2 = [knob5 dragType];

        if (dragType2 != 1)
        {
          goto LABEL_5;
        }

LABEL_21:
        [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
        [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

LABEL_5:
  if (-[CRLiOSKnobDragGestureRecognizer state](self, "state") || (-[CRLCanvasKnobTracker knob](self->_tracker, "knob"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 dragType], v20, v21 != 5))
  {
    [(CRLiOSKnobDragGestureRecognizer *)self setState:3];
    [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
    [(CRLCanvasKnobTracker *)self->_tracker setCurrentPosition:sub_10011F334(v25, v26, self->_knobToTouchOffset.x)];
    [(CRLCanvasKnobTracker *)self->_tracker setDragEnding:1];
    [(CRLCanvasAutoscroll *)self->_autoscroll invalidate];
  }

  else
  {
    [(CRLiOSKnobDragGestureRecognizer *)self setState:3];
    [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
    [(CRLCanvasKnobTracker *)self->_tracker setCurrentPosition:sub_10011F334(v22, v23, self->_knobToTouchOffset.x)];
    [(CRLCanvasKnobTracker *)self->_tracker setDragEnding:1];
    if ([tmCoordinator takeControlWithTrackerManipulator:self])
    {
      [dynamicOperationController beginOperation];
      v24 = [NSSet setWithObject:self->_lastHitRep];
      [dynamicOperationController startTransformingReps:v24];
    }
  }

LABEL_22:
  if (self->_secondTouch && [endedCopy containsObject:?])
  {
    secondTouch = self->_secondTouch;
    self->_secondTouch = 0;

    v35 = objc_opt_class();
    v36 = sub_100014370(v35, self->_tracker);
    [v36 setRepToMatch:0];
    [v36 setShouldResizeFromCenter:0];
  }

  if (!self->_touchesMoved)
  {
    lastHitRep = self->_lastHitRep;
    if (lastHitRep)
    {
      if ([(CRLCanvasRep *)lastHitRep isSelected]&& [(CRLCanvasKnobTracker *)self->_tracker allowHUDToDisplay]&& [(CRLiOSKnobDragGestureRecognizer *)self state]== 3)
      {
        [v17 performSelector:"toggleDefaultEditUIForCurrentSelection" withObject:0 afterDelay:0.0];
        v38 = self->_lastHitRep;
        self->_lastHitRep = 0;
      }
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  v14.receiver = self;
  v14.super_class = CRLiOSKnobDragGestureRecognizer;
  [(CRLiOSKnobDragGestureRecognizer *)&v14 touchesCancelled:cancelledCopy withEvent:eventCopy];

  if ([cancelledCopy containsObject:self->_touch])
  {
    if (![(CRLiOSKnobDragGestureRecognizer *)self state])
    {
      selfCopy2 = self;
      v9 = 5;
      goto LABEL_9;
    }

    if ([(CRLiOSKnobDragGestureRecognizer *)self state]== 1 || [(CRLiOSKnobDragGestureRecognizer *)self state]== 2)
    {
      selfCopy2 = self;
      v9 = 4;
LABEL_9:
      [(CRLiOSKnobDragGestureRecognizer *)selfCopy2 setState:v9];
    }
  }

  else if ([cancelledCopy containsObject:self->_secondTouch])
  {
    secondTouch = self->_secondTouch;
    self->_secondTouch = 0;

    v11 = objc_opt_class();
    v12 = sub_100014370(v11, self->_tracker);
    [v12 setRepToMatch:0];
    [v12 setShouldResizeFromCenter:0];
  }

  lastHitRep = self->_lastHitRep;
  self->_lastHitRep = 0;
}

- (void)cancelBecauseOfRotation
{
  if (self->_tracker)
  {
    [(CRLiOSKnobDragGestureRecognizer *)self setState:5];
  }
}

- (void)operationDidEnd
{
  v20 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
  layerHost = [v20 layerHost];
  asUIKitHost = [layerHost asUIKitHost];
  v5 = objc_opt_class();
  v11 = sub_100303920(asUIKitHost, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLUIKitInteractionHost);

  dynamicOperationController = [v20 dynamicOperationController];
  tmCoordinator = [v20 tmCoordinator];
  v14 = tmCoordinator;
  if (self->_tracker)
  {
    controllingTM = [tmCoordinator controllingTM];
    if (controllingTM == self && !self->_touchesMoved && (lastHitRep = self->_lastHitRep) != 0 && [(CRLCanvasRep *)lastHitRep isSelected])
    {
      allowHUDToDisplay = [(CRLCanvasKnobTracker *)self->_tracker allowHUDToDisplay];

      if (allowHUDToDisplay)
      {
        [v11 performSelector:"toggleDefaultEditUIForCurrentSelection" withObject:0 afterDelay:0.0];
      }
    }

    else
    {
    }

    [(CRLiOSKnobDragGestureRecognizer *)self removeTarget:dynamicOperationController action:"handleGestureRecognizer:"];
    tracker = self->_tracker;
    self->_tracker = 0;

    [(CRLiOSKnobDragGestureRecognizer *)self p_cancelDelayedKnobTracking];
  }

  secondTouch = self->_secondTouch;
  if (secondTouch && !self->_touch)
  {
    self->_secondTouch = 0;
  }
}

- (void)p_triggerDelayedKnobTracking:(id)tracking
{
  v4 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
  dynamicOperationController = [v4 dynamicOperationController];
  tmCoordinator = [v4 tmCoordinator];
  self->_delayHasElapsed = 1;
  if ([(CRLiOSKnobDragGestureRecognizer *)self state])
  {
    if ([(CRLiOSKnobDragGestureRecognizer *)self state]!= 5)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134DB24();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134DB38(v8, self, v7);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134DC24();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer p_triggerDelayedKnobTracking:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
      v12 = sub_10043BF9C([(CRLiOSKnobDragGestureRecognizer *)self state]);
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:590 isFatal:0 description:"delay fired when knob GR in state %@", v12];

LABEL_47:
    }
  }

  else
  {
    tracker = self->_tracker;
    if (!tracker)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134DD10();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134DD24();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134DDAC();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v19);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer p_triggerDelayedKnobTracking:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:595 isFatal:0 description:"Delayed knob tracking timer fired when we have no tracker!"];
      goto LABEL_47;
    }

    knob = [(CRLCanvasKnobTracker *)tracker knob];
    dragType = [knob dragType];

    if (dragType <= 5)
    {
      if (((1 << dragType) & 0x2C) != 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134DC4C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134DC60();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134DCE8();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v16);
        }

        v17 = [NSString stringWithUTF8String:"[CRLiOSKnobDragGestureRecognizer p_triggerDelayedKnobTracking:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSKnobDragGestureRecognizer.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:603 isFatal:0 description:"shouldn't have delayed knob tracking!"];
      }

      else if (((1 << dragType) & 0x12) != 0 || self->_knobTouchHasMoved)
      {
        [(CRLiOSKnobDragGestureRecognizer *)self setState:1];
      }
    }

    if (-[CRLiOSKnobDragGestureRecognizer state](self, "state") == 1 && [tmCoordinator takeControlWithTrackerManipulator:self])
    {
      if ([dynamicOperationController isInPossibleDynamicOperation])
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];
        v21 = [currentlyTransformingReps countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v27;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v27 != v23)
              {
                objc_enumerationMutation(currentlyTransformingReps);
              }

              [*(*(&v26 + 1) + 8 * i) setShowKnobsDuringManipulation:0];
            }

            v22 = [currentlyTransformingReps countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v22);
        }

        currentlyTransformingReps2 = [dynamicOperationController currentlyTransformingReps];
        [dynamicOperationController stopTransformingReps:currentlyTransformingReps2];
      }

      [dynamicOperationController beginOperation];
      v10 = [(CRLCanvasKnobTracker *)self->_tracker rep];
      v11 = [NSSet setWithObject:v10];
      [dynamicOperationController startTransformingReps:v11];
      goto LABEL_47;
    }
  }
}

- (CRLInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  autoscrollCopy = autoscroll;
  [(CRLiOSKnobDragGestureRecognizer *)self p_pointInUnscaledCanvas];
  [(CRLCanvasKnobTracker *)self->_tracker setCurrentPosition:sub_10011F334(v5, v6, self->_knobToTouchOffset.x)];
  [(CRLCanvasKnobTracker *)self->_tracker updateAfterAutoscroll:autoscrollCopy];

  [(CRLiOSKnobDragGestureRecognizer *)self setState:2];
}

- (BOOL)p_hitRepIsValid:(id)valid
{
  validCopy = valid;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, self->_tracker);
  v7 = v6;
  if (!validCopy || ([v6 rep], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == validCopy))
  {
    v11 = 0;
  }

  else
  {
    [validCopy boundsForStandardKnobs];
    v11 = v10 > 1.0 && v9 > 1.0;
  }

  return v11;
}

- (CGPoint)p_pointInUnscaledCanvas
{
  v3 = [(CRLiOSKnobDragGestureRecognizer *)self icc];
  touch = self->_touch;
  canvasView = [v3 canvasView];
  [(UITouch *)touch locationInView:canvasView];
  [v3 convertBoundsToUnscaledPoint:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end