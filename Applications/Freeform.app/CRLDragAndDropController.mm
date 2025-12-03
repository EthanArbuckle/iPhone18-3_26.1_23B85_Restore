@interface CRLDragAndDropController
+ (unint64_t)p_dragOperationForSupportedDragOperations:(unint64_t)operations;
+ (void)adjustGeometriesOfBoardItems:(id)items toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:(CGPoint)point;
- (BOOL)insertDroppedNativeBoardItemsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point onRep:(id)rep isCrossAppSource:(BOOL)source isCrossDocument:(BOOL)document;
- (BOOL)insertNativePasteboardBoardItems:(id)items atUnscaledPoint:(CGPoint)point onRep:(id)rep;
- (BOOL)p_performDragOperationWithDragInfo:(id)info onDragDestination:(id)destination atUnscaledPoint:(CGPoint)point;
- (BOOL)p_shouldInsertDraggedBoardItems:(id)items;
- (BOOL)performDragOperation:(id)operation atScaledPoint:(CGPoint)point;
- (BOOL)performIndirectDragOperationWithDragInfo:(id)info inContainer:(id)container targetZOrder:(unint64_t)order;
- (BOOL)performIndirectDragOperationWithDragInfo:(id)info onInfo:(id)onInfo;
- (CRLDragAndDropController)init;
- (CRLDragAndDropController)initWithDelegate:(id)delegate interactiveCanvasController:(id)controller;
- (CRLDragAndDropControllerDelegate)delegate;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (id)p_accessibilityDescriptionForDropTarget:(id)target;
- (id)p_alertPresenter;
- (id)p_dragDestinationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (id)p_errorPresenter;
- (id)p_modalOperationPresenter;
- (unint64_t)draggingEntered:(id)entered atScaledPoint:(CGPoint)point;
- (unint64_t)draggingUpdated:(id)updated atScaledPoint:(CGPoint)point;
- (unint64_t)p_dragOperationForDragInsideWithDraggingInfo:(id)info atScaledPoint:(CGPoint)point;
- (void)cleanupEndOfDragOperation;
- (void)concludeDragOperation:(id)operation;
- (void)dealloc;
- (void)draggingExited:(id)exited;
- (void)insertDroppedImportableBoardItemsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point onRep:(id)rep completionHandler:(id)handler;
- (void)p_announceAccessibilityDropTarget:(id)target;
- (void)p_hideDragAndDropHighlightOnCanvasEditor;
- (void)p_hideDragAndDropHighlightOnRep;
- (void)p_showDragAndDropHighlightForCanvasEditorWithDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (void)p_showDragAndDropHighlightForRep:(id)rep atUnscaledPoint:(CGPoint)point draggingInfo:(id)info;
- (void)p_updateHighlightStateForDragInfo:(id)info atUnscaledPoint:(CGPoint)point dragOperation:(unint64_t)operation dragDestination:(id)destination;
- (void)targetScrollViewDidScroll;
@end

@implementation CRLDragAndDropController

- (CRLDragAndDropController)initWithDelegate:(id)delegate interactiveCanvasController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = CRLDragAndDropController;
  v8 = [(CRLDragAndDropController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_interactiveCanvasController, controllerCopy);
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

    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator resumeCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  v8.receiver = self;
  v8.super_class = CRLDragAndDropController;
  [(CRLDragAndDropController *)&v8 dealloc];
}

- (id)p_alertPresenter
{
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];

  return layerHost;
}

- (id)p_modalOperationPresenter
{
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];

  return layerHost;
}

- (id)p_errorPresenter
{
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];

  return layerHost;
}

