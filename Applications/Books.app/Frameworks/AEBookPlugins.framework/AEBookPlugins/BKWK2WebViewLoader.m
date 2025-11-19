@interface BKWK2WebViewLoader
- (BKWK2WebViewLoader)initWithPaginationOptions:(id)a3 ordinal:(unint64_t)a4;
- (BKWK2WebViewLoaderDelegate)delegate;
- (BOOL)isVerticalDocument;
- (BOOL)pageTextDirectionIsRTL;
- (CGRect)contentRectForVisibleContent;
- (CGRect)contentRectForVisiblePage;
- (CGRect)desiredWebViewFrame;
- (CGRect)rectForPageOffset:(unint64_t)a3;
- (CGSize)contentSize;
- (_NSRange)_uncheckedPageOffsetRangeForRect:(CGRect)a3;
- (_NSRange)pageOffsetRangeForRect:(CGRect)a3;
- (id)_pageOffsetsForFrames:(id)a3;
- (id)anchorFrameForAnchor:(id)a3;
- (id)locationForAnchor:(id)a3;
- (id)locationForPageOffset:(unint64_t)a3 contentOffset:(CGPoint)a4;
- (int64_t)_scrollPageCountFromCurrentPageSize;
- (unint64_t)_pageOffsetForXOffset:(double)a3;
- (unint64_t)pageCount;
- (unint64_t)pageOffsetForAnchor:(id)a3;
- (unint64_t)pageOffsetForLocation:(id)a3;
- (void)_postLoadComplete:(id)a3;
- (void)_sendNextInfoRequest;
- (void)_updateContentInformationWithRequest:(id)a3;
- (void)cancelCurrentRequest;
- (void)clearPaginationResults;
- (void)clientRectForEpubLocation:(id)a3 completion:(id)a4;
- (void)clientRectsForLocation:(id)a3 completion:(id)a4;
- (void)clientRectsForLocations:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)enqueueContentInfoRequest:(id)a3;
- (void)generatePaginationDataCompletion:(id)a3;
- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4;
- (void)parseTOCIdCssRulesForMap:(id)a3 completion:(id)a4;
- (void)registerForVisibleCFIUpdates;
- (void)setDesiredWebViewFrame:(CGRect)a3;
- (void)setPageTextDirectionIsRTL:(BOOL)a3 isVerticalDocument:(BOOL)a4;
- (void)setWebView:(id)a3;
- (void)unregisterForVisibleCFIUpdates;
- (void)updateAnchorInformation:(id)a3;
- (void)updateMediaFrames:(id)a3;
- (void)updatePaginationOptions:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation BKWK2WebViewLoader

- (BKWK2WebViewLoader)initWithPaginationOptions:(id)a3 ordinal:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = BKWK2WebViewLoader;
  v8 = [(BKWK2WebViewLoader *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_paginationOptions, a3);
    v9->_ordinal = a4;
    tocIdCssRules = v9->_tocIdCssRules;
    v9->_tocIdCssRules = &stru_1E7188;

    v9->_pageCount = 0x7FFFFFFFFFFFFFFFLL;
    v9->_contentInfo = 501;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKWK2WebViewLoader;
  [(BKWK2WebViewLoader *)&v2 dealloc];
}

- (void)setWebView:(id)a3
{
  v5 = a3;
  if (self->_webView != v5)
  {
    if ([(BKWK2WebViewLoader *)self calculatingPageLocations])
    {
      v6 = _AEWKLoaderLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Setting webView while it is calculating page locations -- this should not happen", buf, 2u);
      }
    }

    [(BKWK2WebViewLoader *)self unregisterForVisibleCFIUpdates];
    v7 = [(WKWebView *)v5 configuration];
    v8 = [v7 userContentController];

    [v8 removeScriptMessageHandlerForName:@"cfiUpdate"];
    [v8 removeScriptMessageHandlerForName:@"selectionChange"];
    objc_storeStrong(&self->_webView, a3);
    [(BKWK2WebViewLoader *)self desiredWebViewFrame];
    v33.origin.x = CGRectZero.origin.x;
    v33.origin.y = CGRectZero.origin.y;
    v33.size.width = CGRectZero.size.width;
    v33.size.height = CGRectZero.size.height;
    v9 = CGRectEqualToRect(v31, v33);
    [(WKWebView *)v5 frame];
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if (v9)
    {
      [(BKWK2WebViewLoader *)self setDesiredWebViewFrame:v10, v11, v12, v13];
    }

    else
    {
      [(BKWK2WebViewLoader *)self desiredWebViewFrame];
      v34.origin.x = v18;
      v34.origin.y = v19;
      v34.size.width = v20;
      v34.size.height = v21;
      v32.origin.x = v14;
      v32.origin.y = v15;
      v32.size.width = v16;
      v32.size.height = v17;
      if (!CGRectEqualToRect(v32, v34))
      {
        v22 = _AEWKLoaderLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [(BKWK2WebViewLoader *)self ordinal];
          *buf = 134217984;
          v30 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "wkWebView frame mismatch ordinal:%lu", buf, 0xCu);
        }

        [(BKWK2WebViewLoader *)self desiredWebViewFrame];
        [(WKWebView *)self->_webView setFrame:?];
      }
    }

    [(BKWK2WebViewLoader *)self registerForVisibleCFIUpdates];
    v24 = [(WKWebView *)self->_webView configuration];
    v25 = [v24 userContentController];

    [v25 be_addScriptMessageHandler:self name:@"selectionChange"];
    objc_initWeak(buf, self);
    v26 = [(WKWebView *)self->_webView be_navigationHandler];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_68D6C;
    v27[3] = &unk_1E4570;
    objc_copyWeak(&v28, buf);
    [v26 performAfterLoadCompleteOrFailure:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)registerForVisibleCFIUpdates
{
  v3 = [(WKWebView *)self->_webView configuration];
  if (v3)
  {
    listeningForCFIUpdates = self->_listeningForCFIUpdates;

    if (!listeningForCFIUpdates)
    {
      self->_listeningForCFIUpdates = 1;
      v6 = [(WKWebView *)self->_webView configuration];
      v5 = [v6 userContentController];
      [v5 be_addScriptMessageHandler:self name:@"cfiUpdate"];
    }
  }
}

