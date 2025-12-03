@interface AMSUIWebJSDataProvider
- (AMSUIWebClientContext)context;
- (AMSUIWebJSAppQueryManager)appQueryManager;
- (AMSUIWebJSDataProvider)initWithContext:(id)context;
- (AMSUIWebJSTelephonyProtocol)telephony;
- (AMSUIWebView)webView;
- (BOOL)_canInteractWithJS;
- (BOOL)startOTPListener;
- (BOOL)stopOTPListener;
- (id)_syncPropertiesScriptWithProperties:(id)properties;
- (id)createWebView;
- (id)loadPageModelWithInfo:(id)info;
- (id)loadPageRenderData;
- (id)postEvent:(id)event options:(id)options;
- (id)runJSRequest:(id)request;
- (id)runSafariCallback:(id)callback;
- (id)syncProperties;
- (void)_observeNotifications;
- (void)_postMediaQueryResultsChangeEventWithApps:(id)apps;
- (void)_postSubscriptionChangedWithType:(int64_t)type;
- (void)_safariDataUpdate:(id)update;
- (void)dealloc;
@end

@implementation AMSUIWebJSDataProvider

- (AMSUIWebJSAppQueryManager)appQueryManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appQueryManager = selfCopy->_appQueryManager;
  if (!appQueryManager)
  {
    v4 = [[AMSUIWebJSAppQueryManager alloc] initWithDelegate:selfCopy];
    v5 = selfCopy->_appQueryManager;
    selfCopy->_appQueryManager = v4;

    appQueryManager = selfCopy->_appQueryManager;
  }

  v6 = appQueryManager;
  objc_sync_exit(selfCopy);

  return v6;
}

- (AMSUIWebJSTelephonyProtocol)telephony
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  telephony = selfCopy->_telephony;
  if (!telephony)
  {
    v4 = [[AMSUIWebJSTelephony alloc] initWithDelegate:selfCopy];
    v5 = selfCopy->_telephony;
    selfCopy->_telephony = v4;

    telephony = selfCopy->_telephony;
  }

  v6 = telephony;
  objc_sync_exit(selfCopy);

  return v6;
}

- (AMSUIWebJSDataProvider)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSUIWebJSDataProvider;
  v5 = [(AMSUIWebJSDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [[AMSUIWebJSProperties alloc] initWithContext:contextCopy delegate:v5];
    properties = v5->_properties;
    v5->_properties = v6;

    objc_storeWeak(&v5->_context, contextCopy);
    [(AMSUIWebJSDataProvider *)v5 _observeNotifications];
  }

  return v5;
}

- (void)dealloc
{
  [(AMSUIWebJSTelephony *)self->_telephony invalidate];
  [(AMSUIWebJSAppQueryManager *)self->_appQueryManager invalidate];
  v3.receiver = self;
  v3.super_class = AMSUIWebJSDataProvider;
  [(AMSUIWebJSDataProvider *)&v3 dealloc];
}

- (id)createWebView
{
  v31 = *MEMORY[0x1E69E9840];
  webView = [(AMSUIWebJSDataProvider *)self webView];

  if (webView)
  {
    webView2 = [(AMSUIWebJSDataProvider *)self webView];
  }

  else
  {
    properties = [(AMSUIWebJSDataProvider *)self properties];
    generateProperties = [properties generateProperties];
    v23 = 0;
    v7 = [generateProperties resultWithTimeout:&v23 error:0.5];
    v8 = v23;

    if (v8)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        v13 = [v8 description];
        *buf = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error while generating properties for web view: %@", buf, 0x20u);
      }
    }

    v14 = [(AMSUIWebJSDataProvider *)self _syncPropertiesScriptWithProperties:v7];
    v15 = v14;
    v16 = &stru_1F3921360;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [AMSUIWebView alloc];
    context = [(AMSUIWebJSDataProvider *)self context];
    v24 = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

    webView2 = [(AMSUIWebView *)v18 initWithContext:context additionalScripts:v20];
    [(AMSUIWebJSDataProvider *)self setWebView:webView2];
  }

  v21 = *MEMORY[0x1E69E9840];

  return webView2;
}

