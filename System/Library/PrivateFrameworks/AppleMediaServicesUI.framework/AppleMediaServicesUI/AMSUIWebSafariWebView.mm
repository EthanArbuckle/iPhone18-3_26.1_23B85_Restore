@interface AMSUIWebSafariWebView
+ (id)_createContentControllerWithScheme:(id)a3 data:(id)a4 messageHandler:(id)a5;
- (AMSUIWebSafariWebView)initWithAppearance:(id)a3 scheme:(id)a4 data:(id)a5 delegate:(id)a6;
- (NSString)logKey;
- (NSString)scheme;
- (WKNavigationDelegate)safariDelegate;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
@end

@implementation AMSUIWebSafariWebView

- (AMSUIWebSafariWebView)initWithAppearance:(id)a3 scheme:(id)a4 data:(id)a5 delegate:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x1E69853A8];
  v12 = a5;
  v13 = objc_alloc_init(v11);
  v14 = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v13 setWebsiteDataStore:v14];

  v15 = [v13 preferences];
  [v15 setJavaScriptCanOpenWindowsAutomatically:0];

  v16 = [v13 preferences];
  [v16 _setPunchOutWhiteBackgroundsInDarkMode:1];

  [v13 _setDrawsBackground:0];
  [v13 _setPrintsBackgrounds:0];
  v17 = MEMORY[0x1E696AEC0];
  v18 = [MEMORY[0x1E698C8A8] productVersion];
  v19 = [MEMORY[0x1E698C8A8] buildVersion];
  v20 = [v17 stringWithFormat:@"Version/%@ Mobile/%@ Safari", v18, v19];
  [v13 setApplicationNameForUserAgent:v20];

  v21 = [objc_opt_class() _createContentControllerWithScheme:v9 data:v12 messageHandler:self];

  [v13 setUserContentController:v21];
  if ([v9 length])
  {
    [v13 setURLSchemeHandler:self forURLScheme:v9];
  }

  v28.receiver = self;
  v28.super_class = AMSUIWebSafariWebView;
  v22 = [(AMSUIWebSafariWebView *)&v28 initWithFrame:v13 configuration:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_scheme, v9);
    objc_storeWeak(&v23->_safariDelegate, v10);
    [(AMSUIWebSafariWebView *)v23 _setUseSystemAppearance:1];
    [(AMSUIWebSafariWebView *)v23 setNavigationDelegate:v10];
    v24 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v23 ams_setBackgroundColor:v24];

    [(AMSUIWebSafariWebView *)v23 setOpaque:0];
    v25 = [MEMORY[0x1E69DC888] clearColor];
    v26 = [(AMSUIWebSafariWebView *)v23 scrollView];
    [v26 ams_setBackgroundColor:v25];
  }

  [(AMSUIWebSafariWebView *)v23 setUIDelegate:v23];

  return v23;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = [(AMSUIWebSafariWebView *)self safariDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(AMSUIWebSafariWebView *)self safariDelegate];
      [v16 safariView:self didReceiveAction:v11 body:v13 replyHandler:v7];
    }

    else
    {
      v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = [(AMSUIWebSafariWebView *)self logKey];
        v21 = 138543874;
        v22 = v18;
        v23 = 2114;
        v24 = v19;
        v25 = 2114;
        v26 = v11;
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari VC not responding to action delegate: %{public}@", &v21, 0x20u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 URL];

  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [(AMSUIWebSafariWebView *)self logKey];
    v12 = [v7 scheme];
    v13 = [(AMSUIWebSafariWebView *)self scheme];
    v28 = 138544130;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling scheme: %{public}@ expected: %{public}@", &v28, 0x2Au);
  }

  v14 = [v7 scheme];
  v15 = [v14 lowercaseString];
  v16 = [(AMSUIWebSafariWebView *)self scheme];
  v17 = [v16 lowercaseString];
  v18 = [v15 isEqualToString:v17];

  v19 = [(AMSUIWebSafariWebView *)self safariDelegate];
  if (v18)
  {
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(AMSUIWebSafariWebView *)self safariDelegate];
      [v21 safariView:self didRedirectToSchemeWithURL:v7];
    }

    else
    {
      v21 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v21)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v24 = [v21 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = [(AMSUIWebSafariWebView *)self logKey];
        v28 = 138543618;
        v29 = v25;
        v30 = 2114;
        v31 = v26;
        _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari VC not responding to scheme delegate", &v28, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v22 = objc_opt_respondsToSelector();

  if ((v22 & 1) == 0)
  {
LABEL_16:
    v23 = AMSError();
    [v5 didFailWithError:v23];
    goto LABEL_17;
  }

  v23 = [(AMSUIWebSafariWebView *)self safariDelegate];
  [v23 webView:self startURLSchemeTask:v5];
LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(AMSUIWebSafariWebView *)self logKey];
    v10 = [v5 request];
    v11 = [v10 URL];
    v12 = [v11 scheme];
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Stopping scheme handling: %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_createContentControllerWithScheme:(id)a3 data:(id)a4 messageHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E6985350];
  v10 = a5;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x1E6985318] pageWorld];
  [v11 addScriptMessageHandlerWithReply:v10 contentWorld:v12 name:@"callback"];

  v13 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
  v14 = [v13 URLForResource:@"JSSafariSandbox" withExtension:@"js"];

  v36 = 0;
  v15 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v14 encoding:4 error:&v36];
  v16 = v36;
  if (v16 || !v15)
  {
    v17 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v17)
    {
      v17 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v14;
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138544130;
      v38 = v20;
      v14 = v19;
      v39 = 2114;
      v40 = v21;
      v41 = 2114;
      v42 = @"JSSafariSandbox";
      v43 = 2114;
      v44 = v16;
      _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v15 injectionTime:0 forMainFrameOnly:0];
    [v11 addUserScript:v17];
  }

  if ([v7 length])
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMSSafari.callbackScheme = %@", v7];;
    v23 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v22 injectionTime:0 forMainFrameOnly:0];
    [v11 addUserScript:v23];
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v8])
  {
    v34 = v14;
    v35 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:&v35];
    v25 = v35;
    if (v25 || !v24)
    {
      v27 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v30 = objc_opt_class();
      v31 = AMSLogKey();
      *buf = 138544130;
      v38 = v30;
      v39 = 2114;
      v40 = v31;
      v29 = v31;
      v41 = 2114;
      v42 = @"JSSafariSandbox";
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load resource: %{public}@. %{public}@", buf, 0x2Au);
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
      if (!v26)
      {
LABEL_22:

        v14 = v34;
        goto LABEL_23;
      }

      v27 = v26;
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMSSafari.data = %@", v26];;
      v29 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v28 injectionTime:0 forMainFrameOnly:0];
      [v11 addUserScript:v29];
    }

LABEL_21:
    goto LABEL_22;
  }

LABEL_23:

  v32 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)logKey
{
  WeakRetained = objc_loadWeakRetained(&self->_logKey);

  return WeakRetained;
}

- (WKNavigationDelegate)safariDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safariDelegate);

  return WeakRetained;
}

- (NSString)scheme
{
  WeakRetained = objc_loadWeakRetained(&self->_scheme);

  return WeakRetained;
}

@end