- (void)unregisterForVisibleCFIUpdates
{
  self->_listeningForCFIUpdates = 0;
  v3 = [(WKWebView *)self->_webView configuration];
  v2 = [v3 userContentController];
  [v2 removeScriptMessageHandlerForName:@"cfiUpdate"];
}

- (void)_postLoadComplete:(id)a3
{
  v4 = a3;
  [(BKWK2WebViewLoader *)self setWebViewLoaded:1];
  [(BKWK2WebViewLoader *)self setPageCount:[(WKWebView *)self->_webView _pageCount]];
  v5 = _AEWKLoaderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BKWK2WebViewLoader *)self webView];
    v7 = [(BKWK2WebViewLoader *)self ordinal];
    pageCount = self->_pageCount;
    *buf = 138413058;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = pageCount;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Loader %@ webView %@ didFinishLoadOfURL for ordinal %lu captured pageCount:%lu", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  webView = self->_webView;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_69208;
  v11[3] = &unk_1E45D8;
  objc_copyWeak(&v13, buf);
  v10 = v4;
  v12 = v10;
  [(WKWebView *)webView be_evaluateJavaScript:&stru_1E45B0 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)setDesiredWebViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BKWK2WebViewLoader *)self desiredWebViewFrame];
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v10;
  v22.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v22))
  {
    self->_desiredWebViewFrame.origin.x = x;
    self->_desiredWebViewFrame.origin.y = y;
    self->_desiredWebViewFrame.size.width = width;
    self->_desiredWebViewFrame.size.height = height;
    v12 = _AEWKLoaderLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BKWK2WebViewLoader *)self ordinal];
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v14 = NSStringFromCGRect(v21);
      v16 = 134218242;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "setDesiredWebViewFrame setting webView frame ordinal: %ld to:%@", &v16, 0x16u);
    }

    v15 = [(BKWK2WebViewLoader *)self webView];
    [v15 setFrame:{x, y, width, height}];
  }
}

- (void)updatePaginationOptions:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self paginationOptions];
  v6 = [v5 isEqual:v4];

  v7 = _AEWKLoaderLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 134217984;
      v12 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "updatePaginationOptions equal pagination options for ordinal %lu", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 134217984;
      v12 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "updatePaginationOptions for ordinal %lu", buf, 0xCu);
    }

    [(BKWK2WebViewLoader *)self setPaginationOptions:v4];
    [(BKWK2WebViewLoader *)self setPageCount:0x7FFFFFFFFFFFFFFFLL];
    [(BKWK2WebViewLoader *)self clearPaginationResults];
    [(BKWK2WebViewLoader *)self webView];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_697BC;
    v9[3] = &unk_1E3F50;
    v10 = v9[4] = self;
    v7 = v10;
    [v7 _doAfterNextStablePresentationUpdate:v9];
  }
}

- (void)setPageTextDirectionIsRTL:(BOOL)a3 isVerticalDocument:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(BKWK2WebViewLoader *)self setTextDirectionDetermined:1];
  [(BKWK2WebViewLoader *)self setPageTextDirectionIsRTL:v5];

  [(BKWK2WebViewLoader *)self setIsVerticalDocument:v4];
}

- (void)clearPaginationResults
{
  v3 = _AEWKLoaderLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "clearPaginationResults for ordinal %lu", &v5, 0xCu);
  }

  anchorLocations = self->_anchorLocations;
  self->_anchorLocations = 0;
}

- (unint64_t)pageCount
{
  v3 = [(BKWK2WebViewLoader *)self webView];

  if (!v3)
  {
    return self->_pageCount;
  }

  v4 = [(BKWK2WebViewLoader *)self webView];
  v5 = [v4 _pageCount];

  v6 = [(BKWK2WebViewLoader *)self webView];
  v7 = [v6 _paginationMode];

  if (!v7)
  {
    v5 = [(BKWK2WebViewLoader *)self _scrollPageCountFromCurrentPageSize];
  }

  if (self->_pageCount == 0x7FFFFFFFFFFFFFFFLL && [(BKWK2WebViewLoader *)self webViewLoaded])
  {
    v8 = _AEWKLoaderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218240;
      v19 = [(BKWK2WebViewLoader *)self ordinal];
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Unknown page count. Ordinal: %lu capturing pageCount: %lu", &v18, 0x16u);
    }

    self->_pageCount = v5;
  }

  if (![(BKWK2WebViewLoader *)self webViewLoaded])
  {
    v9 = _AEWKLoaderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(BKWK2WebViewLoader *)self webView];
      v11 = [v10 URL];
      v12 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
    }
  }

  if (v5 != self->_pageCount)
  {
    v13 = _AEWKLoaderLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(BKWK2WebViewLoader *)self ordinal];
      v15 = [(BKWK2WebViewLoader *)self webView];
      pageCount = self->_pageCount;
      v18 = 134349826;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2050;
      v23 = v5;
      v24 = 2050;
      v25 = pageCount;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Loader Asking PageCount for ordinal %{public}lu webView %@ webViewPageCount:%{public}lu captured pageCount:%{public}lu", &v18, 0x2Au);
    }

    self->_pageCount = v5;
  }

  return v5;
}

