@interface LPMetadataProvider
+ (id)_callbackQueue;
+ (id)_copyDefaultWebViewConfiguration;
+ (id)_incompleteMetadataRequests;
+ (id)_postProcessingQueue;
+ (id)_requestMetadataForRequest:(id)request completionHandler:(id)handler;
+ (id)_visionAnalysisQueue;
+ (id)requestMetadataForURL:(id)l completionHandler:(id)handler;
+ (id)requestMetadataForWebView:(id)view completionHandler:(id)handler;
- (BOOL)_firstImage:(id)image isSimilarToSecondImage:(id)secondImage usingAnalyzer:(id)analyzer;
- (BOOL)_shouldFailFetchDueToLockdownModeWithCompletionHandler:(id)handler;
- (BOOL)_switchToSpecializationIfPossibleForMIMEType:(id)type URL:(id)l hasLoadedResource:(BOOL)resource;
- (BOOL)_switchToSpecializationIfPossibleForMetadata:(id)metadata URL:(id)l;
- (BOOL)_switchToSpecializationIfPossibleForURL:(id)l;
- (LPMetadataProvider)init;
- (id)_copyWebViewConfiguration;
- (id)_startFetchingMetadataForRequest:(id)request completionHandler:(id)handler;
- (id)_startFetchingMetadataForURL:(id)l completionHandler:(id)handler;
- (id)_startFetchingMetadataForWebView:(id)view completionHandler:(id)handler;
- (id)_startFetchingMetadataForWebView:(id)view isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler;
- (id)subresourceFetcherConfiguration;
- (void)_cancelDueToTimeout;
- (void)_completedWithError:(id)error;
- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error;
- (void)_fetchAssociatedApplicationMetadataWithCompletionHandler:(id)handler;
- (void)_fetchImplicitIcons;
- (void)_fetchMetadataFromWebView;
- (void)_fetchSubresources;
- (void)_fetchedMetadata:(id)metadata;
- (void)_filteredUniqueContentImages:(id)images;
- (void)_finishedPostProcessingWithError:(id)error;
- (void)_generateSpecializationIfPossibleForCompleteMetadata:(id)metadata completionHandler:(id)handler;
- (void)_internalPostProcessResolvedMetadataWithEvent:(id)event completionHandler:(id)handler;
- (void)_internalStartFetchingMetadataForWebView:(id)view isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)_internalStartFetchingMetadataFromURLRequest;
- (void)_postProcessResolvedMetadataWithEvent:(id)event completionHandler:(id)handler;
- (void)_propagateYouTubeTimestamps;
- (void)_redistinguishImagesAndIcons;
- (void)_setMetadata:(id)metadata onlyUpgradeFields:(BOOL)fields;
- (void)_simplifyTitle;
- (void)_startFetchingSubresourcesForPartialMetadata:(id)metadata isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)_startWatchdogTimer;
- (void)_stopWatchdogTimer;
- (void)_willStartFetchingMetadata;
- (void)cancel;
- (void)dealloc;
- (void)deduplicateContentImagesWithEvent:(id)event inGroup:(id)group;
- (void)metadataProviderSpecialization:(id)specialization didCompleteWithMetadata:(id)metadata;
- (void)metadataProviderSpecialization:(id)specialization didFetchPreliminaryMetadata:(id)metadata;
- (void)metadataProviderSpecializationDidFail:(id)fail;
- (void)startFetchingMetadataForRequest:(NSURLRequest *)request completionHandler:(void *)completionHandler;
- (void)startFetchingMetadataForURL:(NSURL *)URL completionHandler:(void *)completionHandler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation LPMetadataProvider

+ (id)_callbackQueue
{
  v2 = _callbackQueue_queue;
  if (!_callbackQueue_queue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.LinkPresentation.MetadataProvider", v3);
    v5 = _callbackQueue_queue;
    _callbackQueue_queue = v4;

    v2 = _callbackQueue_queue;
  }

  return v2;
}

+ (id)_postProcessingQueue
{
  v2 = _postProcessingQueue_queue;
  if (!_postProcessingQueue_queue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.LinkPresentation.MetadataProvider.PostProcessing", v3);
    v5 = _postProcessingQueue_queue;
    _postProcessingQueue_queue = v4;

    v2 = _postProcessingQueue_queue;
  }

  return v2;
}

+ (id)_visionAnalysisQueue
{
  v2 = _visionAnalysisQueue_queue;
  if (!_visionAnalysisQueue_queue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.LinkPresentation.MetadataProvider.VisionAnalysis", v3);
    v5 = _visionAnalysisQueue_queue;
    _visionAnalysisQueue_queue = v4;

    v2 = _visionAnalysisQueue_queue;
  }

  return v2;
}

+ (id)_incompleteMetadataRequests
{
  if (_incompleteMetadataRequests_onceToken != -1)
  {
    +[LPMetadataProvider _incompleteMetadataRequests];
  }

  v3 = _incompleteMetadataRequests_incompleteRequests;

  return v3;
}

void __49__LPMetadataProvider__incompleteMetadataRequests__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _incompleteMetadataRequests_incompleteRequests;
  _incompleteMetadataRequests_incompleteRequests = v0;
}

+ (id)requestMetadataForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:lCopy];
  v9 = [self _requestMetadataForRequest:v8 completionHandler:handlerCopy];

  return v9;
}

+ (id)_requestMetadataForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = objc_alloc_init(self);
  [v8 startFetchingMetadataForRequest:requestCopy completionHandler:handlerCopy];

  return v8;
}

+ (id)requestMetadataForWebView:(id)view completionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v8 = objc_alloc_init(self);
  [v8 startFetchingMetadataForWebView:viewCopy completionHandler:handlerCopy];

  return v8;
}

+ (id)_copyDefaultWebViewConfiguration
{
  v2 = _copyDefaultWebViewConfiguration_configuration;
  if (!_copyDefaultWebViewConfiguration_configuration)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
    v4 = _copyDefaultWebViewConfiguration_configuration;
    _copyDefaultWebViewConfiguration_configuration = v3;

    [_copyDefaultWebViewConfiguration_configuration _setAllowsJavaScriptMarkup:0];
    [_copyDefaultWebViewConfiguration_configuration _setAllowsMetaRefresh:0];
    [_copyDefaultWebViewConfiguration_configuration _setLoadsSubresources:0];
    [_copyDefaultWebViewConfiguration_configuration _setClientNavigationsRunAtForegroundPriority:1];
    [_copyDefaultWebViewConfiguration_configuration _setIgnoresAppBoundDomains:1];
    preferences = [_copyDefaultWebViewConfiguration_configuration preferences];
    [preferences _setExtensibleSSOEnabled:0];
    v6 = objc_alloc_init(MEMORY[0x1E69853F0]);
    [v6 setJITEnabled:0];
    v7 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v6];
    [_copyDefaultWebViewConfiguration_configuration setProcessPool:v7];

    v2 = _copyDefaultWebViewConfiguration_configuration;
  }

  v8 = [v2 copy];
  nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v8 setWebsiteDataStore:nonPersistentDataStore];

  if (+[LPApplicationCompatibilityQuirks needsFreshWKUserContentController])
  {
    v10 = objc_alloc_init(MEMORY[0x1E6985350]);
    [_copyDefaultWebViewConfiguration_configuration setUserContentController:v10];
  }

  v11 = +[LPTestingOverrides customLoader];

  if (v11)
  {
    v12 = +[LPTestingOverrides customLoader];
    [v12 installCustomWebViewLoader:v8];
  }

  return v8;
}

- (id)_copyWebViewConfiguration
{
  _copyDefaultWebViewConfiguration = [objc_opt_class() _copyDefaultWebViewConfiguration];
  if (self->_sourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed && (v4 = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration], objc_msgSend(v4, "setSourceApplicationSecondaryIdentifier:", self->_sourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed), v5 = objc_msgSend(objc_alloc(MEMORY[0x1E69853B8]), "_initWithConfiguration:", v4), objc_msgSend(_copyDefaultWebViewConfiguration, "setWebsiteDataStore:", v5), v5, v4, self->_sourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed) || self->_requirePrivateRelayForAllNetworkTraffic)
  {
    defaultWebpagePreferences = [_copyDefaultWebViewConfiguration defaultWebpagePreferences];
    [defaultWebpagePreferences _setNetworkConnectionIntegrityPolicy:{objc_msgSend(defaultWebpagePreferences, "_networkConnectionIntegrityPolicy") | 0x200}];

    defaultWebpagePreferences2 = [_copyDefaultWebViewConfiguration defaultWebpagePreferences];
    [defaultWebpagePreferences2 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(defaultWebpagePreferences2, "_networkConnectionIntegrityPolicy") | 0x400}];
  }

  return _copyDefaultWebViewConfiguration;
}

- (LPMetadataProvider)init
{
  v9.receiver = self;
  v9.super_class = LPMetadataProvider;
  v2 = [(LPMetadataProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingFetchers = v2->_pendingFetchers;
    v2->_pendingFetchers = v3;

    v2->_useSpecializedProviders = 1;
    v2->_allowedSpecializedProviders = -1;
    v2->_shouldFetchSubresources = 1;
    *&v2->_shouldDownloadMediaSubresources = 257;
    v2->_timeout = 30.0;
    v5 = dispatch_group_create();
    subresourceFetchGroup = v2->_subresourceFetchGroup;
    v2->_subresourceFetchGroup = v5;

    v2->_loggingID = ++init_nextLoggingID_0;
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE886000, v0, v1, "LPMetadataProvider<%d>: dealloc", v2, v3, v4, v5, v6);
}

- (BOOL)_shouldFailFetchDueToLockdownModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[LPTestingOverrides forceEnableLockdownMode];
  mEMORY[0x1E69AD390] = [MEMORY[0x1E69AD390] shared];
  v7 = v5 | [mEMORY[0x1E69AD390] enabled];

  if (v7)
  {
    v8 = _Block_copy(handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v8;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__LPMetadataProvider__shouldFailFetchDueToLockdownModeWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7A35450;
    v11[4] = self;
    ensureOnMainThread(v11);
  }

  return v7;
}

- (void)_willStartFetchingMetadata
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [LPEventTimeline eventWithType:0 subtitle:0];
  event = self->_event;
  self->_event = v3;

  v5 = +[LPMetadataProvider _incompleteMetadataRequests];
  objc_sync_enter(v5);
  v6 = +[LPMetadataProvider _incompleteMetadataRequests];
  [v6 addObject:self];

  objc_sync_exit(v5);
  [(LPMetadataProvider *)self _startWatchdogTimer];
  if (self->_fetchIsNotUserInitiated)
  {
    v7 = LPLogChannelFetching();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      loggingID = self->_loggingID;
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = loggingID;
      _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: using zero-click fetch mode", &buf, 8u);
    }
  }

  v9 = LPLogChannelFetching();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_loggingID;
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v10;
    _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: acquiring process assertion", &buf, 8u);
  }

  v11 = objc_alloc(MEMORY[0x1E698D038]);
  v12 = getpid();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke;
  v17[3] = &unk_1E7A359F0;
  v17[4] = self;
  v13 = [v11 initWithPID:v12 flags:1 reason:4 name:@"com.apple.LinkPresentation.MetadataProvider.Fetch" withHandler:v17];
  processAssertion = self->_processAssertion;
  self->_processAssertion = v13;

  objc_initWeak(&buf, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_34;
  v15[3] = &unk_1E7A35D40;
  objc_copyWeak(&v16, &buf);
  [(BKSProcessAssertion *)self->_processAssertion setInvalidationHandler:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf);
}

void __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_2;
    block[3] = &unk_1E7A35450;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling fetch because process assertion was not acquired", v5, 8u);
  }

  return [*(a1 + 32) _cancelDueToTimeout];
}

void __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_34(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_2_35;
  block[3] = &unk_1E7A35D40;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __48__LPMetadataProvider__willStartFetchingMetadata__block_invoke_2_35(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LPLogChannelFetching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[2];
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling fetch due to process assertion expiration", v4, 8u);
    }

    [WeakRetained _stopWatchdogTimer];
    [WeakRetained _cancelDueToTimeout];
  }
}

- (void)startFetchingMetadataForURL:(NSURL *)URL completionHandler:(void *)completionHandler
{
  v8 = URL;
  v6 = completionHandler;
  v7 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v8];
  [(LPMetadataProvider *)self startFetchingMetadataForRequest:v7 completionHandler:v6];
}

