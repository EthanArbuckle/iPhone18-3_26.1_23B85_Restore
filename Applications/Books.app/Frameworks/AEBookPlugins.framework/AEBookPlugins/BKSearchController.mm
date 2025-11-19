@interface BKSearchController
- (BESearchControllerDelegate)delegate;
- (BKSearchController)init;
- (BOOL)_isDocumentOrdinalSearchable:(int64_t)a3;
- (BOOL)_searchOnCandidateOrdinal:(int64_t)a3;
- (id)_newSearchOperationForOrdinal:(int64_t)a3;
- (id)_searchQueue;
- (void)_addResultsFromSearch:(id)a3;
- (void)_didFinishCreatingWebView:(id)a3 forTrackingID:(int64_t)a4 completion:(id)a5;
- (void)_resultsChanged;
- (void)_scheduleSearchAfterDelay:(double)a3 reportAnalytics:(BOOL)a4;
- (void)_searchOnOrdinal:(int64_t)a3;
- (void)_startSearchNowWithReportAnalytics:(id)a3;
- (void)_unscheduleSearch;
- (void)beginSearchWithReportAnalytics:(BOOL)a3;
- (void)cancelSearch;
- (void)continueSearch;
- (void)dealloc;
- (void)endSearch;
- (void)loadMore;
- (void)pauseSearch;
- (void)provideWebView:(CGRect)a3 protocolCacheItem:(id)a4 paginationOptions:(id)a5 cleanupOptions:(id)a6 cfiOptions:(id)a7 stylesheetSet:(id)a8 styleManager:(id)a9 contentSupportMode:(unint64_t)a10 completion:(id)a11;
- (void)searchDidFinish:(id)a3;
- (void)searchHasPartialResults:(id)a3;
- (void)searchLimitHit:(id)a3;
- (void)setContentStyle:(id)a3 configuration:(id)a4;
- (void)setSearchBook:(id)a3;
- (void)setSearchString:(id)a3;
@end

@implementation BKSearchController

- (BKSearchController)init
{
  v8.receiver = self;
  v8.super_class = BKSearchController;
  v2 = [(BKSearchController *)&v8 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:100];
    results = v2->_results;
    v2->_results = v3;

    v5 = [[IMPerformSelectorProxy alloc] initWithTarget:v2];
    performSelectorProxy = v2->_performSelectorProxy;
    v2->_performSelectorProxy = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSOperationQueue *)self->_searchQueue cancelAllOperations];
  searchQueue = self->_searchQueue;
  self->_searchQueue = 0;

  [(IMPerformSelectorProxy *)self->_performSelectorProxy teardown];
  indexQueryResult = self->_indexQueryResult;
  self->_indexQueryResult = 0;

  v6.receiver = self;
  v6.super_class = BKSearchController;
  [(BKSearchController *)&v6 dealloc];
}

- (id)_searchQueue
{
  searchQueue = self->_searchQueue;
  if (!searchQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_searchQueue;
    self->_searchQueue = v4;

    [(NSOperationQueue *)self->_searchQueue setMaxConcurrentOperationCount:1];
    searchQueue = self->_searchQueue;
  }

  return searchQueue;
}

- (void)setSearchString:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  obj = [v4 stringByTrimmingCharactersInSet:v5];

  if (([(NSString *)self->_searchString isEqual:obj]& 1) == 0)
  {
    objc_storeStrong(&self->_searchString, obj);
    [(BKSearchController *)self setAborted:0];
    [(BKSearchController *)self setPartialResults:0];
    [(BKSearchController *)self setSearchCompleted:0];
    [(BKSearchController *)self cancelSearch];
    indexQueryResult = self->_indexQueryResult;
    self->_indexQueryResult = 0;

    if ([obj length] >= 3)
    {
      [(BKSearchController *)self _scheduleSearchAfterDelay:1 reportAnalytics:1.0];
    }
  }
}

