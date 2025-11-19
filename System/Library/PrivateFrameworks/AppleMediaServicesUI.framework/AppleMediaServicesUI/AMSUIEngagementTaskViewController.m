@interface AMSUIEngagementTaskViewController
- (AMSUIEngagementTaskViewController)initWithRequest:(id)a3 bag:(id)a4;
- (BOOL)_isURLTrusted:(id)a3 inDomains:(id)a4;
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (id)_isOriginatingURLTrusted;
- (id)_preloadChild;
- (id)_viewControllerForType:(id)a3;
- (id)canPresent;
- (id)startEngagement;
- (int64_t)_modalPresentationStyle;
- (void)_finishWithResultInfo:(id)a3 error:(id)a4;
- (void)_receivedCarrierLinkResult:(id)a3;
- (void)_receivedPurchaseResult:(id)a3;
- (void)_setup;
- (void)_updateChildViewController:(id)a3;
- (void)dealloc;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6;
@end

@implementation AMSUIEngagementTaskViewController

- (AMSUIEngagementTaskViewController)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSUIEngagementTaskViewController;
  v9 = [(AMSUIEngagementTaskViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v10->_request, a3);
    [(AMSUIEngagementTaskViewController *)v10 _setup];
  }

  return v10;
}

- (void)dealloc
{
  if (![(AMSUIEngagementTaskViewController *)self ignoresDismissDetection])
  {
    v3 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

    if (v3)
    {
      v4 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
      v4[2]();

      [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
    }
  }

  v5.receiver = self;
  v5.super_class = AMSUIEngagementTaskViewController;
  [(AMSUIEngagementTaskViewController *)&v5 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUIEngagementTaskViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  [(AMSUIEngagementTaskViewController *)self setTransitioningDelegate:self];
  v3 = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v4 = [(AMSUICommonViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementTaskViewController;
  [(AMSUIEngagementTaskViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIEngagementTaskViewController *)self childController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  if (![(AMSUIEngagementTaskViewController *)self ignoresDismissDetection])
  {
    v4 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

    if (v4)
    {
      v5 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
      v5[2]();

      [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
    }
  }
}

- (id)canPresent
{
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v4 = [(AMSUIEngagementTaskViewController *)self _preloadChild];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSUIEngagementTaskViewController_canPresent__block_invoke;
  v7[3] = &unk_1E7F24C10;
  v5 = v3;
  v8 = v5;
  [v4 addFinishBlock:v7];

  return v5;
}

uint64_t __47__AMSUIEngagementTaskViewController_canPresent__block_invoke(uint64_t a1, uint64_t a2)
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

- (id)startEngagement
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIEngagementTaskViewController *)self request];
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
    v10 = [(AMSUIEngagementTaskViewController *)self request];
    v11 = [v10 URL];
    v12 = AMSLogableURL();
    *buf = 138543874;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting engagement task with URL: %{public}@", buf, 0x20u);
  }

  v13 = [(AMSUIEngagementTaskViewController *)self childPromise];
  v14 = v13 == 0;

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke;
    block[3] = &unk_1E7F242D0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v15 = [(AMSUIEngagementTaskViewController *)self _preloadChild];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2;
  v23[3] = &unk_1E7F24C38;
  v23[4] = self;
  v16 = [v15 continueWithBlock:v23];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_35;
  v22[3] = &unk_1E7F24BA0;
  v22[4] = self;
  v17 = [v16 catchWithBlock:v22];

  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2_39;
  v20[3] = &unk_1E7F24C60;
  objc_copyWeak(&v21, buf);
  [v17 addFinishBlock:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(AMSUICommonLoadingViewController);
  [v1 _updateChildViewController:v2];
}

id __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) request];
  v8 = [v7 logKey];
  v9 = AMSSetLogKey();

  v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  [*(a1 + 32) setPresented:1];
  objc_initWeak(&location, *(a1 + 32));
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_3;
  v30[3] = &unk_1E7F24730;
  objc_copyWeak(&v32, &location);
  v11 = v10;
  v31 = v11;
  [*(a1 + 32) setDismissBlock:v30];
  if (v6)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_30;
    v26 = &unk_1E7F24590;
    v27 = *(a1 + 32);
    v12 = v6;
    v28 = v12;
    v13 = v11;
    v29 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], &v23);
    [*(a1 + 32) setError:{v12, v23, v24, v25, v26, v27}];
    v14 = v13;
  }

  else
  {
    v15 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543874;
      v35 = v18;
      v36 = 2114;
      v37 = v19;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting: %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) _updateChildViewController:v5];
    v20 = v11;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained request];
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
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismiss called on presented view controller", &v20, 0x16u);
  }

  v10 = [WeakRetained error];

  if (!v10)
  {
    v14 = [WeakRetained result];

    if (v14)
    {
      v15 = *(a1 + 32);
      v13 = [WeakRetained result];
      v16 = v15;
LABEL_10:
      [v16 finishWithResult:v13];
      goto LABEL_11;
    }

    v18 = [WeakRetained request];
    if ([v18 failOnDismiss])
    {
    }

    else
    {
      v19 = [WeakRetained ignoresDismissDetection];

      if ((v19 & 1) == 0)
      {
        v13 = objc_alloc_init(MEMORY[0x1E698C910]);
        v16 = *(a1 + 32);
        goto LABEL_10;
      }
    }

    v11 = *(a1 + 32);
    v12 = AMSError();
    goto LABEL_7;
  }

  v11 = *(a1 + 32);
  v12 = [WeakRetained error];
