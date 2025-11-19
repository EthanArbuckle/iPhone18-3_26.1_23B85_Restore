@interface CRLFreehandDrawingPKSelectionManager
- (BOOL)p_areSelectedFreehandShapesEqualToSelectedStrokesInPK:(id)a3;
- (CRLFreehandDrawingPKSelectionManager)initWithDelegate:(id)a3;
- (CRLFreehandDrawingSelectionDecorator)selectionDecorator;
- (id)interactiveCanvasController;
- (id)p_cachedDrawingShapeItemsForStrokes:(id)a3;
- (id)p_cachedStrokesForDrawingShapeItems:(id)a3;
- (id)strokeDataUUIDsForNonInteractiveDrawings;
- (id)strokeUUIDsToDrawingItems;
- (id)strokeUUIDsToDrawingShapeItems;
- (id)strokeUUIDsToStrokes;
- (void)allStrokesOnCanvasDidChange:(id)a3 inDrawing:(id)a4;
- (void)beginSuppressingSmartSelection;
- (void)dealloc;
- (void)didAppearInWindowScene:(id)a3;
- (void)didSelectStrokes:(id)a3 selectionType:(int64_t)a4 inAttachment:(id)a5;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3;
- (void)dynamicOperationDidEnd;
- (void)endSuppressingSmartSelection;
- (void)installSelectionView:(id)a3 fromView:(id)a4;
- (void)p_canvasDidScroll:(id)a3;
- (void)p_canvasDidZoom:(id)a3;
- (void)p_canvasWillZoom:(id)a3;
- (void)p_didEnterBackground:(id)a3;
- (void)p_editorControllerSelectionPathDidChanged:(id)a3;
- (void)p_indexHandwrittenTextsFromDrawing;
- (void)p_recursivelyAddFreehandDrawingItemsFromGroup:(id)a3 drawingItems:(id)a4;
- (void)p_removeCurrentSelectionView;
- (void)p_selectStrokesInDrawingShapeItems:(id)a3;
- (void)p_setDrawingsAttachmentToSmartSelectionController;
- (void)p_willEnterForeground:(id)a3;
- (void)pencilKitDidSmartSelectPreviouslySelectedStrokes:(id)a3;
- (void)replacingPotentiallySmartSelectedItems:(id)a3 withNewItems:(id)a4;
- (void)setCurrentSelectedDrawingItemsAsSmartSelected;
- (void)teardown;
- (void)updatePKStrokesFromAllFreehandDrawingItemsOnCanvas;
@end

@implementation CRLFreehandDrawingPKSelectionManager

- (CRLFreehandDrawingPKSelectionManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CRLFreehandDrawingPKSelectionManager;
  v5 = [(CRLFreehandDrawingPKSelectionManager *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, v4);
    v8 = [v4 interactiveCanvasControllerForPKSelectionManager:v6];

    v9 = [NSTimer scheduledTimerWithTimeInterval:v6 target:"p_indexHandwrittenTextsFromDrawing" selector:0 userInfo:1 repeats:25.0];
    drawingIndexingTimer = v6->_drawingIndexingTimer;
    v6->_drawingIndexingTimer = v9;

    v11 = [v8 pkDrawingProvider];
    objc_storeWeak(&v6->_drawingProvider, v11);

    WeakRetained = objc_loadWeakRetained(&v6->_drawingProvider);
    if (!WeakRetained)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101311FF0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101312018();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013120B4();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager initWithDelegate:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:87 isFatal:0 description:"invalid nil value for '%{public}s'", "_drawingProvider"];
    }

    v16 = [v8 drawingIntelligenceProvider];
    objc_storeWeak(&v6->_intelligenceProvider, v16);

    v17 = objc_loadWeakRetained(&v6->_intelligenceProvider);
    if (!v17)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013120DC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101312104();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013121A0();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager initWithDelegate:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:90 isFatal:0 description:"invalid nil value for '%{public}s'", "_intelligenceProvider"];
    }

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = [v8 editorController];
    [v21 addObserver:v6 selector:"p_editorControllerSelectionPathDidChanged:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v22];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v6 selector:"p_canvasWillZoom:" name:@"CRLCanvasWillZoomNotification" object:v8];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v6 selector:"p_canvasDidZoom:" name:@"CRLCanvasDidZoomNotification" object:v8];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v6 selector:"p_canvasDidScroll:" name:@"CRLCanvasDidScrollNotification" object:v8];

    __dmb(0xBu);
    v26 = [_TtC8Freeform25CRLLastSubmittedTaskQueue taskQueueWithQoSAsBackgroundWithLabel:@"com.apple.freeform.pk-selection-manager.on-board-indexing.queue"];
    onBoardIndexingQueue = v6->_onBoardIndexingQueue;
    v6->_onBoardIndexingQueue = v26;
  }

  return v6;
}

