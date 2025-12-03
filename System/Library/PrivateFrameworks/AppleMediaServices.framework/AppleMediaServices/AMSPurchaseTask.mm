@interface AMSPurchaseTask
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)shouldPreauthenticatePurchaseWithInfo:(id)info;
+ (id)_filterResponseDictionary:(id)dictionary bag:(id)bag;
+ (id)_filterResponseDictionary:(id)dictionary keyPaths:(id)paths;
+ (id)engagementEventWithInfo:(id)info bag:(id)bag responseDictionary:(id)dictionary error:(id)error;
+ (void)_captureBugReportForPurchaseEventEnqueueFailure:(id)failure process:(id)process;
- (AMSPurchaseDelegate)delegate;
- (AMSPurchaseTask)initWithPurchase:(id)purchase bag:(id)bag;
- (BOOL)_shouldAttemptCardEnrollment;
- (BOOL)_shouldGenerateAFDSWithPurchaseInfo:(id)info;
- (NSNumber)hostProcessIdentifier;
- (id)_buySignatureJSONWithFinalizedBlindedItems:(id)items;
- (id)_decorateBuyParamsWithCohortParams;
- (id)_determineIfShouldAttachPaymentServicesURL:(id)l;
- (id)_determineIfShouldSendBlindedData;
- (id)_finalizeBlindingWithPurchaseInfo:(id)info responseDictionary:(id)dictionary purchaseResult:(id)result outError:(id *)error;
- (id)_generateBlindedSignature;
- (id)_promptForAccount;
- (id)_recordEngagementEventWithInfo:(id)info responseDictionary:(id)dictionary finalizedBlindedItems:(id)items error:(id)error;
- (id)_runAuthenticateRequest:(id)request;
- (id)_runDialogRequest:(id)request;
- (id)_shouldFinalizeBlindedDataWithResponseDictionary:(id)dictionary;
- (id)performPreauthenticate;
- (id)performPurchase;
- (id)performPurchaseRequest;
- (id)preauthenticateOptions;
- (void)_partialFDSWithInfo:(id)info bag:(id)bag action:(unint64_t)action;
- (void)_regenerateFDSWithInfo:(id)info bag:(id)bag action:(unint64_t)action;
- (void)_saveBlindedData;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)generateFDSWithInfo:(id)info bag:(id)bag;
- (void)setDelegate:(id)delegate;
- (void)setHostProcessIdentifier:(id)identifier;
@end

@implementation AMSPurchaseTask

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (void)generateFDSWithInfo:(id)info bag:(id)bag
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  bagCopy = bag;
  purchase = [infoCopy purchase];
  logUUID = [purchase logUUID];

  purchase2 = [infoCopy purchase];
  purchaseType = [purchase2 purchaseType];

  if (purchaseType == 5)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [(AMSGenerateFDSTask *)v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Skipping AFDS for VPP download", buf, 0x16u);
    }
  }

  else
  {
    v14 = [[AMSGenerateFDSTask alloc] initWithPurchaseInfo:infoCopy bag:bagCopy];
    [(AMSTask *)v14 setRunMode:1];
    oSLogObject = [(AMSGenerateFDSTask *)v14 runTask];
    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__AMSPurchaseTask_FDS__generateFDSWithInfo_bag___block_invoke;
    v20[3] = &unk_1E73BB530;
    objc_copyWeak(&v25, buf);
    v15 = logUUID;
    v21 = v15;
    v12 = v14;
    v22 = v12;
    v16 = infoCopy;
    v23 = v16;
    v24 = bagCopy;
    [oSLogObject addErrorBlock:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__AMSPurchaseTask_FDS__generateFDSWithInfo_bag___block_invoke_3;
    v17[3] = &unk_1E73BB558;
    v18 = v15;
    v19 = v16;
    [oSLogObject addSuccessBlock:v17];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __48__AMSPurchaseTask_FDS__generateFDSWithInfo_bag___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([v3 ams_hasDomain:@"AMSErrorDomain" code:5] & 1) == 0)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate AFDS, error = %{public}@", &v13, 0x20u);
    }
  }

  if ([v3 ams_hasDomain:@"com.apple.asd.ca"] && (objc_msgSend(*(a1 + 40), "action") == 4 || objc_msgSend(*(a1 + 40), "action") == 5))
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate ODI, attempting to fetch partial score", &v13, 0x16u);
    }

    [WeakRetained _partialFDSWithInfo:*(a1 + 48) bag:*(a1 + 56) action:{objc_msgSend(*(a1 + 40), "action")}];
  }
}

void __48__AMSPurchaseTask_FDS__generateFDSWithInfo_bag___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v3 value];
    v8 = AMSHashIfNeeded(v7);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Successfully generated AFDS = %{public}@", &v10, 0x16u);
  }

  v9 = [AMSFDSService cacheFDS:v3 forPurchaseInfo:*(a1 + 40)];
}

- (void)_partialFDSWithInfo:(id)info bag:(id)bag action:(unint64_t)action
{
  infoCopy = info;
  bagCopy = bag;
  purchase = [infoCopy purchase];
  logUUID = [purchase logUUID];

  v12 = objc_alloc_init(AMSFDSOptions);
  [(AMSFDSOptions *)v12 setAction:action];
  clientInfo = [infoCopy clientInfo];
  [(AMSFDSOptions *)v12 setClientInfo:clientInfo];

  v14 = [AMSFDSRequest alloc];
  purchase2 = [infoCopy purchase];
  uniqueIdentifier = [purchase2 uniqueIdentifier];
  account = [infoCopy account];
  v18 = [(AMSFDSRequest *)v14 initWithPurchaseIdentifier:uniqueIdentifier account:account options:v12];

  [(AMSFDSRequest *)v18 setLogKey:logUUID];
  v19 = [[AMSGeneratePartialFDSTask alloc] initWithRequest:v18 bag:bagCopy];

  [(AMSTask *)v19 setRunMode:1];
  runTask = [(AMSGeneratePartialFDSTask *)v19 runTask];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __55__AMSPurchaseTask_FDS___partialFDSWithInfo_bag_action___block_invoke;
  v28[3] = &unk_1E73BB580;
  v28[4] = self;
  v21 = logUUID;
  v29 = v21;
  actionCopy = action;
  [runTask addErrorBlock:v28];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__AMSPurchaseTask_FDS___partialFDSWithInfo_bag_action___block_invoke_10;
  v24[3] = &unk_1E73BB5A8;
  v26 = infoCopy;
  actionCopy2 = action;
  v25 = v21;
  v22 = infoCopy;
  v23 = v21;
  [runTask addSuccessBlock:v24];
}

void __55__AMSPurchaseTask_FDS___partialFDSWithInfo_bag_action___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 ams_hasDomain:@"AMSErrorDomain" code:5] & 1) == 0)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
      v9 = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch partial AFDS, error = %{public}@, action: %{public}@", &v9, 0x2Au);
    }
  }
}

void __55__AMSPurchaseTask_FDS___partialFDSWithInfo_bag_action___block_invoke_10(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = [v3 value];
    v8 = AMSHashIfNeeded(v7);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Successfully generated partial AFDS = %{public}@, action = %{public}@", &v11, 0x20u);
  }

  v10 = [AMSFDSService cacheFDS:v3 forPurchaseInfo:a1[5]];
}

- (void)_regenerateFDSWithInfo:(id)info bag:(id)bag action:(unint64_t)action
{
  infoCopy = info;
  bagCopy = bag;
  purchase = [infoCopy purchase];
  logUUID = [purchase logUUID];

  v12 = objc_alloc_init(AMSFDSOptions);
  [(AMSFDSOptions *)v12 setAction:action];
  clientInfo = [infoCopy clientInfo];
  [(AMSFDSOptions *)v12 setClientInfo:clientInfo];

  v14 = [AMSFDSRequest alloc];
  purchase2 = [infoCopy purchase];
  uniqueIdentifier = [purchase2 uniqueIdentifier];
  account = [infoCopy account];
  v18 = [(AMSFDSRequest *)v14 initWithPurchaseIdentifier:uniqueIdentifier account:account options:v12];

  [(AMSFDSRequest *)v18 setLogKey:logUUID];
  v19 = [[AMSGenerateFDSTask alloc] initWithRequest:v18 bag:bagCopy];

  [(AMSTask *)v19 setRunMode:1];
  runTask = [(AMSGenerateFDSTask *)v19 runTask];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __58__AMSPurchaseTask_FDS___regenerateFDSWithInfo_bag_action___block_invoke;
  v28[3] = &unk_1E73BB580;
  v28[4] = self;
  v21 = logUUID;
  v29 = v21;
  actionCopy = action;
  [runTask addErrorBlock:v28];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__AMSPurchaseTask_FDS___regenerateFDSWithInfo_bag_action___block_invoke_11;
  v24[3] = &unk_1E73BB5A8;
  v26 = infoCopy;
  actionCopy2 = action;
  v25 = v21;
  v22 = infoCopy;
  v23 = v21;
  [runTask addSuccessBlock:v24];
}

void __58__AMSPurchaseTask_FDS___regenerateFDSWithInfo_bag_action___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 ams_hasDomain:@"AMSErrorDomain" code:5] & 1) == 0)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
      v9 = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed second attempt to generate AFDS, error = %{public}@, action: %{public}@", &v9, 0x2Au);
    }
  }
}

