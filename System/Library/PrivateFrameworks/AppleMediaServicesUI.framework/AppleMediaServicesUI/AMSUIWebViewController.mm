@interface AMSUIWebViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
+ (id)verifyTrustedURL:(id)a3 bag:(id)a4;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIWebAppearance)appearance;
- (AMSUIWebDelegate)delegate;
- (AMSUIWebViewController)initWithBag:(id)a3;
- (AMSUIWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (BOOL)loadUsingWebKit;
- (BOOL)reducedMemoryMode;
- (NSDictionary)clientOptions;
- (NSDictionary)metricsOverlay;
- (id)_applyMappingsToURL:(id)a3;
- (id)_buildRequestWithRequest:(id)a3 bagValue:(id)a4;
- (id)_handleAuthenticateCloudRequest:(id)a3 pauseTimeouts:(BOOL)a4;
- (id)_handleAuthenticateRequest:(id)a3 pauseTimeouts:(BOOL)a4;
- (id)_handleDialogRequest:(id)a3 pauseTimeouts:(BOOL)a4;
- (id)_handleEngagementRequest:(id)a3 pauseTimeouts:(BOOL)a4;
- (id)_lazyPromiseForBagSnapshot;
- (id)_lazyPromiseForLoadingRequest:(id)a3 bagValue:(id)a4;
- (id)_lazyPromiseForLoadingSession;
- (id)_lazyPromiseForPageLoad;
- (id)_loadMescalSessionForRequestWithURL:(id)a3;
- (id)_loadRequest:(id)a3 bagValue:(id)a4;
- (id)_parseWebPropertiesFromRequest:(id)a3;
- (id)_rootNavigationController;
- (id)_shouldReplaceCurrentAccountAfterSuccessfulAuth;
- (id)_stringForLoadState:(int64_t)a3;
- (id)action:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (id)action:(id)a3 handleActionObject:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)loadURL:(id)a3;
- (id)presentingSceneIdentifier;
- (id)presentingWindow;
- (id)runJSRequest:(id)a3;
- (unint64_t)edgesPropagatingSafeAreaInsetsToSubviews;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)_handleDidEncodeNetworkRequest:(id)a3;
- (void)_showErrorViewWithError:(id)a3 request:(id)a4 bagValue:(id)a5;
- (void)actionDidFinishPurchaseWithResult:(id)a3 error:(id)a4;
- (void)didDismissController:(id)a3;
- (void)loadView;
- (void)setAccount:(id)a3;
- (void)setAppearance:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setClientOptions:(id)a3;
- (void)setMetricsOverlay:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIWebViewController

- (AMSUIWebViewController)initWithBag:(id)a3
{
  v4 = MEMORY[0x1E698CAC8];
  v5 = a3;
  v6 = [v4 currentProcess];
  v7 = [(AMSUIWebViewController *)self initWithBag:v5 account:0 clientInfo:v6];

  return v7;
}

- (AMSUIWebViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AMSUIWebViewController *)self initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = AMSSetLogKey();
    v13 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v37 = objc_opt_class();
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initializing web view controller", buf, 0x16u);
    }

    v15 = [[AMSUIWebClientContext alloc] initWithAccount:v9 clientInfo:v10 backingBag:v8];
    context = v11->_context;
    v11->_context = v15;

    [(AMSUIWebClientContext *)v11->_context setActionDelegate:v11];
    v17 = [objc_alloc(MEMORY[0x1E698CA00]) initWithContainerID:@"com.apple.AppleMediaServices" bag:v8];
    [(AMSUIWebClientContext *)v11->_context setMetrics:v17];

    [(AMSUIWebClientContext *)v11->_context setLoadUsingWebKit:0];
    [(AMSUIWebClientContext *)v11->_context setLogKey:v12];
    v18 = [[AMSUIWebJSDataProvider alloc] initWithContext:v11->_context];
    [(AMSUIWebClientContext *)v11->_context setDataProvider:v18];
    v19 = [[AMSUIWebPageViewController alloc] initWithContext:v11->_context dataProvider:v18];
    [(AMSUIWebPageViewController *)v19 setDelegate:v11];
    [(AMSUIWebClientContext *)v11->_context setWebPage:v19];
    v35 = v12;
    webPage = v11->_webPage;
    v11->_webPage = v19;
    v34 = v19;

    v21 = v8;
    v22 = v10;
    v23 = v9;
    v24 = [[AMSUIWebPlaceholderViewController alloc] initWithContext:v11->_context];
    [(AMSUIWebPlaceholderViewController *)v24 setAnimateFadeIn:1];
    v25 = [AMSUIWebContainerViewController alloc];
    v26 = +[AMSUIWebAppearance defaultAppearance];
    v27 = [(AMSUIWebContainerViewController *)v25 initWithViewController:v24 appearance:v26 navigationBar:0 context:v11->_context];

    [(AMSUIWebContainerViewController *)v27 setShouldSkipInitialRefresh:1];
    [(AMSUIWebContainerViewController *)v27 setModalPresentationDelegate:v11];
    rootContainer = v11->_rootContainer;
    v11->_rootContainer = v27;
    v29 = v27;

    v30 = [[AMSUIWebFlowController alloc] initWithRootContainer:v11->_rootContainer context:v11->_context];
    [(AMSUIWebClientContext *)v11->_context setFlowController:v30];
    v31 = [[AMSUIWebPluginLoader alloc] initWithContext:v11->_context];
    [(AMSUIWebClientContext *)v11->_context setPluginLoader:v31];

    v9 = v23;
    v10 = v22;
    v8 = v21;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = AMSUIWebViewController;
  [(AMSUICommonViewController *)&v19 loadView];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 setFrame:{0.0, 0.0, 360.0, 500.0}];

  v4 = [(AMSUIWebViewController *)self rootContainer];
  [(AMSUIWebViewController *)self setChildViewController:v4];
  v5 = [(UIViewController *)self ams_parentContainer];
  v6 = [v5 appearance];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(AMSUIWebViewController *)self rootContainer];
    v8 = [v9 appearance];
  }

  v10 = [v8 backgroundColor];
  if (v10)
  {
    [(UIViewController *)self ams_setBackgroundColor:v10];
  }

  else
  {
    v11 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
    [(UIViewController *)self ams_setBackgroundColor:v11];
  }

  v12 = [(AMSUIWebViewController *)self childViewController];
  [(UIViewController *)self ams_setChildViewController:v12];

  if ([MEMORY[0x1E698C890] automationMode])
  {
    v13 = [(AMSUIWebViewController *)self automationView];
    if (v13)
    {
LABEL_11:

      goto LABEL_12;
    }

    if (os_variant_has_internal_content())
    {
      v14 = objc_alloc(MEMORY[0x1E69DCC10]);
      v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(AMSUIWebViewController *)self setAutomationView:v15];

      v16 = [(AMSUIWebViewController *)self automationView];
      [v16 setText:@"WK2"];

      v17 = [(AMSUIWebViewController *)self automationView];
      [v17 setAlpha:0.05];

      v13 = [(AMSUICommonViewController *)self view];
      v18 = [(AMSUIWebViewController *)self automationView];
      [v13 addSubview:v18];

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)viewWillLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = AMSUIWebViewController;
  [(AMSUIWebViewController *)&v36 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIWebViewController *)self childViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = [(AMSUIWebViewController *)self automationView];

  if (v14)
  {
    v15 = [(AMSUIWebViewController *)self automationView];
    v16 = [(AMSUICommonViewController *)self view];
    [v16 bounds];
    [v15 sizeThatFits:{v17, v18}];
    v20 = v19;
    v22 = v21;

    v23 = [(AMSUICommonViewController *)self view];
    [v23 bounds];
    v25 = v24 - v20;
    v26 = [(AMSUICommonViewController *)self view];
    [v26 safeAreaInsets];
    v28 = v25 - v27 + -10.0;
    v29 = [(AMSUICommonViewController *)self view];
    [v29 bounds];
    v31 = v30 - v22;
    v32 = [(AMSUICommonViewController *)self view];
    [v32 safeAreaInsets];
    v34 = v31 - v33;
    v35 = [(AMSUIWebViewController *)self automationView];
    [v35 setFrame:{v28, v34, v20, v22}];
  }
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = [(AMSUIWebViewController *)self context];
  v5 = [v4 flowController];
  v6 = [v5 currentContainer];
  v7 = [v6 contentScrollViewForEdge:a3];

  return v7;
}