- (void)startFetchingMetadataForRequest:(NSURLRequest *)request completionHandler:(void *)completionHandler
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = request;
  v8 = completionHandler;
  if (![(LPMetadataProvider *)self _shouldFailFetchDueToLockdownModeWithCompletionHandler:v8])
  {
    if (v7 && ([(NSURLRequest *)v7 URL], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      [(LPMetadataProvider *)self _willStartFetchingMetadata];
      v10 = _Block_copy(v8);
      v11 = self->_completionHandler;
      self->_completionHandler = v10;

      objc_storeStrong(&self->_URLRequest, request);
      v12 = [(NSURLRequest *)self->_URLRequest URL];
      originalURL = self->_originalURL;
      self->_originalURL = v12;

      metadata = self->_metadata;
      if (metadata)
      {
        v15 = metadata;
      }

      else
      {
        v15 = objc_alloc_init(LPLinkMetadata);
      }

      v17 = self->_metadata;
      self->_metadata = v15;

      v18 = [LPPresentationSpecializations canonicalMetadataURLForURL:self->_originalURL];
      if ([v18 isEqual:self->_originalURL])
      {
        v19 = 0;
      }

      else
      {
        v19 = [(NSURLRequest *)self->_URLRequest mutableCopy];
        [(NSURLRequest *)v19 setURL:v18];
      }

      v20 = urlByRemovingTrackingInformation(v18);
      if (([v18 isEqual:v20] & 1) == 0)
      {
        if (!v19)
        {
          v19 = [(NSURLRequest *)self->_URLRequest mutableCopy];
        }

        [(NSURLRequest *)v19 setURL:v20];
        v21 = LPLogChannelFetching();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          loggingID = self->_loggingID;
          *buf = 67109120;
          v32 = loggingID;
          _os_log_impl(&dword_1AE886000, v21, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: removed known tracking information from URL", buf, 8u);
        }
      }

      if (self->_sourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed || self->_requirePrivateRelayForAllNetworkTraffic)
      {
        if (!v19)
        {
          v19 = [(NSURLRequest *)self->_URLRequest mutableCopy];
        }

        [(NSURLRequest *)v19 _setPrivacyProxyFailClosed:1];
      }

      URLRequest = v19;
      if (!v19)
      {
        URLRequest = self->_URLRequest;
      }

      objc_storeStrong(&self->_URLRequest, URLRequest);
      v24 = LPLogChannelFetching();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_loggingID;
        *buf = 67109120;
        v32 = v25;
        _os_log_impl(&dword_1AE886000, v24, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: start fetching for URL", buf, 8u);
      }

      if (self->_hasStartedFetching)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to start fetching on an LPMetadataProvider that has already started. LPMetadataProvider is a one-shot object."];
      }

      self->_hasStartedFetching = 1;
      v26 = [(NSURLRequest *)self->_URLRequest URL];
      v27 = [(LPMetadataProvider *)self _switchToSpecializationIfPossibleForURL:v26];

      if (!v27)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __72__LPMetadataProvider_startFetchingMetadataForRequest_completionHandler___block_invoke_42;
        v28[3] = &unk_1E7A35450;
        v28[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v28);
      }
    }

    else
    {
      v16 = +[LPMetadataProvider _callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__LPMetadataProvider_startFetchingMetadataForRequest_completionHandler___block_invoke;
      block[3] = &unk_1E7A356A0;
      block[4] = self;
      v30 = v8;
      dispatch_async(v16, block);
    }
  }
}

void __72__LPMetadataProvider_startFetchingMetadataForRequest_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: failing fetch due to nil URL", v6, 8u);
  }

  v4 = *(a1 + 40);
  v5 = makeLPError(2, 0);
  (*(v4 + 16))(v4, 0, v5);
}

_BYTE *__72__LPMetadataProvider_startFetchingMetadataForRequest_completionHandler___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[96] & 1) == 0)
  {
    return [result _internalStartFetchingMetadataFromURLRequest];
  }

  return result;
}

- (void)_internalStartFetchingMetadataFromURLRequest
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSURLRequest *)self->_URLRequest URL];
  _lp_isHTTPFamilyURL = [v3 _lp_isHTTPFamilyURL];

  if (_lp_isHTTPFamilyURL)
  {
    [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:3];
    v5 = [(LPEvent *)self->_event childWithType:2 subtitle:@"Main Resource"];
    mainResourceLoadEvent = self->_mainResourceLoadEvent;
    self->_mainResourceLoadEvent = v5;

    v7 = [(NSURLRequest *)self->_URLRequest URL];
    [(LPEvent *)self->_mainResourceLoadEvent setURL:v7];

    [(LPEvent *)self->_webProcessLaunchEvent didCompleteWithStatus:3];
    v8 = [(LPEvent *)self->_event childWithType:7 subtitle:0];
    webProcessLaunchEvent = self->_webProcessLaunchEvent;
    self->_webProcessLaunchEvent = v8;

    self->_hasStartedFetchingMetadataFromWebView = 0;
    if (!self->_webView)
    {
      v10 = objc_alloc(MEMORY[0x1E69853A0]);
      _copyWebViewConfiguration = [(LPMetadataProvider *)self _copyWebViewConfiguration];
      v12 = [v10 initWithFrame:_copyWebViewConfiguration configuration:{0.0, 0.0, 1024.0, 768.0}];
      webView = self->_webView;
      self->_webView = v12;

      [(WKWebView *)self->_webView setNavigationDelegate:self];
    }

    if (self->_fetchWithDefaultUserAgentFailedPossiblyTransiently)
    {
      v14 = LPLogChannelFetching();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        loggingID = self->_loggingID;
        v22 = 67109120;
        v23 = loggingID;
        _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: retrying main resource load with alternate user agent", &v22, 8u);
      }

      [(WKWebView *)self->_webView setCustomUserAgent:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15"];
    }

    else
    {
      v18 = [(NSURLRequest *)self->_URLRequest URL];
      v19 = [LPPresentationSpecializations userAgentForURL:v18];
      [(WKWebView *)self->_webView setCustomUserAgent:v19];
    }

    v20 = [(WKWebView *)self->_webView loadRequest:self->_URLRequest];
    currentNavigation = self->_currentNavigation;
    self->_currentNavigation = v20;

    if (self->_shouldFetchSubresources)
    {
      [(LPMetadataProvider *)self _fetchImplicitIcons];
    }
  }

  else
  {
    v16 = LPLogChannelFetching();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_loggingID;
      v22 = 67109120;
      v23 = v17;
      _os_log_impl(&dword_1AE886000, v16, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling before main resource load due to non-HTTP-family URL", &v22, 8u);
    }

    [(LPMetadataProvider *)self _failedWithErrorCode:2 underlyingError:0];
  }
}

- (id)_startFetchingMetadataForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:lCopy];
  v9 = [(LPMetadataProvider *)self _startFetchingMetadataForRequest:v8 completionHandler:handlerCopy];

  return v9;
}

- (id)_startFetchingMetadataForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [requestCopy URL];
  v9 = objc_alloc_init(LPLinkMetadata);
  metadata = self->_metadata;
  self->_metadata = v9;

  _createAsynchronousLoadDeferralToken = [(LPLinkMetadata *)self->_metadata _createAsynchronousLoadDeferralToken];
  objc_storeStrong(&self->_originalURL, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__LPMetadataProvider__startFetchingMetadataForRequest_completionHandler___block_invoke;
  v20 = &unk_1E7A363E8;
  v12 = _createAsynchronousLoadDeferralToken;
  v21 = v12;
  v13 = handlerCopy;
  v22 = v13;
  [(LPMetadataProvider *)self startFetchingMetadataForRequest:requestCopy completionHandler:&v17];
  [(LPLinkMetadata *)self->_metadata setOriginalURL:v8, v17, v18, v19, v20];
  v14 = self->_metadata;
  v15 = v14;

  return v14;
}

void __73__LPMetadataProvider__startFetchingMetadataForRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_internalStartFetchingMetadataForWebView:(id)view isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler
{
  initiatedCopy = initiated;
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  handlerCopy = handler;
  if (![(LPMetadataProvider *)self _shouldFailFetchDueToLockdownModeWithCompletionHandler:handlerCopy])
  {
    v11 = [viewCopy URL];
    originalURL = self->_originalURL;
    self->_originalURL = v11;

    v13 = [(NSURL *)self->_originalURL _lp_requestWithAttribution:initiatedCopy];
    URLRequest = self->_URLRequest;
    self->_URLRequest = v13;

    v15 = self->_URLRequest;
    if (v15 && ([(NSURLRequest *)v15 URL], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v17 = [(NSURLRequest *)self->_URLRequest URL];
      v18 = [LPPresentationSpecializations shouldLoadInsteadOfUsingExistingWebViewForURL:v17];

      if (v18)
      {
        v19 = LPLogChannelFetching();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          loggingID = self->_loggingID;
          *buf = 67109120;
          v31 = loggingID;
          v21 = "LPMetadataProvider<%d>: falling back from using existing WKWebView to fetching because of specializations";
LABEL_11:
          _os_log_impl(&dword_1AE886000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 8u);
          goto LABEL_12;
        }

        goto LABEL_12;
      }

      if ([viewCopy isLoading])
      {
        v19 = LPLogChannelFetching();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_loggingID;
          *buf = 67109120;
          v31 = v23;
          v21 = "LPMetadataProvider<%d>: falling back from using existing WKWebView to fetching because web view is still loading";
          goto LABEL_11;
        }

LABEL_12:
        [(LPMetadataProvider *)self startFetchingMetadataForRequest:self->_URLRequest completionHandler:handlerCopy];
        goto LABEL_20;
      }

      [(LPMetadataProvider *)self _willStartFetchingMetadata];
      v24 = _Block_copy(handlerCopy);
      completionHandler = self->_completionHandler;
      self->_completionHandler = v24;

      objc_storeStrong(&self->_webView, view);
      self->_fetchingFromExistingWebView = 1;
      v26 = LPLogChannelFetching();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_loggingID;
        *buf = 67109120;
        v31 = v27;
        _os_log_impl(&dword_1AE886000, v26, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: start fetching for WKWebView", buf, 8u);
      }

      [(LPMetadataProvider *)self _fetchMetadataFromWebView];
      if (self->_shouldFetchSubresources)
      {
        [(LPMetadataProvider *)self _fetchImplicitIcons];
      }

      if (self->_hasStartedFetching)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to start fetching on an LPMetadataProvider that has already started. LPMetadataProvider is a one-shot object."];
      }

      self->_hasStartedFetching = 1;
    }

    else
    {
      v22 = +[LPMetadataProvider _callbackQueue];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __99__LPMetadataProvider__internalStartFetchingMetadataForWebView_isNonAppInitiated_completionHandler___block_invoke;
      v28[3] = &unk_1E7A356A0;
      v28[4] = self;
      v29 = handlerCopy;
      dispatch_async(v22, v28);
    }
  }

LABEL_20:
}

void __99__LPMetadataProvider__internalStartFetchingMetadataForWebView_isNonAppInitiated_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: failing fetch from existing WKWebView due to nil URL", v6, 8u);
  }

  v4 = *(a1 + 40);
  v5 = makeLPError(2, 0);
  (*(v4 + 16))(v4, 0, v5);
}

- (id)_startFetchingMetadataForWebView:(id)view completionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v8 = objc_alloc_init(LPLinkMetadata);
  metadata = self->_metadata;
  self->_metadata = v8;

  _createAsynchronousLoadDeferralToken = [(LPLinkMetadata *)self->_metadata _createAsynchronousLoadDeferralToken];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__LPMetadataProvider__startFetchingMetadataForWebView_completionHandler___block_invoke;
  v20 = &unk_1E7A363E8;
  v11 = _createAsynchronousLoadDeferralToken;
  v21 = v11;
  v12 = handlerCopy;
  v22 = v12;
  [(LPMetadataProvider *)self _internalStartFetchingMetadataForWebView:viewCopy isNonAppInitiated:0 completionHandler:&v17];
  [(LPLinkMetadata *)self->_metadata setOriginalURL:self->_originalURL, v17, v18, v19, v20];
  title = [viewCopy title];
  [(LPLinkMetadata *)self->_metadata setTitle:title];

  v14 = self->_metadata;
  v15 = v14;

  return v14;
}

void __73__LPMetadataProvider__startFetchingMetadataForWebView_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (id)_startFetchingMetadataForWebView:(id)view isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler
{
  initiatedCopy = initiated;
  viewCopy = view;
  handlerCopy = handler;
  v10 = objc_alloc_init(LPLinkMetadata);
  metadata = self->_metadata;
  self->_metadata = v10;

  _createAsynchronousLoadDeferralToken = [(LPLinkMetadata *)self->_metadata _createAsynchronousLoadDeferralToken];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __91__LPMetadataProvider__startFetchingMetadataForWebView_isNonAppInitiated_completionHandler___block_invoke;
  v22 = &unk_1E7A363E8;
  v13 = _createAsynchronousLoadDeferralToken;
  v23 = v13;
  v14 = handlerCopy;
  v24 = v14;
  [(LPMetadataProvider *)self _internalStartFetchingMetadataForWebView:viewCopy isNonAppInitiated:initiatedCopy completionHandler:&v19];
  [(LPLinkMetadata *)self->_metadata setOriginalURL:self->_originalURL, v19, v20, v21, v22];
  title = [viewCopy title];
  [(LPLinkMetadata *)self->_metadata setTitle:title];

  v16 = self->_metadata;
  v17 = v16;

  return v16;
}