- (id)loadPageModelWithInfo:(id)info
{
  v26 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  _canInteractWithJS = [(AMSUIWebJSDataProvider *)self _canInteractWithJS];
  v6 = MEMORY[0x1E698CAD0];
  if (_canInteractWithJS)
  {
    v7 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    context = [(AMSUIWebJSDataProvider *)self context];
    logKey = [context logKey];
    v10 = AMSUIWebSetSubLogKey(logKey, 0);

    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading page model", buf, 0x16u);
    }

    v13 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"PageData" logKey:v10];
    [(AMSUIWebJSRequest *)v13 setOptions:infoCopy];
    v14 = [(AMSUIWebJSDataProvider *)self runJSRequest:v13];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__AMSUIWebJSDataProvider_loadPageModelWithInfo___block_invoke;
    v19[3] = &unk_1E7F26590;
    objc_copyWeak(&v21, buf);
    v15 = v7;
    v20 = v15;
    [v14 addFinishBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = AMSError();
    v15 = [v6 promiseWithError:v16];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

void __48__AMSUIWebJSDataProvider_loadPageModelWithInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v8 = [v5 body];
    v9 = [WeakRetained context];
    v10 = [AMSUIWebModel pageModelFromJSObject:v8 context:v9];

    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v22 = 138543874;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loaded page: %{public}@", &v22, 0x20u);
      }

      [*(a1 + 32) finishWithResult:v10];
    }

    else
    {
      if (!v11)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v16 = [v12 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        v22 = 138543618;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load page model", &v22, 0x16u);
      }

      v19 = *(a1 + 32);
      v20 = AMSError();
      [v19 finishWithError:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)loadPageRenderData
{
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  context = [(AMSUIWebJSDataProvider *)self context];
  logKey = [context logKey];
  v6 = AMSUIWebSetSubLogKey(logKey, 0);

  v7 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"PageRender" logKey:v6];
  v8 = [(AMSUIWebJSDataProvider *)self runJSRequest:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__AMSUIWebJSDataProvider_loadPageRenderData__block_invoke;
  v11[3] = &unk_1E7F265B8;
  v11[4] = self;
  v9 = [v8 thenWithBlock:v11];

  return v9;
}

id __44__AMSUIWebJSDataProvider_loadPageRenderData__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 body];

  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loaded page render data from JS", &v17, 0x16u);
    }

    v10 = MEMORY[0x1E698CAD0];
    v11 = [v3 body];
    v12 = [v10 promiseWithResult:v11];
  }

  else
  {
    v13 = MEMORY[0x1E698CAD0];
    v11 = AMSError();
    v12 = [v13 promiseWithError:v11];
  }

  v14 = v12;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)postEvent:(id)event options:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  optionsCopy = options;
  if ([(AMSUIWebJSDataProvider *)self _canInteractWithJS])
  {
    context = [(AMSUIWebJSDataProvider *)self context];
    logKey = [context logKey];
    v10 = AMSUIWebSetSubLogKey(logKey, 0);

    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = [optionsCopy ams_JSONStringWithError:0];
      *buf = 138544130;
      v27 = v13;
      v28 = 2114;
      v29 = v10;
      v30 = 2114;
      v31 = eventCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting event: %{public}@ options: %@", buf, 0x2Au);
    }

    v15 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"_PostEvent" logKey:v10];
    v23 = @"name";
    v24 = @"options";
    v16 = MEMORY[0x1E695E0F8];
    if (optionsCopy)
    {
      v16 = optionsCopy;
    }

    v25[0] = eventCopy;
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v23 count:2];
    [(AMSUIWebJSRequest *)v15 setOptions:v17, v23, v24];

    v18 = [(AMSUIWebJSDataProvider *)self runJSRequest:v15];
    binaryPromiseAdapter = [v18 binaryPromiseAdapter];
  }

  else
  {
    v20 = MEMORY[0x1E698C7F0];
    v10 = AMSError();
    binaryPromiseAdapter = [v20 promiseWithError:v10];
  }

  v21 = *MEMORY[0x1E69E9840];

  return binaryPromiseAdapter;
}

- (id)runJSRequest:(id)request
{
  requestCopy = request;
  webView = [(AMSUIWebJSDataProvider *)self webView];

  if (webView)
  {
    webView2 = [(AMSUIWebJSDataProvider *)self webView];
    [webView2 sendJSRequest:requestCopy];
  }

  else
  {
    v7 = MEMORY[0x1E698CAD0];
    webView2 = AMSError();
    [v7 promiseWithError:webView2];
  }
  v8 = ;

  return v8;
}

