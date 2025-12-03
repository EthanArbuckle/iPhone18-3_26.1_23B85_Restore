@interface CRLModelSearchController
+ (BOOL)p_searchReference:(id)reference comparedWithSearchReference:(id)searchReference inDirection:(unint64_t)direction before:(BOOL)before;
+ (void)assertSearchTargetImplementsProperMethods:(id)methods;
- (BOOL)_nextSearchTargetWithMatchInDirection:(unint64_t)direction;
- (BOOL)respondsToSearch;
- (CRLFindReplaceDelegate)findReplaceDelegate;
- (CRLModelSearchController)init;
- (CRLModelSearchController)initWithEditingCoordinator:(id)coordinator delegate:(id)delegate modelSearchesRunSynchronously:(BOOL)synchronously;
- (_NSRange)currentRootSearchTargetRange;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (_TtC8Freeform8CRLBoard)board;
- (id)_firstResultInDirection:(unint64_t)direction;
- (id)_lastResultInDirection:(unint64_t)direction;
- (id)firstVisibleResultInRect:(CGRect)rect;
- (id)getNextSearchFromCurrentSearchable;
- (id)modelEnumeratorForUserSearch;
- (id)p_searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction;
- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction;
- (unint64_t)_layoutSearchResultsIndexAtOrAfterSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same;
- (unint64_t)_layoutSearchResultsIndexAtOrBeforeSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same;
- (unint64_t)_layoutSearchResultsIndexNearestToSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same;
- (unint64_t)_resultCountInRootObjectRange:(_NSRange)range;
- (unint64_t)findResultIndex;
- (unint64_t)indexOfVisibleSearchReference:(id)reference;
- (unint64_t)layoutSearchResultsIndexOfSearchReference:(id)reference;
- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)index forString:(id)string options:(unint64_t)options inDirection:(unint64_t)direction;
- (unint64_t)searchResultsCount;
- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array;
- (void)asyncBuildSearchResultsIfNecessaryWithCompletionBlock:(id)block;
- (void)asyncPerformSearchWithSearchTarget:(id)target resultsArray:(id)array completionBlock:(id)block;
- (void)asyncSearchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction completionBlock:(id)block;
- (void)buildSearchResultsIfNecessary;
- (void)buildVisibleSearchResultsIfNecessary;
- (void)continueCountingHits;
- (void)continueSearch;
- (void)invalidateSearchResults;
- (void)invalidateSearchResultsCountPerRootIndexForRange:(_NSRange)range;
- (void)p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array completionBlock:(id)block;
- (void)performSearchWithSearchTarget:(id)target resultsArray:(id)array;
- (void)setEditingCoordinator:(id)coordinator;
- (void)setSearchProgressBlock:(id)block;
- (void)startCountingHits;
- (void)stopCountingHits;
@end

@implementation CRLModelSearchController

- (void)setEditingCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_editingCoordinator);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_editingCoordinator, obj);
    [(CRLModelSearchController *)self stopCountingHits];
    v5 = obj;
  }
}

