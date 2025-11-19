@interface _SFReaderExtractor
- (_SFReaderExtractor)init;
- (id)_configuration;
- (id)_processPool;
- (void)_finishWithContent:(id)a3 error:(id)a4;
- (void)_invalidateTimers;
- (void)_scheduleLoadingTimeout;
- (void)_scheduleReaderDataExtractionTimeout;
- (void)_setUpReaderController;
- (void)getExtractedDataForURL:(id)a3 withCompletion:(id)a4;
- (void)getExtractedDataForURL:(id)a3 withData:(id)a4 withCompletion:(id)a5;
- (void)readerController:(id)a3 didCollectArticleContent:(id)a4;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation _SFReaderExtractor

- (_SFReaderExtractor)init
{
  v6.receiver = self;
  v6.super_class = _SFReaderExtractor;
  v2 = [(_SFReaderExtractor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_SFReaderExtractor *)v2 _setUpReaderController];
    v4 = v3;
  }

  return v3;
}

- (id)_processPool
{
  processPool = self->_processPool;
  if (processPool)
  {
    v3 = processPool;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69853F0]);
    v6 = [MEMORY[0x1E696AAE8] safari_safariServicesInjectedBundleURL];
    [v5 setInjectedBundleURL:v6];

    v7 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v5];
    v8 = self->_processPool;
    self->_processPool = v7;

    v3 = self->_processPool;
  }

  return v3;
}

- (id)_configuration
{
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v4 = [(_SFReaderExtractor *)self _processPool];
  [v3 setProcessPool:v4];

  v5 = [MEMORY[0x1E69853B8] safari_nonPersistentDataStore];
  [v3 setWebsiteDataStore:v5];

  [v3 _setClientNavigationsRunAtForegroundPriority:1];

  return v3;
}

- (void)_setUpReaderController
{
  v3 = objc_alloc(MEMORY[0x1E69853A0]);
  v4 = [(_SFReaderExtractor *)self _configuration];
  v5 = [v3 initWithFrame:v4 configuration:{0.0, 0.0, 1264.0, 760.0}];
  webView = self->_webView;
  self->_webView = v5;

  v7 = _SFMacSafariUserAgentString();
  [(WKWebView *)self->_webView _setCustomUserAgent:v7];

  [(WKWebView *)self->_webView setNavigationDelegate:self];
  [(WKWebView *)self->_webView setInspectable:0];
  v8 = [[_SFReaderController alloc] initWithWebView:self->_webView];
  readerController = self->_readerController;
  self->_readerController = v8;

  v10 = self->_readerController;

  [(_SFReaderController *)v10 setDelegate:self];
}

- (void)_finishWithContent:(id)a3 error:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_SFReaderExtractor *)self _invalidateTimers];
  v8 = _Block_copy(self->_completionHandler);
  v9 = self->_currentURL;
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  currentURL = self->_currentURL;
  self->_currentURL = 0;

  if (v8)
  {
    if (v7)
    {
      v8[2](v8, 0, v7);
    }

    else
    {
      if ([v6 count])
      {
        v12 = [v6 objectForKeyedSubscript:@"error"];
        v13 = v12;
        if (v12)
        {
          v20[0] = @"error";
          v20[1] = @"stack";
          v21[0] = v12;
          v14 = [v6 objectForKeyedSubscript:?];
          v15 = v14;
          v16 = @"No stack trace";
          if (v14)
          {
            v16 = v14;
          }

          v21[1] = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:2 userInfo:v17];
          v8[2](v8, 0, v18);

          v19 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [(_SFReaderExtractor *)v9 _finishWithContent:v13 error:v19];
          }
        }

        else
        {
          v17 = [[_SFReaderExtractedData alloc] initWithReaderContent:v6 url:v9];
          (v8)[2](v8, v17, 0);
        }
      }

      else
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:1 userInfo:0];
        v8[2](v8, 0, v13);
      }
    }
  }
}

