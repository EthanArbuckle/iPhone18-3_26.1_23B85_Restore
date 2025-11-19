@interface CRLiOSRepDragGestureRecognizer
- (BOOL)allowTrackerManipulatorToTakeControl:(id)a3;
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canDrag;
- (BOOL)i_beginGestureExternally;
- (BOOL)p_canBeginDrag;
- (BOOL)p_currentlyTransformingRepsAreDraggable;
- (CGPoint)currentPosition;
- (CRLInteractiveCanvasController)icc;
- (CRLiOSRepDragGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (CRLiOSRepDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)cancelBecauseOfRotation;
- (void)dealloc;
- (void)didRelinquishControl;
- (void)operationDidEnd;
- (void)p_beginConstraining;
- (void)p_beginGesture;
- (void)p_beginTracking;
- (void)p_createDelayCallback;
- (void)p_delayElapsed;
- (void)p_setTrackerPoints;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateAfterAutoscroll:(id)a3;
@end

@implementation CRLiOSRepDragGestureRecognizer

- (CRLiOSRepDragGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CRLiOSRepDragGestureRecognizer;
  v5 = [(CRLiOSRepDragGestureRecognizer *)&v18 initWithTarget:0 action:0];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135783C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101357864();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101357914();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:108 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->mICC, v4);
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    mOriginalPointsInWindow = v5->mOriginalPointsInWindow;
    v5->mOriginalPointsInWindow = v9;

    v11 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    mOriginalTimestamps = v5->mOriginalTimestamps;
    v5->mOriginalTimestamps = v11;

    v13 = objc_alloc_init(NSMutableSet);
    mTouchesDownOnReps = v5->mTouchesDownOnReps;
    v5->mTouchesDownOnReps = v13;

    v15 = objc_alloc_init(NSMutableSet);
    mTouchesDownOnCanvas = v5->mTouchesDownOnCanvas;
    v5->mTouchesDownOnCanvas = v15;

    v5->mDragState = 0;
  }

  return v5;
}

- (CRLiOSRepDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v4 = a3;
  v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018579E8);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v16 = v5;
    v17 = 2082;
    v18 = "[CRLiOSRepDragGestureRecognizer initWithTarget:action:]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m";
    v21 = 1024;
    v22 = 122;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101857A08);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v16 = v5;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer initWithTarget:action:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:122 isFatal:0 description:"Do not call method"];

  v12 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSRepDragGestureRecognizer initWithTarget:action:]"];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)dealloc
{
  [(CRLiOSRepDragGestureRecognizer *)self p_cancelDelayedStartTracking];
  v3.receiver = self;
  v3.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v3 dealloc];
}

- (void)reset
{
  if (qword_101AD5C90 != -1)
  {
    sub_10135793C();
  }

  v3 = off_1019EF740;
  if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
  {
    sub_101357950(v3);
  }

  v21.receiver = self;
  v21.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v21 reset];
  [(CRLiOSRepDragGestureRecognizer *)self p_cancelDelayedStartTracking];
  mConstrainingTimer = self->mConstrainingTimer;
  if (mConstrainingTimer)
  {
    [(NSTimer *)mConstrainingTimer invalidate];
    v5 = self->mConstrainingTimer;
    self->mConstrainingTimer = 0;
  }

  v6 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v7 = [v6 tmCoordinator];
  v8 = [v7 controllingTM];

  if (v8 == self)
  {
    v9 = [v6 tmCoordinator];
    [v9 relinquishTrackerManipulatorControl:self];
  }

  mTracker = self->mTracker;
  if (mTracker)
  {
    [(CRLCanvasRepDragTracker *)mTracker endPossibleRepDragGesture];
    v11 = [v6 dynamicOperationController];
    [(CRLiOSRepDragGestureRecognizer *)self removeTarget:v11 action:"handleGestureRecognizer:"];

    v12 = [v6 tmCoordinator];
    [v12 unregisterTrackerManipulator:self];

    v13 = self->mTracker;
    self->mTracker = 0;
  }

  mAutoscroll = self->mAutoscroll;
  if (mAutoscroll)
  {
    [(CRLCanvasAutoscroll *)mAutoscroll invalidate];
  }

  mTouch = self->mTouch;
  self->mTouch = 0;

  mRep = self->mRep;
  self->mRep = 0;

  self->mPassedDragThreshold = 0;
  self->mDragDelayElapsed = 0;
  self->mTouchDelta = CGPointZero;
  self->mEndedWithNudgeInControl = 0;
  self->mPossibleContentionWithSystemDrag = 0;
  self->mDragState = 0;
  if (self->mShouldCloseCommandGroupWhenOperationCompletes)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013579E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101357A0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101357A94();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer reset]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:170 isFatal:0 description:"Should close group before resetting"];

    v20 = [v6 commandController];
    [v20 closeGroup];

    self->mShouldCloseCommandGroupWhenOperationCompletes = 0;
  }

  [(NSMutableSet *)self->mTouchesDownOnReps removeAllObjects];
  [(NSMutableSet *)self->mTouchesDownOnCanvas removeAllObjects];
  self->mShouldConstrainDueToAdditionalTouches = 0;
}