- (CRLModelSearchController)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C6E8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLModelSearchController init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v18 = 1024;
    v19 = 81;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C708);
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

  v7 = [NSString stringWithUTF8String:"[CRLModelSearchController init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:81 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLModelSearchController init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLModelSearchController)initWithEditingCoordinator:(id)coordinator delegate:(id)delegate modelSearchesRunSynchronously:(BOOL)synchronously
{
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = CRLModelSearchController;
  v10 = [(CRLModelSearchController *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_editingCoordinator, coordinatorCopy);
    v12 = +[NSMutableArray array];
    layoutSearchResults = v11->_layoutSearchResults;
    v11->_layoutSearchResults = v12;

    v14 = +[NSMutableDictionary dictionary];
    layoutSearchCountForRootIndexMap = v11->_layoutSearchCountForRootIndexMap;
    v11->_layoutSearchCountForRootIndexMap = v14;

    objc_storeWeak(&v11->_findReplaceDelegate, delegateCopy);
    v11->_modelSearchesRunSynchronously = synchronously;
  }

  return v11;
}

- (void)setSearchProgressBlock:(id)block
{
  blockCopy = block;
  progressBlock = [(CRLModelSearchController *)self progressBlock];

  if (progressBlock != blockCopy)
  {
    [(CRLModelSearchController *)self stopCountingHits];
    [(CRLModelSearchController *)self setProgressBlock:blockCopy];
    progressBlock2 = [(CRLModelSearchController *)self progressBlock];

    if (progressBlock2)
    {
      [(CRLModelSearchController *)self startCountingHits];
    }
  }
}

- (unint64_t)searchResultsCount
{
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v4 = [layoutSearchResults count];

  result = [(CRLModelSearchController *)self currentSearchResultsCount];
  if (v4 > result)
  {
    return v4;
  }

  return result;
}

- (_TtC8Freeform8CRLBoard)board
{
  editingCoordinator = [(CRLModelSearchController *)self editingCoordinator];
  mainBoard = [editingCoordinator mainBoard];

  return mainBoard;
}

- (BOOL)respondsToSearch
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C728);
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
    v22 = "[CRLModelSearchController respondsToSearch]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v25 = 1024;
    v26 = 122;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C748);
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

  v10 = [NSString stringWithUTF8String:"[CRLModelSearchController respondsToSearch]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:122 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLModelSearchController respondsToSearch]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (id)getNextSearchFromCurrentSearchable
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C768);
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
    v22 = "[CRLModelSearchController getNextSearchFromCurrentSearchable]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v25 = 1024;
    v26 = 127;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C788);
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

  v10 = [NSString stringWithUTF8String:"[CRLModelSearchController getNextSearchFromCurrentSearchable]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:127 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLModelSearchController getNextSearchFromCurrentSearchable]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)continueSearch
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C7A8);
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
    v22 = "[CRLModelSearchController continueSearch]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v25 = 1024;
    v26 = 132;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C7C8);
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

  v10 = [NSString stringWithUTF8String:"[CRLModelSearchController continueSearch]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:132 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLModelSearchController continueSearch]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)continueCountingHits
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363DBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363DD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363E58();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLModelSearchController continueCountingHits]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:138 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  modelSearchesRunSynchronously = [(CRLModelSearchController *)self modelSearchesRunSynchronously];
  currentModelEnumerator = [(CRLModelSearchController *)self currentModelEnumerator];
  if (currentModelEnumerator)
  {
    v8 = currentModelEnumerator;
    searchCriteriaIsValid = [(CRLModelSearchController *)self searchCriteriaIsValid];

    if (searchCriteriaIsValid)
    {
      while (1)
      {
        currentSearchable = [(CRLModelSearchController *)self currentSearchable];

        if (currentSearchable)
        {
          v11 = 0;
        }

        else
        {
          currentModelEnumerator2 = [(CRLModelSearchController *)self currentModelEnumerator];
          nextObject = [currentModelEnumerator2 nextObject];

          v11 = nextObject == 0;
          if (nextObject)
          {
            v20 = sub_1003035DC(nextObject, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLSearchable);
            [(CRLModelSearchController *)self setCurrentSearchable:v20];

            [(CRLModelSearchController *)self currentSearchable];
          }
        }

        currentSearchable2 = [(CRLModelSearchController *)self currentSearchable];

        if (currentSearchable2)
        {
          currentSearch = [(CRLModelSearchController *)self currentSearch];

          if (currentSearch)
          {
            [(CRLModelSearchController *)self continueSearch];
          }

          else if ([(CRLModelSearchController *)self respondsToSearch])
          {
            getNextSearchFromCurrentSearchable = [(CRLModelSearchController *)self getNextSearchFromCurrentSearchable];
            [(CRLModelSearchController *)self setCurrentSearch:getNextSearchFromCurrentSearchable];
          }

          currentSearch2 = [(CRLModelSearchController *)self currentSearch];
          if (currentSearch2)
          {
            v25 = currentSearch2;
            currentSearch3 = [(CRLModelSearchController *)self currentSearch];
            isComplete = [currentSearch3 isComplete];

            if (isComplete)
            {
              [(CRLModelSearchController *)self setCurrentSearch:0];
            }
          }

          currentSearch4 = [(CRLModelSearchController *)self currentSearch];

          if (!currentSearch4)
          {
            [(CRLModelSearchController *)self setCurrentSearchable:0];
          }
        }

        progressBlock = [(CRLModelSearchController *)self progressBlock];
        if (progressBlock)
        {

          if (v11 | modelSearchesRunSynchronously ^ 1u)
          {
            progressBlock2 = [(CRLModelSearchController *)self progressBlock];
            progressBlock2[2](progressBlock2, [(CRLModelSearchController *)self currentSearchResultsCount], v11);
          }
        }

        if (v11)
        {
          break;
        }

        if ((modelSearchesRunSynchronously & 1) == 0)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1003B86A0;
          block[3] = &unk_10183AB38;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          return;
        }
      }

      [(CRLModelSearchController *)self setCurrentModelEnumerator:0];
    }
  }
}

