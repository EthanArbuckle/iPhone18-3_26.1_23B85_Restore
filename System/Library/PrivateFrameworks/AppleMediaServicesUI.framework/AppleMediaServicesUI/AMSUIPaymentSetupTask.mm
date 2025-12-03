@interface AMSUIPaymentSetupTask
- (AMSUIPaymentSetupTask)initWithReferrerIdentifier:(id)identifier presentingViewController:(id)controller;
- (id)_fetchPaymentSetupFeature;
- (id)present;
- (void)_presentPaymentSetupControllerWithPaymentSetupFeatures:(id)features;
- (void)paymentSetupViewControllerDidDismiss;
@end

@implementation AMSUIPaymentSetupTask

- (AMSUIPaymentSetupTask)initWithReferrerIdentifier:(id)identifier presentingViewController:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = AMSUIPaymentSetupTask;
  v9 = [(AMSTask *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.AppleMediaServicesUI.AMSUIPaymentSetupTask.dispatch", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    resultPromise = v9->_resultPromise;
    v9->_resultPromise = v12;

    v14 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    setupControllerPromise = v9->_setupControllerPromise;
    v9->_setupControllerPromise = v14;

    objc_storeStrong(&v9->_referrerIdentifier, identifier);
    objc_storeStrong(&v9->_viewController, controller);
  }

  return v9;
}

- (id)present
{
  _fetchPaymentSetupFeature = [(AMSUIPaymentSetupTask *)self _fetchPaymentSetupFeature];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__AMSUIPaymentSetupTask_present__block_invoke;
  v10[3] = &unk_1E7F255C8;
  v10[4] = self;
  [_fetchPaymentSetupFeature addFinishBlock:v10];
  objc_initWeak(&location, self);
  setupControllerPromise = [(AMSUIPaymentSetupTask *)self setupControllerPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__AMSUIPaymentSetupTask_present__block_invoke_10;
  v7[3] = &unk_1E7F255F0;
  objc_copyWeak(&v8, &location);
  [setupControllerPromise addFinishBlock:v7];

  resultPromise = [(AMSUIPaymentSetupTask *)self resultPromise];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return resultPromise;
}

void __32__AMSUIPaymentSetupTask_present__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) resultPromise];
    [v7 finishWithError:v6];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = [v8 dispatchQueue];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __32__AMSUIPaymentSetupTask_present__block_invoke_2;
      v18 = &unk_1E7F243C0;
      v19 = *(a1 + 32);
      v10 = v5;
      v20 = v10;
      dispatch_sync(v9, &v15);

      v11 = *(a1 + 32);
      v21[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{1, v15, v16, v17, v18, v19}];
      [v11 _presentPaymentSetupControllerWithPaymentSetupFeatures:v12];

      goto LABEL_6;
    }

    v7 = [v8 resultPromise];
    v14 = AMSError();
    [v7 finishWithError:v14];
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __32__AMSUIPaymentSetupTask_present__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "state")}];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initial payment setup feature state: %{public}@", &v11, 0x20u);
  }

  result = [*(a1 + 32) setPaymentSetupFeatureState:{objc_msgSend(*(a1 + 40), "state")}];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __32__AMSUIPaymentSetupTask_present__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _fetchPaymentSetupFeature];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__AMSUIPaymentSetupTask_present__block_invoke_2_11;
  v3[3] = &unk_1E7F255C8;
  v3[4] = WeakRetained;
  [v2 addFinishBlock:v3];
}

void __32__AMSUIPaymentSetupTask_present__block_invoke_2_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 dispatchQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __32__AMSUIPaymentSetupTask_present__block_invoke_3;
    v14 = &unk_1E7F243C0;
    v15 = *(a1 + 32);
    v16 = v5;
    dispatch_sync(v8, &v11);

    v9 = [*(a1 + 32) resultPromise];
    [v9 finishWithSuccess:objc_msgSend(*(a1 + 32) error:{"_didSucceed"), 0}];
  }

  else
  {
    v10 = [v7 resultPromise];
    [v10 finishWithError:v6];
  }
}

uint64_t __32__AMSUIPaymentSetupTask_present__block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "state")}];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Final payment setup feature state: %{public}@", &v11, 0x20u);
  }

  result = [*(a1 + 32) setPaymentSetupFeatureState:{objc_msgSend(*(a1 + 40), "state")}];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_fetchPaymentSetupFeature
{
  v3 = objc_alloc(MEMORY[0x1E698CAB8]);
  referrerIdentifier = [(AMSUIPaymentSetupTask *)self referrerIdentifier];
  v5 = [v3 initWithIdentifier:referrerIdentifier];

  performPaymentSetupFeatureLookup = [v5 performPaymentSetupFeatureLookup];

  return performPaymentSetupFeatureLookup;
}

- (void)_presentPaymentSetupControllerWithPaymentSetupFeatures:(id)features
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = getPKPaymentSetupConfigurationClass[0];
  featuresCopy = features;
  v6 = objc_alloc_init(v4());
  referrerIdentifier = [(AMSUIPaymentSetupTask *)self referrerIdentifier];
  [v6 setReferrerIdentifier:referrerIdentifier];

  v8 = objc_alloc_init(getPKPaymentSetupRequestClass[0]());
  [v8 setConfiguration:v6];
  [v8 setPaymentSetupFeatures:featuresCopy];

  if (v8)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Preparing to display upsell view controller", buf, 0x16u);
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __80__AMSUIPaymentSetupTask__presentPaymentSetupControllerWithPaymentSetupFeatures___block_invoke;
    v20 = &unk_1E7F243C0;
    v21 = v8;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], &v17);
    v13 = [(AMSUIPaymentSetupTask *)self setupControllerPromise:v17];
    [v13 addFinishBlock:&__block_literal_global_13];
  }

  else
  {
    resultPromise = [(AMSUIPaymentSetupTask *)self resultPromise];
    v15 = AMSError();
    [resultPromise finishWithError:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __80__AMSUIPaymentSetupTask__presentPaymentSetupControllerWithPaymentSetupFeatures___block_invoke(uint64_t a1)
{
  v2 = [[AMSUIPaymentSetupViewController alloc] initWithPaymentSetupRequest:*(a1 + 32)];
  [(AMSUIPaymentSetupViewController *)v2 setDelegate:*(a1 + 40)];
  v3 = [*(a1 + 40) viewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AMSUIPaymentSetupTask__presentPaymentSetupControllerWithPaymentSetupFeatures___block_invoke_2;
  v4[3] = &unk_1E7F242D0;
  v4[4] = *(a1 + 40);
  [v3 presentViewController:v2 animated:1 completion:v4];
}

void __80__AMSUIPaymentSetupTask__presentPaymentSetupControllerWithPaymentSetupFeatures___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
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
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]: Did present upsell view controller", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __80__AMSUIPaymentSetupTask__presentPaymentSetupControllerWithPaymentSetupFeatures___block_invoke_18()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v0)
  {
    v0 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = AMSLogKey();
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1BB036000, v1, OS_LOG_TYPE_DEFAULT, "AMSUIPaymentSetupTask: [%{public}@] Finishing upsell view controller operation", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)paymentSetupViewControllerDidDismiss
{
  setupControllerPromise = [(AMSUIPaymentSetupTask *)self setupControllerPromise];
  [setupControllerPromise finishWithSuccess:-[AMSUIPaymentSetupTask _didSucceed](self error:{"_didSucceed"), 0}];
}

@end