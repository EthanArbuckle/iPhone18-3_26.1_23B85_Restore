@interface AMSUIEngagementViewController
- (AMSUIEngagementViewController)initWithRequest:(id)a3 bag:(id)a4 delegate:(id)a5;
- (AMSUIEngagementViewControllerDelegate)delegate;
- (BOOL)_isURLTrusted:(id)a3 inDomains:(id)a4;
- (BOOL)dynamicViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5;
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (NSDictionary)engagementMetrics;
- (id)_isOriginatingURLTrusted;
- (id)_preloadChildVC;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (id)navigationItem;
- (id)requestIsSupported;
- (int64_t)_modalPresentationStyle;
- (void)_dismiss;
- (void)_receivedCarrierLinkResult:(id)a3;
- (void)_receivedPurchaseResult:(id)a3;
- (void)_setup;
- (void)_startEngagement;
- (void)_updateChildViewController:(id)a3;
- (void)dealloc;
- (void)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4 completionHandler:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)enqueueDismissedEvent;
- (void)enqueueDisplayEvent;
- (void)loadView;
- (void)resolveWithResult:(id)a3 error:(id)a4;
- (void)updateEffectiveRequest:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6;
- (void)willDismissWebViewController:(id)a3;
@end

@implementation AMSUIEngagementViewController

- (AMSUIEngagementViewController)initWithRequest:(id)a3 bag:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSUIEngagementViewController;
  v12 = [(AMSUIEngagementViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bag, a4);
    objc_storeStrong(&v13->_request, a3);
    objc_storeStrong(&v13->_effectiveRequest, a3);
    objc_storeWeak(&v13->_delegate, v11);
    [(AMSUIEngagementViewController *)v13 _setup];
  }

  return v13;
}