- (id)runSafariCallback:(id)callback
{
  v21 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  context = [(AMSUIWebJSDataProvider *)self context];
  logKey = [context logKey];
  v7 = AMSUIWebSetSubLogKey(logKey, 0);

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v17 = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running safari callback", &v17, 0x16u);
  }

  v12 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"SafariCallback" logKey:v7];
  [(AMSUIWebJSRequest *)v12 setOptions:callbackCopy];

  v13 = [(AMSUIWebJSDataProvider *)self runJSRequest:v12];
  v14 = [v13 thenWithBlock:&__block_literal_global_28];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __44__AMSUIWebJSDataProvider_runSafariCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698CAD0];
  v3 = [a2 body];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [v2 promiseWithResult:v5];

  return v6;
}

- (BOOL)startOTPListener
{
  v20 = *MEMORY[0x1E69E9840];
  [(AMSUIWebJSDataProvider *)self stopOTPListener];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(AMSUIWebJSDataProvider *)self setOtpIdentifier:uUIDString];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    otpIdentifier = [(AMSUIWebJSDataProvider *)self otpIdentifier];
    *buf = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = otpIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting OTP listener with ID: %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v13, buf);
  otpIdentifier2 = [(AMSUIWebJSDataProvider *)self otpIdentifier];
  HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier();

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __42__AMSUIWebJSDataProvider_startOTPListener__block_invoke(uint64_t a1, __CFString *a2, __CFString *a3, __CFString *a4, __CFString *a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17[0] = @"token";
  v17[1] = @"source";
  v10 = &stru_1F3921360;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = &stru_1F3921360;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v18[0] = v11;
  v18[1] = v12;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = &stru_1F3921360;
  }

  v17[2] = @"serviceID";
  v17[3] = @"body";
  if (a4)
  {
    v10 = a4;
  }

  v18[2] = v13;
  v18[3] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v15 = [WeakRetained postEvent:@"OTPReceived" options:v14];

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopOTPListener
{
  v18 = *MEMORY[0x1E69E9840];
  otpIdentifier = [(AMSUIWebJSDataProvider *)self otpIdentifier];

  if (otpIdentifier)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      otpIdentifier2 = [(AMSUIWebJSDataProvider *)self otpIdentifier];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = otpIdentifier2;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Stopping OTP listener with ID: %{public}@", &v12, 0x20u);
    }

    otpIdentifier3 = [(AMSUIWebJSDataProvider *)self otpIdentifier];
    HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();

    [(AMSUIWebJSDataProvider *)self setOtpIdentifier:0];
  }

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)syncProperties
{
  v25 = *MEMORY[0x1E69E9840];
  context = [(AMSUIWebJSDataProvider *)self context];
  logKey = [context logKey];
  v5 = AMSUIWebSetSubLogKey(logKey, 0);

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Syncing properties", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  properties = [(AMSUIWebJSDataProvider *)self properties];
  generateProperties = [properties generateProperties];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __40__AMSUIWebJSDataProvider_syncProperties__block_invoke;
  v18 = &unk_1E7F26678;
  objc_copyWeak(&v20, buf);
  v10 = v5;
  v19 = v10;
  v11 = [generateProperties thenWithBlock:&v15];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];

  return binaryPromiseAdapter;
}

