@interface BKWK2EpubSearchOperation
- (BOOL)_doSearch;
- (BOOL)_indexTextContent:(id)content;
- (BOOL)_loadWebView;
- (BOOL)_startFindPerformIndexing:(BOOL)indexing;
- (BOOL)_waitForFindSemaphore;
- (BOOL)_waitForLoadSemaphore;
- (id)webView;
- (void)_addResultsWithPhysicalPageHrefs:(id)hrefs selectedRangeResult:(id)result;
- (void)_configureWebView;
- (void)_didFinishConfiguringWebView;
- (void)_loadWebView:(id)view bookSnapshot:(id)snapshot paginationOptions:(id)options stylesheetSet:(id)set cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions isConfigured:(BOOL)configured;
- (void)_loadWebViewFromMainThread;
- (void)_postSearch:(id)search;
- (void)_startFind;
- (void)_startFindPerformIndexingFromMainThread:(BOOL)thread;
- (void)_startWebKitFind;
- (void)_webView:(id)view didCountMatches:(unint64_t)matches forString:(id)string;
- (void)_webView:(id)view didFailToFindString:(id)string;
- (void)_webView:(id)view didFindMatches:(unint64_t)matches forString:(id)string withMatchIndex:(int64_t)index;
- (void)cancel;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandler:(id)handler failedToLoadURL:(id)l error:(id)error;
- (void)navigationHandlerWebContentLoadFailed:(id)failed;
@end

@implementation BKWK2EpubSearchOperation

- (id)webView
{
  loader = [(BKWK2EpubSearchOperation *)self loader];
  webView = [loader webView];

  return webView;
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
  _waitForLoadSemaphore = [(BKWK2EpubSearchOperation *)self _waitForLoadSemaphore];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  return _waitForLoadSemaphore;
}