- (unint64_t)draggingEntered:(id)entered atScaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  enteredCopy = entered;
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

    interactiveCanvasController2 = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingEntered:atScaledPoint:]"];
    editingCoordinator = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:interactiveCanvasController2 file:editingCoordinator lineNumber:169 isFatal:0 description:"Called dragging entered when we were already in state entered!"];
  }

  else
  {
    if (dragState)
    {
      goto LABEL_24;
    }

    self->_dragState = 1;
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    [canvas i_registerCanvasLayoutObserver:self];

    interactiveCanvasController2 = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController2 editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

LABEL_24:
  delegate = [(CRLDragAndDropController *)self delegate];
  v18 = [delegate shouldAllowDragOperationForDragInfo:enteredCopy];

  if (v18)
  {
    infosToBeInsertedAccessQueue = self->_infosToBeInsertedAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10040AA98;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_sync(infosToBeInsertedAccessQueue, block);
    delegate2 = [(CRLDragAndDropController *)self delegate];
    v21 = [delegate2 shouldAllowDynamicInsertForDragInfo:enteredCopy];

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
      v46 = enteredCopy;
      v47 = buf;
      v48 = v49;
      dispatch_async(&_dispatch_main_q, v45);

      _Block_object_dispose(v49, 8);
      _Block_object_dispose(buf, 8);
    }

    self->_lastReturnedDragOperation = [(CRLDragAndDropController *)self p_dragOperationForDragInsideWithDraggingInfo:enteredCopy atScaledPoint:x, y];
    self->_lastProvidedDragPoint.x = x;
    self->_lastProvidedDragPoint.y = y;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    inProcessDraggingSources = [enteredCopy inProcessDraggingSources];
    v23 = [inProcessDraggingSources countByEnumeratingWithState:&v41 objects:v52 count:16];
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
            objc_enumerationMutation(inProcessDraggingSources);
          }

          v33 = sub_1003035DC(*(*(&v41 + 1) + 8 * i), 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLDragOperationCallback);
          if (v33)
          {
            lastReturnedDragOperation = self->_lastReturnedDragOperation;
            interactiveCanvasController3 = [(CRLDragAndDropController *)self interactiveCanvasController];
            [v33 draggingEnteredWithOperation:lastReturnedDragOperation targetInteractiveCanvasController:interactiveCanvasController3];
          }
        }

        v30 = [inProcessDraggingSources countByEnumeratingWithState:&v41 objects:v52 count:16];
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
      *&buf[14] = enteredCopy;
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
      *&buf[4] = enteredCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Preventing drag operation with -shouldAllowDragOperationForDragInfo: %@", buf, 0xCu);
    }

    v38 = 0;
  }

  return v38;
}

- (unint64_t)draggingUpdated:(id)updated atScaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  updatedCopy = updated;
  delegate = [(CRLDragAndDropController *)self delegate];
  v9 = [delegate shouldAllowDragOperationForDragInfo:updatedCopy];

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

      [(CRLDragAndDropController *)self draggingEntered:updatedCopy atScaledPoint:x, y];
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
    inProcessDraggingSources = [updatedCopy inProcessDraggingSources];
    v21 = [inProcessDraggingSources countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v21)
    {
      v22 = *v52;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(inProcessDraggingSources);
          }

          v24 = sub_1003035DC(*(*(&v51 + 1) + 8 * i), 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLDragOperationCallback);
          v25 = v24;
          if (v24 && ([v24 draggingWantsForcedUpdate] & 1) != 0)
          {

            canvasDidLayoutSinceLastUpdate = 1;
            goto LABEL_24;
          }
        }

        v21 = [inProcessDraggingSources countByEnumeratingWithState:&v51 objects:v65 count:16];
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
      v28 = [(CRLDragAndDropController *)self p_dragOperationForDragInsideWithDraggingInfo:updatedCopy atScaledPoint:x, y];
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
        inProcessDraggingSources2 = [updatedCopy inProcessDraggingSources];
        v38 = [inProcessDraggingSources2 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v38)
        {
          v39 = *v48;
          do
          {
            for (j = 0; j != v38; j = j + 1)
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(inProcessDraggingSources2);
              }

              v41 = sub_1003035DC(*(*(&v47 + 1) + 8 * j), 1, v32, v33, v34, v35, v36, v37, &OBJC_PROTOCOL___CRLDragOperationCallback);
              if (v41)
              {
                v42 = self->_lastReturnedDragOperation;
                interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
                [v41 draggingUpdatedWithOperation:v42 targetInteractiveCanvasController:interactiveCanvasController];
              }
            }

            v38 = [inProcessDraggingSources2 countByEnumeratingWithState:&v47 objects:v60 count:16];
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