- (unint64_t)edgesPropagatingSafeAreaInsetsToSubviews
{
  v2 = [(AMSUIWebViewController *)self webPage];
  v3 = [v2 view];

  v4 = [v3 edgesPropagatingSafeAreaInsetsToSubviews];
  return v4;
}

- (ACAccount)account
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 account];

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 bag];

  return v3;
}

- (AMSUIWebAppearance)appearance
{
  v2 = [(AMSUIWebViewController *)self rootContainer];
  v3 = [v2 appearance];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 clientInfo];

  return v3;
}

- (NSDictionary)clientOptions
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 clientOptions];

  return v3;
}

- (BOOL)loadUsingWebKit
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 loadUsingWebKit];

  return v3;
}

- (NSDictionary)metricsOverlay
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 metricsOverlay];

  return v3;
}

- (BOOL)reducedMemoryMode
{
  v2 = [(AMSUIWebViewController *)self context];
  v3 = [v2 reducedMemoryMode];

  return v3;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v7 = [(AMSUIWebViewController *)self context];
  v5 = [(AMSUIWebViewController *)self context];
  v6 = [v5 clientInfo];
  [v7 replaceCurrentAccount:v4 clientInfo:v6];
}

- (void)setAppearance:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self rootContainer];
  [v5 setAppearance:v4];
}

- (void)setBag:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self context];
  [v5 updateBackingBag:v4];
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v7 = [(AMSUIWebViewController *)self context];
  v5 = [(AMSUIWebViewController *)self context];
  v6 = [v5 account];
  [v7 replaceCurrentAccount:v6 clientInfo:v4];
}

- (void)setClientOptions:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self context];
  [v5 setClientOptions:v4];

  v8 = [(AMSUIWebViewController *)self context];
  v6 = [v8 dataProvider];
  v7 = [v6 syncProperties];
}

- (void)setMetricsOverlay:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
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
    v8 = AMSLogKey();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics overlay updated: %@", &v11, 0x20u);
  }

  v9 = [(AMSUIWebViewController *)self context];
  [v9 setMetricsOverlay:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)loadURL:(id)a3
{
  v4 = [MEMORY[0x1E696AF68] requestWithURL:a3];
  v5 = [(AMSUIWebViewController *)self _loadRequest:v4 bagValue:0];

  return v5;
}

- (id)runJSRequest:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self context];
  v6 = [v5 dataProvider];
  v7 = [v6 runJSRequest:v4];

  return v7;
}

+ (id)verifyTrustedURL:(id)a3 bag:(id)a4
{
  v5 = a3;
  v6 = [a4 arrayForKey:@"trustedWebDomains"];
  v7 = [v6 valuePromise];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__AMSUIWebViewController_verifyTrustedURL_bag___block_invoke;
  v13[3] = &unk_1E7F25D98;
  v14 = v5;
  v8 = v5;
  v9 = [v7 thenWithBlock:v13];
  v10 = [v9 catchWithBlock:&__block_literal_global_37];

  v11 = [v10 binaryPromiseAdapter];

  return v11;
}

id __47__AMSUIWebViewController_verifyTrustedURL_bag___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) host];
  v5 = [v4 lowercaseString];

  if ([v5 length])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 hasPrefix:{@".", v17}])
          {
            if ([v5 hasSuffix:v11])
            {
              goto LABEL_14;
            }
          }

          else if ([v5 isEqualToString:v11])
          {
LABEL_14:
            v13 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];

            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = MEMORY[0x1E698CAD0];
  }

  else
  {
    v12 = MEMORY[0x1E698CAD0];
  }

  v14 = AMSError();
  v13 = [v12 promiseWithError:v14];

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

id __47__AMSUIWebViewController_verifyTrustedURL_bag___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E698C548];
  if (AMSErrorIsEqual())
  {
    [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    [MEMORY[0x1E698CAD0] promiseWithError:v2];
  }
  v4 = ;

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v3 = [MEMORY[0x1E698C9E0] bagKeySet];
  [v2 unionBagKeySet:v3];

  v4 = [MEMORY[0x1E698CAE8] bagKeySet];
  [v2 unionBagKeySet:v4];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  v3 = [objc_opt_class() bagKeySet];
  v4 = [objc_opt_class() bagSubProfile];
  v5 = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];

  v6 = MEMORY[0x1E698C7D8];
  v7 = [objc_opt_class() bagSubProfile];
  v8 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:v7 profileVersion:v8];

  return v9;
}

- (id)action:(id)a3 handleActionObject:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(AMSUIWebViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [(AMSUIWebViewController *)self delegate];
      *buf = 138544130;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate (%{public}@) with action: %{public}@", buf, 0x2Au);
    }

    v14 = [(AMSUIWebViewController *)self delegate];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__AMSUIWebViewController_action_handleActionObject___block_invoke;
    v23[3] = &unk_1E7F24B78;
    v15 = v8;
    v24 = v15;
    v16 = [v14 webViewController:self handleDelegateAction:v5 completion:v23];

    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v24;
  }

  else
  {
    v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v18 = [v15 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543618;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Caller does not respond to delegate", buf, 0x16u);
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

void __52__AMSUIWebViewController_action_handleActionObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = AMSError();
      [v7 finishWithError:v8];
    }
  }
}

- (id)action:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v10 = [(AMSUIWebViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(AMSUIWebViewController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__AMSUIWebViewController_action_didResolveWithResult_error___block_invoke;
    v15[3] = &unk_1E7F24B78;
    v16 = v9;
    [v12 webViewController:self didResolveWithResult:v7 error:v8 completion:v15];
  }

  else
  {
    v13 = AMSError();
    [v9 finishWithError:v13];
  }

  return v9;
}

void __60__AMSUIWebViewController_action_didResolveWithResult_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = AMSError();
      [v7 finishWithError:v8];
    }
  }
}

