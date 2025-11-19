@interface AMSUIWebView
+ (id)_getSetCookiesForResponse:(id)a3;
- (AMSUIWebClientContext)context;
- (AMSUIWebView)initWithContext:(id)a3 additionalScripts:(id)a4;
- (double)bottomInset;
- (id)_jsonLogStringWithDictionary:(id)a3;
- (id)_parseRequestError:(id)a3 logKey:(id)a4;
- (id)_prepareWithURL:(id)a3 loadBlock:(id)a4;
- (id)_setupContentRulesForWebView:(id)a3 context:(id)a4;
- (id)loadRequest:(id)a3;
- (id)loadRequest:(id)a3 response:(id)a4 responseData:(id)a5;
- (id)sendJSRequest:(id)a3;
- (void)_addScriptsToContentController:(id)a3 additionalScripts:(id)a4;
- (void)_finishedLoading;
- (void)_openURL:(id)a3 completionHandler:(id)a4;
- (void)_receiveJSObject:(id)a3 logKey:(id)a4 replyHandler:(id)a5;
- (void)_refreshControlTriggered;
- (void)_setupRefreshControl;
- (void)_tearDownRefreshControl;
- (void)_webView:(id)a3 contentRuleListWithIdentifier:(id)a4 performedAction:(id)a5 forURL:(id)a6;
- (void)_webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5 userInfo:(id)a6;
- (void)_webView:(id)a3 navigation:(id)a4 didFailProvisionalLoadInSubframe:(id)a5 withError:(id)a6;
- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5;
- (void)_webView:(id)a3 navigationDidFinishDocumentLoad:(id)a4;
- (void)dealloc;
- (void)takeSnapshotWithCompletion:(id)a3;
- (void)updateUserScriptsWithScripts:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation AMSUIWebView

- (AMSUIWebView)initWithContext:(id)a3 additionalScripts:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    objc_storeWeak(&v12->_context, v6);
    v14 = objc_alloc_init(MEMORY[0x1E69853A8]);
    [v14 _setWaitsForPaintAfterViewDidMoveToWindow:0];
    v15 = [v14 preferences];
    [v15 _setPunchOutWhiteBackgroundsInDarkMode:1];

    v16 = [v14 preferences];
    [v16 setJavaScriptCanOpenWindowsAutomatically:0];

    [v14 _setDrawsBackground:0];
    [v14 _setPrintsBackgrounds:0];
    [v14 _setApplePayEnabled:1];
    [v14 setMediaTypesRequiringUserActionForPlayback:MEMORY[0x1E695E0F0]];
    [v14 setAllowsInlineMediaPlayback:1];
    v17 = [MEMORY[0x1E69853B8] nonPersistentDataStore];
    [v14 setWebsiteDataStore:v17];

    v18 = objc_alloc_init(MEMORY[0x1E6985350]);
    v19 = [[AMSUIWebDelegateProxy alloc] initWithDelegate:v13];
    v20 = [MEMORY[0x1E6985318] pageWorld];
    [v18 addScriptMessageHandlerWithReply:v19 contentWorld:v20 name:@"callback"];

    [(AMSUIWebView *)v13 _addScriptsToContentController:v18 additionalScripts:v7];
    [v14 setUserContentController:v18];
    v21 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v14 configuration:{v8, v9, v10, v11}];
    underlyingWebView = v13->_underlyingWebView;
    v13->_underlyingWebView = v21;

    [(WKWebView *)v13->_underlyingWebView setAllowsBackForwardNavigationGestures:0];
    [(WKWebView *)v13->_underlyingWebView setUIDelegate:v13];
    [(WKWebView *)v13->_underlyingWebView setAccessibilityIdentifier:@"AMS.WebPage"];
    [(WKWebView *)v13->_underlyingWebView setNavigationDelegate:v13];
    v23 = MEMORY[0x1E698CBB8];
    v24 = [v6 clientInfo];
    v25 = [v23 userAgentForProcessInfo:v24];
    [(WKWebView *)v13->_underlyingWebView setCustomUserAgent:v25];

    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(WKWebView *)v13->_underlyingWebView ams_setBackgroundColor:v26];

    [(WKWebView *)v13->_underlyingWebView setOpaque:0];
    v27 = [MEMORY[0x1E69DC888] clearColor];
    v28 = [(WKWebView *)v13->_underlyingWebView scrollView];
    [v28 setBackgroundColor:v27];

    [(WKWebView *)v13->_underlyingWebView _setAllowsRemoteInspection:os_variant_has_internal_content()];
    [(WKWebView *)v13->_underlyingWebView _setUseSystemAppearance:1];
    [(AMSUIWebView *)v13 addSubview:v13->_underlyingWebView];
    [(WKWebView *)v13->_underlyingWebView setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(AMSUIWebView *)v13 bottomAnchor];
    v30 = [(WKWebView *)v13->_underlyingWebView bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(AMSUIWebView *)v13 leadingAnchor];
    v33 = [(WKWebView *)v13->_underlyingWebView leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(WKWebView *)v13->_underlyingWebView topAnchor];
    v36 = [(AMSUIWebView *)v13 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    [v37 setActive:1];
    v38 = [(AMSUIWebView *)v13 trailingAnchor];
    v39 = [(WKWebView *)v13->_underlyingWebView trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v40 setActive:1];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(AMSUIWebView *)self underlyingWebView];
  [v3 stopLoading];

  v4.receiver = self;
  v4.super_class = AMSUIWebView;
  [(AMSUIWebView *)&v4 dealloc];
}

