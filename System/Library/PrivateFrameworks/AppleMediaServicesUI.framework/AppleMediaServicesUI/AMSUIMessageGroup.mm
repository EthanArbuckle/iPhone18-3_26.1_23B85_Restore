@interface AMSUIMessageGroup
- (AMSUIMessageGroup)init;
- (AMSUIMessageGroup)initWithBag:(id)bag;
- (AMSUIMessageGroupDelegate)delegate;
- (id)_dictionaryForParamObject:(id)object error:(id *)error;
- (id)_viewControllerForServiceType:(id)type placement:(id)placement clientIdentifier:(id)identifier clientVersion:(id)version params:(id)params account:(id)account sidepack:(id)sidepack metrics:(id)self0;
- (id)_viewControllerForURL:(id)l account:(id)account sidepack:(id)sidepack metrics:(id)metrics;
- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)viewControllerForModalMessagePresentation:(id)presentation completion:(id)completion;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
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
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Incorrect initializer used. This will fetch a bag", buf, 0xCu);
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

- (AMSUIMessageGroup)initWithBag:(id)bag
{
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSUIMessageGroup;
  v6 = [(IAMMessageGroup *)&v12 initWithGroupIdentifier:@"com.apple.ams"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    clientData = v7->_clientData;
    v9 = MEMORY[0x1E695E0F8];
    v7->_clientData = MEMORY[0x1E695E0F8];

    clientMetricsOverlay = v7->_clientMetricsOverlay;
    v7->_clientMetricsOverlay = v9;
  }

  return v7;
}

- (void)viewControllerForModalMessagePresentation:(id)presentation completion:(id)completion
{
  v90 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contentPages = [presentation contentPages];
  firstObject = [contentPages firstObject];
  contentParameters = [firstObject contentParameters];

  v8 = [contentParameters objectForKeyedSubscript:@"url"];
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
  v11 = [contentParameters objectForKeyedSubscript:@"clientIdentifier"];
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
    clientIdentifier = v12;
  }

  else
  {
    clientIdentifier = [(AMSUIMessageGroup *)self clientIdentifier];
  }

  v71 = clientIdentifier;

  v14 = [contentParameters objectForKeyedSubscript:@"clientVersion"];
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
    clientVersion = v15;
  }

  else
  {
    clientVersion = [(AMSUIMessageGroup *)self clientVersion];
  }

  v17 = clientVersion;

  v18 = [contentParameters objectForKeyedSubscript:@"placement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = v18;
  }

  else
  {
    v76 = 0;
  }

  v19 = [contentParameters objectForKeyedSubscript:@"serviceType"];
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

  v21 = [contentParameters objectForKeyedSubscript:@"params"];
  v83 = 0;
  v22 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v21 error:&v83];
  v23 = v83;

  v74 = v23;
  if (v23)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      [contentParameters objectForKeyedSubscript:@"params"];
      v28 = v27 = v22;
      *buf = 138543874;
      v85 = v26;
      v86 = 2114;
      v87 = v74;
      v88 = 2112;
      v89 = v28;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing MI params data. %{public}@ %@", buf, 0x20u);

      v22 = v27;
    }
  }

  v67 = v9;
  v68 = v22;
  v29 = [contentParameters objectForKeyedSubscript:@"sidepack"];
  v82 = 0;
  v30 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v29 error:&v82];
  v31 = v82;

  v73 = v31;
  if (v31)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      [contentParameters objectForKeyedSubscript:@"sidepack"];
      v35 = v30;
      v37 = v36 = v17;
      *buf = 138543874;
      v85 = v34;
      v86 = 2114;
      v87 = v73;
      v88 = 2112;
      v89 = v37;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing sidepack data. %{public}@ %@", buf, 0x20u);

      v17 = v36;
      v30 = v35;
    }
  }

  v38 = [contentParameters objectForKeyedSubscript:@"metrics"];
  v81 = 0;
  v39 = [(AMSUIMessageGroup *)self _dictionaryForParamObject:v38 error:&v81];
  v40 = v81;

  v72 = v40;
  if (v40)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v43 = v39;
      v44 = v30;
      v45 = v17;
      v46 = objc_opt_class();
      v47 = [contentParameters objectForKeyedSubscript:@"metrics"];
      *buf = 138543874;
      v85 = v46;
      v17 = v45;
      v30 = v44;
      v39 = v43;
      v86 = 2114;
      v87 = v72;
      v88 = 2112;
      v89 = v47;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Error deserializing metrics overlay. %{public}@ %@", buf, 0x20u);
    }
  }

  clientMetricsOverlay = [(AMSUIMessageGroup *)self clientMetricsOverlay];

  if (clientMetricsOverlay)
  {
    if (v39)
    {
      v49 = v39;
    }

    else
    {
      v49 = MEMORY[0x1E695E0F8];
    }

    clientMetricsOverlay2 = [(AMSUIMessageGroup *)self clientMetricsOverlay];
    v51 = [v49 ams_dictionaryByAddingEntriesFromDictionary:clientMetricsOverlay2];

    v39 = v51;
  }

  v52 = [contentParameters objectForKeyedSubscript:@"account"];
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
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  }

  else
  {
    ams_activeiTunesAccount = 0;
  }

  v57 = v71;
  v66 = v17;
  if (v70 && v76 && v71 && v17)
  {
    v58 = v68;
    v59 = [(AMSUIMessageGroup *)self _viewControllerForServiceType:v70 placement:v76 clientIdentifier:v71 clientVersion:v17 params:v68 account:ams_activeiTunesAccount sidepack:v30 metrics:v39, v17];
  }

  else
  {
    if (v75)
    {
      v59 = [(AMSUIMessageGroup *)self _viewControllerForURL:v75 account:ams_activeiTunesAccount sidepack:v30 metrics:v39];
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
  v79 = contentParameters;
  v80 = completionCopy;
  v63 = completionCopy;
  v64 = contentParameters;
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

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIMessageGroup *)self delegate];
  v10 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v10)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending web purchase completion", &v20, 0x16u);
    }

    mEMORY[0x1E698C968]2 = [(AMSUIMessageGroup *)self delegate];
    [mEMORY[0x1E698C968]2 messageGroup:self didFinishPurchaseWithResult:resultCopy error:errorCopy];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping web purchase completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIMessageGroup *)self delegate];
  v10 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v10)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending dynamic purchase completion", &v20, 0x16u);
    }

    mEMORY[0x1E698C968]2 = [(AMSUIMessageGroup *)self delegate];
    [mEMORY[0x1E698C968]2 messageGroup:self didFinishPurchaseWithResult:resultCopy error:errorCopy];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dynamic purchase completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  delegate = [(AMSUIMessageGroup *)self delegate];
  v10 = objc_opt_respondsToSelector();

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v10)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending dynamic carrier linking completion", &v20, 0x16u);
    }

    mEMORY[0x1E698C968]2 = [(AMSUIMessageGroup *)self delegate];
    [mEMORY[0x1E698C968]2 messageGroup:self didFinishCarrierLinkingWithResult:resultCopy error:errorCopy];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dynamic carrier linking completion callback", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryForParamObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
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
      v8 = [objectCopy dataUsingEncoding:4];
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

  if (error)
  {
    v10 = v7;
    *error = v7;
  }

  return v6;
}