- (void)actionDidFinishPurchaseWithResult:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSUIWebViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling purchase completed delegate callback", &v16, 0x16u);
    }

    v14 = [(AMSUIWebViewController *)self delegate];
    [v14 webViewController:self didFinishPurchaseWithResult:v6 error:v7];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didDismissController:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(AMSUIWebViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling will dismiss", &v12, 0x16u);
    }

    v10 = [(AMSUIWebViewController *)self delegate];
    [v10 willDismissWebViewController:self];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [(AMSUIWebViewController *)self _handleDialogRequest:a5 pauseTimeouts:1];
  [v9 addFinishBlock:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [(AMSUIWebViewController *)self _handleAuthenticateRequest:a5 pauseTimeouts:1];
  [v9 addFinishBlock:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [(AMSUIWebViewController *)self _handleEngagementRequest:a5 pauseTimeouts:1];
  [v9 addFinishBlock:v8];
}

- (id)presentingSceneIdentifier
{
  v2 = [(AMSUICommonViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _sceneIdentifier];

  return v5;
}

- (id)presentingWindow
{
  v2 = [(AMSUICommonViewController *)self view];
  v3 = [v2 window];

  return v3;
}

- (id)_applyMappingsToURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self context];
  v6 = [v5 bag];
  v7 = [v6 dictionaryForKey:@"commerce-ui-urls/v2-mapped-urls"];
  v8 = [v7 valuePromise];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__AMSUIWebViewController__applyMappingsToURL___block_invoke;
  v16[3] = &unk_1E7F26DD8;
  v16[4] = self;
  v9 = v4;
  v17 = v9;
  v10 = [v8 thenWithBlock:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__AMSUIWebViewController__applyMappingsToURL___block_invoke_86;
  v14[3] = &unk_1E7F24BA0;
  v15 = v9;
  v11 = v9;
  v12 = [v10 catchWithBlock:v14];

  return v12;
}

id __46__AMSUIWebViewController__applyMappingsToURL___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__AMSUIWebViewController__applyMappingsToURL___block_invoke_81;
  v15[3] = &unk_1E7F26DB0;
  v4 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v4;
  v17 = &v18;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];
  v5 = v19;
  if (v19[5])
  {
    v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = v19[5];
      *buf = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully mapped URL to: %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v6 = v5[5];
    v5[5] = v11;
  }

  v12 = [MEMORY[0x1E698CAD0] promiseWithResult:v19[5]];

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __46__AMSUIWebViewController__applyMappingsToURL___block_invoke_81(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v27 = 0;
  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:a2 options:1 error:&v27];
  v9 = v27;
  if (v9)
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      *buf = 138543618;
      v29 = v13;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Invalid commerceUI pattern. %{public}@", buf, 0x16u);
    }

LABEL_15:
    goto LABEL_16;
  }

  v14 = [*(a1 + 40) absoluteString];
  v15 = [*(a1 + 40) absoluteString];
  v16 = [v8 numberOfMatchesInString:v14 options:2 range:{0, objc_msgSend(v15, "length")}];

  if (v16)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v7];
    v17 = [*(a1 + 40) query];
    [v10 setQuery:v17];

    v18 = [*(a1 + 40) fragment];
    [v10 setFragment:v18];

    v19 = [v10 URL];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v22 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v22)
      {
        v22 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = objc_opt_class();
        *buf = 138543362;
        v29 = v25;
        _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Mapped URL is not valid.", buf, 0xCu);
      }
    }

    *a4 = 1;
    goto LABEL_15;
  }

LABEL_16:

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_buildRequestWithRequest:(id)a3 bagValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];

  if (!v8 || (v9 = MEMORY[0x1E698CAD0], [v6 URL], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "promiseWithResult:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v12 = [v7 valuePromise];
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v13 = MEMORY[0x1E698CAD0];
      v14 = AMSError();
      v11 = [v13 promiseWithError:v14];
    }
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke;
  v26[3] = &unk_1E7F25928;
  v26[4] = self;
  v15 = [v11 thenWithBlock:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke_2;
  v25[3] = &unk_1E7F25928;
  v25[4] = self;
  v16 = [v15 thenWithBlock:v25];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke_4;
  v21[3] = &unk_1E7F26E00;
  v22 = v6;
  v23 = self;
  v24 = v7;
  v17 = v7;
  v18 = v6;
  v19 = [v16 thenWithBlock:v21];

  return v19;
}

id __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) context];
  v7 = [v6 bag];
  v8 = [v5 verifyTrustedURL:v3 bag:v7];
  v9 = [v8 promiseAdapter];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke_3;
  v13[3] = &unk_1E7F248F0;
  v14 = v3;
  v10 = v3;
  v11 = [v9 thenWithBlock:v13];

  return v11;
}

id __60__AMSUIWebViewController__buildRequestWithRequest_bagValue___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v3];
  }

  v7 = v6;

  [v7 setURL:v3];
  v8 = [v3 absoluteString];
  v9 = v8;
  if (!v8)
  {
    v9 = [a1[6] key];
  }

  v10 = [a1[5] context];
  [v10 setURL:v9];

  if (!v8)
  {
  }

  v11 = [MEMORY[0x1E698CAD0] promiseWithResult:v7];

  return v11;
}