- (void)stopCountingHits
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363E80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363E94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363F1C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLModelSearchController stopCountingHits]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:192 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLModelSearchController *)self setCurrentSearchResultsCount:0];
  [(CRLModelSearchController *)self setCurrentModelEnumerator:0];
  [(CRLModelSearchController *)self setCurrentSearch:0];
}

- (id)modelEnumeratorForUserSearch
{
  board = [(CRLModelSearchController *)self board];
  v3 = [board modelEnumeratorWithFlags:1];

  return v3;
}

- (void)startCountingHits
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363F44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363F58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363FE0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLModelSearchController startCountingHits]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:204 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLModelSearchController *)self setCurrentSearchable:0];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = [findReplaceDelegate modelEnumeratorForSearchWithFlags:1];
  [(CRLModelSearchController *)self setCurrentModelEnumerator:v7];

  [(CRLModelSearchController *)self setCurrentSearchResultsCount:0];
  [(CRLModelSearchController *)self setCurrentSearchStartTime:CFAbsoluteTimeGetCurrent()];
  currentModelEnumerator = [(CRLModelSearchController *)self currentModelEnumerator];

  if (currentModelEnumerator)
  {
    if ([(CRLModelSearchController *)self modelSearchesRunSynchronously])
    {
      [(CRLModelSearchController *)self continueCountingHits];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003B8B74;
      block[3] = &unk_10183AB38;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

+ (void)assertSearchTargetImplementsProperMethods:(id)methods
{
  methodsCopy = methods;
  if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364008();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136401C(methodsCopy, v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013640D8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLModelSearchController assertSearchTargetImplementsProperMethods:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:229 isFatal:0 description:"Search target %@ does not respond to one of the necessary protocol methods.", methodsCopy];
  }
}

- (void)invalidateSearchResults
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364100();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101364114();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136419C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLModelSearchController invalidateSearchResults]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:233 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  [layoutSearchResults removeAllObjects];

  [(CRLModelSearchController *)self setCurrentRootSearchTargetRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(CRLModelSearchController *)self setPrimaryFindResultSearchReference:0];
  [(CRLModelSearchController *)self stopCountingHits];
  progressBlock = [(CRLModelSearchController *)self progressBlock];
  if (progressBlock)
  {
    v8 = progressBlock;
    searchCriteriaIsValid = [(CRLModelSearchController *)self searchCriteriaIsValid];

    if (searchCriteriaIsValid)
    {
      [(CRLModelSearchController *)self startCountingHits];
    }
  }
}

- (void)invalidateSearchResultsCountPerRootIndexForRange:(_NSRange)range
{
  if (range.location != 0x7FFFFFFFFFFFFFFFLL || range.length != 0)
  {
    length = range.length;
    location = range.location;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    layoutSearchCountForRootIndexMap = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
    allKeys = [layoutSearchCountForRootIndexMap allKeys];

    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          intValue = [v13 intValue];
          if (intValue >= location && intValue - location < length)
          {
            layoutSearchCountForRootIndexMap2 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
            [layoutSearchCountForRootIndexMap2 removeObjectForKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (unint64_t)findResultIndex
{
  primaryFindResultSearchReference = [(CRLModelSearchController *)self primaryFindResultSearchReference];
  v4 = [(CRLModelSearchController *)self indexOfVisibleSearchReference:primaryFindResultSearchReference];

  return v4;
}

- (void)performSearchWithSearchTarget:(id)target resultsArray:(id)array
{
  targetCopy = target;
  arrayCopy = array;
  v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C928);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 67110146;
    v25 = v7;
    v26 = 2082;
    v27 = "[CRLModelSearchController performSearchWithSearchTarget:resultsArray:]";
    v28 = 2082;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v30 = 1024;
    v31 = 263;
    v32 = 2114;
    v33 = v11;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C948);
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v25 = v7;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v15 = [NSString stringWithUTF8String:"[CRLModelSearchController performSearchWithSearchTarget:resultsArray:]"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:263 isFatal:0 description:"Abstract method not overridden by %{public}@", v18];

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v20, "[CRLModelSearchController performSearchWithSearchTarget:resultsArray:]"];
  v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v21 userInfo:0];
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)asyncPerformSearchWithSearchTarget:(id)target resultsArray:(id)array completionBlock:(id)block
{
  targetCopy = target;
  arrayCopy = array;
  blockCopy = block;
  v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C968);
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 67110146;
    v28 = v10;
    v29 = 2082;
    v30 = "[CRLModelSearchController asyncPerformSearchWithSearchTarget:resultsArray:completionBlock:]";
    v31 = 2082;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
    v33 = 1024;
    v34 = 267;
    v35 = 2114;
    v36 = v14;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10185C988);
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v16 = v15;
    v17 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v28 = v10;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v18 = [NSString stringWithUTF8String:"[CRLModelSearchController asyncPerformSearchWithSearchTarget:resultsArray:completionBlock:]"];
  v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:267 isFatal:0 description:"Abstract method not overridden by %{public}@", v21];

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v23, "[CRLModelSearchController asyncPerformSearchWithSearchTarget:resultsArray:completionBlock:]"];
  v25 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v24 userInfo:0];
  v26 = v25;

  objc_exception_throw(v25);
}