- (void)setState:(int64_t)a3
{
  if ([(CRLiOSRepDragGestureRecognizer *)self state]!= a3)
  {
    if (qword_101AD5C90 != -1)
    {
      sub_101357ABC();
    }

    v5 = off_1019EF740;
    if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
    {
      sub_101357AD0(a3, v5);
    }

    v6 = [(CRLiOSRepDragGestureRecognizer *)self icc];
    v7 = [v6 tmCoordinator];

    if (a3 == 3)
    {
      v8 = [v7 controllingTM];

      if (v8 != self)
      {
        if (([v7 takeControlWithTrackerManipulator:self] & 1) == 0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101357B7C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101357BA4();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101357C2C();
          }

          v9 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v9);
          }

          v10 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer setState:]"];
          v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
          [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:186 isFatal:0 description:"drag failed to take control!"];
        }

        self->mEndedWithNudgeInControl = 1;
      }
    }
  }

  v12.receiver = self;
  v12.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v12 setState:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v113.receiver = self;
  v113.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v113 touchesBegan:v6 withEvent:a4];
  if (qword_101AD5C90 != -1)
  {
    sub_101357C54();
  }

  v7 = off_1019EF740;
  if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
  {
    sub_101357C7C(v7);
  }

  v8 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v9 = [v8 layerHost];
  v10 = [v9 asUIKitHost];

  v100 = v8;
  if (!-[CRLiOSRepDragGestureRecognizer state](self, "state") && [v8 currentlyScrolling])
  {
    if (qword_101AD5C90 != -1)
    {
      sub_101357E30();
    }

    if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
    {
      sub_101357E58();
    }

    [(CRLiOSRepDragGestureRecognizer *)self setState:5];
    goto LABEL_109;
  }

  v98 = v10;
  v11 = [v8 tmCoordinator];
  v103 = self;
  [v11 registerTrackerManipulator:self];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v94 = v6;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v110;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v110 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v109 + 1) + 8 * i);
        mOriginalPointsInWindow = v103->mOriginalPointsInWindow;
        v18 = [v16 window];
        [v16 locationInView:v18];
        v19 = [NSValue valueWithCGPoint:?];
        [(NSMapTable *)mOriginalPointsInWindow setObject:v19 forKey:v16];

        mOriginalTimestamps = v103->mOriginalTimestamps;
        [v16 timestamp];
        v21 = [NSNumber numberWithDouble:?];
        [(NSMapTable *)mOriginalTimestamps setObject:v21 forKey:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
    }

    while (v13);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obja = obj;
  v22 = [obja countByEnumeratingWithState:&v105 objects:v120 count:16];
  v24 = v103;
  v10 = v98;
  if (v22)
  {
    v25 = v22;
    v26 = *v106;
    *&v23 = 67109378;
    v92 = v23;
    v99 = *v106;
    do
    {
      v27 = 0;
      do
      {
        if (*v106 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v105 + 1) + 8 * v27);
        if (![(CRLiOSRepDragGestureRecognizer *)v24 state])
        {
          if (v24->mTouch)
          {
            v39 = [v10 hitRepWithTouch:v28];
            v40 = [v39 repForDragging];

            if (!v40)
            {
              goto LABEL_35;
            }

            if (v24->mRep == v40)
            {
              [(CRLiOSRepDragGestureRecognizer *)v24 setState:5];

              goto LABEL_94;
            }

            v41 = [v10 multiSelectGestureRecognizer];
            v42 = [v41 state];

            if (v42 != 5)
            {
              [(NSMutableSet *)v24->mTouchesDownOnReps addObject:v28];
              v24->mPassedDragThreshold = 0;
            }

            else
            {
LABEL_35:
              [(NSMutableSet *)v24->mTouchesDownOnCanvas addObject:v28];
              if (!v24->mConstrainingTimer)
              {
                if ([(NSMutableSet *)v24->mTouchesDownOnReps count]== 1)
                {
                  mTouch = v103->mTouch;
                  v44 = [v100 canvasView];
                  [(UITouch *)mTouch locationInView:v44];
                  [v100 convertBoundsToUnscaledPoint:?];
                  v103->mOnlyTouchDownLocation.x = v45;
                  v103->mOnlyTouchDownLocation.y = v46;
                  v24 = v103;

                  v103->mPassedDragThreshold = 0;
                }

                v47 = [NSTimer scheduledTimerWithTimeInterval:v24 target:"p_beginConstraining" selector:0 userInfo:0 repeats:0.2];
                mConstrainingTimer = v24->mConstrainingTimer;
                v24->mConstrainingTimer = v47;
              }
            }

            goto LABEL_48;
          }

          objc_storeStrong(&v24->mTouch, v28);
          p_x = &v24->mOnlyTouchDownLocation.x;
          v50 = v24->mTouch;
          v51 = [v100 canvasView];
          [(UITouch *)v50 locationInView:v51];
          [v100 convertBoundsToUnscaledPoint:?];
          v24->mOnlyTouchDownLocation.x = v52;
          v24->mOnlyTouchDownLocation.y = v53;

          v54 = sub_10042B6C0([(UITouch *)v24->mTouch type]);
          if ([(UITouch *)v24->mTouch tapCount]!= 1)
          {
            [(CRLiOSRepDragGestureRecognizer *)v24 setState:5];
            v10 = v98;
LABEL_48:
            v26 = v99;
            goto LABEL_49;
          }

          v55 = v24->mTouch;
          v56 = [v100 canvasView];
          [(UITouch *)v55 locationInView:v56];
          [v100 convertBoundsToUnscaledPoint:?];
          v58 = v57;
          v60 = v59;

          v61 = [v100 freehandDrawingToolkit];
          LOBYTE(v56) = [v61 currentToolAllowsDragForTouchType:-[UITouch type](v24->mTouch atUnscaledPoint:{"type"), v58, v60}];

          if ((v56 & 1) == 0)
          {
            if (qword_101AD5C90 != -1)
            {
              sub_101357D00();
            }

            v6 = v94;
            v10 = v98;
            if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
            {
              sub_101357D28();
            }

            [(CRLiOSRepDragGestureRecognizer *)v24 setState:5];
            goto LABEL_108;
          }

          v62 = [(UITouch *)v24->mTouch type]== 2 || [(UITouch *)v24->mTouch type]== 3;
          v63 = [v100 hitRep:v62 withPrecision:{*p_x, v24->mOnlyTouchDownLocation.y}];
          if (v62 && !v63)
          {
            v63 = [v100 hitRep:0 withPrecision:{*p_x, v24->mOnlyTouchDownLocation.y}];
          }

          v64 = v63;
          v65 = [v63 repForDragging];
          mRep = v103->mRep;
          v103->mRep = v65;

          v97 = v64;
          v67 = [v64 repForSelecting];
          v68 = v103->mRep;

          if (v67 != v68)
          {
            v10 = v98;
            if (qword_101AD5C90 != -1)
            {
              sub_101357D5C();
            }

            v6 = v94;
            if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
            {
              sub_101357D84();
            }

            [(CRLiOSRepDragGestureRecognizer *)v103 setState:5];

LABEL_108:
            goto LABEL_109;
          }

          v104 = 0;
          v69 = [v100 hitKnobAtPoint:v54 inputType:&v104 returningRep:{v24->mOnlyTouchDownLocation.x, v24->mOnlyTouchDownLocation.y}];
          v70 = v104;
          v71 = v70;
          v72 = v103->mRep;
          if (v72 && !v69)
          {
            v96 = v70;
            [(CRLCanvasRep *)v72 convertNaturalPointFromUnscaledCanvas:v24->mOnlyTouchDownLocation.x, v24->mOnlyTouchDownLocation.y];
            v95 = [(CRLCanvasRep *)v72 hitRepChrome:0 passingTest:?];
            v103->mHitRepChrome = v103->mRep == v95;
            [(NSMutableSet *)v103->mTouchesDownOnReps addObject:v28];
            v103->mDragType = [(CRLCanvasRep *)v103->mRep dragTypeAtCanvasPoint:[(UITouch *)v103->mTouch type] forTouchType:v24->mOnlyTouchDownLocation.x, v24->mOnlyTouchDownLocation.y];
            v73 = v103->mRep;
            v74 = [v100 canvasView];
            [v28 locationInView:v74];
            [v100 convertBoundsToUnscaledPoint:?];
            v103->mHUDAndGuidesType = [(CRLCanvasRep *)v73 dragHUDAndGuidesTypeAtCanvasPoint:?];

            v103->mDragState = 1;
            v75 = objc_opt_class();
            v24 = v103;
            v76 = [(CRLCanvasRep *)v103->mRep info];
            v77 = sub_100014370(v75, v76);

            if ([v77 allowedToBeDragAndDropped])
            {
              v78 = [v100 canvasEditor];
              if ([v78 canvasEditorCanCopyWithSender:0])
              {
                v79 = +[UIDevice crl_phoneDevice];

                if ((v79 & 1) == 0)
                {
                  v103->mPossibleContentionWithSystemDrag = 1;
                }
              }

              else
              {
              }
            }

            v10 = v98;
            v71 = v96;
            if (!v103->mHUDAndGuidesType && v103->mDragType)
            {
              v80 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101357DB8();
              }

              v81 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                *v115 = v80;
                *&v115[4] = 2082;
                *&v115[6] = "[CRLiOSRepDragGestureRecognizer touchesBegan:withEvent:]";
                v116 = 2082;
                v117 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m";
                v118 = 1024;
                v119 = 281;
                _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d attempted to not show HUD and guides during a drag", buf, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101357DE0();
              }

              v93 = v77;
              v82 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v88 = v80;
                v89 = v82;
                v90 = +[CRLAssertionHandler packedBacktraceString];
                *buf = v92;
                *v115 = v88;
                *&v115[4] = 2114;
                *&v115[6] = v90;
                _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v83 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer touchesBegan:withEvent:]"];
              v84 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
              [CRLAssertionHandler handleFailureInFunction:v83 file:v84 lineNumber:281 isFatal:0 description:"attempted to not show HUD and guides during a drag"];

              v77 = v93;
            }

            if (qword_101AD5C90 != -1)
            {
              sub_101357E08();
            }

            v85 = off_1019EF740;
            if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
            {
              mDragType = v103->mDragType;
              *buf = 134217984;
              *v115 = mDragType;
              _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "drag type %li", buf, 0xCu);
            }

            v86 = v103->mDragType;
            if (v86 > 1)
            {
              if (v86 != 2 && v86 != 3)
              {
                goto LABEL_87;
              }
            }

            else
            {
              if (!v86)
              {
                [(CRLiOSRepDragGestureRecognizer *)v103 setState:5];
                goto LABEL_87;
              }

              if (v86 != 1)
              {
LABEL_87:
                if (v103->mHUDAndGuidesType == 1)
                {
                  [(CRLiOSRepDragGestureRecognizer *)v103 p_beginTracking];
                }

                goto LABEL_90;
              }
            }

            [(CRLiOSRepDragGestureRecognizer *)v103 p_createDelayCallback];
            goto LABEL_87;
          }

          v24 = v103;
          [(CRLiOSRepDragGestureRecognizer *)v103 setState:5];
          v10 = v98;