- (void)draggingExited:(id)exited
{
  exitedCopy = exited;
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
    inProcessDraggingSources = [exitedCopy inProcessDraggingSources];
    v7 = [inProcessDraggingSources countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(inProcessDraggingSources);
          }

          v17 = sub_1003035DC(*(*(&v21 + 1) + 8 * i), 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLDragOperationCallback);
          v18 = v17;
          if (v17)
          {
            [v17 draggingExited];
          }
        }

        v14 = [inProcessDraggingSources countByEnumeratingWithState:&v21 objects:v26 count:16];
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

    inProcessDraggingSources = [NSString stringWithUTF8String:"[CRLDragAndDropController draggingExited:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:inProcessDraggingSources file:v20 lineNumber:386 isFatal:0 description:"draggingExited called without draggingEntered called first!"];
  }
}

- (BOOL)performDragOperation:(id)operation atScaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  operationCopy = operation;
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

    [(CRLDragAndDropController *)self draggingEntered:operationCopy atScaledPoint:x, y];
  }

  delegate = [(CRLDragAndDropController *)self delegate];
  v13 = [delegate shouldAllowDragOperationForDragInfo:operationCopy];

  if (v13)
  {
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
    v16 = v15;
    v18 = v17;
    [operationCopy setShouldHidePromisedFileTypes:1];
    v19 = [(CRLDragAndDropController *)self p_dragDestinationForDragInfo:operationCopy atUnscaledPoint:v16, v18];
    [operationCopy setShouldHidePromisedFileTypes:0];
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

    v21 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:operationCopy onDragDestination:v19 atUnscaledPoint:v16, v18];
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

- (void)concludeDragOperation:(id)operation
{
  operationCopy = operation;
  if (qword_101AD5B68 != -1)
  {
    sub_10136DD18();
  }

  v5 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = operationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p concludeDragOperation with drag info %@", &v6, 0x16u);
  }

  [(CRLDragAndDropController *)self cleanupEndOfDragOperation];
}

- (BOOL)performIndirectDragOperationWithDragInfo:(id)info onInfo:(id)onInfo
{
  infoCopy = info;
  onInfoCopy = onInfo;
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
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  objc_storeStrong(&self->_infoToTargetForIndirectDropOperation, onInfo);
  self->_isIndirectDropOperation = 1;
  delegate = [(CRLDragAndDropController *)self delegate];
  v15 = [delegate canInsertBoardItemsFromDragOperationForDragInfo:infoCopy];

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

  interactiveCanvasController2 = [(CRLDragAndDropController *)self interactiveCanvasController];
  [interactiveCanvasController2 visibleUnscaledRect];
  v24.f64[0] = sub_100120414(v20, v21, v22, v23);
  v36 = v24;
  v26 = v25;

  if (onInfoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [onInfoCopy fullTransformInRoot];
      __asm { FMOV            V3.2D, #0.5 }

      v36 = vaddq_f64(0, vmlaq_f64(vmulq_f64(0, _Q3), _Q3, 0));
      v26 = v36.f64[1];
    }

    interactiveCanvasController3 = [(CRLDragAndDropController *)self interactiveCanvasController];
    v33 = [interactiveCanvasController3 repForInfo:onInfoCopy];
  }

  else
  {
    v33 = 0;
  }

  v34 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:infoCopy onDragDestination:v33 atUnscaledPoint:v36.f64[0], v26, *&v36];

  return v34;
}

- (BOOL)performIndirectDragOperationWithDragInfo:(id)info inContainer:(id)container targetZOrder:(unint64_t)order
{
  infoCopy = info;
  containerCopy = container;
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
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLCanvasDragAndDrop"];
  }

  delegate = [(CRLDragAndDropController *)self delegate];
  v17 = [delegate canInsertBoardItemsFromDragOperationForDragInfo:infoCopy];

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
  self->_targetZOrderForDropOperation = order;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained visibleUnscaledRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (containerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selectionModelTranslator = [WeakRetained selectionModelTranslator];
      v31 = [selectionModelTranslator selectionPathForNothingSelectedInsideGroup:containerCopy];
      editorController = [WeakRetained editorController];
      [editorController setSelectionPath:v31];

      [WeakRetained layoutIfNeeded];
    }
  }

  v33 = [(CRLDragAndDropController *)self p_performDragOperationWithDragInfo:infoCopy onDragDestination:0 atUnscaledPoint:sub_100120414(v23, v25, v27, v29)];

  return v33;
}

- (BOOL)p_shouldInsertDraggedBoardItems:(id)items
{
  itemsCopy = items;
  delegate = [(CRLDragAndDropController *)self delegate];
  isIndirectDropOperation = [delegate canInsertBoardItemsFromDragOperationForDragInfo:itemsCopy];

  delegate2 = [(CRLDragAndDropController *)self delegate];

  if (!delegate2)
  {
    isIndirectDropOperation = self->_isIndirectDropOperation;
  }

  return isIndirectDropOperation & 1;
}