- (void)teardown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013121C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013121DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131226C();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    v3 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager teardown]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:130 isFatal:0 description:"attempting to call teardown on an instance of CRLFreehandDrawingPKSelectionManager that has already been torn down."];
  }

  else
  {
    self->_isTornDown = 1;
    smartSelectionController = self->_smartSelectionController;
    self->_smartSelectionController = 0;

    drawing = self->_drawing;
    self->_drawing = 0;

    [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment teardown];
    drawingsAttachment = self->_drawingsAttachment;
    self->_drawingsAttachment = 0;

    [(CRLFreehandDrawingSelectionDecorator *)self->_selectionDecorator tearDown];
    selectionDecorator = self->_selectionDecorator;
    self->_selectionDecorator = 0;

    objc_storeWeak(&self->_drawingProvider, 0);
    objc_storeWeak(&self->_intelligenceProvider, 0);
    [(NSTimer *)self->_drawingIndexingTimer invalidate];
    drawingIndexingTimer = self->_drawingIndexingTimer;
    self->_drawingIndexingTimer = 0;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:self name:@"CRLCanvasWillZoomNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 removeObserver:self name:@"CRLCanvasDidZoomNotification" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 removeObserver:self name:@"CRLCanvasDidScrollNotification" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    v16 = +[NSNotification CRLiOSSceneWillEnterForeground];
    [v15 removeObserver:self name:v16 object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    v17 = +[NSNotification CRLiOSSceneDidEnterBackground];
    [v18 removeObserver:self name:v17 object:0];
  }
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312294();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013122A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312338();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:135 isFatal:0 description:"teardown not called for CRLFreehandDrawingPKSelectionManager."];
  }

  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingPKSelectionManager;
  [(CRLFreehandDrawingPKSelectionManager *)&v6 dealloc];
}

- (void)didAppearInWindowScene:(id)a3
{
  v4 = a3;
  v9 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSNotification CRLiOSSceneWillEnterForeground];
  [v9 removeObserver:self name:v5 object:0];

  v6 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v9 removeObserver:self name:v6 object:0];

  v7 = +[NSNotification CRLiOSSceneWillEnterForeground];
  [v9 addObserver:self selector:"p_willEnterForeground:" name:v7 object:v4];

  v8 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v9 addObserver:self selector:"p_didEnterBackground:" name:v8 object:v4];
}

- (id)strokeUUIDsToDrawingItems
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingProvider);
  v3 = [WeakRetained strokeUUIDsToDrawingItems];

  return v3;
}

- (id)strokeUUIDsToDrawingShapeItems
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingProvider);
  v3 = [WeakRetained strokeUUIDsToDrawingShapeItems];

  return v3;
}

- (id)strokeUUIDsToStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingProvider);
  v3 = [WeakRetained strokeUUIDsToStrokes];

  return v3;
}

- (CRLFreehandDrawingSelectionDecorator)selectionDecorator
{
  selectionDecorator = self->_selectionDecorator;
  if (!selectionDecorator)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

    v6 = [[CRLFreehandDrawingSelectionDecorator alloc] initWithInteractiveCanvasController:v5];
    v7 = self->_selectionDecorator;
    self->_selectionDecorator = v6;

    selectionDecorator = self->_selectionDecorator;
  }

  return selectionDecorator;
}