- (void)setContentStyle:(id)a3 configuration:(id)a4
{
  v17 = a3;
  v7 = a4;
  v8 = [v17 isEqual:self->_style];
  if ((v8 & 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
  }

  v9 = [v7 copy];
  v10 = [v9 environment];
  [v10 unfreeze];

  v11 = [(BKSearchController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(BKSearchController *)self delegate];
    v14 = [v13 environmentOverrideViewForSearchController:self];

    if (v14)
    {
      v15 = [v9 environment];
      [v15 setView:v14];
    }
  }

  v16 = [v9 environment];
  [v16 freeze];

  if (![(BKFlowingBookLayoutConfiguration *)self->_configuration isEqual:v9])
  {
    [(BKSearchController *)self setConfiguration:v7];
    goto LABEL_11;
  }

  if ((v8 & 1) == 0)
  {
LABEL_11:
    [(BKSearchController *)self beginSearchWithReportAnalytics:1];
  }
}

- (void)setSearchBook:(id)a3
{
  v5 = a3;
  p_book = &self->_book;
  if (self->_book != v5)
  {
    v7 = v5;
    objc_storeStrong(p_book, a3);
    p_book = [(BKSearchController *)self setSearchString:0];
    v5 = v7;
  }

  _objc_release_x1(p_book, v5);
}

- (id)_newSearchOperationForOrdinal:(int64_t)a3
{
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- _newSearchOperationForOrdinal for ordinal: %ld", &v12, 0xCu);
  }

  v6 = [(AEBookInfo *)self->_book contentType];
  if (v6)
  {
    if (v6 != 2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = off_1E1300;
  }

  else
  {
    v7 = &off_1E1328;
  }

  v8 = objc_alloc_init(*v7);
LABEL_9:
  [v8 setDelegate:self];
  v9 = [(BKSearchController *)self searchString];
  [v8 setSearchString:v9];

  v10 = [(BKSearchController *)self searchBook];
  [v8 setSearchBook:v10];

  [v8 setTimeOut:0.0];
  [v8 setOrdinal:a3];
  return v8;
}

- (BOOL)_searchOnCandidateOrdinal:(int64_t)a3
{
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal ordinal: %ld", buf, 0xCu);
  }

  if (self->_indexQueryResult)
  {
    v6 = _AESearchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = a3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal _indexQueryResult available for ordinal: %ld", buf, 0xCu);
    }

    v15 = 0;
    v7 = [(BKSearchController *)self searchBook];
    v8 = [v7 readingDocumentCount];

    if (v8 > a3)
    {
      *&v9 = 134218498;
      v14 = v9;
      while (![(BKTextIndexQueryResult *)self->_indexQueryResult isCandidateOrdinal:a3 isMissing:&v15, v14]|| ![(BKSearchController *)self _isDocumentOrdinalSearchable:a3])
      {
        v10 = _AESearchLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [NSNumber numberWithBool:[(BKSearchController *)self _isDocumentOrdinalSearchable:a3]];
          v12 = [NSNumber numberWithBool:[(BKTextIndexQueryResult *)self->_indexQueryResult isCandidateOrdinal:a3 isMissing:&v15]];
          *buf = v14;
          v17 = a3;
          v18 = 2112;
          v19 = v11;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "-- _searchOnCandidateOrdinal skipping ordinal: %ld isDocumentSearchable: %@ isCandidateOrdinal: %@", buf, 0x20u);
        }

        ++a3;
        --self->_chaptersRemaining;
        if (v8 == a3)
        {
          return 0;
        }
      }
    }

    if (a3 >= v8)
    {
      return 0;
    }
  }

  [(BKSearchController *)self _searchOnOrdinal:a3];
  return 1;
}

