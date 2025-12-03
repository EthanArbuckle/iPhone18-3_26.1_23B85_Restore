@interface CRLCounterRotateRep
- (BOOL)isInDynamicOperation;
- (CGRect)clipRect;
- (id)dynamicResizeDidBegin;
- (id)p_childRep;
- (id)p_counterRotateInfo;
- (id)p_possibleChildRep;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)dynamicallyFreeTransformingWithTracker:(id)tracker;
- (void)dynamicallyResizingWithTracker:(id)tracker;
- (void)setNeedsDisplay;
@end

@implementation CRLCounterRotateRep

- (id)p_counterRotateInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139349C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013934B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101393560();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCounterRotateRep p_counterRotateInfo]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:25 isFatal:0 description:"invalid nil value for '%{public}s'", "counterRotateInfo"];
  }

  return v5;
}

- (id)p_possibleChildRep
{
  childReps = [(CRLCanvasRep *)self childReps];
  if ([childReps count] >= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393588();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139359C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139363C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCounterRotateRep p_possibleChildRep]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:31 isFatal:0 description:"Should have either one or zero child reps."];
  }

  childReps2 = [(CRLCanvasRep *)self childReps];
  firstObject = [childReps2 firstObject];

  return firstObject;
}

- (id)p_childRep
{
  p_possibleChildRep = [(CRLCounterRotateRep *)self p_possibleChildRep];
  if (!p_possibleChildRep)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393664();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101393678();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101393728();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCounterRotateRep p_childRep]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:37 isFatal:0 description:"invalid nil value for '%{public}s'", "childRepToReturn"];
  }

  return p_possibleChildRep;
}

- (CGRect)clipRect
{
  p_childRep = [(CRLCounterRotateRep *)self p_childRep];
  [p_childRep clipRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layout = [p_childRep layout];
  v12 = layout;
  if (layout)
  {
    [layout transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  v23 = CGRectApplyAffineTransform(v22, &v21);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = CRLCounterRotateRep;
  [(CRLCanvasRep *)&v4 setNeedsDisplay];
  p_childRep = [(CRLCounterRotateRep *)self p_childRep];
  [p_childRep setNeedsDisplay];
}

- (BOOL)isInDynamicOperation
{
  p_possibleChildRep = [(CRLCounterRotateRep *)self p_possibleChildRep];
  isInDynamicOperation = [p_possibleChildRep isInDynamicOperation];

  return isInDynamicOperation;
}

- (id)dynamicResizeDidBegin
{
  v7.receiver = self;
  v7.super_class = CRLCounterRotateRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v7 dynamicResizeDidBegin];
  p_childRep = [(CRLCounterRotateRep *)self p_childRep];
  dynamicResizeDidBegin2 = [p_childRep dynamicResizeDidBegin];

  return dynamicResizeDidBegin;
}

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  trackerCopy = tracker;
  [(CRLCanvasRep *)&v6 dynamicallyResizingWithTracker:trackerCopy];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicallyResizingWithTracker:trackerCopy];
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  p_childRep = [(CRLCounterRotateRep *)self p_childRep];
  [trackerCopy applyNewBoundsToRep:p_childRep];

  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  [(CRLCanvasRep *)&v6 dynamicResizeDidEndWithTracker:trackerCopy];
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  trackerCopy = tracker;
  [(CRLCanvasRep *)&v6 dynamicFreeTransformDidBeginWithTracker:trackerCopy];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicFreeTransformDidBeginWithTracker:trackerCopy];
}

- (void)dynamicallyFreeTransformingWithTracker:(id)tracker
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  trackerCopy = tracker;
  [(CRLCanvasRep *)&v6 dynamicallyFreeTransformingWithTracker:trackerCopy];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicallyFreeTransformingWithTracker:trackerCopy];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  p_childRep = [(CRLCounterRotateRep *)self p_childRep];
  [trackerCopy applyNewBoundsToRep:p_childRep];

  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  [(CRLCanvasRep *)&v6 dynamicFreeTransformDidEndWithTracker:trackerCopy];
}

@end