- (double)bottomInset
{
  v2 = [(AMSUIWebView *)self underlyingWebView];
  v3 = [v2 scrollView];
  [v3 contentInset];
  v5 = v4;

  return v5;
}

- (id)loadRequest:(id)a3 response:(id)a4 responseData:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(AMSUIWebView *)self context];
    v16 = [v15 logKey];
    *buf = 138543874;
    v29 = v13;
    v30 = 2114;
    v31 = v16;
    v32 = 2048;
    v33 = [v10 length];
    _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading HTML into WebView (length: %ld)", buf, 0x20u);
  }

  v17 = [v9 URL];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__AMSUIWebView_loadRequest_response_responseData___block_invoke;
  v24[3] = &unk_1E7F24A88;
  v24[4] = self;
  v25 = v9;
  v26 = v8;
  v27 = v10;
  v18 = v10;
  v19 = v8;
  v20 = v9;
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

- (id)loadRequest:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(AMSUIWebView *)self context];
    v10 = [v9 logKey];
    v11 = [v4 URL];
    v12 = AMSLogableURL();
    *buf = 138543874;
    v21 = v7;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading request into WebView: %{public}@", buf, 0x20u);
  }

  v13 = [v4 URL];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __28__AMSUIWebView_loadRequest___block_invoke;
  v18[3] = &unk_1E7F243C0;
  v18[4] = self;
  v19 = v4;
  v14 = v4;
  v15 = [(AMSUIWebView *)self _prepareWithURL:v13 loadBlock:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __28__AMSUIWebView_loadRequest___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) underlyingWebView];
  v2 = [v3 loadRequest:*(a1 + 40)];
}

- (id)sendJSRequest:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v4 options];
  if (v7 && (v8 = v7, v9 = MEMORY[0x1E696ACB0], [v4 options], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "isValidJSONObject:", v10), v10, v8, v9))
  {
    v11 = MEMORY[0x1E696ACB0];
    v12 = [v4 options];
    v44 = 0;
    v13 = [v11 dataWithJSONObject:v12 options:0 error:&v44];
    v14 = v44;

    if (!v13 || v14)
    {
      v16 = self;
      v17 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v17)
      {
        v17 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        [v4 logKey];
        v20 = v37 = v5;
        *buf = 138543874;
        v46 = v19;
        v47 = 2114;
        v48 = v20;
        v49 = 2114;
        v50 = v14;
        _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error encoding service options. %{public}@", buf, 0x20u);

        v5 = v37;
      }

      v15 = 0;
      self = v16;
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

  v21 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v21)
  {
    v21 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v6;
    v23 = v5;
    v24 = self;
    v25 = objc_opt_class();
    v26 = [v4 logKey];
    v27 = [v4 service];
    v28 = v15;
    if (!v15)
    {
      v28 = [v4 options];
    }

    *buf = 138544130;
    v46 = v25;
    v47 = 2114;
    v48 = v26;
    v49 = 2114;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling service: %{public}@ %@", buf, 0x2Au);
    if (!v15)
    {
    }

    v5 = v23;
    self = v24;
    v6 = v38;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AMSUIWebView_sendJSRequest___block_invoke;
  block[3] = &unk_1E7F25638;
  block[4] = self;
  v40 = v4;
  v41 = v15;
  v42 = v6;
  v29 = v5;
  v43 = v29;
  v30 = v6;
  v31 = v15;
  v32 = v4;
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

- (void)takeSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebView *)self underlyingWebView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSUIWebView_takeSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F26C28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 takeSnapshotWithConfiguration:0 completionHandler:v7];
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

