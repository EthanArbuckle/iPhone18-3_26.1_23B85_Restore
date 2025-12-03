@interface CRLDynamicOperationController
- (BOOL)isInOperation;
- (CRLDynamicOperationController)initWithInteractiveCanvasController:(id)controller;
- (void)beginOperation;
- (void)beginPossibleDynamicOperation;
- (void)cancelOperation;
- (void)endOperation;
- (void)handleGestureRecognizer:(id)recognizer;
- (void)handleTrackerManipulator:(id)manipulator;
- (void)p_beginDynamicOperationForReps:(id)reps;
- (void)p_cleanupOperation;
- (void)p_controllingTMDidResetInOperation:(id)operation;
- (void)p_resetGuidesForCleanup:(BOOL)cleanup;
- (void)startTransformingReps:(id)reps;
- (void)stopTransformingReps:(id)reps;
@end

@implementation CRLDynamicOperationController

- (CRLDynamicOperationController)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLDynamicOperationController;
  v5 = [(CRLDynamicOperationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, controllerCopy);
    v6->_resetGuides = 1;
  }

  return v6;
}

- (void)beginPossibleDynamicOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  isInDynamicOperation = [WeakRetained isInDynamicOperation];

  if (isInDynamicOperation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C788();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C79C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C824();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLDynamicOperationController beginPossibleDynamicOperation]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:74 isFatal:0 description:"begin possible op with ICC in dynamic operation"];
  }

  if (self->_possibleDynamicOperation || self->_reps || self->_allTransformedReps)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C84C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C874();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C8FC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLDynamicOperationController beginPossibleDynamicOperation]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:75 isFatal:0 description:"beginning possible operation without ending previous operation"];
  }

  v11 = objc_alloc_init(NSMutableSet);
  reps = self->_reps;
  self->_reps = v11;

  self->_possibleDynamicOperation = 1;
  *&self->_resetGuides = 257;
}

- (void)beginOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  isInDynamicOperation = [WeakRetained isInDynamicOperation];

  if (isInDynamicOperation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C924();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C938();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C9C0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLDynamicOperationController beginOperation]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:90 isFatal:0 description:"begin op with ICC in dynamic operation"];
  }

  if (!self->_possibleDynamicOperation && (self->_reps || self->_allTransformedReps))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C9E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137CA10();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137CA98();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLDynamicOperationController beginOperation]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:91 isFatal:0 description:"beginning operation without ending previous operation"];
  }

  v11 = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [v11 tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];

  if (!controllingTM)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137CAC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137CAE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137CB70();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLDynamicOperationController beginOperation]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:92 isFatal:0 description:"No controlling TM when beginning operation"];
  }

  v17 = objc_loadWeakRetained(&self->_icc);
  tmCoordinator2 = [v17 tmCoordinator];
  controllingTM2 = [tmCoordinator2 controllingTM];
  tracker = [controllingTM2 tracker];

  if (objc_opt_respondsToSelector())
  {
    [tracker traceIfDesiredForBeginOperation];
  }

  self->_supportsAlignmentGuides = [tracker supportsAlignmentGuides];
  self->_operationIsDynamic = [tracker operationShouldBeDynamic];
  if (self->_possibleDynamicOperation)
  {
    self->_possibleDynamicOperation = 0;
    v21 = [NSMutableSet setWithSet:self->_reps];
    allTransformedReps = self->_allTransformedReps;
    self->_allTransformedReps = v21;

    if (self->_operationIsDynamic)
    {
      v23 = [NSSet setWithSet:self->_reps];
      [(CRLDynamicOperationController *)self p_beginDynamicOperationForReps:v23];
    }
  }

  else
  {
    v24 = objc_alloc_init(NSMutableSet);
    reps = self->_reps;
    self->_reps = v24;

    v26 = objc_alloc_init(NSMutableSet);
    v27 = self->_allTransformedReps;
    self->_allTransformedReps = v26;

    self->_resetGuides = 1;
  }

  if (self->_operationIsDynamic)
  {
    v28 = objc_loadWeakRetained(&self->_icc);
    [v28 beginDynamicOperation];
  }

  v29 = +[NSNotificationCenter defaultCenter];
  [v29 addObserver:self selector:"p_controllingTMDidResetInOperation:" name:@"CRLCanvasControllingGRDidResetNotification" object:0];
}