- (void)dealloc
{
  if ([(AMSUIEngagementViewController *)self started]&& ![(AMSUIEngagementViewController *)self shouldSuppressDismissedEventOnDealloc])
  {
    [(AMSUIEngagementViewController *)self enqueueDismissedEvent];
  }

  v3.receiver = self;
  v3.super_class = AMSUIEngagementViewController;
  [(AMSUIEngagementViewController *)&v3 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUIEngagementViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  v3 = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v4 = [(AMSUICommonViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementViewController;
  [(AMSUIEngagementViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIEngagementViewController *)self childController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (id)requestIsSupported
{
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v4 = [(AMSUIEngagementViewController *)self _preloadChildVC];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AMSUIEngagementViewController_requestIsSupported__block_invoke;
  v7[3] = &unk_1E7F24C10;
  v5 = v3;
  v8 = v5;
  [v4 addFinishBlock:v7];

  return v5;
}

uint64_t __51__AMSUIEngagementViewController_requestIsSupported__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithSuccess];
  }

  else
  {
    return [v2 finishWithError:?];
  }
}

- (void)willDismissWebViewController:(id)a3
{
  v4 = [(AMSUIEngagementViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AMSUIEngagementViewController *)self delegate];
    [v6 engagementViewControllerShouldDismiss:self];
  }
}

- (void)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIEngagementViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [MEMORY[0x1E698C968] sharedConfig];
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
      v19 = 138543362;
      v20 = objc_opt_class();
      v14 = v20;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view controller", &v19, 0xCu);
    }

    v15 = [(AMSUIEngagementViewController *)self delegate];
    [v15 engagementViewController:self contentViewControllerWithDictionary:v7 completionHandler:v8];
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
      v19 = 138543362;
      v20 = objc_opt_class();
      v17 = v20;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewControllerWithDictionary", &v19, 0xCu);
    }

    v15 = AMSError();
    v8[2](v8, 0, v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [(AMSUIEngagementViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = [MEMORY[0x1E698C968] sharedConfig];
  v14 = v13;
  if (v12)
  {
    if (!v13)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to request content view", &v23, 0xCu);
    }

    v17 = [(AMSUIEngagementViewController *)self delegate];
    v18 = [v17 engagementViewController:self contentViewWithDictionary:v10 frame:{x, y, width, height}];
  }

  else
  {
    if (!v13)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v14 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v20 = v24;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement contentViewWithDictionary", &v23, 0xCu);
    }

    v17 = AMSError();
    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698C968] sharedConfig];
  v10 = v9;
  if (v7)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v19 = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI carrier link succeeded", &v19, 0x16u);
    }

    [(AMSUIEngagementViewController *)self _receivedCarrierLinkResult:v7];
  }

  else
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v10 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSLogableError();
      v19 = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Dynamic UI carrier link failed with error: %{public}@", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698C968] sharedConfig];
  v10 = v9;
  if (v7)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v19 = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI purchase succeeded", &v19, 0x16u);
    }

    [(AMSUIEngagementViewController *)self _receivedPurchaseResult:v7];
  }

  else
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v10 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSLogableError();
      v19 = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Dynamic UI purchase failed with error: %{public}@", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI did resolve", &v15, 0x16u);
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E698C910]);
    [v13 setUserInfo:v7];
  }

  [(AMSUIEngagementViewController *)self resolveWithResult:v13 error:v8];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI will dismiss", &v10, 0x16u);
  }

  [(AMSUIEngagementViewController *)self _dismiss];
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)dynamicViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIEngagementViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [MEMORY[0x1E698C968] sharedConfig];
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
      v15 = v14;
      v16 = [v7 identifier];
      *buf = 138543618;
      v36 = v14;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to handle delegate action (identifier: %{public}@)", buf, 0x16u);
    }

    v17 = [(AMSUIEngagementViewController *)self delegate];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __94__AMSUIEngagementViewController_dynamicViewController_handleDelegateAction_completionHandler___block_invoke;
    v32[3] = &unk_1E7F246B8;
    v32[4] = self;
    v33 = v7;
    v34 = v8;
    v18 = [v17 engagementViewController:self handleDynamicDelegateAction:v33 completionHandler:v32];

    if (v18)
    {
      v19 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v20 = [v12 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [v7 identifier];
      *buf = 138543618;
      v36 = v21;
      v37 = 2114;
      v38 = v23;
      _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Delegate does not implement handleDynamicDelegateAction (identifier: %{public}@)", buf, 0x16u);
    }

    v24 = AMSError();
    (*(v8 + 2))(v8, 0, v24);
  }

  v25 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v25)
  {
    v25 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = [v7 identifier];
    *buf = 138543618;
    v36 = v27;
    v37 = 2114;
    v38 = v29;
    _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate action not handled (identifier: %{public}@)", buf, 0x16u);
  }

  (*(v8 + 2))(v8, MEMORY[0x1E695E110], 0);
  v19 = 0;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

void __94__AMSUIEngagementViewController_dynamicViewController_handleDelegateAction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v26 = a1[4];
      v27 = objc_opt_class();
      v28 = a1[5];
      v19 = v27;
      v20 = [v28 identifier];
      v29 = 138543618;
      v30 = v27;
      v31 = 2114;
      v32 = v20;
      v21 = "%{public}@: Delegate responded with neither an error or response (identifier: %{public}@)";
      v22 = v15;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 22;
      goto LABEL_13;
    }

LABEL_9:
    v14 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = a1[4];
    v17 = objc_opt_class();
    v18 = a1[5];
    v19 = v17;
    v20 = [v18 identifier];
    v29 = 138543874;
    v30 = v17;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v5;
    v21 = "%{public}@: Delegate responded with a response (identifier: %{public}@, response: %{public}@)";
    v22 = v15;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 32;
LABEL_13:
    _os_log_impl(&dword_1BB036000, v22, v23, v21, &v29, v24);

