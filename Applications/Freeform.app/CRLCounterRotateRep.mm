@interface CRLCounterRotateRep
- (BOOL)isInDynamicOperation;
- (CGRect)clipRect;
- (id)dynamicResizeDidBegin;
- (id)p_childRep;
- (id)p_counterRotateInfo;
- (id)p_possibleChildRep;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicallyFreeTransformingWithTracker:(id)a3;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)setNeedsDisplay;
@end

@implementation CRLCounterRotateRep

- (id)p_counterRotateInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

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
  v3 = [(CRLCanvasRep *)self childReps];
  if ([v3 count] >= 2)
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

  v7 = [(CRLCanvasRep *)self childReps];
  v8 = [v7 firstObject];

  return v8;
}

- (id)p_childRep
{
  v2 = [(CRLCounterRotateRep *)self p_possibleChildRep];
  if (!v2)
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

  return v2;
}

- (CGRect)clipRect
{
  v2 = [(CRLCounterRotateRep *)self p_childRep];
  [v2 clipRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 layout];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
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
  v3 = [(CRLCounterRotateRep *)self p_childRep];
  [v3 setNeedsDisplay];
}

- (BOOL)isInDynamicOperation
{
  v2 = [(CRLCounterRotateRep *)self p_possibleChildRep];
  v3 = [v2 isInDynamicOperation];

  return v3;
}

- (id)dynamicResizeDidBegin
{
  v7.receiver = self;
  v7.super_class = CRLCounterRotateRep;
  v3 = [(CRLCanvasRep *)&v7 dynamicResizeDidBegin];
  v4 = [(CRLCounterRotateRep *)self p_childRep];
  v5 = [v4 dynamicResizeDidBegin];

  return v3;
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  v4 = a3;
  [(CRLCanvasRep *)&v6 dynamicallyResizingWithTracker:v4];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicallyResizingWithTracker:v4];
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCounterRotateRep *)self p_childRep];
  [v4 applyNewBoundsToRep:v5];

  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  [(CRLCanvasRep *)&v6 dynamicResizeDidEndWithTracker:v4];
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  v4 = a3;
  [(CRLCanvasRep *)&v6 dynamicFreeTransformDidBeginWithTracker:v4];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicFreeTransformDidBeginWithTracker:v4];
}

- (void)dynamicallyFreeTransformingWithTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  v4 = a3;
  [(CRLCanvasRep *)&v6 dynamicallyFreeTransformingWithTracker:v4];
  v5 = [(CRLCounterRotateRep *)self p_childRep:v6.receiver];
  [v5 dynamicallyFreeTransformingWithTracker:v4];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCounterRotateRep *)self p_childRep];
  [v4 applyNewBoundsToRep:v5];

  v6.receiver = self;
  v6.super_class = CRLCounterRotateRep;
  [(CRLCanvasRep *)&v6 dynamicFreeTransformDidEndWithTracker:v4];
}

@end