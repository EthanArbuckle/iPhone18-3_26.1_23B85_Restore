@interface CRLModelSearchController
+ (BOOL)p_searchReference:(id)a3 comparedWithSearchReference:(id)a4 inDirection:(unint64_t)a5 before:(BOOL)a6;
+ (void)assertSearchTargetImplementsProperMethods:(id)a3;
- (BOOL)_nextSearchTargetWithMatchInDirection:(unint64_t)a3;
- (BOOL)respondsToSearch;
- (CRLFindReplaceDelegate)findReplaceDelegate;
- (CRLModelSearchController)init;
- (CRLModelSearchController)initWithEditingCoordinator:(id)a3 delegate:(id)a4 modelSearchesRunSynchronously:(BOOL)a5;
- (_NSRange)currentRootSearchTargetRange;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (_TtC8Freeform8CRLBoard)board;
- (id)_firstResultInDirection:(unint64_t)a3;
- (id)_lastResultInDirection:(unint64_t)a3;
- (id)firstVisibleResultInRect:(CGRect)a3;
- (id)getNextSearchFromCurrentSearchable;
- (id)modelEnumeratorForUserSearch;
- (id)p_searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4;
- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4;
- (unint64_t)_layoutSearchResultsIndexAtOrAfterSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5;
- (unint64_t)_layoutSearchResultsIndexAtOrBeforeSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5;
- (unint64_t)_layoutSearchResultsIndexNearestToSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5;
- (unint64_t)_resultCountInRootObjectRange:(_NSRange)a3;
- (unint64_t)findResultIndex;
- (unint64_t)indexOfVisibleSearchReference:(id)a3;
- (unint64_t)layoutSearchResultsIndexOfSearchReference:(id)a3;
- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6;
- (unint64_t)searchResultsCount;
- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4;
- (void)asyncBuildSearchResultsIfNecessaryWithCompletionBlock:(id)a3;
- (void)asyncPerformSearchWithSearchTarget:(id)a3 resultsArray:(id)a4 completionBlock:(id)a5;
- (void)asyncSearchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4 completionBlock:(id)a5;
- (void)buildSearchResultsIfNecessary;
- (void)buildVisibleSearchResultsIfNecessary;
- (void)continueCountingHits;
- (void)continueSearch;
- (void)invalidateSearchResults;
- (void)invalidateSearchResultsCountPerRootIndexForRange:(_NSRange)a3;
- (void)p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4 completionBlock:(id)a5;
- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4;
- (void)setEditingCoordinator:(id)a3;
- (void)setSearchProgressBlock:(id)a3;
- (void)startCountingHits;
- (void)stopCountingHits;
@end

@implementation CRLModelSearchController

- (void)setEditingCoordinator:(id)a3
{
  obj = a3;
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

- (CRLModelSearchController)initWithEditingCoordinator:(id)a3 delegate:(id)a4 modelSearchesRunSynchronously:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CRLModelSearchController;
  v10 = [(CRLModelSearchController *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_editingCoordinator, v8);
    v12 = +[NSMutableArray array];
    layoutSearchResults = v11->_layoutSearchResults;
    v11->_layoutSearchResults = v12;

    v14 = +[NSMutableDictionary dictionary];
    layoutSearchCountForRootIndexMap = v11->_layoutSearchCountForRootIndexMap;
    v11->_layoutSearchCountForRootIndexMap = v14;

    objc_storeWeak(&v11->_findReplaceDelegate, v9);
    v11->_modelSearchesRunSynchronously = a5;
  }

  return v11;
}

- (void)setSearchProgressBlock:(id)a3
{
  v6 = a3;
  v4 = [(CRLModelSearchController *)self progressBlock];

  if (v4 != v6)
  {
    [(CRLModelSearchController *)self stopCountingHits];
    [(CRLModelSearchController *)self setProgressBlock:v6];
    v5 = [(CRLModelSearchController *)self progressBlock];

    if (v5)
    {
      [(CRLModelSearchController *)self startCountingHits];
    }
  }
}

