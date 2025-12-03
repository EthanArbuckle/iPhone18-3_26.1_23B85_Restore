@interface AMSUIWebView
+ (id)_getSetCookiesForResponse:(id)response;
- (AMSUIWebClientContext)context;
- (AMSUIWebView)initWithContext:(id)context additionalScripts:(id)scripts;
- (double)bottomInset;
- (id)_jsonLogStringWithDictionary:(id)dictionary;
- (id)_parseRequestError:(id)error logKey:(id)key;
- (id)_prepareWithURL:(id)l loadBlock:(id)block;
- (id)_setupContentRulesForWebView:(id)view context:(id)context;
- (id)loadRequest:(id)request;
- (id)loadRequest:(id)request response:(id)response responseData:(id)data;
- (id)sendJSRequest:(id)request;
- (void)_addScriptsToContentController:(id)controller additionalScripts:(id)scripts;
- (void)_finishedLoading;
- (void)_openURL:(id)l completionHandler:(id)handler;
- (void)_receiveJSObject:(id)object logKey:(id)key replyHandler:(id)handler;
- (void)_refreshControlTriggered;
- (void)_setupRefreshControl;
- (void)_tearDownRefreshControl;
- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l;
- (void)_webView:(id)view didFailNavigation:(id)navigation withError:(id)error userInfo:(id)info;
- (void)_webView:(id)view navigation:(id)navigation didFailProvisionalLoadInSubframe:(id)subframe withError:(id)error;
- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation;
- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load;
- (void)dealloc;
- (void)takeSnapshotWithCompletion:(id)completion;
- (void)updateUserScriptsWithScripts:(id)scripts;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation AMSUIWebView

- (AMSUIWebView)initWithContext:(id)context additionalScripts:(id)scripts
{
  contextCopy = context;
  scriptsCopy = scripts;
  v42.receiver = self;
  v42.super_class = AMSUIWebView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(AMSUICommonView *)&v42 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_context, contextCopy);
    v14 = objc_alloc_init(MEMORY[0x1E69853A8]);
    [v14 _setWaitsForPaintAfterViewDidMoveToWindow:0];
    preferences = [v14 preferences];
    [preferences _setPunchOutWhiteBackgroundsInDarkMode:1];

    preferences2 = [v14 preferences];
    [preferences2 setJavaScriptCanOpenWindowsAutomatically:0];

    [v14 _setDrawsBackground:0];
    [v14 _setPrintsBackgrounds:0];
    [v14 _setApplePayEnabled:1];
    [v14 setMediaTypesRequiringUserActionForPlayback:MEMORY[0x1E695E0F0]];
    [v14 setAllowsInlineMediaPlayback:1];
    nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
    [v14 setWebsiteDataStore:nonPersistentDataStore];

    v18 = objc_alloc_init(MEMORY[0x1E6985350]);
    v19 = [[AMSUIWebDelegateProxy alloc] initWithDelegate:v13];
    pageWorld = [MEMORY[0x1E6985318] pageWorld];
    [v18 addScriptMessageHandlerWithReply:v19 contentWorld:pageWorld name:@"callback"];

    [(AMSUIWebView *)v13 _addScriptsToContentController:v18 additionalScripts:scriptsCopy];
    [v14 setUserContentController:v18];
    v21 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v14 configuration:{v8, v9, v10, v11}];
    underlyingWebView = v13->_underlyingWebView;
    v13->_underlyingWebView = v21;

    [(WKWebView *)v13->_underlyingWebView setAllowsBackForwardNavigationGestures:0];
    [(WKWebView *)v13->_underlyingWebView setUIDelegate:v13];
    [(WKWebView *)v13->_underlyingWebView setAccessibilityIdentifier:@"AMS.WebPage"];
    [(WKWebView *)v13->_underlyingWebView setNavigationDelegate:v13];
    v23 = MEMORY[0x1E698CBB8];
    clientInfo = [contextCopy clientInfo];
    v25 = [v23 userAgentForProcessInfo:clientInfo];
    [(WKWebView *)v13->_underlyingWebView setCustomUserAgent:v25];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WKWebView *)v13->_underlyingWebView ams_setBackgroundColor:clearColor];

    [(WKWebView *)v13->_underlyingWebView setOpaque:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    scrollView = [(WKWebView *)v13->_underlyingWebView scrollView];
    [scrollView setBackgroundColor:clearColor2];

    [(WKWebView *)v13->_underlyingWebView _setAllowsRemoteInspection:os_variant_has_internal_content()];
    [(WKWebView *)v13->_underlyingWebView _setUseSystemAppearance:1];
    [(AMSUIWebView *)v13 addSubview:v13->_underlyingWebView];
    [(WKWebView *)v13->_underlyingWebView setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor = [(AMSUIWebView *)v13 bottomAnchor];
    bottomAnchor2 = [(WKWebView *)v13->_underlyingWebView bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v31 setActive:1];

    leadingAnchor = [(AMSUIWebView *)v13 leadingAnchor];
    leadingAnchor2 = [(WKWebView *)v13->_underlyingWebView leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v34 setActive:1];

    topAnchor = [(WKWebView *)v13->_underlyingWebView topAnchor];
    topAnchor2 = [(AMSUIWebView *)v13 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];

    [v37 setActive:1];
    trailingAnchor = [(AMSUIWebView *)v13 trailingAnchor];
    trailingAnchor2 = [(WKWebView *)v13->_underlyingWebView trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 setActive:1];
  }

  return v13;
}

