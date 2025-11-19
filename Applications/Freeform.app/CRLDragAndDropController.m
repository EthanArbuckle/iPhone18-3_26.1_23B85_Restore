@interface CRLDragAndDropController
+ (unint64_t)p_dragOperationForSupportedDragOperations:(unint64_t)a3;
+ (void)adjustGeometriesOfBoardItems:(id)a3 toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:(CGPoint)a4;
- (BOOL)insertDroppedNativeBoardItemsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5 isCrossAppSource:(BOOL)a6 isCrossDocument:(BOOL)a7;
- (BOOL)insertNativePasteboardBoardItems:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5;
- (BOOL)p_performDragOperationWithDragInfo:(id)a3 onDragDestination:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)p_shouldInsertDraggedBoardItems:(id)a3;
- (BOOL)performDragOperation:(id)a3 atScaledPoint:(CGPoint)a4;
- (BOOL)performIndirectDragOperationWithDragInfo:(id)a3 inContainer:(id)a4 targetZOrder:(unint64_t)a5;
- (BOOL)performIndirectDragOperationWithDragInfo:(id)a3 onInfo:(id)a4;
- (CRLDragAndDropController)init;
- (CRLDragAndDropController)initWithDelegate:(id)a3 interactiveCanvasController:(id)a4;
- (CRLDragAndDropControllerDelegate)delegate;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (id)p_accessibilityDescriptionForDropTarget:(id)a3;
- (id)p_alertPresenter;
- (id)p_dragDestinationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (id)p_errorPresenter;
- (id)p_modalOperationPresenter;
- (unint64_t)draggingEntered:(id)a3 atScaledPoint:(CGPoint)a4;
- (unint64_t)draggingUpdated:(id)a3 atScaledPoint:(CGPoint)a4;
- (unint64_t)p_dragOperationForDragInsideWithDraggingInfo:(id)a3 atScaledPoint:(CGPoint)a4;
- (void)cleanupEndOfDragOperation;
- (void)concludeDragOperation:(id)a3;
- (void)dealloc;
- (void)draggingExited:(id)a3;
- (void)insertDroppedImportableBoardItemsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5 completionHandler:(id)a6;
- (void)p_announceAccessibilityDropTarget:(id)a3;
- (void)p_hideDragAndDropHighlightOnCanvasEditor;
- (void)p_hideDragAndDropHighlightOnRep;
- (void)p_showDragAndDropHighlightForCanvasEditorWithDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (void)p_showDragAndDropHighlightForRep:(id)a3 atUnscaledPoint:(CGPoint)a4 draggingInfo:(id)a5;
- (void)p_updateHighlightStateForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4 dragOperation:(unint64_t)a5 dragDestination:(id)a6;
- (void)targetScrollViewDidScroll;
@end

@implementation CRLDragAndDropController