- (unint64_t)searchResultsCount
{
  v3 = [(CRLModelSearchController *)self layoutSearchResults];
  v4 = [v3 count];

  result = [(CRLModelSearchController *)self currentSearchResultsCount];
  if (v4 > result)
  {
    return v4;
  }

  return result;
}

- (_TtC8Freeform8CRLBoard)board
{
  v2 = [(CRLModelSearchController *)self editingCoordinator];
  v3 = [v2 mainBoard];

  return v3;
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

  v6 = [(CRLModelSearchController *)self modelSearchesRunSynchronously];
  v7 = [(CRLModelSearchController *)self currentModelEnumerator];
  if (v7)
  {
    v8 = v7;
    v9 = [(CRLModelSearchController *)self searchCriteriaIsValid];

    if (v9)
    {
      while (1)
      {
        v10 = [(CRLModelSearchController *)self currentSearchable];

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v12 = [(CRLModelSearchController *)self currentModelEnumerator];
          v13 = [v12 nextObject];

          v11 = v13 == 0;
          if (v13)
          {
            v20 = sub_1003035DC(v13, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLSearchable);
            [(CRLModelSearchController *)self setCurrentSearchable:v20];

            [(CRLModelSearchController *)self currentSearchable];
          }
        }

        v21 = [(CRLModelSearchController *)self currentSearchable];

        if (v21)
        {
          v22 = [(CRLModelSearchController *)self currentSearch];

          if (v22)
          {
            [(CRLModelSearchController *)self continueSearch];
          }

          else if ([(CRLModelSearchController *)self respondsToSearch])
          {
            v23 = [(CRLModelSearchController *)self getNextSearchFromCurrentSearchable];
            [(CRLModelSearchController *)self setCurrentSearch:v23];
          }

          v24 = [(CRLModelSearchController *)self currentSearch];
          if (v24)
          {
            v25 = v24;
            v26 = [(CRLModelSearchController *)self currentSearch];
            v27 = [v26 isComplete];

            if (v27)
            {
              [(CRLModelSearchController *)self setCurrentSearch:0];
            }
          }

          v28 = [(CRLModelSearchController *)self currentSearch];

          if (!v28)
          {
            [(CRLModelSearchController *)self setCurrentSearchable:0];
          }
        }

        v29 = [(CRLModelSearchController *)self progressBlock];
        if (v29)
        {

          if (v11 | v6 ^ 1u)
          {
            v30 = [(CRLModelSearchController *)self progressBlock];
            v30[2](v30, [(CRLModelSearchController *)self currentSearchResultsCount], v11);
          }
        }

        if (v11)
        {
          break;
        }

        if ((v6 & 1) == 0)
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
  v2 = [(CRLModelSearchController *)self board];
  v3 = [v2 modelEnumeratorWithFlags:1];

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
  v6 = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = [v6 modelEnumeratorForSearchWithFlags:1];
  [(CRLModelSearchController *)self setCurrentModelEnumerator:v7];

  [(CRLModelSearchController *)self setCurrentSearchResultsCount:0];
  [(CRLModelSearchController *)self setCurrentSearchStartTime:CFAbsoluteTimeGetCurrent()];
  v8 = [(CRLModelSearchController *)self currentModelEnumerator];

  if (v8)
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

+ (void)assertSearchTargetImplementsProperMethods:(id)a3
{
  v3 = a3;
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
      sub_10136401C(v3, v4, v5);
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
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:229 isFatal:0 description:"Search target %@ does not respond to one of the necessary protocol methods.", v3];
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

  v6 = [(CRLModelSearchController *)self layoutSearchResults];
  [v6 removeAllObjects];

  [(CRLModelSearchController *)self setCurrentRootSearchTargetRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(CRLModelSearchController *)self setPrimaryFindResultSearchReference:0];
  [(CRLModelSearchController *)self stopCountingHits];
  v7 = [(CRLModelSearchController *)self progressBlock];
  if (v7)
  {
    v8 = v7;
    v9 = [(CRLModelSearchController *)self searchCriteriaIsValid];

    if (v9)
    {
      [(CRLModelSearchController *)self startCountingHits];
    }
  }
}

- (void)invalidateSearchResultsCountPerRootIndexForRange:(_NSRange)a3
{
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL || a3.length != 0)
  {
    length = a3.length;
    location = a3.location;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
    v8 = [v7 allKeys];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 intValue];
          if (v14 >= location && v14 - location < length)
          {
            v16 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
            [v16 removeObjectForKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (unint64_t)findResultIndex
{
  v3 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
  v4 = [(CRLModelSearchController *)self indexOfVisibleSearchReference:v3];

  return v4;
}

- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)asyncPerformSearchWithSearchTarget:(id)a3 resultsArray:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

- (unint64_t)_layoutSearchResultsIndexAtOrBeforeSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CRLModelSearchController *)self layoutSearchResults];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    v12 = v10 - 1;
    while (1)
    {
      v13 = (a4 ? v12 : v11);
      v14 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [objc_opt_class() compareSearchReference:v8 toSearchReference:v15];
      if (!v16)
      {
        break;
      }

      if (!a4 && v16 == 1 || a4 == 1 && v16 == -1)
      {
        if (!a5)
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

    if (!a5)
    {
      goto LABEL_18;
    }

    v17 = 1;
LABEL_17:
    *a5 = v17;
LABEL_18:
  }

  else
  {
LABEL_12:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (unint64_t)_layoutSearchResultsIndexAtOrAfterSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CRLModelSearchController *)self layoutSearchResults];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    v12 = v10 - 1;
    while (1)
    {
      v13 = (a4 ? v12 : v11);
      v14 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [objc_opt_class() compareSearchReference:v8 toSearchReference:v15];
      if (!v16)
      {
        break;
      }

      if (!a4 && v16 == -1 || a4 == 1 && v16 == 1)
      {
        if (!a5)
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

    if (!a5)
    {
      goto LABEL_18;
    }

    v17 = 1;
LABEL_17:
    *a5 = v17;
LABEL_18:
  }

  else
  {
LABEL_12:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (location != [(CRLModelSearchController *)self currentRootSearchTargetRange]|| length != v8)
  {
    v34 = v7;
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
        v17 = [(CRLModelSearchController *)self findReplaceDelegate];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1003B9F90;
        v40[3] = &unk_10185CA10;
        v40[4] = self;
        v18 = v16;
        v41 = v18;
        [v17 withRootSearchTargetAtIndex:location executeBlock:v40];

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
        v29 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
        [v29 setObject:v28 forKey:v27];

        ++location;
      }

      while (location != v35);
    }

    v7 = v34;
    [v34 removeAllObjects];
    v32 = [v9 allObjects];
    [v34 addObjectsFromArray:v32];

    [(CRLModelSearchController *)self sortLayoutSearchResultsArray:v34];
  }
}