- (void)_loadWebViewFromMainThread
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    return;
  }

  searchBook = [(BKSearchOperation *)self searchBook];
  v3 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:searchBook ordinal:[(BKSearchOperation *)self ordinal]];
  v4 = [v3 url];
  [(BKWK2EpubSearchOperation *)self setUrl:v4];

  delegate = [(BKSearchOperation *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    if ([v3 isFixedLayout])
    {
      [v3 fixedLayoutSize];
      paginationOptions = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v3 withConfiguration:0 contentLayoutSize:?];
      bookLanguage = [v3 bookLanguage];
      cleanupOptions = [BEContentCleanupJSOptions fixedLayoutOptionsWithLanguage:bookLanguage];

      v12 = +[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:](ContentViewStyleManager, "getPictureBookUserStyleSheetWithLegacyBook:", [searchBook shouldDisableOptimizeSpeed] ^ 1);
      v13 = [BEWebViewFactoryStylesheetSet alloc];
      v55 = v12;
      v14 = [NSArray arrayWithObjects:&v55 count:1];
      stylesheetSet = [v13 initWithAllFrameStylesheets:v14];
    }

    else
    {
      delegate2 = [(BKSearchOperation *)self delegate];
      configuration = [delegate2 configuration];

      [configuration contentLayoutSize];
      paginationOptions = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v3 withConfiguration:configuration contentLayoutSize:?];
      cleanupOptions = [BEContentCleanupJSOptions cleanupJSOptionsForBookInfoSnapshot:v3 withConfiguration:configuration];
      [configuration contentLayoutSize];
      [configuration gutterWidth];
      v17 = objc_alloc_init(ContentViewStyleManagerBookInfo);
      -[ContentViewStyleManagerBookInfo setRespectImageSizeClassIsPrefix:](v17, "setRespectImageSizeClassIsPrefix:", [v3 respectImageSizeClassIsPrefix]);
      respectImageSizeClass = [v3 respectImageSizeClass];
      [(ContentViewStyleManagerBookInfo *)v17 setRespectImageSizeClass:respectImageSizeClass];

      bookLanguage2 = [v3 bookLanguage];
      [(ContentViewStyleManagerBookInfo *)v17 setLanguage:bookLanguage2];

      [configuration contentLayoutSize];
      v20 = [ContentViewStyleManager getInlineStyleSheetForConfiguration:configuration bookInfo:v17 contentLayoutSize:1 webkit2:?];
      v21 = [BEWebViewFactoryStylesheetSet alloc];
      v54 = @"html { width: auto !important; height: auto !important; } body { overflow: hidden; } video { max-height: 95% !important; } div { max-width: 100%; }";
      v22 = [NSArray arrayWithObjects:&v54 count:1];
      if (v20)
      {
        v53 = v20;
        v23 = [NSArray arrayWithObjects:&v53 count:1];
        stylesheetSet = [v21 initWithMainframeOnlyStylesheets:v22 allFrameStylesheets:v23];
      }

      else
      {
        stylesheetSet = [v21 initWithMainframeOnlyStylesheets:v22 allFrameStylesheets:&__NSArray0__struct];
      }
    }

    goto LABEL_12;
  }

  delegate3 = [(BKSearchOperation *)self delegate];
  searchConfiguration = [delegate3 searchConfiguration];

  if (!searchConfiguration)
  {
    goto LABEL_6;
  }

  delegate4 = [(BKSearchOperation *)self delegate];
  searchConfiguration2 = [delegate4 searchConfiguration];

  paginationOptions = [searchConfiguration2 paginationOptions];
  cleanupOptions = [searchConfiguration2 cleanupOptions];
  stylesheetSet = [searchConfiguration2 stylesheetSet];
  [searchConfiguration2 contentLayoutSize];

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
  delegate5 = [(BKSearchOperation *)self delegate];
  CGRectMakeWithSize();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  cacheItem = [v3 cacheItem];
  styleManager = [searchBook styleManager];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_E2E80;
  v45[3] = &unk_1E5AA0;
  objc_copyWeak(&v51, &location);
  v37 = v3;
  v46 = v37;
  v38 = paginationOptions;
  v47 = v38;
  v39 = stylesheetSet;
  v48 = v39;
  v40 = cleanupOptions;
  v49 = v40;
  v41 = v24;
  v50 = v41;
  [delegate5 provideWebView:cacheItem protocolCacheItem:v38 paginationOptions:v40 cleanupOptions:v41 cfiOptions:v39 stylesheetSet:styleManager styleManager:v28 contentSupportMode:v30 completion:{v32, v34, v25, v45}];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

- (void)_loadWebView:(id)view bookSnapshot:(id)snapshot paginationOptions:(id)options stylesheetSet:(id)set cleanupOptions:(id)cleanupOptions cfiOptions:(id)cfiOptions isConfigured:(BOOL)configured
{
  viewCopy = view;
  snapshotCopy = snapshot;
  optionsCopy = options;
  setCopy = set;
  cleanupOptionsCopy = cleanupOptions;
  cfiOptionsCopy = cfiOptions;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    be_navigationHandler = [viewCopy be_navigationHandler];
    [be_navigationHandler setDelegate:self];

    [viewCopy _setFindDelegate:self];
    [viewCopy setAutoresizingMask:18];
    [viewCopy setOpaque:0];
    [optionsCopy fontSize];
    [viewCopy _setTextZoomFactor:?];
    v22 = [[BKWK2WebViewLoader alloc] initWithPaginationOptions:optionsCopy ordinal:[(BKSearchOperation *)self ordinal]];
    [(BKWK2EpubSearchOperation *)self setLoader:v22];

    loader = [(BKWK2EpubSearchOperation *)self loader];
    [loader setWebView:viewCopy];

    if (configured)
    {
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:0];
    }

    else
    {
      objc_initWeak(&location, self);
      ordinal = [(BKSearchOperation *)self ordinal];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_E31C8;
      v35 = &unk_1E5AC8;
      objc_copyWeak(&v36, &location);
      v25 = [BKWK2LoaderContentInfoRequest contentInfoRequestWithPaginationOptions:optionsCopy cleanupOptions:cleanupOptionsCopy cfiOptions:cfiOptionsCopy ordinal:ordinal stylesheetSet:setCopy completion:&v32];
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:v25, v32, v33, v34, v35];

      configureRequest = [(BKWK2EpubSearchOperation *)self configureRequest];
      [configureRequest setRestoreFrame:0];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    v27 = [NSURLRequest alloc];
    v28 = [snapshotCopy url];
    v29 = [v27 initWithURL:v28];

    webView = [(BKWK2EpubSearchOperation *)self webView];
    v31 = [webView loadRequest:v29];
  }
}

