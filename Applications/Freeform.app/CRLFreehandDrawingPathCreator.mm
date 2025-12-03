@interface CRLFreehandDrawingPathCreator
- ($EB457B8D156C558632463A5C38AABCB2)p_drawingInputPoint:(SEL)point atTime:(CGPoint)time predicted:(double)predicted;
- (BOOL)p_shouldSaveAllPoints;
- (CGRect)takeDirtyRect;
- (CRLFreehandDrawingPathCreator)initWithPencilKitSmoothing:(BOOL)smoothing;
- (id).cxx_construct;
- (id)commitAllAvailablePoints;
- (id)copyOfEntirePath;
- (id)copyOfUncommittedPath;
- (id)handoffToNewPathCreator;
- (id)p_pathWithLength:(double)length fromPoint:(CGPoint)point;
- (unint64_t)p_immutableUncommittedCountNotAdjustedForLastPoint;
- (unint64_t)pointCountAvailableToCommit;
- (void)beginDrawingWithViewScale:(double)scale inputType:(int64_t)type;
- (void)drawToPoint:(CGPoint)point atTime:(double)time predicted:(BOOL)predicted;
- (void)endDrawing;
- (void)p_nonUpdatingDrawToPoint:(CGPoint)point atTime:(double)time predicted:(BOOL)predicted;
- (void)p_updatePath;
- (void)setPointReductionFilterThresholdMultiplier:(double)multiplier;
- (void)setSmoothingThresholdMultiplier:(double)multiplier;
@end

@implementation CRLFreehandDrawingPathCreator

- (CRLFreehandDrawingPathCreator)initWithPencilKitSmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingPathCreator;
  v4 = [(CRLFreehandDrawingPathCreator *)&v15 init];
  if (v4)
  {
    if (smoothingCopy)
    {
      v5 = objc_alloc_init(CRLPKStrokeGenerator);
      strokeGenerator = v4->_strokeGenerator;
      v4->_strokeGenerator = v5;

      [(CRLPKStrokeGenerator *)v4->_strokeGenerator setSmoothingThresholdMultiplier:1.0];
      [(CRLPKStrokeGenerator *)v4->_strokeGenerator setPointReductionFilterThresholdMultiplier:1.0];
    }

    v4->_immutablePointCount = 0;
    v7 = +[CRLBezierPath bezierPath];
    immutableBezierPath = v4->_immutableBezierPath;
    v4->_immutableBezierPath = v7;

    v9 = +[CRLBezierPath bezierPath];
    mutableBezierPath = v4->_mutableBezierPath;
    v4->_mutableBezierPath = v9;

    v11 = +[CRLBezierPath bezierPath];
    committedPath = v4->_committedPath;
    v4->_committedPath = v11;

    v4->_initialPoint = xmmword_1014629F0;
    v4->_creatorState = 0;
    size = CGRectNull.size;
    v4->_lastMutableDirtyRect.origin = CGRectNull.origin;
    v4->_lastMutableDirtyRect.size = size;
    v4->_nextImmutablePointIndexForDirtyRect = 0;
    v4->_minimumLengthForFinalCreatedPath = 0.100000001;
  }

  return v4;
}

- (void)setSmoothingThresholdMultiplier:(double)multiplier
{
  p_creatorState = &self->_creatorState;
  if (self->_creatorState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392AF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392B0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392B9C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator setSmoothingThresholdMultiplier:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:129 isFatal:0 description:"Unexpected creator state, %lu", *p_creatorState];
  }

  strokeGenerator = self->_strokeGenerator;
  if (!strokeGenerator)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392BC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392BEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392C94();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator setSmoothingThresholdMultiplier:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:130 isFatal:0 description:"invalid nil value for '%{public}s'", "_strokeGenerator"];

    strokeGenerator = self->_strokeGenerator;
  }

  [(CRLPKStrokeGenerator *)strokeGenerator setSmoothingThresholdMultiplier:multiplier];
}

- (void)setPointReductionFilterThresholdMultiplier:(double)multiplier
{
  p_creatorState = &self->_creatorState;
  if (self->_creatorState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392CBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392CD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392D60();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator setPointReductionFilterThresholdMultiplier:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:136 isFatal:0 description:"Unexpected creator state, %lu", *p_creatorState];
  }

  strokeGenerator = self->_strokeGenerator;
  if (!strokeGenerator)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392D88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392DB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392E58();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator setPointReductionFilterThresholdMultiplier:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:137 isFatal:0 description:"invalid nil value for '%{public}s'", "_strokeGenerator"];

    strokeGenerator = self->_strokeGenerator;
  }

  [(CRLPKStrokeGenerator *)strokeGenerator setPointReductionFilterThresholdMultiplier:multiplier];
}

