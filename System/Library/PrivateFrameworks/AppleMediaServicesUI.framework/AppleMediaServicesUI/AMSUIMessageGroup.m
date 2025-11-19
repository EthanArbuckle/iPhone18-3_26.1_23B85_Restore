@interface AMSUIMessageGroup
- (AMSUIMessageGroup)init;
- (AMSUIMessageGroup)initWithBag:(id)a3;
- (AMSUIMessageGroupDelegate)delegate;
- (id)_dictionaryForParamObject:(id)a3 error:(id *)a4;
- (id)_viewControllerForServiceType:(id)a3 placement:(id)a4 clientIdentifier:(id)a5 clientVersion:(id)a6 params:(id)a7 account:(id)a8 sidepack:(id)a9 metrics:(id)a10;
- (id)_viewControllerForURL:(id)a3 account:(id)a4 sidepack:(id)a5 metrics:(id)a6;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)viewControllerForModalMessagePresentation:(id)a3 completion:(id)a4;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
@end

@implementation AMSUIMessageGroup

- (AMSUIMessageGroup)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AMSUIMessageGroup;
  v2 = [(IAMMessageGroup *)&v13 initWithGroupIdentifier:@"com.apple.ams"];
  if (v2)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Incorrect initializer used. This will fetch a bag", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppStore" profileVersion:@"1"];
    bag = v2->_bag;
    v2->_bag = v6;

    clientData = v2->_clientData;
    v9 = MEMORY[0x1E695E0F8];
    v2->_clientData = MEMORY[0x1E695E0F8];

    clientMetricsOverlay = v2->_clientMetricsOverlay;
    v2->_clientMetricsOverlay = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (AMSUIMessageGroup)initWithBag:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIMessageGroup;
  v6 = [(IAMMessageGroup *)&v12 initWithGroupIdentifier:@"com.apple.ams"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    clientData = v7->_clientData;
    v9 = MEMORY[0x1E695E0F8];
    v7->_clientData = MEMORY[0x1E695E0F8];

    clientMetricsOverlay = v7->_clientMetricsOverlay;
    v7->_clientMetricsOverlay = v9;
  }

  return v7;
}