- (CRLDragAndDropController)initWithDelegate:(id)a3 interactiveCanvasController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CRLDragAndDropController;
  v8 = [(CRLDragAndDropController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_interactiveCanvasController, v7);
    v10 = dispatch_queue_create("com.apple.freeform.CRLDragInfosReadyAccess", 0);
    infosToBeInsertedAccessQueue = v9->_infosToBeInsertedAccessQueue;
    v9->_infosToBeInsertedAccessQueue = v10;

    v9->_targetZOrderForDropOperation = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (CRLDragAndDropController)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018604C0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLDragAndDropController init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m";
    v18 = 1024;
    v19 = 108;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018604E0);
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

  v7 = [NSString stringWithUTF8String:"[CRLDragAndDropController init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:108 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLDragAndDropController init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)dealloc
{
  if (self->_dragState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D57C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D590();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D618();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLDragAndDropController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:113 isFatal:0 description:"Did not clean up properly at end of drag operation!"];

    v6 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v7 = [v6 editingCoordinator];
    [v7 resumeCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  v8.receiver = self;
  v8.super_class = CRLDragAndDropController;
  [(CRLDragAndDropController *)&v8 dealloc];
}

- (id)p_alertPresenter
{
  v2 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v3 = [v2 layerHost];

  return v3;
}

- (id)p_modalOperationPresenter
{
  v2 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v3 = [v2 layerHost];

  return v3;
}

- (id)p_errorPresenter
{
  v2 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v3 = [v2 layerHost];

  return v3;
}

- (unint64_t)draggingEntered:(id)a3 atScaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D640();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D654();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D6DC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingEntered:atScaledPoint:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:159 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  dragState = self->_dragState;
  if (dragState == 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D704();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D72C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D7B4();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v14 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingEntered:atScaledPoint:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:169 isFatal:0 description:"Called dragging entered when we were already in state entered!"];
  }

  else
  {
    if (dragState)
    {
      goto LABEL_24;
    }

    self->_dragState = 1;
    v12 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v13 = [v12 canvas];
    [v13 i_registerCanvasLayoutObserver:self];

    v14 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v15 = [v14 editingCoordinator];
    [v15 suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

LABEL_24:
  v17 = [(CRLDragAndDropController *)self delegate];
  v18 = [v17 shouldAllowDragOperationForDragInfo:v7];

  if (v18)
  {
    infosToBeInsertedAccessQueue = self->_infosToBeInsertedAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10040AA98;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_sync(infosToBeInsertedAccessQueue, block);
    v20 = [(CRLDragAndDropController *)self delegate];
    v21 = [v20 shouldAllowDynamicInsertForDragInfo:v7];

    if (v21)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v54 = sub_10040AAAC;
      v55 = sub_10040AABC;
      v56 = 0;
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x3032000000;
      v49[3] = sub_10040AAAC;
      v49[4] = sub_10040AABC;
      v50 = 0;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10040AAC4;
      v45[3] = &unk_101839FD0;
      v45[4] = self;
      v46 = v7;
      v47 = buf;
      v48 = v49;
      dispatch_async(&_dispatch_main_q, v45);

      _Block_object_dispose(v49, 8);
      _Block_object_dispose(buf, 8);
    }

    self->_lastReturnedDragOperation = [(CRLDragAndDropController *)self p_dragOperationForDragInsideWithDraggingInfo:v7 atScaledPoint:x, y];
    self->_lastProvidedDragPoint.x = x;
    self->_lastProvidedDragPoint.y = y;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = [v7 inProcessDraggingSources];
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v23)
    {
      v30 = v23;
      v31 = *v42;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v22);
          }

          v33 = sub_1003035DC(*(*(&v41 + 1) + 8 * i), 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLDragOperationCallback);
          if (v33)
          {
            lastReturnedDragOperation = self->_lastReturnedDragOperation;
            v35 = [(CRLDragAndDropController *)self interactiveCanvasController];
            [v33 draggingEnteredWithOperation:lastReturnedDragOperation targetInteractiveCanvasController:v35];
          }
        }

        v30 = [v22 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v30);
    }

    if (qword_101AD5B68 != -1)
    {
      sub_10136D804();
    }

    v36 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_lastReturnedDragOperation;
      *buf = 134218242;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "-draggingEntered. Operation %lu with drag info %@", buf, 0x16u);
    }

    v38 = self->_lastReturnedDragOperation;
  }

  else
  {
    if (qword_101AD5B68 != -1)
    {
      sub_10136D7DC();
    }

    v39 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Preventing drag operation with -shouldAllowDragOperationForDragInfo: %@", buf, 0xCu);
    }

    v38 = 0;
  }

  return v38;
}