- (void)updateUserScriptsWithScripts:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __45__AMSUIWebView_updateUserScriptsWithScripts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingWebView];
  v3 = [v2 configuration];
  v4 = [v3 userContentController];

  [*(a1 + 32) _addScriptsToContentController:v4 additionalScripts:*(a1 + 40)];
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v6 = a5;
  if (os_variant_has_internal_content() && (([MEMORY[0x1E698C890] QAMode] & 1) != 0 || objc_msgSend(MEMORY[0x1E698C890], "ignoreServerTrustEvaluation")))
  {
    v7 = MEMORY[0x1E696AF30];
    v8 = [v10 protectionSpace];
    v9 = [v7 credentialForTrust:{objc_msgSend(v8, "serverTrust")}];
    v6[2](v6, 0, v9);
  }

  else
  {
    v6[2](v6, 1, 0);
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIWebView *)self context];
  v10 = [v9 logKey];
  v11 = AMSUIWebSetSubLogKey(v10, 0);

  v12 = [v7 body];
  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
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
    v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = v11;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] PageData service registered", buf, 0x16u);
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
      v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v26)
      {
        v26 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = [v7 body];
        *buf = 138544130;
        v39 = v28;
        v40 = 2114;
        v41 = v11;
        v42 = 2112;
        v43 = v29;
        v30 = v29;
        v44 = 2114;
        v45 = v32;
        _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode action. %@ %{public}@", buf, 0x2Au);
      }

      v24 = v32;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __75__AMSUIWebView_userContentController_didReceiveScriptMessage_replyHandler___block_invoke;
    v35[3] = &unk_1E7F26C50;
    v35[4] = self;
    v36 = v8;
    [(AMSUIWebView *)self _receiveJSObject:v25 logKey:v11 replyHandler:v35];
  }

  else
  {
    (*(v8 + 2))(v8, 0, @"AMS INTERNAL ERROR: Invalid Command");
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

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 request];
  v9 = [v8 URL];

  v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v10)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = [(AMSUIWebView *)self context];
    v14 = [v13 logKey];
    *buf = 138543874;
    v22 = v12;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deciding navigation policy for: %{public}@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AMSUIWebView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
  v18[3] = &unk_1E7F26C78;
  v18[4] = self;
  v19 = v9;
  v20 = v7;
  v15 = v7;
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

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebView *)self context];
    v9 = [v8 logKey];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did commit navigation", &v14, 0x16u);
  }

  v10 = [(AMSUIWebView *)self context];
  v11 = [v10 dataProvider];
  v12 = [v11 syncProperties];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebView *)self context];
    v9 = [v8 logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish navigation", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebView *)self context];
    v9 = [v8 logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did start provisional navigation", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(AMSUIWebView *)self context];
    v10 = [v9 logKey];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish same page nav", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)a3 navigationDidFinishDocumentLoad:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebView *)self context];
    v9 = [v8 logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did finish doc load", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698C968] sharedConfig];
  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = [(AMSUIWebView *)self context];
    v13 = [v12 logKey];
    v14 = [v7 _request];
    v15 = [v14 URL];
    v18 = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = v13;
    v22 = 2112;
    v23 = v15;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Did fail provisional navigation: %@. %{public}@", &v18, 0x2Au);
  }

  v16 = [(AMSUIWebView *)self currentLoadPromise];
  [v16 finishWithError:v8];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)a3 navigation:(id)a4 didFailProvisionalLoadInSubframe:(id)a5 withError:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a6;
  v10 = [MEMORY[0x1E698C968] sharedConfig];
  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = [(AMSUIWebView *)self context];
    v14 = [v13 logKey];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load in frame: %{public}@ error: %{public}@", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5 userInfo:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [MEMORY[0x1E698C968] sharedConfig];
  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = [(AMSUIWebView *)self context];
    v12 = [v11 logKey];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to navigation. %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_webView:(id)a3 contentRuleListWithIdentifier:(id)a4 performedAction:(id)a5 forURL:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a6;
  if ([a5 blockedLoad])
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = [(AMSUIWebView *)self context];
      v13 = [v12 logKey];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load UNTRUSTED resource: %@", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setupRefreshControl
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
  [v4 addTarget:self action:sel__refreshControlTriggered forControlEvents:4096];
  v3 = [(WKWebView *)self->_underlyingWebView scrollView];
  [v3 setRefreshControl:v4];
}