- (unint64_t)_layoutSearchResultsIndexAtOrBeforeSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same
{
  referenceCopy = reference;
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v10 = [layoutSearchResults count];

  if (v10)
  {
    v11 = 0;
    v12 = v10 - 1;
    while (1)
    {
      v13 = (direction ? v12 : v11);
      layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [layoutSearchResults2 objectAtIndexedSubscript:v13];

      v16 = [objc_opt_class() compareSearchReference:referenceCopy toSearchReference:v15];
      if (!v16)
      {
        break;
      }

      if (!direction && v16 == 1 || direction == 1 && v16 == -1)
      {
        if (!same)
        {
          goto LABEL_18;
        }

        v17 = 0;
        goto LABEL_17;
      }

      ++v11;
      if (--v12 == -1)
      {
        goto LABEL_12;
      }
    }

    if (!same)
    {
      goto LABEL_18;
    }

    v17 = 1;
LABEL_17:
    *same = v17;
LABEL_18:
  }

  else
  {
LABEL_12:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (unint64_t)_layoutSearchResultsIndexAtOrAfterSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same
{
  referenceCopy = reference;
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v10 = [layoutSearchResults count];

  if (v10)
  {
    v11 = 0;
    v12 = v10 - 1;
    while (1)
    {
      v13 = (direction ? v12 : v11);
      layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [layoutSearchResults2 objectAtIndexedSubscript:v13];

      v16 = [objc_opt_class() compareSearchReference:referenceCopy toSearchReference:v15];
      if (!v16)
      {
        break;
      }

      if (!direction && v16 == -1 || direction == 1 && v16 == 1)
      {
        if (!same)
        {
          goto LABEL_18;
        }

        v17 = 0;
        goto LABEL_17;
      }

      ++v11;
      if (--v12 == -1)
      {
        goto LABEL_12;
      }
    }

    if (!same)
    {
      goto LABEL_18;
    }

    v17 = 1;
LABEL_17:
    *same = v17;
LABEL_18:
  }

  else
  {
LABEL_12:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  if (location != [(CRLModelSearchController *)self currentRootSearchTargetRange]|| length != v8)
  {
    v34 = arrayCopy;
    [(CRLModelSearchController *)self setCurrentRootSearchTargetRange:location, length];
    v9 = objc_alloc_init(NSMutableSet);
    v35 = &location[length];
    if (location < &location[length])
    {
      *&v10 = 67109378;
      v33 = v10;
      do
      {
        if (location == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013641C4();
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v44 = v11;
            v45 = 2082;
            v46 = "[CRLModelSearchController _buildLayoutSearchResultsForRootSearchTargetsInRange:resultsArray:]";
            v47 = 2082;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
            v49 = 1024;
            v50 = 352;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Got an invalid root index while searching", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013641EC();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v30 = v13;
            v31 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v33;
            v44 = v11;
            v45 = 2114;
            v46 = v31;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v14 = [NSString stringWithUTF8String:"[CRLModelSearchController _buildLayoutSearchResultsForRootSearchTargetsInRange:resultsArray:]", v33];
          v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
          [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:352 isFatal:0 description:"Got an invalid root index while searching"];
        }

        v16 = +[NSMutableArray array];
        findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1003B9F90;
        v40[3] = &unk_10185CA10;
        v40[4] = self;
        v18 = v16;
        v41 = v18;
        [findReplaceDelegate withRootSearchTargetAtIndex:location executeBlock:v40];

        v19 = [v9 count];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v36 + 1) + 8 * i);
              [v25 setRootIndex:location];
              [v9 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v22);
        }

        v26 = [v9 count];
        v27 = [NSNumber numberWithUnsignedInteger:location];
        v28 = [NSNumber numberWithUnsignedInteger:v26 - v19];
        layoutSearchCountForRootIndexMap = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
        [layoutSearchCountForRootIndexMap setObject:v28 forKey:v27];

        ++location;
      }

      while (location != v35);
    }

    arrayCopy = v34;
    [v34 removeAllObjects];
    allObjects = [v9 allObjects];
    [v34 addObjectsFromArray:allObjects];

    [(CRLModelSearchController *)self sortLayoutSearchResultsArray:v34];
  }
}