- (unint64_t)draggingUpdated:(id)a3 atScaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLDragAndDropController *)self delegate];
  v9 = [v8 shouldAllowDragOperationForDragInfo:v7];

  if (v9)
  {
    if (!self->_dragState)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136D8A4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136D8B8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136D940();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136D968(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingUpdated:atScaledPoint:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:317 isFatal:0 description:"draggingUpdated called without draggingEntered called first!"];

      [(CRLDragAndDropController *)self draggingEntered:v7 atScaledPoint:x, y];
    }

    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    infosToBeInsertedAccessQueue = self->_infosToBeInsertedAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10040BBC0;
    block[3] = &unk_101839FF8;
    block[4] = self;
    block[5] = &v56;
    dispatch_sync(infosToBeInsertedAccessQueue, block);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v14 = [v7 inProcessDraggingSources];
    v21 = [v14 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v21)
    {
      v22 = *v52;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = sub_1003035DC(*(*(&v51 + 1) + 8 * i), 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLDragOperationCallback);
          v25 = v24;
          if (v24 && ([v24 draggingWantsForcedUpdate] & 1) != 0)
          {

            canvasDidLayoutSinceLastUpdate = 1;
            goto LABEL_24;
          }
        }

        v21 = [v14 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    canvasDidLayoutSinceLastUpdate = self->_canvasDidLayoutSinceLastUpdate;
LABEL_24:
    self->_canvasDidLayoutSinceLastUpdate = 0;
    if (self->_lastProvidedDragPoint.x != x || self->_lastProvidedDragPoint.y != y || ((*(v57 + 24) | canvasDidLayoutSinceLastUpdate) & 1) != 0)
    {
      v28 = [(CRLDragAndDropController *)self p_dragOperationForDragInsideWithDraggingInfo:v7 atScaledPoint:x, y];
      if (v28 != self->_lastReturnedDragOperation)
      {
        if (qword_101AD5B68 != -1)
        {
          sub_10136DA18();
        }

        v29 = off_1019EDBC0;
        if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
        {
          lastReturnedDragOperation = self->_lastReturnedDragOperation;
          *buf = 134218240;
          v62 = lastReturnedDragOperation;
          v63 = 2048;
          v64 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "-draggingUpdated. Operation changed from %lu to %lu", buf, 0x16u);
        }

        self->_lastReturnedDragOperation = v28;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v31 = [v7 inProcessDraggingSources];
        v38 = [v31 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v38)
        {
          v39 = *v48;
          do
          {
            for (j = 0; j != v38; j = j + 1)
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(v31);
              }

              v41 = sub_1003035DC(*(*(&v47 + 1) + 8 * j), 1, v32, v33, v34, v35, v36, v37, &OBJC_PROTOCOL___CRLDragOperationCallback);
              if (v41)
              {
                v42 = self->_lastReturnedDragOperation;
                v43 = [(CRLDragAndDropController *)self interactiveCanvasController];
                [v41 draggingUpdatedWithOperation:v42 targetInteractiveCanvasController:v43];
              }
            }

            v38 = [v31 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v38);
        }
      }

      self->_lastProvidedDragPoint.x = x;
      self->_lastProvidedDragPoint.y = y;
      v44 = self->_infosToBeInsertedAccessQueue;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10040BC18;
      v46[3] = &unk_10183AB38;
      v46[4] = self;
      dispatch_sync(v44, v46);
    }

    v27 = self->_lastReturnedDragOperation;
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)draggingExited:(id)a3
{
  v4 = a3;
  if (qword_101AD5B68 != -1)
  {
    sub_10136DA40();
  }

  v5 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-draggingExited.", buf, 2u);
  }

  if (self->_dragState)
  {
    [(CRLDragAndDropController *)self cleanupEndOfDragOperation];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v4 inProcessDraggingSources];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v14 = v7;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = sub_1003035DC(*(*(&v21 + 1) + 8 * i), 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLDragOperationCallback);
          v18 = v17;
          if (v17)
          {
            [v17 draggingExited];
          }
        }

        v14 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DA54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DA7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DB04();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v6 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingExited:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v20 lineNumber:386 isFatal:0 description:"draggingExited called without draggingEntered called first!"];
  }
}

- (BOOL)performDragOperation:(id)a3 atScaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (qword_101AD5B68 != -1)
  {
    sub_10136DB2C();
  }

  v8 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "-performDragOperation.", &v26, 2u);
  }

  if (!self->_dragState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DB40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DB68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DBF0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLDragAndDropController performDragOperation:atScaledPoint:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:417 isFatal:0 description:"draggingUpdated called without draggingEntered called first!"];

    [(CRLDragAndDropController *)self draggingEntered:v7 atScaledPoint:x, y];
  }

  v12 = [(CRLDragAndDropController *)self delegate];
  v13 = [v12 shouldAllowDragOperationForDragInfo:v7];

  if (v13)
  {
    v14 = [(CRLDragAndDropController *)self interactiveCanvasController];
    [v14 convertBoundsToUnscaledPoint:{x, y}];
    v16 = v15;
    v18 = v17;
    [v7 setShouldHidePromisedFileTypes:1];
    v19 = [(CRLDragAndDropController *)self p_dragDestinationForDragInfo:v7 atUnscaledPoint:v16, v18];
    [v7 setShouldHidePromisedFileTypes:0];
    if (qword_101AD5B68 != -1)
    {
      sub_10136DCF0();
    }

    v20 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "drag destination: %@", &v26, 0xCu);
    }

    v21 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:v7 onDragDestination:v19 atUnscaledPoint:v16, v18];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DC18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DC40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DCC8();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v22);
    }

    v23 = [NSString stringWithUTF8String:"[CRLDragAndDropController performDragOperation:atScaledPoint:]"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:427 isFatal:0 description:"OS shouldn't tell us to perform drag operation when -shouldAllowDragOperationForDragInfo returns NO"];

    [(CRLDragAndDropController *)self cleanupEndOfDragOperation];
    v21 = 0;
  }

  return v21;
}

- (void)concludeDragOperation:(id)a3
{
  v4 = a3;
  if (qword_101AD5B68 != -1)
  {
    sub_10136DD18();
  }

  v5 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p concludeDragOperation with drag info %@", &v6, 0x16u);
  }

  [(CRLDragAndDropController *)self cleanupEndOfDragOperation];
}