- (void)dealloc
{
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  [underlyingWebView stopLoading];

  v4.receiver = self;
  v4.super_class = AMSUIWebView;
  [(AMSUIWebView *)&v4 dealloc];
}

- (double)bottomInset
{
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  scrollView = [underlyingWebView scrollView];
  [scrollView contentInset];
  v5 = v4;

  return v5;
}

- (id)loadRequest:(id)request response:(id)response responseData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v29 = v13;
    v30 = 2114;
    v31 = logKey;
    v32 = 2048;
    v33 = [dataCopy length];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading HTML into WebView (length: %ld)", buf, 0x20u);
  }

  v17 = [responseCopy URL];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__AMSUIWebView_loadRequest_response_responseData___block_invoke;
  v24[3] = &unk_1E7F24A88;
  v24[4] = self;
  v25 = responseCopy;
  v26 = requestCopy;
  v27 = dataCopy;
  v18 = dataCopy;
  v19 = requestCopy;
  v20 = responseCopy;
  v21 = [(AMSUIWebView *)self _prepareWithURL:v17 loadBlock:v24];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __50__AMSUIWebView_loadRequest_response_responseData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _getSetCookiesForResponse:*(a1 + 40)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) underlyingWebView];
        v10 = [v9 configuration];
        v11 = [v10 websiteDataStore];
        v12 = [v11 httpCookieStore];
        [v12 setCookie:v8 completionHandler:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) underlyingWebView];
  v14 = [v13 loadSimulatedRequest:*(a1 + 48) response:*(a1 + 40) responseData:*(a1 + 56)];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)loadRequest:(id)request
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = [requestCopy URL];
    v12 = AMSLogableURL();
    *buf = 138543874;
    v21 = v7;
    v22 = 2114;
    v23 = logKey;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading request into WebView: %{public}@", buf, 0x20u);
  }

  v13 = [requestCopy URL];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __28__AMSUIWebView_loadRequest___block_invoke;
  v18[3] = &unk_1E7F243C0;
  v18[4] = self;
  v19 = requestCopy;
  v14 = requestCopy;
  v15 = [(AMSUIWebView *)self _prepareWithURL:v13 loadBlock:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __28__AMSUIWebView_loadRequest___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) underlyingWebView];
  v2 = [v3 loadRequest:*(a1 + 40)];
}