- (void)viewControllerForModalMessagePresentation:(id)a3 completion:(id)a4
{
  v90 = *MEMORY[0x1E69E9840];
  v69 = a4;
  v5 = [a3 contentPages];
  v6 = [v5 firstObject];
  v7 = [v6 contentParameters];

  v8 = [v7 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  v75 = v10;
  v11 = [v7 objectForKeyedSubscript:@"clientIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(AMSUIMessageGroup *)self clientIdentifier];
  }

  v71 = v13;

  v14 = [v7 objectForKeyedSubscript:@"clientVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [(AMSUIMessageGroup *)self clientVersion];
  }

  v17 = v16;

  v18 = [v7 objectForKeyedSubscript:@"placement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = v18;
  }

  else
  {
    v76 = 0;
  }

  v19 = [v7 objectForKeyedSubscript:@"serviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v70 = v20;

  v21 = [v7 objectForKeyedSubscript:@"params"];
  v83 = 0;
  v22 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v21 error:&v83];
  v23 = v83;

  v74 = v23;
  if (v23)
  {
    v24 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      [v7 objectForKeyedSubscript:@"params"];
      v28 = v27 = v22;
      *buf = 138543874;
      v85 = v26;
      v86 = 2114;
      v87 = v74;
      v88 = 2112;
      v89 = v28;
      _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing MI params data. %{public}@ %@", buf, 0x20u);

      v22 = v27;
    }
  }

  v67 = v9;
  v68 = v22;
  v29 = [v7 objectForKeyedSubscript:@"sidepack"];
  v82 = 0;
  v30 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v29 error:&v82];
  v31 = v82;

  v73 = v31;
  if (v31)
  {
    v32 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v32)
    {
      v32 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      [v7 objectForKeyedSubscript:@"sidepack"];
      v35 = v30;
      v37 = v36 = v17;
      *buf = 138543874;
      v85 = v34;
      v86 = 2114;
      v87 = v73;
      v88 = 2112;
      v89 = v37;
      _os_log_impl(&dword_1BB036000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing sidepack data. %{public}@ %@", buf, 0x20u);

      v17 = v36;
      v30 = v35;
    }
  }

  v38 = [v7 objectForKeyedSubscript:@"metrics"];
  v81 = 0;
  v39 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v38 error:&v81];
  v40 = v81;

  v72 = v40;
  if (v40)
  {
    v41 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v41)
    {
      v41 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v42 = [v41 OSLogObject];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = v39;
      v44 = v30;
      v45 = v17;
      v46 = objc_opt_class();
      v47 = [v7 objectForKeyedSubscript:@"metrics"];
      *buf = 138543874;
      v85 = v46;
      v17 = v45;
      v30 = v44;
      v39 = v43;
      v86 = 2114;
      v87 = v72;
      v88 = 2112;
      v89 = v47;
      _os_log_impl(&dword_1BB036000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing metrics overlay. %{public}@ %@", buf, 0x20u);
    }
  }

  v48 = [(AMSUIMessageGroup *)self clientMetricsOverlay];

  if (v48)
  {
    if (v39)
    {
      v49 = v39;
    }

    else
    {
      v49 = MEMORY[0x1E695E0F8];
    }

    v50 = [(AMSUIMessageGroup *)self clientMetricsOverlay];
    v51 = [v49 ams_dictionaryByAddingEntriesFromDictionary:v50];

    v39 = v51;
  }

  v52 = [v7 objectForKeyedSubscript:@"account"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v54 = v70;

  if ([v53 isEqualToString:@"activeiTunes"])
  {
    v55 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v56 = [v55 ams_activeiTunesAccount];
  }

  else
  {
    v56 = 0;
  }

  v57 = v71;
  v66 = v17;
  if (v70 && v76 && v71 && v17)
  {
    v58 = v68;
    v59 = [(AMSUIMessageGroup *)self _viewControllerForServiceType:v70 placement:v76 clientIdentifier:v71 clientVersion:v17 params:v68 account:v56 sidepack:v30 metrics:v39, v17];
  }

  else
  {
    if (v75)
    {
      v59 = [(AMSUIMessageGroup *)self _viewControllerForURL:v75 account:v56 sidepack:v30 metrics:v39];
    }

    else
    {
      v60 = MEMORY[0x1E698CAD0];
      v61 = AMSError();
      v62 = v60;
      v57 = v71;
      v59 = [v62 promiseWithError:v61];

      v54 = v70;
    }

    v58 = v68;
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __74__AMSUIMessageGroup_viewControllerForModalMessagePresentation_completion___block_invoke;
  v78[3] = &unk_1E7F25078;
  v78[4] = self;
  v79 = v7;
  v80 = v69;
  v63 = v69;
  v64 = v7;
  [v59 addFinishBlock:v78];

  v65 = *MEMORY[0x1E69E9840];
}

void __74__AMSUIMessageGroup_viewControllerForModalMessagePresentation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AMSUIMessageGroup_viewControllerForModalMessagePresentation_completion___block_invoke_2;
  block[3] = &unk_1E7F25050;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__AMSUIMessageGroup_viewControllerForModalMessagePresentation_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = [MEMORY[0x1E698C968] sharedConfigOversize];
    if (!v2)
    {
      v2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v5 = objc_opt_class();
      v6 = *(a1 + 32);
      v7 = *(a1 + 56);
      v18 = 138543874;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load view controller. %{public}@ \nparams: %@", &v18, 0x20u);
    }

    v8 = *(*(a1 + 64) + 16);
  }

  else
  {
    v9 = [MEMORY[0x1E698C8A8] deviceIsiPad];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = -2;
    }

    [*(a1 + 40) setModalPresentationStyle:v11];
    v12 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v18 = 138543362;
      v19 = objc_opt_class();
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully loaded view controller", &v18, 0xCu);
    }

    v15 = *(a1 + 40);
    v8 = *(*(a1 + 64) + 16);
  }

  result = v8();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIMessageGroup *)self delegate];
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
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending web purchase completion", &v20, 0x16u);
    }

    v12 = [(AMSUIMessageGroup *)self delegate];
    [v12 messageGroup:self didFinishPurchaseWithResult:v7 error:v8];
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping web purchase completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIMessageGroup *)self delegate];
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
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending dynamic purchase completion", &v20, 0x16u);
    }

    v12 = [(AMSUIMessageGroup *)self delegate];
    [v12 messageGroup:self didFinishPurchaseWithResult:v7 error:v8];
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dynamic purchase completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(AMSUIMessageGroup *)self delegate];
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
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending dynamic carrier linking completion", &v20, 0x16u);
    }

    v12 = [(AMSUIMessageGroup *)self delegate];
    [v12 messageGroup:self didFinishCarrierLinkingWithResult:v7 error:v8];
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dynamic carrier linking completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryForParamObject:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 dataUsingEncoding:4];
      if (v8)
      {
        v12 = 0;
        v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v12];
        v7 = v12;
        objc_opt_class();
        v6 = 0;
        if (objc_opt_isKindOfClass())
        {
          v6 = v9;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (!(v6 | v7))
    {
      v7 = AMSError();
      v6 = 0;
    }
  }

  if (a4)
  {
    v10 = v7;
    *a4 = v7;
  }

  return v6;
}