- (BOOL)performIndirectDragOperationWithDragInfo:(id)a3 onInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  dragState = self->_dragState;
  if (dragState == 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DD2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DD40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DDC8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLDragAndDropController performIndirectDragOperationWithDragInfo:onInfo:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:461 isFatal:0 description:"Called performIndirectDragOperationWithDragInfo when we were already in a drag!"];
  }

  else if (!dragState)
  {
    self->_dragState = 1;
    v9 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v10 = [v9 editingCoordinator];
    [v10 suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  objc_storeStrong(&self->_infoToTargetForIndirectDropOperation, a4);
  self->_isIndirectDropOperation = 1;
  v14 = [(CRLDragAndDropController *)self delegate];
  v15 = [v14 canInsertBoardItemsFromDragOperationForDragInfo:v6];

  if ((v15 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DDF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DE18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DEA0();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLDragAndDropController performIndirectDragOperationWithDragInfo:onInfo:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:467 isFatal:0 description:"Indirect drops should never reject the resulting insert"];
  }

  v19 = [(CRLDragAndDropController *)self interactiveCanvasController];
  [v19 visibleUnscaledRect];
  v24.f64[0] = sub_100120414(v20, v21, v22, v23);
  v36 = v24;
  v26 = v25;

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 fullTransformInRoot];
      __asm { FMOV            V3.2D, #0.5 }

      v36 = vaddq_f64(0, vmlaq_f64(vmulq_f64(0, _Q3), _Q3, 0));
      v26 = v36.f64[1];
    }

    v32 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v33 = [v32 repForInfo:v7];
  }

  else
  {
    v33 = 0;
  }

  v34 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:v6 onDragDestination:v33 atUnscaledPoint:v36.f64[0], v26, *&v36];

  return v34;
}

- (BOOL)performIndirectDragOperationWithDragInfo:(id)a3 inContainer:(id)a4 targetZOrder:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  dragState = self->_dragState;
  if (dragState == 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DEC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DEDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136DF64();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLDragAndDropController performIndirectDragOperationWithDragInfo:inContainer:targetZOrder:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:492 isFatal:0 description:"Called performIndirectDragOperationWithDragInfo when we were already in a drag!"];
  }

  else if (!dragState)
  {
    self->_dragState = 1;
    v11 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v12 = [v11 editingCoordinator];
    [v12 suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  v16 = [(CRLDragAndDropController *)self delegate];
  v17 = [v16 canInsertBoardItemsFromDragOperationForDragInfo:v8];

  if ((v17 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136DF8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136DFB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E03C();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLDragAndDropController performIndirectDragOperationWithDragInfo:inContainer:targetZOrder:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:496 isFatal:0 description:"Indirect drops should never reject the resulting insert"];
  }

  self->_isIndirectDropOperation = 1;
  self->_targetZOrderForDropOperation = a5;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained visibleUnscaledRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [WeakRetained selectionModelTranslator];
      v31 = [v30 selectionPathForNothingSelectedInsideGroup:v9];
      v32 = [WeakRetained editorController];
      [v32 setSelectionPath:v31];

      [WeakRetained layoutIfNeeded];
    }
  }

  v33 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:v8 onDragDestination:0 atUnscaledPoint:sub_100120414(v23, v25, v27, v29)];

  return v33;
}

- (BOOL)p_shouldInsertDraggedBoardItems:(id)a3
{
  v4 = a3;
  v5 = [(CRLDragAndDropController *)self delegate];
  isIndirectDropOperation = [v5 canInsertBoardItemsFromDragOperationForDragInfo:v4];

  v7 = [(CRLDragAndDropController *)self delegate];

  if (!v7)
  {
    isIndirectDropOperation = self->_isIndirectDropOperation;
  }

  return isIndirectDropOperation & 1;
}

- (BOOL)p_performDragOperationWithDragInfo:(id)a3 onDragDestination:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v12 = [v11 editingCoordinator];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10040D174;
  v20 = &unk_1018609D0;
  v13 = v10;
  v21 = v13;
  v14 = v9;
  v25 = x;
  v26 = y;
  v22 = v14;
  v23 = self;
  v24 = &v27;
  [v12 canPerformUserActionUsingBlock:&v17];

  if (!*(v28 + 24) || [(CRLDragAndDropController *)self shouldCleanupAfterSuccessfulDragOperation:v17])
  {
    [(CRLDragAndDropController *)self cleanupEndOfDragOperation:v17];
  }

  v15 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v15;
}