void __91__LPMetadataProvider__startFetchingMetadataForWebView_isNonAppInitiated_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_startFetchingSubresourcesForPartialMetadata:(id)metadata isNonAppInitiated:(BOOL)initiated completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  handlerCopy = handler;
  if (![(LPMetadataProvider *)self _shouldFailFetchDueToLockdownModeWithCompletionHandler:handlerCopy])
  {
    self->_subresourceFetchIsNonAppInitiated = initiated;
    [(LPMetadataProvider *)self _willStartFetchingMetadata];
    v11 = _Block_copy(handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v11;

    objc_storeStrong(&self->_metadata, metadata);
    originalURL = [metadataCopy originalURL];
    originalURL = self->_originalURL;
    self->_originalURL = originalURL;

    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      loggingID = self->_loggingID;
      v17[0] = 67109120;
      v17[1] = loggingID;
      _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: performing deferred fetch of subresources", v17, 8u);
    }

    [(LPMetadataProvider *)self _fetchImplicitIcons];
    [(LPMetadataProvider *)self _fetchSubresources];
    if (self->_hasStartedFetching)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to start fetching on an LPMetadataProvider that has already started. LPMetadataProvider is a one-shot object."];
    }

    self->_hasStartedFetching = 1;
  }
}

- (void)_startWatchdogTimer
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  timeout = self->_timeout;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__LPMetadataProvider__startWatchdogTimer__block_invoke;
  v7[3] = &unk_1E7A36410;
  objc_copyWeak(&v8, &location);
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:timeout];
  watchdog = self->_watchdog;
  self->_watchdog = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__LPMetadataProvider__startWatchdogTimer__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__LPMetadataProvider__startWatchdogTimer__block_invoke_2;
  block[3] = &unk_1E7A35D40;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __41__LPMetadataProvider__startWatchdogTimer__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 96) == 1)
    {
      v3 = LPLogChannelFetching();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __41__LPMetadataProvider__startWatchdogTimer__block_invoke_2_cold_1();
      }
    }

    else
    {
      v4 = LPLogChannelFetching();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v2[2];
        v6[0] = 67109120;
        v6[1] = v5;
        _os_log_impl(&dword_1AE886000, v4, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: watchdog timer fired, cancelling", v6, 8u);
      }

      [v2 _cancelDueToTimeout];
    }
  }
}

- (void)_stopWatchdogTimer
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE886000, v0, v1, "LPMetadataProvider<%d>: invalidating watchdog timer", v2, v3, v4, v5, v6);
}

- (void)_setMetadata:(id)metadata onlyUpgradeFields:(BOOL)fields
{
  metadataCopy = metadata;
  metadata = self->_metadata;
  p_metadata = &self->_metadata;
  metadataCopy2 = metadata;
  v10 = metadataCopy;
  if (metadata)
  {
    [LPLinkMetadata _copyPropertiesFrom:metadataCopy2 onlyUpgradeFields:"_copyPropertiesFrom:onlyUpgradeFields:"];
  }

  else
  {
    objc_storeStrong(p_metadata, metadata);
  }
}

- (void)_fetchMetadataFromWebView
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1AE886000, v0, OS_LOG_TYPE_ERROR, "LPMetadataProvider<%d>: unexpectedly reached _fetchMetadataFromWebView more than once; ignoring", v1, 8u);
}

void __47__LPMetadataProvider__fetchMetadataFromWebView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) _failedWithErrorCode:2 underlyingError:v6];
    [*(a1 + 40) didCompleteWithStatus:2];
  }

  else
  {
    [*(a1 + 40) didCompleteWithStatus:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = [v7 objectForKeyedSubscript:@"error"];

      if (v8)
      {
        v9 = LPLogChannelFetching();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(*(a1 + 32) + 8);
          v11 = [v7 objectForKeyedSubscript:@"error"];
          __47__LPMetadataProvider__fetchMetadataFromWebView__block_invoke_cold_2(v11, v15, v10, v9);
        }

        [*(a1 + 32) _failedWithErrorCode:2 underlyingError:0];
      }

      else
      {
        [*(a1 + 32) _fetchedMetadata:v7];
      }
    }

    else
    {
      v12 = LPLogChannelFetching();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(a1 + 32) + 8);
        v14 = objc_opt_class();
        __47__LPMetadataProvider__fetchMetadataFromWebView__block_invoke_cold_1(v14, v15, v13, v12);
      }

      [*(a1 + 32) _failedWithErrorCode:2 underlyingError:0];
    }
  }
}

