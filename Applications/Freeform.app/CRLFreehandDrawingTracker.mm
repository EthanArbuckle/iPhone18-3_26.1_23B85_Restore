@interface CRLFreehandDrawingTracker
- (CRLFreehandDrawingTracker)initWithInteractiveCanvasController:(id)a3;
- (void)addPoint:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)estimatedPropertiesUpdatedOnInputPoint:(id)a3;
- (void)finishWithSuccess:(BOOL)a3;
- (void)p_changeDynamicLayouts;
- (void)p_sendPendingEstimationUpdatePointsToToolAndClearQueue;
- (void)p_sendPendingInputPointsToToolAndClearQueue;
- (void)p_setTrackingToolIfNeeded;
- (void)willBeginDynamicOperationForReps:(id)a3;
@end

@implementation CRLFreehandDrawingTracker

- (CRLFreehandDrawingTracker)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CRLFreehandDrawingTracker;
  v5 = [(CRLFreehandDrawingTracker *)&v20 init];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139808C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013980B4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101398150();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:51 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->_icc, v4);
    v9 = +[NSMutableArray array];
    pendingInputPointsToSendToTool = v5->_pendingInputPointsToSendToTool;
    v5->_pendingInputPointsToSendToTool = v9;

    v11 = +[NSMutableArray array];
    pendingEstimationUpdatePointsToSendToTool = v5->_pendingEstimationUpdatePointsToSendToTool;
    v5->_pendingEstimationUpdatePointsToSendToTool = v11;

    WeakRetained = objc_loadWeakRetained(&v5->_icc);
    v14 = [WeakRetained freehandDrawingToolkit];
    v15 = [v14 currentTool];

    if (!v15)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101398178();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013981A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139823C();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker initWithInteractiveCanvasController:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:57 isFatal:0 description:"invalid nil value for '%{public}s'", "currentDrawingTool"];
    }

    v5->_operationShouldBeDynamic = +[CRLFreehandDrawingTracker p_operationShouldBeDynamicUsingToolType:](CRLFreehandDrawingTracker, "p_operationShouldBeDynamicUsingToolType:", [v15 type]);
  }

  return v5;
}

- (void)addPoint:(id)a3
{
  if (self->_hasFinishBeenCalled)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398264();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398278();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398308();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker addPoint:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:89 isFatal:0 description:"Trying to add more points after calling finishWithSuccess."];
  }

  else
  {
    pendingInputPointsToSendToTool = self->_pendingInputPointsToSendToTool;

    [(NSMutableArray *)pendingInputPointsToSendToTool addObject:a3];
  }
}

- (void)estimatedPropertiesUpdatedOnInputPoint:(id)a3
{
  if (self->_hasFinishBeenCalled)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101398330();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398344();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013983D4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker estimatedPropertiesUpdatedOnInputPoint:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:97 isFatal:0 description:"Trying to update properties on more points after calling finishWithSuccess."];
  }

  else
  {
    pendingEstimationUpdatePointsToSendToTool = self->_pendingEstimationUpdatePointsToSendToTool;

    [(NSMutableArray *)pendingEstimationUpdatePointsToSendToTool addObject:a3];
  }
}

- (void)finishWithSuccess:(BOOL)a3
{
  self->_hasFinishBeenCalled = 1;
  self->_wasSuccessful = a3;
  if (![(NSMutableArray *)self->_pendingInputPointsToSendToTool count]&& self->_lastInputPointSentToTool)
  {
    pendingInputPointsToSendToTool = self->_pendingInputPointsToSendToTool;

    [(NSMutableArray *)pendingInputPointsToSendToTool addObject:?];
  }
}

- (void)willBeginDynamicOperationForReps:(id)a3
{
  [(CRLFreehandDrawingTracker *)self p_setTrackingToolIfNeeded];
  if (!self->_trackingTool)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013983FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101398410();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013984AC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker willBeginDynamicOperationForReps:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:136 isFatal:0 description:"invalid nil value for '%{public}s'", "_trackingTool"];
  }
}

- (void)p_changeDynamicLayouts
{
  [(CRLFreehandDrawingTracker *)self p_setTrackingToolIfNeeded];
  if (!self->_trackingTool)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013984D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013984E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101398584();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker p_changeDynamicLayouts]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:147 isFatal:0 description:"invalid nil value for '%{public}s'", "_trackingTool"];
  }

  if (!self->_hasBegunDrawing)
  {
    self->_hasBegunDrawing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v7 = [WeakRetained pkDrawingProvider];
    [v7 activeDrawingDidBegin];

    v8 = objc_loadWeakRetained(&self->_icc);
    v9 = [v8 editingCoordinator];
    [v9 suspendCollaborationWithReason:@"CRLFreehandDrawingTracker"];
  }

  [(CRLFreehandDrawingTracker *)self p_sendPendingInputPointsToToolAndClearQueue];
  [(CRLFreehandDrawingTracker *)self p_sendPendingEstimationUpdatePointsToToolAndClearQueue];
}