- (void)cleanupEndOfDragOperation
{
  dragState = self->_dragState;
  if (dragState == 1)
  {
    v7 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v8 = [v7 canvas];
    [v8 i_unregisterCanvasLayoutObserver:self];

    v9 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v10 = [v9 editingCoordinator];
    [v10 resumeCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  else if (!dragState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E18C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E1A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E228();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLDragAndDropController cleanupEndOfDragOperation]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:671 isFatal:0 description:"Unexpectedly being asked to cleanup DnD when in state Idle"];
  }

  self->_dragState = 0;
  [(CRLDragToInsertController *)self->_dragToInsertController cancelDragToInsert];
  dragToInsertController = self->_dragToInsertController;
  self->_dragToInsertController = 0;

  infoToTargetForIndirectDropOperation = self->_infoToTargetForIndirectDropOperation;
  self->_infoToTargetForIndirectDropOperation = 0;

  self->_targetZOrderForDropOperation = 0x7FFFFFFFFFFFFFFFLL;
  infosToBeInsertedAccessQueue = self->_infosToBeInsertedAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040DAA8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(infosToBeInsertedAccessQueue, block);
  [(CRLDragAndDropController *)self p_hideDragAndDropHighlightOnRep];
  [(CRLDragAndDropController *)self p_hideDragAndDropHighlightOnCanvasEditor];
}

+ (unint64_t)p_dragOperationForSupportedDragOperations:(unint64_t)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return a3 & 2;
  }
}

- (id)p_dragDestinationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10040DCF0;
  v21[3] = &unk_10183F5F8;
  v21[4] = self;
  v9 = [v8 hitRep:v21 passingTest:{x, y}];
  if (v9)
  {
    v10 = [(CRLDragAndDropController *)self delegate];
    v11 = [v10 canEditRepWithDragOperation:v9];

    if (v11 && [v9 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}])
    {
      v12 = v9;
    }

    else
    {
      v13 = [v9 repForSelecting];
      v14 = v13;
      v12 = 0;
      if (v13 != v9 && v13)
      {
        v15 = [(CRLDragAndDropController *)self delegate];
        v16 = [v15 canEditRepWithDragOperation:v14];

        if (v16 && [v14 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}])
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = [v8 canvasEditor];
  v18 = v17;
  if (!v12)
  {
    if ([v17 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}])
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }
  }

  v19 = v12;

  return v12;
}

- (unint64_t)p_dragOperationForDragInsideWithDraggingInfo:(id)a3 atScaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v78 = [v7 dragOperationMask];
  v8 = [(CRLDragAndDropController *)self interactiveCanvasController];
  [v8 convertBoundsToUnscaledPoint:{x, y}];
  v10 = v9;
  v12 = v11;
  v13 = [v8 canvasView];
  v14 = [v13 enclosingScrollView];
  v15 = [v14 superview];
  [v8 unobscuredScrollViewFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v8 canvasView];
  [v15 convertRect:v24 toView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v91.origin.x = v26;
  v91.origin.y = v28;
  v91.size.width = v30;
  v91.size.height = v32;
  v90.x = x;
  v90.y = y;
  v33 = CGRectContainsPoint(v91, v90);
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E250();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E264();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E300();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E328(v34);
    }

    v35 = [NSString stringWithUTF8String:"[CRLDragAndDropController p_dragOperationForDragInsideWithDraggingInfo:atScaledPoint:]"];
    v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:778 isFatal:0 description:"invalid nil value for '%{public}s'", "dragInfo"];
  }

  if (!v33)
  {
    v38 = 0;
LABEL_20:
    [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:v7 atUnscaledPoint:64 dragOperation:v38 dragDestination:v10, v12];
LABEL_21:
    v40 = 0;
    goto LABEL_22;
  }

  v37 = [(CRLDragAndDropController *)self p_dragDestinationForDragInfo:v7 atUnscaledPoint:v10, v12];
  v38 = v37;
  if (!v37)
  {
    goto LABEL_32;
  }

  v39 = [v37 dragOperationForDragInfo:v7 atUnscaledPoint:{v10, v12}];
  v40 = v39;
  if (!v39)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E3D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E400();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E488();
    }

    v43 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E4B0(v43);
    }

    v44 = [NSString stringWithUTF8String:"[CRLDragAndDropController p_dragOperationForDragInsideWithDraggingInfo:atScaledPoint:]"];
    v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:801 isFatal:0 description:"If we have a drag destination, our drag operation should not be None"];