- (id)sendJSRequest:(id)request
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [MEMORY[0x1E695DF00] now];
  options = [requestCopy options];
  if (options && (v8 = options, v9 = MEMORY[0x1E696ACB0], [requestCopy options], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "isValidJSONObject:", v10), v10, v8, v9))
  {
    v11 = MEMORY[0x1E696ACB0];
    options2 = [requestCopy options];
    v44 = 0;
    v13 = [v11 dataWithJSONObject:options2 options:0 error:&v44];
    v14 = v44;

    if (!v13 || v14)
    {
      selfCopy = self;
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        [requestCopy logKey];
        v20 = v37 = v5;
        *buf = 138543874;
        v46 = v19;
        v47 = 2114;
        v48 = v20;
        v49 = 2114;
        v50 = v14;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error encoding service options. %{public}@", buf, 0x20u);

        v5 = v37;
      }

      v15 = 0;
      self = selfCopy;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
    }
  }

  else
  {
    v15 = 0;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v6;
    v23 = v5;
    selfCopy2 = self;
    v25 = objc_opt_class();
    logKey = [requestCopy logKey];
    service = [requestCopy service];
    options3 = v15;
    if (!v15)
    {
      options3 = [requestCopy options];
    }

    *buf = 138544130;
    v46 = v25;
    v47 = 2114;
    v48 = logKey;
    v49 = 2114;
    v50 = service;
    v51 = 2112;
    v52 = options3;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling service: %{public}@ %@", buf, 0x2Au);
    if (!v15)
    {
    }

    v5 = v23;
    self = selfCopy2;
    v6 = v38;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AMSUIWebView_sendJSRequest___block_invoke;
  block[3] = &unk_1E7F25638;
  block[4] = self;
  v40 = requestCopy;
  v41 = v15;
  v42 = v6;
  v29 = v5;
  v43 = v29;
  v30 = v6;
  v31 = v15;
  v32 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v33 = v43;
  v34 = v29;

  v35 = *MEMORY[0x1E69E9840];
  return v29;
}

void __30__AMSUIWebView_sendJSRequest___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) underlyingWebView];
  v17[0] = @"name";
  v3 = [*(a1 + 40) service];
  v4 = v3;
  v17[1] = @"data";
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = &stru_1F3921360;
  }

  v18[0] = v3;
  v18[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v7 = [MEMORY[0x1E6985318] pageWorld];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__AMSUIWebView_sendJSRequest___block_invoke_2;
  v12[3] = &unk_1E7F26C00;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 64);
  [v2 callAsyncJavaScript:@"return AMS.callService(name arguments:data);" inFrame:v6 inContentWorld:0 completionHandler:{v7, v12}];

  v11 = *MEMORY[0x1E69E9840];
}

void __30__AMSUIWebView_sendJSRequest___block_invoke_2(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [a1[4] timeIntervalSinceNow];
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v6)
  {
    v9 = a1[5];
    v10 = [a1[6] logKey];
    v11 = [v9 _parseRequestError:v6 logKey:v10];

    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[5];
      v15 = objc_opt_class();
      v16 = [a1[6] logKey];
      v17 = v8;
      *buf = 138544130;
      v44 = v15;
      v45 = 2114;
      v46 = v16;
      v47 = 2048;
      v48 = v17;
      v49 = 2114;
      v50 = v11;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Service call failed [%f] %{public}@", buf, 0x2Au);
    }

    v18 = a1[7];
LABEL_10:
    [v18 finishWithError:v11];
    goto LABEL_35;
  }

  v19 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v20 = v19;
  if (!v5)
  {
    if (!v19)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v29 = [v20 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = a1[5];
      v31 = objc_opt_class();
      v32 = [a1[6] logKey];
      v33 = v8;
      *buf = 138543874;
      v44 = v31;
      v45 = 2114;
      v46 = v32;
      v47 = 2048;
      v48 = v33;
      _os_log_impl(&dword_1BB036000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Service call finished [%f] (no result)", buf, 0x20u);
    }

    v34 = a1[7];
    v11 = AMSError();
    v18 = v34;
    goto LABEL_10;
  }

  if (!v19)
  {
    v20 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[5];
    v23 = objc_opt_class();
    v24 = [a1[6] logKey];
    v25 = v8;
    v26 = v25;
    v27 = [a1[5] _jsonLogStringWithDictionary:v5];
    *buf = 138544130;
    v44 = v23;
    v45 = 2114;
    v46 = v24;
    v47 = 2048;
    v48 = v26;
    v49 = 2112;
    v50 = v27;
    _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Service call succeeded [%f] %@", buf, 0x2Au);
  }

  v28 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v28;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v35 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = [v36 dataUsingEncoding:4];

    if (v37)
    {
      v42 = 0;
      v38 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v37 options:0 error:&v42];
      v39 = v42;
      objc_opt_class();
      v11 = 0;
      if (objc_opt_isKindOfClass())
      {
        v11 = v38;
      }
    }

    else
    {
      v39 = 0;
      v11 = 0;
    }
  }

  v40 = [[AMSUIWebJSResponse alloc] initWithRequest:a1[6] duration:v8];
  [(AMSUIWebJSResponse *)v40 setBody:v11];
  [a1[7] finishWithResult:v40];

LABEL_35:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)takeSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSUIWebView_takeSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F26C28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [underlyingWebView takeSnapshotWithConfiguration:0 completionHandler:v7];
}