- (void)p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array completionBlock:(id)block
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  blockCopy = block;
  if (location == [(CRLModelSearchController *)self currentRootSearchTargetRange]&& length == v11)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    [(CRLModelSearchController *)self setCurrentRootSearchTargetRange:location, length];
    v12 = objc_alloc_init(NSMutableSet);
    if (location || length != 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101364214();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101364228();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013642B0();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLModelSearchController p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:resultsArray:completionBlock:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:387 isFatal:0 description:"Async result building only supports searching one root."];
    }

    v16 = +[NSMutableArray array];
    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003BA2A8;
    v20[3] = &unk_10185CAA0;
    v20[4] = self;
    v21 = v16;
    v25 = location;
    v26 = length;
    v22 = arrayCopy;
    v23 = v12;
    v24 = blockCopy;
    v18 = v12;
    v19 = v16;
    [findReplaceDelegate withRootSearchTargetAtIndex:0 executeBlock:v20];
  }
}

- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction
{
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    v10 = [findReplaceDelegate2 nextRootSearchTargetIndexFromIndex:index forString:0 options:1 inDirection:direction];
  }

  else
  {
    v10 = [(CRLModelSearchController *)self nextRootSearchTargetIndexFromIndex:index forString:0 options:1 inDirection:direction];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    findReplaceDelegate3 = [(CRLModelSearchController *)self findReplaceDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      findReplaceDelegate4 = [(CRLModelSearchController *)self findReplaceDelegate];
      v10 = [findReplaceDelegate4 nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:0 options:1 inDirection:direction];
    }

    else
    {
      v10 = [(CRLModelSearchController *)self nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:0 options:1 inDirection:direction];
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013642D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013642EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101364374();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLModelSearchController nextRootSearchTargetFromIndex:inDirection:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:447 isFatal:0 description:"Could not find next root search target. Defaulting to 0."];

      return 0;
    }
  }

  return v10;
}

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)index forString:(id)string options:(unint64_t)options inDirection:(unint64_t)direction
{
  stringCopy = string;
  if (direction == 1)
  {
    if (index)
    {
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
        index = [findReplaceDelegate rootSearchTargetCountThroughIndex:0x7FFFFFFFFFFFFFFFLL] - 1;
      }

      else
      {
        --index;
      }
    }

    else
    {
      index = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (!direction)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      index = 0;
    }

    else
    {
      findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
      v12 = [findReplaceDelegate2 rootSearchTargetCountThroughIndex:index] - 1;

      if (v12 > index)
      {
        ++index;
      }

      else
      {
        index = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return index;
}

- (unint64_t)_layoutSearchResultsIndexNearestToSearchReference:(id)reference inDirection:(unint64_t)direction isOrdredSame:(BOOL *)same
{
  referenceCopy = reference;
  currentRootSearchTargetRange = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v11 = v10;
  [referenceCopy searchReferencePoint];
  v13 = v12;
  v15 = v14;
  currentRootSearchTargetRange2 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v18 = v17 - 1;
  if (direction)
  {
    v18 = 0;
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 != INFINITY && v15 != INFINITY && &currentRootSearchTargetRange2[v18] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v11;
    v41 = currentRootSearchTargetRange;
    v20 = [NSMutableIndexSet indexSetWithIndex:?];
    for (i = 0; ; i |= v36)
    {
      currentRootSearchTargetRange3 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      v24 = direction ? 0 : v22 - 1;
      v25 = (i & 1) != 0 ? [(CRLModelSearchController *)self _layoutSearchResultsIndexAtOrBeforeSearchReference:referenceCopy inDirection:direction isOrdredSame:same]: [(CRLModelSearchController *)self _layoutSearchResultsIndexAtOrAfterSearchReference:referenceCopy inDirection:direction isOrdredSame:same];
      v19 = v25;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (!-[CRLModelSearchController _nextSearchTargetWithMatchInDirection:](self, "_nextSearchTargetWithMatchInDirection:", direction) || (v26 = -[CRLModelSearchController currentRootSearchTargetRange](self, "currentRootSearchTargetRange"), ([v20 containsIndexesInRange:{v26, v27}] & 1) != 0))
      {
        layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
        [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v41 resultsArray:v40, layoutSearchResults];

        break;
      }

      v28 = &currentRootSearchTargetRange3[v24];
      currentRootSearchTargetRange4 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      [v20 addIndexesInRange:{currentRootSearchTargetRange4, v30}];
      currentRootSearchTargetRange5 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      v33 = v32 - 1;
      if (direction)
      {
        v33 = 0;
      }

      v34 = &currentRootSearchTargetRange5[v33];
      v35 = v34 > v28;
      v36 = v34 < v28;
      v37 = v35;
      if (direction)
      {
        v36 = v37;
      }
    }
  }

  return v19;
}

- (BOOL)_nextSearchTargetWithMatchInDirection:(unint64_t)direction
{
  if ([(CRLModelSearchController *)self currentRootSearchTargetRange]== 0x7FFFFFFFFFFFFFFFLL && v5 == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136439C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013643B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364438();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLModelSearchController _nextSearchTargetWithMatchInDirection:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:542 isFatal:0 description:"must have a valid search target at this point"];
  }

  currentRootSearchTargetRange = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v12 = v11 - 1;
  if (direction)
  {
    v12 = 0;
  }

  if (&currentRootSearchTargetRange[v12] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v14 = [NSMutableIndexSet indexSetWithIndex:?];
  *&v15 = 67109378;
  v41 = v15;
  while (1)
  {
    currentRootSearchTargetRange2 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    v18 = v17 - 1;
    if (direction)
    {
      v18 = 0;
    }

    v19 = [(CRLModelSearchController *)self nextRootSearchTargetFromIndex:&currentRootSearchTargetRange2[v18] inDirection:direction];
    currentRootSearchTargetRange3 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (v19 < currentRootSearchTargetRange3 || v19 - currentRootSearchTargetRange3 >= v21)
    {
      layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
      [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v19 resultsArray:1, layoutSearchResults];
    }

    currentRootSearchTargetRange4 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (v19 < currentRootSearchTargetRange4 || v19 - currentRootSearchTargetRange4 >= v25)
    {
      v27 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101364460();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v43 = v27;
        v44 = 2082;
        v45 = "[CRLModelSearchController _nextSearchTargetWithMatchInDirection:]";
        v46 = 2082;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
        v48 = 1024;
        v49 = 557;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d rebulding cache must update current index", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101364488();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v38 = v29;
        v39 = +[CRLAssertionHandler packedBacktraceString];
        *buf = v41;
        v43 = v27;
        v44 = 2114;
        v45 = v39;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v30 = [NSString stringWithUTF8String:"[CRLModelSearchController _nextSearchTargetWithMatchInDirection:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:557 isFatal:0 description:"rebulding cache must update current index"];
    }

    layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
    v33 = [layoutSearchResults2 count];
    v13 = v33 != 0;

    if (v33)
    {
      break;
    }

    currentRootSearchTargetRange5 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if ([v14 containsIndexesInRange:{currentRootSearchTargetRange5, v35}])
    {
      break;
    }

    currentRootSearchTargetRange6 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    [v14 addIndexesInRange:{currentRootSearchTargetRange6, v37}];
  }

  return v13;
}

- (id)_firstResultInDirection:(unint64_t)direction
{
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [layoutSearchResults count];

  if (v6)
  {
    layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
    v8 = layoutSearchResults2;
    if (direction)
    {
      [layoutSearchResults2 lastObject];
    }

    else
    {
      [layoutSearchResults2 objectAtIndex:0];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_lastResultInDirection:(unint64_t)direction
{
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [layoutSearchResults count];

  if (v6)
  {
    layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
    v8 = layoutSearchResults2;
    if (direction)
    {
      [layoutSearchResults2 objectAtIndex:0];
    }

    else
    {
      [layoutSearchResults2 lastObject];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)buildSearchResultsIfNecessary
{
  if ([(CRLModelSearchController *)self currentRootSearchTargetRange]== 0x7FFFFFFFFFFFFFFFLL && v3 == 0)
  {
    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    visibleRootIndexRange = [findReplaceDelegate visibleRootIndexRange];
    v7 = v6;
    layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v7, layoutSearchResults];
  }
}

- (void)asyncBuildSearchResultsIfNecessaryWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(CRLModelSearchController *)self currentRootSearchTargetRange]== 0x7FFFFFFFFFFFFFFFLL && v4 == 0)
  {
    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    visibleRootIndexRange = [findReplaceDelegate visibleRootIndexRange];
    v9 = v8;
    layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v9 completionBlock:layoutSearchResults, blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)buildVisibleSearchResultsIfNecessary
{
  currentRootSearchTargetRange = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v5 = v4;
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  visibleRootIndexRange = [findReplaceDelegate visibleRootIndexRange];
  v9 = v8;

  if (currentRootSearchTargetRange != visibleRootIndexRange || v5 != v9)
  {
    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    visibleRootIndexRange2 = [findReplaceDelegate2 visibleRootIndexRange];
    v12 = v11;
    layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange2 resultsArray:v12, layoutSearchResults];
  }
}

- (id)firstVisibleResultInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1003BB598;
  v19 = sub_1003BB5A8;
  v20 = 0;
  v8 = objc_alloc_init(NSMutableArray);
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  visibleRootIndexRange = [findReplaceDelegate visibleRootIndexRange];
  [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v11, v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003BB5B0;
  v14[3] = &unk_10185CB88;
  *&v14[5] = x;
  *&v14[6] = y;
  *&v14[7] = width;
  *&v14[8] = height;
  v14[4] = &v15;
  [v8 enumerateObjectsUsingBlock:v14];
  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (unint64_t)indexOfVisibleSearchReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    currentRootSearchTargetRange = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (currentRootSearchTargetRange == 0x7FFFFFFFFFFFFFFFLL && v6 == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101364574();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101364588();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101364610();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v12 = [NSString stringWithUTF8String:"[CRLModelSearchController indexOfVisibleSearchReference:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
      v14 = "Can not find searchReference while currentRootSearchTargetRange is invalid.";
      v15 = v12;
      v16 = v13;
      v17 = 636;
    }

    else
    {
      v8 = currentRootSearchTargetRange;
      layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
      v10 = [layoutSearchResults indexOfObject:referenceCopy];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [(CRLModelSearchController *)self _resultCountInRootObjectRange:0, v8]+ v10 + 1;
        goto LABEL_27;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013644B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013644C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136454C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLModelSearchController indexOfVisibleSearchReference:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
      v14 = "Could not find searchReference in current root search target range.";
      v15 = v12;
      v16 = v13;
      v17 = 642;
    }

    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:v17 isFatal:0 description:v14];
  }

  v19 = 0;
LABEL_27:

  return v19;
}

- (unint64_t)_resultCountInRootObjectRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentRootSearchTargetRange = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v24 = v7;
  v25 = currentRootSearchTargetRange;
  v26 = objc_alloc_init(NSMutableArray);
  if (location >= location + length)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    do
    {
      v10 = [v9[90] numberWithUnsignedInteger:location];
      layoutSearchCountForRootIndexMap = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
      v12 = [layoutSearchCountForRootIndexMap objectForKey:v10];

      if (!v12)
      {
        [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:location resultsArray:1, v26];
      }

      layoutSearchCountForRootIndexMap2 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
      v14 = [layoutSearchCountForRootIndexMap2 objectForKey:v10];

      if (v14)
      {
        v8 += [v14 intValue];
      }

      else
      {
        v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101364638();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110146;
          v28 = v15;
          v29 = 2082;
          v30 = "[CRLModelSearchController _resultCountInRootObjectRange:]";
          v31 = 2082;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m";
          v33 = 1024;
          v34 = 669;
          v35 = 2082;
          v36 = "rootCount";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101364660();
        }

        v17 = v9;
        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v21 = v18;
          v22 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v28 = v15;
          v29 = 2114;
          v30 = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v19 = [NSString stringWithUTF8String:"[CRLModelSearchController _resultCountInRootObjectRange:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLModelSearchController.m"];
        [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:669 isFatal:0 description:"invalid nil value for '%{public}s'", "rootCount"];

        v9 = v17;
      }

      ++location;
      --length;
    }

    while (length);
  }

  [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v25 resultsArray:v24, v26];

  return v8;
}