- (void)parseTOCIdCssRulesForMap:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKWK2WebViewLoader *)self webView];

  v9 = v8 == 0;
  v10 = _AEWKLoaderLog();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BKWK2WebViewLoader *)self url];
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Loader parseTOCIdCssRules %@", buf, 0xCu);
    }

    if ([v6 count])
    {
      v20 = 0;
      v13 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v20];
      v14 = v20;
      if (!v14)
      {
        if (v13)
        {
          v14 = [[NSString alloc] initWithData:v13 encoding:4];
          if (v14)
          {
            v15 = [NSString stringWithFormat:@"__ibooks_content_cleanup.tocIdCssRules(%@)", v14];;
            objc_initWeak(buf, self);
            v16 = [(BKWK2WebViewLoader *)self webView];
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_69F38;
            v17[3] = &unk_1E4600;
            objc_copyWeak(&v19, buf);
            v17[4] = self;
            v18 = v7;
            [v16 evaluateJavaScript:v15 completionHandler:v17];

            objc_destroyWeak(&v19);
            objc_destroyWeak(buf);

            v14 = 0;
LABEL_14:

            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v7[2](v7);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v22 = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Attempting to parseTOCIdCssRulesForMap with no web view ordinal: %lu", buf, 0xCu);
  }

  v7[2](v7);
LABEL_15:
}

- (void)_updateContentInformationWithRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKWK2WebViewLoader *)self currentInfoRequest];

    v6 = v5 == 0;
    v7 = _AEWKLoaderLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(BKWK2WebViewLoader *)self webView];
        *buf = 138412802;
        v43 = self;
        v44 = 2112;
        v45 = v16;
        v46 = 2112;
        v47 = v4;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "loader: %@ webview: %@ processing request: %@", buf, 0x20u);
      }

      [(BKWK2WebViewLoader *)self setCurrentInfoRequest:v4];
      v17 = [(BKWK2WebViewLoader *)self webView];
      v18 = [v4 stylesheetSet];
      [v18 applyToWebView:v17];
      [v4 fontSize];
      [v17 _setTextZoomFactor:?];
      v19 = [v4 paginationOptions];
      [v19 applyToWebView:v17];
      [(BKWK2WebViewLoader *)self updatePaginationOptions:v19];
      v20 = [BEContentLayoutInfo updateScriptWithOptions:v19];
      v21 = [v4 cfiOptions];
      [v19 gapBetweenPages];
      v23 = +[BECFIUtilitiesJS updateScriptWithOptions:gapBetweenPages:paginatedTopToBottom:](BECFIUtilitiesJS, "updateScriptWithOptions:gapBetweenPages:paginatedTopToBottom:", v21, [v19 mode] == &dword_4, v22);

      v24 = [v4 cleanupOptions];
      [v19 pageLength];
      v26 = v25;
      [v19 gapBetweenPages];
      v28 = [BEContentCleanupJS updateScriptWithOptions:v24 pageLength:v26 gapBetweenPages:v27];

      objc_initWeak(buf, self);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_6A548;
      v36[3] = &unk_1E4628;
      v29 = v20;
      v37 = v29;
      v30 = v23;
      v38 = v30;
      v31 = v28;
      v39 = v31;
      v40 = self;
      v32 = v4;
      v41 = v32;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_6A6A8;
      v33[3] = &unk_1E4650;
      objc_copyWeak(&v35, buf);
      v33[4] = self;
      v34 = v32;
      [v17 be_evaluateJavaScript:v36 completion:v33];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [(BKWK2WebViewLoader *)self currentInfoRequest];
        *buf = 138412546;
        v43 = v9;
        v44 = 2112;
        v45 = v4;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Currently handling request %@ when received request %@", buf, 0x16u);
      }

      v10 = [(BKWK2WebViewLoader *)self pendingInfoRequest];

      if (v10)
      {
        v11 = _AEWKLoaderLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
          *buf = 138412802;
          v43 = self;
          v44 = 2112;
          v45 = v12;
          v46 = 2112;
          v47 = v4;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "loader: %@ enqueueContentInfoRequest replacing pendingRequest: %@ with request %@", buf, 0x20u);
        }

        v13 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
        v14 = [v13 completion];

        if (v14)
        {
          v15 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
          (v14)[2](v14, v15, 0);
        }
      }

      [(BKWK2WebViewLoader *)self setPendingInfoRequest:v4];
    }
  }
}