- (void)p_beginDynamicOperationForReps:(id)reps
{
  repsCopy = reps;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];
  tracker = [controllingTM tracker];

  v22[0] = @"CRLDynamicOperationControllerDynamicOperationTrackerKey";
  v22[1] = @"CRLDynamicOperationControllerDynamicOperationRepsKey";
  v23[0] = tracker;
  v23[1] = repsCopy;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"CRLDynamicOperationControllerWillStartDynamicOperationNotification" object:self userInfo:v9];

  if (objc_opt_respondsToSelector())
  {
    [tracker willBeginDynamicOperationForReps:repsCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    isEnqueueingCommandsInRealTime = [tracker isEnqueueingCommandsInRealTime];
  }

  else
  {
    isEnqueueingCommandsInRealTime = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = repsCopy;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) dynamicOperationDidBeginWithRealTimeCommands:{isEnqueueingCommandsInRealTime, v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)endOperation
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];
  tracker = [controllingTM tracker];

  if (selfCopy->_operationIsDynamic)
  {
    v7 = objc_loadWeakRetained(&selfCopy->_icc);
    [v7 willEndDynamicOperation];

    v71 = @"CRLDynamicOperationControllerDynamicOperationTrackerKey";
    v72 = tracker;
    v8 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"CRLDynamicOperationControllerDidEndDynamicOperationNotification" object:selfCopy userInfo:v8];
  }

  v10 = objc_loadWeakRetained(&selfCopy->_icc);
  tmCoordinator2 = [v10 tmCoordinator];
  [tmCoordinator2 operationWillEnd];

  if ([(CRLDynamicOperationController *)selfCopy isInOperation])
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:selfCopy name:@"CRLCanvasControllingGRDidResetNotification" object:0];

    if (objc_opt_respondsToSelector())
    {
      [tracker traceIfDesiredForEndOperation];
    }

    if ([(CRLDynamicOperationController *)selfCopy isOperationDynamic])
    {
      v13 = [tracker shouldOpenCommandGroupToCommitChangesForReps:selfCopy->_allTransformedReps];
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_loadWeakRetained(&selfCopy->_icc);
    commandController = [v14 commandController];

    if (v13)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([tracker selectionBehaviorForReps:selfCopy->_allTransformedReps], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = [CRLCanvasCommandSelectionBehavior alloc];
        v17 = objc_loadWeakRetained(&selfCopy->_icc);
        canvasEditor = [v17 canvasEditor];
        v19 = objc_loadWeakRetained(&selfCopy->_icc);
        editorController = [v19 editorController];
        selectionPath = [editorController selectionPath];
        v15 = [(CRLCanvasCommandSelectionBehavior *)v16 initWithCanvasEditor:canvasEditor type:2 selectionPath:selectionPath selectionFlags:0 commitSelectionFlags:0 forwardSelectionFlags:4 reverseSelectionFlags:4];
      }

      [commandController openGroupWithSelectionBehavior:v15];
    }

    if (tracker)
    {
      [tracker commitChangesForReps:selfCopy->_allTransformedReps];
      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v29 = &qword_101AD5A10;
      if (qword_101AD5A10 != -1)
      {
        sub_10137CB98();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137CBC0();
      }

      v53 = v13;
      if (qword_101AD5A10 != -1)
      {
        sub_10137CC48();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v30);
      }

      v31 = [NSString stringWithUTF8String:"[CRLDynamicOperationController endOperation]"];
      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
      [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:205 isFatal:0 description:"tracker controller should not commit dynamic changes"];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v54 = selfCopy;
      obj = selfCopy->_allTransformedReps;
      v33 = [(NSMutableSet *)obj countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v59;
        v55 = *v59;
        do
        {
          v36 = 0;
          do
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v58 + 1) + 8 * v36);
            layout = [v37 layout];
            pureGeometry = [layout pureGeometry];

            layout2 = [v37 layout];
            v41 = [layout2 computeInfoGeometryFromPureLayoutGeometry:pureGeometry];

            infoForTransforming = [v37 infoForTransforming];
            v43 = objc_opt_class();
            v44 = sub_100014370(v43, infoForTransforming);
            if (v44)
            {
              v45 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v44 geometry:v41];
              [commandController enqueueCommand:v45];
            }

            else
            {
              v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (*v29 != -1)
              {
                sub_10137CC70();
              }

              v47 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                v63 = v46;
                v64 = 2082;
                v65 = "[CRLDynamicOperationController endOperation]";
                v66 = 2082;
                v67 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m";
                v68 = 1024;
                v69 = 213;
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d to run a command to resize an info, the info must be a board item", buf, 0x22u);
              }

              if (*v29 != -1)
              {
                sub_10137CC98();
              }

              v48 = v29;
              v49 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v51 = v49;
                v52 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v63 = v46;
                v64 = 2114;
                v65 = v52;
                _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v45 = [NSString stringWithUTF8String:"[CRLDynamicOperationController endOperation]"];
              v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
              [CRLAssertionHandler handleFailureInFunction:v45 file:v50 lineNumber:213 isFatal:0 description:"to run a command to resize an info, the info must be a board item"];

              v29 = v48;
              v35 = v55;
            }

            v36 = v36 + 1;
          }

          while (v34 != v36);
          v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v34);
      }

      selfCopy = v54;
      tracker = 0;
      if (!v53)
      {
        goto LABEL_17;
      }
    }

    v22 = objc_loadWeakRetained(&selfCopy->_icc);
    commandController2 = [v22 commandController];
    [commandController2 closeGroup];

    goto LABEL_17;
  }