- (void)updatePKStrokesFromAllFreehandDrawingItemsOnCanvas
{
  [(CRLFreehandDrawingPKSelectionManager *)self p_setDrawingsAttachmentToSmartSelectionController];
  v3 = [(PKSmartSelectionController *)self->_smartSelectionController recognitionController];
  [v3 tagAsActive];

  if (qword_101AD5A08 != -1)
  {
    sub_101312360();
  }

  v4 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting recognition controller as active.", v5, 2u);
  }
}

- (void)setCurrentSelectedDrawingItemsAsSmartSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = v4;
  v5 = [v4 infosForCurrentSelectionPath];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        if (v12)
        {
          v13 = [(CRLFreehandDrawingPKSelectionManager *)self strokeUUIDsToDrawingShapeItems];
          v14 = [v13 allValues];
          v15 = [v14 containsObject:v12];

          if (v15)
          {
            [(NSMutableArray *)self->_smartSelectedDrawingShapeItems addObject:v12];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3
{
  if (a3)
  {
    self->_isInDynamicOperationWithRealTimeCommands = 1;
  }

  [(CRLFreehandDrawingPKSelectionManager *)self p_removeCurrentSelectionView];
}

- (void)dynamicOperationDidEnd
{
  if (self->_isInDynamicOperationWithRealTimeCommands)
  {
    self->_isInDynamicOperationWithRealTimeCommands = 0;
    if ([(NSMutableArray *)self->_smartSelectedDrawingShapeItems count])
    {
      if (!self->_isSmartSelectionSuppressed)
      {
        smartSelectionController = self->_smartSelectionController;

        [(PKSmartSelectionController *)smartSelectionController installSelectionViewForCurrentSelection];
      }
    }
  }
}

- (void)replacingPotentiallySmartSelectedItems:(id)a3 withNewItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        if (!v15 || (v16 = v15, v17 = [(NSMutableArray *)self->_smartSelectedDrawingShapeItems containsObject:v15], v16, !v17))
        {
          v18 = v8;
          goto LABEL_22;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * v23);
        v25 = objc_opt_class();
        v26 = sub_100014370(v25, v24);
        if (v26)
        {
          [v18 addObject:{v26, v28}];
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  v27 = [v18 count];
  if (v27 == [v19 count])
  {
    objc_storeStrong(&self->_smartSelectedDrawingShapeItems, v18);
    self->_keepSmartSelectedDrawingShapeItemAfterSelectionPathUpdated = 1;
  }

LABEL_22:
}

- (void)beginSuppressingSmartSelection
{
  if (self->_isSmartSelectionSuppressed)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312374();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312388();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312418();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager beginSuppressingSmartSelection]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:272 isFatal:0 description:"Should not begin suppressing smart selection when it is already suppressed."];
  }

  else
  {
    self->_isSmartSelectionSuppressed = 1;

    [(CRLFreehandDrawingPKSelectionManager *)self p_removeCurrentSelectionView];
  }
}

- (void)endSuppressingSmartSelection
{
  if (self->_isSmartSelectionSuppressed)
  {
    self->_isSmartSelectionSuppressed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

    [v4 infosForCurrentSelectionPath];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = objc_opt_class();
          v12 = sub_100014370(v11, v10);
          if (!v12 || ([(NSMutableArray *)self->_smartSelectedDrawingShapeItems containsObject:v12, v14]& 1) == 0)
          {

            goto LABEL_23;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if ([(NSArray *)self->_selectedStrokes count])
    {
      [(CRLFreehandDrawingPKSelectionManager *)self installSmartSelectionViewForCurrentSelection];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312440();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312454();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013124E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager endSuppressingSmartSelection]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:284 isFatal:0 description:"Should not end suppressing smart selection when it is not suppressed."];
  }

LABEL_23:
}