- (void)generatePaginationDataCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [v5 setState:1];

  v6 = _AEWKLoaderLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BKWK2WebViewLoader *)self webView];
    *buf = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = [(BKWK2WebViewLoader *)self ordinal];
    v19 = 2048;
    v20 = [(BKWK2WebViewLoader *)self pageCount];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Loader: %@ webView: %@ generatePaginationData for ordinal %lu using pageCount:%lu", buf, 0x2Au);
  }

  anchorLocations = self->_anchorLocations;
  self->_anchorLocations = 0;

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6AAF0;
  v10[3] = &unk_1E4010;
  objc_copyWeak(&v12, buf);
  v9 = v4;
  v11 = v9;
  [(BKWK2WebViewLoader *)self updateAnchorInformation:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)updateAnchorInformation:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [v5 setState:3];

  v6 = [(BKWK2WebViewLoader *)self webView];
  if (v6 && (-[BKWK2WebViewLoader currentInfoRequest](self, "currentInfoRequest"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isRequestValid], v7, (v8 & 1) != 0))
  {
    objc_initWeak(location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_6ADCC;
    v15[3] = &unk_1E4678;
    objc_copyWeak(&v16, location);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_6AEF4;
    v12[3] = &unk_1E45D8;
    objc_copyWeak(&v14, location);
    v13 = v4;
    [v6 be_evaluateJavaScript:v15 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = _AEWKLoaderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "No webview when trying to get anchor locations for ordinal:%lu !", location, 0xCu);
    }

    v10 = objc_retainBlock(v4);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)updateMediaFrames:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BKWK2WebViewLoader *)self webView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B200;
  v10[3] = &unk_1E4678;
  objc_copyWeak(&v11, &location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6B2C0;
  v7[3] = &unk_1E45D8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 be_evaluateJavaScript:v10 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    v8 = BUDynamicCast();
    objc_opt_class();
    v9 = BUDynamicCast();
    if (v8)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_6B8AC;
      v32[3] = &unk_1E46A0;
      v32[4] = self;
      v33 = v8;
      v34 = v7;
      [(BKWK2WebViewLoader *)self clientRectsForLocation:v33 completion:v32];

      v10 = v33;
LABEL_4:

LABEL_26:
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v6 pageOffset];
      v14 = _AEWKLoaderLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v36 = v13;
        v37 = 2112;
        v38 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Determined pageOffset: %lu for page location: %@", buf, 0x16u);
      }

      v15 = objc_retainBlock(v7);
      v16 = v15;
      if (v15)
      {
        (*(v15 + 2))(v15, v13, 1);
      }

LABEL_25:

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v6;
      v17 = [v16 anchor];
      if ([v17 length])
      {
        v18 = [(BKWK2WebViewLoader *)self pageOffsetForAnchor:v17];
      }

      else
      {
        v18 = 0;
      }

      v19 = _AEWKLoaderLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v36 = v18;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Determined pageOffset: %lu for anchor location: %@", buf, 0x16u);
      }

      v20 = objc_retainBlock(v7);
      v21 = v20;
      if (v20)
      {
        (*(v20 + 2))(v20, v18, 1);
      }

      goto LABEL_25;
    }

    if (v9)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_6BA54;
      v29[3] = &unk_1E46C8;
      v29[4] = self;
      v30 = v9;
      v31 = v7;
      [(BKWK2WebViewLoader *)self clientRectForEpubLocation:v30 completion:v29];

      v10 = v30;
      goto LABEL_4;
    }

    if ([v6 isMemberOfClass:objc_opt_class()])
    {
      v22 = objc_retainBlock(v7);
      v23 = v22;
      if (!v22)
      {
LABEL_36:

        goto LABEL_26;
      }

      v24 = v22[2];
    }

    else
    {
      v25 = _AEWKLoaderLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412546;
        v36 = v27;
        v37 = 2048;
        v38 = [(BKWK2WebViewLoader *)self ordinal];
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "pageOffsetRangeForLocation unsupported location type (%@) for ordinal:%lu", buf, 0x16u);
      }

      v28 = objc_retainBlock(v7);
      v23 = v28;
      if (!v28)
      {
        goto LABEL_36;
      }

      v24 = v28[2];
    }

    v24();
    goto LABEL_36;
  }

  v11 = _AEWKLoaderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v36 = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "pageOffsetRangeForLocation missing location for ordinal:%lu", buf, 0xCu);
  }

  v12 = objc_retainBlock(v7);
  v8 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 0x7FFFFFFFFFFFFFFFLL, 0);
  }

LABEL_27:
}

- (void)clientRectsForLocations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v25 = a4;
  v6 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v11 = BUDynamicCast();
        v12 = v11;
        if (v11)
        {
          v13 = [v11 cfiString];
          [v6 addObject:v13];
        }

        else
        {
          v13 = _AEWKLoaderLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            *buf = 138412290;
            v37 = v15;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "We should not get any type other than a BKEpubCFILocation here but we got a %@", buf, 0xCu);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v8);
  }

  v29 = 0;
  v16 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v29];
  v17 = v29;
  if (![v16 length] || v17)
  {
    if (!v17)
    {
      v20 = [objc_opt_class() description];
      v34 = NSLocalizedDescriptionKey;
      v35 = @"no JSON data";
      v21 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v17 = [NSError errorWithDomain:v20 code:1 userInfo:v21];
    }

    v22 = _AEWKLoaderLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v17;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Failed to get JSON Data from cfi strings - %@", buf, 0xCu);
    }

    v23 = objc_retainBlock(v25);
    v18 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, v17);
    }
  }

  else
  {
    v17 = [[NSString alloc] initWithData:v16 encoding:4];
    v18 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.getClientRects(%@)", v17];;
    objc_initWeak(buf, self);
    v19 = [(BKWK2WebViewLoader *)self webView];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_6C030;
    v26[3] = &unk_1E4600;
    objc_copyWeak(&v28, buf);
    v26[4] = self;
    v27 = v25;
    [v19 evaluateJavaScript:v18 completionHandler:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)clientRectsForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = v6;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6C394;
  v11[3] = &unk_1E46F0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(BKWK2WebViewLoader *)self clientRectsForLocations:v8 completion:v11];
}