- (void)_configureWebView
{
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    configureRequest = [(BKWK2EpubSearchOperation *)self configureRequest];
    if (configureRequest)
    {
      [(BKWK2EpubSearchOperation *)self setConfigureRequest:0];
      loader = [(BKWK2EpubSearchOperation *)self loader];
      [loader enqueueContentInfoRequest:configureRequest];
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
    selfCopy2 = self;
    v12 = 1024;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START _waitForLoadSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  loadSemaphore = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  v5 = dispatch_semaphore_wait(loadSemaphore, [(BKWK2EpubSearchOperation *)self _semaphoreWaitTime]);

  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ordinal2 = [(BKSearchOperation *)self ordinal];
    *buf = 67109376;
    selfCopy2 = self;
    v12 = 1024;
    ordinal = ordinal2;
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
    selfCopy = self;
    v11 = 1024;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "cancel %x for ordinal: %d", buf, 0xEu);
  }

  v8.receiver = self;
  v8.super_class = BKWK2EpubSearchOperation;
  [(BKSearchOperation *)&v8 cancel];
  loadSemaphore = [(BKWK2EpubSearchOperation *)self loadSemaphore];

  if (loadSemaphore)
  {
    loadSemaphore2 = [(BKWK2EpubSearchOperation *)self loadSemaphore];
    dispatch_semaphore_signal(loadSemaphore2);
  }

  findSemaphore = [(BKWK2EpubSearchOperation *)self findSemaphore];

  if (findSemaphore)
  {
    findSemaphore2 = [(BKWK2EpubSearchOperation *)self findSemaphore];
    dispatch_semaphore_signal(findSemaphore2);
  }
}

- (void)_postSearch:(id)search
{
  searchCopy = search;
  webView = [(BKWK2EpubSearchOperation *)self webView];
  be_navigationHandler = [webView be_navigationHandler];

  delegate = [be_navigationHandler delegate];

  if (delegate == self)
  {
    [be_navigationHandler setDelegate:0];
  }

  [(BKWK2EpubSearchOperation *)self setLoader:0];
  v8.receiver = self;
  v8.super_class = BKWK2EpubSearchOperation;
  [(BKSearchOperation *)&v8 _postSearch:searchCopy];
}

- (BOOL)_startFindPerformIndexing:(BOOL)indexing
{
  v5 = dispatch_semaphore_create(0);
  [(BKWK2EpubSearchOperation *)self setFindSemaphore:v5];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E3858;
  block[3] = &unk_1E5AF0;
  objc_copyWeak(&v9, &location);
  indexingCopy = indexing;
  dispatch_async(&_dispatch_main_q, block);
  _waitForFindSemaphore = [(BKWK2EpubSearchOperation *)self _waitForFindSemaphore];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return _waitForFindSemaphore;
}

- (void)_startFindPerformIndexingFromMainThread:(BOOL)thread
{
  threadCopy = thread;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) == 0)
  {
    if (threadCopy)
    {
      v5 = _AESearchLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        ordinal = [(BKSearchOperation *)self ordinal];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_doSearch index does not contain text unit for ordinal %lu", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      webView = [(BKWK2EpubSearchOperation *)self webView];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E3A5C;
      v7[3] = &unk_1E5B18;
      objc_copyWeak(&v8, buf);
      [webView _getContentsAsStringWithCompletionHandler:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }

    else
    {

      [(BKWK2EpubSearchOperation *)self _startFind];
    }
  }
}