- (void)allStrokesOnCanvasDidChange:(id)a3 inDrawing:(id)a4
{
  v6 = a4;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131250C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312520();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013125B0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager allStrokesOnCanvasDidChange:inDrawing:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:307 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  objc_storeStrong(&self->_drawing, a4);
  [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment setDrawing:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013125D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312600();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131269C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager allStrokesOnCanvasDidChange:inDrawing:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:313 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
  }

  v37 = v6;
  [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment updateAttachmentBoundsAfterCanvasVisibleBoundsChanged];
  drawingsAttachment = self->_drawingsAttachment;
  [v11 visibleUnscaledRect];
  [(CRLFreehandDrawingsAttachment *)drawingsAttachment invalidateStrokeCacheForVisibleUnscaledBounds:1 force:?];
  v16 = +[NSMutableSet set];
  v17 = [v11 editorController];
  v18 = [v17 selectionPath];

  v19 = [v11 selectionModelTranslator];
  v20 = [v19 infosForSelectionPath:v18];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v42 + 1) + 8 * i);
        v27 = objc_opt_class();
        v28 = sub_100014370(v27, v26);
        if (v28)
        {
          [v16 addObject:v28];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v23);
  }

  v29 = [v16 allObjects];
  v30 = [(CRLFreehandDrawingPKSelectionManager *)self p_cachedStrokesForDrawingShapeItems:v29];
  selectedStrokes = self->_selectedStrokes;
  self->_selectedStrokes = v30;

  [(PKSmartSelectionController *)self->_smartSelectionController selectStrokesWithoutDidSelectStrokesUpdate:self->_selectedStrokes inDrawing:self->_drawing];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [v16 allObjects];
  v33 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v39;
    while (2)
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v32);
        }

        if (![(NSMutableArray *)self->_smartSelectedDrawingShapeItems containsObject:*(*(&v38 + 1) + 8 * j)])
        {

          goto LABEL_42;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  if (!self->_isSmartSelectionSuppressed && !self->_isInDynamicOperationWithRealTimeCommands)
  {
    [(PKSmartSelectionController *)self->_smartSelectionController installSelectionViewForCurrentSelection];
  }

LABEL_42:
}

- (void)p_setDrawingsAttachmentToSmartSelectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013126C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013126D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312774();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager p_setDrawingsAttachmentToSmartSelectionController]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:347 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
  }

  if (!self->_smartSelectionController)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 pencilKitCanvasViewForPKSelectionManager:self];

    v10 = [v4 layerHost];
    v11 = [v10 asPencilGestureProvider];

    v12 = [v11 doubleTapGestureRecognizer];
    v13 = objc_loadWeakRetained(&self->_intelligenceProvider);
    v14 = [v13 pkRecognitionController];

    if (!v14)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131279C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013127C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101312860();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager p_setDrawingsAttachmentToSmartSelectionController]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:353 isFatal:0 description:"invalid nil value for '%{public}s'", "recognitionController"];
    }

    v18 = [v14 drawing];
    drawing = self->_drawing;
    self->_drawing = v18;

    v20 = [[PKSmartSelectionController alloc] initWithDelegate:self canvasView:v9 gestureRecognizer:v12 recognitionController:v14];
    smartSelectionController = self->_smartSelectionController;
    self->_smartSelectionController = v20;
  }

  [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment teardown];
  drawingsAttachment = self->_drawingsAttachment;
  self->_drawingsAttachment = 0;

  if (self->_drawing)
  {
    v23 = [[CRLFreehandDrawingsAttachment alloc] initWithDelegate:self drawing:self->_drawing];
    v24 = self->_drawingsAttachment;
    self->_drawingsAttachment = v23;

    v25 = [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment drawing];

    if (v25)
    {
      [(PKSmartSelectionController *)self->_smartSelectionController setExternalAttachment:self->_drawingsAttachment];
      v26 = self->_drawingsAttachment;
      [v4 visibleUnscaledRect];
      [(CRLFreehandDrawingsAttachment *)v26 invalidateStrokeCacheForVisibleUnscaledBounds:1 force:?];
      v27 = +[NSNotificationCenter defaultCenter];
      [v27 postNotificationName:@"CRLActiveBoardDidOpenToCacheAllDrawingIndexedContents" object:self];

      [(CRLFreehandDrawingPKSelectionManager *)self p_indexHandwrittenTextsFromDrawing];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101312888();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013128B0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101312940();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v28);
      }

      v29 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager p_setDrawingsAttachmentToSmartSelectionController]"];
      v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
      [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:369 isFatal:0 description:"Drawing attachment has no drawing."];
    }
  }
}