LABEL_32:
    v46 = [(CRLDragAndDropController *)self delegate];
    v47 = [v46 canInsertBoardItemsFromDragOperationForDragInfo:v7];

    if ((v47 & 1) == 0)
    {
      [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:v7 atUnscaledPoint:0 dragOperation:v38 dragDestination:v10, v12];
      goto LABEL_21;
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10040AAAC;
    *&buf[32] = sub_10040AABC;
    *&buf[40] = 0;
    infosToBeInsertedAccessQueue = self->_infosToBeInsertedAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10040E978;
    block[3] = &unk_101855C38;
    block[4] = self;
    block[5] = &v84;
    block[6] = buf;
    dispatch_sync(infosToBeInsertedAccessQueue, block);
    if (*(v85 + 24) == 1 && [*(*&buf[8] + 40) count])
    {
      v40 = [objc_opt_class() p_dragOperationForSupportedDragOperations:v78];
      if (v40)
      {
        dragToInsertController = self->_dragToInsertController;
        if (!dragToInsertController)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v50 = [v7 inProcessDraggingSources];
          v57 = [v50 countByEnumeratingWithState:&v79 objects:v89 count:16];
          if (v57)
          {
            obj = v50;
            v58 = *v80;
            while (2)
            {
              for (i = 0; i != v57; i = (i + 1))
              {
                if (*v80 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v60 = sub_1003035DC(*(*(&v79 + 1) + 8 * i), 1, v51, v52, v53, v54, v55, v56, &OBJC_PROTOCOL___CRLDynamicDragInsertDragOperationCallback);
                v61 = v60;
                if (v60)
                {
                  v57 = [v60 postInsertBlockForDragAndDropWithBoardItemsToInsert:*(*&buf[8] + 40) targetInteractiveCanvasController:v8];

                  v50 = obj;
                  goto LABEL_59;
                }
              }

              v57 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }

            v50 = obj;
          }

LABEL_59:

          v66 = [CRLDragToInsertController alloc];
          v67 = *(*&buf[8] + 40);
          v68 = [v8 canvasEditor];
          if (v57)
          {
            v69 = v57;
          }

          else
          {
            v69 = &stru_101860AF8;
          }

          v70 = [(CRLDragToInsertController *)v66 initWithBoardItems:v67 canvasEditor:v68 atPoint:v69 withPostInsertionBlock:v10, v12];
          v71 = self->_dragToInsertController;
          self->_dragToInsertController = v70;

          dragToInsertController = self->_dragToInsertController;
        }

        [(CRLDragToInsertController *)dragToInsertController dragToPoint:v10, v12];
      }
    }

    else if ([(CRLDragAndDropController *)self canCreateBoardItemsFromDragInfo:v7])
    {
      v40 = [objc_opt_class() p_dragOperationForSupportedDragOperations:v78];
      v62 = [(CRLDragAndDropController *)self delegate];
      v63 = [v62 shouldAllowDynamicInsertForDragInfo:v7];
      if (v40 == 1)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      if (v64 == 1)
      {

        if ((v78 & 2) != 0)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
      }

      v65 = [v8 canvasEditor];

      v38 = v65;
    }

    else
    {
      v40 = 0;
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v84, 8);
    goto LABEL_65;
  }

  if (v39 == 64)
  {
    if (qword_101AD5B68 != -1)
    {
      sub_10136E560();
    }

    v41 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "drag destination is disallowing drag: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_65:
  [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:v7 atUnscaledPoint:v40 dragOperation:v38 dragDestination:v10, v12];
  if (v40 == 64)
  {
    goto LABEL_21;
  }

  if (v40 && (v40 & v78) == 0)
  {
    v72 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E588();
    }

    v73 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      *&buf[4] = v72;
      *&buf[8] = 2082;
      *&buf[10] = "[CRLDragAndDropController p_dragOperationForDragInsideWithDraggingInfo:atScaledPoint:]";
      *&buf[18] = 2082;
      *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m";
      *&buf[28] = 1024;
      *&buf[30] = 870;
      *&buf[34] = 2048;
      *&buf[36] = v40;
      *&buf[44] = 2048;
      *&buf[46] = v78;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Drag operation %zi not supported by the sender with mask %zi.", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E5B0();
    }

    v74 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E5D8(v74);
    }

    v75 = [NSString stringWithUTF8String:"[CRLDragAndDropController p_dragOperationForDragInsideWithDraggingInfo:atScaledPoint:]"];
    v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v75 file:v76 lineNumber:870 isFatal:0 description:"Drag operation %zi not supported by the sender with mask %zi.", v40, v78];
  }

LABEL_22:

  return v40;
}