LABEL_18:
  [(CRLDynamicOperationController *)selfCopy p_cleanupOperation];
  v24 = objc_loadWeakRetained(&selfCopy->_icc);
  isInDynamicOperation = [v24 isInDynamicOperation];

  if (isInDynamicOperation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137CCC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137CCE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137CD70();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v26);
    }

    v27 = [NSString stringWithUTF8String:"[CRLDynamicOperationController endOperation]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:229 isFatal:0 description:"ending op with ICC still in dynamic operation"];
  }
}

- (BOOL)isInOperation
{
  reps = self->_reps;
  if (reps)
  {
    reps = self->_allTransformedReps;
    if (reps)
    {
      LOBYTE(reps) = !self->_possibleDynamicOperation;
    }
  }

  return reps & 1;
}

- (void)cancelOperation
{
  if (![(CRLDynamicOperationController *)self isInOperation])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137CD98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137CDAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137CE34();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLDynamicOperationController cancelOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:250 isFatal:0 description:"cancelling when not in operation"];
  }

  [(CRLDynamicOperationController *)self p_cleanupOperation];
}

- (void)p_cleanupOperation
{
  if (self->_operationIsDynamic)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_allTransformedReps;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v13 + 1) + 8 * v7) dynamicOperationDidEnd];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    WeakRetained = objc_loadWeakRetained(&self->_icc);
    [WeakRetained endDynamicOperation];
  }

  [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:1, v13];
  v9 = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [v9 tmCoordinator];
  [tmCoordinator operationDidEnd];

  self->_possibleDynamicOperation = 0;
  reps = self->_reps;
  self->_reps = 0;

  allTransformedReps = self->_allTransformedReps;
  self->_allTransformedReps = 0;

  self->_operationIsDynamic = 0;
}

- (void)startTransformingReps:(id)reps
{
  repsCopy = reps;
  if (![(CRLDynamicOperationController *)self isInOperation]&& !self->_possibleDynamicOperation)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137CE5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137CE70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137CEF8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLDynamicOperationController startTransformingReps:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:280 isFatal:0 description:"cannot begin transforming reps until we are in a transform"];
  }

  v8 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = repsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_reps containsObject:v14, v19]& 1) == 0)
        {
          [(NSMutableSet *)self->_reps addObject:v14];
        }

        if (!self->_possibleDynamicOperation && ([(NSMutableSet *)self->_allTransformedReps containsObject:v14]& 1) == 0)
        {
          if (self->_operationIsDynamic)
          {
            [v8 addObject:v14];
          }

          [(NSMutableSet *)self->_allTransformedReps addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [(CRLDynamicOperationController *)self p_beginDynamicOperationForReps:v8];
  }

  [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0, v19];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];
  tracker = [controllingTM tracker];

  if (objc_opt_respondsToSelector())
  {
    [tracker didChangeCurrentlyTransformingReps];
  }
}

- (void)stopTransformingReps:(id)reps
{
  repsCopy = reps;
  if ([repsCopy count])
  {
    [(NSMutableSet *)self->_reps minusSet:repsCopy];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = repsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          layout = [*(*(&v15 + 1) + 8 * v9) layout];
          [layout pauseDynamicTransformation];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0];
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    tmCoordinator = [WeakRetained tmCoordinator];
    controllingTM = [tmCoordinator controllingTM];
    tracker = [controllingTM tracker];

    if (objc_opt_respondsToSelector())
    {
      [tracker didChangeCurrentlyTransformingReps];
    }
  }
}

- (void)handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];

  if (controllingTM == recognizerCopy)
  {
    if (![(CRLDynamicOperationController *)self isInOperation])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137CF20();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137CF34(v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137D000();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLDynamicOperationController handleGestureRecognizer:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:340 isFatal:0 description:"tracker is handling GR %@ when not in a transform", v13];
    }

    tracker = [recognizerCopy tracker];
    operationShouldBeDynamic = [tracker operationShouldBeDynamic];
    operationIsDynamic = self->_operationIsDynamic;

    if (operationIsDynamic != operationShouldBeDynamic)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137D028();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137D050(v17);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137D11C();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLDynamicOperationController handleGestureRecognizer:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
      tracker2 = [recognizerCopy tracker];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:346 isFatal:0 description:"Controlling TM has different dynamic operation expectations than current operation (%@)", tracker2];
    }

    if (self->_resetGuides)
    {
      [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0];
    }

    state = [recognizerCopy state];
    if ((state - 1) >= 2)
    {
      if (state == 3)
      {
        tracker3 = [recognizerCopy tracker];
        [tracker3 changeDynamicLayoutsForReps:self->_reps];

        [(CRLDynamicOperationController *)self endOperation];
      }
    }

    else
    {
      tracker4 = [recognizerCopy tracker];
      [tracker4 changeDynamicLayoutsForReps:self->_reps];
    }
  }
}