- (void)p_recursivelyAddFreehandDrawingItemsFromGroup:(id)a3 drawingItems:(id)a4
{
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [a3 childItems];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = sub_100014370(v13, v12);
        v15 = objc_opt_class();
        v16 = sub_100014370(v15, v12);
        v17 = v16;
        if (v14)
        {
          [v6 addObject:v14];
        }

        else if (v16)
        {
          [(CRLFreehandDrawingPKSelectionManager *)self p_recursivelyAddFreehandDrawingItemsFromGroup:v16 drawingItems:v6];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)p_editorControllerSelectionPathDidChanged:(id)a3
{
  v4 = [(PKSmartSelectionController *)self->_smartSelectionController currentSelectedStrokes];
  v5 = [(CRLFreehandDrawingPKSelectionManager *)self p_areSelectedFreehandShapesEqualToSelectedStrokesInPK:v4];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSMutableSet set];
    v27 = self;
    v7 = [(CRLFreehandDrawingPKSelectionManager *)self interactiveCanvasController];
    v8 = [v7 freehandDrawingToolkit];
    v9 = [v8 isInDrawingMode];

    v10 = [v7 editorController];
    v11 = [v10 selectionPath];

    v26 = v7;
    v12 = [v7 selectionModelTranslator];
    v13 = [v12 infosForSelectionPath:v11];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_opt_class();
          v21 = sub_100014370(v20, v19);
          if (v9)
          {
            [v6 crl_addNonNilObject:v21];
          }

          else
          {
            v22 = objc_opt_class();
            v23 = [v21 childItems];
            v24 = sub_100014370(v22, v23);

            [v6 crl_addObjectsFromNonNilArray:v24];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v25 = [v6 allObjects];
    [(CRLFreehandDrawingPKSelectionManager *)v27 p_selectStrokesInDrawingShapeItems:v25];
  }
}

- (void)p_canvasWillZoom:(id)a3
{
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = sub_100014370(v4, WeakRetained);

  v7 = [v6 smartSelectionView];

  if (v7)
  {
    v8 = [v6 smartSelectionView];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F1A50;
    v9[3] = &unk_10183AB38;
    v9[4] = v6;
    [UIView transitionWithView:v8 duration:0 options:v9 animations:0 completion:0.25];
  }
}

- (void)p_canvasDidZoom:(id)a3
{
  [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment updateAttachmentBoundsAfterCanvasVisibleBoundsChanged];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = sub_100014370(v4, WeakRetained);

  v6 = [v10 smartSelectionView];

  if (v6)
  {
    [v10 removeSmartSelectionViewIfNecessary];
    [(PKSmartSelectionController *)self->_smartSelectionController installSelectionViewForCurrentSelection];
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = [v7 interactiveCanvasControllerForPKSelectionManager:self];

  drawingsAttachment = self->_drawingsAttachment;
  [v8 visibleUnscaledRect];
  [(CRLFreehandDrawingsAttachment *)drawingsAttachment invalidateStrokeCacheForVisibleUnscaledBounds:0 force:?];
}

- (void)p_canvasDidScroll:(id)a3
{
  [(CRLFreehandDrawingsAttachment *)self->_drawingsAttachment updateAttachmentBoundsAfterCanvasVisibleBoundsChanged];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  drawingsAttachment = self->_drawingsAttachment;
  [v6 visibleUnscaledRect];
  [(CRLFreehandDrawingsAttachment *)drawingsAttachment invalidateStrokeCacheForVisibleUnscaledBounds:0 force:?];
}

- (void)p_selectStrokesInDrawingShapeItems:(id)a3
{
  v5 = a3;
  [(CRLFreehandDrawingPKSelectionManager *)self p_removeCurrentSelectionView];
  v4 = [(CRLFreehandDrawingPKSelectionManager *)self p_cachedStrokesForDrawingShapeItems:v5];
  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    if ([v4 count])
    {
      [(PKSmartSelectionController *)self->_smartSelectionController selectStrokesWithoutDidSelectStrokesUpdate:v4 inDrawing:self->_drawing];
    }
  }

  else
  {
    [(PKSmartSelectionController *)self->_smartSelectionController clearSelectionIfNecessaryWithCompletion:&stru_10183C010];
  }

  objc_storeStrong(&self->_selectedStrokes, v4);
  if (self->_keepSmartSelectedDrawingShapeItemAfterSelectionPathUpdated)
  {
    self->_keepSmartSelectedDrawingShapeItemAfterSelectionPathUpdated = 0;
  }

  else
  {
    [(NSMutableArray *)self->_smartSelectedDrawingShapeItems removeAllObjects];
  }
}