- (id)_viewControllerForServiceType:(id)type placement:(id)placement clientIdentifier:(id)identifier clientVersion:(id)version params:(id)params account:(id)account sidepack:(id)sidepack metrics:(id)self0
{
  accountCopy = account;
  sidepackCopy = sidepack;
  metricsCopy = metrics;
  v17 = MEMORY[0x1E698C9A0];
  paramsCopy = params;
  versionCopy = version;
  identifierCopy = identifier;
  placementCopy = placement;
  typeCopy = type;
  v23 = [v17 alloc];
  v24 = [(AMSUIMessageGroup *)self bag];
  v25 = [v23 initWithBag:v24 clientIdentifier:identifierCopy clientVersion:versionCopy placement:placementCopy serviceType:typeCopy];

  [v25 setAccount:accountCopy];
  [v25 setContextInfo:paramsCopy];

  perform = [v25 perform];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__AMSUIMessageGroup__viewControllerForServiceType_placement_clientIdentifier_clientVersion_params_account_sidepack_metrics___block_invoke;
  v34[3] = &unk_1E7F250C8;
  v34[4] = self;
  v35 = accountCopy;
  v36 = sidepackCopy;
  v37 = metricsCopy;
  v27 = metricsCopy;
  v28 = sidepackCopy;
  v29 = accountCopy;
  v30 = [perform thenWithBlock:v34];

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

- (id)_viewControllerForURL:(id)l account:(id)account sidepack:(id)sidepack metrics:(id)metrics
{
  lCopy = l;
  accountCopy = account;
  sidepackCopy = sidepack;
  metricsCopy = metrics;
  v14 = objc_alloc(MEMORY[0x1E698CB70]);
  v15 = [(AMSUIMessageGroup *)self bag];
  v16 = [v14 initWithBag:v15];

  v17 = [v16 typeForURL:lCopy];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__AMSUIMessageGroup__viewControllerForURL_account_sidepack_metrics___block_invoke;
  v24[3] = &unk_1E7F25118;
  v24[4] = self;
  v25 = accountCopy;
  v26 = sidepackCopy;
  v27 = metricsCopy;
  v28 = lCopy;
  v18 = lCopy;
  v19 = metricsCopy;
  v20 = sidepackCopy;
  v21 = accountCopy;
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