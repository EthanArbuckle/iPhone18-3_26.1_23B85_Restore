@interface CRLiOSCanvasDragInteractionDelegate
- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session;
- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation;
- (CRLiOSCanvasDragInteractionDelegate)init;
- (CRLiOSCanvasDragInteractionDelegate)initWithInteractiveCanvasController:(id)controller;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)p_dragItemsAtPoint:(CGPoint)point;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
@end

@implementation CRLiOSCanvasDragInteractionDelegate

- (CRLiOSCanvasDragInteractionDelegate)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CRLiOSCanvasDragInteractionDelegate;
  v5 = [(CRLiOSCanvasDragInteractionDelegate *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, controllerCopy);
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  canvasView = [WeakRetained canvasView];
  [sessionCopy locationInView:canvasView];
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_icc);
  [v14 convertBoundsToUnscaledPoint:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = objc_loadWeakRetained(&self->_icc);
  v20 = [v19 hitRep:{v16, v18}];

  [interactionCopy _liftDelay];
  if (v21 == 0.7 || ([interactionCopy _liftDelay], objc_msgSend(v20, "supportsAlternateLiftDelay:")))
  {
    v22 = [(CRLiOSCanvasDragInteractionDelegate *)self p_dragItemsAtPoint:v16, v18];
    dragItemsToCanvasDragItems = self->_dragItemsToCanvasDragItems;
    firstObject = [v22 firstObject];
    v25 = [(NSMapTable *)dragItemsToCanvasDragItems objectForKey:firstObject];

    if ([v22 count])
    {
      sourceObject = [v25 sourceObject];
      if (sourceObject)
      {
        [sessionCopy setLocalContext:sourceObject];
      }

      else
      {
        v27 = [[CRLiOSCanvasDraggingContext alloc] initWithSourceObject:0];
        v35 = objc_loadWeakRetained(&self->_icc);
        layerHost = [v35 layerHost];
        asiOSCVC = [layerHost asiOSCVC];
        modelContainerForLocalDragContext = [asiOSCVC modelContainerForLocalDragContext];
        [(CRLiOSCanvasDraggingContext *)v27 setModelContainer:modelContainerForLocalDragContext];

        [sessionCopy setLocalContext:v27];
      }

      v30 = objc_loadWeakRetained(&self->_icc);
      layerHost2 = [v30 layerHost];
      asiOSCVC2 = [layerHost2 asiOSCVC];
      [asiOSCVC2 dragSessionWillBegin];
    }
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  return v22;
}

- (id)p_dragItemsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v7 = [WeakRetained hitRep:{x, y}];

  v8 = +[NSMutableArray array];
  v9 = objc_loadWeakRetained(&self->_icc);
  layerHost = [v9 layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  allowsSystemDragSession = [asiOSCVC allowsSystemDragSession];

  if (allowsSystemDragSession)
  {
    repForDragging = [v7 repForDragging];
    [repForDragging convertNaturalPointFromUnscaledCanvas:{x, y}];
    v28 = repForDragging;
    if (repForDragging && ([repForDragging shouldOverrideParentForBeginningDragAtPoint:repForDragging] & 1) == 0 && (objc_msgSend(repForDragging, "parentRep"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      while (1)
      {
        v16 = [v15 dragItemsForBeginningDragOfChildRep:repForDragging];
        if (v16)
        {
          break;
        }

        parentRep = [v15 parentRep];

        v15 = parentRep;
        if (!parentRep)
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

          itemProvider = [v24 itemProvider];
          v26 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
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

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  dragItemsToCanvasDragItems = self->_dragItemsToCanvasDragItems;
  itemCopy = item;
  v7 = [(NSMapTable *)dragItemsToCanvasDragItems objectForKey:itemCopy];
  previewGeneratingBlock = [v7 previewGeneratingBlock];
  v9 = (previewGeneratingBlock)[2](previewGeneratingBlock, itemCopy);

  return v9;
}

- (BOOL)dragInteraction:(id)interaction prefersFullSizePreviewsForSession:(id)session
{
  items = [session items];
  firstObject = [items firstObject];

  v7 = [(NSMapTable *)self->_dragItemsToCanvasDragItems objectForKey:firstObject];
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

  prefersFullSizePreviews = [v7 prefersFullSizePreviews];

  return prefersFullSizePreviews;
}

- (BOOL)dragInteraction:(id)interaction sessionAllowsMoveOperation:(id)operation
{
  items = [operation items];
  firstObject = [items firstObject];

  v7 = [(NSMapTable *)self->_dragItemsToCanvasDragItems objectForKey:firstObject];
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

  allowsMoveOperation = [v7 allowsMoveOperation];

  return allowsMoveOperation;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [session items];
  v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(items);
        }

        [(NSMapTable *)self->_dragItemsToCanvasDragItems removeObjectForKey:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end