void __43__AMSUIWebView_takeSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  image = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E69DCAB8];
    v8 = UIImageJPEGRepresentation(image, 0.9);
    v9 = [*(a1 + 32) traitCollection];
    [v9 displayScale];
    v10 = [v7 imageWithData:v8 scale:?];

    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateUserScriptsWithScripts:(id)scripts
{
  scriptsCopy = scripts;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = scriptsCopy;
  v5 = scriptsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingWebView];
  v3 = [v2 configuration];
  v4 = [v3 userContentController];

  [*(a1 + 32) _addScriptsToContentController:v4 additionalScripts:*(a1 + 40)];
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if (os_variant_has_internal_content() && (([MEMORY[0x1E698C890] QAMode] & 1) != 0 || objc_msgSend(MEMORY[0x1E698C890], "ignoreServerTrustEvaluation")))
  {
    v7 = MEMORY[0x1E696AF30];
    protectionSpace = [challengeCopy protectionSpace];
    v9 = [v7 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  context = [(AMSUIWebView *)self context];
  logKey = [context logKey];
  v11 = AMSUIWebSetSubLogKey(logKey, 0);

  body = [messageCopy body];
  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = body;
  }

  v14 = MEMORY[0x1E695E0F8];
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = [v15 objectForKeyedSubscript:@"command"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([v17 isEqualToString:@"pageDataServiceRegistered"])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] PageData service registered", buf, 0x16u);
    }

    [(AMSUIWebView *)self _finishedLoading];
  }

  else if ([v17 isEqualToString:@"run"])
  {
    v20 = [v15 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v34 = v21;
    v22 = [v21 dataUsingEncoding:4];
    v33 = v22;
    if (v22)
    {
      v37 = 0;
      v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v22 options:0 error:&v37];
      v24 = v37;
      objc_opt_class();
      v25 = 0;
      if (objc_opt_isKindOfClass())
      {
        v25 = v23;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (![v25 count] || v24)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        body2 = [messageCopy body];
        *buf = 138544130;
        v39 = v28;
        v40 = 2114;
        v41 = v11;
        v42 = 2112;
        v43 = body2;
        v30 = body2;
        v44 = 2114;
        v45 = v32;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode action. %@ %{public}@", buf, 0x2Au);
      }

      v24 = v32;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __75__AMSUIWebView_userContentController_didReceiveScriptMessage_replyHandler___block_invoke;
    v35[3] = &unk_1E7F26C50;
    v35[4] = self;
    v36 = handlerCopy;
    [(AMSUIWebView *)self _receiveJSObject:v25 logKey:v11 replyHandler:v35];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, @"AMS INTERNAL ERROR: Invalid Command");
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __75__AMSUIWebView_userContentController_didReceiveScriptMessage_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
    {
      v11 = 0;
      v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v11];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10, 0);
  }

  else
  {
    v8 = AMSUIWebJSError(a3);
    v9 = [*(a1 + 32) _jsonLogStringWithDictionary:v8];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  request = [action request];
  v9 = [request URL];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v22 = v12;
    v23 = 2114;
    v24 = logKey;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deciding navigation policy for: %{public}@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AMSUIWebView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v18[3] = &unk_1E7F26C78;
  v18[4] = self;
  v19 = v9;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = v9;
  [(AMSUIWebView *)self _openURL:v16 completionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __72__AMSUIWebView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = [*(a1 + 32) context];
      v12 = [v11 logKey];
      v13 = *(a1 + 40);
      v28 = 138543874;
      v29 = v10;
      v30 = 2114;
      v31 = v12;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opened: %{public}@", &v28, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v14 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = objc_opt_class();
        v18 = [*(a1 + 32) context];
        v19 = [v18 logKey];
        v20 = *(a1 + 40);
        v21 = AMSLogableError();
        v28 = 138544130;
        v29 = v17;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = v20;
        v34 = 2114;
        v35 = v21;
        _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open: %{public}@, error: %{public}@", &v28, 0x2Au);
      }
    }

    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = objc_opt_class();
      v24 = [*(a1 + 32) context];
      v25 = [v24 logKey];
      v26 = *(a1 + 40);
      v28 = 138543874;
      v29 = v23;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Redirecting to: %{public}@", &v28, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
  v27 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did commit navigation", &v14, 0x16u);
  }

  context2 = [(AMSUIWebView *)self context];
  dataProvider = [context2 dataProvider];
  syncProperties = [dataProvider syncProperties];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish navigation", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did start provisional navigation", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish same page nav", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)view navigationDidFinishDocumentLoad:(id)load
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish doc load", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    _request = [navigationCopy _request];
    v15 = [_request URL];
    v18 = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = logKey;
    v22 = 2112;
    v23 = v15;
    v24 = 2114;
    v25 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Did fail provisional navigation: %@. %{public}@", &v18, 0x2Au);
  }

  currentLoadPromise = [(AMSUIWebView *)self currentLoadPromise];
  [currentLoadPromise finishWithError:errorCopy];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)view navigation:(id)navigation didFailProvisionalLoadInSubframe:(id)subframe withError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  subframeCopy = subframe;
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = logKey;
    v20 = 2114;
    v21 = subframeCopy;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load in frame: %{public}@ error: %{public}@", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)view didFailNavigation:(id)navigation withError:(id)error userInfo:(id)info
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    context = [(AMSUIWebView *)self context];
    logKey = [context logKey];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = logKey;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to navigation. %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([action blockedLoad])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      context = [(AMSUIWebView *)self context];
      logKey = [context logKey];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = logKey;
      v19 = 2112;
      v20 = lCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load UNTRUSTED resource: %@", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setupRefreshControl
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
  [v4 addTarget:self action:sel__refreshControlTriggered forControlEvents:4096];
  scrollView = [(WKWebView *)self->_underlyingWebView scrollView];
  [scrollView setRefreshControl:v4];
}

