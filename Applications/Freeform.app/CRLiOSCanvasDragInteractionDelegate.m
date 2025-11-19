@interface CRLiOSCanvasDragInteractionDelegate
- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4;
- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4;
- (CRLiOSCanvasDragInteractionDelegate)init;
- (CRLiOSCanvasDragInteractionDelegate)initWithInteractiveCanvasController:(id)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)p_dragItemsAtPoint:(CGPoint)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
@end

@implementation CRLiOSCanvasDragInteractionDelegate

- (CRLiOSCanvasDragInteractionDelegate)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLiOSCanvasDragInteractionDelegate;
  v5 = [(CRLiOSCanvasDragInteractionDelegate *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, v4);
    v7 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    dragItemsToCanvasDragItems = v6->_dragItemsToCanvasDragItems;
    v6->_dragItemsToCanvasDragItems = v7;

    v6->_allowRepsToPreventDragOnPhone = 1;
  }

  return v6;
}

- (CRLiOSCanvasDragInteractionDelegate)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183D078);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLiOSCanvasDragInteractionDelegate init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m";
    v18 = 1024;
    v19 = 39;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183D098);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasDragInteractionDelegate init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:39 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSCanvasDragInteractionDelegate init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained canvasView];
  [v7 locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_icc);
  [v14 convertBoundsToUnscaledPoint:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = objc_loadWeakRetained(&self->_icc);
  v20 = [v19 hitRep:{v16, v18}];

  [v6 _liftDelay];
  if (v21 == 0.7 || ([v6 _liftDelay], objc_msgSend(v20, "supportsAlternateLiftDelay:")))
  {
    v22 = [(CRLiOSCanvasDragInteractionDelegate *)self p_dragItemsAtPoint:v16, v18];
    dragItemsToCanvasDragItems = self->_dragItemsToCanvasDragItems;
    v24 = [v22 firstObject];
    v25 = [(NSMapTable *)dragItemsToCanvasDragItems objectForKey:v24];

    if ([v22 count])
    {
      v26 = [v25 sourceObject];
      if (v26)
      {
        [v7 setLocalContext:v26];
      }

      else
      {
        v27 = [[CRLiOSCanvasDraggingContext alloc] initWithSourceObject:0];
        v35 = objc_loadWeakRetained(&self->_icc);
        v34 = [v35 layerHost];
        v28 = [v34 asiOSCVC];
        v29 = [v28 modelContainerForLocalDragContext];
        [(CRLiOSCanvasDraggingContext *)v27 setModelContainer:v29];

        [v7 setLocalContext:v27];
      }

      v30 = objc_loadWeakRetained(&self->_icc);
      v31 = [v30 layerHost];
      v32 = [v31 asiOSCVC];
      [v32 dragSessionWillBegin];
    }
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  return v22;
}

- (id)p_dragItemsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v7 = [WeakRetained hitRep:{x, y}];

  v8 = +[NSMutableArray array];
  v9 = objc_loadWeakRetained(&self->_icc);
  v10 = [v9 layerHost];
  v11 = [v10 asiOSCVC];
  v12 = [v11 allowsSystemDragSession];

  if (v12)
  {
    v13 = [v7 repForDragging];
    [v13 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v28 = v13;
    if (v13 && ([v13 shouldOverrideParentForBeginningDragAtPoint:v13] & 1) == 0 && (objc_msgSend(v13, "parentRep"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      while (1)
      {
        v16 = [v15 dragItemsForBeginningDragOfChildRep:v13];
        if (v16)
        {
          break;
        }

        v17 = [v15 parentRep];

        v15 = v17;
        if (!v17)
        {
          goto LABEL_8;
        }
      }

      v18 = v16;
    }

    else
    {
LABEL_8:
      [v7 convertNaturalPointFromUnscaledCanvas:{x, y, v28}];
      v18 = [v7 dragItemsForBeginningDragAtPoint:?];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          if ([(CRLiOSCanvasDragInteractionDelegate *)self allowsMoveOperations])
          {
            [v24 setAllowsMoveOperation:1];
          }

          v25 = [v24 itemProvider];
          v26 = [[UIDragItem alloc] initWithItemProvider:v25];
          [v8 addObject:v26];
          [(NSMapTable *)self->_dragItemsToCanvasDragItems setObject:v24 forKey:v26];
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }
  }

  return v8;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  dragItemsToCanvasDragItems = self->_dragItemsToCanvasDragItems;
  v6 = a4;
  v7 = [(NSMapTable *)dragItemsToCanvasDragItems objectForKey:v6];
  v8 = [v7 previewGeneratingBlock];
  v9 = (v8)[2](v8, v6);

  return v9;
}

- (BOOL)dragInteraction:(id)a3 prefersFullSizePreviewsForSession:(id)a4
{
  v5 = [a4 items];
  v6 = [v5 firstObject];

  v7 = [(NSMapTable *)self->_dragItemsToCanvasDragItems objectForKey:v6];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315B34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315B48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315BF8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSCanvasDragInteractionDelegate dragInteraction:prefersFullSizePreviewsForSession:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:131 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasDragItem"];
  }

  v11 = [v7 prefersFullSizePreviews];

  return v11;
}

- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4
{
  v5 = [a4 items];
  v6 = [v5 firstObject];

  v7 = [(NSMapTable *)self->_dragItemsToCanvasDragItems objectForKey:v6];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315C20();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315C34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315CE4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSCanvasDragInteractionDelegate dragInteraction:sessionAllowsMoveOperation:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDragInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:138 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasDragItem"];
  }

  v11 = [v7 allowsMoveOperation];

  return v11;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a4 items];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMapTable *)self->_dragItemsToCanvasDragItems removeObjectForKey:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end