- (id)_handleAuthenticateRequest:(id)a3 pauseTimeouts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E698CA58]);
  if (v4)
  {
    v8 = [(AMSUIWebViewController *)self context];
    v9 = [v8 flowController];
    [v9 startTimeoutInterruption];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke;
    v21[3] = &unk_1E7F26E28;
    v21[4] = self;
    [v7 addFinishBlock:v21];
  }

  v10 = [(AMSUIWebViewController *)self context];
  v11 = [v10 flowController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_2;
  v18[3] = &unk_1E7F24590;
  v18[4] = self;
  v12 = v7;
  v19 = v12;
  v20 = v6;
  v13 = v6;
  [v11 performSafeTransitionFrom:self block:v18];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_134;
  v17[3] = &unk_1E7F24410;
  v17[4] = self;
  [v12 addErrorBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_136;
  v16[3] = &unk_1E7F26E50;
  v16[4] = self;
  [v12 addSuccessBlock:v16];
  v14 = v12;

  return v12;
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v1 = [v2 flowController];
  [v1 stopTimeoutInterruption];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldReplaceCurrentAccountAfterSuccessfulAuth];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_3;
  v4[3] = &unk_1E7F26EF0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 addFinishBlock:v4];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_3(id *a1, void *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = [a2 value];
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  v9 = &off_1BB1EF000;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v8 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [a1[4] context];
      v12 = [v11 logKey];
      v13 = MEMORY[0x1E696AEC0];
      v14 = a1[4];
      v15 = objc_opt_class();
      v16 = v15;
      if (v12)
      {
        v2 = [a1[4] context];
        v3 = [v2 logKey];
        [v13 stringWithFormat:@"%@: [%@] ", v16, v3];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v15];
      }
      v4 = ;
      *buf = 138543362;
      v98 = v4;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_INFO, "%{public}@Will replace current account on context.", buf, 0xCu);
      if (v12)
      {

        v4 = v2;
      }

      v9 = &off_1BB1EF000;
    }

    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = *(v9 + 35);
    v96[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_105;
    v96[3] = &unk_1E7F26E50;
    v24 = a1[5];
    v96[4] = a1[4];
    [v24 addSuccessBlock:v96];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v8 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [a1[4] context];
      v19 = [v18 logKey];
      v20 = MEMORY[0x1E696AEC0];
      v21 = a1[4];
      v22 = objc_opt_class();
      v23 = v22;
      if (v19)
      {
        v2 = [a1[4] context];
        v3 = [v2 logKey];
        [v20 stringWithFormat:@"%@: [%@] ", v23, v3];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v22];
      }
      v4 = ;
      *buf = 138543362;
      v98 = v4;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_INFO, "%{public}@Will not replace current account on context.", buf, 0xCu);
      if (v19)
      {

        v4 = v2;
      }

      v9 = &off_1BB1EF000;
    }

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = *(v9 + 35);
    v93[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_107;
    v93[3] = &unk_1E7F26E78;
    v25 = a1[5];
    v26 = a1[6];
    v27 = a1[4];
    v94 = v26;
    v95 = v27;
    [v25 addSuccessBlock:v93];
  }

  v28 = [a1[4] delegate];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v30)
    {
      v30 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [a1[4] context];
      v33 = [v32 logKey];
      v34 = MEMORY[0x1E696AEC0];
      v35 = a1[4];
      v36 = objc_opt_class();
      v37 = v36;
      if (v33)
      {
        v77 = [a1[4] context];
        v4 = [v77 logKey];
        [v34 stringWithFormat:@"%@: [%@] ", v37, v4];
      }

      else
      {
        [v34 stringWithFormat:@"%@: ", v36];
      }
      v38 = ;
      v59 = [a1[4] delegate];
      v60 = AMSHashIfNeeded();
      *buf = 138543618;
      v98 = v38;
      v99 = 2114;
      v100 = v60;
      _os_log_impl(&dword_1BB036000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Calling delegate for authentication: %{public}@", buf, 0x16u);

      if (v33)
      {

        v38 = v77;
      }

      v9 = &off_1BB1EF000;
    }

    v61 = [AMSUIDeallocGuard alloc];
    v86 = MEMORY[0x1E69E9820];
    v87 = *(v9 + 35);
    v62 = v87;
    v88 = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_111;
    v89 = &unk_1E7F26EA0;
    v63 = a1[5];
    v90 = a1[4];
    v92 = sel_webViewController_handleAuthenticateRequest_completion_;
    v91 = v63;
    v64 = [(AMSUIDeallocGuard *)v61 initWithDeallocGuardBlock:&v86];
    v65 = [a1[4] delegate];
    v66 = a1[6];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = v62;
    v83[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_124;
    v83[3] = &unk_1E7F26EC8;
    v84 = v64;
    v67 = a1[4];
    v85 = a1[5];
    v68 = v64;
    [v65 webViewController:v67 handleAuthenticateRequest:v66 completion:v83];
  }

  else
  {
    v39 = [a1[4] hasAppeared];
    v40 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    v41 = v40;
    if (v39)
    {
      if (!v40)
      {
        v41 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v9;
        v44 = [a1[4] context];
        v45 = [v44 logKey];
        v46 = MEMORY[0x1E696AEC0];
        v47 = a1[4];
        v48 = objc_opt_class();
        v49 = v48;
        if (v45)
        {
          v2 = [a1[4] context];
          v3 = [v2 logKey];
          [v46 stringWithFormat:@"%@: [%@] ", v49, v3];
        }

        else
        {
          [v46 stringWithFormat:@"%@: ", v48];
        }
        v50 = ;
        *buf = 138543362;
        v98 = v50;
        _os_log_impl(&dword_1BB036000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Running authentication.", buf, 0xCu);
        if (v45)
        {

          v50 = v2;
        }

        v9 = v43;
      }

      v69 = objc_alloc_init(AMSUIAuthenticateTaskCoordinator);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = *(v9 + 35);
      block[2] = __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_126;
      block[3] = &unk_1E7F24A88;
      v79 = v69;
      v70 = a1[6];
      v71 = a1[4];
      v72 = a1[5];
      v80 = v70;
      v81 = v71;
      v82 = v72;
      v73 = v69;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (!v40)
      {
        v41 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v51 = [v41 OSLogObject];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = [a1[4] context];
        v53 = [v52 logKey];
        v54 = MEMORY[0x1E696AEC0];
        v55 = a1[4];
        v56 = objc_opt_class();
        v57 = v56;
        if (v53)
        {
          v2 = [a1[4] context];
          v3 = [v2 logKey];
          [v54 stringWithFormat:@"%@: [%@] ", v57, v3];
        }

        else
        {
          [v54 stringWithFormat:@"%@: ", v56];
        }
        v58 = ;
        *buf = 138543362;
        v98 = v58;
        _os_log_impl(&dword_1BB036000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to run authentication", buf, 0xCu);
        if (v53)
        {

          v58 = v2;
        }
      }

      v74 = a1[5];
      v75 = AMSError();
      [v74 finishWithError:v75];
    }
  }

  v76 = *MEMORY[0x1E69E9840];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_105(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) context];
    v8 = [v7 logKey];
    v9 = MEMORY[0x1E696AEC0];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = v11;
    if (v8)
    {
      v21 = [*(a1 + 32) context];
      v2 = [v21 logKey];
      [v9 stringWithFormat:@"%@: [%@] ", v12, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = [v4 account];
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v23 = v13;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Replacing current account on context. account = %{public}@", buf, 0x16u);

    if (v8)
    {

      v13 = v21;
    }
  }

  v16 = [*(a1 + 32) context];
  v17 = [v4 account];
  v18 = [*(a1 + 32) context];
  v19 = [v18 clientInfo];
  [v16 replaceCurrentAccount:v17 clientInfo:v19];

  v20 = *MEMORY[0x1E69E9840];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_107(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [*(a1 + 32) account];
  v6 = [v5 username];
  v7 = [v4 account];
  v8 = [v7 username];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) context];
      v13 = [v12 logKey];
      v14 = MEMORY[0x1E696AEC0];
      v15 = *(a1 + 40);
      v16 = objc_opt_class();
      v17 = v16;
      if (v13)
      {
        v9 = [*(a1 + 40) context];
        v2 = [v9 logKey];
        [v14 stringWithFormat:@"%@: [%@] ", v17, v2];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@User changed prompted account during auth. Will update context anyway.", buf, 0xCu);
      if (v13)
      {

        v18 = v9;
      }
    }

    v19 = [*(a1 + 40) context];
    v20 = [v4 account];
    v21 = [*(a1 + 40) context];
    v22 = [v21 clientInfo];
    [v19 replaceCurrentAccount:v20 clientInfo:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_111(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698CBB0] isRunningUnitTests];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ completion handler not called.", buf, 0x16u);
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v10 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v4 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(*(a1 + 48));
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@ completion handler not called.", buf, 0x16u);
    }
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = *(a1 + 40);
  v17 = NSStringFromSelector(*(a1 + 48));
  v18 = [v15 stringWithFormat:@"Completion handler for %@ deallocated without being invoked", v17];
  v19 = AMSError();
  [v16 finishWithError:v19];

  v20 = *MEMORY[0x1E69E9840];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_124(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  [*(a1 + 40) finishWithResult:v7 error:v6];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_126(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) context];
  v5 = [v4 flowController];
  v6 = [v5 currentContainer];
  v7 = [v2 handleRequest:v3 presentingViewController:v6];

  [*(a1 + 56) finishWithPromise:v7];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_134(id *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1[4] context];
    v8 = [v7 logKey];
    v9 = MEMORY[0x1E696AEC0];
    v10 = a1[4];
    v11 = objc_opt_class();
    v12 = v11;
    if (v8)
    {
      a1 = [a1[4] context];
      v2 = [a1 logKey];
      [v9 stringWithFormat:@"%@: [%@] ", v12, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = AMSLogableError();
    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@Authentication failed. error = %{public}@", buf, 0x16u);
    if (v8)
    {

      v13 = a1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __67__AMSUIWebViewController__handleAuthenticateRequest_pauseTimeouts___block_invoke_136(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] context];
    v6 = [v5 logKey];
    v7 = MEMORY[0x1E696AEC0];
    v8 = a1[4];
    v9 = objc_opt_class();
    v10 = v9;
    if (v6)
    {
      a1 = [a1[4] context];
      v1 = [a1 logKey];
      [v7 stringWithFormat:@"%@: [%@] ", v10, v1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Authentication succeeded", buf, 0xCu);
    if (v6)
    {

      v11 = a1;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_handleAuthenticateCloudRequest:(id)a3 pauseTimeouts:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning Cloud Auth Task", buf, 0x16u);
  }

  if (v4)
  {
    v11 = [(AMSUIWebViewController *)self context];
    v12 = [v11 flowController];
    [v12 startTimeoutInterruption];
  }

  v13 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v14 = [(AMSUIWebViewController *)self context];
  v15 = [v14 flowController];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__AMSUIWebViewController__handleAuthenticateCloudRequest_pauseTimeouts___block_invoke;
  v22[3] = &unk_1E7F26F40;
  v22[4] = self;
  v23 = v6;
  v25 = v4;
  v16 = v13;
  v24 = v16;
  v17 = v6;
  [v15 performSafeTransitionFrom:self block:v22];

  v18 = v24;
  v19 = v16;

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

void __72__AMSUIWebViewController__handleAuthenticateCloudRequest_pauseTimeouts___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasAppeared])
  {
    v2 = [*(a1 + 32) context];
    v3 = [v2 flowController];
    v4 = [v3 currentContainer];

    v5 = [[AMSUIAuthenticateCloudTask alloc] initWithAuthRequest:*(a1 + 40) presentingViewController:v4];
    v6 = [(AMSUIAuthenticateCloudTask *)v5 performAuthenticate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__AMSUIWebViewController__handleAuthenticateCloudRequest_pauseTimeouts___block_invoke_2;
    v15[3] = &unk_1E7F26F18;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 56);
    [v6 addFinishBlock:v15];
    [*(a1 + 48) finishWithPromise:v6];
  }

  else
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
      v11 = [*(a1 + 32) context];
      v12 = [v11 logKey];
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to run authentication", buf, 0x16u);
    }

    v13 = *(a1 + 48);
    v4 = AMSError();
    [v13 finishWithError:v4];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __72__AMSUIWebViewController__handleAuthenticateCloudRequest_pauseTimeouts___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished Cloud Auth Task", &v10, 0x16u);
  }

  if (*(a1 + 40) == 1)
  {
    v7 = [*(a1 + 32) context];
    v8 = [v7 flowController];
    [v8 stopTimeoutInterruption];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_handleDialogRequest:(id)a3 pauseTimeouts:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [(AMSUIWebViewController *)self context];
    v12 = [v11 logKey];
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling dialog", buf, 0x16u);
  }

  if (v4)
  {
    v13 = [(AMSUIWebViewController *)self context];
    v14 = [v13 flowController];
    [v14 startTimeoutInterruption];
  }

  v15 = [(AMSUIWebViewController *)self context];
  v16 = [v15 flowController];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__AMSUIWebViewController__handleDialogRequest_pauseTimeouts___block_invoke;
  v24[3] = &unk_1E7F24590;
  v24[4] = self;
  v25 = v6;
  v17 = v7;
  v26 = v17;
  v18 = v6;
  [v16 performSafeTransitionFrom:self block:v24];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__AMSUIWebViewController__handleDialogRequest_pauseTimeouts___block_invoke_148;
  v22[3] = &unk_1E7F26F68;
  v22[4] = self;
  v23 = v4;
  [v17 addFinishBlock:v22];
  v19 = v17;

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void __61__AMSUIWebViewController__handleDialogRequest_pauseTimeouts___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasAppeared])
  {
    v2 = [AMSUIAlertDialogTask alloc];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) context];
    v5 = [v4 flowController];
    v6 = [v5 currentContainer];
    v23 = [(AMSUIAlertDialogTask *)v2 initWithRequest:v3 presentingViewController:v6];

    v7 = [(AMSUIAlertDialogTask *)v23 present];
    [*(a1 + 48) finishWithPromise:v7];