- (void)_tearDownRefreshControl
{
  v2 = [(WKWebView *)self->_underlyingWebView scrollView];
  [v2 setRefreshControl:0];
}

- (void)_refreshControlTriggered
{
  v3 = [(AMSUIWebView *)self context];
  v4 = [v3 logKey];
  v5 = AMSUIWebSetSubLogKey(v4, 0);

  v6 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"PageRefresh" logKey:v5];
  v7 = [(AMSUIWebView *)self context];
  v8 = [v7 dataProvider];
  v9 = [v8 runJSRequest:v6];

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

- (void)_addScriptsToContentController:(id)a3 additionalScripts:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(AMSUIWebView *)self baseScripts];

  if (!v8)
  {
    v38 = v7;
    v40 = v6;
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
      v43 = self;
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
            v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!v18)
            {
              v18 = [MEMORY[0x1E698C968] sharedConfig];
            }

            v19 = [v18 OSLogObject];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = v10;
              v21 = objc_opt_class();
              v22 = [(AMSUIWebView *)self context];
              v23 = [v22 logKey];
              *buf = 138544130;
              v64 = v21;
              v10 = v20;
              v65 = 2114;
              v66 = v23;
              v67 = 2114;
              v68 = v12;
              v69 = 2114;
              v70 = v17;
              _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);

              v9 = v42;
              self = v43;
            }

            v24 = v46;
            v13 = v47;
          }

          else
          {
            v24 = v16;
            v18 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v16 injectionTime:0 forMainFrameOnly:1];
            [v44 addObject:v18];
          }

          objc_autoreleasePoolPop(v13);
        }

        v45 = [&unk_1F394ABD8 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v45);
    }

    v25 = [v44 copy];
    [(AMSUIWebView *)self setBaseScripts:v25];

    v7 = v39;
    v6 = v41;
  }

  [v6 removeAllUserScripts];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = [(AMSUIWebView *)self baseScripts];
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
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
          objc_enumerationMutation(v26);
        }

        [v6 addUserScript:*(*(&v52 + 1) + 8 * j)];
      }

      v28 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v28);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v7;
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
        [v6 addUserScript:v36];
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
  v3 = [(AMSUIWebView *)self currentLoadPromise];
  [v3 finishWithSuccess];

  [(AMSUIWebView *)self setCurrentLoadPromise:0];
}

+ (id)_getSetCookiesForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = MEMORY[0x1E696AC58];
    v6 = [v4 allHeaderFields];
    v7 = [v4 URL];
    v8 = [v5 cookiesWithResponseHeaderFields:v6 forURL:v7];
    v9 = [v8 mutableCopy];

    v10 = [v4 allHeaderFields];
    v11 = [v10 objectForKey:*MEMORY[0x1E698C5B0]];

    if ([v11 length])
    {
      v12 = [v4 allHeaderFields];
      v13 = [v12 mutableCopy];

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

- (id)_jsonLogStringWithDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [MEMORY[0x1E696ACB0] isValidJSONObject:v3])
  {
    v4 = [v3 mutableCopy];
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
      v11 = v3;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
    }

    v10 = v11;
  }

  return v10;
}

