@interface BKWK2EpubSearchOperation
- (BOOL)_doSearch;
- (BOOL)_indexTextContent:(id)a3;
- (BOOL)_loadWebView;
- (BOOL)_startFindPerformIndexing:(BOOL)a3;
- (BOOL)_waitForFindSemaphore;
- (BOOL)_waitForLoadSemaphore;
- (id)webView;
- (void)_addResultsWithPhysicalPageHrefs:(id)a3 selectedRangeResult:(id)a4;
- (void)_configureWebView;
- (void)_didFinishConfiguringWebView;
- (void)_loadWebView:(id)a3 bookSnapshot:(id)a4 paginationOptions:(id)a5 stylesheetSet:(id)a6 cleanupOptions:(id)a7 cfiOptions:(id)a8 isConfigured:(BOOL)a9;
- (void)_loadWebViewFromMainThread;
- (void)_postSearch:(id)a3;
- (void)_startFind;
- (void)_startFindPerformIndexingFromMainThread:(BOOL)a3;
- (void)_startWebKitFind;
- (void)_webView:(id)a3 didCountMatches:(unint64_t)a4 forString:(id)a5;
- (void)_webView:(id)a3 didFailToFindString:(id)a4;
- (void)_webView:(id)a3 didFindMatches:(unint64_t)a4 forString:(id)a5 withMatchIndex:(int64_t)a6;
- (void)cancel;
- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4;
- (void)navigationHandler:(id)a3 failedToLoadURL:(id)a4 error:(id)a5;
- (void)navigationHandlerWebContentLoadFailed:(id)a3;
@end

@implementation BKWK2EpubSearchOperation

- (id)webView
{
  v2 = [(BKWK2EpubSearchOperation *)self loader];
  v3 = [v2 webView];

  return v3;
}

- (BOOL)_loadWebView
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_doSearch loading web view", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  [(BKWK2EpubSearchOperation *)self setLoadSemaphore:v4];

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E2830;
  block[3] = &unk_1E4920;
  objc_copyWeak(&v8, buf);
  dispatch_async(&_dispatch_main_q, block);
  v5 = [(BKWK2EpubSearchOperation *)self _waitForLoadSemaphore];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  return v5;
}

- (void)_loadWebViewFromMainThread
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    return;
  }

  v44 = [(BKSearchOperation *)self searchBook];
  v3 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v44 ordinal:[(BKSearchOperation *)self ordinal]];
  v4 = [v3 url];
  [(BKWK2EpubSearchOperation *)self setUrl:v4];

  v5 = [(BKSearchOperation *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    if ([v3 isFixedLayout])
    {
      [v3 fixedLayoutSize];
      v43 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v3 withConfiguration:0 contentLayoutSize:?];
      v11 = [v3 bookLanguage];
      v42 = [BEContentCleanupJSOptions fixedLayoutOptionsWithLanguage:v11];

      v12 = +[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:](ContentViewStyleManager, "getPictureBookUserStyleSheetWithLegacyBook:", [v44 shouldDisableOptimizeSpeed] ^ 1);
      v13 = [BEWebViewFactoryStylesheetSet alloc];
      v55 = v12;
      v14 = [NSArray arrayWithObjects:&v55 count:1];
      v10 = [v13 initWithAllFrameStylesheets:v14];
    }

    else
    {
      v15 = [(BKSearchOperation *)self delegate];
      v16 = [v15 configuration];

      [v16 contentLayoutSize];
      v43 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v3 withConfiguration:v16 contentLayoutSize:?];
      v42 = [BEContentCleanupJSOptions cleanupJSOptionsForBookInfoSnapshot:v3 withConfiguration:v16];
      [v16 contentLayoutSize];
      [v16 gutterWidth];
      v17 = objc_alloc_init(ContentViewStyleManagerBookInfo);
      -[ContentViewStyleManagerBookInfo setRespectImageSizeClassIsPrefix:](v17, "setRespectImageSizeClassIsPrefix:", [v3 respectImageSizeClassIsPrefix]);
      v18 = [v3 respectImageSizeClass];
      [(ContentViewStyleManagerBookInfo *)v17 setRespectImageSizeClass:v18];

      v19 = [v3 bookLanguage];
      [(ContentViewStyleManagerBookInfo *)v17 setLanguage:v19];

      [v16 contentLayoutSize];
      v20 = [ContentViewStyleManager getInlineStyleSheetForConfiguration:v16 bookInfo:v17 contentLayoutSize:1 webkit2:?];
      v21 = [BEWebViewFactoryStylesheetSet alloc];
      v54 = @"html { width: auto !important; height: auto !important; } body { overflow: hidden; } video { max-height: 95% !important; } div { max-width: 100%; }";
      v22 = [NSArray arrayWithObjects:&v54 count:1];
      if (v20)
      {
        v53 = v20;
        v23 = [NSArray arrayWithObjects:&v53 count:1];
        v10 = [v21 initWithMainframeOnlyStylesheets:v22 allFrameStylesheets:v23];
      }

      else
      {
        v10 = [v21 initWithMainframeOnlyStylesheets:v22 allFrameStylesheets:&__NSArray0__struct];
      }
    }

    goto LABEL_12;
  }

  v6 = [(BKSearchOperation *)self delegate];
  v7 = [v6 searchConfiguration];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(BKSearchOperation *)self delegate];
  v9 = [v8 searchConfiguration];

  v43 = [v9 paginationOptions];
  v42 = [v9 cleanupOptions];
  v10 = [v9 stylesheetSet];
  [v9 contentLayoutSize];