- (BOOL)p_performDragOperationWithDragInfo:(id)info onDragDestination:(id)destination atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  destinationCopy = destination;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10040D174;
  v20 = &unk_1018609D0;
  v13 = destinationCopy;
  v21 = v13;
  v14 = infoCopy;
  v25 = x;
  v26 = y;
  v22 = v14;
  selfCopy = self;
  v24 = &v27;
  [editingCoordinator canPerformUserActionUsingBlock:&v17];

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
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    [canvas i_unregisterCanvasLayoutObserver:self];

    interactiveCanvasController2 = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController2 editingCoordinator];
    [editingCoordinator resumeCollaborationWithReason:@"CRLCanvasDragAndDrop"];
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

+ (unint64_t)p_dragOperationForSupportedDragOperations:(unint64_t)operations
{
  if (operations)
  {
    return 1;
  }

  else
  {
    return operations & 2;
  }
}

- (id)p_dragDestinationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10040DCF0;
  v21[3] = &unk_10183F5F8;
  v21[4] = self;
  v9 = [interactiveCanvasController hitRep:v21 passingTest:{x, y}];
  if (v9)
  {
    delegate = [(CRLDragAndDropController *)self delegate];
    v11 = [delegate canEditRepWithDragOperation:v9];

    if (v11 && [v9 dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}])
    {
      v12 = v9;
    }

    else
    {
      repForSelecting = [v9 repForSelecting];
      v14 = repForSelecting;
      v12 = 0;
      if (repForSelecting != v9 && repForSelecting)
      {
        delegate2 = [(CRLDragAndDropController *)self delegate];
        v16 = [delegate2 canEditRepWithDragOperation:v14];

        if (v16 && [v14 dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}])
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

  canvasEditor = [interactiveCanvasController canvasEditor];
  v18 = canvasEditor;
  if (!v12)
  {
    if ([canvasEditor dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}])
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

- (unint64_t)p_dragOperationForDragInsideWithDraggingInfo:(id)info atScaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  dragOperationMask = [infoCopy dragOperationMask];
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
  v10 = v9;
  v12 = v11;
  canvasView = [interactiveCanvasController canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  superview = [enclosingScrollView superview];
  [interactiveCanvasController unobscuredScrollViewFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  canvasView2 = [interactiveCanvasController canvasView];
  [superview convertRect:canvasView2 toView:{v17, v19, v21, v23}];
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
  if (!infoCopy)
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
    [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:infoCopy atUnscaledPoint:64 dragOperation:v38 dragDestination:v10, v12];
LABEL_21:
    v40 = 0;
    goto LABEL_22;
  }

  v37 = [(CRLDragAndDropController *)self p_dragDestinationForDragInfo:infoCopy atUnscaledPoint:v10, v12];
  v38 = v37;
  if (!v37)
  {
    goto LABEL_32;
  }

  v39 = [v37 dragOperationForDragInfo:infoCopy atUnscaledPoint:{v10, v12}];
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
    delegate = [(CRLDragAndDropController *)self delegate];
    v47 = [delegate canInsertBoardItemsFromDragOperationForDragInfo:infoCopy];

    if ((v47 & 1) == 0)
    {
      [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:infoCopy atUnscaledPoint:0 dragOperation:v38 dragDestination:v10, v12];
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
      v40 = [objc_opt_class() p_dragOperationForSupportedDragOperations:dragOperationMask];
      if (v40)
      {
        dragToInsertController = self->_dragToInsertController;
        if (!dragToInsertController)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          inProcessDraggingSources = [infoCopy inProcessDraggingSources];
          v57 = [inProcessDraggingSources countByEnumeratingWithState:&v79 objects:v89 count:16];
          if (v57)
          {
            obj = inProcessDraggingSources;
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
                  v57 = [v60 postInsertBlockForDragAndDropWithBoardItemsToInsert:*(*&buf[8] + 40) targetInteractiveCanvasController:interactiveCanvasController];

                  inProcessDraggingSources = obj;
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

            inProcessDraggingSources = obj;
          }

LABEL_59:

          v66 = [CRLDragToInsertController alloc];
          v67 = *(*&buf[8] + 40);
          canvasEditor = [interactiveCanvasController canvasEditor];
          if (v57)
          {
            v69 = v57;
          }

          else
          {
            v69 = &stru_101860AF8;
          }

          v70 = [(CRLDragToInsertController *)v66 initWithBoardItems:v67 canvasEditor:canvasEditor atPoint:v69 withPostInsertionBlock:v10, v12];
          v71 = self->_dragToInsertController;
          self->_dragToInsertController = v70;

          dragToInsertController = self->_dragToInsertController;
        }

        [(CRLDragToInsertController *)dragToInsertController dragToPoint:v10, v12];
      }
    }

    else if ([(CRLDragAndDropController *)self canCreateBoardItemsFromDragInfo:infoCopy])
    {
      v40 = [objc_opt_class() p_dragOperationForSupportedDragOperations:dragOperationMask];
      delegate2 = [(CRLDragAndDropController *)self delegate];
      v63 = [delegate2 shouldAllowDynamicInsertForDragInfo:infoCopy];
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

        if ((dragOperationMask & 2) != 0)
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

      canvasEditor2 = [interactiveCanvasController canvasEditor];

      v38 = canvasEditor2;
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
  [(CRLDragAndDropController *)self p_updateHighlightStateForDragInfo:infoCopy atUnscaledPoint:v40 dragOperation:v38 dragDestination:v10, v12];
  if (v40 == 64)
  {
    goto LABEL_21;
  }

  if (v40 && (v40 & dragOperationMask) == 0)
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
      *&buf[46] = dragOperationMask;
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
    [CRLAssertionHandler handleFailureInFunction:v75 file:v76 lineNumber:870 isFatal:0 description:"Drag operation %zi not supported by the sender with mask %zi.", v40, dragOperationMask];
  }

LABEL_22:

  return v40;
}