- (void)targetScrollViewDidScroll
{
  if (self->_highlightState == 2)
  {
    v5 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v3 = [v5 canvasEditor];
    v4 = [v3 canvasEditorHelper];
    [v4 updateDragAndDropUIForPoint:0 dragInfo:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)p_updateHighlightStateForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4 dragOperation:(unint64_t)a5 dragDestination:(id)a6
{
  y = a4.y;
  x = a4.x;
  v23 = a3;
  v11 = a6;
  v12 = v11;
  if ((a5 & 0xFFFFFFFFFFFFFFBFLL) == 0)
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v13 = 0;
    v16 = v23;
    goto LABEL_11;
  }

  if (v11)
  {
    v13 = [v11 repToHighlightForDragInfo:v23 atUnscaledPoint:{x, y}];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [(CRLDragAndDropController *)self delegate];
    v15 = [v14 canEditRepWithDragOperation:v13];

    if (v15)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  v16 = v23;
  v17 = v13 == 0;
  v18 = v13 != 0;
  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

LABEL_11:
  highlightState = self->_highlightState;
  if (highlightState == 2)
  {
    if (!v17)
    {
      [(CRLDragAndDropController *)self p_hideDragAndDropHighlightOnCanvasEditor];
      v16 = v23;
      if (v13)
      {
        v21 = [(CRLDragAndDropController *)self p_accessibilityDescriptionForDropTarget:v13];
        [(CRLDragAndDropController *)self p_announceAccessibilityDropTarget:v21];
        goto LABEL_18;
      }
    }
  }

  else if (highlightState == 1 && !v18)
  {
    [(CRLDragAndDropController *)self p_hideDragAndDropHighlightOnRep];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Canvas" value:0 table:0];
    [(CRLDragAndDropController *)self p_announceAccessibilityDropTarget:v22];

LABEL_18:
    v16 = v23;
  }

  self->_highlightState = v19;
  if (v19 == 2)
  {
    [(CRLDragAndDropController *)self p_showDragAndDropHighlightForCanvasEditorWithDragInfo:v16 atUnscaledPoint:x, y];
  }

  else if (v19 == 1)
  {
    [(CRLDragAndDropController *)self p_showDragAndDropHighlightForRep:v13 atUnscaledPoint:v23 draggingInfo:x, y];
  }
}

- (void)p_showDragAndDropHighlightForRep:(id)a3 atUnscaledPoint:(CGPoint)a4 draggingInfo:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v13 = a5;
  repShowingDragAndDropHighlight = self->_repShowingDragAndDropHighlight;
  if (repShowingDragAndDropHighlight)
  {
    v11 = repShowingDragAndDropHighlight == v9;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [(CRLCanvasRep *)repShowingDragAndDropHighlight hideDragAndDropUI];
  }

  [(CRLCanvasRep *)v9 updateDragAndDropUIForPoint:v13 dragInfo:x, y];
  v12 = self->_repShowingDragAndDropHighlight;
  self->_repShowingDragAndDropHighlight = v9;
}

- (void)p_hideDragAndDropHighlightOnRep
{
  repShowingDragAndDropHighlight = self->_repShowingDragAndDropHighlight;
  if (repShowingDragAndDropHighlight)
  {
    [(CRLCanvasRep *)repShowingDragAndDropHighlight hideDragAndDropUI];
    repShowingDragAndDropHighlight = self->_repShowingDragAndDropHighlight;
  }

  self->_repShowingDragAndDropHighlight = 0;
}

- (void)p_showDragAndDropHighlightForCanvasEditorWithDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (self->_repShowingDragAndDropHighlight)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E688();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E69C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E724();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLDragAndDropController p_showDragAndDropHighlightForCanvasEditorWithDragInfo:atUnscaledPoint:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:967 isFatal:0 description:"Showing canvas highlight when a rep is highlighted"];
  }

  v11 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v12 = [v11 canvasEditor];

  [v12 updateDragAndDropUIForPoint:v7 dragInfo:{x, y}];
}

- (void)p_hideDragAndDropHighlightOnCanvasEditor
{
  v4 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v2 = [v4 canvasEditor];
  v3 = [v2 canvasEditorHelper];
  [v3 hideDragAndDropUI];
}

- (void)p_announceAccessibilityDropTarget:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Drop on %@" value:0 table:0];

    v6 = [NSString localizedStringWithFormat:v5, v7];
    CRLAccessibilityPostAnnouncementNotification(self, v6);
  }
}