- (BOOL)_isDocumentOrdinalSearchable:(int64_t)a3
{
  v4 = [(BKSearchController *)self searchBook];
  if ([v4 contentType])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 linearIndexForOrdinal:a3] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)_searchOnOrdinal:(int64_t)a3
{
  v5 = [(BKSearchController *)self searchBook];
  v6 = [v5 readingDocumentCount];

  if (v6 <= a3)
  {
    return;
  }

  v17 = [(BKSearchController *)self _newSearchOperationForOrdinal:a3];
  [v17 setStartSearchFromIndex:{-[BKSearchController startSearchIndex](self, "startSearchIndex")}];
  v7 = [(BKSearchController *)self lastSavedSearchResult];
  [v17 setLastSavedSearchResult:v7];

  v8 = [(AEBookInfo *)self->_book contentType];
  if (v8 == 2)
  {
    objc_opt_class();
    v9 = BUDynamicCast();
    if (v9)
    {
      [v9 setCurrentPageIndex:{-[BKSearchController startSearchIndex](self, "startSearchIndex")}];
      objc_opt_class();
      v11 = [(BKSearchController *)self lastSavedSearchResult];
      v14 = BUDynamicCast();
      [v9 setLastSavedSearchResult:v14];
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v8)
  {
    objc_opt_class();
    v9 = BUDynamicCast();
    if (v9)
    {
      v10 = [(BKSearchController *)self searchBook];
      v11 = [v10 documentWithOrdinal:a3];

      v12 = [(BKSearchController *)self searchBook];
      v13 = [v12 physicalPageMapForDocument:v11];
      [v9 setPhysicalPageMap:v13];

      v14 = [(BKSearchController *)self searchBook];
      v15 = [v14 baseURL];
      [v9 setBaseURL:v15];

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  v16 = [(BKSearchController *)self _searchQueue];
  [v16 addOperation:v17];
}

- (void)beginSearchWithReportAnalytics:(BOOL)a3
{
  v3 = a3;
  [(BKSearchController *)self cancelSearch];
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "beginSearchWithReportAnalytics - schedule search after 0", v6, 2u);
  }

  [(BKSearchController *)self _scheduleSearchAfterDelay:v3 reportAnalytics:0.0];
}

- (void)_unscheduleSearch
{
  v3 = [(BKSearchController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v3 selector:"_startSearchNowWithReportAnalytics:" object:&__kCFBooleanTrue];

  v4 = [(BKSearchController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v4 selector:"_startSearchNowWithReportAnalytics:" object:&__kCFBooleanFalse];
}

- (void)_scheduleSearchAfterDelay:(double)a3 reportAnalytics:(BOOL)a4
{
  v4 = a4;
  [(BKSearchController *)self _unscheduleSearch];
  v8 = [(BKSearchController *)self performSelectorProxy];
  v7 = [NSNumber numberWithBool:v4];
  [v8 performSelector:"_startSearchNowWithReportAnalytics:" withObject:v7 afterDelay:a3];
}

- (void)_startSearchNowWithReportAnalytics:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_searchString length]&& ![(BKSearchController *)self isSearching])
  {
    [(BKSearchController *)self cancelSearch];
    v5 = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
    [v5 unfreeze];

    v6 = [(BKSearchController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(BKSearchController *)self delegate];
      v9 = [v8 environmentOverrideViewForSearchController:self];

      if (v9)
      {
        v10 = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
        [v10 setView:v9];
      }
    }

    v11 = [(BKFlowingBookLayoutConfiguration *)self->_configuration environment];
    [v11 freeze];

    if (!self->_indexQueryResult)
    {
      v12 = [(AEBookInfo *)self->_book baseURL];
      v13 = [v12 absoluteString];
      v14 = [v13 lastPathComponent];
      v15 = [BKTextIndex bookIndexWithName:v14];

      searchString = self->_searchString;
      v17 = [(BKSearchController *)self searchBook];
      v18 = [v15 queryForString:searchString maxOrdinal:{objc_msgSend(v17, "readingDocumentCount")}];
      indexQueryResult = self->_indexQueryResult;
      self->_indexQueryResult = v18;

      if (!self->_indexQueryResult)
      {
        [(BKSearchController *)self endSearch];

        goto LABEL_15;
      }
    }

    self->_maxSearchResults = 100;
    [(BKSearchController *)self setStartSearchIndex:0];
    [(BKSearchController *)self setLastSavedSearchResult:0];
    v20 = [(BKSearchController *)self searchBook];
    self->_chaptersRemaining = [v20 readingDocumentCount];

    v21 = _AESearchLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      chaptersRemaining = self->_chaptersRemaining;
      v24 = 134217984;
      v25 = chaptersRemaining;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "-- _startSearchNowWithReportAnalytics _chaptersRemaining: %ld", &v24, 0xCu);
    }

    if ([(BKSearchController *)self contentIsPages])
    {
      self->_pagesRemaining = [(BKSearchController *)self pageCount];
    }

    [(BKSearchController *)self setSearching:1];
    v23 = [(BKSearchController *)self delegate];
    [v23 searchControllerWillBeginSearching:self reportAnalytics:{objc_msgSend(v4, "BOOLValue")}];

    [(BKSearchController *)self setAborted:0];
    [(BKSearchController *)self setPartialResults:0];
    [(BKSearchController *)self setSearchCompleted:0];
    [(BKSearchController *)self _searchOnCandidateOrdinal:0];
  }

LABEL_15:
}