- (void)p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4 completionBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  if (location == [(CRLModelSearchController *)self currentRootSearchTargetRange]&& length == v11)
  {
    v10[2](v10);
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
    v17 = [(CRLModelSearchController *)self findReplaceDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003BA2A8;
    v20[3] = &unk_10185CAA0;
    v20[4] = self;
    v21 = v16;
    v25 = location;
    v26 = length;
    v22 = v9;
    v23 = v12;
    v24 = v10;
    v18 = v12;
    v19 = v16;
    [v17 withRootSearchTargetAtIndex:0 executeBlock:v20];
  }
}

- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4
{
  v7 = [(CRLModelSearchController *)self findReplaceDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRLModelSearchController *)self findReplaceDelegate];
    v10 = [v9 nextRootSearchTargetIndexFromIndex:a3 forString:0 options:1 inDirection:a4];
  }

  else
  {
    v10 = [(CRLModelSearchController *)self nextRootSearchTargetIndexFromIndex:a3 forString:0 options:1 inDirection:a4];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(CRLModelSearchController *)self findReplaceDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CRLModelSearchController *)self findReplaceDelegate];
      v10 = [v13 nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:0 options:1 inDirection:a4];
    }

    else
    {
      v10 = [(CRLModelSearchController *)self nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:0 options:1 inDirection:a4];
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

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6
{
  v9 = a4;
  if (a6 == 1)
  {
    if (a3)
    {
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [(CRLModelSearchController *)self findReplaceDelegate];
        a3 = [v10 rootSearchTargetCountThroughIndex:0x7FFFFFFFFFFFFFFFLL] - 1;
      }

      else
      {
        --a3;
      }
    }

    else
    {
      a3 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (!a6)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = 0;
    }

    else
    {
      v11 = [(CRLModelSearchController *)self findReplaceDelegate];
      v12 = [v11 rootSearchTargetCountThroughIndex:a3] - 1;

      if (v12 > a3)
      {
        ++a3;
      }

      else
      {
        a3 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return a3;
}

- (unint64_t)_layoutSearchResultsIndexNearestToSearchReference:(id)a3 inDirection:(unint64_t)a4 isOrdredSame:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v11 = v10;
  [v8 searchReferencePoint];
  v13 = v12;
  v15 = v14;
  v16 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v18 = v17 - 1;
  if (a4)
  {
    v18 = 0;
  }

  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 != INFINITY && v15 != INFINITY && &v16[v18] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v11;
    v41 = v9;
    v20 = [NSMutableIndexSet indexSetWithIndex:?];
    for (i = 0; ; i |= v36)
    {
      v23 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      v24 = a4 ? 0 : v22 - 1;
      v25 = (i & 1) != 0 ? [(CRLModelSearchController *)self _layoutSearchResultsIndexAtOrBeforeSearchReference:v8 inDirection:a4 isOrdredSame:a5]: [(CRLModelSearchController *)self _layoutSearchResultsIndexAtOrAfterSearchReference:v8 inDirection:a4 isOrdredSame:a5];
      v19 = v25;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (!-[CRLModelSearchController _nextSearchTargetWithMatchInDirection:](self, "_nextSearchTargetWithMatchInDirection:", a4) || (v26 = -[CRLModelSearchController currentRootSearchTargetRange](self, "currentRootSearchTargetRange"), ([v20 containsIndexesInRange:{v26, v27}] & 1) != 0))
      {
        v38 = [(CRLModelSearchController *)self layoutSearchResults];
        [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v41 resultsArray:v40, v38];

        break;
      }

      v28 = &v23[v24];
      v29 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      [v20 addIndexesInRange:{v29, v30}];
      v31 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
      v33 = v32 - 1;
      if (a4)
      {
        v33 = 0;
      }

      v34 = &v31[v33];
      v35 = v34 > v28;
      v36 = v34 < v28;
      v37 = v35;
      if (a4)
      {
        v36 = v37;
      }
    }
  }

  return v19;
}

- (BOOL)_nextSearchTargetWithMatchInDirection:(unint64_t)a3
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

  v10 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v12 = v11 - 1;
  if (a3)
  {
    v12 = 0;
  }

  if (&v10[v12] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v14 = [NSMutableIndexSet indexSetWithIndex:?];
  *&v15 = 67109378;
  v41 = v15;
  while (1)
  {
    v16 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    v18 = v17 - 1;
    if (a3)
    {
      v18 = 0;
    }

    v19 = [(CRLModelSearchController *)self nextRootSearchTargetFromIndex:&v16[v18] inDirection:a3];
    v20 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (v19 < v20 || v19 - v20 >= v21)
    {
      v23 = [(CRLModelSearchController *)self layoutSearchResults];
      [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v19 resultsArray:1, v23];
    }

    v24 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (v19 < v24 || v19 - v24 >= v25)
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

    v32 = [(CRLModelSearchController *)self layoutSearchResults];
    v33 = [v32 count];
    v13 = v33 != 0;

    if (v33)
    {
      break;
    }

    v34 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if ([v14 containsIndexesInRange:{v34, v35}])
    {
      break;
    }

    v36 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    [v14 addIndexesInRange:{v36, v37}];
  }

  return v13;
}

- (id)_firstResultInDirection:(unint64_t)a3
{
  v5 = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CRLModelSearchController *)self layoutSearchResults];
    v8 = v7;
    if (a3)
    {
      [v7 lastObject];
    }

    else
    {
      [v7 objectAtIndex:0];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_lastResultInDirection:(unint64_t)a3
{
  v5 = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CRLModelSearchController *)self layoutSearchResults];
    v8 = v7;
    if (a3)
    {
      [v7 objectAtIndex:0];
    }

    else
    {
      [v7 lastObject];
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
    v9 = [(CRLModelSearchController *)self findReplaceDelegate];
    v5 = [v9 visibleRootIndexRange];
    v7 = v6;
    v8 = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v5 resultsArray:v7, v8];
  }
}