- (void)clientRectForEpubLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 jsonObject];
  v9 = v8;
  if (v8)
  {
    v24 = @"_id";
    v25 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [BECFIUtilitiesJS upgradeAnnotationsScript:v10];

    v12 = [(BKWK2WebViewLoader *)self webView];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6C6F4;
    v19[3] = &unk_1E4718;
    v20 = v6;
    v21 = self;
    v22 = v7;
    [v12 evaluateJavaScript:v11 completionHandler:v19];

    v13 = v20;
  }

  else
  {
    v14 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Failed to get json object from location: %@", buf, 0xCu);
    }

    v11 = [NSString stringWithFormat:@"Failed to get json object from location: %@", v6];
    v26 = NSDebugDescriptionErrorKey;
    v27 = v11;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [NSError errorWithDomain:@"BookEPUBError" code:4 userInfo:v15];

    v16 = objc_retainBlock(v7);
    if (v16)
    {
      size = CGRectZero.size;
      v23[0] = CGRectZero.origin;
      v23[1] = size;
      v18 = [NSValue valueWithBytes:v23 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v16[2](v16, v18, v13);
    }
  }
}

- (BOOL)pageTextDirectionIsRTL
{
  if (![(BKWK2WebViewLoader *)self textDirectionDetermined])
  {
    v3 = _AEWKLoaderLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Attempting to use pageTextDirectionIsRTL before it has been determined.", v5, 2u);
    }
  }

  return self->_pageTextDirectionIsRTL;
}

- (BOOL)isVerticalDocument
{
  if (![(BKWK2WebViewLoader *)self textDirectionDetermined])
  {
    v3 = _AEWKLoaderLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Attempting to use isVerticalDocument before it has been determined.", v5, 2u);
    }
  }

  return self->_isVerticalDocument;
}

- (void)cancelCurrentRequest
{
  v2 = [(BKWK2WebViewLoader *)self currentInfoRequest];
  [v2 invalidateRequest];
}

- (void)enqueueContentInfoRequest:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self pendingInfoRequest];

  if (v5)
  {
    v6 = _AEWKLoaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
      v11 = 138412802;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "loader: %@ enqueueContentInfoRequest replacing pendingRequest: %@ with request %@", &v11, 0x20u);
    }

    v8 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
    v9 = [v8 completion];

    if (v9)
    {
      v10 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
      (v9)[2](v9, v10, 0);
    }
  }

  [(BKWK2WebViewLoader *)self setPendingInfoRequest:v4];
  [(BKWK2WebViewLoader *)self _sendNextInfoRequest];
}

- (void)_sendNextInfoRequest
{
  v3 = [(BKWK2WebViewLoader *)self currentInfoRequest];

  if (!v3)
  {
    v4 = [(BKWK2WebViewLoader *)self pendingInfoRequest];
    if (v4)
    {
      v5 = v4;
      [(BKWK2WebViewLoader *)self setPendingInfoRequest:0];
      [(BKWK2WebViewLoader *)self _updateContentInformationWithRequest:v5];
      v4 = v5;
    }
  }
}

- (int64_t)_scrollPageCountFromCurrentPageSize
{
  v3 = [(BKWK2WebViewLoader *)self paginationOptions];
  [v3 scrollPageLength];
  v5 = v4;

  if (v5 <= 1.0)
  {
    return 1;
  }

  v6 = [(BKWK2WebViewLoader *)self webView];
  v7 = [v6 be_estimatedContentSizeValue];

  if (!v7 || (([v7 CGSizeValue], CGSizeZero.width == v9) ? (v10 = CGSizeZero.height == v8) : (v10 = 0), v10))
  {
    v16 = [(BKWK2WebViewLoader *)self webView];
    v17 = [v16 scrollView];
    [v17 contentSize];
    v12 = v18;
    v14 = v19;
  }

  else
  {
    [v7 CGSizeValue];
    v12 = v11;
    v14 = v13;
  }

  v20 = [(BKWK2WebViewLoader *)self paginationOptions];
  if (![v20 isHorizontalScroll])
  {
    v12 = v14;
  }

  return vcvtmd_s64_f64(v12 / v5) + 1;
}

- (id)_pageOffsetsForFrames:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6CE78;
  v10[3] = &unk_1E4740;
  v10[4] = self;
  v12 = [(BKWK2WebViewLoader *)self ordinal];
  v6 = v5;
  v11 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (unint64_t)_pageOffsetForXOffset:(double)a3
{
  v5 = [(BKWK2WebViewLoader *)self paginationOptions];

  if (!v5)
  {
    v6 = _AEWKLoaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v34 = 138412290;
      v35 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Invalid Pagination Options in Loader %@ when trying to determine pageOffsetForXOffset", &v34, 0xCu);
    }
  }

  if ([(BKWK2WebViewLoader *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = _AEWKLoaderLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v34 = 138412290;
      v35 = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Page count not initialied in Loader %@ when trying to determine pageOffsetForXOffset", &v34, 0xCu);
    }
  }

  v8 = [(BKWK2WebViewLoader *)self paginationOptions];
  v9 = [(BKWK2WebViewLoader *)self paginationOptions];
  v10 = [v9 mode];

  if (v10)
  {
    [v8 pageLength];
    v12 = v11;
    [v8 gapBetweenPages];
    v14 = v12 + v13;
  }

  else
  {
    [v8 scrollPageLength];
    v14 = v15;
  }

  if (v14 <= 0.0)
  {
    goto LABEL_25;
  }

  v16 = [(BKWK2WebViewLoader *)self paginationOptions];
  v17 = [v16 mode];

  if (v17 == &dword_0 + 2)
  {
    v18 = vcvtmd_u64_f64(fmax(a3, 0.0) / v14);
    goto LABEL_31;
  }

  if (([v8 isHorizontalScroll] & 1) == 0 && objc_msgSend(v8, "mode") != &dword_0 + 3)
  {
    v28 = _AEWKLoaderLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "We don't handle calculating the page offset for this document.", &v34, 2u);
    }