- (void)targetScrollViewDidScroll
{
  if (self->_highlightState == 2)
  {
    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    canvasEditorHelper = [canvasEditor canvasEditorHelper];
    [canvasEditorHelper updateDragAndDropUIForPoint:0 dragInfo:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)p_updateHighlightStateForDragInfo:(id)info atUnscaledPoint:(CGPoint)point dragOperation:(unint64_t)operation dragDestination:(id)destination
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  destinationCopy = destination;
  v12 = destinationCopy;
  if ((operation & 0xFFFFFFFFFFFFFFBFLL) == 0)
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v13 = 0;
    v16 = infoCopy;
    goto LABEL_11;
  }

  if (destinationCopy)
  {
    v13 = [destinationCopy repToHighlightForDragInfo:infoCopy atUnscaledPoint:{x, y}];
    if (!v13)
    {
      goto LABEL_7;
    }

    delegate = [(CRLDragAndDropController *)self delegate];
    v15 = [delegate canEditRepWithDragOperation:v13];

    if (v15)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  v16 = infoCopy;
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
      v16 = infoCopy;
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
    v16 = infoCopy;
  }

  self->_highlightState = v19;
  if (v19 == 2)
  {
    [(CRLDragAndDropController *)self p_showDragAndDropHighlightForCanvasEditorWithDragInfo:v16 atUnscaledPoint:x, y];
  }

  else if (v19 == 1)
  {
    [(CRLDragAndDropController *)self p_showDragAndDropHighlightForRep:v13 atUnscaledPoint:infoCopy draggingInfo:x, y];
  }
}

- (void)p_showDragAndDropHighlightForRep:(id)rep atUnscaledPoint:(CGPoint)point draggingInfo:(id)info
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  infoCopy = info;
  repShowingDragAndDropHighlight = self->_repShowingDragAndDropHighlight;
  if (repShowingDragAndDropHighlight)
  {
    v11 = repShowingDragAndDropHighlight == repCopy;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [(CRLCanvasRep *)repShowingDragAndDropHighlight hideDragAndDropUI];
  }

  [(CRLCanvasRep *)repCopy updateDragAndDropUIForPoint:infoCopy dragInfo:x, y];
  v12 = self->_repShowingDragAndDropHighlight;
  self->_repShowingDragAndDropHighlight = repCopy;
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

- (void)p_showDragAndDropHighlightForCanvasEditorWithDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
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

  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];

  [canvasEditor updateDragAndDropUIForPoint:infoCopy dragInfo:{x, y}];
}