- (BOOL)_indexTextContent:(id)content
{
  contentCopy = content;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    v5 = 0;
  }

  else if ([contentCopy length])
  {
    v6 = _AESearchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      ordinal = [(BKSearchOperation *)self ordinal];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_doSearch indexing textContent for ordinal %lu", buf, 0xCu);
    }

    baseURL = [(BKWK2EpubSearchOperation *)self baseURL];
    absoluteString = [baseURL absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
    v10 = [BKTextIndex bookIndexWithName:lastPathComponent];

    if (v10)
    {
      v5 = 1;
      [v10 indexTextUnit:contentCopy withOrdinal:-[BKSearchOperation ordinal](self indexSynchronously:{"ordinal"), 1}];
      searchString = [(BKSearchOperation *)self searchString];
      v12 = [v10 queryForString:searchString maxOrdinal:-1];

      if (v12)
      {
        v16 = 0;
        if (([v12 isCandidateOrdinal:-[BKSearchOperation ordinal](self isMissing:{"ordinal"), &v16}] & 1) == 0 && (v16 & 1) == 0)
        {
          v13 = _AESearchLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            ordinal2 = [(BKSearchOperation *)self ordinal];
            *buf = 134217984;
            ordinal = ordinal2;
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
    selfCopy2 = self;
    v12 = 1024;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START _waitForFindSemaphore %x for ordinal: %d", buf, 0xEu);
  }

  findSemaphore = [(BKWK2EpubSearchOperation *)self findSemaphore];
  v5 = dispatch_semaphore_wait(findSemaphore, [(BKWK2EpubSearchOperation *)self _semaphoreWaitTime]);

  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ordinal2 = [(BKSearchOperation *)self ordinal];
    *buf = 67109376;
    selfCopy2 = self;
    v12 = 1024;
    ordinal = ordinal2;
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
    lastSavedSearchResult = [(BKSearchOperation *)self lastSavedSearchResult];

    if (lastSavedSearchResult)
    {
      objc_opt_class();
      lastSavedSearchResult2 = [(BKSearchOperation *)self lastSavedSearchResult];
      v5 = BUDynamicCast();

      objc_opt_class();
      location = [v5 location];
      v7 = BUDynamicCast();

      if (v7)
      {
        v8 = _AESearchLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          cfiString = [v7 cfiString];
          *buf = 138412290;
          v16 = cfiString;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Resuming previous search at location: %@", buf, 0xCu);
        }

        cfiString2 = [v7 cfiString];
        v11 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.setSelectedRange('%@')", cfiString2];;

        objc_initWeak(buf, self);
        webView = [(BKWK2EpubSearchOperation *)self webView];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_E4284;
        v13[3] = &unk_1E36A8;
        objc_copyWeak(&v14, buf);
        [webView evaluateJavaScript:v11 completionHandler:v13];

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
    webView = [(BKWK2EpubSearchOperation *)self webView];
    searchString = [(BKSearchOperation *)self searchString];
    [webView _findString:searchString options:513 maxCount:1000];
  }
}

- (BOOL)_doSearch
{
  v3 = _AESearchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_doSearch for ordinal %lu", buf, 0xCu);
  }

  baseURL = [(BKWK2EpubSearchOperation *)self baseURL];
  absoluteString = [baseURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];
  v7 = [BKTextIndex bookIndexWithName:lastPathComponent];

  v8 = [v7 containsTextUnitWithOrdinal:{-[BKSearchOperation ordinal](self, "ordinal")}];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = _AESearchLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ordinal2 = [(BKSearchOperation *)self ordinal];
      *buf = 134217984;
      ordinal = ordinal2;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "_doSearch index contains text unit for ordinal %lu", buf, 0xCu);
    }

    searchString = [(BKSearchOperation *)self searchString];
    v13 = [v7 queryForString:searchString maxOrdinal:-1];

    v24 = 0;
    if (([v13 isCandidateOrdinal:-[BKSearchOperation ordinal](self isMissing:{"ordinal"), &v24}] & 1) == 0 && (v24 & 1) == 0)
    {
      self->super._isDone = 1;
      v21 = _AESearchLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        ordinal3 = [(BKSearchOperation *)self ordinal];
        *buf = 134217984;
        ordinal = ordinal3;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "_doSearch index query contains search string.  Search done for ordinal %lu", buf, 0xCu);
      }

      contentProcessDidTerminate = 0;
      goto LABEL_23;
    }

    v14 = _AESearchLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      ordinal4 = [(BKSearchOperation *)self ordinal];
      *buf = 134217984;
      ordinal = ordinal4;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "_doSearch index query does not contain search string for ordinal %lu", buf, 0xCu);
    }
  }

  webView = [(BKWK2EpubSearchOperation *)self webView];

  if (webView)
  {
    v17 = _AESearchLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      startSearchFromIndex = [(BKSearchOperation *)self startSearchFromIndex];
      *buf = 134217984;
      ordinal = startSearchFromIndex;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "_doSearch already have a web view.  Continuing search from index %lu", buf, 0xCu);
    }
  }

  else if ([(BKWK2EpubSearchOperation *)self _loadWebView])
  {
    contentProcessDidTerminate = 1;
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
    contentProcessDidTerminate = 1;
    self->super._isDone = 1;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  contentProcessDidTerminate = [(BKWK2EpubSearchOperation *)self contentProcessDidTerminate];
LABEL_23:

  return contentProcessDidTerminate;
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  lCopy = l;
  v6 = [(BKWK2EpubSearchOperation *)self url];
  v7 = [lCopy be_isEquivalentToURL:v6 ignoringFragment:1];

  v8 = _AESearchLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      ordinal = [(BKSearchOperation *)self ordinal];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "didFinishLoadOfURL for ordinal %lu", &v10, 0xCu);
    }

    [(BKWK2EpubSearchOperation *)self _configureWebView];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      ordinal = lCopy;
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
  loadSemaphore = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  dispatch_semaphore_signal(loadSemaphore);
}