LABEL_5:
    v13 = *MEMORY[0x1E69E9840];

    return;
  }

  v8 = [*(a1 + 32) delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v23 = [*(a1 + 32) delegate];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) completionHandlerAdapter];
    [(AMSUIAlertDialogTask *)v23 webViewController:v10 handleDialogRequest:v11 completion:v12];

    goto LABEL_5;
  }

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
    *buf = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to run dialog", buf, 0x16u);
  }

  v20 = *(a1 + 48);
  v21 = AMSError();
  [v20 finishWithError:v21];

  v22 = *MEMORY[0x1E69E9840];
}

void __61__AMSUIWebViewController__handleDialogRequest_pauseTimeouts___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      v23 = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v6;
      v14 = "%{public}@: [%{public}@] Dialog failed. %{public}@";
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_10:
      _os_log_impl(&dword_1BB036000, v15, v16, v14, &v23, v17);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      v23 = 138543618;
      v24 = v19;
      v25 = 2114;
      v26 = v13;
      v14 = "%{public}@: [%{public}@] Dialog succeeded";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
      goto LABEL_10;
    }
  }

  if (*(a1 + 40) == 1)
  {
    v20 = [*(a1 + 32) context];
    v21 = [v20 flowController];
    [v21 stopTimeoutInterruption];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_handleEngagementRequest:(id)a3 pauseTimeouts:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [(AMSUIWebViewController *)self context];
    v12 = [v11 logKey];
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling engagement request", buf, 0x16u);
  }

  if (v4)
  {
    v13 = [(AMSUIWebViewController *)self context];
    v14 = [v13 flowController];
    [v14 startTimeoutInterruption];
  }

  v15 = [(AMSUIWebViewController *)self context];
  v16 = [v15 flowController];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__AMSUIWebViewController__handleEngagementRequest_pauseTimeouts___block_invoke;
  v24[3] = &unk_1E7F24590;
  v24[4] = self;
  v25 = v6;
  v17 = v7;
  v26 = v17;
  v18 = v6;
  [v16 performSafeTransitionFrom:self block:v24];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__AMSUIWebViewController__handleEngagementRequest_pauseTimeouts___block_invoke_157;
  v22[3] = &unk_1E7F26F90;
  v22[4] = self;
  v23 = v4;
  [v17 addFinishBlock:v22];
  v19 = v17;

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void __65__AMSUIWebViewController__handleEngagementRequest_pauseTimeouts___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasAppeared])
  {
    v2 = [AMSUIEngagementTask alloc];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) context];
    v5 = [v4 bag];
    v6 = [*(a1 + 32) context];
    v7 = [v6 flowController];
    v8 = [v7 currentContainer];
    v20 = [(AMSUIEngagementTask *)v2 initWithRequest:v3 bag:v5 presentingViewController:v8];

    v9 = [(AMSUIEngagementTask *)v20 presentEngagement];
    [*(a1 + 48) finishWithPromise:v9];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = [*(a1 + 32) context];
      v16 = [v15 logKey];
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to run engagement request", buf, 0x16u);
    }

    v17 = *(a1 + 48);
    v18 = AMSError();
    [v17 finishWithError:v18];

    v19 = *MEMORY[0x1E69E9840];
  }
}