id __40__AMSUIWebJSDataProvider_syncProperties__block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([v3 length])
  {
    v5 = [WeakRetained _syncPropertiesScriptWithProperties:v3];
    if ([v5 length])
    {
      v6 = [WeakRetained webView];
      v24[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v6 updateUserScriptsWithScripts:v7];

      if ([WeakRetained _canInteractWithJS])
      {
        v8 = objc_alloc_init(MEMORY[0x1E698CAD0]);
        objc_initWeak(&location, WeakRetained);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __40__AMSUIWebJSDataProvider_syncProperties__block_invoke_2;
        v18[3] = &unk_1E7F26650;
        v18[4] = WeakRetained;
        v19 = v5;
        objc_copyWeak(&v22, &location);
        v20 = *(a1 + 32);
        v9 = v8;
        v21 = v9;
        dispatch_async(MEMORY[0x1E69E96A0], v18);
        v10 = v21;
        v11 = v9;

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        v11 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
      }
    }

    else
    {
      v14 = MEMORY[0x1E698CAD0];
      v15 = AMSError();
      v11 = [v14 promiseWithError:v15];
    }
  }

  else
  {
    v12 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    v11 = [v12 promiseWithError:v13];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

void __40__AMSUIWebJSDataProvider_syncProperties__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  v3 = [v2 underlyingWebView];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AMSUIWebJSDataProvider_syncProperties__block_invoke_3;
  v5[3] = &unk_1E7F26628;
  objc_copyWeak(&v8, (a1 + 64));
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 evaluateJavaScript:v4 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __40__AMSUIWebJSDataProvider_syncProperties__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v4)
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
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to sync properties. %{public}@", &v11, 0x20u);
    }

    [*(a1 + 40) finishWithError:v4];
  }

  else
  {
    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canInteractWithJS
{
  webView = [(AMSUIWebJSDataProvider *)self webView];
  contentLoaded = [webView contentLoaded];

  return contentLoaded;
}

- (void)_observeNotifications
{
  v63 = 0;
  v64 = &v63;
  v65 = 0x2050000000;
  v3 = getASDSubscriptionEntitlementsClass_softClass;
  v66 = getASDSubscriptionEntitlementsClass_softClass;
  if (!getASDSubscriptionEntitlementsClass_softClass)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsClass_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    __getASDSubscriptionEntitlementsClass_block_invoke(&v58);
    v3 = v64[3];
  }

  v4 = v3;
  _Block_object_dispose(&v63, 8);
  sharedInstance = [v3 sharedInstance];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69DDBC8];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke;
  v55[3] = &unk_1E7F266A0;
  objc_copyWeak(&v56, &location);
  v8 = [defaultCenter addObserverForName:v7 object:0 queue:0 usingBlock:v55];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69DDAB0];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke_2;
  v53[3] = &unk_1E7F266A0;
  objc_copyWeak(&v54, &location);
  v11 = [defaultCenter2 addObserverForName:v10 object:0 queue:0 usingBlock:v53];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__safariDataUpdate_ name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v14 = getASDSubscriptionEntitlementsActivityDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsActivityDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsActivityDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsActivityDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v15 = AppStoreDaemonLibrary_0();
    v16 = dlsym(v15, "ASDSubscriptionEntitlementsActivityDidChangeNotification");
    *(v62[1] + 24) = v16;
    getASDSubscriptionEntitlementsActivityDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v14 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v17 = *v14;
  [defaultCenter4 addObserver:self selector:sel__subscriptionStatusChangeActivity_ name:v17 object:sharedInstance];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v19 = getASDSubscriptionEntitlementsAppStoreDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsAppStoreDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsAppStoreDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsAppStoreDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v20 = AppStoreDaemonLibrary_0();
    v21 = dlsym(v20, "ASDSubscriptionEntitlementsAppStoreDidChangeNotification");
    *(v62[1] + 24) = v21;
    getASDSubscriptionEntitlementsAppStoreDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v19 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v19)
  {
    goto LABEL_29;
  }

  v22 = *v19;
  [defaultCenter5 addObserver:self selector:sel__subscriptionStatusChangeAppStore_ name:v22 object:sharedInstance];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v24 = getASDSubscriptionEntitlementsNewsDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsNewsDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsNewsDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsNewsDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v25 = AppStoreDaemonLibrary_0();
    v26 = dlsym(v25, "ASDSubscriptionEntitlementsNewsDidChangeNotification");
    *(v62[1] + 24) = v26;
    getASDSubscriptionEntitlementsNewsDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v24 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v24)
  {
    goto LABEL_29;
  }

  v27 = *v24;
  [defaultCenter6 addObserver:self selector:sel__subscriptionStatusChangeNews_ name:v27 object:sharedInstance];

  defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v29 = getASDSubscriptionEntitlementsMusicDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsMusicDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsMusicDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsMusicDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v30 = AppStoreDaemonLibrary_0();
    v31 = dlsym(v30, "ASDSubscriptionEntitlementsMusicDidChangeNotification");
    *(v62[1] + 24) = v31;
    getASDSubscriptionEntitlementsMusicDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v29 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v29)
  {
    goto LABEL_29;
  }

  v32 = *v29;
  [defaultCenter7 addObserver:self selector:sel__subscriptionStatusChangeMusic_ name:v32 object:sharedInstance];

  defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v34 = getASDSubscriptionEntitlementsTVDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsTVDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsTVDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsTVDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v35 = AppStoreDaemonLibrary_0();
    v36 = dlsym(v35, "ASDSubscriptionEntitlementsTVDidChangeNotification");
    *(v62[1] + 24) = v36;
    getASDSubscriptionEntitlementsTVDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v34 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v34)
  {
    goto LABEL_29;
  }

  v37 = *v34;
  [defaultCenter8 addObserver:self selector:sel__subscriptionStatusChangeTV_ name:v37 object:sharedInstance];

  defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v39 = getASDSubscriptionEntitlementsiCloudDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsiCloudDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsiCloudDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsiCloudDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v40 = AppStoreDaemonLibrary_0();
    v41 = dlsym(v40, "ASDSubscriptionEntitlementsiCloudDidChangeNotification");
    *(v62[1] + 24) = v41;
    getASDSubscriptionEntitlementsiCloudDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v39 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v39)
  {
    goto LABEL_29;
  }

  v42 = *v39;
  [defaultCenter9 addObserver:self selector:sel__subscriptionStatusChangeiCloud_ name:v42 object:sharedInstance];

  defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v44 = getASDSubscriptionEntitlementsHWBundleDidChangeNotificationSymbolLoc_ptr;
  v66 = getASDSubscriptionEntitlementsHWBundleDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsHWBundleDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getASDSubscriptionEntitlementsHWBundleDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    v45 = AppStoreDaemonLibrary_0();
    v46 = dlsym(v45, "ASDSubscriptionEntitlementsHWBundleDidChangeNotification");
    *(v62[1] + 24) = v46;
    getASDSubscriptionEntitlementsHWBundleDidChangeNotificationSymbolLoc_ptr = *(v62[1] + 24);
    v44 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v44)
  {
    goto LABEL_29;
  }

  v47 = *v44;
  [defaultCenter10 addObserver:self selector:sel__subscriptionStatusChangeHWBundle_ name:v47 object:sharedInstance];

  defaultCenter11 = [MEMORY[0x1E696AD88] defaultCenter];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v49 = getICMusicSubscriptionStatusDidChangeNotificationSymbolLoc_ptr;
  v66 = getICMusicSubscriptionStatusDidChangeNotificationSymbolLoc_ptr;
  if (!getICMusicSubscriptionStatusDidChangeNotificationSymbolLoc_ptr)
  {
    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __getICMusicSubscriptionStatusDidChangeNotificationSymbolLoc_block_invoke;
    v61 = &unk_1E7F241B0;
    v62 = &v63;
    __getICMusicSubscriptionStatusDidChangeNotificationSymbolLoc_block_invoke(&v58);
    v49 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v49)
  {
LABEL_29:
    dlerror();
    abort_report_np();
    __break(1u);
    goto LABEL_30;
  }

  v50 = *v49;
  [defaultCenter11 addObserver:self selector:sel__subscriptionStatusChangeMusic_ name:v50 object:sharedInstance];

  defaultCenter12 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter12 addObserver:self selector:sel__purchaseDidSucceed_ name:@"AMSPurchaseFinishedNotification" object:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke_3;
  block[3] = &unk_1E7F242D0;
  block[4] = self;
  if (_observeNotifications_onceToken != -1)
  {
LABEL_30:
    dispatch_once(&_observeNotifications_onceToken, block);
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
}