- (void)asyncBuildSearchResultsIfNecessaryWithCompletionBlock:(id)a3
{
  v11 = a3;
  if ([(CRLModelSearchController *)self currentRootSearchTargetRange]== 0x7FFFFFFFFFFFFFFFLL && v4 == 0)
  {
    v6 = [(CRLModelSearchController *)self findReplaceDelegate];
    v7 = [v6 visibleRootIndexRange];
    v9 = v8;
    v10 = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:v7 resultsArray:v9 completionBlock:v10, v11];
  }

  else
  {
    v11[2]();
  }
}

- (void)buildVisibleSearchResultsIfNecessary
{
  v3 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v5 = v4;
  v6 = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = [v6 visibleRootIndexRange];
  v9 = v8;

  if (v3 != v7 || v5 != v9)
  {
    v14 = [(CRLModelSearchController *)self findReplaceDelegate];
    v10 = [v14 visibleRootIndexRange];
    v12 = v11;
    v13 = [(CRLModelSearchController *)self layoutSearchResults];
    [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v10 resultsArray:v12, v13];
  }
}

- (id)firstVisibleResultInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1003BB598;
  v19 = sub_1003BB5A8;
  v20 = 0;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(CRLModelSearchController *)self findReplaceDelegate];
  v10 = [v9 visibleRootIndexRange];
  [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v10 resultsArray:v11, v8];

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