- (BOOL)_switchToSpecializationIfPossibleForMIMEType:(id)type URL:(id)l hasLoadedResource:(BOOL)resource
{
  resourceCopy = resource;
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  lCopy = l;
  if (self->_useSpecializedProviders && !self->_specializationState)
  {
    v12 = [LPMetadataProviderSpecializationContext alloc];
    LOBYTE(v19) = self->_fetchIsNotUserInitiated;
    v13 = [(LPMetadataProviderSpecializationContext *)v12 initWithOriginalURL:self->_originalURL postRedirectURL:lCopy MIMEType:typeCopy webView:self->_webView hasLoadedResource:resourceCopy shouldFetchSubresources:self->_shouldFetchSubresources allowedSpecializations:self->_allowedSpecializedProviders fetchIsNotUserInitiated:v19];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__LPMetadataProvider__switchToSpecializationIfPossibleForMIMEType_URL_hasLoadedResource___block_invoke;
    v20[3] = &unk_1E7A36460;
    v20[4] = self;
    [(LPMetadataProviderSpecializationContext *)v13 setEventGenerator:v20];
    v14 = [LPMetadataProviderSpecialization specializedMetadataProviderForResourceWithContext:v13];
    v10 = v14 != 0;
    if (v14)
    {
      v15 = LPLogChannelFetching();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        loggingID = self->_loggingID;
        v17 = objc_opt_class();
        *buf = 67109378;
        v22 = loggingID;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: switching to specialization (%@) due to MIME type", buf, 0x12u);
      }

      [(LPFetcherGroup *)self->_iconFetcherGroup cancel];
      iconFetcherGroup = self->_iconFetcherGroup;
      self->_iconFetcherGroup = 0;

      objc_storeStrong(&self->_specializedMetadataProvider, v14);
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider setDelegate:self];
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider start];
      self->_specializationState = 1;
      -[LPMetadataProviderSpecializationContext ensureEventWithSpecialization:](v13, "ensureEventWithSpecialization:", [objc_opt_class() specialization]);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_switchToSpecializationIfPossibleForMetadata:(id)metadata URL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  lCopy = l;
  if (self->_useSpecializedProviders && !self->_specializationState)
  {
    v10 = [LPMetadataProviderSpecializationContext alloc];
    originalURL = self->_originalURL;
    _MIMEType = [(WKWebView *)self->_webView _MIMEType];
    LOBYTE(v19) = self->_fetchIsNotUserInitiated;
    v13 = [(LPMetadataProviderSpecializationContext *)v10 initWithOriginalURL:originalURL postRedirectURL:lCopy MIMEType:_MIMEType webView:self->_webView hasLoadedResource:1 shouldFetchSubresources:self->_shouldFetchSubresources allowedSpecializations:self->_allowedSpecializedProviders fetchIsNotUserInitiated:v19];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__LPMetadataProvider__switchToSpecializationIfPossibleForMetadata_URL___block_invoke;
    v20[3] = &unk_1E7A36460;
    v20[4] = self;
    [(LPMetadataProviderSpecializationContext *)v13 setEventGenerator:v20];
    v14 = [LPMetadataProviderSpecialization specializedMetadataProviderForMetadata:metadataCopy withContext:v13];
    v8 = v14 != 0;
    if (v14)
    {
      v15 = LPLogChannelFetching();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        loggingID = self->_loggingID;
        v17 = objc_opt_class();
        *buf = 67109378;
        v22 = loggingID;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: switching to specialization (%@) due to retrieved metadata", buf, 0x12u);
      }

      [(LPFetcherGroup *)self->_iconFetcherGroup cancel];
      iconFetcherGroup = self->_iconFetcherGroup;
      self->_iconFetcherGroup = 0;

      objc_storeStrong(&self->_specializedMetadataProvider, v14);
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider setDelegate:self];
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider start];
      self->_specializationState = 1;
      -[LPMetadataProviderSpecializationContext ensureEventWithSpecialization:](v13, "ensureEventWithSpecialization:", [objc_opt_class() specialization]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_switchToSpecializationIfPossibleForURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (self->_useSpecializedProviders && !self->_specializationState)
  {
    v7 = [LPMetadataProviderSpecializationContext alloc];
    LOBYTE(v15) = self->_fetchIsNotUserInitiated;
    v8 = [(LPMetadataProviderSpecializationContext *)v7 initWithOriginalURL:self->_originalURL postRedirectURL:lCopy MIMEType:0 webView:self->_webView hasLoadedResource:0 shouldFetchSubresources:self->_shouldFetchSubresources allowedSpecializations:self->_allowedSpecializedProviders fetchIsNotUserInitiated:v15];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__LPMetadataProvider__switchToSpecializationIfPossibleForURL___block_invoke;
    v16[3] = &unk_1E7A36460;
    v16[4] = self;
    [(LPMetadataProviderSpecializationContext *)v8 setEventGenerator:v16];
    v9 = [LPMetadataProviderSpecialization specializedMetadataProviderForURLWithContext:v8];
    v5 = v9 != 0;
    if (v9)
    {
      v10 = LPLogChannelFetching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        loggingID = self->_loggingID;
        v12 = objc_opt_class();
        *buf = 67109378;
        v18 = loggingID;
        v19 = 2112;
        v20 = v12;
        v13 = v12;
        _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: switching to specialization (%@) due to URL", buf, 0x12u);
      }

      [(LPFetcherGroup *)self->_iconFetcherGroup cancel];
      iconFetcherGroup = self->_iconFetcherGroup;
      self->_iconFetcherGroup = 0;

      objc_storeStrong(&self->_specializedMetadataProvider, v9);
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider setDelegate:self];
      [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider start];
      self->_specializationState = 1;
      -[LPMetadataProviderSpecializationContext ensureEventWithSpecialization:](v8, "ensureEventWithSpecialization:", [objc_opt_class() specialization]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_generateSpecializationIfPossibleForCompleteMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_useSpecializedProviders && self->_specializationState != 1)
  {
    v9 = [LPMetadataProviderSpecializationContext alloc];
    originalURL = self->_originalURL;
    v11 = [metadataCopy URL];
    _MIMEType = [(WKWebView *)self->_webView _MIMEType];
    LOBYTE(v15) = self->_fetchIsNotUserInitiated;
    v13 = [(LPMetadataProviderSpecializationContext *)v9 initWithOriginalURL:originalURL postRedirectURL:v11 MIMEType:_MIMEType webView:self->_webView hasLoadedResource:1 shouldFetchSubresources:self->_shouldFetchSubresources allowedSpecializations:self->_allowedSpecializedProviders fetchIsNotUserInitiated:v15];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__LPMetadataProvider__generateSpecializationIfPossibleForCompleteMetadata_completionHandler___block_invoke;
    v20[3] = &unk_1E7A36460;
    v20[4] = self;
    [(LPMetadataProviderSpecializationContext *)v13 setEventGenerator:v20];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__LPMetadataProvider__generateSpecializationIfPossibleForCompleteMetadata_completionHandler___block_invoke_2;
    block[3] = &unk_1E7A36488;
    v17 = metadataCopy;
    v18 = v13;
    v19 = v8;
    v14 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __93__LPMetadataProvider__generateSpecializationIfPossibleForCompleteMetadata_completionHandler___block_invoke_2(void *a1)
{
  result = [LPMetadataProviderSpecialization generateSpecializedMetadataForCompleteMetadata:a1[4] withContext:a1[5] completionHandler:a1[6]];
  if ((result & 1) == 0)
  {
    v3 = *(a1[6] + 16);

    return v3();
  }

  return result;
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = LPLogChannelFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    *buf = 67109120;
    v7 = loggingID;
    _os_log_impl(&dword_1AE886000, v3, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: fetch cancelled by client", buf, 8u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__LPMetadataProvider_cancel__block_invoke;
  v5[3] = &unk_1E7A35450;
  v5[4] = self;
  ensureOnMainThread(v5);
}

uint64_t __28__LPMetadataProvider_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancelled:1];
  v2 = *(a1 + 32);
  if (v2[22])
  {
    [v2[22] cancel];
    v2 = *(a1 + 32);
  }

  return [v2 _failedWithErrorCode:3 underlyingError:0];
}

- (void)_cancelDueToTimeout
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = LPLogChannelFetching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v7[0] = 67109120;
    v7[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v3, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling due to timeout", v7, 8u);
  }

  [(LPMetadataProvider *)self _stopWatchdogTimer];
  [(LPMetadataProvider *)self setCancelled:1];
  self->_timedOut = 1;
  specializedMetadataProvider = self->_specializedMetadataProvider;
  if (specializedMetadataProvider)
  {
    [(LPMetadataProviderSpecialization *)specializedMetadataProvider cancel];
  }

  if (self->_startedPostProcessing)
  {
    v6 = makeLPError(4, 0);
    [(LPMetadataProvider *)self _finishedPostProcessingWithError:v6];
  }

  else
  {
    [(LPMetadataProvider *)self _failedWithErrorCode:4 underlyingError:0];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  targetFrame = [actionCopy targetFrame];
  isMainFrame = [targetFrame isMainFrame];

  if ((isMainFrame & 1) == 0 || ([actionCopy request], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "URL"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[LPMetadataProvider _switchToSpecializationIfPossibleForURL:](self, "_switchToSpecializationIfPossibleForURL:", v12), v12, v11, v13))
  {
    v14 = 0;
LABEL_4:
    handlerCopy[2](handlerCopy, v14);
    goto LABEL_5;
  }

  request = [actionCopy request];
  v16 = [request URL];
  _lp_isHTTPFamilyURL = [v16 _lp_isHTTPFamilyURL];

  if (_lp_isHTTPFamilyURL)
  {
    v14 = 1;
    goto LABEL_4;
  }

  v18 = LPLogChannelFetching();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v20[0] = 67109120;
    v20[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v18, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling main resource load due to non-HTTP-family URL", v20, 8u);
  }

  handlerCopy[2](handlerCopy, 0);
  [(LPMetadataProvider *)self _failedWithErrorCode:2 underlyingError:0];
LABEL_5:
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  response = [responseCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    response2 = [responseCopy response];
    expectedContentLength = [response2 expectedContentLength];

    response3 = [responseCopy response];
    mIMEType = [response3 MIMEType];
    v19 = [LPMIMETypeRegistry isWebPageType:mIMEType];

    if (v19)
    {
      if (expectedContentLength > 0x100000)
      {
        v20 = LPLogChannelFetching();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      response4 = [responseCopy response];
      mIMEType2 = [response4 MIMEType];
      v23 = [LPMIMETypeRegistry isImageType:mIMEType2];

      if (v23)
      {
        if (expectedContentLength > 10485760)
        {
          v20 = LPLogChannelFetching();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
LABEL_16:
            loggingID = self->_loggingID;
            v37 = 67109376;
            v38 = loggingID;
            v39 = 2048;
            statusCode2 = expectedContentLength;
            _os_log_impl(&dword_1AE886000, v20, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling main resource load due to excessive size: %{iec-bytes}lld", &v37, 0x12u);
          }

LABEL_23:
          v34 = 0;
LABEL_32:
          handlerCopy[2](handlerCopy, v34);
          goto LABEL_33;
        }
      }

      else
      {
        response5 = [responseCopy response];
        mIMEType3 = [response5 MIMEType];
        response6 = [responseCopy response];
        v28 = [response6 URL];
        v29 = [(LPMetadataProvider *)self _switchToSpecializationIfPossibleForMIMEType:mIMEType3 URL:v28 hasLoadedResource:0];

        if (v29)
        {
          goto LABEL_23;
        }

        if (!self->_useSpecializedProviders || (self->_allowedSpecializedProviders & 2) == 0)
        {
          v30 = LPLogChannelFetching();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = self->_loggingID;
            response7 = [responseCopy response];
            mIMEType4 = [response7 MIMEType];
            v37 = 67109378;
            v38 = v31;
            v39 = 2112;
            statusCode2 = mIMEType4;
            _os_log_impl(&dword_1AE886000, v30, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling main resource load due to unknown MIME type: %@", &v37, 0x12u);
          }

          goto LABEL_23;
        }

        if (expectedContentLength >= 104857601)
        {
          v20 = LPLogChannelFetching();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }
    }

    v34 = 1;
    goto LABEL_32;
  }

  response8 = [responseCopy response];
  statusCode = [response8 statusCode];
  if (![MEMORY[0x1E695AC08] isErrorStatusCode:statusCode])
  {

    goto LABEL_9;
  }

  if (self->_fetchWithDefaultUserAgentFailedPossiblyTransiently || statusCode != 403)
  {
    v35 = LPLogChannelFetching();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = self->_loggingID;
      v37 = 67109376;
      v38 = v36;
      v39 = 2048;
      statusCode2 = [response8 statusCode];
      _os_log_impl(&dword_1AE886000, v35, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: cancelling main resource load due to error status code: %ld", &v37, 0x12u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13 = LPLogChannelFetching();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_loggingID;
      v37 = 67109376;
      v38 = v14;
      v39 = 2048;
      statusCode2 = [response8 statusCode];
      _os_log_impl(&dword_1AE886000, v13, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: main resource load failed due to (possibly transient) error status code: %ld", &v37, 0x12u);
    }

    handlerCopy[2](handlerCopy, 0);
    self->_fetchWithDefaultUserAgentFailedPossiblyTransiently = 1;
    [(LPMetadataProvider *)self _internalStartFetchingMetadataFromURLRequest];
  }

LABEL_33:
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_currentNavigation == navigation)
  {
    [(LPEvent *)self->_webProcessLaunchEvent didCompleteWithStatus:1];
    webProcessLaunchEvent = self->_webProcessLaunchEvent;
    self->_webProcessLaunchEvent = 0;
  }

  else
  {
    v5 = LPLogChannelFetching();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      loggingID = self->_loggingID;
      v8[0] = 67109120;
      v8[1] = loggingID;
      _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: ignoring -webView:didStartProvisionalNavigation: from previous navigation", v8, 8u);
    }
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v14 = *MEMORY[0x1E69E9840];
  currentNavigation = self->_currentNavigation;
  v7 = LPLogChannelFetching();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (currentNavigation == navigation)
  {
    if (v8)
    {
      loggingID = self->_loggingID;
      v12 = 67109120;
      v13 = loggingID;
      _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: -webView:didFinishNavigation:", &v12, 8u);
    }

    [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:1];
    mainResourceLoadEvent = self->_mainResourceLoadEvent;
    self->_mainResourceLoadEvent = 0;

    [(LPMetadataProvider *)self _fetchMetadataFromWebView];
  }

  else if (v8)
  {
    v9 = self->_loggingID;
    v12 = 67109120;
    v13 = v9;
    _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: ignoring -webView:didFinishNavigation: from previous navigation", &v12, 8u);
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_currentNavigation == navigation)
  {
    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      loggingID = self->_loggingID;
      v13 = 67109120;
      v14 = loggingID;
      _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: -webView:didFailNavigation:", &v13, 8u);
    }

    [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:2];
    mainResourceLoadEvent = self->_mainResourceLoadEvent;
    self->_mainResourceLoadEvent = 0;

    [(LPMetadataProvider *)self _failedWithErrorCode:2 underlyingError:errorCopy];
  }

  else
  {
    v8 = LPLogChannelFetching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_loggingID;
      v13 = 67109120;
      v14 = v9;
      _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: ignoring -webView:didFailNavigation: from previous navigation", &v13, 8u);
    }
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  if (self->_currentNavigation == navigationCopy)
  {
    if (!self->_specializedMetadataProvider)
    {
      v13 = LPLogChannelFetching();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        loggingID = self->_loggingID;
        v16 = 67109120;
        v17 = loggingID;
        _os_log_impl(&dword_1AE886000, v13, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: -webView:didFailProvisionalNavigation:", &v16, 8u);
      }

      [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:2];
      mainResourceLoadEvent = self->_mainResourceLoadEvent;
      self->_mainResourceLoadEvent = 0;

      [(LPMetadataProvider *)self _failedWithErrorCode:2 underlyingError:errorCopy];
    }
  }

  else
  {
    v11 = LPLogChannelFetching();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_loggingID;
      v16 = 67109120;
      v17 = v12;
      _os_log_impl(&dword_1AE886000, v11, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: ignoring -webView:didFailProvisionalNavigation: from previous navigation", &v16, 8u);
    }
  }
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  v4 = LPLogChannelFetching();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [LPMetadataProvider webViewWebContentProcessDidTerminate:];
  }

  [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:2];
  mainResourceLoadEvent = self->_mainResourceLoadEvent;
  self->_mainResourceLoadEvent = 0;

  [(LPMetadataProvider *)self _failedWithErrorCode:2 underlyingError:0];
}

- (void)_fetchedMetadata:(id)metadata
{
  v14 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v5 = LPLogChannelFetching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v12 = 67109120;
    v13 = loggingID;
    _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: fetched metadata", &v12, 8u);
  }

  if (![(LPMetadataProvider *)self cancelled])
  {
    v7 = [[LPLinkMetadata alloc] _initWithDictionary:metadataCopy];
    [v7 setOriginalURL:self->_originalURL];
    [(LPMetadataProvider *)self _setMetadata:v7 onlyUpgradeFields:1];
    metadata = self->_metadata;
    v9 = [(WKWebView *)self->_webView URL];
    LOBYTE(metadata) = [(LPMetadataProvider *)self _switchToSpecializationIfPossibleForMetadata:metadata URL:v9];

    if ((metadata & 1) == 0)
    {
      [(LPMetadataProvider *)self _redistinguishImagesAndIcons];
      [(LPMetadataProvider *)self _simplifyTitle];
      [(LPMetadataProvider *)self _propagateYouTubeTimestamps];
      if (self->_shouldFetchSubresources)
      {
        [(LPMetadataProvider *)self _fetchSubresources];
        [(LPLinkMetadata *)self->_metadata _invokePendingAsynchronousLoadUpdateHandlers];
      }

      else
      {
        v10 = LPLogChannelFetching();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_loggingID;
          v12 = 67109120;
          v13 = v11;
          _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: skipping subresource fetch", &v12, 8u);
        }

        [(LPMetadataProvider *)self _completedWithError:0];
      }
    }
  }
}

- (id)subresourceFetcherConfiguration
{
  v3 = objc_alloc_init(LPFetcherConfiguration);
  [(LPFetcherConfiguration *)v3 setRootEvent:self->_event];
  v4 = [(NSURLRequest *)self->_URLRequest attribution]== NSURLRequestAttributionUser || self->_subresourceFetchIsNonAppInitiated;
  [(LPFetcherConfiguration *)v3 setLoadingIsNonAppInitiated:v4];
  [(LPFetcherConfiguration *)v3 setWebViewForProcessSharing:self->_webView];
  [(LPFetcherConfiguration *)v3 setFetchIsNotUserInitiated:self->_fetchIsNotUserInitiated];

  return v3;
}

- (void)_fetchImplicitIcons
{
  v34[3] = *MEMORY[0x1E69E9840];
  if (!self->_iconFetcherGroup)
  {
    v3 = MEMORY[0x1E695DFF8];
    v25 = [(NSURLRequest *)self->_URLRequest URL];
    v4 = [v3 URLWithString:@"/apple-touch-icon-precomposed.png" relativeToURL:v25];
    absoluteURL = [v4 absoluteURL];
    v34[0] = absoluteURL;
    v6 = MEMORY[0x1E695DFF8];
    v7 = [(NSURLRequest *)self->_URLRequest URL];
    v8 = [v6 URLWithString:@"/apple-touch-icon.png" relativeToURL:v7];
    absoluteURL2 = [v8 absoluteURL];
    v34[1] = absoluteURL2;
    v10 = MEMORY[0x1E695DFF8];
    v11 = [(NSURLRequest *)self->_URLRequest URL];
    v12 = [v10 URLWithString:@"/favicon.ico" relativeToURL:v11];
    absoluteURL3 = [v12 absoluteURL];
    v34[2] = absoluteURL3;
    obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];

    v14 = [LPFetcherGroup alloc];
    subresourceFetcherConfiguration = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41__LPMetadataProvider__fetchImplicitIcons__block_invoke;
    v32[3] = &unk_1E7A35F08;
    v32[4] = self;
    v16 = [(LPFetcherGroup *)v14 initWithPolicy:1 configuration:subresourceFetcherConfiguration description:@"Icons" completionHandler:v32];
    iconFetcherGroup = self->_iconFetcherGroup;
    self->_iconFetcherGroup = v16;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = obja;
    v18 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          v22 = objc_alloc_init(LPIconMetadata);
          [(LPIconMetadata *)v22 setURL:v21];
          subresourceFetcherConfiguration2 = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
          v24 = [LPImageFetcher imageFetcherForConfiguration:subresourceFetcherConfiguration2];

          [v24 setURL:v21];
          [v24 setUserData:v22];
          [v24 setResponseClass:objc_opt_class()];
          [(LPFetcherGroup *)self->_iconFetcherGroup appendFetcher:v24];

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    [(NSMutableArray *)self->_pendingFetchers addObject:self->_iconFetcherGroup];
  }
}