LABEL_12:
  v24 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:v3 ordinal:[(BKSearchOperation *)self ordinal]];
  if ([v3 isFixedLayout])
  {
    v25 = 4;
  }

  else
  {
    v25 = 1;
  }

  objc_initWeak(&location, self);
  v26 = [(BKSearchOperation *)self delegate];
  CGRectMakeWithSize();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [v3 cacheItem];
  v36 = [v44 styleManager];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_E2E80;
  v45[3] = &unk_1E5AA0;
  objc_copyWeak(&v51, &location);
  v37 = v3;
  v46 = v37;
  v38 = v43;
  v47 = v38;
  v39 = v10;
  v48 = v39;
  v40 = v42;
  v49 = v40;
  v41 = v24;
  v50 = v41;
  [v26 provideWebView:v35 protocolCacheItem:v38 paginationOptions:v40 cleanupOptions:v41 cfiOptions:v39 stylesheetSet:v36 styleManager:v28 contentSupportMode:v30 completion:{v32, v34, v25, v45}];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

- (void)_loadWebView:(id)a3 bookSnapshot:(id)a4 paginationOptions:(id)a5 stylesheetSet:(id)a6 cleanupOptions:(id)a7 cfiOptions:(id)a8 isConfigured:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    v21 = [v15 be_navigationHandler];
    [v21 setDelegate:self];

    [v15 _setFindDelegate:self];
    [v15 setAutoresizingMask:18];
    [v15 setOpaque:0];
    [v17 fontSize];
    [v15 _setTextZoomFactor:?];
    v22 = [[BKWK2WebViewLoader alloc] initWithPaginationOptions:v17 ordinal:[(BKSearchOperation *)self ordinal]];
    [(BKWK2EpubSearchOperation *)self setLoader:v22];

    v23 = [(BKWK2EpubSearchOperation *)self loader];
    [v23 setWebView:v15];

    if (a9)
    {
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v24 = [(BKSearchOperation *)self ordinal];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_E31C8;
      v35 = &unk_1E5AC8;
      objc_copyWeak(&v36, &location);
      v25 = [BKWK2LoaderContentInfoRequest contentInfoRequestWithPaginationOptions:v17 cleanupOptions:v19 cfiOptions:v20 ordinal:v24 stylesheetSet:v18 completion:&v32];
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:v25, v32, v33, v34, v35];

      v26 = [(BKWK2EpubSearchOperation *)self configureRequest];
      [v26 setRestoreFrame:0];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    v27 = [NSURLRequest alloc];
    v28 = [v16 url];
    v29 = [v27 initWithURL:v28];

    v30 = [(BKWK2EpubSearchOperation *)self webView];
    v31 = [v30 loadRequest:v29];
  }
}