- (void)_invalidateTimers
{
  loadingTimeoutTimer = self->_loadingTimeoutTimer;
  if (loadingTimeoutTimer)
  {
    [(NSTimer *)loadingTimeoutTimer invalidate];
    v4 = self->_loadingTimeoutTimer;
    self->_loadingTimeoutTimer = 0;
  }

  readerExtractionTimer = self->_readerExtractionTimer;
  if (readerExtractionTimer)
  {
    [(NSTimer *)readerExtractionTimer invalidate];
    v6 = self->_readerExtractionTimer;
    self->_readerExtractionTimer = 0;
  }
}

- (void)_scheduleLoadingTimeout
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45___SFReaderExtractor__scheduleLoadingTimeout__block_invoke;
  v6[3] = &unk_1E8490860;
  objc_copyWeak(&v7, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:30.0];
  loadingTimeoutTimer = self->_loadingTimeoutTimer;
  self->_loadingTimeoutTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_scheduleReaderDataExtractionTimeout
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___SFReaderExtractor__scheduleReaderDataExtractionTimeout__block_invoke;
  v6[3] = &unk_1E8490860;
  objc_copyWeak(&v7, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:10.0];
  readerExtractionTimer = self->_readerExtractionTimer;
  self->_readerExtractionTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)getExtractedDataForURL:(id)a3 withCompletion:(id)a4
{
  v12 = a3;
  v7 = _Block_copy(a4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v7;

  objc_storeStrong(&self->_currentURL, a3);
  webView = self->_webView;
  v10 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v12];
  v11 = [(WKWebView *)webView loadRequest:v10];

  [(_SFReaderExtractor *)self _scheduleLoadingTimeout];
}

- (void)getExtractedDataForURL:(id)a3 withData:(id)a4 withCompletion:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = _Block_copy(a5);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v10;

  objc_storeStrong(&self->_currentURL, a3);
  v12 = [(WKWebView *)self->_webView loadData:v9 MIMEType:@"text/html" characterEncodingName:@"UTF-8" baseURL:self->_currentURL];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(_SFReaderExtractor *)self _invalidateTimers:a3];
  v5 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Collecting article content after finishing navigation", v6, 2u);
  }

  [(_SFReaderController *)self->_readerController collectArticleContent];
  [(_SFReaderExtractor *)self _scheduleReaderDataExtractionTimeout];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [_SFReaderExtractor webView:v7 didFailProvisionalNavigation:v6 withError:?];
  }

  [(_SFReaderExtractor *)self _finishWithContent:0 error:v6];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [v6 code];
  v8 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  v9 = v8;
  if (v7 == -999)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "Failed navigation but ignoring error: %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_SFReaderExtractor webView:v9 didFailNavigation:v6 withError:?];
    }

    [(_SFReaderExtractor *)self _finishWithContent:0 error:v6];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v11 = a5;
  v7 = a4;
  v8 = [v7 response];
  v9 = [v8 URL];

  LOBYTE(v8) = [v7 isForMainFrame];
  v10 = (v8 & 1) != 0 || ![v9 safari_isHTTPFamilyURL] || objc_msgSend(v9, "safari_hasSameOriginAsURL:", self->_currentURL);
  v11[2](v11, v10);
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_SFReaderExtractor webViewWebContentProcessDidTerminate:v4];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:3 userInfo:0];
  [(_SFReaderExtractor *)self _finishWithContent:0 error:v5];
}

- (void)readerController:(id)a3 didCollectArticleContent:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138739971;
    v8 = v5;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Did collect article content: %{sensitive}@", &v7, 0xCu);
  }

  [(_SFReaderExtractor *)self _finishWithContent:v5 error:0];
}

- (void)_finishWithContent:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138740227;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_1D4644000, log, OS_LOG_TYPE_FAULT, "Encountered error on %{sensitive}@: %{public}@", &v3, 0x16u);
}

- (void)webView:(void *)a1 didFailProvisionalNavigation:(void *)a2 withError:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed provisional navigation: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)webView:(void *)a1 didFailNavigation:(void *)a2 withError:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed navigation: %{public}@", v7, v8, v9, v10, 2u);
}

@end