void __41__LPMetadataProvider__fetchImplicitIcons__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v8 = v3;
  if (v3)
  {
    v4 = [v3 image];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    [*(v6 + 88) setIcon:v4];

    v7 = [v8 userData];
    [*(*v5 + 88) setIconMetadata:v7];

    [*(*v5 + 88) _invokePendingAsynchronousLoadUpdateHandlers];
  }

  else
  {
    v5 = a1 + 32;
  }

  dispatch_group_leave(*(*v5 + 136));
}

- (void)_fetchSubresources
{
  v148 = *MEMORY[0x1E69E9840];
  v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
  streamingVideos = [(LPLinkMetadata *)self->_metadata streamingVideos];

  if (streamingVideos)
  {
    streamingVideos2 = [(LPLinkMetadata *)self->_metadata streamingVideos];
    [v92 addObjectsFromArray:streamingVideos2];
  }

  videos = [(LPLinkMetadata *)self->_metadata videos];

  if (videos)
  {
    videos2 = [(LPLinkMetadata *)self->_metadata videos];
    [v92 addObjectsFromArray:videos2];
  }

  audios = [(LPLinkMetadata *)self->_metadata audios];

  if (audios)
  {
    audios2 = [(LPLinkMetadata *)self->_metadata audios];
    [v92 addObjectsFromArray:audios2];
  }

  v9 = LPLogChannelFetching();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    images = [(LPLinkMetadata *)self->_metadata images];
    v90 = [images count];
    contentImagesMetadata = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
    v87 = [contentImagesMetadata count];
    icons = [(LPLinkMetadata *)self->_metadata icons];
    v85 = [icons count];
    v84 = [v92 count];
    arAssets = [(LPLinkMetadata *)self->_metadata arAssets];
    v10 = [arAssets count];
    images2 = [(LPLinkMetadata *)self->_metadata images];
    v11 = [images2 count];
    contentImagesMetadata2 = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
    v13 = [contentImagesMetadata2 count];
    icons2 = [(LPLinkMetadata *)self->_metadata icons];
    v15 = [icons2 count];
    v16 = [v92 count];
    arAssets2 = [(LPLinkMetadata *)self->_metadata arAssets];
    *buf = 67110656;
    v137 = loggingID;
    v138 = 2048;
    *v139 = v87 + v90 + v85 + v84 + v10;
    *&v139[8] = 2048;
    v140 = v11;
    *v141 = 2048;
    *&v141[2] = v13;
    v142 = 2048;
    v143 = v15;
    v144 = 2048;
    v145 = v16;
    v146 = 2048;
    v147 = [arAssets2 count];
    _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: resolving %lu subresources (%lu images, %lu content images, %lu icons, %lu videos/audios, %lu AR assets)", buf, 0x44u);
  }

  if (!self->_shouldDownloadImageSubresources)
  {
    v18 = LPLogChannelFetching();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_loggingID;
      *buf = 67109120;
      v137 = v19;
      _os_log_impl(&dword_1AE886000, v18, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: skipping image subresources because _shouldDownloadImageSubresources is set", buf, 8u);
    }
  }

  subresourceFetcherConfiguration = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
  images3 = [(LPLinkMetadata *)self->_metadata images];
  v21 = [images3 count];

  associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
  bundleIdentifier = [associatedApplication bundleIdentifier];
  v24 = bundleIdentifier != 0;
  v89 = bundleIdentifier;

  if ((v21 != 0 || v24) && self->_shouldDownloadImageSubresources)
  {
    dispatch_group_enter(self->_subresourceFetchGroup);
    v101 = [subresourceFetcherConfiguration copy];
    v25 = [(NSURLRequest *)self->_URLRequest URL];
    v26 = [LPPresentationSpecializations shouldAllowMultipleImagesForURL:v25];

    if (v26)
    {
      [v101 setMaximumResponseCount:4];
    }

    if (v89)
    {
      [v101 setMaximumResponseCount:1];
    }

    v27 = [LPFetcherGroup alloc];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke;
    v130[3] = &unk_1E7A35F08;
    v130[4] = self;
    v94 = [(LPFetcherGroup *)v27 initWithPolicy:2 configuration:v101 description:@"Images" completionHandler:v130];
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    images4 = [(LPLinkMetadata *)self->_metadata images];
    v29 = [images4 countByEnumeratingWithState:&v126 objects:v135 count:16];
    if (v29)
    {
      v30 = *v127;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v127 != v30)
          {
            objc_enumerationMutation(images4);
          }

          v32 = *(*(&v126 + 1) + 8 * i);
          subresourceFetcherConfiguration2 = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
          v34 = [LPImageFetcher imageFetcherForConfiguration:subresourceFetcherConfiguration2];

          v35 = [v32 URL];
          [v34 setURL:v35];

          [v34 setUserData:v32];
          [v34 setResponseClass:objc_opt_class()];
          [(LPFetcherGroup *)v94 appendFetcher:v34];
        }

        v29 = [images4 countByEnumeratingWithState:&v126 objects:v135 count:16];
      }

      while (v29);
    }

    if (!v89)
    {
      [(LPFetcherGroup *)v94 doneAddingFetchers];
    }

    [(NSMutableArray *)self->_pendingFetchers addObject:v94];
  }

  else
  {
    v94 = 0;
  }

  contentImagesMetadata3 = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
  v37 = [contentImagesMetadata3 count] == 0;

  if (v37 || !self->_shouldDownloadImageSubresources)
  {
    v96 = 0;
  }

  else
  {
    dispatch_group_enter(self->_subresourceFetchGroup);
    v102 = [subresourceFetcherConfiguration copy];
    [v102 setMaximumResponseCount:4];
    v38 = [LPFetcherGroup alloc];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke_2;
    v125[3] = &unk_1E7A35F08;
    v125[4] = self;
    v96 = [(LPFetcherGroup *)v38 initWithPolicy:2 configuration:v102 description:@"Content Images" completionHandler:v125];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    contentImagesMetadata4 = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
    v40 = [contentImagesMetadata4 countByEnumeratingWithState:&v121 objects:v134 count:16];
    if (v40)
    {
      v41 = *v122;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v122 != v41)
          {
            objc_enumerationMutation(contentImagesMetadata4);
          }

          v43 = *(*(&v121 + 1) + 8 * j);
          subresourceFetcherConfiguration3 = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
          v45 = [LPImageFetcher imageFetcherForConfiguration:subresourceFetcherConfiguration3];

          v46 = [v43 URL];
          [v45 setURL:v46];

          [v45 setUserData:v43];
          [v45 setResponseClass:objc_opt_class()];
          [(LPFetcherGroup *)v96 appendFetcher:v45];
        }

        v40 = [contentImagesMetadata4 countByEnumeratingWithState:&v121 objects:v134 count:16];
      }

      while (v40);
    }

    [(LPFetcherGroup *)v96 doneAddingFetchers];
    [(NSMutableArray *)self->_pendingFetchers addObject:v96];
  }

  dispatch_group_enter(self->_subresourceFetchGroup);
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  icons3 = [(LPLinkMetadata *)self->_metadata icons];
  reverseObjectEnumerator = [icons3 reverseObjectEnumerator];

  v49 = [reverseObjectEnumerator countByEnumeratingWithState:&v117 objects:v133 count:16];
  if (v49)
  {
    v50 = *v118;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v118 != v50)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v52 = *(*(&v117 + 1) + 8 * k);
        subresourceFetcherConfiguration4 = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
        v54 = [LPImageFetcher imageFetcherForConfiguration:subresourceFetcherConfiguration4];

        v55 = [v52 URL];
        [v54 setURL:v55];

        [v54 setUserData:v52];
        [v54 setResponseClass:objc_opt_class()];
        [(LPFetcherGroup *)self->_iconFetcherGroup prependFetcher:v54];
      }

      v49 = [reverseObjectEnumerator countByEnumeratingWithState:&v117 objects:v133 count:16];
    }

    while (v49);
  }

  [(LPFetcherGroup *)self->_iconFetcherGroup doneAddingFetchers];
  arAssets3 = [(LPLinkMetadata *)self->_metadata arAssets];
  v57 = [arAssets3 count] == 0;

  if (v57)
  {
    v103 = 0;
  }

  else
  {
    dispatch_group_enter(self->_subresourceFetchGroup);
    v98 = [subresourceFetcherConfiguration copy];
    v58 = [LPFetcherGroup alloc];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke_3;
    v116[3] = &unk_1E7A35F08;
    v116[4] = self;
    v103 = [(LPFetcherGroup *)v58 initWithPolicy:1 configuration:v98 description:@"ARAssets" completionHandler:v116];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    arAssets4 = [(LPLinkMetadata *)self->_metadata arAssets];
    v60 = [arAssets4 countByEnumeratingWithState:&v112 objects:v132 count:16];
    if (v60)
    {
      v61 = *v113;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v113 != v61)
          {
            objc_enumerationMutation(arAssets4);
          }

          v63 = *(*(&v112 + 1) + 8 * m);
          v64 = objc_alloc_init(LPRawURLContentsFetcher);
          v65 = [v63 URL];
          [(LPRawURLContentsFetcher *)v64 setURL:v65];

          [(LPFetcher *)v64 setUserData:v63];
          [(LPFetcher *)v64 setResponseClass:objc_opt_class()];
          [(LPFetcherGroup *)v103 appendFetcher:v64];
        }

        v60 = [arAssets4 countByEnumeratingWithState:&v112 objects:v132 count:16];
      }

      while (v60);
    }

    [(LPFetcherGroup *)v103 doneAddingFetchers];
    [(NSMutableArray *)self->_pendingFetchers addObject:v103];
  }

  if (![v92 count])
  {
    v99 = 0;
    if (!v89)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  dispatch_group_enter(self->_subresourceFetchGroup);
  v66 = [LPFetcherGroup alloc];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke_4;
  v111[3] = &unk_1E7A35F08;
  v111[4] = self;
  v99 = [(LPFetcherGroup *)v66 initWithPolicy:1 configuration:subresourceFetcherConfiguration description:@"Videos" completionHandler:v111];
  if (!self->_shouldDownloadMediaSubresources)
  {
    v67 = LPLogChannelFetching();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = self->_loggingID;
      *buf = 67109120;
      v137 = v68;
      _os_log_impl(&dword_1AE886000, v67, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: only fetching metadata for media subresources because _shouldDownloadMediaSubresources is not set", buf, 8u);
    }
  }

  v110 = 0u;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  v69 = v92;
  v70 = [v69 countByEnumeratingWithState:&v107 objects:v131 count:16];
  if (v70)
  {
    v71 = *v108;
    do
    {
      for (n = 0; n != v70; ++n)
      {
        if (*v108 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v73 = *(*(&v107 + 1) + 8 * n);
        v74 = objc_alloc_init(LPMediaAssetFetcher);
        [(LPMediaAssetFetcher *)v74 setShouldDownloadIfPossible:self->_shouldDownloadMediaSubresources];
        objc_opt_class();
        objc_opt_isKindOfClass();
        v75 = [v73 URL];
        [(LPMediaAssetFetcher *)v74 setURL:v75];

        [(LPFetcher *)v74 setUserData:v73];
        [(LPFetcherGroup *)v99 appendFetcher:v74];
      }

      v70 = [v69 countByEnumeratingWithState:&v107 objects:v131 count:16];
    }

    while (v70);
  }

  [(LPFetcherGroup *)v99 doneAddingFetchers];
  [(NSMutableArray *)self->_pendingFetchers addObject:v99];
  if (v89)
  {
LABEL_71:
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke_125;
    v105[3] = &unk_1E7A364B0;
    v105[4] = self;
    v106 = v94;
    [(LPMetadataProvider *)self _fetchAssociatedApplicationMetadataWithCompletionHandler:v105];
  }

LABEL_72:
  loggingID = [(LPFetcherGroup *)v99 loggingID];
  v77 = LPLogChannelFetching();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = self->_loggingID;
    loggingID2 = [(LPFetcherGroup *)v94 loggingID];
    loggingID3 = [(LPFetcherGroup *)v96 loggingID];
    loggingID4 = [(LPFetcherGroup *)self->_iconFetcherGroup loggingID];
    loggingID5 = [(LPFetcherGroup *)v103 loggingID];
    *buf = 67110400;
    v137 = v78;
    v138 = 1024;
    *v139 = loggingID2;
    *&v139[4] = 1024;
    *&v139[6] = loggingID3;
    LOWORD(v140) = 1024;
    *(&v140 + 2) = loggingID4;
    HIWORD(v140) = 1024;
    *v141 = loggingID5;
    *&v141[4] = 1024;
    *&v141[6] = loggingID;
    _os_log_impl(&dword_1AE886000, v77, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: started subresource fetcher group ids: images=%d, contentImages=%d, icons=%d, arAssets=%d, media=%d", buf, 0x26u);
  }

  subresourceFetchGroup = self->_subresourceFetchGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__LPMetadataProvider__fetchSubresources__block_invoke_127;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_group_notify(subresourceFetchGroup, MEMORY[0x1E69E96A0], block);
}

void __40__LPMetadataProvider__fetchSubresources__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = [v3 valueForKey:@"image"];
    if ([v4 count] >= 2)
    {
      v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];
      [*(*(a1 + 32) + 88) setAlternateImages:v5];
    }

    v6 = [v10 firstObject];
    v7 = [v6 image];
    [*(*(a1 + 32) + 88) setImage:v7];

    v8 = [v10 firstObject];
    v9 = [v8 userData];
    [*(*(a1 + 32) + 88) setImageMetadata:v9];

    [*(*(a1 + 32) + 88) _invokePendingAsynchronousLoadUpdateHandlers];
    dispatch_group_leave(*(*(a1 + 32) + 136));
  }

  else
  {
    dispatch_group_leave(*(*(a1 + 32) + 136));
  }
}