- (void)_configureWebView
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    v4 = [(BKWK2EpubSearchOperation *)self configureRequest];
    if (v4)
    {
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:0];
      v3 = [(BKWK2EpubSearchOperation *)self loader];
      [v3 enqueueContentInfoRequest:v4];
    }

    else
    {
      [(BKWK2EpubSearchOperation *)self _didFinishConfiguringWebView];
    }
  }
}

- (BOOL)_waitForLoadSemaphore
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START _waitForLoadSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  v4 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  v5 = dispatch_semaphore_wait(v4, [(BKWK2EpubSearchOperation *)self _semaphoreWaitTime]);

  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BKSearchOperation *)self ordinal];
    *buf = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "FINISH _waitForLoadSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  if (v5 < 1)
  {
    return 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E3468;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return 1;
}

- (void)cancel
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = self;
    v11 = 1024;
    v12 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "cancel %x for ordinal: %d", buf, 0xEu);
  }

  v8.receiver = self;
  v8.super_class = BKWK2EpubSearchOperation;
  [(BKSearchOperation *)&v8 cancel];
  v4 = [(BKWK2EpubSearchOperation *)self loadSemaphore];

  if (v4)
  {
    v5 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
    dispatch_semaphore_signal(v5);
  }

  v6 = [(BKWK2EpubSearchOperation *)self findSemaphore];

  if (v6)
  {
    v7 = [(BKWK2EpubSearchOperation *)self findSemaphore];
    dispatch_semaphore_signal(v7);
  }
}

- (void)_postSearch:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2EpubSearchOperation *)self webView];
  v6 = [v5 be_navigationHandler];

  v7 = [v6 delegate];

  if (v7 == self)
  {
    [v6 setDelegate:0];
  }

  [(BKWK2EpubSearchOperation *)self setLoader:0];
  v8.receiver = self;
  v8.super_class = BKWK2EpubSearchOperation;
  [(BKSearchOperation *)&v8 _postSearch:v4];
}

- (BOOL)_startFindPerformIndexing:(BOOL)a3
{
  v5 = dispatch_semaphore_create(0);
  [(BKWK2EpubSearchOperation *)self setFindSemaphore:v5];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E3858;
  block[3] = &unk_1E5AF0;
  objc_copyWeak(&v9, &location);
  v10 = a3;
  dispatch_async(&_dispatch_main_q, block);
  v6 = [(BKWK2EpubSearchOperation *)self _waitForFindSemaphore];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v6;
}

- (void)_startFindPerformIndexingFromMainThread:(BOOL)a3
{
  v3 = a3;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    if (v3)
    {
      v5 = _AESearchLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = [(BKSearchOperation *)self ordinal];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_doSearch index does not contain text unit for ordinal %lu", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v6 = [(BKWK2EpubSearchOperation *)self webView];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E3A5C;
      v7[3] = &unk_1E5B18;
      objc_copyWeak(&v8, buf);
      [v6 _getContentsAsStringWithCompletionHandler:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }

    else
    {

      [(BKWK2EpubSearchOperation *)self _startFind];
    }
  }
}

- (BOOL)_indexTextContent:(id)a3
{
  v4 = a3;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    v5 = 0;
  }

  else if ([v4 length])
  {
    v6 = _AESearchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = [(BKSearchOperation *)self ordinal];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_doSearch indexing textContent for ordinal %lu", buf, 0xCu);
    }

    v7 = [(BKWK2EpubSearchOperation *)self baseURL];
    v8 = [v7 absoluteString];
    v9 = [v8 lastPathComponent];
    v10 = [BKTextIndex bookIndexWithName:v9];

    if (v10)
    {
      v5 = 1;
      [v10 indexTextUnit:v4 withOrdinal:-[BKSearchOperation ordinal](self indexSynchronously:{"ordinal"), 1}];
      v11 = [(BKSearchOperation *)self searchString];
      v12 = [v10 queryForString:v11 maxOrdinal:-1];

      if (v12)
      {
        v16 = 0;
        if (([v12 isCandidateOrdinal:-[BKSearchOperation ordinal](self isMissing:{"ordinal"), &v16}] & 1) == 0 && (v16 & 1) == 0)
        {
          v13 = _AESearchLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(BKSearchOperation *)self ordinal];
            *buf = 134217984;
            v18 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "_doSearch contains a hit for ordinal %lu", buf, 0xCu);
          }

          v5 = 0;
        }
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_waitForFindSemaphore
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START _waitForFindSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  v4 = [(BKWK2EpubSearchOperation *)self findSemaphore];
  v5 = dispatch_semaphore_wait(v4, [(BKWK2EpubSearchOperation *)self _semaphoreWaitTime]);

  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BKSearchOperation *)self ordinal];
    *buf = 67109376;
    v11 = self;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "FINISH _waitForFindSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  if (v5 < 1)
  {
    return 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E3EEC;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return 1;
}