- (void)_tearDownRefreshControl
{
  scrollView = [(WKWebView *)self->_underlyingWebView scrollView];
  [scrollView setRefreshControl:0];
}

- (void)_refreshControlTriggered
{
  context = [(AMSUIWebView *)self context];
  logKey = [context logKey];
  v5 = AMSUIWebSetSubLogKey(logKey, 0);

  v6 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"PageRefresh" logKey:v5];
  context2 = [(AMSUIWebView *)self context];
  dataProvider = [context2 dataProvider];
  v9 = [dataProvider runJSRequest:v6];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__AMSUIWebView__refreshControlTriggered__block_invoke;
  v10[3] = &unk_1E7F26CA0;
  objc_copyWeak(&v11, &location);
  [v9 addFinishBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __40__AMSUIWebView__refreshControlTriggered__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained underlyingWebView];
  v2 = [v1 scrollView];
  v3 = [v2 refreshControl];
  [v3 endRefreshing];
}

- (void)_addScriptsToContentController:(id)controller additionalScripts:(id)scripts
{
  v72 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  scriptsCopy = scripts;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  baseScripts = [(AMSUIWebView *)self baseScripts];

  if (!baseScripts)
  {
    v38 = scriptsCopy;
    v40 = controllerCopy;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = [&unk_1F394ABD8 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v45)
    {
      v9 = *v58;
      v10 = 0x1E696A000uLL;
      v42 = *v58;
      selfCopy = self;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v58 != v9)
          {
            objc_enumerationMutation(&unk_1F394ABD8);
          }

          v12 = *(*(&v57 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [*(v10 + 2792) bundleForClass:objc_opt_class()];
          v15 = [v14 URLForResource:v12 withExtension:@"js"];

          v56 = 0;
          v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v15 encoding:4 error:&v56];
          v17 = v56;
          if (v17)
          {
            v46 = v16;
            v47 = v13;
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!mEMORY[0x1E698C968])
            {
              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
            }

            oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v20 = v10;
              v21 = objc_opt_class();
              context = [(AMSUIWebView *)self context];
              logKey = [context logKey];
              *buf = 138544130;
              v64 = v21;
              v10 = v20;
              v65 = 2114;
              v66 = logKey;
              v67 = 2114;
              v68 = v12;
              v69 = 2114;
              v70 = v17;
              _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);

              v9 = v42;
              self = selfCopy;
            }

            v24 = v46;
            v13 = v47;
          }

          else
          {
            v24 = v16;
            mEMORY[0x1E698C968] = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v16 injectionTime:0 forMainFrameOnly:1];
            [v44 addObject:mEMORY[0x1E698C968]];
          }

          objc_autoreleasePoolPop(v13);
        }

        v45 = [&unk_1F394ABD8 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v45);
    }

    v25 = [v44 copy];
    [(AMSUIWebView *)self setBaseScripts:v25];

    scriptsCopy = v39;
    controllerCopy = v41;
  }

  [controllerCopy removeAllUserScripts];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  baseScripts2 = [(AMSUIWebView *)self baseScripts];
  v27 = [baseScripts2 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v53;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(baseScripts2);
        }

        [controllerCopy addUserScript:*(*(&v52 + 1) + 8 * j)];
      }

      v28 = [baseScripts2 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v28);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = scriptsCopy;
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:*(*(&v48 + 1) + 8 * k) injectionTime:0 forMainFrameOnly:1];
        [controllerCopy addUserScript:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v33);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_finishedLoading
{
  self->_contentLoaded = 1;
  currentLoadPromise = [(AMSUIWebView *)self currentLoadPromise];
  [currentLoadPromise finishWithSuccess];

  [(AMSUIWebView *)self setCurrentLoadPromise:0];
}