void __40__LPMetadataProvider__fetchSubresources__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 valueForKey:@"image"];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    [*(v6 + 88) setContentImages:v4];

    v7 = [v8 valueForKey:@"userData"];
    [*(*v5 + 88) setContentImagesMetadata:v7];

    [*(*v5 + 88) _invokePendingAsynchronousLoadUpdateHandlers];
  }

  else
  {
    v5 = a1 + 32;
  }

  dispatch_group_leave(*(*v5 + 136));
}

void __40__LPMetadataProvider__fetchSubresources__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = [v3 firstObject];
    v5 = [v4 arAsset];
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    [*(v7 + 88) setArAsset:v5];

    v8 = [v10 firstObject];
    v9 = [v8 userData];
    [*(*v6 + 88) setArAssetMetadata:v9];

    [*(*v6 + 88) _invokePendingAsynchronousLoadUpdateHandlers];
  }

  else
  {
    v6 = a1 + 32;
  }

  dispatch_group_leave(*(*v6 + 136));
}

void __40__LPMetadataProvider__fetchSubresources__block_invoke_4(uint64_t a1, void *a2)
{
  v22 = [a2 firstObject];
  if (!v22)
  {
    v15 = a1 + 32;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v22 video];
    [*(*(a1 + 32) + 88) setVideo:v3];

    v4 = [v22 userData];
    v5 = objc_alloc_init(LPVideoMetadata);
    [*(*(a1 + 32) + 88) setVideoMetadata:v5];

    v6 = [v4 URL];
    v7 = [*(*(a1 + 32) + 88) videoMetadata];
    [v7 setURL:v6];

    v8 = [v4 type];
    v9 = [*(*(a1 + 32) + 88) videoMetadata];
    [v9 setType:v8];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    [v4 size];
    v11 = v10;
    v13 = v12;
    v14 = [*(*(a1 + 32) + 88) videoMetadata];
    [v14 setSize:{v11, v13}];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v22 audio];
    [*(*(a1 + 32) + 88) setAudio:v16];

    v4 = [v22 userData];
    v17 = objc_alloc_init(LPAudioMetadata);
    [*(*(a1 + 32) + 88) setAudioMetadata:v17];

    v18 = [v4 URL];
    v19 = [*(*(a1 + 32) + 88) audioMetadata];
    [v19 setURL:v18];

    v14 = [v4 type];
    v20 = [*(*(a1 + 32) + 88) audioMetadata];
    [v20 setType:v14];

    goto LABEL_8;
  }

LABEL_10:
  v21 = *(a1 + 32);
  v15 = a1 + 32;
  [*(v21 + 88) _invokePendingAsynchronousLoadUpdateHandlers];
LABEL_11:
  dispatch_group_leave(*(*v15 + 136));
}

void __40__LPMetadataProvider__fetchSubresources__block_invoke_125(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 clipHeroImageURL];

  if (v3)
  {
    v4 = [*(a1 + 32) subresourceFetcherConfiguration];
    v5 = [LPImageFetcher imageFetcherForConfiguration:v4];

    v6 = [v7 clipHeroImageURL];
    [v5 setURL:v6];

    [v5 setResponseClass:objc_opt_class()];
    [*(a1 + 40) appendFetcher:v5];
  }

  [*(a1 + 40) doneAddingFetchers];
}

uint64_t __40__LPMetadataProvider__fetchSubresources__block_invoke_127(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 88) video];

  v4 = [*(*v2 + 88) audio];

  v5 = LPLogChannelFetching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v13 = [*(v6 + 88) image];
    v8 = [*(*(a1 + 32) + 88) contentImages];
    v9 = [v8 count];
    v10 = [*(*(a1 + 32) + 88) icon];
    v11 = [*(*(a1 + 32) + 88) arAsset];
    *buf = 67110656;
    v15 = v7;
    v16 = 1024;
    v17 = v13 != 0;
    v18 = 2048;
    v19 = v9;
    v20 = 1024;
    v21 = v10 != 0;
    v22 = 1024;
    v23 = v11 != 0;
    v24 = 1024;
    v25 = v3 != 0;
    v26 = 1024;
    v27 = v4 != 0;
    _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: subresource fetch finished: got image=%d, contentImages=%lu, icons=%d, arAssets=%d, video=%d, audio=%d", buf, 0x30u);
  }

  return [*(a1 + 32) _completedWithError:0];
}

- (void)_fetchAssociatedApplicationMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_group_enter(self->_subresourceFetchGroup);
  subresourceFetcherConfiguration = [(LPMetadataProvider *)self subresourceFetcherConfiguration];
  v6 = [LPFetcherGroup alloc];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__LPMetadataProvider__fetchAssociatedApplicationMetadataWithCompletionHandler___block_invoke;
  v17 = &unk_1E7A364D8;
  v7 = handlerCopy;
  selfCopy = self;
  v19 = v7;
  v8 = [(LPFetcherGroup *)v6 initWithPolicy:1 configuration:subresourceFetcherConfiguration description:@"App Clip Icon URL" completionHandler:&v14];
  v9 = objc_alloc_init(LPAssociatedApplicationMetadataFetcher);
  v10 = [(LPLinkMetadata *)self->_metadata URL:v14];
  originalURL = v10;
  if (!v10)
  {
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  [(LPAssociatedApplicationMetadataFetcher *)v9 setURL:originalURL];
  if (!v10)
  {
  }

  associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
  bundleIdentifier = [associatedApplication bundleIdentifier];
  [(LPAssociatedApplicationMetadataFetcher *)v9 setBundleIdentifier:bundleIdentifier];

  [(LPFetcherGroup *)v8 appendFetcher:v9];
  [(LPFetcherGroup *)v8 doneAddingFetchers];
  [(NSMutableArray *)self->_pendingFetchers addObject:v8];
}

void __79__LPMetadataProvider__fetchAssociatedApplicationMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = [a2 firstObject];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v21;
    v4 = [v3 metadata];
    v5 = [v4 clipCaption];
    v6 = [*(*(a1 + 32) + 88) associatedApplication];
    [v6 setCaption:v5];

    v7 = [v3 metadata];
    v8 = [v7 clipOpenButtonTitle];
    v9 = [*(*(a1 + 32) + 88) associatedApplication];
    [v9 setAction:v8];

    v10 = [v3 metadata];
    v11 = [v10 clipAction];
    v12 = [*(*(a1 + 32) + 88) associatedApplication];
    [v12 setClipAction:v11];

    v13 = [v3 iconURL];
    LODWORD(v12) = [v13 isFileURL];

    if (v12)
    {
      v14 = objc_alloc_init(LPImageProperties);
      [(LPImageProperties *)v14 setType:6];
      v15 = [LPImage alloc];
      v16 = [v3 iconURL];
      v17 = [(LPImage *)v15 initByReferencingFileURL:v16 MIMEType:@"image/png" properties:v14];
      v18 = [*(*(a1 + 32) + 88) associatedApplication];
      [v18 setIcon:v17];
    }

    v19 = *(a1 + 40);
    v20 = [v3 metadata];
    (*(v19 + 16))(v19, v20);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 136));
}

- (void)_redistinguishImagesAndIcons
{
  v68 = *MEMORY[0x1E69E9840];
  arAssets = [(LPLinkMetadata *)self->_metadata arAssets];
  v50 = [arAssets mutableCopy];

  icons = [(LPLinkMetadata *)self->_metadata icons];
  v52 = [icons mutableCopy];

  images = [(LPLinkMetadata *)self->_metadata images];
  v46 = [images mutableCopy];

  contentImagesMetadata = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
  v47 = [contentImagesMetadata mutableCopy];

  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v46 count])
  {
    if ([v47 count])
    {
      v43 = [(NSURLRequest *)self->_URLRequest URL];
      v44 = [LPPresentationSpecializations shouldAllowHoistingContentImagesForURL:v43];

      if (v44)
      {
        firstObject = [v47 firstObject];
        [v46 addObject:firstObject];

        [v47 removeObjectAtIndex:0];
      }
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v46;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v8)
  {
    v9 = *v62;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        v12 = [v11 URL];
        v13 = [LPPresentationSpecializations isTwitterProfileImageURL:v12];

        if (v13)
        {
          [v7 addObject:v11];
        }

        if ([LPPresentationSpecializations isTwitterSummaryCardMetadata:self->_metadata]&& [LPPresentationSpecializations isArticleWithActivityPub:self->_metadata])
        {
          [v7 addObject:v11];
        }

        v14 = [v11 URL];
        if ([LPPresentationSpecializations isAppleNewsURL:v14])
        {
        }

        else
        {
          v15 = [(NSURLRequest *)self->_URLRequest URL];
          v16 = [LPPresentationSpecializations isStocksNewsURL:v15];

          if (!v16)
          {
            goto LABEL_16;
          }
        }

        [v7 addObject:v11];
LABEL_16:
        v17 = [v11 URL];
        v18 = [LPPresentationSpecializations isRedditStaticImage:v17];

        if (v18)
        {
          [v7 addObject:v11];
        }

        v19 = [(NSURLRequest *)self->_URLRequest URL];
        v20 = [LPPresentationSpecializations isWebexSiteURL:v19];

        if (v20)
        {
          [v51 addObject:v11];
        }

        v21 = [v11 URL];
        v22 = [LPPresentationSpecializations isKnownBlankImageURL:v21];

        if (v22)
        {
          [v51 addObject:v11];
        }

        v23 = [(NSURLRequest *)self->_URLRequest URL];
        if ([LPPresentationSpecializations isStockSymbolURL:v23])
        {
          v24 = [v52 count] == 0;

          if (!v24)
          {
            [v51 addObject:v11];
          }
        }

        else
        {
        }

        type = [v11 type];
        v26 = [LPMIMETypeRegistry isARAssetType:type];

        if (v26)
        {
          [v48 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v8);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v28)
  {
    v29 = *v58;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v31 = *(*(&v57 + 1) + 8 * j);
        v32 = [LPIconMetadata alloc];
        v33 = [v31 URL];
        v34 = [(LPIconMetadata *)v32 _initWithURL:v33];

        [v52 insertObject:v34 atIndex:0];
      }

      v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v28);
  }

  [obj removeObjectsInArray:v7];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  reverseObjectEnumerator2 = [v48 reverseObjectEnumerator];
  v36 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v36)
  {
    v37 = *v54;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(reverseObjectEnumerator2);
        }

        v39 = *(*(&v53 + 1) + 8 * k);
        v40 = [LPARAssetMetadata alloc];
        v41 = [v39 URL];
        v42 = [(LPARAssetMetadata *)v40 _initWithURL:v41];

        [v50 insertObject:v42 atIndex:0];
      }

      v36 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v36);
  }

  [obj removeObjectsInArray:v48];
  [obj removeObjectsInArray:v51];
  [(LPLinkMetadata *)self->_metadata setIcons:v52];
  [(LPLinkMetadata *)self->_metadata setImages:obj];
  [(LPLinkMetadata *)self->_metadata setArAssets:v50];
  [(LPLinkMetadata *)self->_metadata setContentImagesMetadata:v47];
}

- (void)_simplifyTitle
{
  title = [(LPLinkMetadata *)self->_metadata title];
  [(LPLinkMetadata *)self->_metadata setOriginalTitle:?];

  title2 = [(LPLinkMetadata *)self->_metadata title];

  if (title2)
  {
    title3 = [(LPLinkMetadata *)self->_metadata title];
    v4 = [LPPresentationSpecializations simplifiedTitleFromTitle:"simplifiedTitleFromTitle:forMetadata:" forMetadata:?];
    [(LPLinkMetadata *)self->_metadata setTitle:v4];
  }
}

