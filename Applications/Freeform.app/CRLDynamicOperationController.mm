@interface CRLDynamicOperationController
- (BOOL)isInOperation;
- (CRLDynamicOperationController)initWithInteractiveCanvasController:(id)a3;
- (void)beginOperation;
- (void)beginPossibleDynamicOperation;
- (void)cancelOperation;
- (void)endOperation;
- (void)handleGestureRecognizer:(id)a3;
- (void)handleTrackerManipulator:(id)a3;
- (void)p_beginDynamicOperationForReps:(id)a3;
- (void)p_cleanupOperation;
- (void)p_controllingTMDidResetInOperation:(id)a3;
- (void)p_resetGuidesForCleanup:(BOOL)a3;
- (void)startTransformingReps:(id)a3;
- (void)stopTransformingReps:(id)a3;
@end

@implementation CRLDynamicOperationController

- (CRLDynamicOperationController)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLDynamicOperationController;
  v5 = [(CRLDynamicOperationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, v4);
    v6->_resetGuides = 1;
  }

  return v6;
}

- (void)beginPossibleDynamicOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained isInDynamicOperation];

  if (v4)
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
  v4 = [WeakRetained isInDynamicOperation];

  if (v4)
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
  v12 = [v11 tmCoordinator];
  v13 = [v12 controllingTM];

  if (!v13)
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
  v18 = [v17 tmCoordinator];
  v19 = [v18 controllingTM];
  v20 = [v19 tracker];

  if (objc_opt_respondsToSelector())
  {
    [v20 traceIfDesiredForBeginOperation];
  }

  self->_supportsAlignmentGuides = [v20 supportsAlignmentGuides];
  self->_operationIsDynamic = [v20 operationShouldBeDynamic];
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

- (void)p_beginDynamicOperationForReps:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained tmCoordinator];
  v7 = [v6 controllingTM];
  v8 = [v7 tracker];

  v22[0] = @"CRLDynamicOperationControllerDynamicOperationTrackerKey";
  v22[1] = @"CRLDynamicOperationControllerDynamicOperationRepsKey";
  v23[0] = v8;
  v23[1] = v4;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"CRLDynamicOperationControllerWillStartDynamicOperationNotification" object:self userInfo:v9];

  if (objc_opt_respondsToSelector())
  {
    [v8 willBeginDynamicOperationForReps:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 isEnqueueingCommandsInRealTime];
  }

  else
  {
    v11 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v4;
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

        [*(*(&v17 + 1) + 8 * v16) dynamicOperationDidBeginWithRealTimeCommands:{v11, v17}];
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained tmCoordinator];
  v5 = [v4 controllingTM];
  v6 = [v5 tracker];

  if (v2->_operationIsDynamic)
  {
    v7 = objc_loadWeakRetained(&v2->_icc);
    [v7 willEndDynamicOperation];

    v71 = @"CRLDynamicOperationControllerDynamicOperationTrackerKey";
    v72 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"CRLDynamicOperationControllerDidEndDynamicOperationNotification" object:v2 userInfo:v8];
  }

  v10 = objc_loadWeakRetained(&v2->_icc);
  v11 = [v10 tmCoordinator];
  [v11 operationWillEnd];

  if ([(CRLDynamicOperationController *)v2 isInOperation])
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:v2 name:@"CRLCanvasControllingGRDidResetNotification" object:0];

    if (objc_opt_respondsToSelector())
    {
      [v6 traceIfDesiredForEndOperation];
    }

    if ([(CRLDynamicOperationController *)v2 isOperationDynamic])
    {
      v13 = [v6 shouldOpenCommandGroupToCommitChangesForReps:v2->_allTransformedReps];
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_loadWeakRetained(&v2->_icc);
    v57 = [v14 commandController];

    if (v13)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 selectionBehaviorForReps:v2->_allTransformedReps], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = [CRLCanvasCommandSelectionBehavior alloc];
        v17 = objc_loadWeakRetained(&v2->_icc);
        v18 = [v17 canvasEditor];
        v19 = objc_loadWeakRetained(&v2->_icc);
        v20 = [v19 editorController];
        v21 = [v20 selectionPath];
        v15 = [(CRLCanvasCommandSelectionBehavior *)v16 initWithCanvasEditor:v18 type:2 selectionPath:v21 selectionFlags:0 commitSelectionFlags:0 forwardSelectionFlags:4 reverseSelectionFlags:4];
      }

      [v57 openGroupWithSelectionBehavior:v15];
    }

    if (v6)
    {
      [v6 commitChangesForReps:v2->_allTransformedReps];
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
      v54 = v2;
      obj = v2->_allTransformedReps;
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
            v38 = [v37 layout];
            v39 = [v38 pureGeometry];

            v40 = [v37 layout];
            v41 = [v40 computeInfoGeometryFromPureLayoutGeometry:v39];

            v42 = [v37 infoForTransforming];
            v43 = objc_opt_class();
            v44 = sub_100014370(v43, v42);
            if (v44)
            {
              v45 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v44 geometry:v41];
              [v57 enqueueCommand:v45];
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

      v2 = v54;
      v6 = 0;
      if (!v53)
      {
        goto LABEL_17;
      }
    }

    v22 = objc_loadWeakRetained(&v2->_icc);
    v23 = [v22 commandController];
    [v23 closeGroup];

    goto LABEL_17;
  }