LABEL_90:
          v26 = v99;

          goto LABEL_49;
        }

        v29 = [v10 hitRepWithTouch:v28];
        v30 = [v29 repForDragging];

        if (v30 && ([v10 multiSelectGestureRecognizer], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "state"), v31, v32 != 5))
        {
          [(NSMutableSet *)v24->mTouchesDownOnReps addObject:v28];
        }

        else
        {
          [(NSMutableSet *)v24->mTouchesDownOnCanvas addObject:v28];
          if (!v24->mConstrainingTimer)
          {
            if ([(NSMutableSet *)v24->mTouchesDownOnReps count]== 1)
            {
              v33 = v24->mTouch;
              v34 = [v100 canvasView];
              [(UITouch *)v33 locationInView:v34];
              v10 = v98;
              [v100 convertBoundsToUnscaledPoint:?];
              v24->mOnlyTouchDownLocation.x = v35;
              v24->mOnlyTouchDownLocation.y = v36;
              v26 = v99;

              v24->mPassedDragThreshold = 0;
            }

            v37 = [NSTimer scheduledTimerWithTimeInterval:v24 target:"p_beginConstraining" selector:0 userInfo:0 repeats:0.2];
            v38 = v24->mConstrainingTimer;
            v24->mConstrainingTimer = v37;
          }
        }

LABEL_49:
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v91 = [obja countByEnumeratingWithState:&v105 objects:v120 count:16];
      v25 = v91;
    }

    while (v91);
  }

LABEL_94:

  v6 = v94;
  if (v24->mTracker && v24->mTouch && [(CRLiOSRepDragGestureRecognizer *)v24 state]!= 5)
  {
    [(CRLiOSRepDragGestureRecognizer *)v24 p_setTrackerPoints];
  }