- (void)_propagateYouTubeTimestamps
{
  v3 = [(NSURLRequest *)self->_URLRequest URL];
  v27 = [LPPresentationSpecializations youTubeVideoComponentsForVideoURL:v3];

  v4 = v27;
  if (v27)
  {
    [v27 startTime];
    v4 = v27;
    if (v5 != 0.0)
    {
      videos = [(LPLinkMetadata *)self->_metadata videos];
      v7 = [videos count];

      v4 = v27;
      if (v7 == 1)
      {
        videos2 = [(LPLinkMetadata *)self->_metadata videos];
        v9 = [videos2 objectAtIndexedSubscript:0];
        v10 = [v9 URL];
        v11 = [LPPresentationSpecializations youTubeVideoComponentsForEmbedURL:v10];

        if (v11)
        {
          [v11 startTime];
          if (v12 == 0.0)
          {
            videos3 = [(LPLinkMetadata *)self->_metadata videos];
            v14 = [videos3 objectAtIndexedSubscript:0];
            v15 = [v14 URL];
            _lp_components = [v15 _lp_components];

            queryItems = [_lp_components queryItems];
            v18 = MEMORY[0x1E696AF60];
            v19 = MEMORY[0x1E696AD98];
            [v27 startTime];
            v20 = [v19 numberWithDouble:?];
            stringValue = [v20 stringValue];
            v22 = [v18 queryItemWithName:@"start" value:stringValue];
            v23 = [queryItems arrayByAddingObject:v22];
            [_lp_components setQueryItems:v23];

            v24 = [_lp_components URL];
            videos4 = [(LPLinkMetadata *)self->_metadata videos];
            v26 = [videos4 objectAtIndexedSubscript:0];
            [v26 setURL:v24];
          }
        }

        v4 = v27;
      }
    }
  }
}

- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = LPLogChannelFetching();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v10[0] = 67109376;
    v10[1] = loggingID;
    v11 = 2048;
    codeCopy = code;
    _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: fetch failed with error code %ld", v10, 0x12u);
  }

  v9 = makeLPError(code, errorCopy);
  [(LPMetadataProvider *)self _completedWithError:v9];
}

- (void)_completedWithError:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!self->_startedPostProcessing && !self->_complete)
  {
    v5 = LPLogChannelFetching();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      loggingID = self->_loggingID;
      v7 = self->_metadata != 0;
      *buf = 67109632;
      v31 = loggingID;
      v32 = 1024;
      v33 = v7;
      v34 = 1024;
      v35 = errorCopy != 0;
      _os_log_impl(&dword_1AE886000, v5, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: starting postprocessing (has metadata=%d, has error=%d)", buf, 0x14u);
    }

    self->_startedPostProcessing = 1;
    v8 = [(NSMutableArray *)self->_pendingFetchers copy];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v25 + 1) + 8 * v12++) cancel];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    pendingFetchers = self->_pendingFetchers;
    self->_pendingFetchers = 0;

    [(LPAnimatedImageTranscoder *)self->_imageTranscoder cancel];
    [(LPEvent *)self->_mainResourceLoadEvent didCompleteWithStatus:4];
    mainResourceLoadEvent = self->_mainResourceLoadEvent;
    self->_mainResourceLoadEvent = 0;

    [(LPEvent *)self->_webProcessLaunchEvent didCompleteWithStatus:4];
    webProcessLaunchEvent = self->_webProcessLaunchEvent;
    self->_webProcessLaunchEvent = 0;

    [(LPLinkMetadata *)self->_metadata setOriginalURL:self->_originalURL];
    v16 = [(LPLinkMetadata *)self->_metadata URL];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = [(NSURLRequest *)self->_URLRequest URL];
      [(LPLinkMetadata *)self->_metadata setURL:v18];
    }

    if (self->_fetchIsNotUserInitiated)
    {
      [(LPLinkMetadata *)self->_metadata _setIncomplete:1];
    }

    v19 = [(LPEvent *)self->_event childWithType:5 subtitle:0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__LPMetadataProvider__completedWithError___block_invoke;
    v21[3] = &unk_1E7A36318;
    v22 = v19;
    selfCopy = self;
    v24 = errorCopy;
    v20 = v19;
    [(LPMetadataProvider *)self _postProcessResolvedMetadataWithEvent:v20 completionHandler:v21];
  }
}

uint64_t __42__LPMetadataProvider__completedWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didCompleteWithStatus:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _finishedPostProcessingWithError:v3];
}

- (void)_finishedPostProcessingWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_complete)
  {
    self->_complete = 1;
    if (!self->_fetchingFromExistingWebView)
    {
      [(WKWebView *)self->_webView _close];
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__3;
    v17[4] = __Block_byref_object_dispose__3;
    v18 = self->_webView;
    currentNavigation = self->_currentNavigation;
    self->_currentNavigation = 0;

    webView = self->_webView;
    self->_webView = 0;

    if (self->_timedOut)
    {
      v7 = 4;
    }

    else if ([(LPMetadataProvider *)self cancelled])
    {
      v7 = 3;
    }

    else
    {
      if (self->_metadata)
      {
        v8 = errorCopy == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    [(LPEvent *)self->_event didCompleteWithStatus:v7];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__144;
    v15[4] = __Block_byref_object_dispose__145;
    v16 = _Block_copy(self->_completionHandler);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v10 = +[LPMetadataProvider _callbackQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__LPMetadataProvider__finishedPostProcessingWithError___block_invoke;
    v11[3] = &unk_1E7A36528;
    v11[4] = self;
    v12 = errorCopy;
    v13 = v15;
    v14 = v17;
    dispatch_async(v10, v11);

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v17, 8);
  }
}

void __55__LPMetadataProvider__finishedPostProcessingWithError___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = LPLogChannelFetching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(v3 + 8);
    LODWORD(v3) = *(v3 + 88) != 0;
    v5 = a1[5] != 0;
    *buf = 67109632;
    v11 = v4;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_1AE886000, v2, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: completed (has metadata=%d, has error=%d)", buf, 0x14u);
  }

  (*(*(*(a1[6] + 8) + 40) + 16))();
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__LPMetadataProvider__finishedPostProcessingWithError___block_invoke_146;
  v9[3] = &unk_1E7A36500;
  v8 = a1[7];
  v9[4] = a1[4];
  v9[5] = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __55__LPMetadataProvider__finishedPostProcessingWithError___block_invoke_146(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = +[LPMetadataProvider _incompleteMetadataRequests];
  objc_sync_enter(v4);
  v5 = +[LPMetadataProvider _incompleteMetadataRequests];
  [v5 removeObject:*(a1 + 32)];

  objc_sync_exit(v4);
  v6 = LPLogChannelFetching();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 8);
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: invalidating process assertion", v9, 8u);
  }

  return [*(*(a1 + 32) + 56) invalidate];
}

- (void)_postProcessResolvedMetadataWithEvent:(id)event completionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  v8 = +[LPMetadataProvider _postProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__LPMetadataProvider__postProcessResolvedMetadataWithEvent_completionHandler___block_invoke;
  block[3] = &unk_1E7A36488;
  block[4] = self;
  v12 = eventCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventCopy;
  dispatch_async(v8, block);
}

void __78__LPMetadataProvider__postProcessResolvedMetadataWithEvent_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__LPMetadataProvider__postProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7A35CA0;
  v4 = *(a1 + 48);
  [v1 _internalPostProcessResolvedMetadataWithEvent:v2 completionHandler:v3];
}

- (BOOL)_firstImage:(id)image isSimilarToSecondImage:(id)secondImage usingAnalyzer:(id)analyzer
{
  v25 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  secondImageCopy = secondImage;
  analyzerCopy = analyzer;
  v20 = 0;
  v11 = [analyzerCopy computeSimilarityOfFirstImage:imageCopy with:secondImageCopy error:&v20];
  v12 = v20;
  if (v12)
  {
    v13 = LPLogChannelFetching();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [LPMetadataProvider _firstImage:isSimilarToSecondImage:usingAnalyzer:];
    }

    goto LABEL_5;
  }

  [v11 floatValue];
  if (v14 > 0.5)
  {
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v17 = LPLogChannelFetching();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    [v11 floatValue];
    *buf = 67109376;
    v22 = loggingID;
    v23 = 2048;
    v24 = v19;
    _os_log_impl(&dword_1AE886000, v17, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: discarding content image because it is a duplicate. (similarity score %f)", buf, 0x12u);
  }

  v15 = 1;
LABEL_6:

  return v15;
}

- (void)_filteredUniqueContentImages:(id)images
{
  imagesCopy = images;
  v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
  for (i = 0; ; ++i)
  {
    contentImages = [(LPLinkMetadata *)self->_metadata contentImages];
    v8 = [contentImages count];

    if (i >= v8)
    {
      break;
    }

    contentImages2 = [(LPLinkMetadata *)self->_metadata contentImages];
    v10 = [contentImages2 objectAtIndexedSubscript:i];

    contentImagesMetadata = [(LPLinkMetadata *)self->_metadata contentImagesMetadata];
    v12 = [contentImagesMetadata objectAtIndexedSubscript:i];

    [v5 setObject:v12 forKey:v10];
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v15 = +[LPMetadataProvider _visionAnalysisQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPMetadataProvider__filteredUniqueContentImages___block_invoke;
  block[3] = &unk_1E7A36578;
  block[4] = self;
  v21 = array;
  v22 = v5;
  v23 = array2;
  v24 = imagesCopy;
  v16 = imagesCopy;
  v17 = array2;
  v18 = v5;
  v19 = array;
  dispatch_async(v15, block);
}

void __51__LPMetadataProvider__filteredUniqueContentImages___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(LPVisionAnalyzer);
  for (i = 0; ; ++i)
  {
    v4 = [*(*(a1 + 32) + 88) contentImages];
    v5 = i < [v4 count];

    if (!v5)
    {
      break;
    }

    v6 = [*(*(a1 + 32) + 88) contentImages];
    v7 = [v6 objectAtIndexedSubscript:i];

    v8 = *(a1 + 32);
    v9 = [v8[11] image];
    LOBYTE(v8) = [v8 _firstImage:v9 isSimilarToSecondImage:v7 usingAnalyzer:v2];

    if ((v8 & 1) == 0)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v26 = __51__LPMetadataProvider__filteredUniqueContentImages___block_invoke_2;
      v27 = &unk_1E7A36550;
      v10 = *(a1 + 32);
      v31 = i;
      v28 = v10;
      v11 = v7;
      v29 = v11;
      v30 = v2;
      if (((v26)(v25) & 1) == 0)
      {
        [*(a1 + 40) addObject:v11];
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(a1 + 48) objectForKey:*(*(&v21 + 1) + 8 * v15)];
        [*(a1 + 56) addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v13);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPMetadataProvider__filteredUniqueContentImages___block_invoke_3;
  block[3] = &unk_1E7A354C8;
  v20 = *(a1 + 64);
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

BOOL __51__LPMetadataProvider__filteredUniqueContentImages___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56) + 1;
  do
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 88) contentImages];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      break;
    }

    v6 = [*(*(a1 + 32) + 88) contentImages];
    v7 = [v6 objectAtIndexedSubscript:v3];

    LODWORD(v6) = [*(a1 + 32) _firstImage:*(a1 + 40) isSimilarToSecondImage:v7 usingAnalyzer:*(a1 + 48)];
    v2 = v3 + 1;
  }

  while (!v6);
  return v3 < v5;
}

- (void)deduplicateContentImagesWithEvent:(id)event inGroup:(id)group
{
  eventCopy = event;
  groupCopy = group;
  contentImages = [(LPLinkMetadata *)self->_metadata contentImages];
  if (![contentImages count])
  {
    goto LABEL_4;
  }

  v9 = +[LPTestingOverrides forceDisableImageDeduplication];

  if (!v9)
  {
    v10 = [eventCopy childWithType:9 subtitle:0];
    dispatch_group_enter(groupCopy);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__LPMetadataProvider_deduplicateContentImagesWithEvent_inGroup___block_invoke;
    v11[3] = &unk_1E7A365A0;
    v12 = v10;
    selfCopy = self;
    v14 = groupCopy;
    contentImages = v10;
    [(LPMetadataProvider *)self _filteredUniqueContentImages:v11];

LABEL_4:
  }
}