- (unint64_t)layoutSearchResultsIndexOfSearchReference:(id)reference
{
  referenceCopy = reference;
  layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [layoutSearchResults indexOfObject:referenceCopy];

  return v6;
}

- (id)p_searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction
{
  referenceCopy = reference;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1003BB598;
  v42 = sub_1003BB5A8;
  v43 = 0;
  if (!referenceCopy)
  {
    layoutSearchResults = [(CRLModelSearchController *)self layoutSearchResults];
    v14 = [layoutSearchResults count];

    if (!v14)
    {
      [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:direction];
    }

    v12 = [(CRLModelSearchController *)self _firstResultInDirection:direction];
    goto LABEL_17;
  }

  v37 = 0;
  v7 = [(CRLModelSearchController *)self layoutSearchResultsIndexOfSearchReference:referenceCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    if (direction)
    {
      v15 = 0;
    }

    else
    {
      layoutSearchResults2 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [layoutSearchResults2 count] - 1;
    }

    if (v7 != v15)
    {
      layoutSearchResults3 = [(CRLModelSearchController *)self layoutSearchResults];
      v19 = layoutSearchResults3;
      if (direction)
      {
        v20 = v7 - 1;
      }

      else
      {
        v20 = v7 + 1;
      }

      v21 = [layoutSearchResults3 objectAtIndex:v20];
      v22 = v39[5];
      v39[5] = v21;

      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v7 = [(CRLModelSearchController *)self _layoutSearchResultsIndexNearestToSearchReference:referenceCopy inDirection:direction isOrdredSame:&v37];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v37 & 1) == 0)
    {
      layoutSearchResults4 = [(CRLModelSearchController *)self layoutSearchResults];
      v24 = [layoutSearchResults4 objectAtIndex:v7];
      v25 = v39[5];
      v39[5] = v24;

      goto LABEL_27;
    }

    goto LABEL_12;
  }

  layoutSearchResults5 = [(CRLModelSearchController *)self layoutSearchResults];
  v9 = [layoutSearchResults5 count];

  if (!v9)
  {
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:direction];
  }

  v10 = objc_opt_class();
  v11 = [(CRLModelSearchController *)self _firstResultInDirection:direction];
  LODWORD(v10) = [v10 searchReference:referenceCopy isBeforeSearchReference:v11 inDirection:direction];

  if (v10)
  {
    v12 = [(CRLModelSearchController *)self _firstResultInDirection:direction];
LABEL_17:
    v17 = v39[5];
    v39[5] = v12;

    goto LABEL_27;
  }

  v26 = objc_opt_class();
  v27 = [(CRLModelSearchController *)self _lastResultInDirection:direction];
  LODWORD(v26) = [v26 searchReference:referenceCopy isAfterSearchReference:v27 inDirection:direction];

  if (v26)
  {
LABEL_16:
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:direction];
    v12 = [(CRLModelSearchController *)self _firstResultInDirection:direction];
    goto LABEL_17;
  }

  layoutSearchResults6 = [(CRLModelSearchController *)self layoutSearchResults];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1003BC1FC;
  v33[3] = &unk_10185CC70;
  v33[4] = self;
  v34 = referenceCopy;
  v35 = &v38;
  directionCopy = direction;
  [layoutSearchResults6 enumerateObjectsWithOptions:2 * (direction != 0) usingBlock:v33];

  if (!v39[5])
  {
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:direction];
    v29 = [(CRLModelSearchController *)self _firstResultInDirection:direction];
    v30 = v39[5];
    v39[5] = v29;
  }