- (void)_startFind
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [(BKSearchOperation *)self lastSavedSearchResult];

    if (v3)
    {
      objc_opt_class();
      v4 = [(BKSearchOperation *)self lastSavedSearchResult];
      v5 = BUDynamicCast();

      objc_opt_class();
      v6 = [v5 location];
      v7 = BUDynamicCast();

      if (v7)
      {
        v8 = _AESearchLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 cfiString];
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Resuming previous search at location: %@", buf, 0xCu);
        }

        v10 = [v7 cfiString];
        v11 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.setSelectedRange('%@')", v10];;

        objc_initWeak(buf, self);
        v12 = [(BKWK2EpubSearchOperation *)self webView];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_E4284;
        v13[3] = &unk_1E36A8;
        objc_copyWeak(&v14, buf);
        [v12 evaluateJavaScript:v11 completionHandler:v13];

        objc_destroyWeak(&v14);
        objc_destroyWeak(buf);
      }
    }

    else
    {

      [(BKWK2EpubSearchOperation *)self _startWebKitFind];
    }
  }
}

- (void)_startWebKitFind
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    v4 = [(BKWK2EpubSearchOperation *)self webView];
    v3 = [(BKSearchOperation *)self searchString];
    [v4 _findString:v3 options:513 maxCount:1000];
  }
}

- (BOOL)_doSearch
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_doSearch for ordinal %lu", buf, 0xCu);
  }

  v4 = [(BKWK2EpubSearchOperation *)self baseURL];
  v5 = [v4 absoluteString];
  v6 = [v5 lastPathComponent];
  v7 = [BKTextIndex bookIndexWithName:v6];

  v8 = [v7 containsTextUnitWithOrdinal:{-[BKSearchOperation ordinal](self, "ordinal")}];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = _AESearchLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(BKSearchOperation *)self ordinal];
      *buf = 134217984;
      v26 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "_doSearch index contains text unit for ordinal %lu", buf, 0xCu);
    }

    v12 = [(BKSearchOperation *)self searchString];
    v13 = [v7 queryForString:v12 maxOrdinal:-1];

    v24 = 0;
    if (([v13 isCandidateOrdinal:-[BKSearchOperation ordinal](self isMissing:{"ordinal"), &v24}] & 1) == 0 && (v24 & 1) == 0)
    {
      self->super._isDone = 1;
      v21 = _AESearchLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(BKSearchOperation *)self ordinal];
        *buf = 134217984;
        v26 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "_doSearch index query contains search string.  Search done for ordinal %lu", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_23;
    }

    v14 = _AESearchLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(BKSearchOperation *)self ordinal];
      *buf = 134217984;
      v26 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "_doSearch index query does not contain search string for ordinal %lu", buf, 0xCu);
    }
  }

  v16 = [(BKWK2EpubSearchOperation *)self webView];

  if (v16)
  {
    v17 = _AESearchLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(BKSearchOperation *)self startSearchFromIndex];
      *buf = 134217984;
      v26 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "_doSearch already have a web view.  Continuing search from index %lu", buf, 0xCu);
    }
  }

  else if ([(BKWK2EpubSearchOperation *)self _loadWebView])
  {
    v19 = 1;
    self->super._isDone = 1;
    goto LABEL_23;
  }

  if ([(BKWK2EpubSearchOperation *)self contentProcessDidTerminate]|| ![(BKWK2EpubSearchOperation *)self successfulLoad]|| [(BKWK2EpubSearchOperation *)self isCancelled])
  {
    self->super._isDone = 1;
  }

  else
  {
    v23 = [(BKWK2EpubSearchOperation *)self _startFindPerformIndexing:(v7 != 0) & (v9 ^ 1)];
    v19 = 1;
    self->super._isDone = 1;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  v19 = [(BKWK2EpubSearchOperation *)self contentProcessDidTerminate];
LABEL_23:

  return v19;
}

- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4
{
  v5 = a4;
  v6 = [(BKWK2EpubSearchOperation *)self url];
  v7 = [v5 be_isEquivalentToURL:v6 ignoringFragment:1];

  v8 = _AESearchLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = [(BKSearchOperation *)self ordinal];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "didFinishLoadOfURL for ordinal %lu", &v10, 0xCu);
    }

    [(BKWK2EpubSearchOperation *)self _configureWebView];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "loaded non main url - didFinishLoadOfURL: %@", &v10, 0xCu);
    }
  }
}

- (void)_didFinishConfiguringWebView
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_didFinishConfiguringWebView for ordinal %d", v5, 8u);
  }

  [(BKWK2EpubSearchOperation *)self setSuccessfulLoad:1];
  v4 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  dispatch_semaphore_signal(v4);
}

- (void)navigationHandler:(id)a3 failedToLoadURL:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(BKWK2EpubSearchOperation *)self url];
  v8 = [v6 be_isEquivalentToURL:v7 ignoringFragment:1];

  v9 = _AESearchLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "failedToLoadURL: %@", &v11, 0xCu);
    }

    [(BKWK2EpubSearchOperation *)self setSuccessfulLoad:0];
    v10 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
    dispatch_semaphore_signal(v10);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "loaded non main url - failedToLoadURL: %@", &v11, 0xCu);
  }
}

- (void)navigationHandlerWebContentLoadFailed:(id)a3
{
  v4 = _AESearchLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "navigationHandlerWebContentLoadFailed for ordinal %lu", &v7, 0xCu);
  }

  [(BKWK2EpubSearchOperation *)self setContentProcessDidTerminate:1];
  v5 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  dispatch_semaphore_signal(v5);

  v6 = [(BKWK2EpubSearchOperation *)self findSemaphore];
  dispatch_semaphore_signal(v6);
}

- (void)_webView:(id)a3 didCountMatches:(unint64_t)a4 forString:(id)a5
{
  v7 = a5;
  v8 = _AESearchLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218498;
    v10 = a4;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "didCountMatches: %lu forString:%@ for ordinal %lu", &v9, 0x20u);
  }
}

- (void)_webView:(id)a3 didFindMatches:(unint64_t)a4 forString:(id)a5 withMatchIndex:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_14;
  }

  v12 = _AESearchLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v24 = a4;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = a6;
    v29 = 2048;
    v30 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "didFindMatches: %lu forString:%@ withMatchIndex: %lu for ordinal %lu", buf, 0x2Au);
  }

  if ([(BKSearchOperation *)self startSearchFromIndex]<= a6)
  {
    v14 = [(BKSearchOperation *)self searchBook];
    if ([v14 hasPhysicalPages])
    {
      v15 = [(BKWK2EpubSearchOperation *)self physicalPageMap];
      v16 = [v15 count] == 0;

      if (v16)
      {
        v17 = 0;
        goto LABEL_13;
      }

      v14 = [(BKWK2EpubSearchOperation *)self physicalPageMap];
      v17 = [v14 valueForKey:@"href"];
    }

    else
    {
      v17 = 0;
    }

LABEL_13:
    v18 = [BECFIUtilitiesJS getSelectedRangeScript:v17];
    objc_initWeak(buf, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_E4F8C;
    v20[3] = &unk_1E5B40;
    objc_copyWeak(&v22, buf);
    v19 = v17;
    v21 = v19;
    [v10 evaluateJavaScript:v18 completionHandler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);

    goto LABEL_14;
  }

  v13 = _AESearchLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = a6;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Skipping previously found result index %lu.", buf, 0xCu);
  }

  [(BKWK2EpubSearchOperation *)self _startWebKitFind];
LABEL_14:
}