LABEL_109:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v92.receiver = self;
  v92.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v92 touchesMoved:v6 withEvent:a4];
  v7 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  if ([v6 containsObject:self->mTouch])
  {
    v8 = [(CRLiOSRepDragGestureRecognizer *)self state];
    if ((v8 - 1) >= 2)
    {
      if (!v8)
      {
        mDragType = self->mDragType;
        [(UITouch *)self->mTouch timestamp];
        v29 = v28;
        v30 = [(NSMapTable *)self->mOriginalTimestamps objectForKey:self->mTouch];
        [v30 doubleValue];
        v32 = v29 - v31;
        v33 = [(UITouch *)self->mTouch type];
        v36 = v32 < 0.02 && v33 == UITouchTypeDirect || v33 == UITouchTypeIndirectPointer;
        if (mDragType == 3 && v36)
        {
          v37 = 0.05;
        }

        else
        {
          v38 = v32;
          v37 = (fminf(fmaxf(v38, 0.0), 2.0) * 1.25 * 0.5 + 0.25) * 14.0;
        }

        v39 = [(NSMapTable *)self->mOriginalTimestamps objectForKeyedSubscript:self->mTouch];
        [(UITouch *)self->mTouch timestamp];
        v41 = v40;
        [v39 doubleValue];
        v43 = v41 - v42;
        if (!self->mPossibleContentionWithSystemDrag || (v43 < 3.0 ? (v44 = v43 <= 0.7) : (v44 = 1), v44))
        {
          v45 = [(NSMapTable *)self->mOriginalPointsInWindow objectForKey:self->mTouch];
          [v45 CGPointValue];
          v47 = v46;
          v49 = v48;
          mTouch = self->mTouch;
          v51 = [(UITouch *)mTouch window];
          [(UITouch *)mTouch locationInView:v51];
          self->mPassedDragThreshold = sub_100120090(v47, v49, v52, v53) >= v37;

          if (qword_101AD5C90 != -1)
          {
            sub_101357EE8();
          }

          v54 = off_1019EF740;
          if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
          {
            mPassedDragThreshold = self->mPassedDragThreshold;
            mOriginalPointsInWindow = self->mOriginalPointsInWindow;
            v56 = self->mTouch;
            v57 = v54;
            v58 = [(NSMapTable *)mOriginalPointsInWindow objectForKey:v56];
            [v58 CGPointValue];
            v60 = v59;
            v62 = v61;
            v63 = self->mTouch;
            v64 = [(UITouch *)v63 window];
            [(UITouch *)v63 locationInView:v64];
            v67 = sub_100120090(v60, v62, v65, v66);
            v68 = [(UITouch *)self->mTouch type];
            v71 = v43 < 0.02 && v68 == UITouchTypeDirect || v68 == UITouchTypeIndirectPointer;
            if (mDragType == 3 && v71)
            {
              v72 = 0.05;
            }

            else
            {
              v86 = v43;
              v72 = (fminf(fmaxf(v86, 0.0), 2.0) * 1.25 * 0.5 + 0.25) * 14.0;
            }

            *buf = 67109632;
            v95 = mPassedDragThreshold;
            v96 = 2048;
            v97 = v67;
            v98 = 2048;
            v99 = v72;
            _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "passed drag threshold: %i (%f >= %f?)", buf, 0x1Cu);
          }
        }

        else
        {
          if (qword_101AD5C90 != -1)
          {
            sub_101357E8C();
          }

          if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
          {
            sub_101357EB4();
          }
        }

        if ([(CRLiOSRepDragGestureRecognizer *)self p_canBeginDrag])
        {
          if (!self->mDragDelayElapsed)
          {
            [(CRLiOSRepDragGestureRecognizer *)self p_cancelDelayedStartTracking];
          }

          [(CRLiOSRepDragGestureRecognizer *)self p_beginGesture];
        }
      }
    }

    else if ([(NSMutableSet *)self->mTouchesDownOnReps count]== 1)
    {
      if (self->mPassedDragThreshold || (-[CRLiOSRepDragGestureRecognizer currentPosition](self, "currentPosition"), v11 = sub_100120090(self->mOnlyTouchDownLocation.x, self->mOnlyTouchDownLocation.y, v9, v10), -[UITouch timestamp](self->mTouch, "timestamp"), v13 = v12, -[NSMapTable objectForKey:](self->mOriginalTimestamps, "objectForKey:", self->mTouch), v14 = objc_claimAutoreleasedReturnValue(), [v14 doubleValue], v16 = v13 - v15, -[UITouch type](self->mTouch, "type"), v17 = v16, self->mPassedDragThreshold = v11 >= 14.0 * (fminf(fmaxf(v17, 0.0), 2.0) * 1.25 * 0.5 + 0.25), v14, self->mPassedDragThreshold))
      {
        if ([(CRLCanvasRepDragTracker *)self->mTracker didBeginDrag])
        {
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v18 = [v7 dynamicOperationController];
          v19 = [v18 currentlyTransformingReps];

          v20 = [v19 countByEnumeratingWithState:&v88 objects:v93 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v89;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v89 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v88 + 1) + 8 * i) fadeKnobsOut];
              }

              v21 = [v19 countByEnumeratingWithState:&v88 objects:v93 count:16];
            }

            while (v21);
          }

          v24 = [v7 tmCoordinator];
          [v24 takeControlWithTrackerManipulator:self];

          mConstrainingTimer = self->mConstrainingTimer;
          if (mConstrainingTimer)
          {
            [(NSTimer *)mConstrainingTimer invalidate];
            v26 = self->mConstrainingTimer;
            self->mConstrainingTimer = 0;

            [(CRLiOSRepDragGestureRecognizer *)self p_beginConstraining];
          }
        }
      }

      [(CRLiOSRepDragGestureRecognizer *)self setState:2];
      [(CRLiOSRepDragGestureRecognizer *)self currentPosition];
      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:?];
    }

    else
    {
      self->mPassedDragThreshold = 0;
    }

    v73 = [v7 canvasView];
    if (self->mTracker && self->mPassedDragThreshold)
    {
      [(UITouch *)self->mTouch locationInView:v73];
      v75 = v74;
      v77 = v76;
      [(UITouch *)self->mTouch previousLocationInView:v73];
      [v7 convertBoundsToUnscaledPoint:{sub_10011F31C(v75, v77, v78)}];
      [(CRLCanvasRepDragTracker *)self->mTracker addUnscaledDragDelta:1 roundDeltaToViewScale:?];
    }

    else
    {
      [(UITouch *)self->mTouch locationInView:v73];
      v80 = v79;
      v82 = v81;
      [(UITouch *)self->mTouch previousLocationInView:v73];
      v84 = sub_10011F31C(v80, v82, v83);
      self->mTouchDelta.x = sub_10011F334(self->mTouchDelta.x, self->mTouchDelta.y, v84);
      self->mTouchDelta.y = v85;
    }
  }

  if (self->mTracker)
  {
    [(CRLiOSRepDragGestureRecognizer *)self p_setTrackerPoints];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_101AD5C90 != -1)
  {
    sub_101357F10();
  }

  v8 = off_1019EF740;
  if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
  {
    sub_101357F24(v8);
  }

  v72.receiver = self;
  v72.super_class = CRLiOSRepDragGestureRecognizer;
  v59 = v7;
  [(CRLiOSRepDragGestureRecognizer *)&v72 touchesEnded:v6 withEvent:v7];
  v58 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v69;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        if ([(NSMutableSet *)self->mTouchesDownOnReps containsObject:v15, v58])
        {
          [(NSMutableSet *)self->mTouchesDownOnReps removeObject:v15];
          v12 = 1;
        }

        else if ([(NSMutableSet *)self->mTouchesDownOnCanvas containsObject:v15])
        {
          [(NSMutableSet *)self->mTouchesDownOnCanvas removeObject:v15];
          if (![(NSMutableSet *)self->mTouchesDownOnCanvas count])
          {
            self->mShouldConstrainDueToAdditionalTouches = 0;
            mConstrainingTimer = self->mConstrainingTimer;
            if (mConstrainingTimer)
            {
              [(NSTimer *)mConstrainingTimer invalidate];
              v17 = self->mConstrainingTimer;
              self->mConstrainingTimer = 0;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v18 = [(NSMutableSet *)self->mTouchesDownOnReps count];
  mTouchesDownOnReps = self->mTouchesDownOnReps;
  if (v18 == 1 && (v12 & 1) != 0)
  {
    v20 = [(NSMutableSet *)mTouchesDownOnReps anyObject];
    mTouch = self->mTouch;
    self->mTouch = v20;

    v22 = self->mTouch;
    v23 = v58;
    v24 = [v58 canvasView];
    [(UITouch *)v22 locationInView:v24];
    [v58 convertBoundsToUnscaledPoint:?];
    self->mOnlyTouchDownLocation.x = v25;
    self->mOnlyTouchDownLocation.y = v26;

    self->mPassedDragThreshold = 0;
  }

  else
  {
    v27 = [(NSMutableSet *)mTouchesDownOnReps count];
    v23 = v58;
    if (!v27)
    {
      v28 = [(CRLiOSRepDragGestureRecognizer *)self state];
      if ((v28 - 1) >= 2)
      {
        v36 = &unk_101AD5000;
        if (!v28)
        {
          if (!self->mPassedDragThreshold)
          {
            [(CRLiOSRepDragGestureRecognizer *)self currentPosition];
            v42 = sub_100120090(self->mOnlyTouchDownLocation.x, self->mOnlyTouchDownLocation.y, v40, v41);
            [(UITouch *)self->mTouch timestamp];
            v44 = v43;
            v45 = [(NSMapTable *)self->mOriginalTimestamps objectForKey:self->mTouch];
            [v45 doubleValue];
            v47 = v44 - v46;
            [(UITouch *)self->mTouch type];
            v48 = v47;
            self->mPassedDragThreshold = v42 >= 14.0 * (fminf(fmaxf(v48, 0.0), 2.0) * 1.25 * 0.5 + 0.25) * 3.0;
          }

          if ([(CRLiOSRepDragGestureRecognizer *)self p_canBeginDrag])
          {
            [(CRLiOSRepDragGestureRecognizer *)self p_beginGesture];
            v49 = self;
            v50 = 3;
          }

          else
          {
            v49 = self;
            v50 = 5;
          }

          [(CRLiOSRepDragGestureRecognizer *)v49 setState:v50];
        }
      }

      else
      {
        [(CRLiOSRepDragGestureRecognizer *)self setState:3];
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v29 = [v58 dynamicOperationController];
        v30 = [v29 currentlyTransformingReps];

        v31 = [v30 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v65;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v65 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v64 + 1) + 8 * j);
              [v35 fadeKnobsIn];
              [v35 setShowKnobsDuringManipulation:0];
            }

            v32 = [v30 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v32);
        }

        v36 = &unk_101AD5000;
        if ((v12 & 1) != 0 && self->mPassedDragThreshold)
        {
          v37 = [v58 canvasEditor];
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            v39 = [v58 canvasEditor];
            [v39 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
          }
        }
      }

      if (v36[402] != -1)
      {
        sub_101357FA8();
      }

      v51 = off_1019EF740;
      if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
      {
        sub_101357FD0(v51);
      }
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = v9;
  v53 = [v52 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v61;
    do
    {
      for (k = 0; k != v54; k = k + 1)
      {
        if (*v61 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v60 + 1) + 8 * k);
        [(NSMapTable *)self->mOriginalPointsInWindow removeObjectForKey:v57, v58];
        [(NSMapTable *)self->mOriginalTimestamps removeObjectForKey:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v54);
  }

  if (self->mTracker)
  {
    [(CRLiOSRepDragGestureRecognizer *)self p_setTrackerPoints];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v35.receiver = self;
  v35.super_class = CRLiOSRepDragGestureRecognizer;
  [(CRLiOSRepDragGestureRecognizer *)&v35 touchesCancelled:v6 withEvent:a4];
  v26 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([(NSMutableSet *)self->mTouchesDownOnReps containsObject:v12])
        {
          [(NSMutableSet *)self->mTouchesDownOnReps removeObject:v12];
          if ([(NSMutableSet *)self->mTouchesDownOnReps count])
          {
            continue;
          }

          v13 = [(CRLiOSRepDragGestureRecognizer *)self state];
          if ((v13 - 1) < 2)
          {
            v14 = self;
            v15 = 4;
LABEL_18:
            [(CRLiOSRepDragGestureRecognizer *)v14 setState:v15];
            continue;
          }

          if (v13)
          {
            v14 = self;
            v15 = 5;
            goto LABEL_18;
          }

          [(CRLiOSRepDragGestureRecognizer *)self setState:5];
          mTracker = self->mTracker;
          if (mTracker)
          {
            [(CRLCanvasRepDragTracker *)mTracker endPossibleRepDragGesture];
            v19 = [v26 dynamicOperationController];
            [(CRLiOSRepDragGestureRecognizer *)self removeTarget:v19 action:"handleGestureRecognizer:"];

            v17 = self->mTracker;
          }

          else
          {
            v17 = 0;
          }

          self->mTracker = 0;
          goto LABEL_21;
        }

        if ([(NSMutableSet *)self->mTouchesDownOnCanvas containsObject:v12])
        {
          [(NSMutableSet *)self->mTouchesDownOnCanvas removeObject:v12];
          if (![(NSMutableSet *)self->mTouchesDownOnCanvas count])
          {
            self->mShouldConstrainDueToAdditionalTouches = 0;
            mConstrainingTimer = self->mConstrainingTimer;
            if (mConstrainingTimer)
            {
              [(NSTimer *)mConstrainingTimer invalidate];
              v17 = self->mConstrainingTimer;
              self->mConstrainingTimer = 0;
LABEL_21:

              continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        [(NSMapTable *)self->mOriginalPointsInWindow removeObjectForKey:v25];
        [(NSMapTable *)self->mOriginalTimestamps removeObjectForKey:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }
}

- (CGPoint)currentPosition
{
  v3 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  mTouch = self->mTouch;
  v5 = [v3 canvasView];
  [(UITouch *)mTouch locationInView:v5];
  [v3 convertBoundsToUnscaledPoint:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)canDrag
{
  if (!self->mPassedDragThreshold || [(NSMutableSet *)self->mTouchesDownOnReps count]!= 1)
  {
    return 0;
  }

  v3 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v4 = [v3 dynamicOperationController];
  v5 = [v4 currentlyTransformingReps];
  v6 = [v5 count] != 0;

  return v6;
}

- (void)cancelBecauseOfRotation
{
  if (self->mTracker || [(NSMutableSet *)self->mTouchesDownOnReps count])
  {
    [(CRLiOSRepDragGestureRecognizer *)self setState:5];
    v4 = [(CRLiOSRepDragGestureRecognizer *)self icc];
    v3 = [v4 tmCoordinator];
    [v3 takeControlWithTrackerManipulator:self];
  }
}

- (void)didRelinquishControl
{
  mConstrainingTimer = self->mConstrainingTimer;
  if (mConstrainingTimer)
  {
    [(NSTimer *)mConstrainingTimer invalidate];
    v4 = self->mConstrainingTimer;
    self->mConstrainingTimer = 0;
  }

  if ([(NSMutableSet *)self->mTouchesDownOnReps count]== 1)
  {
    mTouch = self->mTouch;
    v6 = [(NSMutableSet *)self->mTouchesDownOnReps anyObject];

    if (mTouch != v6)
    {
      v7 = [(NSMutableSet *)self->mTouchesDownOnReps anyObject];
      v8 = self->mTouch;
      self->mTouch = v7;
    }

    v13 = [(CRLiOSRepDragGestureRecognizer *)self icc];
    v9 = self->mTouch;
    v10 = [v13 canvasView];
    [(UITouch *)v9 locationInView:v10];
    [v13 convertBoundsToUnscaledPoint:?];
    self->mOnlyTouchDownLocation.x = v11;
    self->mOnlyTouchDownLocation.y = v12;

    self->mPassedDragThreshold = 0;
  }
}

- (BOOL)allowTrackerManipulatorToTakeControl:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v6 = [v5 layerHost];
  v7 = [v6 asUIKitHost];

  if (v4)
  {
    v8 = [v7 multiSelectGestureRecognizer];
    if ([v8 state] == 2)
    {
      v9 = [v7 knobDragGestureRecognizer];

      if (v9 == v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v10 = [v7 knobDragGestureRecognizer];
    if (v10 == v4)
    {
      mHitRepChrome = self->mHitRepChrome;

      if (mHitRepChrome)
      {
LABEL_15:
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([(CRLiOSRepDragGestureRecognizer *)self state]== 3)
    {
      v12 = [v7 nudgeGestureRecognizer];

      if (v12 == v4)
      {
        goto LABEL_15;
      }
    }

    if ([(CRLiOSRepDragGestureRecognizer *)self state]== 2)
    {
      v13 = [v7 nudgeGestureRecognizer];
      if (v13 == v4)
      {
        mShouldConstrainDueToAdditionalTouches = self->mShouldConstrainDueToAdditionalTouches;

        v14 = !mShouldConstrainDueToAdditionalTouches;
        goto LABEL_16;
      }
    }
  }

  v14 = 1;
LABEL_16:

  return v14 & 1;
}

- (void)operationDidEnd
{
  mTracker = self->mTracker;
  if (mTracker)
  {
    [(CRLCanvasRepDragTracker *)mTracker endPossibleRepDragGesture];
    v4 = [(CRLiOSRepDragGestureRecognizer *)self icc];
    v5 = [v4 dynamicOperationController];
    [(CRLiOSRepDragGestureRecognizer *)self removeTarget:v5 action:"handleGestureRecognizer:"];

    v6 = self->mTracker;
    self->mTracker = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v4 dynamicOperationController];
    v8 = [v7 currentlyTransformingReps];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [v13 fadeKnobsIn];
          [v13 setShowKnobsDuringManipulation:0];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    if (self->mShouldCloseCommandGroupWhenOperationCompletes)
    {
      v14 = [v4 commandController];
      [v14 closeGroup];

      self->mShouldCloseCommandGroupWhenOperationCompletes = 0;
    }
  }
}

- (CRLInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->mICC);

  return WeakRetained;
}

- (void)updateAfterAutoscroll:(id)a3
{
  if (self->mTouch)
  {
    [a3 lastAutoscrollDelta];
    [(CRLCanvasRepDragTracker *)self->mTracker addUnscaledDragDelta:1 roundDeltaToViewScale:?];
    [(CRLiOSRepDragGestureRecognizer *)self p_setTrackerPoints];

    [(CRLiOSRepDragGestureRecognizer *)self setState:2];
  }
}

- (BOOL)p_canBeginDrag
{
  v3 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v4 = [v3 isInDynamicOperation];

  if ((v4 & 1) != 0 || ![(CRLiOSRepDragGestureRecognizer *)self p_currentlyTransformingRepsAreDraggable])
  {
    goto LABEL_8;
  }

  mDragType = self->mDragType;
  if ((mDragType - 3) < 2)
  {
    v8 = 40;
    goto LABEL_11;
  }

  if (mDragType == 2)
  {
    if (self->mPassedDragThreshold)
    {
LABEL_13:
      v6 = 1;
      return v6 & 1;
    }

    v8 = 41;
LABEL_11:
    v6 = *(&self->super.super.isa + v8);
    return v6 & 1;
  }

  if (mDragType == 1 && self->mPassedDragThreshold && self->mDragDelayElapsed)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = 0;
  return v6 & 1;
}

- (BOOL)p_currentlyTransformingRepsAreDraggable
{
  v3 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v4 = [v3 dynamicOperationController];
  v5 = [v4 isInPossibleDynamicOperation];

  if (!v5)
  {
    v17 = [v3 infosForCurrentSelectionPath];
    v8 = [v17 count] != 0;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v3 infosForCurrentSelectionPath];
    v18 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v26;
LABEL_14:
    v21 = 0;
    while (1)
    {
      if (*v26 != v20)
      {
        objc_enumerationMutation(v10);
      }

      v22 = [v3 repForInfo:*(*(&v25 + 1) + 8 * v21)];
      v23 = [v22 repForDragging];

      if (v22 != v23)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v19)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

LABEL_21:
    v8 = 0;
    goto LABEL_24;
  }

  v6 = [v3 dynamicOperationController];
  v7 = [v6 currentlyTransformingReps];
  v8 = [v7 count] != 0;

  v9 = [v3 dynamicOperationController];
  v10 = [v9 currentlyTransformingReps];

  if (![v10 containsObject:self->mRep])
  {
    goto LABEL_21;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v10;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 repForDragging];

        if (v15 != v16)
        {
          v8 = 0;
          goto LABEL_23;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

LABEL_24:
  return v8;
}

- (void)p_createDelayCallback
{
  if (((self->mDragType - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v2 = &qword_1014666F0;
  }

  else
  {
    v2 = &qword_101466718;
  }

  [(CRLiOSRepDragGestureRecognizer *)self performSelector:"p_delayElapsed" withObject:0 afterDelay:*v2];
}

- (void)p_delayElapsed
{
  if ([(CRLiOSRepDragGestureRecognizer *)self state]!= 5)
  {
    if (qword_101AD5C90 != -1)
    {
      sub_101358064();
    }

    if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
    {
      sub_101358078();
    }

    self->mDragDelayElapsed = 1;
    if (self->mPassedDragThreshold && self->mDragType == 1)
    {
      if (qword_101AD5C90 != -1)
      {
        sub_1013580AC();
      }

      if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
      {
        sub_1013580D4();
      }

      [(CRLiOSRepDragGestureRecognizer *)self setState:5];
    }

    else if ([(CRLiOSRepDragGestureRecognizer *)self p_canBeginDrag])
    {
      [(CRLiOSRepDragGestureRecognizer *)self p_beginGesture];
    }

    else if (self->mHUDAndGuidesType == 2)
    {
      [(CRLiOSRepDragGestureRecognizer *)self p_beginTracking];
    }
  }
}

- (void)p_beginGesture
{
  if (qword_101AD5C90 != -1)
  {
    sub_101358108();
  }

  if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
  {
    sub_10135811C();
  }

  if (!self->mTracker)
  {
    [(CRLiOSRepDragGestureRecognizer *)self p_beginTracking];
  }

  if (([(CRLiOSRepDragGestureRecognizer *)self modifierFlags]& 0x80000) != 0 && [(CRLCanvasRepDragTracker *)self->mTracker insertInfosAndUpdateDragForDuplicatingDragIfAppropriate])
  {
    self->mShouldCloseCommandGroupWhenOperationCompletes = 1;
    v3 = [(CRLCanvasRepDragTracker *)self->mTracker rep];
    mRep = self->mRep;
    self->mRep = v3;
  }

  [(CRLiOSRepDragGestureRecognizer *)self setState:1];
  self->mDragState = 2;
  v5 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  v6 = [v5 dynamicOperationController];
  if (([v6 isInOperation] & 1) == 0)
  {
    [v6 beginOperation];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 currentlyTransformingReps];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 setShowKnobsDuringManipulation:1];
        [v12 turnKnobsOn];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  mTracker = self->mTracker;
  p_mTouchDelta = &self->mTouchDelta;
  [v5 convertBoundsToUnscaledPoint:{p_mTouchDelta->x, p_mTouchDelta->y}];
  [(CRLCanvasRepDragTracker *)mTracker addUnscaledDragDelta:1 roundDeltaToViewScale:?];
  *p_mTouchDelta = CGPointZero;
}

- (void)p_beginTracking
{
  if (qword_101AD5C90 != -1)
  {
    sub_101358150();
  }

  if (os_log_type_enabled(off_1019EF740, OS_LOG_TYPE_DEBUG))
  {
    sub_101358164();
  }

  if (!self->mTracker)
  {
    v3 = [(CRLiOSRepDragGestureRecognizer *)self icc];
    v4 = [v3 layerHost];
    v5 = [v4 asUIKitHost];

    v6 = [v3 dynamicOperationController];
    v7 = [v3 tmCoordinator];
    v8 = [[CRLCanvasRepDragTracker alloc] initWithRep:self->mRep];
    mTracker = self->mTracker;
    self->mTracker = v8;

    [(CRLiOSRepDragGestureRecognizer *)self addTarget:v6 action:"handleGestureRecognizer:"];
    if (self->mHitRepChrome && ([v6 isInOperation] & 1) != 0)
    {
      v10 = [v7 controllingTM];
      v11 = [v5 knobDragGestureRecognizer];

      v12 = [v7 takeControlWithTrackerManipulator:self];
      if (v10 == v11 && v12)
      {
        [v7 relinquishTrackerManipulatorControl:self];
        [v7 unregisterTrackerManipulator:self];
        v13 = [v6 currentlyTransformingReps];
        v14 = [NSSet setWithSet:v13];

        [v6 cancelOperation];
        [v7 registerTrackerManipulator:self];
        [v7 takeControlWithTrackerManipulator:self];
        [v6 beginPossibleDynamicOperation];
        [v6 startTransformingReps:v14];
      }
    }

    else
    {
      [v7 takeControlWithTrackerManipulator:self];
    }

    if (!self->mTracker)
    {
      goto LABEL_37;
    }

    [(CRLiOSRepDragGestureRecognizer *)self p_setTrackerPoints];
    if (([v6 isInOperation] & 1) == 0 && (objc_msgSend(v6, "isInPossibleDynamicOperation") & 1) == 0)
    {
      v27 = v7;
      v28 = v5;
      [v6 beginPossibleDynamicOperation];
      v15 = +[NSMutableSet set];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [v3 infosForCurrentSelectionPath];
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [v3 repForInfo:*(*(&v29 + 1) + 8 * i)];
            if (v21)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v18);
      }

      [v6 startTransformingReps:v15];
      v7 = v27;
      v5 = v28;
    }

    v22 = self->mTracker;
    [(CRLiOSRepDragGestureRecognizer *)self currentPosition];
    [(CRLCanvasRepDragTracker *)v22 beginShowingDragUIForInitialDragPoint:?];
    if (!self->mShouldConstrainDueToAdditionalTouches)
    {
      if (([(CRLiOSRepDragGestureRecognizer *)self modifierFlags]& 0x20000) == 0)
      {
        [(CRLCanvasRepDragTracker *)self->mTracker setShouldConstrain:0];
        [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:0.0];
LABEL_33:
        v25 = [v3 canvasView];
        v26 = [v25 enclosingScrollView];

        if (v26)
        {
          if ([v26 isScrollEnabled])
          {
            [v26 setScrollEnabled:0];
            [v26 setScrollEnabled:1];
          }
        }

LABEL_37:
        return;
      }

      if (!self->mShouldConstrainDueToAdditionalTouches)
      {
        goto LABEL_31;
      }
    }

    if ([(NSMutableSet *)self->mTouchesDownOnCanvas count])
    {
      [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:(10 * [(NSMutableSet *)self->mTouchesDownOnCanvas count]- 10)];
      v23 = self->mTracker;
      v24 = 0;
    }

    else
    {
LABEL_31:
      [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:1.0];
      v23 = self->mTracker;
      v24 = 1;
    }

    [(CRLCanvasRepDragTracker *)v23 setShouldSuppressConstrainingHUD:v24];
    goto LABEL_33;
  }
}

- (BOOL)i_beginGestureExternally
{
  if (self->mRep && [(CRLiOSRepDragGestureRecognizer *)self p_currentlyTransformingRepsAreDraggable])
  {
    self->mTouchDelta = CGPointZero;
    [(CRLiOSRepDragGestureRecognizer *)self p_beginGesture];
    [(CRLCanvasRepDragTracker *)self->mTracker p_didBeginDrag];
    return 1;
  }

  else
  {
    [(CRLiOSRepDragGestureRecognizer *)self setState:5];
    return 0;
  }
}

- (void)p_beginConstraining
{
  self->mShouldConstrainDueToAdditionalTouches = 1;
  mConstrainingTimer = self->mConstrainingTimer;
  self->mConstrainingTimer = 0;

  if (self->mTracker)
  {
    [(CRLiOSRepDragGestureRecognizer *)self p_setTrackerPoints];
  }

  if ([(CRLiOSRepDragGestureRecognizer *)self state])
  {

    [(CRLiOSRepDragGestureRecognizer *)self setState:2];
  }
}

- (void)p_setTrackerPoints
{
  if (!self->mTracker)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101358198();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013581AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358234();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSRepDragGestureRecognizer p_setTrackerPoints]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepDragGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1049 isFatal:0 description:"setting tracker points when there is no tracker"];
  }

  v6 = [(CRLiOSRepDragGestureRecognizer *)self icc];
  mTouch = self->mTouch;
  v8 = [v6 canvasView];
  [(UITouch *)mTouch locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v6 tmCoordinator];
  v14 = [v13 controllingTM];

  if (v14 == self)
  {
    mTracker = self->mTracker;
    if (self->mPassedDragThreshold)
    {
      v16 = self->mTracker;
      v17 = v10;
      v18 = v12;
    }

    else
    {
      [v6 convertUnscaledToBoundsPoint:{self->mOnlyTouchDownLocation.x, self->mOnlyTouchDownLocation.y}];
      v16 = mTracker;
    }

    [(CRLCanvasRepDragTracker *)v16 setLogicalDragPoint:v17, v18];
    [(CRLCanvasRepDragTracker *)self->mTracker setActualDragPoint:v10, v12];
    if (!self->mEndedWithNudgeInControl)
    {
      [(CRLCanvasRepDragTracker *)self->mTracker setShouldSnapToGuides:1];
    }
  }

  [(CRLCanvasRepDragTracker *)self->mTracker setShouldSnapToGuides:([(CRLiOSRepDragGestureRecognizer *)self modifierFlags]& 0x100000) == 0];
  if (self->mShouldConstrainDueToAdditionalTouches)
  {
    [(CRLCanvasRepDragTracker *)self->mTracker setShouldConstrain:1];
  }

  else
  {
    v19 = [(CRLiOSRepDragGestureRecognizer *)self modifierFlags];
    v20 = v19;
    [(CRLCanvasRepDragTracker *)self->mTracker setShouldConstrain:(v19 >> 17) & 1];
    if ((v20 & 0x20000) == 0)
    {
      [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:0.0];
      goto LABEL_26;
    }
  }

  if (self->mShouldConstrainDueToAdditionalTouches && [(NSMutableSet *)self->mTouchesDownOnCanvas count])
  {
    [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:(10 * [(NSMutableSet *)self->mTouchesDownOnCanvas count]- 10)];
    v21 = self->mTracker;
    v22 = [(NSMutableSet *)self->mTouchesDownOnCanvas anyObject];
    v23 = [v6 canvasView];
    [v22 locationInView:v23];
    [(CRLCanvasRepDragTracker *)v21 setConstrainingPoint:?];

    v24 = self->mTracker;
    v25 = 0;
  }

  else
  {
    [(CRLCanvasRepDragTracker *)self->mTracker setSnapLevel:1.0];
    v24 = self->mTracker;
    v25 = 1;
  }

  [(CRLCanvasRepDragTracker *)v24 setShouldSuppressConstrainingHUD:v25];
LABEL_26:
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 view], v5 = objc_claimAutoreleasedReturnValue(), -[CRLiOSRepDragGestureRecognizer icc](self, "icc"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "canvasView"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "enclosingScrollView"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v5 == v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLiOSRepDragGestureRecognizer;
    v9 = [(CRLiOSRepDragGestureRecognizer *)&v11 canBePreventedByGestureRecognizer:v4];
  }

  return v9;
}

@end