- (void)p_sendPendingInputPointsToToolAndClearQueue
{
  v3 = [(NSMutableArray *)self->_pendingInputPointsToSendToTool count];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    *&v4 = 67109378;
    v17 = v4;
    do
    {
      v7 = [(NSMutableArray *)self->_pendingInputPointsToSendToTool objectAtIndexedSubscript:v6, v17];
      v8 = v7;
      if (!self->_hasSentInitialPointToTool && [(CRLFreehandDrawingToolInputPoint *)v7 isPredicted])
      {
        v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013985AC();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v19 = v9;
          v20 = 2082;
          v21 = "[CRLFreehandDrawingTracker p_sendPendingInputPointsToToolAndClearQueue]";
          v22 = 2082;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m";
          v24 = 1024;
          v25 = 176;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The first point sent should not be predicted.", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013985D4();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v15 = v11;
          v16 = +[CRLAssertionHandler packedBacktraceString];
          *buf = v17;
          v19 = v9;
          v20 = 2114;
          v21 = v16;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker p_sendPendingInputPointsToToolAndClearQueue]"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:176 isFatal:0 description:"The first point sent should not be predicted."];
      }

      [(CRLFreehandDrawingTool *)self->_trackingTool performActionWithInputPoint:v8 isInitialPoint:!self->_hasSentInitialPointToTool isFinalPoint:--v5 == 0 && self->_hasFinishBeenCalled];
      self->_hasSentInitialPointToTool = 1;
      lastInputPointSentToTool = self->_lastInputPointSentToTool;
      self->_lastInputPointSentToTool = v8;

      ++v6;
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendingInputPointsToSendToTool removeAllObjects];
}

- (void)p_sendPendingEstimationUpdatePointsToToolAndClearQueue
{
  if (!self->_hasFinishBeenCalled)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_pendingEstimationUpdatePointsToSendToTool;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(CRLFreehandDrawingTool *)self->_trackingTool estimatedPropertiesUpdatedOnInputPoint:*(*(&v8 + 1) + 8 * v7), v8];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  [(NSMutableArray *)self->_pendingEstimationUpdatePointsToSendToTool removeAllObjects];
}

- (void)p_setTrackingToolIfNeeded
{
  if (!self->_trackingTool)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    if (!WeakRetained)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013985FC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101398610();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013986AC();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v4);
      }

      v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker p_setTrackingToolIfNeeded]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:201 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    v7 = [WeakRetained freehandDrawingToolkit];
    if (!v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013986D4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013986FC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101398798();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker p_setTrackingToolIfNeeded]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:204 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];
    }

    v11 = [v7 currentTool];
    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013987C0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013987E8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101398884();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker p_setTrackingToolIfNeeded]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:207 isFatal:0 description:"invalid nil value for '%{public}s'", "drawingTool"];
    }

    trackingTool = self->_trackingTool;
    self->_trackingTool = v11;
    v16 = v11;

    LOBYTE(trackingTool) = [(CRLFreehandDrawingTool *)self->_trackingTool shouldCommandsEnqueueInRealTime];
    self->_isEnqueueingCommandsInRealTime = trackingTool;
  }
}

- (void)commitChangesForReps:(id)a3
{
  v4 = a3;
  if (self->_hasBegunDrawing)
  {
    if (!self->_hasFinishBeenCalled)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_1013988AC();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_1013988C0();
      }

      [(CRLFreehandDrawingTracker *)self finishWithSuccess:0];
      [(CRLFreehandDrawingTracker *)self p_changeDynamicLayouts];
    }

    trackingTool = self->_trackingTool;
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v7 = [WeakRetained freehandDrawingToolkit];
    v8 = [v7 currentTool];

    if (trackingTool != v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101398900();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101398928();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013989B8();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker commitChangesForReps:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:229 isFatal:0 description:"_trackingTool shouldn't have changed while we were in the dynamic operation."];
    }

    v12 = [(CRLFreehandDrawingTool *)self->_trackingTool finalizeAndResetWithSuccess:self->_wasSuccessful];
    if (!self->_wasSuccessful && v12)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013989E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101398A08();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101398A98();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTracker commitChangesForReps:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:232 isFatal:0 description:"The tool can add a failure, but not stop a failure from this tracker."];
    }

    [(CRLFreehandDrawingTool *)self->_trackingTool clearIsCurrentlyTracking];
    v16 = objc_loadWeakRetained(&self->_icc);
    v17 = [v16 editingCoordinator];
    [v17 resumeCollaborationWithReason:@"CRLFreehandDrawingTracker"];
  }

  v18 = self->_trackingTool;
  self->_trackingTool = 0;

  lastInputPointSentToTool = self->_lastInputPointSentToTool;
  self->_lastInputPointSentToTool = 0;
}

@end