void __58__AMSPurchaseTask_FDS___regenerateFDSWithInfo_bag_action___block_invoke_11(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = [v3 value];
    v8 = AMSHashIfNeeded(v7);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Successfully generated AFDS = %{public}@, action = %{public}@", &v11, 0x20u);
  }

  v10 = [AMSFDSService cacheFDS:v3 forPurchaseInfo:a1[5]];
}

- (AMSPurchaseTask)initWithPurchase:(id)purchase bag:(id)bag
{
  purchaseCopy = purchase;
  bagCopy = bag;
  v23.receiver = self;
  v23.super_class = AMSPurchaseTask;
  v8 = [(AMSTask *)&v23 init];
  if (v8)
  {
    v9 = objc_opt_class();
    paymentSheetTaskClass = v8->_paymentSheetTaskClass;
    v8->_paymentSheetTaskClass = v9;

    v11 = [[AMSPurchaseInfo alloc] initWithPurchase:purchaseCopy];
    purchaseInfo = v8->_purchaseInfo;
    v8->_purchaseInfo = v11;

    [(AMSPurchaseInfo *)v8->_purchaseInfo setActivePurchaseTask:v8];
    v13 = bagCopy;
    if (!bagCopy)
    {
      v13 = +[AMSPurchaseTask createBagForSubProfile];
    }

    objc_storeStrong(&v8->_bag, v13);
    if (!bagCopy)
    {
    }

    v14 = [[AMSPurchaseRequestEncoder alloc] initWithPurchaseInfo:v8->_purchaseInfo bag:v8->_bag];
    purchaseRequestEncoder = v8->_purchaseRequestEncoder;
    v8->_purchaseRequestEncoder = v14;

    v16 = MEMORY[0x1E695AC80];
    v17 = +[AMSProcessInfo currentProcess];
    v18 = [v16 ams_configurationWithProcessInfo:v17 bag:0];

    v19 = [[AMSURLSession alloc] initWithConfiguration:v18 delegate:v8 delegateQueue:0];
    session = v8->_session;
    v8->_session = v19;

    v21 = objc_alloc_init(AMSPurchaseProtocolHandler);
    [(AMSURLSession *)v8->_session setProtocolHandler:v21];
  }

  return v8;
}

- (AMSPurchaseDelegate)delegate
{
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  delegate = [purchaseInfo delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  [purchaseInfo setDelegate:delegateCopy];
}

- (NSNumber)hostProcessIdentifier
{
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  hostProcessIdentifier = [purchaseInfo hostProcessIdentifier];

  return hostProcessIdentifier;
}

- (void)setHostProcessIdentifier:(id)identifier
{
  v5 = [identifier copy];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  [purchaseInfo setHostProcessIdentifier:v5];
}

- (BOOL)_shouldAttemptCardEnrollment
{
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  purchaseType = [purchase purchaseType];

  return (purchaseType > 5) | (9u >> purchaseType) & 1;
}

- (BOOL)_shouldGenerateAFDSWithPurchaseInfo:(id)info
{
  infoCopy = info;
  account = [infoCopy account];
  ams_isEphemeralAccount = [account ams_isEphemeralAccount];

  if (ams_isEphemeralAccount & 1) != 0 || ([infoCopy purchase], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isRedownload"), v6, (v7))
  {
    v8 = 0;
  }

  else
  {
    purchase = [infoCopy purchase];
    purchaseType = [purchase purchaseType];

    if (purchaseType)
    {
      v11 = purchaseType == 3;
    }

    else
    {
      v11 = 1;
    }

    v8 = v11;
  }

  return v8;
}

- (id)performPurchase
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AMSPurchaseTask_performPurchase__block_invoke;
  v5[3] = &unk_1E73B6940;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained purchaseInfo];
  v3 = [v2 purchase];
  v53 = [v3 logUUID];

  v52 = [WeakRetained purchaseInfo];
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    if (v53)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v7, v53];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    v8 = ;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting purchase task", &buf, 0xCu);
  }

  if (os_variant_has_internal_content())
  {
    v9 = [WeakRetained purchaseInfo];
    v10 = [v9 objectForLogging];
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    if (v53)
    {
      [v12 stringWithFormat:@"%@: [%@] ", v13, v53];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v14 = ;
    v15 = [v12 stringWithFormat:@"%@", v14];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [WeakRetained purchaseInfo];
    v18 = [v16 stringWithFormat:@"<%@>", objc_opt_class()];
    AMSLogBigObject(v10, OS_LOG_TYPE_DEFAULT, v11, v15, v18);

    v19 = [WeakRetained purchaseInfo];
    v20 = [v19 buyParams];
    v21 = [v20 objectForLogging];
    v22 = +[AMSLogConfig sharedPurchaseConfig];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (v53)
    {
      [v23 stringWithFormat:@"%@: [%@] ", v24, v53];
    }

    else
    {
      [v23 stringWithFormat:@"%@: ", v24];
    }
    v25 = ;
    v26 = [v23 stringWithFormat:@"%@", v25];
    v27 = MEMORY[0x1E696AEC0];
    v28 = [WeakRetained purchaseInfo];
    v29 = [v28 buyParams];
    v30 = [v27 stringWithFormat:@"<%@>", objc_opt_class()];
    AMSLogBigObject(v21, OS_LOG_TYPE_DEFAULT, v22, v26, v30);
  }

  v31 = [WeakRetained _shouldGenerateAFDSWithPurchaseInfo:v52];
  v32 = v31;
  if (v31)
  {
    v33 = [WeakRetained bag];
    [WeakRetained generateFDSWithInfo:v52 bag:v33];
  }

  v34 = objc_opt_new();
  v35 = [WeakRetained bag];
  v36 = [v34 completionHandlerAdapter];
  [AMSPurchaseConfiguration makeConfigurationWithBag:v35 completionHandler:v36];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__58;
  v81 = __Block_byref_object_dispose__58;
  v82 = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_51;
  v77[3] = &unk_1E73BB5D0;
  v77[4] = WeakRetained;
  v77[5] = &buf;
  v37 = [v34 thenWithBinaryPromiseBlock:v77];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_2;
  v73[3] = &unk_1E73BB620;
  v38 = v52;
  v74 = v38;
  v75 = WeakRetained;
  v39 = v53;
  v76 = v39;
  v40 = [v37 thenWithBlock:v73];
  v54 = v37;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_57;
  v72[3] = &unk_1E73B3808;
  v72[4] = WeakRetained;
  v41 = [v40 thenWithBlock:v72];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_2_58;
  v70[3] = &unk_1E73B3390;
  v70[4] = WeakRetained;
  v42 = v39;
  v71 = v42;
  v43 = [v41 thenWithBlock:v70];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_61;
  v69[3] = &unk_1E73B3588;
  v69[4] = WeakRetained;
  v44 = [v43 thenWithPromiseBlock:v69];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_2_63;
  v65[3] = &unk_1E73BB670;
  v45 = v38;
  v68 = v32;
  v66 = v45;
  v67 = WeakRetained;
  v46 = [v44 continueWithBlock:v65];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_6;
  v62[3] = &unk_1E73BB6C0;
  p_buf = &buf;
  v62[4] = WeakRetained;
  v47 = v42;
  v63 = v47;
  v48 = [v46 thenWithBlock:v62];

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_81;
  v61[3] = &unk_1E73BB710;
  v61[4] = WeakRetained;
  [v48 addFinishBlock:v61];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_3_86;
  v58[3] = &unk_1E73B32F0;
  v49 = v47;
  v59 = v49;
  v60 = WeakRetained;
  [v48 addErrorBlock:v58];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_87;
  v55[3] = &unk_1E73BB738;
  v50 = v49;
  v56 = v50;
  v57 = WeakRetained;
  [v48 addSuccessBlock:v55];

  _Block_object_dispose(&buf, 8);

  return v48;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_51(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) _determineIfShouldAttachPaymentServicesURL:*(*(*(a1 + 40) + 8) + 40)];

  return v5;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_2(id *a1)
{
  v2 = [a1[4] purchase];
  if ([v2 requiresAccount])
  {
    v3 = [a1[4] account];

    if (!v3)
    {
      v4 = [a1[5] _promptForAccount];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_3;
      v17[3] = &unk_1E73BB5F8;
      v18 = a1[6];
      v12 = *(a1 + 2);
      v5 = v12.i64[0];
      v19 = vextq_s8(v12, v12, 8uLL);
      [v4 addSuccessBlock:v17];
      v6 = [v4 binaryPromiseAdapter];

      v7 = v18;
LABEL_7:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = objc_opt_class();
  v9 = [a1[5] purchaseInfo];
  LODWORD(v8) = [v8 shouldPreauthenticatePurchaseWithInfo:v9];

  if (v8)
  {
    v4 = [a1[5] performPreauthenticate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_54;
    v14[3] = &unk_1E73BB5F8;
    v15 = a1[6];
    v13 = *(a1 + 2);
    v10 = v13.i64[0];
    v16 = vextq_s8(v13, v13, 8uLL);
    [v4 addSuccessBlock:v14];
    v6 = [v4 binaryPromiseAdapter];

    v7 = v15;
    goto LABEL_7;
  }

  v6 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_9:

  return v6;
}

uint64_t __34__AMSPurchaseTask_performPurchase__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    if (v7)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8, v12];
    }
    v9 = ;
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@'hasBeenAuthedForBuy' flag set: Pre-Flight Authentication", buf, 0xCu);
  }

  v10 = [v3 account];

  [*(a1 + 48) setAccount:v10];
  return [*(a1 + 48) setHasBeenAuthedForBuy:1];
}