LABEL_25:
    v18 = 0;
    goto LABEL_31;
  }

  if ([(BKWK2WebViewLoader *)self pageTextDirectionIsRTL])
  {
    v19 = [(BKWK2WebViewLoader *)self webView];
    [v19 frame];
    Width = CGRectGetWidth(v40);
    [v8 pageLength];
    v22 = v21 + v21;

    if (Width > v22)
    {
      v23 = _AEBookPluginsRTLLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(BKWK2WebViewLoader *)self webView];
        v25 = [NSNumber numberWithDouble:a3];
        a3 = a3 - v14;
        v26 = [NSNumber numberWithDouble:a3];
        v34 = 134218498;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        v38 = 2112;
        v39 = v26;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[#RTL] WebView: %p is possibly 2up. Changing xOffset from %@ to %@ to get page Offset", &v34, 0x20u);
      }

      else
      {
        a3 = a3 - v14;
      }
    }

    v27 = ceil(-a3 / v14);
    v29 = floor(a3 / v14);
    if (a3 > 0.0)
    {
      v27 = v29;
    }
  }

  else
  {
    v27 = fabs(floor(a3 / v14));
  }

  v18 = v27;
LABEL_31:
  v30 = [(BKWK2WebViewLoader *)self pageCount];
  if (v18 < v30 || v30 < 1)
  {
    v32 = v18;
  }

  else
  {
    v32 = v30 - 1;
  }

  return v32;
}

- (_NSRange)pageOffsetRangeForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKWK2WebViewLoader *)self paginationOptions];

  if (!v8)
  {
    v9 = _AEWKLoaderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Invalid pagination options in loader %@", &v13, 0xCu);
    }
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIsNull(v16))
  {
    v10 = _AEWKLoaderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Invalid rect when getting pageOffsetForRect in loader %@", &v13, 0xCu);
    }

    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = [(BKWK2WebViewLoader *)self _uncheckedPageOffsetRangeForRect:x, y, width, height];
  }

  result.length = v11;
  result.location = v12;
  return result;
}

- (_NSRange)_uncheckedPageOffsetRangeForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKWK2WebViewLoader *)self paginationOptions];
  if ([v8 mode])
  {
  }

  else
  {
    v9 = [(BKWK2WebViewLoader *)self paginationOptions];
    v10 = [v9 isHorizontalScroll];

    if (!v10)
    {
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      MinY = CGRectGetMinY(v33);
      if (MinY <= 3.40282347e38)
      {
        v22 = MinY;
      }

      else
      {
        v22 = 3.40282347e38;
      }

      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v23 = fmax(CGRectGetMaxY(v34), -3.40282347e38);
      if (v22 > v23)
      {
        v14 = _AEWKLoaderLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v28 = 0;
        v15 = &v28;
        goto LABEL_10;
      }

      v24 = [(BKWK2WebViewLoader *)self paginationOptions];
      [v24 contentLayoutSize];
      v26 = v25;

      v19 = vcvtmd_u64_f64(v22 / v26);
      v27 = vcvtmd_u64_f64(v23 / v26);
      if (v19 >= v27)
      {
        v17 = v27;
      }

      else
      {
        v17 = v19;
      }

      if (v19 <= v27)
      {
        v19 = v27;
      }

LABEL_16:
      v16 = v19 - v17 + 1;
      goto LABEL_29;
    }
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MinX = CGRectGetMinX(v31);
  if (MinX <= 3.40282347e38)
  {
    v12 = MinX;
  }

  else
  {
    v12 = 3.40282347e38;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v13 = fmax(CGRectGetMaxX(v32), -3.40282347e38);
  if (v12 <= v13)
  {
    v18 = [(BKWK2WebViewLoader *)self _pageOffsetForXOffset:v12];
    v17 = [(BKWK2WebViewLoader *)self _pageOffsetForXOffset:v13];
    v19 = v17;
    v20 = v18 > v17;
    if (v18 < v17)
    {
      v17 = v18;
    }

    if (v20)
    {
      v19 = v18;
    }

    goto LABEL_16;
  }

  v14 = _AEWKLoaderLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v15 = buf;
LABEL_10:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Bogus rect checking _uncheckedPageOffsetRangeForRect", v15, 2u);
  }

LABEL_11:

  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
  result.length = v16;
  result.location = v17;
  return result;
}

- (unint64_t)pageOffsetForLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = v5;
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 pageOffset];
      v8 = _AEWKLoaderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        v13 = v7;
        v14 = 2112;
        v15 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Determined Page Offset %lu for page location %@", &v12, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v7 = 0;
        }

        else
        {
          v7 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_21;
      }

      v8 = [v4 anchor];
      if (v8)
      {
        v7 = [(BKWK2WebViewLoader *)self pageOffsetForAnchor:v8];
      }

      else
      {
        v7 = 0;
      }

      v10 = _AEWKLoaderLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        v13 = v7;
        v14 = 2112;
        v15 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Determined Page Offset %lu for anchor location %@", &v12, 0x16u);
      }
    }

    goto LABEL_21;
  }

  if ([v5 isPageLocation])
  {
    v7 = [v6 pageOffset];
  }

  else
  {
    v9 = _AEWKLoaderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "CFI Location is not a pageLocation - unable to get pageOffset for this location", &v12, 2u);
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:

  return v7;
}