- (void)_openURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"tel", @"telprompt", 0}];
  v8 = [v5 scheme];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E6963608] defaultWorkspace];
    v16 = 0;
    v11 = [v10 isApplicationAvailableToOpenURL:v5 error:&v16];
    v12 = v16;

    if (v11)
    {
      v13 = [MEMORY[0x1E69DC668] sharedApplication];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__AMSUIWebView__openURL_completionHandler___block_invoke;
      v14[3] = &unk_1E7F258D8;
      v15 = v6;
      [v13 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:v14];
    }

    else
    {
      (*(v6 + 2))(v6, 0, v12);
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (id)_parseRequestError:(id)a3 logKey:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WKJavaScriptExceptionMessage"];

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
      v17 = [v5 domain];
      if ([v17 isEqualToString:*MEMORY[0x1E6985438]])
      {
        v18 = [v5 code];

        if (v18 == 4)
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

    v19 = [v5 description];
    goto LABEL_21;
  }

LABEL_22:
  if (v12)
  {
    v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v6;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] JS error does not contain an object: %{public}@", buf, 0x20u);
    }
  }

  v23 = *MEMORY[0x1E698C548];
  v24 = AMSCustomError();

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_prepareWithURL:(id)a3 loadBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v6 host];
  v11 = [v9 stringWithFormat:@"AMS %@", v10];
  v12 = [(AMSUIWebView *)self underlyingWebView];
  [v12 _setRemoteInspectionNameOverride:v11];

  v13 = [(AMSUIWebView *)self contentRulesPromise];

  if (!v13)
  {
    v14 = [(AMSUIWebView *)self underlyingWebView];
    v15 = [(AMSUIWebView *)self context];
    v16 = [(AMSUIWebView *)self _setupContentRulesForWebView:v14 context:v15];
    [(AMSUIWebView *)self setContentRulesPromise:v16];
  }

  objc_initWeak(&location, self);
  v17 = [(AMSUIWebView *)self contentRulesPromise];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__AMSUIWebView__prepareWithURL_loadBlock___block_invoke;
  v23[3] = &unk_1E7F26CC8;
  objc_copyWeak(&v26, &location);
  v18 = v8;
  v24 = v18;
  v19 = v7;
  v25 = v19;
  [v17 addFinishBlock:v23];

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

- (void)_receiveJSObject:(id)a3 logKey:(id)a4 replyHandler:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AMSSetLogKey();
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [v8 objectForKeyedSubscript:@"actionClass"];
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
    v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v16)
    {
      v16 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [(AMSUIWebView *)self _jsonLogStringWithDictionary:v8];
      *buf = 138544130;
      v39 = v18;
      v40 = 2114;
      v41 = v9;
      v42 = 2114;
      v43 = v31;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Receiving action: [%{public}@] %@", buf, 0x2Au);
    }
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AMSUIWebView__receiveJSObject_logKey_replyHandler___block_invoke;
  aBlock[3] = &unk_1E7F26D18;
  v20 = v10;
  v35 = v20;
  objc_copyWeak(&v36, buf);
  v21 = v9;
  v33 = v21;
  v22 = v12;
  v34 = v22;
  v37 = v15;
  v23 = _Block_copy(aBlock);
  if (v8)
  {
    v24 = [(AMSUIWebView *)self context];
    v25 = v24 == 0;

    if (v25)
    {
      v27 = AMSError();
      v23[2](v23, 0, v27);
    }

    else
    {
      v26 = [(AMSUIWebView *)self context];
      v27 = [AMSUIWebActionMapper actionFromJSObject:v8 context:v26];

      if (v27)
      {
        v28 = [v27 runAction];
        [v28 addFinishBlock:v23];
      }

      else
      {
        v28 = AMSError();
        v23[2](v23, 0, v28);
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

- (id)_setupContentRulesForWebView:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSUIWebView *)self context];
  v9 = [v8 disableTrustedDomains];

  if (v9)
  {
    v10 = [MEMORY[0x1E698C7F0] promiseWithSuccess];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    v12 = [v7 bag];
    v13 = [v12 arrayForKey:@"trustedDomains"];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__AMSUIWebView__setupContentRulesForWebView_context___block_invoke;
    v17[3] = &unk_1E7F26D68;
    v17[4] = self;
    v14 = v11;
    v18 = v14;
    v19 = v6;
    [v13 valueWithCompletion:v17];
    v15 = v19;
    v10 = v14;
  }

  return v10;
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