uint64_t __34__AMSPurchaseTask_performPurchase__block_invoke_54(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    if (v5)
    {
      [v4 stringWithFormat:@"%@: [%@] ", v6, *(a1 + 32)];
    }

    else
    {
      [v4 stringWithFormat:@"%@: ", v6, v9];
    }
    v7 = ;
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@'hasBeenAuthedForBuy' flag set: Device Restrictions", buf, 0xCu);
  }

  return [*(a1 + 48) setHasBeenAuthedForBuy:1];
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_2_58(uint64_t a1)
{
  v2 = [*(a1 + 32) _determineIfShouldSendBlindedData];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_3_59;
  v7[3] = &unk_1E73B8180;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = [v2 thenWithBinaryPromiseBlock:v7];

  return v5;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_3_59(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a2 value];
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      if (v8)
      {
        [v7 stringWithFormat:@"%@: [%@] ", v9, *(a1 + 32)];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v9, v19];
      }
      v14 = ;
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@Generating buySignature data", buf, 0xCu);
    }

    [*(a1 + 40) _saveBlindedData];
    v5 = [*(a1 + 40) _generateBlindedSignature];
    v10 = [*(a1 + 40) purchaseInfo];
    v15 = [v10 purchase];
    v16 = [v15 buyParams];
    [v16 addBlindedSignature:v5];

    goto LABEL_17;
  }

  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v5 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    if (v12)
    {
      [v11 stringWithFormat:@"%@: [%@] ", v13, *(a1 + 32)];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v13, v19];
    }
    v15 = ;
    *buf = 138543362;
    v21 = v15;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@Not generating buySignature data", buf, 0xCu);
LABEL_17:
  }

  v17 = +[AMSBinaryPromise promiseWithSuccess];

  return v17;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_2_63(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(AMSPurchaseResult);
    v8 = [v5 object];
    [(AMSPurchaseResult *)v7 setResponseDictionary:v8];

    v9 = [*(a1 + 32) purchase];
    [(AMSPurchaseResult *)v7 setPurchase:v9];

    v10 = [v5 response];
    [(AMSPurchaseResult *)v7 setURLResponse:v10];

    v11 = [v5 loadURLEventDictionary];
    [(AMSPurchaseResult *)v7 setLoadURLEventDictionary:v11];

    -[AMSPurchaseResult setDidShowPaymentSheet:](v7, "setDidShowPaymentSheet:", [*(a1 + 32) didShowPaymentSheet]);
  }

  else
  {
    v7 = 0;
  }

  v12 = [v5 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [v5 response];
    v15 = [v14 allHeaderFields];
    v16 = [v15 objectForKeyedSubscript:@"X-Apple-Jingle-Correlation-Key"];

    [(AMSPurchaseResult *)v7 setCorrelationID:v16];
  }

  if (*(a1 + 48) == 1)
  {
    v17 = [AMSFDSService cacheFDS:0 forPurchaseInfo:*(a1 + 32)];
  }

  v18 = [*(a1 + 32) account];
  v19 = [v18 ams_isEphemeralAccount];

  if (v19)
  {
    v20 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = [v5 object];
    v23 = [v21 _shouldFinalizeBlindedDataWithResponseDictionary:v22];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_3_67;
    v34[3] = &unk_1E73BB648;
    v30 = *(a1 + 32);
    v24 = v30.i64[0];
    v35 = vextq_s8(v30, v30, 8uLL);
    v36 = v5;
    v37 = v7;
    v38 = v6;
    v20 = [v23 thenWithBinaryPromiseBlock:v34];
  }

  v25 = [v20 promiseAdapter];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_5;
  v31[3] = &unk_1E73B3190;
  v32 = v7;
  v33 = v6;
  v26 = v6;
  v27 = v7;
  v28 = [v25 continueWithBlock:v31];

  return v28;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_3_67(uint64_t a1, void *a2)
{
  if ([a2 value])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) object];
    v6 = *(a1 + 56);
    v18 = 0;
    v7 = [v3 _finalizeBlindingWithPurchaseInfo:v4 responseDictionary:v5 purchaseResult:v6 outError:&v18];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) object];
  v11 = [v8 _recordEngagementEventWithInfo:v9 responseDictionary:v10 finalizedBlindedItems:v7 error:*(a1 + 64)];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_4;
  v17[3] = &unk_1E73B3680;
  v17[4] = *(a1 + 32);
  [v11 addSuccessBlock:v17];
  v12 = [*(a1 + 32) purchaseInfo];
  v13 = [v12 purchase];
  LODWORD(v10) = [v13 asyncRecordEngagementEvent];

  if (v10)
  {
    v14 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;

  return v15;
}

void __34__AMSPurchaseTask_performPurchase__block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) bag];
  v1 = [AMSMetrics internalInstanceUsingBag:v3];
  v2 = [v1 flush];
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 responseDictionary];

    if (v8)
    {
      v9 = [AMSPromise promiseWithResult:*(a1 + 32)];
LABEL_6:
      v10 = v9;
      goto LABEL_9;
    }

    v11 = AMSError(0, @"The purchase response body was empty", 0, 0);
    v10 = [AMSPromise promiseWithError:v11];
  }

  else
  {
    if (*(a1 + 40))
    {
      v9 = [AMSPromise promiseWithError:?];
      goto LABEL_6;
    }

    v12 = AMSError(0, @"No Purchase Result", 0, 0);
    v10 = [AMSPromise promiseWithError:v12];
  }

LABEL_9:

  return v10;
}

id __34__AMSPurchaseTask_performPurchase__block_invoke_6(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = objc_opt_new();
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v6 = [*(a1 + 32) purchaseInfo];
    v7 = [v6 buyParams];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_7;
    v21[3] = &unk_1E73BB698;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v22 = v8;
    v23 = v9;
    v10 = v4;
    v24 = v10;
    v25 = v3;
    [v5 finishCardEnrollmentAttemptWithBuyParams:v7 purchaseResult:v25 completionHandler:v21];

    v11 = v25;
    v12 = v10;
  }

  else
  {
    v13 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = *(a1 + 40);
      v17 = objc_opt_class();
      if (v16)
      {
        [v15 stringWithFormat:@"%@: [%@] ", v17, *(a1 + 40)];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v17, v20];
      }
      v18 = ;
      *buf = 138543362;
      v27 = v18;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@Purchase configuration provider missing, failed to run finishCardEnrollmentAttempt", buf, 0xCu);
    }

    v12 = [AMSPromise promiseWithResult:v3];
  }

  return v12;
}

void __34__AMSPurchaseTask_performPurchase__block_invoke_7(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      if (v7)
      {
        [v6 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
      }

      else
      {
        [v6 stringWithFormat:@"%@: ", v8, v15];
      }
      v12 = ;
      v13 = AMSLogableError(v3);
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@finishCardEnrollmentAttempt completed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v4 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      if (v10)
      {
        [v9 stringWithFormat:@"%@: [%@] ", v11, *(a1 + 32)];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v11, v15];
      }
      v14 = ;
      *buf = 138543362;
      v17 = v14;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@finishCardEnrollmentAttempt completed", buf, 0xCu);
    }
  }

  [*(a1 + 48) finishWithResult:*(a1 + 56)];
}

void __34__AMSPurchaseTask_performPurchase__block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AMSPromiseResult alloc] initWithResult:v6 error:v5];

  v8 = [AMSPromise promiseWithPromiseResult:v7];

  v9 = [*(a1 + 32) purchaseInfo];
  v10 = [v9 purchase];
  v11 = [v10 metricsActivities];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__AMSPurchaseTask_performPurchase__block_invoke_2_83;
  v13[3] = &unk_1E73BB6E8;
  v14 = v8;
  v12 = v8;
  [v11 enumerateObjectsWithOptions:2 usingBlock:v13];
}

void __34__AMSPurchaseTask_performPurchase__block_invoke_3_86(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPurchaseOversizeConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    if (v7)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8, v11];
    }
    v9 = ;
    v10 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Purchase completed with error: %{public}@", buf, 0x16u);
  }
}

void __34__AMSPurchaseTask_performPurchase__block_invoke_87(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    if (v5)
    {
      [v4 stringWithFormat:@"%@: [%@] ", v6, *(a1 + 32)];
    }

    else
    {
      [v4 stringWithFormat:@"%@: ", v6, v8];
    }
    v7 = ;
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Purchase completed successfully", buf, 0xCu);
  }
}

+ (void)_captureBugReportForPurchaseEventEnqueueFailure:(id)failure process:(id)process
{
  v28 = *MEMORY[0x1E69E9840];
  processCopy = process;
  failureCopy = failure;
  v9 = [[AMSAutoBugCaptureReport alloc] initWithDomain:@"AppleMediaServices" type:@"Purchase" subtype:@"Purchase Event" subtypeContext:@"Enqueue Failure" process:processCopy thresholdValues:0];
  v10 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v4 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v4];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = processCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Sending bug capture report for process %{public}@", buf, 0x16u);
    if (v12)
    {

      v16 = v4;
    }
  }

  v21 = @"error";
  localizedDescription = [failureCopy localizedDescription];

  v22 = localizedDescription;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v23 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__AMSPurchaseTask__captureBugReportForPurchaseEventEnqueueFailure_process___block_invoke;
  v20[3] = &__block_descriptor_40_e53_v24__0__AMSAutoBugCaptureReportResponse_8__NSError_16l;
  v20[4] = self;
  [(AMSAutoBugCaptureReport *)v9 captureWithDelay:v19 events:0 payload:0 actions:v20 completionHandler:0.0];
}