- (void)cancelSearch
{
  v3 = [(BKSearchController *)self isSearching];
  [(BKSearchController *)self _unscheduleSearch];
  [(BKSearchController *)self setSearching:0];
  [(BKSearchController *)self setPartialResults:0];
  [(BKSearchController *)self setStartSearchIndex:0];
  [(BKSearchController *)self setLastSavedSearchResult:0];
  [(BKSearchController *)self setSearchCompleted:0];
  v4 = [(BKSearchController *)self _searchQueue];
  [v4 cancelAllOperations];

  [(BKSearchController *)self setWebView:0];
  [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
  if ([(NSMutableArray *)self->_results count])
  {
    [(NSMutableArray *)self->_results removeAllObjects];
    [(BKSearchController *)self _resultsChanged];
  }

  else if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [(BKSearchController *)self delegate];
  [v5 searchControllerDidFinishSearching:self];

LABEL_5:
  indexQueryResult = self->_indexQueryResult;
  self->_indexQueryResult = 0;
}

- (void)pauseSearch
{
  if ([(BKSearchController *)self isSearching])
  {
    [(BKSearchController *)self setSearching:0];
    [(BKSearchController *)self setPartialResults:1];
    v3 = [(BKSearchController *)self delegate];
    [v3 searchControllerResultsChanged:self];

    v4 = [(BKSearchController *)self delegate];
    [v4 searchControllerDidFinishSearching:self];

    v5 = [(AEBookInfo *)self->_book baseURL];
    v6 = [v5 absoluteString];
    v7 = [v6 lastPathComponent];
    v8 = [BKTextIndex bookIndexWithName:v7];

    [v8 save];
  }
}

- (void)continueSearch
{
  if (![(BKSearchController *)self isSearching])
  {
    v3 = [(BKSearchController *)self searchString];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [(BKSearchController *)self delegate];
      [v5 searchControllerWillBeginSearching:self reportAnalytics:1];

      [(BKSearchController *)self setAborted:0];
      [(BKSearchController *)self setPartialResults:0];
      [(BKSearchController *)self setSearchCompleted:0];
      [(BKSearchController *)self setSearching:1];
      v6 = [(BKSearchController *)self searchBook];
      v7 = [v6 readingDocumentCount];

      if (![(BKSearchController *)self _searchOnCandidateOrdinal:&v7[-self->_chaptersRemaining]])
      {

        [(BKSearchController *)self endSearch];
      }
    }
  }
}

- (void)endSearch
{
  [(BKSearchController *)self setSearching:0];
  [(BKSearchController *)self setSearchCompleted:1];
  v3 = [(BKSearchController *)self _searchQueue];
  [v3 cancelAllOperations];

  [(BKSearchController *)self setWebView:0];
  [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
  v4 = [(BKSearchController *)self delegate];
  [v4 searchControllerResultsChanged:self];

  v5 = [(BKSearchController *)self delegate];
  [v5 searchControllerDidFinishSearching:self];

  v6 = [(AEBookInfo *)self->_book baseURL];
  v7 = [v6 absoluteString];
  v8 = [v7 lastPathComponent];
  v9 = [BKTextIndex bookIndexWithName:v8];

  [v9 save];
}

- (void)loadMore
{
  if (![(BKSearchController *)self isSearching])
  {
    v3 = [(BKSearchController *)self searchString];
    v4 = [v3 length];

    if (v4)
    {
      self->_maxSearchResults += 100;

      [(BKSearchController *)self continueSearch];
    }
  }
}

- (void)_addResultsFromSearch:(id)a3
{
  v8 = a3;
  v4 = [v8 results];
  v5 = [v4 count];

  if (v5)
  {
    results = self->_results;
    v7 = [v8 results];
    [(NSMutableArray *)results addObjectsFromArray:v7];

    [(BKSearchController *)self _resultsChanged];
  }
}

- (void)_resultsChanged
{
  v3 = [(BKSearchController *)self delegate];
  [v3 searchControllerResultsChanged:self];
}

- (void)provideWebView:(CGRect)a3 protocolCacheItem:(id)a4 paginationOptions:(id)a5 cleanupOptions:(id)a6 cfiOptions:(id)a7 stylesheetSet:(id)a8 styleManager:(id)a9 contentSupportMode:(unint64_t)a10 completion:(id)a11
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a11;
  v28 = [(BKSearchController *)self webView];

  if (v28)
  {
    v29 = _AESearchLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(BKSearchController *)self webView];
      *buf = 138412290;
      v39 = v30;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Reusing web view %@", buf, 0xCu);
    }

    v31 = objc_retainBlock(v27);
    if (v31)
    {
      v32 = [(BKSearchController *)self webView];
      v31[2](v31, v32, 0);
    }
  }

  else
  {
    [(BKSearchController *)self setWebViewTrackingID:[(BKSearchController *)self webViewTrackingID]+ 1];
    v33 = [(BKSearchController *)self webViewTrackingID];
    v34 = _AESearchLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v39) = v33;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Creating web view for tracking ID: %d", buf, 8u);
    }

    objc_initWeak(buf, self);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_8F3C8;
    v35[3] = &unk_1E4E10;
    objc_copyWeak(v37, buf);
    v37[1] = v33;
    v36 = v27;
    [BEWebViewFactory viewConfiguredForSearch:v21 protocolCacheItem:v22 paginationOptions:v23 cleanupOptions:v24 cfiOptions:v25 stylesheetSet:v26 styleManager:x contentSupportMode:y completion:width, height, a10, v35];

    objc_destroyWeak(v37);
    objc_destroyWeak(buf);
  }
}