- (unint64_t)indexOfVisibleSearchReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0)
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
      v8 = v5;
      v9 = [(CRLModelSearchController *)self layoutSearchResults];
      v10 = [v9 indexOfObject:v4];

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

- (unint64_t)_resultCountInRootObjectRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLModelSearchController *)self currentRootSearchTargetRange];
  v24 = v7;
  v25 = v6;
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
      v11 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
      v12 = [v11 objectForKey:v10];

      if (!v12)
      {
        [(CRLModelSearchController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:location resultsArray:1, v26];
      }

      v13 = [(CRLModelSearchController *)self layoutSearchCountForRootIndexMap];
      v14 = [v13 objectForKey:v10];

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

- (unint64_t)layoutSearchResultsIndexOfSearchReference:(id)a3
{
  v4 = a3;
  v5 = [(CRLModelSearchController *)self layoutSearchResults];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)p_searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4
{
  v6 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1003BB598;
  v42 = sub_1003BB5A8;
  v43 = 0;
  if (!v6)
  {
    v13 = [(CRLModelSearchController *)self layoutSearchResults];
    v14 = [v13 count];

    if (!v14)
    {
      [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:a4];
    }

    v12 = [(CRLModelSearchController *)self _firstResultInDirection:a4];
    goto LABEL_17;
  }

  v37 = 0;
  v7 = [(CRLModelSearchController *)self layoutSearchResultsIndexOfSearchReference:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    if (a4)
    {
      v15 = 0;
    }

    else
    {
      v16 = [(CRLModelSearchController *)self layoutSearchResults];
      v15 = [v16 count] - 1;
    }

    if (v7 != v15)
    {
      v18 = [(CRLModelSearchController *)self layoutSearchResults];
      v19 = v18;
      if (a4)
      {
        v20 = v7 - 1;
      }

      else
      {
        v20 = v7 + 1;
      }

      v21 = [v18 objectAtIndex:v20];
      v22 = v39[5];
      v39[5] = v21;

      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v7 = [(CRLModelSearchController *)self _layoutSearchResultsIndexNearestToSearchReference:v6 inDirection:a4 isOrdredSame:&v37];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v37 & 1) == 0)
    {
      v23 = [(CRLModelSearchController *)self layoutSearchResults];
      v24 = [v23 objectAtIndex:v7];
      v25 = v39[5];
      v39[5] = v24;

      goto LABEL_27;
    }

    goto LABEL_12;
  }

  v8 = [(CRLModelSearchController *)self layoutSearchResults];
  v9 = [v8 count];

  if (!v9)
  {
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:a4];
  }

  v10 = objc_opt_class();
  v11 = [(CRLModelSearchController *)self _firstResultInDirection:a4];
  LODWORD(v10) = [v10 searchReference:v6 isBeforeSearchReference:v11 inDirection:a4];

  if (v10)
  {
    v12 = [(CRLModelSearchController *)self _firstResultInDirection:a4];
LABEL_17:
    v17 = v39[5];
    v39[5] = v12;

    goto LABEL_27;
  }

  v26 = objc_opt_class();
  v27 = [(CRLModelSearchController *)self _lastResultInDirection:a4];
  LODWORD(v26) = [v26 searchReference:v6 isAfterSearchReference:v27 inDirection:a4];

  if (v26)
  {
LABEL_16:
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:a4];
    v12 = [(CRLModelSearchController *)self _firstResultInDirection:a4];
    goto LABEL_17;
  }

  v28 = [(CRLModelSearchController *)self layoutSearchResults];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1003BC1FC;
  v33[3] = &unk_10185CC70;
  v33[4] = self;
  v34 = v6;
  v35 = &v38;
  v36 = a4;
  [v28 enumerateObjectsWithOptions:2 * (a4 != 0) usingBlock:v33];

  if (!v39[5])
  {
    [(CRLModelSearchController *)self _nextSearchTargetWithMatchInDirection:a4];
    v29 = [(CRLModelSearchController *)self _firstResultInDirection:a4];
    v30 = v39[5];
    v39[5] = v29;
  }

LABEL_27:
  v31 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v31;
}

- (void)asyncSearchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4 completionBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003BC34C;
  v9[3] = &unk_10185CC98;
  v10 = self;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v7 = v12;
  v8 = v11;
  [(CRLModelSearchController *)v10 asyncBuildSearchResultsIfNecessaryWithCompletionBlock:v9];
}

- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4
{
  v6 = a3;
  [(CRLModelSearchController *)self buildSearchResultsIfNecessary];
  v7 = [(CRLModelSearchController *)self p_searchReferenceAfterReference:v6 inDirection:a4];

  return v7;
}

+ (BOOL)p_searchReference:(id)a3 comparedWithSearchReference:(id)a4 inDirection:(unint64_t)a5 before:(BOOL)a6
{
  v6 = a6;
  v8 = [a1 compareSearchReference:a3 toSearchReference:a4];
  v9 = 1;
  if ((a5 == 0) == v6)
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