void __75__AMSPurchaseTask__captureBugReportForPurchaseEventEnqueueFailure_process___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v18 = AMSHashIfNeeded(v5);
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v18;
      v19 = "%{public}@Sent report with response: %{public}@";
      goto LABEL_16;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v10)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v14 = ;
      v18 = AMSLogableError(v6);
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v18;
      v19 = "%{public}@Error sending report: %{public}@";
LABEL_16:
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
      if (v10)
      {

        v14 = a1;
      }
    }
  }
}

+ (id)_filterResponseDictionary:(id)dictionary keyPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 ams_deleteValueForKeyPath:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [AMSMetricsEvent sanitizedObject:v6];

  return v12;
}

+ (id)_filterResponseDictionary:(id)dictionary bag:(id)bag
{
  dictionaryCopy = dictionary;
  bagCopy = bag;
  v8 = bagCopy;
  if (dictionaryCopy)
  {
    if (bagCopy)
    {
      v9 = [bagCopy arrayForKey:@"purchase-event-filter-key-paths"];
      valuePromise = [v9 valuePromise];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__AMSPurchaseTask__filterResponseDictionary_bag___block_invoke;
      v13[3] = &unk_1E73BB760;
      selfCopy = self;
      v14 = dictionaryCopy;
      v15 = &unk_1F0779C40;
      v11 = [valuePromise continueWithBlock:v13];
    }

    else
    {
      v9 = [self _filterResponseDictionary:dictionaryCopy keyPaths:&unk_1F0779C40];
      v11 = [AMSPromise promiseWithResult:v9];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __49__AMSPurchaseTask__filterResponseDictionary_bag___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [*(a1 + 40) arrayByAddingObjectsFromArray:a2];
    v5 = [v2 _filterResponseDictionary:v3 keyPaths:v4];
  }

  else
  {
    v5 = [*(a1 + 48) _filterResponseDictionary:v3 keyPaths:*(a1 + 40)];
  }

  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

- (id)_promptForAccount
{
  v4 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v4 setAuthenticationType:2];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  clientInfo = [purchaseInfo clientInfo];
  [(AMSAuthenticateOptions *)v4 setClientInfo:clientInfo];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"-[%@ %@]", v9, v10];
  [(AMSAuthenticateOptions *)v4 setDebugReason:v11];

  [(AMSAuthenticateOptions *)v4 setEnableAccountCreation:1];
  [(AMSAuthenticateOptions *)v4 setIgnoreAccountConversion:1];
  v12 = AMSLogKey();
  [(AMSAuthenticateOptions *)v4 setLogKey:v12];

  v13 = [[AMSAuthenticateRequest alloc] initWithDSID:0 altDSID:0 username:0 options:v4];
  v14 = [(AMSPurchaseTask *)self _runAuthenticateRequest:v13];

  return v14;
}

- (id)_shouldFinalizeBlindedDataWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AMSPurchaseTask *)self bag];
  v6 = [v5 BOOLForKey:@"preventSendingBlindedData"];
  valuePromise = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AMSPurchaseTask__shouldFinalizeBlindedDataWithResponseDictionary___block_invoke;
  v11[3] = &unk_1E73BB788;
  v12 = dictionaryCopy;
  v8 = dictionaryCopy;
  v9 = [valuePromise continueWithBlock:v11];

  return v9;
}

id __68__AMSPurchaseTask__shouldFinalizeBlindedDataWithResponseDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    v4 = [AMSBoolean BOOLeanWithBool:0];
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"buySignatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    v7 = +[AMSBoolean BOOLeanWithBool:](AMSBoolean, "BOOLeanWithBool:", [v4 count] != 0);
    v5 = [AMSPromise promiseWithResult:v7];
  }

  return v5;
}

- (id)_determineIfShouldSendBlindedData
{
  v18 = *MEMORY[0x1E69E9840];
  if (+[AMSDefaults alwaysSendBlindedData])
  {
    v3 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = AMSLogKey();
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = v7;
      if (v5)
      {
        self = AMSLogKey();
        [v6 stringWithFormat:@"%@: [%@] ", v8, self];
      }

      else
      {
        [v6 stringWithFormat:@"%@: ", v7];
      }
      selfCopy = ;
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding shouldSendBlindedData for user defaults", buf, 0xCu);
      if (v5)
      {

        selfCopy = self;
      }
    }

    v10 = [AMSBoolean BOOLeanWithBool:1];
    v13 = [AMSPromise promiseWithResult:v10];
  }

  else
  {
    v10 = [(AMSPurchaseTask *)self bag];
    v11 = [v10 BOOLForKey:@"preventSendingBlindedData"];
    valuePromise = [v11 valuePromise];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__AMSPurchaseTask__determineIfShouldSendBlindedData__block_invoke;
    v15[3] = &unk_1E73BB788;
    v15[4] = self;
    v13 = [valuePromise continueWithBlock:v15];
  }

  return v13;
}

id __52__AMSPurchaseTask__determineIfShouldSendBlindedData__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [AMSBoolean BOOLeanWithBool:0];
    v4 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v3 = [*(a1 + 32) purchaseInfo];
    v5 = [v3 purchase];
    v6 = +[AMSBoolean BOOLeanWithBool:](AMSBoolean, "BOOLeanWithBool:", [v5 sendBlindedData]);
    v4 = [AMSPromise promiseWithResult:v6];
  }

  return v4;
}

- (id)_recordEngagementEventWithInfo:(id)info responseDictionary:(id)dictionary finalizedBlindedItems:(id)items error:(id)error
{
  infoCopy = info;
  itemsCopy = items;
  errorCopy = error;
  dictionaryCopy = dictionary;
  v14 = objc_alloc_init(AMSMutableBinaryPromise);
  v15 = objc_opt_class();
  v16 = [(AMSPurchaseTask *)self bag];
  v17 = [v15 engagementEventWithInfo:infoCopy bag:v16 responseDictionary:dictionaryCopy error:errorCopy];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke;
  v32[3] = &unk_1E73B34B8;
  v18 = v14;
  v33 = v18;
  [v17 addErrorBlock:v32];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_2;
  v26[3] = &unk_1E73BB800;
  v27 = itemsCopy;
  selfCopy = self;
  v29 = errorCopy;
  v19 = v18;
  v30 = v19;
  v31 = infoCopy;
  v20 = infoCopy;
  v21 = errorCopy;
  v22 = itemsCopy;
  [v17 addSuccessBlock:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_149;
  v25[3] = &unk_1E73B34B8;
  v25[4] = self;
  [(AMSBinaryPromise *)v19 addErrorBlock:v25];
  v23 = v19;

  return v19;
}

void __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_2(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*(a1 + 32))
  {
    v6 = [*(a1 + 40) _buySignatureJSONWithFinalizedBlindedItems:?];
    v7 = v6;
    if (v6 && [v6 count])
    {
      [v5 setProperty:v7 forBodyKey:@"buySignatures"];
    }

    else
    {
      v8 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v2 = AMSLogKey();
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = v11;
        if (v2)
        {
          v3 = AMSLogKey();
          [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
        }

        else
        {
          [v10 stringWithFormat:@"%@: ", v11];
        }
        v13 = ;
        v14 = AMSLogableError(*(a1 + 48));
        *buf = 138543618;
        v36 = v13;
        v37 = 2114;
        v38 = v14;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to generate buySignature for blinded element. %{public}@", buf, 0x16u);
        if (v2)
        {

          v13 = v3;
        }
      }
    }
  }

  v15 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = AMSLogKey();
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = v19;
    if (v17)
    {
      v2 = AMSLogKey();
      [v18 stringWithFormat:@"%@: [%@] ", v20, v2];
    }

    else
    {
      [v18 stringWithFormat:@"%@: ", v19];
    }
    v21 = ;
    v22 = [v5 propertyForBodyKey:@"success"];
    *buf = 138543618;
    v36 = v21;
    v37 = 2114;
    v38 = v22;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Recording engagement event. success: %{public}@", buf, 0x16u);
    if (v17)
    {

      v21 = v2;
    }
  }

  v23 = [AMSEngagement alloc];
  v24 = [*(a1 + 40) bag];
  v25 = [(AMSEngagement *)v23 initWithBag:v24];

  v26 = [v5 underlyingDictionary];
  v27 = [(AMSEngagement *)v25 enqueueData:v26 to:&unk_1F0779C58];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_135;
  v34[3] = &unk_1E73B34B8;
  v34[4] = *(a1 + 40);
  [v27 addErrorBlock:v34];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_136;
  v30[3] = &unk_1E73BB7D8;
  v31 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a1 + 40);
  v32 = v28;
  v33 = v29;
  [v27 addFinishBlock:v30];
}