LABEL_14:
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 identifier];
    v29 = 138543874;
    v30 = v10;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v13;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Delegate responded with error (identifier: %{public}@, error: %{public}@)", &v29, 0x20u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_15:
  (*(a1[6] + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = MEMORY[0x1E698C968];
    v7 = a4;
    v8 = [v6 sharedConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Web UI purchase succeeded", &v13, 0x16u);
    }

    [(AMSUIEngagementViewController *)self _receivedPurchaseResult:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E698C968];
  v12 = a6;
  v13 = [v11 sharedConfig];
  if (!v13)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    v19 = 138543618;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Web UI did resolve", &v19, 0x16u);
  }

  if (v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E698C910]);
    [v17 setUserInfo:v9];
  }

  [(AMSUIEngagementViewController *)self resolveWithResult:v17 error:v10];
  (*(v12 + 2))(v12, MEMORY[0x1E695E118], 0);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)navigationItem
{
  v3 = [(AMSUIEngagementViewController *)self parentViewController];
  v4 = [v3 ams_navigationItemViewController];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 navigationItem];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AMSUIEngagementViewController;
    v6 = [(AMSUIEngagementViewController *)&v9 navigationItem];
  }

  v7 = v6;

  return v7;
}

- (void)_dismiss
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIEngagementViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v11 = [(AMSUIEngagementViewController *)self delegate];
    [v11 engagementViewControllerShouldDismiss:self];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caller not observing dismissals", buf, 0x16u);
    }

    [(AMSUIEngagementViewController *)self dismissViewControllerAnimated:1 completion:0];
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (NSDictionary)engagementMetrics
{
  v3 = [(AMSUIEngagementViewController *)self effectiveRequest];
  v4 = [v3 clientData];
  v5 = [v4 objectForKeyedSubscript:@"engagementMetrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(AMSUIEngagementViewController *)self effectiveRequest];
    v9 = [v8 clientData];
    v10 = [v9 valueForKeyPath:@"engagementItem.meta.metrics.engagementMetrics"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)enqueueDisplayEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIEngagementViewController *)self engagementMetrics];
  if (v3)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing display event.", buf, 0x16u);
    }

    v14[0] = @"eventType";
    v14[1] = @"engagementMetrics";
    v15[0] = @"UnifiedMessageDisplayed";
    v15[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v9 = objc_alloc(MEMORY[0x1E698C8D8]);
    v10 = [(AMSUIEngagementViewController *)self bag];
    v11 = [v9 initWithBag:v10];
    v12 = [v11 enqueueData:v8];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enqueueDismissedEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIEngagementViewController *)self engagementMetrics];
  if (v3)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing dismissed event.", buf, 0x16u);
    }

    v14[0] = @"eventType";
    v14[1] = @"engagementMetrics";
    v15[0] = @"UnifiedMessageDismissed";
    v15[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v9 = objc_alloc(MEMORY[0x1E698C8D8]);
    v10 = [(AMSUIEngagementViewController *)self bag];
    v11 = [v9 initWithBag:v10];
    v12 = [v11 enqueueData:v8];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_isOriginatingURLTrusted
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = [(AMSUIEngagementViewController *)self effectiveRequest];
    v8 = [v7 originatingURL];
    v9 = [(AMSUIEngagementViewController *)self effectiveRequest];
    v10 = [v9 URL];
    *buf = 138544130;
    v31 = v5;
    v32 = 2114;
    v33 = v6;
    v34 = 2114;
    v35 = v8;
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking if originating URL %{public}@ is trusted for request %{public}@", buf, 0x2Au);
  }

  v11 = [(AMSUIEngagementViewController *)self effectiveRequest];
  v12 = [v11 originatingURL];
  if (v12)
  {
    v13 = v12;
    v14 = [(AMSUIEngagementViewController *)self effectiveRequest];
    v15 = [v14 destinationStyle];

    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      v17 = +[AMSUIEngagementTask createBagForSubProfile];
      v18 = [v17 arrayForKey:@"trustedEngagementReferrers"];
      v19 = [v18 valuePromise];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __57__AMSUIEngagementViewController__isOriginatingURLTrusted__block_invoke;
      v28[3] = &unk_1E7F24410;
      v20 = v16;
      v29 = v20;
      [v19 addErrorBlock:v28];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __57__AMSUIEngagementViewController__isOriginatingURLTrusted__block_invoke_2;
      v26[3] = &unk_1E7F24CB0;
      v26[4] = self;
      v21 = v20;
      v27 = v21;
      [v19 addSuccessBlock:v26];
      v22 = v27;
      v23 = v21;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v23 = [MEMORY[0x1E698C7F0] promiseWithSuccess];
LABEL_10:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __57__AMSUIEngagementViewController__isOriginatingURLTrusted__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AMSError();
  [v1 finishWithError:v2];
}