- (void)_addResultsWithPhysicalPageHrefs:(id)a3 selectedRangeResult:(id)a4
{
  v51 = a3;
  v6 = a4;
  v7 = _AESearchLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "getSelectedRange result: %@", &buf, 0xCu);
  }

  if (v6)
  {
    v8 = +[NSNull null];
    v9 = v8 == v6;

    if (!v9)
    {
      v10 = sub_E5660(v6);
      v11 = +[BKSearchResult mutableSearchResult];
      v12 = [(BKSearchOperation *)self searchString];
      [v11 setSearchString:v12];

      [v11 setOrdinal:{-[BKSearchOperation ordinal](self, "ordinal")}];
      v50 = [v10 objectForKey:@"contextText"];
      if (v50)
      {
        v13 = sub_E5660(v50);
        objc_opt_class();
        v14 = [v13 objectForKey:@"context"];
        v15 = BUDynamicCast();
        [v11 setText:v15];

        objc_opt_class();
        v16 = [v13 objectForKey:@"offset"];
        v17 = BUDynamicCast();
        v18 = [v17 integerValue];

        v19 = [(BKSearchOperation *)self searchString];
        [v11 setSearchStringRange:{v18, objc_msgSend(v19, "length")}];
      }

      objc_opt_class();
      v20 = [v10 objectForKey:@"rects"];
      v49 = BUDynamicCast();

      *&buf = 0;
      *(&buf + 1) = &buf;
      v55 = 0x3032000000;
      v56 = sub_E56D0;
      v57 = sub_E56E0;
      v58 = objc_opt_new();
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_E56E8;
      v53[3] = &unk_1E5B68;
      v53[4] = &buf;
      [v49 enumerateObjectsUsingBlock:v53];
      v21 = [(BKSearchOperation *)self searchBook];
      if ([v21 isFixedLayout])
      {
      }

      else
      {
        v22 = [*(*(&buf + 1) + 40) count] == 0;

        if (!v22)
        {
          v23 = [*(*(&buf + 1) + 40) firstObject];
          [v23 rectValue];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v32 = [(BKWK2EpubSearchOperation *)self loader];
          v33 = [v32 pageOffsetRangeForRect:{v25, v27, v29, v31}];

          [v11 setPageOffset:v33];
        }
      }

      v34 = [v10 objectForKey:@"cfi"];
      v52 = 0;
      v35 = [[BKEpubCFILocation alloc] initWithCFI:v34 error:&v52];
      v36 = v52;
      [v11 setLocation:v35];

      v37 = *(*(&buf + 1) + 40);
      v38 = [v11 location];
      [v38 setSelectionRects:v37];

      if ([v51 count])
      {
        v39 = [v10 objectForKey:@"physicalPageHref"];
        if ([v39 length])
        {
          v40 = [v51 indexOfObject:v39];
          if (v40 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = [(BKWK2EpubSearchOperation *)self physicalPageMap];
            v42 = v40 < [v41 count];

            if (v42)
            {
              v43 = [(BKWK2EpubSearchOperation *)self physicalPageMap];
              v44 = [v43 objectAtIndexedSubscript:v40];

              v45 = [v44 valueForKey:@"name"];
              [v11 setPageTitle:v45];
            }
          }
        }
      }

      [(NSMutableArray *)self->super._results addObject:v11];
      [(BKSearchOperation *)self setStartSearchFromIndex:[(NSMutableArray *)self->super._results count]];
      objc_opt_class();
      v46 = BUDynamicCast();
      [(BKSearchOperation *)self setLastSavedSearchResult:v46];

      _Block_object_dispose(&buf, 8);
    }
  }

  if ([(NSMutableArray *)self->super._results count]< 0x64)
  {
    [(BKWK2EpubSearchOperation *)self _startWebKitFind];
  }

  else
  {
    v47 = _AESearchLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Found more than the max search results.  Stop for this operation.", &buf, 2u);
    }

    v48 = [(BKWK2EpubSearchOperation *)self findSemaphore];
    dispatch_semaphore_signal(v48);
  }
}

- (void)_webView:(id)a3 didFailToFindString:(id)a4
{
  v5 = a4;
  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "didFailToFindString: %@ for ordinal %lu", &v8, 0x16u);
  }

  v7 = [(BKWK2EpubSearchOperation *)self findSemaphore];
  dispatch_semaphore_signal(v7);
}

@end