- (id)locationForPageOffset:(unint64_t)a3 contentOffset:(CGPoint)a4
{
  v5 = [BKEpubCFILocation unknownLocation:a3];
  v6 = [(BKWK2WebViewLoader *)self currentFirstVisbleCFILocation];

  if (v6)
  {
    v7 = [(BKWK2WebViewLoader *)self currentFirstVisbleCFILocation];

    v5 = v7;
  }

  return v5;
}

- (id)locationForAnchor:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self anchorLocations];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)anchorFrameForAnchor:(id)a3
{
  v4 = a3;
  v5 = [(BKWK2WebViewLoader *)self anchorFrames];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (unint64_t)pageOffsetForAnchor:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v5 = _AEWKLoaderLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Request to find page offset from an empty anchor ordinal:%lu", &v11, 0xCu);
    }

    goto LABEL_12;
  }

  v5 = [(BKWK2WebViewLoader *)self locationForAnchor:v4];
  v6 = _AEWKLoaderLog();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v4;
      v13 = 2048;
      v14 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Unknown location for anchor %@ ordinal:%lu", &v11, 0x16u);
    }

LABEL_12:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Found location %@ for anchor %@", &v11, 0x16u);
  }

  if ([v5 pageOffset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(BKWK2WebViewLoader *)self pageOffsetForLocation:v5];
  }

  else
  {
    v8 = [v5 pageOffset];
  }

  v9 = v8;
LABEL_15:

  return v9;
}