- (void)p_hideDragAndDropHighlightOnCanvasEditor
{
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  [canvasEditorHelper hideDragAndDropUI];
}

- (void)p_announceAccessibilityDropTarget:(id)target
{
  targetCopy = target;
  if ([targetCopy length])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Drop on %@" value:0 table:0];

    targetCopy = [NSString localizedStringWithFormat:v5, targetCopy];
    CRLAccessibilityPostAnnouncementNotification(self, targetCopy);
  }
}

- (id)p_accessibilityDescriptionForDropTarget:(id)target
{
  targetCopy = target;
  v4 = +[CRLAccessibility sharedInstance];
  needsAccessibilityElements = [v4 needsAccessibilityElements];

  if (needsAccessibilityElements)
  {
    accessibilityLabel = [targetCopy accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (BOOL)insertDroppedNativeBoardItemsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point onRep:(id)rep isCrossAppSource:(BOOL)source isCrossDocument:(BOOL)document
{
  y = point.y;
  x = point.x;
  providersCopy = providers;
  selfCopy = self;
  repCopy = rep;
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = providersCopy;
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
        editingCoordinator = [interactiveCanvasController editingCoordinator];
        boardItemFactory = [editingCoordinator boardItemFactory];
        v22 = [v19 newBoardItemWithFactory:boardItemFactory bakedSize:0];

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

  v30 = [(CRLDragAndDropController *)selfCopy insertNativePasteboardBoardItems:v13 atUnscaledPoint:repCopy onRep:x, y];
  return v30;
}

- (BOOL)insertNativePasteboardBoardItems:(id)items atUnscaledPoint:(CGPoint)point onRep:(id)rep
{
  y = point.y;
  x = point.x;
  itemsCopy = items;
  repCopy = rep;
  if ([itemsCopy count])
  {
    v11 = [itemsCopy count];
    if (v11 >= 2)
    {
      [CRLDragAndDropController adjustGeometriesOfBoardItems:itemsCopy toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:x, y];
    }

    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];

    if (qword_101AD5B68 != -1)
    {
      sub_10136E79C();
    }

    v14 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = itemsCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Inserting native infos %@", &v18, 0xCu);
    }

    v15 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:1 insertFloating:self->_targetZOrderForDropOperation targetZOrder:x, y];
    v16 = [canvasEditor insertBoardItemsFromDragAndDrop:itemsCopy atPoint:repCopy onRep:v15 insertionContext:v11 > 1 alreadyPositionedInputInfos:{x, y}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)adjustGeometriesOfBoardItems:(id)items toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  itemsCopy = items;
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
  v8 = itemsCopy;
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
        geometry = [v17 geometry];
        CGAffineTransformMakeTranslation(&v20, v10, v12);
        v19 = [geometry geometryByAppendingTransform:&v20];
        [v17 setGeometry:v19];
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v28, 8);
}

- (void)insertDroppedImportableBoardItemsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point onRep:(id)rep completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  handlerCopy = handler;
  providersCopy = providers;
  v14 = [[CRLPasteboardMultipleImportableBoardItemProvider alloc] initWithImportableBoardItemProviders:providersCopy];

  p_alertPresenter = [(CRLDragAndDropController *)self p_alertPresenter];
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 setAlertPresenter:p_alertPresenter];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Inserting…" value:0 table:0];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10040FEF8;
  v42[3] = &unk_10183AB38;
  v18 = v14;
  v43 = v18;
  v19 = objc_retainBlock(v42);
  p_modalOperationPresenter = [(CRLDragAndDropController *)self p_modalOperationPresenter];
  progress = [(CRLPasteboardMultipleImportableBoardItemProvider *)v18 progress];
  v22 = [p_modalOperationPresenter beginModalOperationWithPresentedLocalizedMessage:v17 progress:progress cancelHandler:v19];

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

  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10040FF88;
  v34[3] = &unk_101860C60;
  v34[4] = self;
  v35 = v22;
  v36 = v18;
  v37 = interactiveCanvasController;
  v40 = x;
  v41 = y;
  v38 = repCopy;
  v39 = handlerCopy;
  v29 = handlerCopy;
  v30 = repCopy;
  v31 = interactiveCanvasController;
  v32 = v18;
  v33 = v22;
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v32 provideBoardItemsWithFactory:boardItemFactory completionHandler:v34];
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