LABEL_7:
  v13 = v12;
  [v11 finishWithError:v12];
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_30(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [AMSUICommonErrorViewController alloc];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) request];
  v6 = [v5 logKey];
  v7 = [*(a1 + 32) bag];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2_32;
  v10[3] = &unk_1E7F24730;
  objc_copyWeak(&v12, &location);
  v11 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_3_33;
  v9[3] = &unk_1E7F242D0;
  v9[4] = *(a1 + 32);
  v8 = [(AMSUICommonErrorViewController *)v3 initWithError:v4 logKey:v6 bag:v7 retryAction:v10 cancelAction:v9];
  [v2 _updateChildViewController:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained childController];
  [WeakRetained unsetChildViewController:v2];

  [WeakRetained setChildController:0];
  [WeakRetained setError:0];
  v3 = *(a1 + 32);
  v4 = [WeakRetained startEngagement];
  [v3 finishWithPromise:v4];
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_3_33(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dismissBlock];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setDismissBlock:0];
  }
}

id __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "presented")}];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E698C550]];

  v10 = [v3 domain];
  [v3 code];
  v11 = [v3 ams_title];
  v12 = [v3 ams_message];
  v13 = [v3 ams_underlyingError];

  v14 = AMSCustomError();

  [*(a1 + 32) setError:v14];
  v15 = [MEMORY[0x1E698CAD0] promiseWithError:v14];

  return v15;
}

void __52__AMSUIEngagementTaskViewController_startEngagement__block_invoke_2_39(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained request];
  v9 = [v8 logKey];
  v10 = AMSSetLogKey();

  v11 = [MEMORY[0x1E698C968] sharedConfig];
  v12 = v11;
  if (v6)
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSLogableError();
      v22 = 138543874;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v17 = "%{public}@: [%{public}@] Task completed with error: %{public}@";
      v18 = v13;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1BB036000, v18, v19, v17, &v22, 0x20u);
    }
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = [v5 userInfo];
      v22 = 138543874;
      v23 = v20;
      v24 = 2114;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v17 = "%{public}@: [%{public}@] Task completed successfully. %@";
      v18 = v13;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_setup
{
  [(AMSUIEngagementTaskViewController *)self setModalPresentationStyle:[(AMSUIEngagementTaskViewController *)self _modalPresentationStyle]];
  v3 = [(AMSUIEngagementTaskViewController *)self request];
  v4 = [v3 destinationStyle];

  if (v4 == 1)
  {
    v5 = [AMSEngagementOfflineBag alloc];
    v7 = [(AMSUIEngagementTaskViewController *)self bag];
    v6 = [(AMSEngagementOfflineBag *)v5 initWithUnderlyingBag:v7];
    [(AMSUIEngagementTaskViewController *)self setBag:v6];
  }
}