void __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_135(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[AMSLogConfig sharedPurchaseOversizeConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v2 = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, v2];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    v12 = AMSLogableError(v4);
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to enqueue purchase event. Error: %{public}@", buf, 0x16u);
    if (v7)
    {

      v11 = v2;
    }
  }

  v13 = [*(a1 + 32) purchaseInfo];
  v14 = [v13 clientInfo];
  v15 = [v14 bundleIdentifier];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = +[AMSProcessInfo currentProcess];
    v17 = [v18 bundleIdentifier];
  }

  [objc_opt_class() _captureBugReportForPurchaseEventEnqueueFailure:v4 process:v17];
}

void __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_136(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v7 = [v5 request];

    if (v7)
    {
      v8 = [*(a1 + 40) delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
        if (!v10)
        {
          v10 = +[AMSLogConfig sharedConfig];
        }

        v11 = [v10 OSLogObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = AMSLogKey();
          *buf = 138543618;
          v26 = v12;
          v27 = 2114;
          v28 = v13;
          _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling engagement request", buf, 0x16u);
        }

        v14 = [*(a1 + 40) delegate];
        v15 = [*(a1 + 40) purchase];
        v16 = [v6 request];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_145;
        v24[3] = &unk_1E73BB7B0;
        v24[4] = *(a1 + 48);
        [v14 purchase:v15 handleEngagementRequest:v16 completion:v24];
      }

      else
      {
        v17 = [*(a1 + 40) delegate];
        v23 = AMSErrorWithFormat(2, @"Engagement presentation failed", @"Delegate does not respond: %@", v18, v19, v20, v21, v22, v17);

        [*(a1 + 32) finishWithError:v23];
      }
    }

    else
    {
      [*(a1 + 32) finishWithSuccess];
    }
  }
}

void __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_145(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement completed successfully", &v7, 0x16u);
    }
  }
}

void __97__AMSPurchaseTask__recordEngagementEventWithInfo_responseDictionary_finalizedBlindedItems_error___block_invoke_149(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPurchaseOversizeConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Engagement failed. %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

- (id)_determineIfShouldAttachPaymentServicesURL:(id)l
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  logUUID = [purchase logUUID];

  if ([(AMSPurchaseTask *)self _shouldAttemptCardEnrollment])
  {
    v8 = objc_opt_new();
    purchaseInfo2 = [(AMSPurchaseTask *)self purchaseInfo];
    account = [purchaseInfo2 account];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__AMSPurchaseTask__determineIfShouldAttachPaymentServicesURL___block_invoke;
    v23[3] = &unk_1E73BB828;
    v23[4] = self;
    v11 = v8;
    v24 = v11;
    v25 = lCopy;
    v26 = logUUID;
    [v25 beginCardEnrollmentAttemptWithAccount:account completionHandler:v23];

    v12 = v26;
    v13 = v11;
  }

  else
  {
    v14 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      if (logUUID)
      {
        [v16 stringWithFormat:@"%@: [%@] ", v17, logUUID];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17, v22];
      }
      v18 = ;
      purchaseInfo3 = [(AMSPurchaseTask *)self purchaseInfo];
      purchase2 = [purchaseInfo3 purchase];
      *buf = 138543618;
      v28 = v18;
      v29 = 2050;
      purchaseType = [purchase2 purchaseType];
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Shouldn't attempt to card enrollment for purchaseType: %{public}ld", buf, 0x16u);
    }

    v13 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v13;
}

void __62__AMSPurchaseTask__determineIfShouldAttachPaymentServicesURL___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) purchaseInfo];
  v5 = v4;
  if (v3)
  {
    [v4 setPaymentServicesURL:v3];
  }

  else
  {
    v6 = [v4 purchase];
    v7 = [v6 requiresApplePayClassic];

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 40);
    v5 = AMSError(500, @"Purchase Task Failed", @"Purchase requires Apple Pay Classic, but there was not a payment services URL.", 0);
    [v8 finishWithError:v5];
  }

LABEL_6:
  if ([*(a1 + 48) isExpressCheckoutEligible])
  {
    v9 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      if (v11)
      {
        [v12 stringWithFormat:@"%@: [%@] ", v13, *(a1 + 56)];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13, v27];
      }
      v14 = ;
      *buf = 138543362;
      v29 = v14;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@AURUM storefront is eligible for Express Checkout", buf, 0xCu);
    }

    if ([*(a1 + 48) isExpressCheckoutShouldCheckForWalletBiometrics] && +[AMSDevice isWalletBiometricsEnabled](AMSDevice, "isWalletBiometricsEnabled"))
    {
      v15 = [*(a1 + 32) purchaseInfo];
      [v15 setPaymentServicesURL:v3];

      v16 = [*(a1 + 32) purchaseInfo];
      v17 = [v16 buyParams];
      v18 = MEMORY[0x1E696AD98];
      v19 = [*(a1 + 32) bag];
      v20 = [v18 numberWithBool:{+[AMSCardEnrollment isApplePayWalletRefreshedForBag:](AMSCardEnrollment, "isApplePayWalletRefreshedForBag:", v19)}];
      [v17 setParameter:v20 forKey:@"isApplePayWalletRefreshed"];
    }

    else
    {
      v21 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 56);
        v24 = MEMORY[0x1E696AEC0];
        v25 = objc_opt_class();
        if (v23)
        {
          [v24 stringWithFormat:@"%@: [%@] ", v25, *(a1 + 56)];
        }

        else
        {
          [v24 stringWithFormat:@"%@: ", v25, v27];
        }
        v26 = ;
        *buf = 138543362;
        v29 = v26;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@When Wallet & Apple Pay biometrics toggle is OFF then ExpressCheckout is ineligible, remove the paymentServicesURL", buf, 0xCu);
      }

      v16 = [*(a1 + 32) purchaseInfo];
      [v16 setPaymentServicesURL:0];
    }
  }

  [*(a1 + 40) finishWithSuccess];
}

- (id)_decorateBuyParamsWithCohortParams
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x1E695DFD8];
    v26[0] = 0x1F0722358;
    v26[1] = 0x1F0722438;
    v26[2] = 0x1F0722338;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v5 = [v3 setWithArray:v4];

    purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
    buyParams = [purchaseInfo buyParams];
    v8 = [buyParams parameterForKey:0x1F0722118];
    v9 = [v5 containsObject:v8];

    if (v9)
    {
      v10 = objc_alloc_init(AMSMutableBinaryPromise);
      v11 = +[AMSCampaignCohortParamsProvider provider];
      purchaseInfo2 = [(AMSPurchaseTask *)self purchaseInfo];
      buyParams2 = [purchaseInfo2 buyParams];
      v14 = [buyParams2 parameterForKey:@"mtExtraInfo"];

      if (v14)
      {
        purchaseInfo3 = [(AMSPurchaseTask *)self purchaseInfo];
        buyParams3 = [purchaseInfo3 buyParams];
        v17 = [buyParams3 parameterForKey:@"mtExtraInfo"];
      }

      else
      {
        v17 = &stru_1F071BA78;
      }

      v19 = [(AMSPurchaseTask *)self bag];
      v20 = [v11 retrieveMetricsParamsStringPromiseWithBag:v19 currentMetricsString:v17];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __53__AMSPurchaseTask__decorateBuyParamsWithCohortParams__block_invoke;
      v24[3] = &unk_1E73BB850;
      v24[4] = self;
      v21 = v10;
      v25 = v21;
      [v20 addFinishBlock:v24];

      v22 = v25;
      v18 = v21;
    }

    else
    {
      v18 = +[AMSBinaryPromise promiseWithSuccess];
    }
  }

  else
  {
    v18 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v18;
}

uint64_t __53__AMSPurchaseTask__decorateBuyParamsWithCohortParams__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 purchaseInfo];
    v6 = [v5 buyParams];
    [v6 setParameter:v4 forKey:@"mtExtraInfo"];
  }

  v7 = *(a1 + 40);

  return [v7 finishWithSuccess];
}