void __64__LPMetadataProvider_deduplicateContentImagesWithEvent_inGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) didCompleteWithStatus:1];
  if ([v8 count])
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  [*(*(a1 + 40) + 88) setContentImages:v6];
  if ([v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  [*(*(a1 + 40) + 88) setContentImagesMetadata:v7];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_internalPostProcessResolvedMetadataWithEvent:(id)event completionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v9 = dispatch_group_create();
  group = dispatch_group_create();
  v54 = eventCopy;
  v55 = dispatch_group_create();
  v51 = handlerCopy;
  v52 = [eventCopy childWithType:8 subtitle:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A35478;
  v10 = v9;
  v88 = v10;
  selfCopy = self;
  v11 = _Block_copy(aBlock);
  video = [(LPLinkMetadata *)self->_metadata video];
  if (video)
  {
  }

  else
  {
    image = [(LPLinkMetadata *)self->_metadata image];
    _isAnimated = [image _isAnimated];

    if (_isAnimated)
    {
      dispatch_group_enter(v8);
      v15 = [(LPEvent *)self->_event childWithType:6 subtitle:0];
      imageMetadata = [(LPLinkMetadata *)self->_metadata imageMetadata];
      v17 = [imageMetadata URL];
      [v15 setURL:v17];

      v18 = [LPAnimatedImageTranscoder alloc];
      image2 = [(LPLinkMetadata *)self->_metadata image];
      v20 = [(LPAnimatedImageTranscoder *)v18 initWithAnimatedImage:image2];
      imageTranscoder = self->_imageTranscoder;
      self->_imageTranscoder = v20;

      v22 = self->_imageTranscoder;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_153;
      v82[3] = &unk_1E7A365F0;
      v23 = v15;
      v83 = v23;
      selfCopy2 = self;
      v86 = v11;
      v85 = v8;
      [(LPAnimatedImageTranscoder *)v22 transcodeWithCompletionHandler:v82];

      goto LABEL_6;
    }
  }

  v11[2](v11);
LABEL_6:
  dispatch_group_enter(v10);
  icon = [(LPLinkMetadata *)self->_metadata icon];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2_155;
  v80[3] = &unk_1E7A365C8;
  v80[4] = self;
  v25 = v10;
  v81 = v25;
  fitImageInSize(icon, v80, 1024.0, 1024.0);

  dispatch_group_enter(v25);
  alternateImages = [(LPLinkMetadata *)self->_metadata alternateImages];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_3;
  v78[3] = &unk_1E7A36618;
  v78[4] = self;
  v27 = v25;
  v79 = v27;
  fitImagesInSize(alternateImages, v78, 1024.0, 1024.0);

  dispatch_group_enter(v27);
  contentImages = [(LPLinkMetadata *)self->_metadata contentImages];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_156;
  v76[3] = &unk_1E7A36618;
  v76[4] = self;
  v29 = v27;
  v77 = v29;
  fitImagesInSize(contentImages, v76, 1024.0, 1024.0);

  dispatch_group_enter(group);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_157;
  block[3] = &unk_1E7A35C10;
  v30 = v52;
  v72 = v30;
  selfCopy3 = self;
  v31 = v54;
  v74 = v31;
  v32 = group;
  v75 = v32;
  v50 = v29;
  dispatch_group_notify(v29, MEMORY[0x1E69E96A0], block);
  dispatch_group_enter(v8);
  v33 = +[LPMetadataProvider _postProcessingQueue];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2_158;
  v69[3] = &unk_1E7A35450;
  v34 = v8;
  v70 = v34;
  dispatch_group_notify(v32, v33, v69);

  if (self->_webView)
  {
    v35 = [v31 childWithType:10 subtitle:0];
    dispatch_group_enter(v34);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_3_159;
    v66[3] = &unk_1E7A36318;
    v66[4] = self;
    v36 = v35;
    v67 = v36;
    v37 = v34;
    v68 = v37;
    v38 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v66);

    selectedText = [(LPLinkMetadata *)self->_metadata selectedText];

    if (!selectedText)
    {
      v40 = [v31 childWithType:11 subtitle:0];
      dispatch_group_enter(v37);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_5;
      v63[3] = &unk_1E7A36318;
      v63[4] = self;
      v64 = v40;
      v65 = v37;
      v41 = v40;
      v42 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v63);
    }
  }

  if (self->_specializedMetadataProvider)
  {
    v43 = [v31 childWithType:12 subtitle:0];
    dispatch_group_enter(v34);
    dispatch_group_enter(v55);
    v44 = +[LPMetadataProvider _postProcessingQueue];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_7;
    v61[3] = &unk_1E7A35478;
    v61[4] = self;
    v45 = v55;
    v62 = v45;
    dispatch_group_notify(v32, v44, v61);

    v46 = +[LPMetadataProvider _postProcessingQueue];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_9;
    v58[3] = &unk_1E7A35478;
    v59 = v43;
    v60 = v34;
    v47 = v43;
    dispatch_group_notify(v45, v46, v58);
  }

  v48 = +[LPMetadataProvider _postProcessingQueue];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_10;
  v56[3] = &unk_1E7A356A0;
  v56[4] = self;
  v57 = v51;
  v49 = v51;
  dispatch_group_notify(v34, v48, v56);
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 88) image];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7A365C8;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  fitImageInSize(v2, v5, 1024.0, 1024.0);
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 _computeDominantColorForProperties];
  if (imageIsInteresting(v3))
  {
    [*(*(a1 + 32) + 88) setImage:v3];
  }

  else
  {
    v4 = LPLogChannelFetching();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_1AE886000, v4, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: discarding primary image because it is uninteresting", v6, 8u);
    }

    [*(*(a1 + 32) + 88) setImage:0];
    [*(*(a1 + 32) + 88) setImageMetadata:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_153(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  if (v3)
  {
    [v4 didCompleteWithStatus:1];
    [*(*(a1 + 40) + 88) setVideo:v13];
    v5 = objc_alloc_init(LPVideoMetadata);
    [*(*(a1 + 40) + 88) setVideoMetadata:v5];

    v6 = [*(*(a1 + 40) + 88) imageMetadata];
    v7 = [v6 URL];
    v8 = [*(*(a1 + 40) + 88) videoMetadata];
    [v8 setURL:v7];

    v9 = [v13 MIMEType];
    v10 = [*(*(a1 + 40) + 88) videoMetadata];
    [v10 setType:v9];

    [*(*(a1 + 40) + 88) setImage:0];
    [*(*(a1 + 40) + 88) setImageMetadata:0];
  }

  else
  {
    [v4 didCompleteWithStatus:2];
    (*(*(a1 + 56) + 16))();
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 152);
  *(v11 + 152) = 0;

  dispatch_group_leave(*(a1 + 48));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_2_155(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 88) setIcon:?];
  v3 = [*(*(a1 + 32) + 88) icon];
  [v3 _computeDominantColorForProperties];

  dispatch_group_leave(*(a1 + 40));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * i) _computeDominantColorForProperties];
      }

      v4 = [v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v4);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v9)
  {
    v11 = *v19;
    *&v10 = 67109120;
    v17 = v10;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * j);
        if (imageIsInteresting(v13))
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = LPLogChannelFetching();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(*(a1 + 32) + 8);
            *buf = v17;
            v27 = v15;
            _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: discarding alternate image because it is uninteresting", buf, 8u);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  [*(*(a1 + 32) + 88) setAlternateImages:{v16, v17, v18}];
  dispatch_group_leave(*(a1 + 40));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_156(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * v6++) _computeDominantColorForProperties];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0;
  *&v10 = 67109120;
  v21 = v10;
  while (1)
  {
    v11 = v9;
    if ([v3 count] <= v9)
    {
      break;
    }

    v12 = [v3 objectAtIndexedSubscript:v9];
    if (imageIsInteresting(v12))
    {
      [v7 addObject:v12];
      v13 = [*(*(a1 + 32) + 88) contentImagesMetadata];
      v14 = [v13 count] > v11;

      if (v14)
      {
        v15 = [*(*(a1 + 32) + 88) contentImagesMetadata];
        v16 = [v15 objectAtIndexedSubscript:v11];
        [v8 addObject:v16];
      }
    }

    else
    {
      v17 = LPLogChannelFetching();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 8);
        *buf = v21;
        v27 = v18;
        _os_log_impl(&dword_1AE886000, v17, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: discarding content image because it is uninteresting", buf, 8u);
      }
    }

    v9 = v11 + 1;
  }

  if ([v7 count])
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  [*(*(a1 + 32) + 88) setContentImages:v19];
  if ([v8 count])
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  [*(*(a1 + 32) + 88) setContentImagesMetadata:v20];
  dispatch_group_leave(*(a1 + 40));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_157(uint64_t a1)
{
  [*(a1 + 32) didCompleteWithStatus:1];
  [*(a1 + 40) deduplicateContentImagesWithEvent:*(a1 + 48) inGroup:*(a1 + 56)];
  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_3_159(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_4;
  v5[3] = &unk_1E7A36318;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _doAfterNextPresentationUpdate:v5];
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) didCompleteWithStatus:1];
  v2 = [*(*(a1 + 40) + 16) themeColor];
  [*(*(a1 + 40) + 88) setThemeColor:v2];

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_6;
  v5[3] = &unk_1E7A36640;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _getTextFragmentMatchWithCompletionHandler:v5];
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 didCompleteWithStatus:1];
    [*(*(a1 + 40) + 88) setSelectedText:v5];
  }

  else
  {
    [v4 didCompleteWithStatus:2];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_8;
  v2[3] = &unk_1E7A35450;
  v3 = *(a1 + 40);
  [v1 _internalPostProcessResolvedMetadataWithCompletionHandler:v2];
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) didCompleteWithStatus:1];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_10(uint64_t a1)
{
  [*(*(a1 + 32) + 88) _reduceSizeByDroppingResourcesIfNeeded];
  v2 = *(a1 + 32);
  v3 = v2[11];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_11;
  v4[3] = &unk_1E7A36668;
  v4[4] = v2;
  v5 = *(a1 + 40);
  [v2 _generateSpecializationIfPossibleForCompleteMetadata:v3 completionHandler:v4];
}

void __86__LPMetadataProvider__internalPostProcessResolvedMetadataWithEvent_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _setMetadata:v3 onlyUpgradeFields:0];
    v4 = LPLogChannelFetching();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 8);
      v7 = [*(v5 + 88) specialization];
      v8[0] = 67109378;
      v8[1] = v6;
      v9 = 2112;
      v10 = objc_opt_class();
      _os_log_impl(&dword_1AE886000, v4, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: generated specialization (%@) due to retrieved metadata", v8, 0x12u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)metadataProviderSpecialization:(id)specialization didFetchPreliminaryMetadata:(id)metadata
{
  v9 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v6 = LPLogChannelFetching();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v8[0] = 67109120;
    v8[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: specialization provided preliminary metadata", v8, 8u);
  }

  [metadataCopy _populateMetadataForBackwardCompatibility];
  [(LPMetadataProvider *)self _setMetadata:metadataCopy onlyUpgradeFields:1];
  [(LPLinkMetadata *)self->_metadata _invokePendingAsynchronousLoadUpdateHandlers];
}

- (void)metadataProviderSpecialization:(id)specialization didCompleteWithMetadata:(id)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  context = [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider context];
  event = [context event];
  [event didCompleteWithStatus:1];

  v8 = LPLogChannelFetching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v10[0] = 67109120;
    v10[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: completed from specialization", v10, 8u);
  }

  [metadataCopy _populateMetadataForBackwardCompatibility];
  [(LPMetadataProvider *)self _setMetadata:metadataCopy onlyUpgradeFields:0];
  [(LPMetadataProvider *)self _completedWithError:0];
}

- (void)metadataProviderSpecializationDidFail:(id)fail
{
  v12 = *MEMORY[0x1E69E9840];
  context = [(LPMetadataProviderSpecialization *)self->_specializedMetadataProvider context];
  event = [context event];
  [event didCompleteWithStatus:2];

  specializedMetadataProvider = self->_specializedMetadataProvider;
  self->_specializationState = 2;
  self->_specializedMetadataProvider = 0;

  v7 = LPLogChannelFetching();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    *buf = 67109120;
    v11 = loggingID;
    _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPMetadataProvider<%d>: specialization failed, retrying without specialization", buf, 8u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__LPMetadataProvider_metadataProviderSpecializationDidFail___block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__LPMetadataProvider__startWatchdogTimer__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE886000, v0, v1, "LPMetadataProvider<%d>: watchdog timer fired after completion", v2, v3, v4, v5, v6);
}

void __47__LPMetadataProvider__fetchMetadataFromWebView__block_invoke_cold_1(void *a1, uint64_t a2, int a3, NSObject *a4)
{
  *a2 = 67109378;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = a1;
  v6 = a1;
  _os_log_error_impl(&dword_1AE886000, a4, OS_LOG_TYPE_ERROR, "LPMetadataProvider<%d>: non-dictionary object returned in MetadataExtractor.js: %@", a2, 0x12u);
}

void __47__LPMetadataProvider__fetchMetadataFromWebView__block_invoke_cold_2(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2112;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPMetadataProvider<%d>: error thrown in MetadataExtractor.js: %@", buf, 0x12u);
}

- (void)webViewWebContentProcessDidTerminate:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1AE886000, v0, OS_LOG_TYPE_ERROR, "LPMetadataProvider<%d>: Web Content process was terminated", v1, 8u);
}

- (void)_firstImage:isSimilarToSecondImage:usingAnalyzer:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1AE886000, v1, OS_LOG_TYPE_ERROR, "LPMetadataProvider<%d>: failed to determine similarity between images (%@)", v2, 0x12u);
}

@end