void __65__AMSUIWebViewController__handleEngagementRequest_pauseTimeouts___block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      v23 = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v6;
      v14 = "%{public}@: [%{public}@] Engagement request failed. %{public}@";
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_10:
      _os_log_impl(&dword_1BB036000, v15, v16, v14, &v23, v17);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      v23 = 138543618;
      v24 = v19;
      v25 = 2114;
      v26 = v13;
      v14 = "%{public}@: [%{public}@] Engagement request succeeded";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
      goto LABEL_10;
    }
  }

  if (*(a1 + 40) == 1)
  {
    v20 = [*(a1 + 32) context];
    v21 = [v20 flowController];
    [v21 stopTimeoutInterruption];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_handleDidEncodeNetworkRequest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to decorate request", &v13, 0x16u);
    }

    v11 = [(AMSUIWebViewController *)self delegate];
    [v11 webViewController:self didEncodeNetworkRequest:v4];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_lazyPromiseForLoadingRequest:(id)a3 bagValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E698C958]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke;
  v13[3] = &unk_1E7F27008;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCurrentLoadState:1];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [WeakRetained context];
    v9 = [v8 logKey];
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting promise to load request", buf, 0x16u);
  }

  v10 = [WeakRetained _buildRequestWithRequest:*(a1 + 32) bagValue:*(a1 + 40)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_162;
  v13[3] = &unk_1E7F26FE0;
  objc_copyWeak(&v16, (a1 + 48));
  v11 = v3;
  v14 = v11;
  v15 = *(a1 + 32);
  [v10 addFinishBlock:v13];

  objc_destroyWeak(&v16);
  v12 = *MEMORY[0x1E69E9840];
}

void __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_162(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!v6)
  {
    v8 = [v5 URL];
    v9 = [v8 absoluteString];
    if ([v9 length])
    {
      v10 = [WeakRetained lastLoadedURL];
      v11 = [v10 absoluteString];
      v12 = [v8 absoluteString];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        [a1[4] finishWithResult:MEMORY[0x1E695E118]];
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
    }

    v14 = [WeakRetained _loadMescalSessionForRequestWithURL:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_2;
    v15[3] = &unk_1E7F26FB8;
    v15[4] = WeakRetained;
    v16 = v5;
    objc_copyWeak(&v19, a1 + 6);
    v17 = a1[5];
    v18 = a1[4];
    [v14 addFinishBlock:v15];

    objc_destroyWeak(&v19);
    goto LABEL_8;
  }

  [a1[4] finishWithError:v6];
LABEL_9:
}

void __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 BOOLValue])
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
      *buf = 138543618;
      v30 = v10;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Mescal account prime session loaded.", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
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
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = [*(a1 + 32) context];
      v16 = [v15 logKey];
      *buf = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load mescal account prime session. %{public}@", buf, 0x20u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v17 = [*(a1 + 32) context];
  v18 = [v17 webPage];
  v19 = [v18 loadRequest:*(a1 + 40)];

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_163;
  v26 = &unk_1E7F24730;
  objc_copyWeak(&v28, (a1 + 64));
  v27 = *(a1 + 48);
  [v19 addSuccessBlock:&v23];
  v20 = *(a1 + 56);
  v21 = [v19 promiseAdapter];
  [v20 finishWithPromise:v21];

  objc_destroyWeak(&v28);
  v22 = *MEMORY[0x1E69E9840];
}

void __65__AMSUIWebViewController__lazyPromiseForLoadingRequest_bagValue___block_invoke_163(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [WeakRetained context];
    v8 = [v7 logKey];
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished loading the request", &v11, 0x16u);
  }

  v9 = [*(a1 + 32) URL];
  [WeakRetained setLastLoadedURL:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_lazyPromiseForBagSnapshot
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E698C958]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AMSUIWebViewController__lazyPromiseForBagSnapshot__block_invoke;
  v5[3] = &unk_1E7F27030;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __52__AMSUIWebViewController__lazyPromiseForBagSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [WeakRetained context];
    v9 = [v8 logKey];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bootstrap: starting promise to load the bag snapshot.", &v14, 0x16u);
  }

  v10 = [WeakRetained context];
  v11 = [v10 loadSnapshot];

  v12 = [v11 promiseAdapter];
  [v3 finishWithPromise:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_lazyPromiseForLoadingSession
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E698C958]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AMSUIWebViewController__lazyPromiseForLoadingSession__block_invoke;
  v5[3] = &unk_1E7F27030;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __55__AMSUIWebViewController__lazyPromiseForLoadingSession__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 logKey];
  v7 = AMSSetLogKey();

  v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bootstrap: starting promise to load the session.", buf, 0x16u);
  }

  v12 = dispatch_get_global_queue(2, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__AMSUIWebViewController__lazyPromiseForLoadingSession__block_invoke_166;
  v18[3] = &unk_1E7F243C0;
  v18[4] = WeakRetained;
  v19 = v3;
  v13 = v18;
  v14 = v3;
  v15 = AMSLogKey();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __AMSDispatchAsync_block_invoke_8;
  v21 = &unk_1E7F245E0;
  v22 = v15;
  v23 = v13;
  v16 = v15;
  dispatch_async(v12, buf);

  v17 = *MEMORY[0x1E69E9840];
}

void __55__AMSUIWebViewController__lazyPromiseForLoadingSession__block_invoke_166(uint64_t a1)
{
  v2 = MEMORY[0x1E696AF80];
  v3 = [*(a1 + 32) context];
  v4 = [v3 clientInfo];
  v5 = [*(a1 + 32) context];
  v6 = [v5 bag];
  v12 = [v2 ams_configurationWithProcessInfo:v4 bag:v6];

  v7 = [objc_alloc(MEMORY[0x1E698CBA8]) initWithConfiguration:v12 delegate:*(a1 + 32) delegateQueue:0];
  v8 = [*(a1 + 32) context];
  [v8 setURLSession:v7];

  v9 = objc_alloc_init(AMSUIWebProtocolHandler);
  [(AMSUIWebProtocolHandler *)v9 setDelegate:*(a1 + 32)];
  v10 = [*(a1 + 32) context];
  v11 = [v10 URLSession];
  [v11 setProtocolHandler:v9];

  [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
}

- (id)_lazyPromiseForPageLoad
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E698C958]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke;
  v5[3] = &unk_1E7F27030;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke_2;
  v5[3] = &unk_1E7F24730;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentLoadState:2];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = [WeakRetained context];
    v7 = [v6 logKey];
    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bootstrap: starting promise to refresh the page.", buf, 0x16u);
  }

  v8 = objc_alloc_init(AMSUIWebFlowOptions);
  [(AMSUIWebFlowOptions *)v8 setAnimated:1];
  [(AMSUIWebFlowOptions *)v8 setDisableTimeout:1];
  [(AMSUIWebFlowOptions *)v8 setSuppressErrorPage:1];
  v9 = [WeakRetained context];
  v10 = [v9 flowController];
  v11 = [WeakRetained context];
  v12 = [v11 flowController];
  v13 = [v12 currentContainer];
  v14 = [v10 refreshPageForContainer:v13 options:v8];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke_171;
  v16[3] = &unk_1E7F246E0;
  v17 = *(a1 + 32);
  [v14 addFinishBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __49__AMSUIWebViewController__lazyPromiseForPageLoad__block_invoke_171(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E695E118];
  }

  return [v4 finishWithResult:v5 error:a3];
}