- (id)_runAuthenticateRequest:(id)request
{
  requestCopy = request;
  delegate = [(AMSPurchaseTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(AMSPromise);
    delegate2 = [(AMSPurchaseTask *)self delegate];
    purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
    purchase = [purchaseInfo purchase];
    completionHandlerAdapter = [(AMSPromise *)v7 completionHandlerAdapter];
    [delegate2 purchase:purchase handleAuthenticateRequest:requestCopy completion:completionHandlerAdapter];
  }

  else
  {
    delegate2 = AMSError(12, @"Purchase Authentication Failed", @"Delegate does not respond to auth callback", 0);
    v7 = [AMSPromise promiseWithError:delegate2];
  }

  return v7;
}

- (id)_runDialogRequest:(id)request
{
  requestCopy = request;
  delegate = [(AMSPurchaseTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(AMSPromise);
    delegate2 = [(AMSPurchaseTask *)self delegate];
    purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
    purchase = [purchaseInfo purchase];
    completionHandlerAdapter = [(AMSPromise *)v7 completionHandlerAdapter];
    [delegate2 purchase:purchase handleDialogRequest:requestCopy completion:completionHandlerAdapter];
  }

  else
  {
    delegate2 = AMSError(12, @"Purchase Dialog Failed", @"Delegate does not respond to dialog callback", 0);
    v7 = [AMSPromise promiseWithError:delegate2];
  }

  return v7;
}

- (id)_buySignatureJSONWithFinalizedBlindedItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  allKeys = [itemsCopy allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_118];

  v25 = itemsCopy;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v25 objectForKeyedSubscript:v11];
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        adamId = [v12 adamId];
        [v13 setObject:adamId forKey:@"songId"];

        finalizedData = [v12 finalizedData];
        v16 = [finalizedData base64EncodedStringWithOptions:0];
        [v13 setObject:v16 forKey:@"finalizedBlindedData"];

        privateInput = [v12 privateInput];
        v18 = [privateInput base64EncodedStringWithOptions:0];
        [v13 setObject:v18 forKey:@"privateInput"];

        v19 = MEMORY[0x1E696AD98];
        timestamp = [v12 timestamp];
        v21 = [v19 numberWithUnsignedLongLong:{objc_msgSend(timestamp, "longLongValue")}];
        [v13 setObject:v21 forKey:@"timestamp"];

        if (([v11 isEqualToString:@"AMSBlindedDataPlaceholderKey"] & 1) == 0)
        {
          [v13 setObject:v11 forKey:@"type"];
        }

        [v6 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

  return v22;
}

- (id)_finalizeBlindingWithPurchaseInfo:(id)info responseDictionary:(id)dictionary purchaseResult:(id)result outError:(id *)error
{
  v158 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dictionaryCopy = dictionary;
  resultCopy = result;
  v119 = infoCopy;
  purchase = [infoCopy purchase];
  blindedData = [purchase blindedData];

  if (blindedData)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__AMSPurchaseTask__finalizeBlindingWithPurchaseInfo_responseDictionary_purchaseResult_outError___block_invoke;
    aBlock[3] = &unk_1E73B3680;
    v126 = infoCopy;
    v151 = v126;
    v115 = _Block_copy(aBlock);
    v12 = [dictionaryCopy objectForKeyedSubscript:@"buySignatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v118 = v12;
    }

    else
    {
      v118 = 0;
    }

    if ([v118 count])
    {
      v120 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      obj = v118;
      v20 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
      if (!v20)
      {
        goto LABEL_113;
      }

      v144 = *v147;
      while (1)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v147 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v146 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"songId"];
          if (objc_opt_respondsToSelector())
          {
            v24 = [v22 objectForKeyedSubscript:@"songId"];
            unsignedIntegerValue = [v24 unsignedIntegerValue];

            if (unsignedIntegerValue)
            {
              v26 = [v22 objectForKeyedSubscript:@"token-info"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;

                if (v27)
                {
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    oSLogObject6 = v28;

                    if (oSLogObject6)
                    {
                      v30 = [oSLogObject6 objectForKeyedSubscript:@"commerceEvent_purchase_priceType"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        oSLogObject5 = v30;

                        if (oSLogObject5)
                        {
                          v32 = [v22 objectForKeyedSubscript:@"type"];
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {

                            goto LABEL_66;
                          }

                          oSLogObject4 = v32;

                          if (!oSLogObject4)
                          {
LABEL_66:
                            v57 = +[AMSLogConfig sharedPurchaseConfig];
                            if (!v57)
                            {
                              v57 = +[AMSLogConfig sharedConfig];
                            }

                            oSLogObject = [v57 OSLogObject];
                            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
                            {
                              v133 = AMSLogKey();
                              v129 = MEMORY[0x1E696AEC0];
                              if (v133)
                              {
                                v59 = objc_opt_class();
                                v114 = AMSLogKey();
                                v114 = [v129 stringWithFormat:@"%@: [%@] ", v59, v114];
                                v109 = v114;
                                v61 = v112;
                              }

                              else
                              {
                                v114 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                                v61 = v114;
                              }

                              *buf = 138543362;
                              v154 = v114;
                              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@No type information, using single signature model.", buf, 0xCu);
                              v112 = v61;
                              v64 = v61;
                              if (v133)
                              {

                                v64 = v114;
                              }
                            }

                            oSLogObject4 = @"AMSBlindedDataPlaceholderKey";
                          }

                          purchase2 = [v126 purchase];
                          blindedData2 = [purchase2 blindedData];
                          v134 = [blindedData2 objectForKeyedSubscript:oSLogObject4];

                          if (v134)
                          {
                            purchase3 = [v126 purchase];
                            publicInputComponents = [purchase3 publicInputComponents];
                            v130 = [publicInputComponents objectForKeyedSubscript:oSLogObject4];

                            if (!v130)
                            {
                              v152[0] = @"Timestamp";
                              v152[1] = @"AdamID";
                              v152[2] = @"PriceType";
                              v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:3];
                            }

                            log = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", unsignedIntegerValue];
                            purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
                            purchase4 = [purchaseInfo purchase];
                            isRedownload = [purchase4 isRedownload];
                            timestamp = [v134 timestamp];
                            v123 = [AMSBlinder publicInputWithComponents:v130 adamID:log isRedownload:isRedownload priceType:oSLogObject5 timestamp:timestamp];

                            privateInput = [v134 privateInput];
                            timestamp2 = [v134 timestamp];
                            v145 = 0;
                            v74 = [AMSBlinder finalizeBlindedDataWithPrivateInput:privateInput timeStamp:timestamp2 adamId:log publicInput:v123 signatureType:oSLogObject4 serverData:v27 error:&v145];
                            v125 = v145;

                            if (v74)
                            {
                              [v120 setObject:v74 forKeyedSubscript:oSLogObject4];
                            }

                            else
                            {
                              v80 = +[AMSLogConfig sharedPurchaseOversizeConfig];
                              if (!v80)
                              {
                                v80 = +[AMSLogConfig sharedConfig];
                              }

                              v111 = v80;
                              oSLogObject2 = [v80 OSLogObject];
                              if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
                              {
                                v110 = AMSLogKey();
                                v81 = MEMORY[0x1E696AEC0];
                                if (v110)
                                {
                                  v82 = objc_opt_class();
                                  v105 = AMSLogKey();
                                  v105 = [v81 stringWithFormat:@"%@: [%@] ", v82, v105];
                                  v103 = v105;
                                }

                                else
                                {
                                  v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                                  v104 = v105;
                                }

                                v86 = AMSLogableError(v125);
                                *buf = 138543618;
                                v154 = v105;
                                v155 = 2114;
                                v156 = v86;
                                _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Finalize Blinding failed to return data. Error: %{public}@", buf, 0x16u);
                                v87 = v104;
                                if (v110)
                                {

                                  v87 = v105;
                                }
                              }

                              if (error)
                              {
                                v88 = v125;
                                *error = v125;
                              }
                            }
                          }

                          else
                          {
                            v75 = +[AMSLogConfig sharedPurchaseConfig];
                            if (!v75)
                            {
                              v75 = +[AMSLogConfig sharedConfig];
                            }

                            v130 = v75;
                            log = [v75 OSLogObject];
                            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                            {
                              v76 = AMSLogKey();
                              v77 = MEMORY[0x1E696AEC0];
                              if (v76)
                              {
                                v78 = objc_opt_class();
                                v108 = AMSLogKey();
                                v108 = [v77 stringWithFormat:@"%@: [%@] ", v78, v108];
                                v106 = v108;
                              }

                              else
                              {
                                v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                                v107 = v108;
                              }

                              v84 = AMSHashIfNeeded(oSLogObject4);
                              *buf = 138543618;
                              v154 = v108;
                              v155 = 2112;
                              v156 = v84;
                              _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@Unable to Finalize Blinding. Unable to find blindedData for type: %@", buf, 0x16u);
                              v85 = v107;
                              if (v76)
                              {

                                v85 = v108;
                              }
                            }
                          }

                          oSLogObject3 = v134;
LABEL_108:

LABEL_109:
LABEL_110:

                          goto LABEL_111;
                        }
                      }

                      else
                      {
                      }

                      oSLogObject4 = +[AMSLogConfig sharedPurchaseConfig];
                      if (!oSLogObject4)
                      {
                        oSLogObject4 = +[AMSLogConfig sharedConfig];
                      }

                      oSLogObject3 = [(__CFString *)oSLogObject4 OSLogObject];
                      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
                      {
                        v51 = AMSLogKey();
                        v52 = MEMORY[0x1E696AEC0];
                        if (v51)
                        {
                          v53 = objc_opt_class();
                          v127 = AMSLogKey();
                          v127 = [v52 stringWithFormat:@"%@: [%@] ", v53, v127];
                          v121 = v127;
                        }

                        else
                        {
                          v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                          v122 = v127;
                        }

                        v62 = AMSHashIfNeeded(oSLogObject6);
                        *buf = 138543618;
                        v154 = v127;
                        v155 = 2112;
                        v156 = v62;
                        v63 = v122;
                        if (v51)
                        {

                          v63 = v127;
                        }
                      }

                      oSLogObject5 = 0;
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                  }

                  oSLogObject5 = +[AMSLogConfig sharedPurchaseConfig];
                  if (!oSLogObject5)
                  {
                    oSLogObject5 = +[AMSLogConfig sharedConfig];
                  }

                  oSLogObject4 = [oSLogObject5 OSLogObject];
                  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
                  {
                    v44 = AMSLogKey();
                    v45 = MEMORY[0x1E696AEC0];
                    if (v44)
                    {
                      v46 = objc_opt_class();
                      v135 = AMSLogKey();
                      v135 = [v45 stringWithFormat:@"%@: [%@] ", v46, v135];
                      v131 = v135;
                    }

                    else
                    {
                      v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                      v132 = v135;
                    }

                    v55 = AMSHashIfNeeded(0);
                    *buf = 138543618;
                    v154 = v135;
                    v155 = 2112;
                    v156 = v55;
                    v56 = v132;
                    if (v44)
                    {

                      v56 = v135;
                    }
                  }

                  oSLogObject6 = 0;
                  goto LABEL_109;
                }
              }

              else
              {
              }

              oSLogObject6 = +[AMSLogConfig sharedPurchaseConfig];
              if (!oSLogObject6)
              {
                oSLogObject6 = +[AMSLogConfig sharedConfig];
              }

              oSLogObject5 = [oSLogObject6 OSLogObject];
              if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
              {
                v38 = AMSLogKey();
                v39 = MEMORY[0x1E696AEC0];
                if (v38)
                {
                  v40 = objc_opt_class();
                  v139 = AMSLogKey();
                  v139 = [v39 stringWithFormat:@"%@: [%@] ", v40, v139];
                  v137 = v139;
                }

                else
                {
                  v139 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
                  v138 = v139;
                }

                v48 = AMSHashIfNeeded(v22);
                *buf = 138543618;
                v154 = v139;
                v155 = 2112;
                v156 = v48;
                v49 = v138;
                if (v38)
                {

                  v49 = v139;
                }
              }

              v27 = 0;
              goto LABEL_110;
            }
          }

          else
          {
          }

          v27 = +[AMSLogConfig sharedPurchaseConfig];
          if (!v27)
          {
            v27 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject6 = [v27 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
          {
            v34 = AMSLogKey();
            v35 = MEMORY[0x1E696AEC0];
            if (v34)
            {
              v36 = objc_opt_class();
              infoCopy = AMSLogKey();
              infoCopy = [v35 stringWithFormat:@"%@: [%@] ", v36, infoCopy];
              v140 = infoCopy;
            }

            else
            {
              infoCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
              v141 = infoCopy;
            }

            v42 = AMSHashIfNeeded(v22);
            *buf = 138543618;
            v154 = infoCopy;
            v155 = 2112;
            v156 = v42;
            v43 = v141;
            if (v34)
            {

              v43 = infoCopy;
            }
          }

LABEL_111:
        }

        v20 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
        if (!v20)
        {
LABEL_113:

          if ([v120 count])
          {
            v89 = [v120 copy];
            [resultCopy setFinalizedBlindedData:v89];
          }

          else
          {
            v89 = +[AMSLogConfig sharedPurchaseConfig];
            if (!v89)
            {
              v89 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject7 = [v89 OSLogObject];
            if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
            {
              v97 = AMSLogKey();
              v98 = MEMORY[0x1E696AEC0];
              if (v97)
              {
                v99 = objc_opt_class();
                v20 = AMSLogKey();
                [v98 stringWithFormat:@"%@: [%@] ", v99, v20];
              }

              else
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
              }
              v100 = ;
              *buf = 138543362;
              v154 = v100;
              _os_log_impl(&dword_192869000, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping attachment of Finalized Blinded due to empty dictionary", buf, 0xCu);
              if (v97)
              {

                v100 = v20;
              }
            }
          }

          v101 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v120];
          goto LABEL_141;
        }
      }
    }

    v90 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v90)
    {
      v90 = +[AMSLogConfig sharedConfig];
    }

    v120 = v90;
    oSLogObject8 = [v90 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
    {
      v92 = AMSLogKey();
      v93 = MEMORY[0x1E696AEC0];
      if (v92)
      {
        v94 = objc_opt_class();
        infoCopy = AMSLogKey();
        [v93 stringWithFormat:@"%@: [%@] ", v94, infoCopy];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v95 = ;
      *buf = 138543362;
      v154 = v95;
      _os_log_impl(&dword_192869000, oSLogObject8, OS_LOG_TYPE_ERROR, "%{public}@Unable to Finalize Blinding. Array is empty.", buf, 0xCu);
      if (v92)
      {

        v95 = infoCopy;
      }
    }

    v101 = 0;
LABEL_141:

    v115[2]();
    v13 = v151;
  }

  else
  {
    v13 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject9 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        v6 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, v6];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543362;
      v154 = v19;
      _os_log_impl(&dword_192869000, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@Unable to Finalize Blinding. Data missing!", buf, 0xCu);
      if (v15)
      {

        v19 = v6;
      }
    }

    v101 = 0;
  }

  return v101;
}