+ (id)_getSetCookiesForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = responseCopy;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = MEMORY[0x1E696AC58];
    allHeaderFields = [v4 allHeaderFields];
    v7 = [v4 URL];
    v8 = [v5 cookiesWithResponseHeaderFields:allHeaderFields forURL:v7];
    v9 = [v8 mutableCopy];

    allHeaderFields2 = [v4 allHeaderFields];
    v11 = [allHeaderFields2 objectForKey:*MEMORY[0x1E698C5B0]];

    if ([v11 length])
    {
      allHeaderFields3 = [v4 allHeaderFields];
      v13 = [allHeaderFields3 mutableCopy];

      [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x1E698C5A8]];
      v14 = MEMORY[0x1E696AC58];
      v15 = [v4 URL];
      v16 = [v14 cookiesWithResponseHeaderFields:v13 forURL:v15];
      [v9 addObjectsFromArray:v16];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_jsonLogStringWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryCopy])
  {
    v4 = [dictionaryCopy mutableCopy];
    v5 = [v4 objectForKeyedSubscript:@"rawPassword"];
    if (v5)
    {
      v6 = @"****";
    }

    else
    {
      v6 = 0;
    }

    [v4 setObject:v6 forKeyedSubscript:@"rawPassword"];

    v7 = MEMORY[0x1E696ACB0];
    v8 = [v4 copy];
    v9 = [v7 dataWithJSONObject:v8 options:0 error:0];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionaryCopy = dictionaryCopy;
    }

    else
    {
      dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", dictionaryCopy];
    }

    v10 = dictionaryCopy;
  }

  return v10;
}

- (void)_openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"tel", @"telprompt", 0}];
  scheme = [lCopy scheme];
  v9 = [v7 containsObject:scheme];

  if (v9)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v16 = 0;
    v11 = [defaultWorkspace isApplicationAvailableToOpenURL:lCopy error:&v16];
    v12 = v16;

    if (v11)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__AMSUIWebView__openURL_completionHandler___block_invoke;
      v14[3] = &unk_1E7F258D8;
      v15 = handlerCopy;
      [mEMORY[0x1E69DC668] openURL:lCopy options:MEMORY[0x1E695E0F8] completionHandler:v14];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)_parseRequestError:(id)error logKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  keyCopy = key;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WKJavaScriptExceptionMessage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 dataUsingEncoding:4];
  if (!v10)
  {
    v15 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v27 = 0;
  v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v27];
  v12 = v27;
  if (!v11)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v13 = [v11 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v16 = [v11 objectForKeyedSubscript:@"userInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
LABEL_15:
    if (v9)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x1E6985438]])
      {
        code = [errorCopy code];

        if (code == 4)
        {
          v19 = v9;
LABEL_21:
          v14 = v19;
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v19 = [errorCopy description];
    goto LABEL_21;
  }

LABEL_22:
  if (v12)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = keyCopy;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] JS error does not contain an object: %{public}@", buf, 0x20u);
    }
  }

  v23 = *MEMORY[0x1E698C548];
  v24 = AMSCustomError();

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_prepareWithURL:(id)l loadBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v9 = MEMORY[0x1E696AEC0];
  host = [lCopy host];
  v11 = [v9 stringWithFormat:@"AMS %@", host];
  underlyingWebView = [(AMSUIWebView *)self underlyingWebView];
  [underlyingWebView _setRemoteInspectionNameOverride:v11];

  contentRulesPromise = [(AMSUIWebView *)self contentRulesPromise];

  if (!contentRulesPromise)
  {
    underlyingWebView2 = [(AMSUIWebView *)self underlyingWebView];
    context = [(AMSUIWebView *)self context];
    v16 = [(AMSUIWebView *)self _setupContentRulesForWebView:underlyingWebView2 context:context];
    [(AMSUIWebView *)self setContentRulesPromise:v16];
  }

  objc_initWeak(&location, self);
  contentRulesPromise2 = [(AMSUIWebView *)self contentRulesPromise];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke;
  v23[3] = &unk_1E7F26CC8;
  objc_copyWeak(&v26, &location);
  v18 = v8;
  v24 = v18;
  v19 = blockCopy;
  v25 = v19;
  [contentRulesPromise2 addFinishBlock:v23];

  v20 = v25;
  v21 = v18;

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v21;
}