- (id)_viewControllerForServiceType:(id)a3 placement:(id)a4 clientIdentifier:(id)a5 clientVersion:(id)a6 params:(id)a7 account:(id)a8 sidepack:(id)a9 metrics:(id)a10
{
  v16 = a8;
  v33 = a9;
  v32 = a10;
  v17 = MEMORY[0x1E698C9A0];
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v17 alloc];
  v24 = [(AMSUIMessageGroup *)self bag];
  v25 = [v23 initWithBag:v24 clientIdentifier:v20 clientVersion:v19 placement:v21 serviceType:v22];

  [v25 setAccount:v16];
  [v25 setContextInfo:v18];

  v26 = [v25 perform];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__AMSUIMessageGroup__viewControllerForServiceType_placement_clientIdentifier_clientVersion_params_account_sidepack_metrics___block_invoke;
  v34[3] = &unk_1E7F250C8;
  v34[4] = self;
  v35 = v16;
  v36 = v33;
  v37 = v32;
  v27 = v32;
  v28 = v33;
  v29 = v16;
  v30 = [v26 thenWithBlock:v34];

  return v30;
}

id __124__AMSUIMessageGroup__viewControllerForServiceType_placement_clientIdentifier_clientVersion_params_account_sidepack_metrics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__AMSUIMessageGroup__viewControllerForServiceType_placement_clientIdentifier_clientVersion_params_account_sidepack_metrics___block_invoke_2;
  block[3] = &unk_1E7F250A0;
  v16 = v3;
  v14 = *(a1 + 32);
  v5 = *(&v14 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v17 = v14;
  v18 = v8;
  v9 = v4;
  v19 = v9;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v11 = v19;
  v12 = v9;

  return v9;
}

void __124__AMSUIMessageGroup__viewControllerForServiceType_placement_clientIdentifier_clientVersion_params_account_sidepack_metrics___block_invoke_2(uint64_t a1)
{
  v2 = [AMSUIMarketingItemViewController alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) bag];
  v5 = [(AMSUIMarketingItemViewController *)v2 initWithMarketingItem:v3 bag:v4];

  [(AMSUIDynamicViewController *)v5 setAccount:*(a1 + 48)];
  [(AMSUIDynamicViewController *)v5 setClientOptions:*(a1 + 56)];
  [(AMSUIDynamicViewController *)v5 setMetricsOverlay:*(a1 + 64)];
  [(AMSUIDynamicViewController *)v5 setDelegate:*(a1 + 40)];
  [*(a1 + 72) finishWithResult:v5];
}

- (id)_viewControllerForURL:(id)a3 account:(id)a4 sidepack:(id)a5 metrics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x1E698CB70]);
  v15 = [(AMSUIMessageGroup *)self bag];
  v16 = [v14 initWithBag:v15];

  v17 = [v16 typeForURL:v10];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__AMSUIMessageGroup__viewControllerForURL_account_sidepack_metrics___block_invoke;
  v24[3] = &unk_1E7F25118;
  v24[4] = self;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v10;
  v18 = v10;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = [v17 thenWithBlock:v24];

  return v22;
}

id __68__AMSUIMessageGroup__viewControllerForURL_account_sidepack_metrics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AMSUIMessageGroup__viewControllerForURL_account_sidepack_metrics___block_invoke_2;
  block[3] = &unk_1E7F250F0;
  v16 = v3;
  v14 = *(a1 + 32);
  v5 = *(&v14 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v17 = v14;
  v18 = v8;
  v19 = *(a1 + 64);
  v9 = v4;
  v20 = v9;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v11 = v20;
  v12 = v9;

  return v9;
}

void __68__AMSUIMessageGroup__viewControllerForURL_account_sidepack_metrics___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) integerValue];
  if (v2 == 2)
  {
    v7 = [AMSUIDynamicViewController alloc];
    v8 = [*(a1 + 40) bag];
    v5 = [(AMSUIDynamicViewController *)v7 initWithBag:v8 URL:*(a1 + 72)];

    [(AMSUIDynamicViewController *)v5 setAccount:*(a1 + 48)];
    [(AMSUIDynamicViewController *)v5 setClientOptions:*(a1 + 56)];
    [(AMSUIDynamicViewController *)v5 setDelegate:*(a1 + 40)];
    [(AMSUIDynamicViewController *)v5 setMetricsOverlay:*(a1 + 64)];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v2)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v9)
      {
        v9 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = objc_opt_class();
        v13 = *(a1 + 32);
        v17 = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        v14 = v12;
        _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Unsupported URL type: %@", &v17, 0x16u);
      }

      goto LABEL_12;
    }

    v3 = [AMSUIWebViewController alloc];
    v4 = [*(a1 + 40) bag];
    v5 = [(AMSUIWebViewController *)v3 initWithBag:v4 account:*(a1 + 48) clientInfo:0];

    [(AMSUIDynamicViewController *)v5 setClientOptions:*(a1 + 56)];
    [(AMSUIDynamicViewController *)v5 setMetricsOverlay:*(a1 + 64)];
    [(AMSUIDynamicViewController *)v5 setDelegate:*(a1 + 40)];
    v6 = [(AMSUIDynamicViewController *)v5 loadURL:*(a1 + 72)];
    if (!v5)
    {
LABEL_12:
      v15 = *(a1 + 80);
      v5 = AMSError();
      [v15 finishWithError:v5];
      goto LABEL_13;
    }
  }

  [*(a1 + 80) finishWithResult:v5];
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

- (AMSUIMessageGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end