- (id)p_cachedStrokesForDrawingShapeItems:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_drawingProvider);

  if (!WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312968();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131297C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312A18();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingPKSelectionManager p_cachedStrokesForDrawingShapeItems:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingPKSelectionManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:467 isFatal:0 description:"invalid nil value for '%{public}s'", "_drawingProvider"];
  }

  v9 = objc_loadWeakRetained(&self->_drawingProvider);

  if (v9)
  {
    v10 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = objc_loadWeakRetained(&self->_drawingProvider);
          v18 = [v17 drawingShapeItemUUIDToStrokeUUIDBidirectionalMap];
          v19 = [v16 id];
          v20 = [v18 objectForKeyedSubscript:v19];

          if (v20)
          {
            v21 = [(CRLFreehandDrawingPKSelectionManager *)self strokeUUIDsToStrokes];
            v22 = [v21 objectForKey:v20];

            [v10 crl_addNonNilObject:v22];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v4 = v24;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)p_cachedDrawingShapeItemsForStrokes:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(CRLFreehandDrawingPKSelectionManager *)self strokeUUIDsToDrawingShapeItems];
        v13 = [v11 _strokeUUID];
        v14 = [v12 objectForKeyedSubscript:v13];

        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 allObjects];

  return v15;
}

- (void)p_removeCurrentSelectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installSmartSelectionView:0 forPKSelectionManager:self];
}

- (void)p_indexHandwrittenTextsFromDrawing
{
  v3 = [(PKDrawing *)self->_drawing strokes];
  v4 = [v3 count];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

    v7 = [v6 editingCoordinator];
    v8 = [v7 mainBoard];

    v9 = [v8 boardIdentifierStringRepresentation];
    v10 = [(PKDrawing *)self->_drawing copy];
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000F2390;
    v15 = &unk_10183C0A0;
    objc_copyWeak(&v18, &location);
    v16 = v10;
    v17 = v9;
    v11 = objc_retainBlock(&v12);
    [(CRLLastSubmittedTaskQueue *)self->_onBoardIndexingQueue performAsync:v11, v12, v13, v14, v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)p_willEnterForeground:(id)a3
{
  v4 = a3;
  if (qword_101AD5A08 != -1)
  {
    sub_101312A40();
  }

  v5 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting recognition controller as active.", v7, 2u);
  }

  v6 = [(PKSmartSelectionController *)self->_smartSelectionController recognitionController];
  [v6 tagAsActive];
}

- (void)p_didEnterBackground:(id)a3
{
  v4 = a3;
  if (qword_101AD5A08 != -1)
  {
    sub_101312A54();
  }

  v5 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting recognition controller as idle.", v7, 2u);
  }

  v6 = [(PKSmartSelectionController *)self->_smartSelectionController recognitionController];
  [v6 tagAsIdle];
}