- (void)navigationHandler:(id)handler failedToLoadURL:(id)l error:(id)error
{
  lCopy = l;
  v7 = [(BKWK2EpubSearchOperation *)self url];
  v8 = [lCopy be_isEquivalentToURL:v7 ignoringFragment:1];

  v9 = _AESearchLog();
  loadSemaphore = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = lCopy;
      _os_log_impl(&dword_0, loadSemaphore, OS_LOG_TYPE_DEFAULT, "failedToLoadURL: %@", &v11, 0xCu);
    }

    [(BKWK2EpubSearchOperation *)self setSuccessfulLoad:0];
    loadSemaphore = [(BKWK2EpubSearchOperation *)self loadSemaphore];
    dispatch_semaphore_signal(loadSemaphore);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = lCopy;
    _os_log_impl(&dword_0, loadSemaphore, OS_LOG_TYPE_ERROR, "loaded non main url - failedToLoadURL: %@", &v11, 0xCu);
  }
}

- (void)navigationHandlerWebContentLoadFailed:(id)failed
{
  v4 = _AESearchLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "navigationHandlerWebContentLoadFailed for ordinal %lu", &v7, 0xCu);
  }

  [(BKWK2EpubSearchOperation *)self setContentProcessDidTerminate:1];
  loadSemaphore = [(BKWK2EpubSearchOperation *)self loadSemaphore];
  dispatch_semaphore_signal(loadSemaphore);

  findSemaphore = [(BKWK2EpubSearchOperation *)self findSemaphore];
  dispatch_semaphore_signal(findSemaphore);
}

- (void)_webView:(id)view didCountMatches:(unint64_t)matches forString:(id)string
{
  stringCopy = string;
  v8 = _AESearchLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218498;
    matchesCopy = matches;
    v11 = 2112;
    v12 = stringCopy;
    v13 = 2048;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "didCountMatches: %lu forString:%@ for ordinal %lu", &v9, 0x20u);
  }
}