- (void)_didFinishCreatingWebView:(id)a3 forTrackingID:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _AESearchLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    v15 = a4;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished creating web view for tracking ID: %d", &v14, 8u);
  }

  if ([(BKSearchController *)self webViewTrackingID]== a4)
  {
    [(BKSearchController *)self setWebView:v8];
  }

  else
  {
    v11 = _AESearchLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BKSearchController *)self webViewTrackingID];
      v14 = 67109376;
      v15 = a4;
      v16 = 1024;
      v17 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Ignoring web view for old tracking ID: %d (currently: %d)", &v14, 0xEu);
    }
  }

  v13 = objc_retainBlock(v9);

  if (v13)
  {
    v13[2](v13, v8, 1);
  }
}

- (void)searchLimitHit:(id)a3
{
  v8 = a3;
  v4 = [(BKSearchController *)self delegate];
  [v4 searchControllerFinishedSearchingChapter:self];

  [(BKSearchController *)self _addResultsFromSearch:v8];
  v5 = [(BKSearchController *)self contentIsPages];
  v6 = [v8 startSearchFromIndex];
  if ((v5 & 1) == 0)
  {
    v6 = &v6[[(BKSearchController *)self startSearchIndex]];
  }

  [(BKSearchController *)self setStartSearchIndex:v6];
  v7 = [v8 lastSavedSearchResult];
  [(BKSearchController *)self setLastSavedSearchResult:v7];

  [(BKSearchController *)self pauseSearch];
}

- (void)searchHasPartialResults:(id)a3
{
  v9 = a3;
  v4 = [(BKSearchController *)self contentIsPages];
  v5 = v9;
  if (v4)
  {
    objc_opt_class();
    v6 = BUDynamicCast();
    v7 = [v6 remainingPages];
    if (self->_pagesRemaining != v7)
    {
      self->_pagesRemaining = v7;
      v8 = [(BKSearchController *)self delegate];
      [v8 searchControllerFinishedSearchingChapter:self];
    }

    v5 = v9;
  }

  [(BKSearchController *)self _addResultsFromSearch:v5];
  if ([(NSMutableArray *)self->_results count]>= self->_maxSearchResults)
  {
    [(BKSearchController *)self pauseSearch];
  }
}

- (void)searchDidFinish:(id)a3
{
  v4 = a3;
  --self->_chaptersRemaining;
  v5 = _AESearchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 ordinal];
    chaptersRemaining = self->_chaptersRemaining;
    *buf = 134218240;
    v21 = v6;
    v22 = 2048;
    v23 = chaptersRemaining;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "-- searchDidFinishfor ordinal: %ld  chaptersRemaining: %ld", buf, 0x16u);
  }

  v8 = [(BKSearchController *)self delegate];
  [v8 searchControllerFinishedSearchingChapter:self];

  [(BKSearchController *)self _addResultsFromSearch:v4];
  [(BKSearchController *)self setStartSearchIndex:0];
  [(BKSearchController *)self setLastSavedSearchResult:0];
  if ([(NSMutableArray *)self->_results count]< self->_maxSearchResults && [(BKSearchController *)self isSearching])
  {
    -[BKSearchController _searchOnCandidateOrdinal:](self, "_searchOnCandidateOrdinal:", [v4 ordinal] + 1);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(BKSearchController *)self _searchQueue];
    v10 = [v9 operations];

    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (![*(*(&v15 + 1) + 8 * v14) isDone])
          {

            goto LABEL_15;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [(BKSearchController *)self endSearch];
  }

  else
  {
    [(BKSearchController *)self pauseSearch];
  }

LABEL_15:
}

- (BESearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end