- (void)_finishWithResultInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSUIEngagementTaskViewController *)self error];

  if (!v8)
  {
    if (v7)
    {
      [(AMSUIEngagementTaskViewController *)self setError:v7];
      [(AMSUIEngagementTaskViewController *)self setResult:0];
    }

    else
    {
      v9 = [(AMSUIEngagementTaskViewController *)self result];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x1E698C910]);
      }

      v12 = v11;

      v13 = [(AMSUIEngagementTaskViewController *)self result];
      v14 = [v13 userInfo];
      v15 = [v14 mutableCopy];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v18 = v17;

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__AMSUIEngagementTaskViewController__finishWithResultInfo_error___block_invoke;
      v20[3] = &unk_1E7F24C88;
      v21 = v18;
      v19 = v18;
      [v6 enumerateKeysAndObjectsUsingBlock:v20];
      [v12 setUserInfo:v19];
      [(AMSUIEngagementTaskViewController *)self setResult:v12];
    }
  }
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
    v7 = [(AMSUIEngagementTaskViewController *)self request];
    v8 = [v7 originatingURL];
    v9 = [(AMSUIEngagementTaskViewController *)self request];
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

  v11 = [(AMSUIEngagementTaskViewController *)self request];
  v12 = [v11 originatingURL];
  if (v12)
  {
    v13 = v12;
    v14 = [(AMSUIEngagementTaskViewController *)self request];
    v15 = [v14 destinationStyle];

    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      v17 = +[AMSUIEngagementTask createBagForSubProfile];
      v18 = [v17 arrayForKey:@"trustedEngagementReferrers"];
      v19 = [v18 valuePromise];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __61__AMSUIEngagementTaskViewController__isOriginatingURLTrusted__block_invoke;
      v28[3] = &unk_1E7F24410;
      v20 = v16;
      v29 = v20;
      [v19 addErrorBlock:v28];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __61__AMSUIEngagementTaskViewController__isOriginatingURLTrusted__block_invoke_2;
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

void __61__AMSUIEngagementTaskViewController__isOriginatingURLTrusted__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AMSError();
  [v1 finishWithError:v2];
}

void __61__AMSUIEngagementTaskViewController__isOriginatingURLTrusted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 request];
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
  v2 = [(AMSUIEngagementTaskViewController *)self request];
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

- (id)_preloadChild
{
  v3 = [(AMSUIEngagementTaskViewController *)self childPromise];

  if (!v3)
  {
    v4 = [(AMSUIEngagementTaskViewController *)self _isOriginatingURLTrusted];
    v5 = [v4 promiseAdapter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__AMSUIEngagementTaskViewController__preloadChild__block_invoke;
    v9[3] = &unk_1E7F24CD8;
    v9[4] = self;
    v6 = [v5 thenWithBlock:v9];
    [(AMSUIEngagementTaskViewController *)self setChildPromise:v6];
  }

  v7 = [(AMSUIEngagementTaskViewController *)self childPromise];

  return v7;
}

id __50__AMSUIEngagementTaskViewController__preloadChild__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v3 = [*(a1 + 32) request];
  v4 = [v3 destinationStyle];

  if (v4 == 1)
  {
    v5 = &unk_1F394A528;
LABEL_5:
    [v2 finishWithResult:v5];
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) request];
  v7 = [v6 destinationStyle];

  if (v7 == 2)
  {
    v5 = &unk_1F394A540;
    goto LABEL_5;
  }

  v8 = objc_alloc(MEMORY[0x1E698CB70]);
  v9 = [*(a1 + 32) bag];
  v10 = [v8 initWithBag:v9];

  v11 = [*(a1 + 32) request];
  v12 = [v11 URL];
  v13 = [v10 typeForURL:v12];

  v2 = v13;
LABEL_7:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__AMSUIEngagementTaskViewController__preloadChild__block_invoke_60;
  v16[3] = &unk_1E7F24CD8;
  v16[4] = *(a1 + 32);
  v14 = [v2 thenWithBlock:v16];

  return v14;
}

id __50__AMSUIEngagementTaskViewController__preloadChild__block_invoke_60(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) request];
  v5 = [v4 logKey];
  v6 = AMSSetLogKey();

  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2048;
    v20 = [v3 longValue];
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determined URL type: %ld", &v15, 0x20u);
  }

  v12 = [*(a1 + 32) _viewControllerForType:v3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_receivedCarrierLinkResult:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIEngagementTaskViewController *)self result];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E698C910]);
  }

  v8 = v7;

  [v8 setCarrierLinkResult:v4];
  [(AMSUIEngagementTaskViewController *)self setResult:v8];
  v11 = @"didCarrierLink";
  v12[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(AMSUIEngagementTaskViewController *)self _finishWithResultInfo:v9 error:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_receivedPurchaseResult:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIEngagementTaskViewController *)self result];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E698C910]);
  }

  v8 = v7;

  [v8 setPurchaseResult:v4];
  [(AMSUIEngagementTaskViewController *)self setResult:v8];
  v11 = @"didPurchase";
  v12[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(AMSUIEngagementTaskViewController *)self _finishWithResultInfo:v9 error:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateChildViewController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AMSUIEngagementTaskViewController__updateChildViewController___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __64__AMSUIEngagementTaskViewController__updateChildViewController___block_invoke(uint64_t a1)
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

- (id)_viewControllerForType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AMSUIEngagementTaskViewController__viewControllerForType___block_invoke;
  block[3] = &unk_1E7F24590;
  block[4] = self;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = v13;
  v9 = v6;

  return v6;
}

