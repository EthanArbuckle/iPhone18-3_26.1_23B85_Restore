@interface CRLRotorSearchController
+ (id)searchTargetSearchSelectors;
+ (void)recursiveSearchWithSearchTarget:(id)a3 inFlowMode:(BOOL)a4 withHitBlock:(id)a5;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLRotorSearchController)initWithInteractiveCanvasController:(id)a3;
- (id)searchReferenceAfterReference:(id)a3 inRotorDirection:(int64_t)a4;
- (void)_addObservers;
- (void)locateSearchReference:(id)a3;
- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4;
- (void)setInteractiveCanvasController:(id)a3;
@end

@implementation CRLRotorSearchController

- (CRLRotorSearchController)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = [v4 delegate];
  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLFindReplaceDelegate);

  v13 = [v4 editingCoordinator];
  v16.receiver = self;
  v16.super_class = CRLRotorSearchController;
  v14 = [(CRLModelSearchController *)&v16 initWithEditingCoordinator:v13 delegate:v12 modelSearchesRunSynchronously:1];

  if (v14)
  {
    [(CRLRotorSearchController *)v14 setInteractiveCanvasController:v4];
    [(CRLModelSearchController *)v14 invalidateSearchResults];
  }

  return v14;
}

+ (void)recursiveSearchWithSearchTarget:(id)a3 inFlowMode:(BOOL)a4 withHitBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    v10 = [a1 searchTargetSearchSelectors];
    if (v10)
    {
      v11 = v10;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          v15 = 0;
          do
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v27 + 1) + 8 * v15) pointerValue];
            if (v16)
            {
              v17 = v16;
              if (objc_opt_respondsToSelector())
              {
                ([v8 methodForSelector:v17])(v8, v17, v9);
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }

      v18 = [a1 childTargetsForSearchTarget:v8];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          v22 = 0;
          do
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [a1 recursiveSearchWithSearchTarget:*(*(&v23 + 1) + 8 * v22) inFlowMode:v6 withHitBlock:v9];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)setInteractiveCanvasController:(id)a3
{
  objc_storeWeak(&self->_interactiveCanvasController, a3);

  [(CRLRotorSearchController *)self _addObservers];
}

+ (id)searchTargetSearchSelectors
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FC08);
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
    v22 = "+[CRLRotorSearchController searchTargetSearchSelectors]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLRotorSearchController.m";
    v25 = 1024;
    v26 = 63;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FC28);
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

  v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLRotorSearchController searchTargetSearchSelectors]");
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLRotorSearchController.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:63 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Abstract method not overridden by %@: %s", v15, "+[CRLRotorSearchController searchTargetSearchSelectors]");
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10056FEFC;
  v9[3] = &unk_101861A10;
  v10 = v5;
  v8 = v5;
  [v7 recursiveSearchWithSearchTarget:v6 inFlowMode:0 withHitBlock:v9];
}

- (void)locateSearchReference:(id)a3
{
  v4 = a3;
  v5 = [(CRLRotorSearchController *)self interactiveCanvasController];
  v6 = [v4 selectionPath];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10056FFD4;
  v8[3] = &unk_101846288;
  v9 = v4;
  v7 = v4;
  [v5 forLayoutNearestVisibleRectForInfosForSelectionPath:v6 performBlock:v8];
}

- (id)searchReferenceAfterReference:(id)a3 inRotorDirection:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 searchReferencePoint];
    if (v9 == CGPointZero.x && v8 == CGPointZero.y)
    {
      [(CRLRotorSearchController *)self locateSearchReference:v7];
    }
  }

  v11 = [(CRLModelSearchController *)self searchReferenceAfterReference:v7 inDirection:a4 == 0];

  return v11;
}

- (void)_addObservers
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v4 = [WeakRetained changeNotifier];
  v5 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [v5 board];
  v7 = [v6 rootContainer];
  [v4 addObserver:self forChangeSource:v7];

  v11 = +[NSNotificationCenter defaultCenter];
  v8 = +[NSNotification CRLCommandControllerHistoryStateDidChange];
  v9 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v10 = [v9 commandController];
  [v11 addObserver:self selector:"_commandHistoryChanged:" name:v8 object:v10];
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end