void __57__AMSUIEngagementViewController__isOriginatingURLTrusted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 effectiveRequest];
  v6 = [v5 originatingURL];
  LODWORD(v3) = [v3 _isURLTrusted:v6 inDomains:v4];

  v7 = *(a1 + 40);
  if (v3)
  {

    [v7 finishWithSuccess];
  }

  else
  {
    v8 = AMSError();
    [v7 finishWithError:v8];
  }
}

- (BOOL)_isURLTrusted:(id)a3 inDomains:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 host];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
        {
          if ([v12 hasPrefix:@"."])
          {
            if ([v6 hasSuffix:v12])
            {
              goto LABEL_15;
            }
          }

          else if (![v6 caseInsensitiveCompare:v12])
          {
LABEL_15:
            v13 = 1;
            goto LABEL_16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)_modalPresentationStyle
{
  v2 = [(AMSUIEngagementViewController *)self effectiveRequest];
  v3 = [v2 presentationStyle];

  if (v3 == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 != 2);
  }
}

- (id)_preloadChildVC
{
  v3 = [(AMSUIEngagementViewController *)self loadVCPromise];

  if (!v3)
  {
    v4 = [(AMSUIEngagementViewController *)self _isOriginatingURLTrusted];
    v5 = [v4 promiseAdapter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AMSUIEngagementViewController__preloadChildVC__block_invoke;
    v9[3] = &unk_1E7F24CD8;
    v9[4] = self;
    v6 = [v5 thenWithBlock:v9];
    [(AMSUIEngagementViewController *)self setLoadVCPromise:v6];
  }

  v7 = [(AMSUIEngagementViewController *)self loadVCPromise];

  return v7;
}

id __48__AMSUIEngagementViewController__preloadChildVC__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectiveRequest];
  v3 = [v2 loadViewControllerForEngagementController:*(a1 + 32)];

  return v3;
}

- (void)_receivedCarrierLinkResult:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698C910];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setCarrierLinkResult:v5];

  v9 = @"didCarrierLink";
  v10[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 setUserInfo:v7];

  [(AMSUIEngagementViewController *)self resolveWithResult:v6 error:0];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_receivedPurchaseResult:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698C910];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setPurchaseResult:v5];

  v9 = @"didPurchase";
  v10[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 setUserInfo:v7];

  [(AMSUIEngagementViewController *)self resolveWithResult:v6 error:0];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolveWithResult:(id)a3 error:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 | v7)
  {
    if (v6 && v7)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v12)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v29 = 138543618;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot resolve with both a result and error. Dropping result.", &v29, 0x16u);
      }
    }

    else if (v6)
    {
      v16 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        v29 = 138543874;
        v30 = v18;
        v31 = 2114;
        v32 = v19;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resolving with a result: %@", &v29, 0x20u);
      }

      goto LABEL_24;
    }

    v16 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v16)
    {
      v16 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v29 = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Resolving with an error: %{public}@", &v29, 0x20u);
    }

    v6 = 0;
LABEL_24:

    v22 = [(AMSUIEngagementViewController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    v24 = [(AMSUIEngagementViewController *)self delegate];
    v9 = v24;
    if (v23)
    {
      [v24 engagementViewController:self didFinishWithResult:v6 error:v8];
      goto LABEL_28;
    }

    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v9 = [(AMSUIEngagementViewController *)self delegate];
      [v9 engagementViewController:self didResolveWithResult:v6 error:v8];
      goto LABEL_28;
    }

    v9 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v9 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      v29 = 138543618;
      v30 = v27;
      v31 = 2114;
      v32 = v28;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caller not observing resolutions", &v29, 0x16u);
    }

    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v29 = 138543618;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot resolve without either a result or error", &v29, 0x16u);