void __96__AMSPurchaseTask__finalizeBlindingWithPurchaseInfo_responseDictionary_purchaseResult_outError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) purchase];
  v2 = [v1 blindedData];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) privateInput];
        if (v8)
        {
          [AMSBlinder removeCachedClientForPrivateInput:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_generateBlindedSignature
{
  v38[2] = *MEMORY[0x1E69E9840];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  blindedData = [purchase blindedData];

  v5 = [blindedData objectForKeyedSubscript:@"AMSBlindedDataPlaceholderKey"];
  if ([blindedData count] == 1 && v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37[0] = 0x1F0722298;
    blindedElementString = [v5 blindedElementString];
    v37[1] = 0x1F0722278;
    v38[0] = blindedElementString;
    timestamp = [v5 timestamp];
    v38[1] = timestamp;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    [v6 setObject:v9 forKeyedSubscript:0x1F07222D8];
    v10 = [v6 copy];
  }

  else
  {
    v24 = v5;
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = blindedData;
    obj = [blindedData keyEnumerator];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v15 setObject:v14 forKeyedSubscript:0x1F07222F8];
          purchaseInfo2 = [(AMSPurchaseTask *)self purchaseInfo];
          purchase2 = [purchaseInfo2 purchase];
          blindedData2 = [purchase2 blindedData];
          v19 = [blindedData2 objectForKeyedSubscript:v14];

          v34[0] = 0x1F0722298;
          blindedElementString2 = [v19 blindedElementString];
          v34[1] = 0x1F0722278;
          v35[0] = blindedElementString2;
          timestamp2 = [v19 timestamp];
          v35[1] = timestamp2;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

          [v15 setObject:v22 forKeyedSubscript:0x1F07222D8];
          [v29 addObject:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v12);
    }

    v6 = v29;
    v10 = [v29 copy];
    v5 = v24;
    blindedData = v25;
  }

  return v10;
}

- (void)_saveBlindedData
{
  v36 = *MEMORY[0x1E69E9840];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  buySignatureTypes = [purchase buySignatureTypes];

  if (!buySignatureTypes)
  {
LABEL_26:
    v8 = +[AMSBlinder generateRandomPrivateInput];
    v11 = [AMSBlinder makeBlindedDataWithPrivateInputData:v8];
    v32 = @"AMSBlindedDataPlaceholderKey";
    v33 = v11;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    purchaseInfo2 = [(AMSPurchaseTask *)self purchaseInfo];
    purchase2 = [purchaseInfo2 purchase];
    [purchase2 setBlindedData:v27];

    goto LABEL_27;
  }

  if (![buySignatureTypes count])
  {
    if (![buySignatureTypes count])
    {
      v12 = +[AMSUnitTests isRunningUnitTests];
      v13 = +[AMSLogConfig sharedPurchaseConfig];
      defaultCenter = v13;
      if (v12)
      {
        if (!v13)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v16 = AMSLogKey();
          v17 = MEMORY[0x1E696AEC0];
          v18 = objc_opt_class();
          v19 = v18;
          if (v16)
          {
            v2 = AMSLogKey();
            [v17 stringWithFormat:@"%@: [%@] ", v19, v2];
          }

          else
          {
            [v17 stringWithFormat:@"%@: ", v18];
          }
          v20 = ;
          *buf = 138543362;
          v35 = v20;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Warning: buySignatureTypes array is set but empty, this is probably a programmer error", buf, 0xCu);
          if (v16)
          {

            v20 = v2;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedPurchaseConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v13)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v22 = AMSLogKey();
          v23 = MEMORY[0x1E696AEC0];
          v24 = objc_opt_class();
          v25 = v24;
          if (v22)
          {
            v2 = AMSLogKey();
            [v23 stringWithFormat:@"%@: [%@] ", v25, v2];
          }

          else
          {
            [v23 stringWithFormat:@"%@: ", v24];
          }
          v26 = ;
          *buf = 138543362;
          v35 = v26;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Warning: buySignatureTypes array is set but empty, this is probably a programmer error", buf, 0xCu);
          if (v22)
          {

            v26 = v2;
          }
        }
      }
    }

    goto LABEL_26;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__AMSPurchaseTask__saveBlindedData__block_invoke;
  v30[3] = &unk_1E73B3A38;
  v31 = v7;
  v8 = v7;
  [buySignatureTypes enumerateObjectsUsingBlock:v30];
  purchaseInfo3 = [(AMSPurchaseTask *)self purchaseInfo];
  purchase3 = [purchaseInfo3 purchase];
  [purchase3 setBlindedData:v8];

  v11 = v31;
LABEL_27:
}

void __35__AMSPurchaseTask__saveBlindedData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[AMSBlinder generateRandomPrivateInput];
  v4 = [AMSBlinder makeBlindedDataWithPrivateInputData:v5];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  delegate = [(AMSPurchaseTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSPurchaseTask *)self delegate];
    purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
    purchase = [purchaseInfo purchase];
    [delegate2 purchase:purchase handleDialogRequest:requestCopy completion:completionCopy];
  }

  else
  {
    delegate2 = +[AMSLogConfig sharedConfig];
    if (!delegate2)
    {
      delegate2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [delegate2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Auth task dialog is being dropped as there is no purchase delegate set on this task.", &v16, 0x16u);
    }
  }
}