- (void)beginDrawingWithViewScale:(double)scale inputType:(int64_t)type
{
  if (self->_creatorState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392E80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392E94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392F1C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator beginDrawingWithViewScale:inputType:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:143 isFatal:0 description:"beginDrawing should be called from the waiting state."];
  }

  self->_creatorState = 1;
  self->_viewScale = scale;
  self->_inputType = type;
  if (self->_strokeGenerator)
  {
    v10 = objc_alloc_init(CRLPKStroke);
    v11 = +[NSProcessInfo processInfo];
    [v11 systemUptime];
    [(CRLPKStroke *)v10 setTimestamp:?];

    [(CRLPKStrokeGenerator *)self->_strokeGenerator drawingBeganWithStroke:v10 inputType:type == 2 inputScale:&stru_10186EFA0 start:1.0 / scale];
  }
}

- (void)drawToPoint:(CGPoint)point atTime:(double)time predicted:(BOOL)predicted
{
  [(CRLFreehandDrawingPathCreator *)self p_nonUpdatingDrawToPoint:predicted atTime:point.x predicted:point.y, time];

  [(CRLFreehandDrawingPathCreator *)self p_updatePath];
}

- (void)endDrawing
{
  if (self->_creatorState != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392F44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392F58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392FE0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator endDrawing]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:186 isFatal:0 description:"endDrawing should be called from the started state."];
  }

  self->_creatorState = 2;
  if (self->_strokeGenerator)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100560634;
    v29 = sub_100560644;
    v30 = 0;
    v6 = dispatch_semaphore_create(0);
    strokeGenerator = self->_strokeGenerator;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10056064C;
    v22 = &unk_10184A580;
    v24 = &v25;
    v8 = v6;
    v23 = v8;
    [(CRLPKStrokeGenerator *)strokeGenerator drawingEndedWithCompletion:&v19];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    newPathRepresentation = [v26[5] newPathRepresentation];
    v10 = [CRLBezierPath bezierPathWithCGPath:newPathRepresentation];
    immutableBezierPath = self->_immutableBezierPath;
    self->_immutableBezierPath = v10;

    CGPathRelease(newPathRepresentation);
    if ([(CRLBezierPath *)self->_immutableBezierPath isEmpty]|| ([(CRLBezierPath *)self->_immutableBezierPath length], v13 = v12, [(CRLFreehandDrawingPathCreator *)self minimumLengthForFinalCreatedPath], v13 < v14))
    {
      if (self->_initialPoint.x != INFINITY || self->_initialPoint.y != INFINITY)
      {
        [(CRLFreehandDrawingPathCreator *)self minimumLengthForFinalCreatedPath];
        v15 = [CRLFreehandDrawingPathCreator p_pathWithLength:"p_pathWithLength:fromPoint:" fromPoint:?];
        v16 = self->_immutableBezierPath;
        self->_immutableBezierPath = v15;
      }
    }

    v17 = +[CRLBezierPath bezierPath];
    mutableBezierPath = self->_mutableBezierPath;
    self->_mutableBezierPath = v17;

    self->_immutablePointCount = 0xCCCCCCCCCCCCCCCDLL * ((self->_filteredStrokePoints.__end_ - self->_filteredStrokePoints.__begin_) >> 4);
    _Block_object_dispose(&v25, 8);
  }
}

- (id)handoffToNewPathCreator
{
  if (self->_strokeGenerator)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393008();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139301C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013930A4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator handoffToNewPathCreator]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:247 isFatal:0 description:"Can't handoff to a new path creator when using PencilKit."];
  }

  if (self->_inputPointCount <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013930CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013930F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139317C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator handoffToNewPathCreator]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:248 isFatal:0 description:"Need at least two points to do a handoff."];
  }

  [(CRLFreehandDrawingPathCreator *)self endDrawing];
  v9 = [[CRLFreehandDrawingPathCreator alloc] initWithPencilKitSmoothing:0];
  [(CRLFreehandDrawingPathCreator *)v9 beginDrawingWithViewScale:self->_inputType inputType:self->_viewScale];
  end = self->_allInputPoints.__end_;
  v11 = *(end - 11);
  v12 = *(end - 10);
  v13 = *(end - 5);
  v14 = *(end - 32);
  [(CRLFreehandDrawingPathCreator *)v9 drawToPoint:*(end - 120) & 1 atTime:*(end - 22) predicted:*(end - 21), *(end - 16)];
  [(CRLFreehandDrawingPathCreator *)v9 drawToPoint:v14 & 1 atTime:v11 predicted:v12, v13];

  return v9;
}