LABEL_6:
  }

LABEL_28:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)updateEffectiveRequest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Effective request updated", &v11, 0x16u);
  }

  effectiveRequest = self->_effectiveRequest;
  self->_effectiveRequest = v4;

  [(AMSUIEngagementViewController *)self enqueueDisplayEvent];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setup
{
  [(AMSUIEngagementViewController *)self setModalPresentationStyle:[(AMSUIEngagementViewController *)self _modalPresentationStyle]];
  v3 = [(AMSUIEngagementViewController *)self effectiveRequest];
  v4 = [v3 destinationStyle];

  if (v4 == 1)
  {
    v5 = [AMSEngagementOfflineBag alloc];
    v7 = [(AMSUIEngagementViewController *)self bag];
    v6 = [(AMSEngagementOfflineBag *)v5 initWithUnderlyingBag:v7];
    [(AMSUIEngagementViewController *)self setBag:v6];
  }
}

- (void)_startEngagement
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIEngagementViewController *)self effectiveRequest];
  v4 = [v3 logKey];
  v5 = AMSSetLogKey();

  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = [(AMSUIEngagementViewController *)self effectiveRequest];
    v11 = [v10 URL];
    v12 = AMSLogableURL();
    *buf = 138543874;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting engagement task with URL: %{public}@", buf, 0x20u);
  }

  v13 = [(AMSUIEngagementViewController *)self _preloadChildVC];
  if (([v13 isFinished] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke;
    block[3] = &unk_1E7F242D0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke_2;
  v17[3] = &unk_1E7F24D00;
  objc_copyWeak(&v18, buf);
  [v13 addErrorBlock:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke_6;
  v15[3] = &unk_1E7F24D28;
  objc_copyWeak(&v16, buf);
  [v13 addSuccessBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(AMSUICommonLoadingViewController);
  [v1 _updateChildViewController:v2];
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke_3;
  v5[3] = &unk_1E7F24730;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained effectiveRequest];
  v4 = [v3 logKey];
  v5 = AMSSetLogKey();

  v6 = [AMSUICommonErrorViewController alloc];
  v7 = *(a1 + 32);
  v8 = [WeakRetained effectiveRequest];
  v9 = [v8 logKey];
  v10 = [WeakRetained bag];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke_4;
  v18[3] = &unk_1E7F24968;
  objc_copyWeak(&v19, (a1 + 40));
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __49__AMSUIEngagementViewController__startEngagement__block_invoke_5;
  v16 = &unk_1E7F24968;
  objc_copyWeak(&v17, (a1 + 40));
  v11 = [(AMSUICommonErrorViewController *)v6 initWithError:v7 logKey:v9 bag:v10 retryAction:v18 cancelAction:&v13];

  v12 = [WeakRetained engagementMetrics];
  [(AMSUICommonErrorViewController *)v11 setEngagementMetrics:v12];

  [WeakRetained _updateChildViewController:v11];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained childController];
  [WeakRetained unsetChildViewController:v1];

  [WeakRetained setChildController:0];
  [WeakRetained _startEngagement];
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AMSUIEngagementViewController__startEngagement__block_invoke_7;
  v5[3] = &unk_1E7F24730;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __49__AMSUIEngagementViewController__startEngagement__block_invoke_7(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained effectiveRequest];
  v4 = [v3 logKey];
  v5 = AMSSetLogKey();

  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = *(a1 + 32);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting: %{public}@", &v12, 0x20u);
  }

  [WeakRetained _updateChildViewController:*(a1 + 32)];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateChildViewController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AMSUIEngagementViewController__updateChildViewController___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__AMSUIEngagementViewController__updateChildViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) childController];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 childController];
    [v3 unsetChildViewController:v4];
  }

  [*(a1 + 32) setChildController:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = [v5 childController];
  [v5 setChildViewController:v6];
}

- (AMSUIEngagementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end