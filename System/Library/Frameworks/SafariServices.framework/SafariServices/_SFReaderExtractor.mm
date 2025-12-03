@interface _SFReaderExtractor
- (_SFReaderExtractor)init;
- (id)_configuration;
- (id)_processPool;
- (void)_finishWithContent:(id)content error:(id)error;
- (void)_invalidateTimers;
- (void)_scheduleLoadingTimeout;
- (void)_scheduleReaderDataExtractionTimeout;
- (void)_setUpReaderController;
- (void)getExtractedDataForURL:(id)l withCompletion:(id)completion;
- (void)getExtractedDataForURL:(id)l withData:(id)data withCompletion:(id)completion;
- (void)readerController:(id)controller didCollectArticleContent:(id)content;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
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
    safari_safariServicesInjectedBundleURL = [MEMORY[0x1E696AAE8] safari_safariServicesInjectedBundleURL];
    [v5 setInjectedBundleURL:safari_safariServicesInjectedBundleURL];

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
  _processPool = [(_SFReaderExtractor *)self _processPool];
  [v3 setProcessPool:_processPool];

  safari_nonPersistentDataStore = [MEMORY[0x1E69853B8] safari_nonPersistentDataStore];
  [v3 setWebsiteDataStore:safari_nonPersistentDataStore];

  [v3 _setClientNavigationsRunAtForegroundPriority:1];

  return v3;
}

- (void)_setUpReaderController
{
  v3 = objc_alloc(MEMORY[0x1E69853A0]);
  _configuration = [(_SFReaderExtractor *)self _configuration];
  v5 = [v3 initWithFrame:_configuration configuration:{0.0, 0.0, 1264.0, 760.0}];
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

- (void)_finishWithContent:(id)content error:(id)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  errorCopy = error;
  [(_SFReaderExtractor *)self _invalidateTimers];
  v8 = _Block_copy(self->_completionHandler);
  v9 = self->_currentURL;
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  currentURL = self->_currentURL;
  self->_currentURL = 0;

  if (v8)
  {
    if (errorCopy)
    {
      v8[2](v8, 0, errorCopy);
    }

    else
    {
      if ([contentCopy count])
      {
        v12 = [contentCopy objectForKeyedSubscript:@"error"];
        v13 = v12;
        if (v12)
        {
          v20[0] = @"error";
          v20[1] = @"stack";
          v21[0] = v12;
          v14 = [contentCopy objectForKeyedSubscript:?];
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
          v17 = [[_SFReaderExtractedData alloc] initWithReaderContent:contentCopy url:v9];
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

- (void)getExtractedDataForURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  v7 = _Block_copy(completion);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v7;

  objc_storeStrong(&self->_currentURL, l);
  webView = self->_webView;
  v10 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:lCopy];
  v11 = [(WKWebView *)webView loadRequest:v10];

  [(_SFReaderExtractor *)self _scheduleLoadingTimeout];
}

- (void)getExtractedDataForURL:(id)l withData:(id)data withCompletion:(id)completion
{
  lCopy = l;
  dataCopy = data;
  v10 = _Block_copy(completion);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v10;

  objc_storeStrong(&self->_currentURL, l);
  v12 = [(WKWebView *)self->_webView loadData:dataCopy MIMEType:@"text/html" characterEncodingName:@"UTF-8" baseURL:self->_currentURL];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(_SFReaderExtractor *)self _invalidateTimers:view];
  v5 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Collecting article content after finishing navigation", v6, 2u);
  }

  [(_SFReaderController *)self->_readerController collectArticleContent];
  [(_SFReaderExtractor *)self _scheduleReaderDataExtractionTimeout];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [_SFReaderExtractor webView:v7 didFailProvisionalNavigation:errorCopy withError:?];
  }

  [(_SFReaderExtractor *)self _finishWithContent:0 error:errorCopy];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  v8 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  v9 = v8;
  if (code == -999)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
      v12 = 138543362;
      v13 = safari_privacyPreservingDescription;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "Failed navigation but ignoring error: %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_SFReaderExtractor webView:v9 didFailNavigation:errorCopy withError:?];
    }

    [(_SFReaderExtractor *)self _finishWithContent:0 error:errorCopy];
  }
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  response = [responseCopy response];
  v9 = [response URL];

  LOBYTE(response) = [responseCopy isForMainFrame];
  v10 = (response & 1) != 0 || ![v9 safari_isHTTPFamilyURL] || objc_msgSend(v9, "safari_hasSameOriginAsURL:", self->_currentURL);
  handlerCopy[2](handlerCopy, v10);
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  v4 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_SFReaderExtractor webViewWebContentProcessDidTerminate:v4];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:3 userInfo:0];
  [(_SFReaderExtractor *)self _finishWithContent:0 error:v5];
}

- (void)readerController:(id)controller didCollectArticleContent:(id)content
{
  v9 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v6 = WBS_LOG_CHANNEL_PREFIXReaderExtraction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138739971;
    v8 = contentCopy;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Did collect article content: %{sensitive}@", &v7, 0xCu);
  }

  [(_SFReaderExtractor *)self _finishWithContent:contentCopy error:0];
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