- (void)p_controllingTMDidResetInOperation:(id)operation
{
  object = [operation object];
  if (![(CRLDynamicOperationController *)self isInOperation])
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137D144();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137D158(object, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137D1F8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDynamicOperationController p_controllingTMDidResetInOperation:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:377 isFatal:0 description:"controlling GR reset in an operation, but we aren't in an operation! %@", object];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];

  if (object == controllingTM)
  {
    [(CRLDynamicOperationController *)self endOperation];
  }
}

- (void)handleTrackerManipulator:(id)manipulator
{
  manipulatorCopy = manipulator;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [WeakRetained tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];

  if (controllingTM == manipulatorCopy)
  {
    if (![(CRLDynamicOperationController *)self isInOperation])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137D220();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137D234(v8);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137D300();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLDynamicOperationController handleTrackerManipulator:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:393 isFatal:0 description:"tracker is handling TM %@ when not in a transform", v13];
    }

    tracker = [manipulatorCopy tracker];
    operationShouldBeDynamic = [tracker operationShouldBeDynamic];
    operationIsDynamic = self->_operationIsDynamic;

    if (operationIsDynamic != operationShouldBeDynamic)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137D328();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137D350(v17);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137D41C();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLDynamicOperationController handleTrackerManipulator:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDynamicOperationController.m"];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:399 isFatal:0 description:"Controlling TM %@ has different dynamic operation expectations than current operation", v22];
    }

    if (self->_resetGuides)
    {
      [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0];
    }

    tracker2 = [manipulatorCopy tracker];
    [tracker2 changeDynamicLayoutsForReps:self->_reps];

    if ([manipulatorCopy readyToEndOperation])
    {
      [(CRLDynamicOperationController *)self endOperation];
    }
  }
}

- (void)p_resetGuidesForCleanup:(BOOL)cleanup
{
  if (self->_supportsAlignmentGuides)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    guideController = [WeakRetained guideController];
    [guideController endAlignmentOperation];
  }

  v7 = objc_loadWeakRetained(&self->_icc);
  tmCoordinator = [v7 tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];
  tracker = [controllingTM tracker];

  if ([tracker supportsAlignmentGuides])
  {
    v10 = [(NSMutableSet *)self->_reps count];
    self->_supportsAlignmentGuides = v10 != 0;
    if (v10 && !cleanup)
    {
      v11 = self->_reps;
      v12 = objc_loadWeakRetained(&self->_icc);
      tmCoordinator2 = [v12 tmCoordinator];
      controllingTM2 = [tmCoordinator2 controllingTM];
      tracker2 = [controllingTM2 tracker];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_icc);
        tmCoordinator3 = [v17 tmCoordinator];
        controllingTM3 = [tmCoordinator3 controllingTM];
        tracker3 = [controllingTM3 tracker];
        v21 = [tracker3 repsForGuidesWhenManipulatingReps:self->_reps];

        v11 = v21;
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = objc_loadWeakRetained(&self->_icc);
        tmCoordinator4 = [v22 tmCoordinator];
        controllingTM4 = [tmCoordinator4 controllingTM];
        tracker4 = [controllingTM4 tracker];
        suppressesCenterGuides = [tracker4 suppressesCenterGuides];
      }

      else
      {
        suppressesCenterGuides = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v27 = objc_loadWeakRetained(&self->_icc);
        tmCoordinator5 = [v27 tmCoordinator];
        controllingTM5 = [tmCoordinator5 controllingTM];
        tracker5 = [controllingTM5 tracker];
        suppressesSpacingGuides = [tracker5 suppressesSpacingGuides];
      }

      else
      {
        suppressesSpacingGuides = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v32 = objc_loadWeakRetained(&self->_icc);
        tmCoordinator6 = [v32 tmCoordinator];
        controllingTM6 = [tmCoordinator6 controllingTM];
        tracker6 = [controllingTM6 tracker];
        suppressesSizingGuides = [tracker6 suppressesSizingGuides];
      }

      else
      {
        suppressesSizingGuides = 0;
      }

      v37 = objc_loadWeakRetained(&self->_icc);
      guideController2 = [v37 guideController];
      [guideController2 beginAlignmentOperationForReps:v11 preventCenterGuides:suppressesCenterGuides preventSpacingGuides:suppressesSpacingGuides preventSizingGuides:suppressesSizingGuides];
    }
  }

  else
  {
    self->_supportsAlignmentGuides = 0;
  }

  self->_resetGuides = 0;
}

@end