LABEL_18:
  [(CRLDynamicOperationController *)v2 p_cleanupOperation];
  v24 = objc_loadWeakRetained(&v2->_icc);
  v25 = [v24 isInDynamicOperation];

  if (v25)
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
  v10 = [v9 tmCoordinator];
  [v10 operationDidEnd];

  self->_possibleDynamicOperation = 0;
  reps = self->_reps;
  self->_reps = 0;

  allTransformedReps = self->_allTransformedReps;
  self->_allTransformedReps = 0;

  self->_operationIsDynamic = 0;
}

- (void)startTransformingReps:(id)a3
{
  v4 = a3;
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
  v9 = v4;
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
  v16 = [WeakRetained tmCoordinator];
  v17 = [v16 controllingTM];
  v18 = [v17 tracker];

  if (objc_opt_respondsToSelector())
  {
    [v18 didChangeCurrentlyTransformingReps];
  }
}

- (void)stopTransformingReps:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(NSMutableSet *)self->_reps minusSet:v4];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
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

          v10 = [*(*(&v15 + 1) + 8 * v9) layout];
          [v10 pauseDynamicTransformation];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0];
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v12 = [WeakRetained tmCoordinator];
    v13 = [v12 controllingTM];
    v14 = [v13 tracker];

    if (objc_opt_respondsToSelector())
    {
      [v14 didChangeCurrentlyTransformingReps];
    }
  }
}

- (void)handleGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained tmCoordinator];
  v7 = [v6 controllingTM];

  if (v7 == v4)
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

    v14 = [v4 tracker];
    v15 = [v14 operationShouldBeDynamic];
    operationIsDynamic = self->_operationIsDynamic;

    if (operationIsDynamic != v15)
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
      v21 = [v4 tracker];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:346 isFatal:0 description:"Controlling TM has different dynamic operation expectations than current operation (%@)", v21];
    }

    if (self->_resetGuides)
    {
      [(CRLDynamicOperationController *)self p_resetGuidesForCleanup:0];
    }

    v22 = [v4 state];
    if ((v22 - 1) >= 2)
    {
      if (v22 == 3)
      {
        v24 = [v4 tracker];
        [v24 changeDynamicLayoutsForReps:self->_reps];

        [(CRLDynamicOperationController *)self endOperation];
      }
    }

    else
    {
      v23 = [v4 tracker];
      [v23 changeDynamicLayoutsForReps:self->_reps];
    }
  }
}

- (void)p_controllingTMDidResetInOperation:(id)a3
{
  v4 = [a3 object];
  if (![(CRLDynamicOperationController *)self isInOperation])
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137D144();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137D158(v4, v5);
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
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:377 isFatal:0 description:"controlling GR reset in an operation, but we aren't in an operation! %@", v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v10 = [WeakRetained tmCoordinator];
  v11 = [v10 controllingTM];

  if (v4 == v11)
  {
    [(CRLDynamicOperationController *)self endOperation];
  }
}

- (void)handleTrackerManipulator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained tmCoordinator];
  v7 = [v6 controllingTM];

  if (v7 == v4)
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

    v14 = [v4 tracker];
    v15 = [v14 operationShouldBeDynamic];
    operationIsDynamic = self->_operationIsDynamic;

    if (operationIsDynamic != v15)
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

    v23 = [v4 tracker];
    [v23 changeDynamicLayoutsForReps:self->_reps];

    if ([v4 readyToEndOperation])
    {
      [(CRLDynamicOperationController *)self endOperation];
    }
  }
}

- (void)p_resetGuidesForCleanup:(BOOL)a3
{
  if (self->_supportsAlignmentGuides)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v6 = [WeakRetained guideController];
    [v6 endAlignmentOperation];
  }

  v7 = objc_loadWeakRetained(&self->_icc);
  v8 = [v7 tmCoordinator];
  v9 = [v8 controllingTM];
  v39 = [v9 tracker];

  if ([v39 supportsAlignmentGuides])
  {
    v10 = [(NSMutableSet *)self->_reps count];
    self->_supportsAlignmentGuides = v10 != 0;
    if (v10 && !a3)
    {
      v11 = self->_reps;
      v12 = objc_loadWeakRetained(&self->_icc);
      v13 = [v12 tmCoordinator];
      v14 = [v13 controllingTM];
      v15 = [v14 tracker];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_icc);
        v18 = [v17 tmCoordinator];
        v19 = [v18 controllingTM];
        v20 = [v19 tracker];
        v21 = [v20 repsForGuidesWhenManipulatingReps:self->_reps];

        v11 = v21;
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = objc_loadWeakRetained(&self->_icc);
        v23 = [v22 tmCoordinator];
        v24 = [v23 controllingTM];
        v25 = [v24 tracker];
        v26 = [v25 suppressesCenterGuides];
      }

      else
      {
        v26 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v27 = objc_loadWeakRetained(&self->_icc);
        v28 = [v27 tmCoordinator];
        v29 = [v28 controllingTM];
        v30 = [v29 tracker];
        v31 = [v30 suppressesSpacingGuides];
      }

      else
      {
        v31 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v32 = objc_loadWeakRetained(&self->_icc);
        v33 = [v32 tmCoordinator];
        v34 = [v33 controllingTM];
        v35 = [v34 tracker];
        v36 = [v35 suppressesSizingGuides];
      }

      else
      {
        v36 = 0;
      }

      v37 = objc_loadWeakRetained(&self->_icc);
      v38 = [v37 guideController];
      [v38 beginAlignmentOperationForReps:v11 preventCenterGuides:v26 preventSpacingGuides:v31 preventSizingGuides:v36];
    }
  }

  else
  {
    self->_supportsAlignmentGuides = 0;
  }

  self->_resetGuides = 0;
}

@end