void __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (v4)
  {
    [a1[4] finishWithError:v4];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke_2;
    block[3] = &unk_1E7F25C40;
    block[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentLoadPromise:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_receiveJSObject:(id)object logKey:(id)key replyHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  handlerCopy = handler;
  v11 = AMSSetLogKey();
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [objectCopy objectForKeyedSubscript:@"actionClass"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v31 = v14;
  v15 = [v14 isEqualToString:@"AMSLogAction"];
  if ((v15 & 1) == 0)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [(AMSUIWebView *)self _jsonLogStringWithDictionary:objectCopy];
      *buf = 138544130;
      v39 = v18;
      v40 = 2114;
      v41 = keyCopy;
      v42 = 2114;
      v43 = v31;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Receiving action: [%{public}@] %@", buf, 0x2Au);
    }
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke;
  aBlock[3] = &unk_1E7F26D18;
  v20 = handlerCopy;
  v35 = v20;
  objc_copyWeak(&v36, buf);
  v21 = keyCopy;
  v33 = v21;
  v22 = v12;
  v34 = v22;
  v37 = v15;
  v23 = _Block_copy(aBlock);
  if (objectCopy)
  {
    context = [(AMSUIWebView *)self context];
    v25 = context == 0;

    if (v25)
    {
      v27 = AMSError();
      v23[2](v23, 0, v27);
    }

    else
    {
      context2 = [(AMSUIWebView *)self context];
      v27 = [AMSUIWebActionMapper actionFromJSObject:objectCopy context:context2];

      if (v27)
      {
        runAction = [v27 runAction];
        [runAction addFinishBlock:v23];
      }

      else
      {
        runAction = AMSError();
        v23[2](v23, 0, runAction);
      }
    }

    v29 = 0;
  }

  else
  {
    v29 = AMSError();
    v23[2](v23, 0, v29);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x1E69E9840];
}

void __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke_2;
  block[3] = &unk_1E7F26CF0;
  v14 = *(a1 + 48);
  objc_copyWeak(&v15, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v16 = *(a1 + 64);
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
}

void __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
      [*(a1 + 40) timeIntervalSinceNow];
      if (v3 >= 0.0)
      {
        v4 = v3;
      }

      else
      {
        v4 = -v3;
      }

      v5 = *(a1 + 80);
      if (*(a1 + 48))
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v6)
          {
            v6 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v7 = [v6 OSLogObject];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v8 = objc_opt_class();
            v9 = *(a1 + 32);
            v10 = v4;
            v11 = *(a1 + 48);
            v27 = 138544130;
            v28 = v8;
            v29 = 2114;
            v30 = v9;
            v31 = 2048;
            v32 = v10;
            v33 = 2114;
            v34 = v11;
            _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Action failed. [%f] %{public}@", &v27, 0x2Au);
          }

          v12 = *(a1 + 48);
        }

        v13 = *(*(a1 + 64) + 16);
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v18)
          {
            v18 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v19 = [v18 OSLogObject];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            v21 = *(a1 + 32);
            v22 = v4;
            v23 = v22;
            v24 = [WeakRetained _jsonLogStringWithDictionary:*(a1 + 56)];
            v27 = 138544130;
            v28 = v20;
            v29 = 2114;
            v30 = v21;
            v31 = 2048;
            v32 = v23;
            v33 = 2112;
            v34 = v24;
            _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action succeeded. [%f] Result: %@", &v27, 0x2Au);
          }
        }

        v25 = *(a1 + 56);
        v13 = *(*(a1 + 64) + 16);
      }

      v13();
    }

    else
    {
      v14 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = *(a1 + 32);
        v27 = 138543618;
        v28 = v16;
        v29 = 2114;
        v30 = v17;
        _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Self has vanished", &v27, 0x16u);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_setupContentRulesForWebView:(id)view context:(id)context
{
  viewCopy = view;
  contextCopy = context;
  context = [(AMSUIWebView *)self context];
  disableTrustedDomains = [context disableTrustedDomains];

  if (disableTrustedDomains)
  {
    promiseWithSuccess = [MEMORY[0x1E698C7F0] promiseWithSuccess];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    v12 = [contextCopy bag];
    v13 = [v12 arrayForKey:@"trustedDomains"];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke;
    v17[3] = &unk_1E7F26D68;
    v17[4] = self;
    v14 = v11;
    v18 = v14;
    v19 = viewCopy;
    [v13 valueWithCompletion:v17];
    v15 = v19;
    promiseWithSuccess = v14;
  }

  return promiseWithSuccess;
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v66 = v11;
      v67 = 2114;
      v68 = v12;
      v69 = 2114;
      v70 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch trusted domains. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v7];
  }

  else
  {
    v47 = a1;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v46 = v6;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = v19;
          if ([v19 hasPrefix:@"."])
          {
            v20 = [v19 stringByReplacingCharactersInRange:0 withString:{1, @"*"}];
          }

          if ([v19 hasPrefix:@"*."])
          {
            v21 = [v20 stringByReplacingCharactersInRange:0 withString:{2, @"*"}];

            v20 = v21;
          }

          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v16);
    }

    v60[1] = v13;
    v61[0] = @"trigger";
    v59[0] = @"url-filter";
    v59[1] = @"unless-domain";
    v60[0] = @".*";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v61[1] = @"action";
    v62[0] = v22;
    v62[1] = &unk_1F394AA80;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
    v63 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];

    v54 = 0;
    v25 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v24 options:0 error:&v54];
    v26 = v54;
    if (v26)
    {
      v27 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      v7 = 0;
      v6 = v46;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(v47 + 32);
        v30 = objc_opt_class();
        v31 = AMSLogKey();
        *buf = 138543874;
        v66 = v30;
        v67 = 2114;
        v68 = v31;
        v69 = 2114;
        v70 = v26;
        _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode content rules. %{public}@", buf, 0x20u);
      }

      [*(v47 + 40) finishWithError:v26];
    }

    else
    {
      if (v25 && (v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v25 encoding:4]) != 0)
      {
        v33 = v32;
        v34 = [MEMORY[0x1E696AFB0] UUID];
        v35 = [v34 UUIDString];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_193;
        block[3] = &unk_1E7F25638;
        v49 = v35;
        v50 = v33;
        v36 = *(v47 + 40);
        v51 = *(v47 + 32);
        v52 = v36;
        v53 = *(v47 + 48);
        v37 = v33;
        v38 = v35;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v6 = v46;
      }

      else
      {
        v39 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        v6 = v46;
        if (!v39)
        {
          v39 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v40 = [v39 OSLogObject];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = *(v47 + 32);
          v42 = objc_opt_class();
          v43 = AMSLogKey();
          *buf = 138543618;
          v66 = v42;
          v67 = 2114;
          v68 = v43;
          _os_log_impl(&dword_1BB036000, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode content rules into JSON. (nil)", buf, 0x16u);
        }

        v44 = *(v47 + 40);
        v37 = AMSError();
        [v44 finishWithError:v37];
      }

      v7 = 0;
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_193(uint64_t a1)
{
  v2 = [MEMORY[0x1E6985310] defaultStore];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_2;
  v6[3] = &unk_1E7F26D40;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v7 = v5;
  v8 = *(a1 + 64);
  [v2 compileContentRuleListForIdentifier:v3 encodedContentRuleList:v4 completionHandler:v6];
}

void __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = AMSError();
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v18 = 138543874;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to compile content rules. %{public}@", &v18, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (v5)
    {
      v12 = [*(a1 + 48) configuration];
      v13 = [v12 userContentController];
      [v13 addContentRuleList:v5];
    }

    else
    {
      v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v12)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v18 = 138543618;
        v19 = v15;
        v20 = 2114;
        v21 = v16;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] WARNING: No contentRuleList", &v18, 0x16u);
      }
    }

    [*(a1 + 40) finishWithSuccess];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end