void __60__AMSUIEngagementTaskViewController__viewControllerForType___block_invoke(id *a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] request];
  v3 = [v2 clientData];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v32 = @"engagementTask";
  v33[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v8 = [v6 ams_dictionaryByAddingEntriesFromDictionary:v7];

  v9 = [a1[5] integerValue];
  switch(v9)
  {
    case 0:
      v23 = [AMSUIWebViewController alloc];
      v24 = [a1[4] bag];
      v14 = [(AMSUIWebViewController *)v23 initWithBag:v24 account:0 clientInfo:0];

      v25 = [a1[4] request];
      v26 = [v25 account];
      [(AMSUIWebViewController *)v14 setAccount:v26];

      v27 = [a1[4] clientInfo];
      [(AMSUIWebViewController *)v14 setClientInfo:v27];

      [(AMSUIWebViewController *)v14 setClientOptions:v8];
      [(AMSUIWebViewController *)v14 setDelegate:a1[4]];
      v28 = [a1[4] request];
      v29 = [v28 metricsOverlay];
      [(AMSUIWebViewController *)v14 setMetricsOverlay:v29];

      v20 = [a1[4] request];
      v21 = [v20 URL];
      v30 = [(AMSUIWebViewController *)v14 loadURL:v21];
      goto LABEL_9;
    case 1:
      v22 = a1[6];
      v14 = AMSError();
      [v22 finishWithError:v14];
LABEL_10:

      break;
    case 2:
      v10 = [AMSUIDynamicViewController alloc];
      v11 = [a1[4] bag];
      v12 = [a1[4] request];
      v13 = [v12 URL];
      v14 = [(AMSUIDynamicViewController *)v10 initWithBag:v11 URL:v13];

      v15 = [a1[4] request];
      v16 = [v15 account];
      [(AMSUIWebViewController *)v14 setAccount:v16];

      v17 = [a1[4] clientInfo];
      [(AMSUIWebViewController *)v14 setClientInfo:v17];

      [(AMSUIWebViewController *)v14 setClientOptions:v8];
      [(AMSUIWebViewController *)v14 setDelegate:a1[4]];
      v18 = [a1[4] request];
      v19 = [v18 mediaClientIdentifier];
      [(AMSUIWebViewController *)v14 setMediaClientIdentifier:v19];

      v20 = [a1[4] request];
      v21 = [v20 metricsOverlay];
      [(AMSUIWebViewController *)v14 setMetricsOverlay:v21];
LABEL_9:

      [a1[6] finishWithResult:v14];
      goto LABEL_10;
  }

  v31 = *MEMORY[0x1E69E9840];
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

    [(AMSUIEngagementTaskViewController *)self _receivedCarrierLinkResult:v7];
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

    [(AMSUIEngagementTaskViewController *)self _receivedPurchaseResult:v7];
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

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E698C968] sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI purchase succeeded", &v18, 0x16u);
    }

    [(AMSUIEngagementTaskViewController *)self _receivedPurchaseResult:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI flow resolved and was dismissed", &v18, 0x16u);
    }

    v15 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

    if (v15)
    {
      v16 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
      v16[2]();

      [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698C968];
  v8 = a5;
  v9 = a4;
  v10 = [v7 sharedConfig];
  if (!v10)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v17 = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI did resolve", &v17, 0x16u);
  }

  [(AMSUIEngagementTaskViewController *)self _finishWithResultInfo:v9 error:v8];
  v14 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

  if (v14)
  {
    v15 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
    v15[2]();

    [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dynamic UI will dismiss", &v12, 0x16u);
  }

  v8 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

  if (v8)
  {
    v9 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
    v9[2]();

    [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
  }

  result = [(AMSUIEngagementTaskViewController *)self ignoresDismissDetection];
  v11 = *MEMORY[0x1E69E9840];
  return result;
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

    [(AMSUIEngagementTaskViewController *)self _receivedPurchaseResult:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = MEMORY[0x1E698C968];
  v11 = a5;
  v12 = a4;
  v13 = [v10 sharedConfig];
  if (!v13)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    v20 = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Web UI did resolve", &v20, 0x16u);
  }

  [(AMSUIEngagementTaskViewController *)self _finishWithResultInfo:v12 error:v11];
  if ([(AMSUIEngagementTaskViewController *)self ignoresDismissDetection])
  {
    v17 = [(AMSUIEngagementTaskViewController *)self dismissBlock];

    if (v17)
    {
      v18 = [(AMSUIEngagementTaskViewController *)self dismissBlock];
      v18[2]();

      [(AMSUIEngagementTaskViewController *)self setDismissBlock:0];
    }
  }

  (*(v9 + 2))(v9, MEMORY[0x1E695E118], 0);

  v19 = *MEMORY[0x1E69E9840];
}

@end