LABEL_27:
  v31 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v31;
}

- (void)asyncSearchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction completionBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003BC34C;
  v9[3] = &unk_10185CC98;
  selfCopy = self;
  referenceCopy = reference;
  blockCopy = block;
  directionCopy = direction;
  v7 = blockCopy;
  v8 = referenceCopy;
  [(CRLModelSearchController *)selfCopy asyncBuildSearchResultsIfNecessaryWithCompletionBlock:v9];
}

- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction
{
  referenceCopy = reference;
  [(CRLModelSearchController *)self buildSearchResultsIfNecessary];
  v7 = [(CRLModelSearchController *)self p_searchReferenceAfterReference:referenceCopy inDirection:direction];

  return v7;
}

+ (BOOL)p_searchReference:(id)reference comparedWithSearchReference:(id)searchReference inDirection:(unint64_t)direction before:(BOOL)before
{
  beforeCopy = before;
  v8 = [self compareSearchReference:reference toSearchReference:searchReference];
  v9 = 1;
  if ((direction == 0) == beforeCopy)
  {
    v9 = -1;
  }

  return v8 == v9;
}

- (CRLFindReplaceDelegate)findReplaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_findReplaceDelegate);

  return WeakRetained;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_editingCoordinator);

  return WeakRetained;
}

- (_NSRange)currentRootSearchTargetRange
{
  length = self->_currentRootSearchTargetRange.length;
  location = self->_currentRootSearchTargetRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end