- (CGRect)rectForPageOffset:(unint64_t)a3
{
  if ([(BKWK2WebViewLoader *)self pageCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(BKWK2WebViewLoader *)self paginationOptions];
    [v6 contentLayoutSize];
    v8 = v7;
    height = v9;

    v11 = _AEWKLoaderLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v42 = 134217984;
      v43 = [(BKWK2WebViewLoader *)self ordinal];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "rectForPageOffset invalid page count ordinal: %lu", &v42, 0xCu);
    }

    y = 0.0;
    goto LABEL_5;
  }

  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(BKWK2WebViewLoader *)self paginationOptions];
    [v15 contentLayoutSize];
    v8 = v16;
    height = v17;

    v18 = [(BKWK2WebViewLoader *)self paginationOptions];
    v19 = [v18 mode];

    v20 = [(BKWK2WebViewLoader *)self paginationOptions];
    if ([v20 mode] == &dword_0 + 3)
    {
      v21 = 1;
    }

    else
    {
      v3 = [(BKWK2WebViewLoader *)self paginationOptions];
      v21 = [v3 isHorizontalScroll];
    }

    v22 = [(BKWK2WebViewLoader *)self paginationOptions];
    v23 = [v22 mode];
    if (v23 == &dword_4 || (-[BKWK2WebViewLoader paginationOptions](self, "paginationOptions"), v3 = objc_claimAutoreleasedReturnValue(), ![v3 mode]))
    {
      v25 = [(BKWK2WebViewLoader *)self paginationOptions];
      v24 = [v25 isHorizontalScroll] ^ 1;

      if (v23 == &dword_4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_18:
    if (v19)
    {
      v26 = [(BKWK2WebViewLoader *)self paginationOptions];
      [v26 gapBetweenPages];
      v28 = v27;

      if (a3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = 0.0;
      if (a3)
      {
LABEL_20:
        v29 = v28 * 0.5;
        v30 = (a3 - 1);
        if (v24)
        {
          y = v29 + height + v29 + v30 * (height + v28);
          x = 0.0;
          if ((v21 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_26;
        }

        v31 = v8 + v28;
        if ((v21 & 1) == 0)
        {
          x = v29 + v8 + v29 + v30 * v31;
LABEL_33:
          y = 0.0;
          goto LABEL_34;
        }

LABEL_30:
        v32 = -(v31 * a3);
        v33 = [(BKWK2WebViewLoader *)self webView];
        [v33 frame];
        Width = CGRectGetWidth(v44);
        v35 = [(BKWK2WebViewLoader *)self paginationOptions];
        [v35 pageLength];
        v37 = v36 + v36;

        if (Width <= v37)
        {
          x = v32;
        }

        else
        {
          x = v31 + v32;
        }

        goto LABEL_33;
      }
    }

    y = 0.0;
    if ((v21 & 1) == 0)
    {
LABEL_5:
      x = 0.0;
      goto LABEL_34;
    }

    if (v24)
    {
LABEL_26:
      x = -0.0;
      goto LABEL_34;
    }

    v31 = v8 + v28;
    goto LABEL_30;
  }

  v14 = _AEWKLoaderLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v42 = 134217984;
    v43 = [(BKWK2WebViewLoader *)self ordinal];
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "rectForPageOffset invalid pageOffset request in ordinal: %lu", &v42, 0xCu);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  v8 = CGRectNull.size.width;
  height = CGRectNull.size.height;

LABEL_34:
  v38 = x;
  v39 = y;
  v40 = v8;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)contentRectForVisibleContent
{
  v3 = [(BKWK2WebViewLoader *)self webView];
  [(BKWK2WebViewLoader *)self contentRectForVisiblePage];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 window];
  if (v12)
  {
    [v3 bounds];
    [v12 convertRect:v3 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v41.origin.x = v21;
    v41.origin.y = v22;
    v41.size.width = v23;
    v41.size.height = v24;
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v39 = CGRectIntersection(v38, v41);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v29 = [v3 be_contentView];
    [v12 convertRect:v29 toView:{x, y, width, height}];
    v5 = v30;
    v7 = v31;
    v9 = v32;
    v11 = v33;
  }

  v34 = v5;
  v35 = v7;
  v36 = v9;
  v37 = v11;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)contentRectForVisiblePage
{
  v2 = [(BKWK2WebViewLoader *)self webView];
  v3 = [v2 be_contentView];
  [v2 bounds];
  [v3 convertRect:v2 fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"cfiUpdate"];

  if (v7)
  {
    objc_opt_class();
    v8 = [v5 body];
    v9 = BUDynamicCast();

    objc_opt_class();
    v10 = [v9 objectForKeyedSubscript:@"visibleCFIs"];
    v11 = BUDynamicCast();

    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:@"start"];
    v13 = BUDynamicCast();

    objc_opt_class();
    v14 = [v11 objectForKeyedSubscript:@"end"];
    v15 = BUDynamicCast();

    v48 = v11;
    if (!v11 || !v13 || !v15)
    {
      v16 = _AEWKLoaderLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v5 name];
        v18 = [v5 body];
        *buf = 138412546;
        v54 = v17;
        v55 = 2112;
        v56 = v18;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to get cfi string from message %@ %@", buf, 0x16u);
      }
    }

    v19 = _AECaptureLocationLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      *buf = 138412802;
      v54 = v20;
      v55 = 2112;
      v56 = v13;
      v57 = 2112;
      v58 = v15;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "ordinal: %@ BKWK2WebViewLoaderCFIUpdateJSMessage received start: %@  end: %@ ", buf, 0x20u);
    }

    if (v13)
    {
      v52 = 0;
      v21 = [BKEpubCFILocation locationForCFI:v13 error:&v52];
      v22 = v52;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v49 = v9;
    if (v15)
    {
      v51 = 0;
      v35 = [BKEpubCFILocation locationForCFI:v15 error:&v51];
      v36 = v51;

      v22 = v36;
    }

    else
    {
      v35 = 0;
    }

    v37 = [v35 cfi];
    v38 = [v21 cfi];
    v39 = [v37 compare:v38];

    if (v39 == -1)
    {
      v40 = v21;
    }

    else
    {
      v40 = v35;
    }

    if (v39 == -1)
    {
      v21 = v35;
    }

    if (v21 && v40)
    {
      v41 = [v21 unionWithCFI:v40];
    }

    else if (v21)
    {
      v41 = v21;
    }

    else
    {
      v41 = v40;
    }

    v42 = v41;
    v43 = _AECaptureLocationLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [NSNumber numberWithUnsignedInteger:[(BKWK2WebViewLoader *)self ordinal]];
      *buf = 138412546;
      v54 = v44;
      v55 = 2112;
      v56 = v21;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "ordinal: %@ BKWK2WebViewLoaderCFIUpdateJSMessage capturing startLocation location: %@ ", buf, 0x16u);
    }

    [(BKWK2WebViewLoader *)self setCurrentFirstVisbleCFILocation:v21];
    [(BKWK2WebViewLoader *)self setCurrentLastVisbleCFILocation:v40];
    [(BKWK2WebViewLoader *)self setCurrentVisbleCFILocation:v42];
    v45 = [(BKWK2WebViewLoader *)self delegate];
    if (v45 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v46 = [(BKWK2WebViewLoader *)self currentVisbleCFILocation];
      [v45 webViewLoader:self didUpdateCurrentVisibleCFILocation:v46];
    }

    v28 = v48;
    v26 = v49;
    goto LABEL_43;
  }

  v23 = [v5 name];
  v24 = [v23 isEqualToString:@"selectionChange"];

  if (v24)
  {
    objc_opt_class();
    v25 = [v5 body];
    v26 = BUDynamicCast();

    if (!v26)
    {
LABEL_44:

      goto LABEL_45;
    }

    objc_opt_class();
    v27 = [v26 objectForKeyedSubscript:@"cfi"];
    v13 = BUDynamicCast();

    if ([v13 length])
    {
      v50 = 0;
      v28 = [BKEpubCFILocation locationForCFI:v13 error:&v50];
      v15 = v50;
      if (v15)
      {
        v29 = _AEWKLoaderLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [v5 name];
          *buf = 138412546;
          v54 = v30;
          v55 = 2112;
          v56 = v15;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Failed to get cfi string from message %@ %@", buf, 0x16u);
        }
      }

      if (v28)
      {
        [(BKWK2WebViewLoader *)self setCurrentSelectionCFI:v28];
        objc_opt_class();
        v31 = [v26 objectForKeyedSubscript:@"containsAnchor"];
        v32 = BUDynamicCast();
        -[BKWK2WebViewLoader setCurrentSelectionContainsAnchor:](self, "setCurrentSelectionContainsAnchor:", [v32 BOOLValue]);

        v33 = [(BKWK2WebViewLoader *)self delegate];
        LOBYTE(v31) = objc_opt_respondsToSelector();

        if (v31)
        {
          v34 = [(BKWK2WebViewLoader *)self delegate];
          [v34 webViewLoader:self didChangeSelection:v28];
        }
      }
    }

    else
    {
      v28 = 0;
      v15 = 0;
    }

    objc_opt_class();
    v47 = [v26 objectForKeyedSubscript:@"selectionText"];
    v22 = BUDynamicCast();

    if (v22)
    {
      [(BKWK2WebViewLoader *)self setCurrentTextSelection:v22];
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:
}

- (CGRect)desiredWebViewFrame
{
  x = self->_desiredWebViewFrame.origin.x;
  y = self->_desiredWebViewFrame.origin.y;
  width = self->_desiredWebViewFrame.size.width;
  height = self->_desiredWebViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BKWK2WebViewLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end