- (void)_webView:(id)view didFindMatches:(unint64_t)matches forString:(id)string withMatchIndex:(int64_t)index
{
  viewCopy = view;
  stringCopy = string;
  if (([(BKWK2EpubSearchOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_14;
  }

  v12 = _AESearchLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    indexCopy2 = matches;
    v25 = 2112;
    v26 = stringCopy;
    v27 = 2048;
    indexCopy = index;
    v29 = 2048;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "didFindMatches: %lu forString:%@ withMatchIndex: %lu for ordinal %lu", buf, 0x2Au);
  }

  if ([(BKSearchOperation *)self startSearchFromIndex]<= index)
  {
    searchBook = [(BKSearchOperation *)self searchBook];
    if ([searchBook hasPhysicalPages])
    {
      physicalPageMap = [(BKWK2EpubSearchOperation *)self physicalPageMap];
      v16 = [physicalPageMap count] == 0;

      if (v16)
      {
        v17 = 0;
        goto LABEL_13;
      }

      searchBook = [(BKWK2EpubSearchOperation *)self physicalPageMap];
      v17 = [searchBook valueForKey:@"href"];
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
    [viewCopy evaluateJavaScript:v18 completionHandler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);

    goto LABEL_14;
  }

  v13 = _AESearchLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    indexCopy2 = index;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Skipping previously found result index %lu.", buf, 0xCu);
  }

  [(BKWK2EpubSearchOperation *)self _startWebKitFind];
LABEL_14:
}

- (void)_addResultsWithPhysicalPageHrefs:(id)hrefs selectedRangeResult:(id)result
{
  hrefsCopy = hrefs;
  resultCopy = result;
  v7 = _AESearchLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = resultCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "getSelectedRange result: %@", &buf, 0xCu);
  }

  if (resultCopy)
  {
    v8 = +[NSNull null];
    v9 = v8 == resultCopy;

    if (!v9)
    {
      v10 = sub_E5660(resultCopy);
      v11 = +[BKSearchResult mutableSearchResult];
      searchString = [(BKSearchOperation *)self searchString];
      [v11 setSearchString:searchString];

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
        integerValue = [v17 integerValue];

        searchString2 = [(BKSearchOperation *)self searchString];
        [v11 setSearchStringRange:{integerValue, objc_msgSend(searchString2, "length")}];
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
      searchBook = [(BKSearchOperation *)self searchBook];
      if ([searchBook isFixedLayout])
      {
      }

      else
      {
        v22 = [*(*(&buf + 1) + 40) count] == 0;

        if (!v22)
        {
          firstObject = [*(*(&buf + 1) + 40) firstObject];
          [firstObject rectValue];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          loader = [(BKWK2EpubSearchOperation *)self loader];
          v33 = [loader pageOffsetRangeForRect:{v25, v27, v29, v31}];

          [v11 setPageOffset:v33];
        }
      }

      v34 = [v10 objectForKey:@"cfi"];
      v52 = 0;
      v35 = [[BKEpubCFILocation alloc] initWithCFI:v34 error:&v52];
      v36 = v52;
      [v11 setLocation:v35];

      v37 = *(*(&buf + 1) + 40);
      location = [v11 location];
      [location setSelectionRects:v37];

      if ([hrefsCopy count])
      {
        v39 = [v10 objectForKey:@"physicalPageHref"];
        if ([v39 length])
        {
          v40 = [hrefsCopy indexOfObject:v39];
          if (v40 != 0x7FFFFFFFFFFFFFFFLL)
          {
            physicalPageMap = [(BKWK2EpubSearchOperation *)self physicalPageMap];
            v42 = v40 < [physicalPageMap count];

            if (v42)
            {
              physicalPageMap2 = [(BKWK2EpubSearchOperation *)self physicalPageMap];
              v44 = [physicalPageMap2 objectAtIndexedSubscript:v40];

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

    findSemaphore = [(BKWK2EpubSearchOperation *)self findSemaphore];
    dispatch_semaphore_signal(findSemaphore);
  }
}

- (void)_webView:(id)view didFailToFindString:(id)string
{
  stringCopy = string;
  v6 = _AESearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = stringCopy;
    v10 = 2048;
    ordinal = [(BKSearchOperation *)self ordinal];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "didFailToFindString: %@ for ordinal %lu", &v8, 0x16u);
  }

  findSemaphore = [(BKWK2EpubSearchOperation *)self findSemaphore];
  dispatch_semaphore_signal(findSemaphore);
}

@end