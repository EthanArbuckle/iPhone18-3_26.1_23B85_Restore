@interface CRLiOSCanvasDropInteractionDelegate
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CRLiOSCanvasDropInteractionDelegate)init;
- (CRLiOSCanvasDropInteractionDelegate)initWithICC:(id)a3;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)p_dragInfoForSession:(id)a3;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
@end

@implementation CRLiOSCanvasDropInteractionDelegate

- (CRLiOSCanvasDropInteractionDelegate)initWithICC:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLiOSCanvasDropInteractionDelegate;
  v5 = [(CRLiOSCanvasDropInteractionDelegate *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, v4);
    v7 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v6->_icc);
    [v7 addObserver:v6 selector:"p_canvasDidScroll:" name:@"CRLCanvasUpdateScrollNotification" object:WeakRetained];
  }

  return v6;
}

- (CRLiOSCanvasDropInteractionDelegate)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184D658);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLiOSCanvasDropInteractionDelegate init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDropInteractionDelegate.m";
    v18 = 1024;
    v19 = 40;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184D678);
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

  v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasDropInteractionDelegate init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDropInteractionDelegate.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:40 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSCanvasDropInteractionDelegate init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  if (self->_dndController || (WeakRetained = objc_loadWeakRetained(&self->_icc), v7 = [WeakRetained editingDisabled], WeakRetained, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else if ([v5 canLoadObjectsOfClass:objc_opt_class()])
  {
    v8 = 1;
  }

  else
  {
    v10 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:v5];
    v11 = [v10 itemSource];
    if ([v11 hasImportableText] & 1) != 0 || (objc_msgSend(v11, "hasImportableRichText"))
    {
      v8 = 1;
    }

    else
    {
      v8 = 1;
      if (([v11 hasImportableBoardItemsDetectingImportableURLsInText:1] & 1) == 0 && (objc_msgSend(v11, "hasContentLanguageDrawablesType") & 1) == 0)
      {
        v8 = [v11 hasNativeTypes];
      }
    }
  }

  return v8;
}

- (id)p_dragInfoForSession:(id)a3
{
  v4 = a3;
  v5 = [(CRLDragAndDropInfo *)self->_cachedDragInfo platformDraggingInfo];

  if (v5 != v4)
  {
    v6 = [[CRLDragAndDropInfo alloc] initWithPlatformDraggingInfo:v4];
    cachedDragInfo = self->_cachedDragInfo;
    self->_cachedDragInfo = v6;
  }

  v8 = self->_cachedDragInfo;
  v9 = v8;

  return v8;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_dndController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133DEC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133DED4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133DF70();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSCanvasDropInteractionDelegate dropInteraction:sessionDidEnter:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDropInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:82 isFatal:0 description:"expected nil value for '%{public}s'", "_dndController"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v12 = [WeakRetained layerHost];
  v13 = [v12 asiOSCVC];
  v14 = [v13 delegate];

  if (objc_opt_respondsToSelector())
  {
    [v14 dragDidEnter];
  }

  v15 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:v7];
  if (!self->_dndController)
  {
    v16 = objc_loadWeakRetained(&self->_icc);
    v17 = [v16 layerHost];
    v18 = [v17 asiOSCVC];
    v19 = [v18 newDragAndDropController];
    dndController = self->_dndController;
    self->_dndController = v19;
  }

  v21 = objc_loadWeakRetained(&self->_icc);
  v22 = [v21 canvasView];
  [v7 locationInView:v22];
  v24 = v23;
  v26 = v25;

  [(CRLDragAndDropController *)self->_dndController draggingEntered:v15 atScaledPoint:v24, v26];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  if (!self->_dndController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133DF98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133DFAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E048();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasDropInteractionDelegate dropInteraction:sessionDidUpdate:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDropInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:98 isFatal:0 description:"invalid nil value for '%{public}s'", "_dndController"];
  }

  v9 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:v5];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v11 = [WeakRetained canvasView];
  [v5 locationInView:v11];
  v13 = v12;
  v15 = v14;

  v16 = [[UIDropProposal alloc] initWithDropOperation:{sub_1000ECBA0(-[CRLDragAndDropController draggingUpdated:atScaledPoint:](self->_dndController, "draggingUpdated:atScaledPoint:", v9, v13, v15))}];

  return v16;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = a4;
  if (!self->_dndController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133E070();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133E084();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E120();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasDropInteractionDelegate dropInteraction:sessionDidExit:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSCanvasDropInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:106 isFatal:0 description:"invalid nil value for '%{public}s'", "_dndController"];
  }

  v9 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:v5];
  [(CRLDragAndDropController *)self->_dndController draggingExited:v9];
  dndController = self->_dndController;
  self->_dndController = 0;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  cachedDragInfo = self->_cachedDragInfo;
  self->_cachedDragInfo = 0;
  v6 = a4;

  v14 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:v6];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [WeakRetained canvasView];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  self->_lastScaledPoint.x = v10;
  self->_lastScaledPoint.y = v12;
  if (![(CRLDragAndDropController *)self->_dndController performDragOperation:v14 atScaledPoint:v10, v12])
  {
    dndController = self->_dndController;
    self->_dndController = 0;
  }
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  if (self->_dndController)
  {
    v6 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:a4];
    [(CRLDragAndDropController *)self->_dndController concludeDragOperation:v6];
    dndController = self->_dndController;
    self->_dndController = 0;
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  if (self->_dndController)
  {
    v6 = [(CRLiOSCanvasDropInteractionDelegate *)self p_dragInfoForSession:a4];
    [(CRLDragAndDropController *)self->_dndController draggingExited:v6];
    dndController = self->_dndController;
    self->_dndController = 0;
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = self->_cachedDragInfo;
  if ([(CRLDragAndDropInfo *)v9 numberOfDraggingItems]== 1)
  {
    v10 = [(CRLDragAndDropInfo *)v9 platformDraggingInfo];
    v11 = [v10 items];
    v12 = [v11 firstObject];

    if (v12 == v7)
    {
      v13 = [v8 target];
      v14 = [v13 container];
      v15 = [v8 target];
      [v15 center];
      v17 = v16;
      v19 = v18;
      WeakRetained = objc_loadWeakRetained(&self->_icc);
      v21 = [WeakRetained canvasView];
      [v14 convertPoint:v21 toView:{v17, v19}];
      v23 = v22;
      v25 = v24;

      v26 = objc_loadWeakRetained(&self->_icc);
      [v26 convertBoundsToUnscaledPoint:{v23, v25}];
      [(CRLDragAndDropInfo *)v9 setTargetPreviewCenter:?];
    }
  }

  return 0;
}

@end