+ (id)engagementEventWithInfo:(id)info bag:(id)bag responseDictionary:(id)dictionary error:(id)error
{
  infoCopy = info;
  bagCopy = bag;
  dictionaryCopy = dictionary;
  errorCopy = error;
  v13 = +[AMSDefaults forceEngagementPurchaseSuccess];
  if (errorCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  initForEngagement = [[AMSMetricsEvent alloc] initForEngagement];
  [initForEngagement setProperty:@"purchase" forBodyKey:@"eventType"];
  [initForEngagement setProperty:@"AMS" forBodyKey:@"source"];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  [initForEngagement setProperty:v16 forBodyKey:@"success"];

  v17 = MEMORY[0x1E696AD98];
  purchase = [infoCopy purchase];
  v19 = [v17 numberWithInteger:{objc_msgSend(purchase, "purchaseType")}];
  [initForEngagement setProperty:v19 forBodyKey:@"purchaseType"];

  purchase2 = [infoCopy purchase];
  account = [purchase2 account];
  ams_DSID = [account ams_DSID];
  v23 = [ams_DSID description];
  [initForEngagement setProperty:v23 forBodyKey:@"accountId"];

  purchase3 = [infoCopy purchase];
  buyParams = [purchase3 buyParams];
  dictionary = [buyParams dictionary];
  v27 = [AMSMetricsEvent sanitizedObject:dictionary];
  v28 = [v27 mutableCopy];

  v29 = [bagCopy arrayForKey:@"purchase-event-filter-buy-params"];
  valuePromise = [v29 valuePromise];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __100__AMSPurchaseTask_AppleMediaServices_Project__engagementEventWithInfo_bag_responseDictionary_error___block_invoke;
  v40[3] = &unk_1E73BB8C0;
  v41 = v28;
  v42 = initForEngagement;
  v43 = dictionaryCopy;
  v44 = infoCopy;
  v46 = bagCopy;
  selfCopy = self;
  v45 = errorCopy;
  v31 = bagCopy;
  v32 = errorCopy;
  v33 = infoCopy;
  v34 = dictionaryCopy;
  v35 = initForEngagement;
  v36 = v28;
  v37 = [valuePromise continueWithBlock:v40];

  return v37;
}

id __100__AMSPurchaseTask_AppleMediaServices_Project__engagementEventWithInfo_bag_responseDictionary_error___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) removeObjectForKey:*(*(&v34 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) copy];
  [v8 setProperty:v9 forBodyKey:@"buyParameters"];

  v10 = [*(a1 + 48) objectForKeyedSubscript:@"metrics"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    if (v11)
    {
      [*(a1 + 40) addPropertiesWithDictionary:v11];
    }
  }

  else
  {

    v11 = 0;
  }

  v12 = [*(a1 + 56) purchase];
  v13 = [v12 metricsOverlay];

  if (v13)
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 56) purchase];
    v16 = [v15 metricsOverlay];
    [v14 addPropertiesWithDictionary:v16];
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v38[0] = @"code";
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "code")}];
    v39[0] = v18;
    v38[1] = @"domain";
    v19 = [*(a1 + 64) domain];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1F071BA78;
    }

    v39[1] = v21;
    v38[2] = @"title";
    v22 = [*(a1 + 64) ams_title];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_1F071BA78;
    }

    v39[2] = v24;
    v38[3] = @"message";
    v25 = [*(a1 + 64) ams_message];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_1F071BA78;
    }

    v39[3] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];

    [*(a1 + 40) setProperty:v28 forBodyKey:@"error"];
  }

  v29 = [*(a1 + 80) _filterResponseDictionary:*(a1 + 48) bag:*(a1 + 72)];
  if (v29)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __100__AMSPurchaseTask_AppleMediaServices_Project__engagementEventWithInfo_bag_responseDictionary_error___block_invoke_2;
    v32[3] = &unk_1E73BB898;
    v33 = *(a1 + 40);
    v30 = [v29 continueWithBlock:v32];
  }

  else
  {
    v30 = [AMSPromise promiseWithResult:*(a1 + 40)];
  }

  return v30;
}

AMSPromise *__100__AMSPurchaseTask_AppleMediaServices_Project__engagementEventWithInfo_bag_responseDictionary_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setProperty:a2 forBodyKey:@"responseDictionary"];
  }

  v3 = *(a1 + 32);

  return [AMSPromise promiseWithResult:v3];
}

- (id)performPreauthenticate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to pre-authenticate purchase for device restrictions", buf, 0x16u);
  }

  preauthenticateOptions = [(AMSPurchaseTask *)self preauthenticateOptions];
  v9 = [AMSAuthenticateRequest alloc];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  account = [purchaseInfo account];
  v12 = [(AMSAuthenticateRequest *)v9 initWithAccount:account options:preauthenticateOptions];

  v13 = AMSLogKey();
  [(AMSAuthenticateRequest *)v12 setLogKey:v13];

  v14 = [(AMSPurchaseTask *)self _runAuthenticateRequest:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__AMSPurchaseTask_AppleMediaServices_Project__performPreauthenticate__block_invoke;
  v16[3] = &unk_1E73B3D68;
  v16[4] = self;
  [v14 addFinishBlock:v16];

  return v14;
}

void __69__AMSPurchaseTask_AppleMediaServices_Project__performPreauthenticate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogKey();
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Purchase pre-authentication for device restrictions failed with error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    v11 = [a2 authenticationResults];
    v12 = [v11 valueForKey:*MEMORY[0x1E698DB98]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 32) purchaseInfo];
    [v14 setIdmsTokens:v13];
  }
}

- (id)performPurchaseRequest
{
  v19 = *MEMORY[0x1E69E9840];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  logUUID = [purchase logUUID];

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (logUUID)
    {
      [v8 stringWithFormat:@"%@: [%@] ", v9, logUUID];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9, v16];
    }
    v10 = ;
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Performing purchase", buf, 0xCu);
  }

  purchaseRequestEncoder = [(AMSPurchaseTask *)self purchaseRequestEncoder];
  session = [(AMSPurchaseTask *)self session];
  encodeRequest = [purchaseRequestEncoder encodeRequest];
  v14 = [session dataTaskPromiseWithRequestPromise:encodeRequest];

  return v14;
}

- (id)preauthenticateOptions
{
  v3 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v3 setAuthenticationType:2];
  [(AMSAuthenticateOptions *)v3 setCanMakeAccountActive:0];
  purchaseInfo = [(AMSPurchaseTask *)self purchaseInfo];
  clientInfo = [purchaseInfo clientInfo];
  [(AMSAuthenticateOptions *)v3 setClientInfo:clientInfo];

  [(AMSAuthenticateOptions *)v3 setDebugReason:@"Pre-authentication due to device restrictions around purchasing."];

  return v3;
}

+ (BOOL)shouldPreauthenticatePurchaseWithInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = +[AMSRestrictions requirePasswordImmediately];
  v5 = +[AMSLogConfig sharedPurchaseConfig];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v16 = objc_opt_class();
    v13 = v16;
    v14 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = v14;
    v15 = "%{public}@: [%{public}@] Purchase pre-authentication not required.";
    v17 = oSLogObject;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_26;
  }

  if (!v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v8;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Purchase requires pre-authentication.", &v32, 0x16u);
  }

  if ([infoCopy hasBeenAuthedForBuy])
  {
    v6 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v12 = objc_opt_class();
    v13 = v12;
    v14 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v12;
    v34 = 2114;
    v35 = v14;
    v15 = "%{public}@: [%{public}@] Purchase has already been authed, skipping purchase pre-authentication.";
    goto LABEL_25;
  }

  purchase = [infoCopy purchase];
  account = [purchase account];
  v21 = [AMSBiometrics isAvailableForAccount:account];

  if (v21)
  {
    v6 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v22 = objc_opt_class();
    v13 = v22;
    v14 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v22;
    v34 = 2114;
    v35 = v14;
    v15 = "%{public}@: [%{public}@] Biometrics enabled, skipping purchase pre-authentication.";
    goto LABEL_25;
  }

  purchase2 = [infoCopy purchase];
  ignoreRequirePasswordRestriction = [purchase2 ignoreRequirePasswordRestriction];

  v25 = +[AMSLogConfig sharedPurchaseConfig];
  v6 = v25;
  if (ignoreRequirePasswordRestriction)
  {
    if (!v25)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v26 = objc_opt_class();
    v13 = v26;
    v14 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v26;
    v34 = 2114;
    v35 = v14;
    v15 = "%{public}@: [%{public}@] Purchase is configured to ignore password restriction, skipping purchase pre-authentication.";
LABEL_25:
    v17 = oSLogObject;
    v18 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
    _os_log_impl(&dword_192869000, v17, v18, v15, &v32, 0x16u);

LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  if (!v25)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = v29;
    v31 = AMSSetLogKeyIfNeeded();
    v32 = 138543618;
    v33 = v29;
    v34 = 2114;
    v35 = v31;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enforcing purchase pre-authentication.", &v32, 0x16u);
  }

  v27 = 1;
LABEL_28:

  return v27;
}

@end