- (id)_parseWebPropertiesFromRequest:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = [a3 mutableCopy];
  v5 = [v4 URL];
  v6 = [v5 host];
  v7 = [v6 length];

  if (!v7)
  {
    v8 = [v5 ams_parameters];
    v9 = [v8 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && ([MEMORY[0x1E695DFF8] URLWithString:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      [v4 setURL:v11];
      v13 = [v8 objectForKeyedSubscript:@"dsid"];
      if (objc_opt_respondsToSelector())
      {
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NSObject longLongValue](v13, "longLongValue")}];
      }

      else
      {
        v14 = 0;
      }

      v18 = [v8 objectForKeyedSubscript:@"accountType"];
      objc_opt_class();
      v51 = v10;
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v52 = v14;
      if (v14)
      {
        if (v19)
        {
          v20 = MEMORY[0x1E6959A48];
          v21 = [(AMSUIWebViewController *)self context];
          v22 = [v21 clientInfo];
          [v22 accountMediaType];
          v23 = v49 = v19;
          v24 = [v20 ams_sharedAccountStoreForMediaType:v23];

          v19 = v49;
          v25 = [v24 ams_accountWithAltDSID:0 DSID:v52 username:0 accountTypeIdentifier:v49];

          if (v25)
          {
            v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
            if (!v26)
            {
              v26 = [MEMORY[0x1E698C968] sharedConfig];
            }

            v27 = [v26 OSLogObject];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v45 = objc_opt_class();
              v47 = [(AMSUIWebViewController *)self context];
              v28 = [v47 logKey];
              *buf = 138543618;
              v54 = v45;
              v55 = 2114;
              v56 = v28;
              _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bootstrap: parsed URL is replacing the account...", buf, 0x16u);
            }

            v29 = [(AMSUIWebViewController *)self context];
            v30 = [(AMSUIWebViewController *)self context];
            v31 = [v30 clientInfo];
            [v29 replaceCurrentAccount:v25 clientInfo:v31];

            v19 = v49;
          }
        }
      }

      v32 = [v8 objectForKeyedSubscript:@"signatureResumption"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v32 BOOLValue])
      {
        v46 = [(AMSUIWebViewController *)self context];
        v33 = [v46 additionalHeaders];
        v34 = [v33 mutableCopy];
        v35 = v34;
        v50 = v19;
        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v48 = v36;

        v37 = [MEMORY[0x1E698C940] resumptionHeaders];
        v38 = v37;
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = MEMORY[0x1E695E0F8];
        }

        [v48 addEntriesFromDictionary:v39];

        v40 = [v48 copy];
        v41 = [(AMSUIWebViewController *)self context];
        [v41 setAdditionalHeaders:v40];

        v42 = [(AMSUIWebViewController *)self context];
        [v42 setSignatureResumption:1];

        v19 = v50;
      }

      v10 = v51;
    }

    else
    {
      v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v12)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = [(AMSUIWebViewController *)self context];
        v17 = [v16 logKey];
        *buf = 138543618;
        v54 = v15;
        v55 = 2114;
        v56 = v17;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unable to extract URL from query string", buf, 0x16u);
      }
    }
  }

  v43 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_loadMescalSessionForRequestWithURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebViewController *)self context];
  v6 = [v5 bag];
  v7 = [v6 stringForKey:@"account-flow-url-patterns"];
  v8 = [v7 valuePromise];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AMSUIWebViewController__loadMescalSessionForRequestWithURL___block_invoke;
  v12[3] = &unk_1E7F27058;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = [v8 thenWithBlock:v12];

  return v10;
}

id __62__AMSUIWebViewController__loadMescalSessionForRequestWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE70];
  v4 = a2;
  v20 = 0;
  v5 = [[v3 alloc] initWithPattern:v4 options:1 error:&v20];

  v6 = v20;
  if (v5)
  {
    v7 = [*(a1 + 32) absoluteString];
    if ([v5 rangeOfFirstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = objc_alloc(MEMORY[0x1E698C9F8]);
      v9 = [*(a1 + 40) context];
      v10 = [v9 bag];
      v11 = [v8 initWithBag:v10];
      v12 = [*(a1 + 40) context];
      [v12 setMescalSession:v11];
    }

    v13 = MEMORY[0x1E698CAD0];
    v14 = MEMORY[0x1E696AD98];
    v15 = [*(a1 + 40) context];
    v16 = [v15 mescalSession];
    v17 = [v14 numberWithInt:v16 != 0];
    v18 = [v13 promiseWithResult:v17];
  }

  else
  {
    v18 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  return v18;
}

- (id)_loadRequest:(id)a3 bagValue:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v47 = a4;
  v7 = [(AMSUIWebViewController *)self context];
  v8 = [v7 logKey];
  v9 = AMSSetLogKey();

  if ([(AMSUIWebViewController *)self hasStarted])
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v61 = v12;
      v62 = 2114;
      v63 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Multiple loadRequest calls are not supported.", buf, 0x16u);
    }

    v14 = MEMORY[0x1E698C7F0];
    v15 = AMSError();
    v16 = [v14 promiseWithError:v15];
  }

  else
  {
    v17 = [(AMSUIWebViewController *)self context];
    [v17 setBootstrapComplete:0];

    [(AMSUIWebViewController *)self setHasStarted:1];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:v6 forKeyedSubscript:@"request"];
    [v15 setObject:v47 forKeyedSubscript:@"bagValue"];
    v18 = [(AMSUIWebViewController *)self context];
    v19 = [v18 account];
    v20 = [v19 hashedDescription];
    [v15 setObject:v20 forKeyedSubscript:@"account"];

    v21 = [(AMSUIWebViewController *)self context];
    v22 = [v21 clientInfo];
    [v15 setObject:v22 forKeyedSubscript:@"clientInfo"];

    v23 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v23)
    {
      v23 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = [(AMSUIWebViewController *)self context];
      v27 = [v26 logKey];
      v28 = [(AMSUIWebViewController *)self context];
      v29 = [v28 clientOptions];
      *buf = 138544130;
      v61 = v25;
      v62 = 2114;
      v63 = v27;
      v64 = 2114;
      v65 = v15;
      v66 = 2114;
      v67 = v29;
      _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting bootstrap: %{public}@ options: %{public}@", buf, 0x2Au);
    }

    v30 = MEMORY[0x1E698CAA8];
    v31 = [v6 URL];
    [v30 sendCUIBootstrapInitiatedEventWithURL:v31];

    v46 = [(AMSUIWebViewController *)self _parseWebPropertiesFromRequest:v6];
    v32 = [(AMSUIWebViewController *)self _lazyPromiseForBagSnapshot];
    v59[0] = v32;
    v33 = [(AMSUIWebViewController *)self _lazyPromiseForLoadingSession];
    v59[1] = v33;
    v34 = [(AMSUIWebViewController *)self _lazyPromiseForLoadingRequest:v46 bagValue:v47];
    v59[2] = v34;
    v35 = [(AMSUIWebViewController *)self _lazyPromiseForPageLoad];
    v59[3] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];

    v37 = [MEMORY[0x1E698CAD0] promiseWithAll:v36];
    objc_initWeak(buf, self);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke;
    v57[3] = &unk_1E7F27080;
    objc_copyWeak(&v58, buf);
    [v37 addSuccessBlock:v57];
    v38 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    [v38 finishWithPromise:v37];
    v39 = [(AMSUIWebViewController *)self context];
    v40 = [v39 flowController];
    v41 = MEMORY[0x1E69E96A0];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_218;
    v54[3] = &unk_1E7F24730;
    objc_copyWeak(&v56, buf);
    v42 = v38;
    v55 = v42;
    [v40 startTimeout:MEMORY[0x1E69E96A0] queue:v54 block:30.0];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_2;
    v50[3] = &unk_1E7F270A8;
    objc_copyWeak(&v53, buf);
    v43 = v6;
    v51 = v43;
    v52 = v47;
    [v42 addErrorBlock:v50];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_225;
    v48[3] = &unk_1E7F24B78;
    v49 = v43;
    [v42 addFinishBlock:v48];
    v16 = [v42 binaryPromiseAdapter];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v58);
    objc_destroyWeak(buf);
  }

  v44 = *MEMORY[0x1E69E9840];

  return v16;
}