void __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained postEvent:@"DidDisappear" options:&unk_1F394A9E0];
}

void __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained postEvent:@"DidAppear" options:&unk_1F394AA08];
}

void __47__AMSUIWebJSDataProvider__observeNotifications__block_invoke_3(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, 0, _purchaseDidSucceed, @"kSSPurchaseRequestFinishedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDistributedCenter();
  v4 = *(a1 + 32);

  CFNotificationCenterAddObserver(v3, v4, _handleDataUpdateNotification, @"AMSUIWebSafariDataUpdateDarwin", 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)_postMediaQueryResultsChangeEventWithApps:(id)apps
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"apps";
  v10[0] = apps;
  v4 = MEMORY[0x1E695DF20];
  appsCopy = apps;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(AMSUIWebJSDataProvider *)self postEvent:@"MediaQueryResultsChange" options:v6];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_postSubscriptionChangedWithType:(int64_t)type
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"mediaType";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(AMSUIWebJSDataProvider *)self postEvent:@"SubscriptionChanged" options:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_safariDataUpdate:(id)update
{
  v20 = *MEMORY[0x1E69E9840];
  object = [update object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received ScriptDataUpdate notification", &v16, 0x16u);
    }

    mEMORY[0x1E698C968]2 = [AMSUIWebOpenSafariAction resultFromURL:v5 error:0];
    v11 = [(AMSUIWebJSDataProvider *)self postEvent:@"SafariDataUpdate" options:mEMORY[0x1E698C968]2];
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari data update called without a URL", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_syncPropertiesScriptWithProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy length])
  {
    propertiesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMS.updateProperties('%@')", propertiesCopy];
  }

  else
  {
    propertiesCopy = 0;
  }

  return propertiesCopy;
}

- (AMSUIWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end