- (BOOL)p_areSelectedFreehandShapesEqualToSelectedStrokesInPK:(id)a3
{
  v36 = a3;
  v4 = +[NSMutableArray array];
  v34 = self;
  v5 = [(CRLFreehandDrawingPKSelectionManager *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isInDrawingMode];

  v8 = [v5 editorController];
  v9 = [v8 selectionPath];

  v35 = v5;
  v10 = [v5 selectionModelTranslator];
  v11 = [v10 infosForSelectionPath:v9];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    v37 = *v45;
    do
    {
      v15 = 0;
      v38 = v13;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        if (v7)
        {
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          [v4 crl_addNonNilObject:v18];
        }

        else
        {
          v19 = objc_opt_class();
          v18 = sub_100014370(v19, v16);
          v20 = [v18 childItems];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v40 + 1) + 8 * i);
                v26 = objc_opt_class();
                v27 = sub_100014370(v26, v25);
                [v4 crl_addNonNilObject:v27];
              }

              v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v22);
          }

          v14 = v37;
          v13 = v38;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  v28 = [(CRLFreehandDrawingPKSelectionManager *)v34 p_cachedStrokesForDrawingShapeItems:v4];
  v29 = [v28 count];
  if (v29 == [v36 count])
  {
    v30 = [NSSet setWithArray:v28];
    v31 = [NSSet setWithArray:v36];
    v32 = [v30 isEqualToSet:v31];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)installSelectionView:(id)a3 fromView:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installSmartSelectionView:v5 forPKSelectionManager:self];
}

- (id)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  return v4;
}

- (void)pencilKitDidSmartSelectPreviouslySelectedStrokes:(id)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(NSArray *)self->_selectedStrokes containsObject:*(*(&v18 + 1) + 8 * v8), v18])
        {
          v13 = v4;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = [(CRLFreehandDrawingPKSelectionManager *)self p_cachedDrawingShapeItemsForStrokes:v4];
  v10 = [v9 mutableCopy];
  smartSelectedDrawingShapeItems = self->_smartSelectedDrawingShapeItems;
  self->_smartSelectedDrawingShapeItems = v10;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

  v14 = [v13 layerHost];
  v15 = [v14 asiOSCVC];

  v16 = [v15 delegate];
  v17 = [v16 currentDocumentMode];

  self->_keepSmartSelectedDrawingShapeItemAfterSelectionPathUpdated = 1;
  [v17 pencilKitDidSmartSelectStrokesInDrawingShapeItems:self->_smartSelectedDrawingShapeItems];
  [v13 invalidateAllLayers];
  [(PKSmartSelectionController *)self->_smartSelectionController installSelectionViewForCurrentSelection];

LABEL_11:
}

- (id)strokeDataUUIDsForNonInteractiveDrawings
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingProvider);
  v3 = [WeakRetained strokeDataUUIDsForNonInteractiveDrawings];

  return v3;
}

- (void)didSelectStrokes:(id)a3 selectionType:(int64_t)a4 inAttachment:(id)a5
{
  v6 = a3;
  v7 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = [(CRLFreehandDrawingPKSelectionManager *)self strokeUUIDsToDrawingShapeItems];
        v15 = [v13 _strokeUUID];
        v16 = [v14 objectForKey:v15];

        if (v16)
        {
          [v7 addObject:v16];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v17 = [v7 allObjects];
  v18 = [v17 mutableCopy];
  smartSelectedDrawingShapeItems = self->_smartSelectedDrawingShapeItems;
  self->_smartSelectedDrawingShapeItems = v18;

  v20 = [v8 copy];
  selectedStrokes = self->_selectedStrokes;
  self->_selectedStrokes = v20;

  if (![(CRLFreehandDrawingPKSelectionManager *)self p_areSelectedFreehandShapesEqualToSelectedStrokesInPK:v8])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = [WeakRetained interactiveCanvasControllerForPKSelectionManager:self];

    v24 = [v23 layerHost];
    v25 = [v24 asiOSCVC];

    v26 = [v25 delegate];
    v27 = [v26 currentDocumentMode];

    [v27 pencilKitDidSmartSelectStrokesInDrawingShapeItems:self->_smartSelectedDrawingShapeItems];
  }
}

@end