void __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained context];
    v6 = [v5 logKey];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bootstrap succeeded", &v9, 0x16u);
  }

  v7 = [WeakRetained context];
  [v7 setBootstrapComplete:1];

  v8 = *MEMORY[0x1E69E9840];
}

void __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [WeakRetained context];
    v3 = [v2 logKey];
    v4 = AMSSetLogKey();

    v5 = [WeakRetained _stringForLoadState:{objc_msgSend(WeakRetained, "currentLoadState")}];
    v6 = AMSErrorWithFormat();
    [*(a1 + 32) finishWithError:{v6, v5}];
  }
}

void __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = [WeakRetained context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Bootstrap failed. %{public}@", &v11, 0x20u);
  }

  [WeakRetained _showErrorViewWithError:v3 request:*(a1 + 32) bagValue:*(a1 + 40)];
  v10 = *MEMORY[0x1E69E9840];
}

void __48__AMSUIWebViewController__loadRequest_bagValue___block_invoke_225(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E698CAA8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 URL];
  [v3 sendCUIBootstrapEventWithURL:v6 error:v5];
}

- (id)_rootNavigationController
{
  v2 = [(AMSUIWebViewController *)self rootContainer];
  v3 = [v2 ams_navigationController];

  return v3;
}

- (void)_showErrorViewWithError:(id)a3 request:(id)a4 bagValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AMSUIWebViewController__showErrorViewWithError_request_bagValue___block_invoke;
  v14[3] = &unk_1E7F26650;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  objc_copyWeak(&v18, &location);
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __67__AMSUIWebViewController__showErrorViewWithError_request_bagValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 flowController];
  v4 = [v3 currentContainer];
  v5 = [v4 containedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [AMSUIWebErrorPageModel alloc];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) context];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__AMSUIWebViewController__showErrorViewWithError_request_bagValue___block_invoke_2;
    v17[3] = &unk_1E7F270D0;
    objc_copyWeak(&v20, (a1 + 64));
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v10 = [(AMSUIWebErrorPageModel *)v7 initWithError:v8 context:v9 actionBlock:v17];

    v11 = [*(a1 + 32) context];
    v12 = [v11 flowController];
    v13 = [*(a1 + 32) context];
    v14 = [v13 flowController];
    v15 = [v14 currentContainer];
    v16 = [v12 replaceWithPageModel:v10 forContainer:v15 options:0];

    objc_destroyWeak(&v20);
  }
}

void __67__AMSUIWebViewController__showErrorViewWithError_request_bagValue___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 1) == 0)
  {
    v15 = WeakRetained;
    v5 = [AMSUIWebLoadingPageModel alloc];
    v6 = [v15 context];
    v7 = [(AMSUIWebLoadingPageModel *)v5 initWithContext:v6];

    v8 = [v15 context];
    v9 = [v8 flowController];
    v10 = [v15 context];
    v11 = [v10 flowController];
    v12 = [v11 currentContainer];
    v13 = [v9 replaceWithPageModel:v7 forContainer:v12 options:0];

    [v15 setHasStarted:0];
    v14 = [v15 _loadRequest:*(a1 + 32) bagValue:*(a1 + 40)];

    WeakRetained = v15;
  }
}

- (id)_shouldReplaceCurrentAccountAfterSuccessfulAuth
{
  v4 = self;
  v48 = *MEMORY[0x1E69E9840];
  if ([(AMSUIWebViewController *)self currentLoadState]== 1)
  {
    v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 context];
      v8 = [v7 logKey];
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v4 = [v4 context];
        v2 = [v4 logKey];
        [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543362;
      v47 = v12;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_INFO, "%{public}@Load state is initial load, we should replace the account.", buf, 0xCu);
      if (v8)
      {

        v12 = v4;
      }
    }

    v34 = MEMORY[0x1E698CAD0];
    v35 = MEMORY[0x1E698C810];
    v36 = 1;
LABEL_35:
    v39 = [v35 BOOLeanWithBool:v36];
    v42 = [v34 promiseWithResult:v39];
    goto LABEL_36;
  }

  v13 = [v4 context];
  v14 = [v13 account];
  if (v14)
  {
    v15 = v14;
    v16 = [v4 context];
    v17 = [v16 account];
    v2 = [v17 ams_isLocalAccount];

    if ((v2 & 1) == 0)
    {
      v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v18)
      {
        v18 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v4 context];
        v21 = [v20 logKey];
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          v4 = [v4 context];
          v2 = [v4 logKey];
          [v22 stringWithFormat:@"%@: [%@] ", v24, v2];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23];
        }
        v25 = ;
        *buf = 138543362;
        v47 = v25;
        _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_INFO, "%{public}@There’s already a non-nil, non-local account, we should not replace the account.", buf, 0xCu);
        if (v21)
        {

          v25 = v4;
        }
      }

      v34 = MEMORY[0x1E698CAD0];
      v35 = MEMORY[0x1E698C810];
      v36 = 0;
      goto LABEL_35;
    }
  }

  else
  {
  }

  v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v26)
  {
    v26 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v4 context];
    v29 = [v28 logKey];
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = v31;
    if (v29)
    {
      v2 = [v4 context];
      v3 = [v2 logKey];
      [v30 stringWithFormat:@"%@: [%@] ", v32, v3];
    }

    else
    {
      [v30 stringWithFormat:@"%@: ", v31];
    }
    v33 = ;
    *buf = 138543362;
    v47 = v33;
    _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_INFO, "%{public}@Checking for an active account to determine if we should replace the account.", buf, 0xCu);
    if (v29)
    {

      v33 = v2;
    }
  }

  v37 = [v4 context];
  v38 = [v37 clientInfo];
  v39 = [v38 accountMediaType];

  v40 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:v39];
  v41 = [v40 ams_activeiTunesAccountForMediaType:v39];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __73__AMSUIWebViewController__shouldReplaceCurrentAccountAfterSuccessfulAuth__block_invoke;
  v45[3] = &unk_1E7F270F8;
  v45[4] = v4;
  v42 = [v41 continueWithBlock:v45];

LABEL_36:
  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

id __73__AMSUIWebViewController__shouldReplaceCurrentAccountAfterSuccessfulAuth__block_invoke(id *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [a1[4] context];
      v9 = [v8 logKey];
      v10 = MEMORY[0x1E696AEC0];
      v11 = a1[4];
      v12 = objc_opt_class();
      v13 = v12;
      if (v9)
      {
        a1 = [a1[4] context];
        v2 = [a1 logKey];
        [v10 stringWithFormat:@"%@: [%@] ", v13, v2];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v26 = v14;
      v19 = "%{public}@There’s already an active account, we should not replace the account.";
LABEL_16:
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_INFO, v19, buf, 0xCu);
      if (v9)
      {

        v14 = a1;
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [a1[4] context];
      v9 = [v8 logKey];
      v15 = MEMORY[0x1E696AEC0];
      v16 = a1[4];
      v17 = objc_opt_class();
      v18 = v17;
      if (v9)
      {
        a1 = [a1[4] context];
        v2 = [a1 logKey];
        [v15 stringWithFormat:@"%@: [%@] ", v18, v2];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v17];
      }
      v14 = ;
      *buf = 138543362;
      v26 = v14;
      v19 = "%{public}@There’s no active account, we should replace the account.";
      goto LABEL_16;
    }
  }

  v20 = MEMORY[0x1E698CAD0];
  v21 = [MEMORY[0x1E698C810] BOOLeanWithBool:a2 == 0];
  v22 = [v20 promiseWithResult:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_stringForLoadState:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7F27118[a3];
  }
}

- (AMSUIWebDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end