- (id)copyOfEntirePath
{
  v3 = [(CRLBezierPath *)self->_immutableBezierPath copy];
  [v3 appendBezierPath:self->_mutableBezierPath skippingInitialMoveIfPossible:1];
  return v3;
}

- (id)commitAllAvailablePoints
{
  v3 = [(CRLBezierPath *)self->_immutableBezierPath copyWithPointsInRange:[(CRLBezierPath *)self->_committedPath elementCount], [(CRLFreehandDrawingPathCreator *)self pointCountAvailableToCommit]];
  [(CRLBezierPath *)self->_committedPath appendBezierPath:v3 skippingInitialMoveIfPossible:1];

  return v3;
}

- (id)copyOfUncommittedPath
{
  v3 = [(CRLBezierPath *)self->_immutableBezierPath copyWithPointsInRange:[(CRLBezierPath *)self->_committedPath elementCount], [(CRLFreehandDrawingPathCreator *)self p_immutableUncommittedCountNotAdjustedForLastPoint]];
  [v3 appendBezierPath:self->_mutableBezierPath skippingInitialMoveIfPossible:1];
  return v3;
}

- (CGRect)takeDirtyRect
{
  x = self->_lastMutableDirtyRect.origin.x;
  y = self->_lastMutableDirtyRect.origin.y;
  p_lastMutableDirtyRect = &self->_lastMutableDirtyRect;
  width = self->_lastMutableDirtyRect.size.width;
  height = self->_lastMutableDirtyRect.size.height;
  if (![(CRLBezierPath *)self->_immutableBezierPath isEmpty])
  {
    nextImmutablePointIndexForDirtyRect = self->_nextImmutablePointIndexForDirtyRect;
    if (nextImmutablePointIndexForDirtyRect < [(CRLBezierPath *)self->_immutableBezierPath elementCount])
    {
      v9 = [(CRLBezierPath *)self->_immutableBezierPath copyWithPointsInRange:self->_nextImmutablePointIndexForDirtyRect, [(CRLBezierPath *)self->_immutableBezierPath elementCount]- self->_nextImmutablePointIndexForDirtyRect];
      [v9 bounds];
      v32.origin.x = v10;
      v32.origin.y = v11;
      v32.size.width = v12;
      v32.size.height = v13;
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v28 = CGRectUnion(v27, v32);
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
      self->_nextImmutablePointIndexForDirtyRect = [(CRLBezierPath *)self->_immutableBezierPath elementCount];
    }
  }

  if ([(CRLBezierPath *)self->_mutableBezierPath isEmpty])
  {
    size = CGRectNull.size;
    p_lastMutableDirtyRect->origin = CGRectNull.origin;
    p_lastMutableDirtyRect->size = size;
  }

  else
  {
    [(CRLBezierPath *)self->_mutableBezierPath bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    v30 = CGRectUnion(v29, v33);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    self->_lastMutableDirtyRect.origin.x = v16;
    self->_lastMutableDirtyRect.origin.y = v18;
    self->_lastMutableDirtyRect.size.width = v20;
    self->_lastMutableDirtyRect.size.height = v22;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (unint64_t)pointCountAvailableToCommit
{
  result = [(CRLFreehandDrawingPathCreator *)self p_immutableUncommittedCountNotAdjustedForLastPoint];
  if (result)
  {
    result -= self->_creatorState != 2;
  }

  return result;
}

- (BOOL)p_shouldSaveAllPoints
{
  if (!self->_strokeGenerator)
  {
    return 1;
  }

  if (qword_101AD5CF8 != -1)
  {
    sub_1013931A4();
  }

  v3 = off_1019F1040;

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
}

- (unint64_t)p_immutableUncommittedCountNotAdjustedForLastPoint
{
  elementCount = [(CRLBezierPath *)self->_immutableBezierPath elementCount];
  result = elementCount - [(CRLBezierPath *)self->_committedPath elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    v5 = sub_1013931B8(&v9, &v10);
    v6 = v10;
    if (v5)
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator p_immutableUncommittedCountNotAdjustedForLastPoint]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:339 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

    return 0;
  }

  return result;
}

- (void)p_nonUpdatingDrawToPoint:(CGPoint)point atTime:(double)time predicted:(BOOL)predicted
{
  predictedCopy = predicted;
  y = point.y;
  x = point.x;
  if (self->_creatorState != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101393314();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101393328();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013933B0();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator p_nonUpdatingDrawToPoint:atTime:predicted:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:343 isFatal:0 description:"continueDrawing should be called from the started state."];
  }

  if (self->_initialPoint.x == INFINITY && self->_initialPoint.y == INFINITY)
  {
    self->_initialPoint.x = x;
    self->_initialPoint.y = y;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  [(CRLFreehandDrawingPathCreator *)self p_drawingInputPoint:predictedCopy atTime:x predicted:y, time];
  if ([(CRLFreehandDrawingPathCreator *)self p_shouldSaveAllPoints])
  {
    end = self->_allInputPoints.__end_;
    cap = self->_allInputPoints.__cap_;
    if (end >= cap)
    {
      begin = self->_allInputPoints.__begin_;
      v22 = 0x2E8BA2E8BA2E8BA3 * ((end - begin) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        sub_1000C1D48();
      }

      v24 = 0x2E8BA2E8BA2E8BA3 * ((cap - begin) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x1745D1745D1745DLL)
      {
        v25 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        sub_1000C1DF0(&self->_allInputPoints, v25);
      }

      v26 = 88 * v22;
      v27 = v39;
      *v26 = v38;
      *(v26 + 16) = v27;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      *(v26 + 80) = v43;
      *(v26 + 48) = v29;
      *(v26 + 64) = v30;
      *(v26 + 32) = v28;
      v20 = (88 * v22 + 88);
      v31 = self->_allInputPoints.__begin_;
      v32 = (self->_allInputPoints.__end_ - v31);
      v33 = (88 * v22 - v32);
      memcpy((v26 - v32), v31, v32);
      v34 = self->_allInputPoints.__begin_;
      self->_allInputPoints.__begin_ = v33;
      self->_allInputPoints.__end_ = v20;
      self->_allInputPoints.__cap_ = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      v16 = v39;
      *end = v38;
      *(end + 1) = v16;
      v17 = v40;
      v18 = v41;
      v19 = v42;
      *(end + 10) = v43;
      *(end + 3) = v18;
      *(end + 4) = v19;
      *(end + 2) = v17;
      v20 = (end + 88);
    }

    self->_allInputPoints.__end_ = v20;
  }

  strokeGenerator = self->_strokeGenerator;
  if (strokeGenerator)
  {
    v36[2] = v40;
    v36[3] = v41;
    v36[4] = v42;
    v37 = v43;
    v36[0] = v38;
    v36[1] = v39;
    [(CRLPKStrokeGenerator *)strokeGenerator addPoint:v36];
  }

  ++self->_inputPointCount;
}

- (void)p_updatePath
{
  immutablePointCount = self->_immutablePointCount;
  strokeGenerator = self->_strokeGenerator;
  if (strokeGenerator)
  {
    v5 = [(CRLPKStrokeGenerator *)strokeGenerator fetchFilteredPointsFromIndex:immutablePointCount intoVector:&self->_filteredStrokePoints];
    self->_immutablePointCount = v5;
    if (v5 < immutablePointCount)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013933D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013933EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101393474();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPathCreator p_updatePath]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPathCreator.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:368 isFatal:0 description:"The immutable point count should only ever increase."];

      v5 = self->_immutablePointCount;
    }
  }

  else
  {
    sub_1002246C8(&self->_filteredStrokePoints.__begin_, 0x2E8BA2E8BA2E8BA3 * ((self->_allInputPoints.__end_ - self->_allInputPoints.__begin_) >> 3));
    v9 = self->_immutablePointCount;
    begin = self->_allInputPoints.__begin_;
    if (v9 < 0x2E8BA2E8BA2E8BA3 * ((self->_allInputPoints.__end_ - begin) >> 3))
    {
      v11 = 88 * v9;
      v12 = v9;
      do
      {
        v13 = begin + v11;
        v14 = *(v13 + 1);
        *v48 = *v13;
        v49 = v14;
        v15 = *(v13 + 2);
        v16 = *(v13 + 3);
        v17 = *(v13 + 4);
        v53 = *(v13 + 10);
        v51 = v16;
        v52 = v17;
        v50 = v15;
        [CRLPKStrokeGenerator outputPointFromInputPoint:v48];
        v18 = &self->_filteredStrokePoints.__begin_[v12];
        *&v18->timestamp = v54;
        v19 = v55;
        v20 = v56;
        v21 = v58;
        *&v18->force = v57;
        *&v18->altitude = v21;
        *&v18->location.y = v19;
        *&v18->aspectRatio = v20;
        ++v9;
        begin = self->_allInputPoints.__begin_;
        v11 += 88;
        ++v12;
      }

      while (v9 < 0x2E8BA2E8BA2E8BA3 * ((self->_allInputPoints.__end_ - begin) >> 3));
    }

    v5 = 0xCCCCCCCCCCCCCCCDLL * ((self->_filteredStrokePoints.__end_ - self->_filteredStrokePoints.__begin_) >> 4);
    self->_immutablePointCount = v5;
  }

  if (v5 > immutablePointCount && v5 >= 2)
  {
    v23 = self->_filteredStrokePoints.__begin_;
    v48[1] = 0;
    *&v49 = 0;
    v48[0] = 0;
    sub_100561B84(v48, v23, &v23[v5], v5);
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_100561C4C(&__p, v48[0], v48[1], 0xCCCCCCCCCCCCCCCDLL * ((v48[1] - v48[0]) >> 4));
    v24 = sub_1003D6A80(&__p, 0xCCCCCCCCCCCCCCCDLL * ((self->_filteredStrokePoints.__end_ - self->_filteredStrokePoints.__begin_) >> 4) > self->_immutablePointCount);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    v25 = [CRLBezierPath bezierPathWithCGPath:v24];
    immutableBezierPath = self->_immutableBezierPath;
    self->_immutableBezierPath = v25;

    CGPathRelease(v24);
    if (v48[0])
    {
      v48[1] = v48[0];
      operator delete(v48[0]);
    }
  }

  v28 = self->_filteredStrokePoints.__begin_;
  end = self->_filteredStrokePoints.__end_;
  v29 = 0xCCCCCCCCCCCCCCCDLL * ((end - v28) >> 4);
  v30 = self->_immutablePointCount;
  if (v29 > 1)
  {
    if (v29 <= v30)
    {
      v40 = +[CRLBezierPath bezierPath];
      mutableBezierPath = self->_mutableBezierPath;
      self->_mutableBezierPath = v40;
    }

    else
    {
      v34 = v30 - 1;
      if (!v30)
      {
        v34 = 0;
      }

      v35 = 80 * v34 - 80;
      if (v30 >= 2)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v48[0] = 0;
      v48[1] = 0;
      *&v49 = 0;
      sub_100561B84(v48, v28 + v36, end, 0xCCCCCCCCCCCCCCCDLL * ((end - (v28 + v36)) >> 4));
      v42 = 0;
      v43 = 0;
      v44 = 0;
      sub_100561C4C(&v42, v48[0], v48[1], 0xCCCCCCCCCCCCCCCDLL * ((v48[1] - v48[0]) >> 4));
      v37 = sub_1003D6A80(&v42, 0);
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      v38 = [CRLBezierPath bezierPathWithCGPath:v37];
      v39 = self->_mutableBezierPath;
      self->_mutableBezierPath = v38;

      CGPathRelease(v37);
      if (v48[0])
      {
        v48[1] = v48[0];
        operator delete(v48[0]);
      }
    }
  }

  else
  {
    v31 = v30 == 0;
    v32 = [(CRLFreehandDrawingPathCreator *)self p_pathWithLength:0.100000001 fromPoint:self->_initialPoint.x, self->_initialPoint.y];
    if (v31)
    {
      v33 = self->_mutableBezierPath;
      self->_mutableBezierPath = v32;
    }

    else
    {
      v33 = self->_immutableBezierPath;
      self->_immutableBezierPath = v32;
    }
  }
}

- ($EB457B8D156C558632463A5C38AABCB2)p_drawingInputPoint:(SEL)point atTime:(CGPoint)time predicted:(double)predicted
{
  retstr->var0 = xmmword_101463560;
  *&retstr->var1 = *algn_101463570;
  *&retstr->var5 = xmmword_101463590;
  *&retstr->var7 = unk_1014635A0;
  *&retstr->var9 = 0;
  *&retstr->var3 = xmmword_101463580;
  retstr->var0 = time;
  retstr->var1 = -1.0;
  retstr->var5 = predicted;
  retstr->var6 = a6;
  retstr->var7 = -1;
  return self;
}

- (id)p_pathWithLength:(double)length fromPoint:(CGPoint)point
{
  y = point.y;
  v6 = point.x + length * -0.5;
  v7 = +[CRLBezierPath bezierPath];
  [v7 moveToPoint:{v6, y}];
  [v7 curveToPoint:v6 + length controlPoint1:y controlPoint2:{length / 3.0 + v6, y, v6 + length / 3.0 * 2.0, y}];

  return v7;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end