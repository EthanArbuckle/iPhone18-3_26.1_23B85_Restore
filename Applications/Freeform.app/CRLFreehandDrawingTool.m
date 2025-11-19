@interface CRLFreehandDrawingTool
+ (id)closestDrawingLayout:(id)a3 toPoint:(CGPoint)a4 returningDistance:(double *)a5;
- (BOOL)finalizeAndResetWithSuccess:(BOOL)a3;
- (BOOL)selectInsideClosestDrawing:(id)a3 toPoint:(CGPoint)a4;
- (CRLFreehandDrawingTool)initWithInteractiveCanvasController:(id)a3;
- (CRLInteractiveCanvasController)icc;
- (id)possibleFreehandDrawingLayoutsInParentContainerAtPoint:(CGPoint)a3;
- (unint64_t)type;
- (void)convertToScratchOutOfStrokes:(id)a3;
- (void)performActionWithInputPoint:(id)a3 isInitialPoint:(BOOL)a4 isFinalPoint:(BOOL)a5;
@end

@implementation CRLFreehandDrawingTool

- (CRLFreehandDrawingTool)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingTool;
  v5 = [(CRLFreehandDrawingTool *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, v4);
  }

  return v6;
}

- (void)performActionWithInputPoint:(id)a3 isInitialPoint:(BOOL)a4 isFinalPoint:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  if (v5)
  {
    if (self->_isCurrentlyTracking || self->_isPerformingActions)
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101351F54();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101351F68(v8, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101352014();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTool performActionWithInputPoint:isInitialPoint:isFinalPoint:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:50 isFatal:0 description:"Shouldn't be already tracking or performing actions when receiving the initial point."];
    }

    *&self->_isPerformingActions = 257;
    self->_firstInputType = [v7 inputType];
  }

  self->_currentInputType = [v7 inputType];
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)a3
{
  self->_isPerformingActions = 0;
  firstInputType = self->_firstInputType;
  v5 = 3;
  if (firstInputType)
  {
    v5 = 0;
  }

  if (firstInputType == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [WeakRetained freehandDrawingToolkit];
  [v8 beginDrawingModeIfNeededForTouchType:v6];

  return a3;
}

- (unint64_t)type
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101855488);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLFreehandDrawingTool type]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m";
    v25 = 1024;
    v26 = 91;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018554A8);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTool type]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:91 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLFreehandDrawingTool type]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)convertToScratchOutOfStrokes:(id)a3
{
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135203C();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101352050(v5, self, v4);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101352148();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v6);
  }

  v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTool convertToScratchOutOfStrokes:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTool.m"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:109 isFatal:0 description:"Tool (%{public}@) does not support scratch-out.", v10];
}

- (CRLInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  return WeakRetained;
}

+ (id)closestDrawingLayout:(id)a3 toPoint:(CGPoint)a4 returningDistance:(double *)a5
{
  y = a4.y;
  v24 = *&a4.x;
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    v22 = vdupq_lane_s64(v24, 0);
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if (v13)
        {
          [*(*(&v28 + 1) + 8 * i) transformInRoot];
        }

        else
        {
          memset(&v26, 0, sizeof(v26));
        }

        CGAffineTransformInvert(&v27, &v26);
        v25 = vaddq_f64(*&v27.tx, vmlaq_f64(vmulq_n_f64(*&v27.c, y), v22, *&v27.a));
        [v13 boundsForStandardKnobs];
        v18 = sub_1001200A8(v25.f64[0], v25.f64[1], v14, v15, v16, v17);
        if (v18 <= v11)
        {
          v19 = v18;
          v20 = v13;

          v11 = v19;
          v9 = v20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
    if (a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    v11 = 1.79769313e308;
    if (a5)
    {
LABEL_14:
      *a5 = v11;
    }
  }

  return v9;
}

- (id)possibleFreehandDrawingLayoutsInParentContainerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained parentForFreehandDrawingLayoutsAtPoint:{x, y}];

  v7 = [v6 children];
  v8 = [CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:v7];

  return v8;
}

- (BOOL)selectInsideClosestDrawing:(id)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [objc_opt_class() closestDrawingLayout:v7 toPoint:0 returningDistance:{x, y}];

  v9 = objc_loadWeakRetained(&self->_icc);
  v10 = v9;
  if (v8)
  {
    v11 = [v9 selectionModelTranslator];
    v12 = [v8 freehandInfo];
    v13 = [v11 selectionPathForNothingSelectedInsideGroup:v12];
    [v10 setSelectionPath:v13 withSelectionFlags:0];
  }

  else
  {
    v11 = [v9 canvasEditor];
    v12 = [v11 selectionPathWithInfo:0];
    [v10 setSelectionPath:v12 withSelectionFlags:0];
    v13 = v10;
  }

  return v8 != 0;
}

@end