- (id)p_accessibilityDescriptionForDropTarget:(id)a3
{
  v3 = a3;
  v4 = +[CRLAccessibility sharedInstance];
  v5 = [v4 needsAccessibilityElements];

  if (v5)
  {
    v6 = [v3 accessibilityLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)insertDroppedNativeBoardItemsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5 isCrossAppSource:(BOOL)a6 isCrossDocument:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v32 = self;
  v33 = a5;
  v12 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        v20 = [v12 editingCoordinator];
        v21 = [v20 boardItemFactory];
        v22 = [v19 newBoardItemWithFactory:v21 bakedSize:0];

        if (v22)
        {
          [v13 addObject:v22];
        }

        else
        {
          v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136E74C();
          }

          v24 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v39 = v23;
            v40 = 2082;
            v41 = "[CRLDragAndDropController insertDroppedNativeBoardItemsFromProviders:atUnscaledPoint:onRep:isCrossAppSource:isCrossDocument:]";
            v42 = 2082;
            v43 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m";
            v44 = 1024;
            v45 = 1011;
            v46 = 2082;
            v47 = "boardItem";
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136E774();
          }

          v25 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v28 = v25;
            v29 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v39 = v23;
            v40 = 2114;
            v41 = v29;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v26 = [NSString stringWithUTF8String:"[CRLDragAndDropController insertDroppedNativeBoardItemsFromProviders:atUnscaledPoint:onRep:isCrossAppSource:isCrossDocument:]"];
          v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
          [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:1011 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItem"];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v16);
  }

  v30 = [(CRLDragAndDropController *)v32 insertNativePasteboardBoardItems:v13 atUnscaledPoint:v33 onRep:x, y];
  return v30;
}

- (BOOL)insertNativePasteboardBoardItems:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  if ([v9 count])
  {
    v11 = [v9 count];
    if (v11 >= 2)
    {
      [CRLDragAndDropController adjustGeometriesOfBoardItems:v9 toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:x, y];
    }

    v12 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v13 = [v12 canvasEditor];

    if (qword_101AD5B68 != -1)
    {
      sub_10136E79C();
    }

    v14 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Inserting native infos %@", &v18, 0xCu);
    }

    v15 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:1 insertFloating:self->_targetZOrderForDropOperation targetZOrder:x, y];
    v16 = [v13 insertBoardItemsFromDragAndDrop:v9 atPoint:v10 onRep:v15 insertionContext:v11 > 1 alreadyPositionedInputInfos:{x, y}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)adjustGeometriesOfBoardItems:(id)a3 toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4010000000;
  v31 = &unk_1016A8115;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v33 = size;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10040F9FC;
  v25[3] = &unk_1018400D0;
  v8 = v6;
  v26 = v8;
  v27 = &v28;
  [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v8 useInBlock:v25];
  v9 = sub_100120414(v29[4], v29[5], v29[6], v29[7]);
  v10 = sub_10011F31C(x, y, v9);
  v12 = v11;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 geometry];
        CGAffineTransformMakeTranslation(&v20, v10, v12);
        v19 = [v18 geometryByAppendingTransform:&v20];
        [v17 setGeometry:v19];
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v28, 8);
}

- (void)insertDroppedImportableBoardItemsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 onRep:(id)a5 completionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [[CRLPasteboardMultipleImportableBoardItemProvider alloc] initWithImportableBoardItemProviders:v13];

  v15 = [(CRLDragAndDropController *)self p_alertPresenter];
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 setAlertPresenter:v15];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Inserting…" value:0 table:0];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10040FEF8;
  v42[3] = &unk_10183AB38;
  v18 = v14;
  v43 = v18;
  v19 = objc_retainBlock(v42);
  v20 = [(CRLDragAndDropController *)self p_modalOperationPresenter];
  v21 = [(CRLPasteboardMultipleImportableBoardItemProvider *)v18 progress];
  v22 = [v20 beginModalOperationWithPresentedLocalizedMessage:v17 progress:v21 cancelHandler:v19];

  if (!v22)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136E7B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136E7D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136E874();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v23);
    }

    v24 = [NSString stringWithUTF8String:"[CRLDragAndDropController insertDroppedImportableBoardItemsFromProviders:atUnscaledPoint:onRep:completionHandler:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:1090 isFatal:0 description:"invalid nil value for '%{public}s'", "modalOperationToken"];
  }

  v26 = [(CRLDragAndDropController *)self interactiveCanvasController];
  v27 = [v26 editingCoordinator];
  v28 = [v27 boardItemFactory];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10040FF88;
  v34[3] = &unk_101860C60;
  v34[4] = self;
  v35 = v22;
  v36 = v18;
  v37 = v26;
  v40 = x;
  v41 = y;
  v38 = v11;
  v39 = v12;
  v29 = v12;
  v30 = v11;
  v31 = v26;
  v32 = v18;
  v33 = v22;
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v32 provideBoardItemsWithFactory:v28 completionHandler:v34];
}

- (CRLDragAndDropControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end