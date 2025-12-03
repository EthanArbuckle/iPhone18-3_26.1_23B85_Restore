@interface AMSUIWebBuyAction
- (AMSUIWebBuyAction)initWithJSObject:(id)object context:(id)context;
- (id)_iTunesAccount;
- (id)_runBuy;
- (id)_runBuyWithContentType:(id)type;
- (id)_runLegacyBuy;
- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error;
- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error;
- (id)purchaseContentWithType:(id)type;
- (id)runAction;
- (void)_makeCurrentAccountIfNeeded:(id)needed;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIWebBuyAction

- (AMSUIWebBuyAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v44.receiver = self;
  v44.super_class = AMSUIWebBuyAction;
  v7 = [(AMSUIWebAction *)&v44 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v7->_type = [v8 integerValue];
    }

    v9 = [objectCopy objectForKeyedSubscript:@"legacyBuy"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [objectCopy objectForKeyedSubscript:@"legacyBuy"];
      v7->_legacyBuy = [v10 BOOLValue];
    }

    else
    {
      v7->_legacyBuy = 0;
    }

    v11 = [objectCopy objectForKeyedSubscript:@"buyParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    buyParams = v7->_buyParams;
    v7->_buyParams = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"contentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    contentType = v7->_contentType;
    v7->_contentType = v15;

    v17 = [objectCopy objectForKeyedSubscript:@"requiresAccount"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7->_requiresAccount = bOOLValue;
    v19 = [objectCopy objectForKeyedSubscript:@"metricsOverlay"];
    v20 = 0x1E695D000;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    metricsOverlay = v7->_metricsOverlay;
    v7->_metricsOverlay = v21;

    v23 = [objectCopy objectForKeyedSubscript:@"performanceMetricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    performanceMetricsOverlay = v7->_performanceMetricsOverlay;
    v7->_performanceMetricsOverlay = v24;

    v26 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
    if (objc_opt_respondsToSelector())
    {
      v27 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
      v7->_makeCurrentAccount = [v27 BOOLValue];
    }

    else
    {
      v7->_makeCurrentAccount = 0;
    }

    v28 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E698C810]);
      v30 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];
      v31 = objc_opt_respondsToSelector();
      if (v31)
      {
        v20 = [objectCopy objectForKeyedSubscript:@"sendBlindedData"];
        bOOLValue2 = [v20 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      v33 = [v29 initWithBool:bOOLValue2];
      sendBlindedData = v7->_sendBlindedData;
      v7->_sendBlindedData = v33;

      if (v31)
      {
      }
    }

    context = [(AMSUIWebAction *)v7 context];
    v36 = [objectCopy objectForKeyedSubscript:@"account"];
    v37 = [context iTunesAccountFromJSAccount:v36];
    account = v7->_account;
    v7->_account = v37;

    if (!v7->_account)
    {
      context2 = [(AMSUIWebAction *)v7 context];
      v40 = [objectCopy objectForKeyedSubscript:@"dsid"];
      v41 = [context2 iTunesAccountFromJSDSID:v40];
      v42 = v7->_account;
      v7->_account = v41;
    }
  }

  return v7;
}

- (id)runAction
{
  v27 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AMSUIWebBuyAction;
  runAction = [(AMSUIWebAction *)&v18 runAction];
  buyParams = [(AMSUIWebBuyAction *)self buyParams];
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
    account = [(AMSUIWebBuyAction *)self account];
    v10 = AMSHashIfNeeded();
    *buf = 138544130;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2112;
    v26 = buyParams;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running purchase with account: %{public}@ buyParameters: %@", buf, 0x2Au);
  }

  if (buyParams)
  {
    if (![(AMSUIWebBuyAction *)self legacyBuy]|| ([(AMSUIWebBuyAction *)self _runLegacyBuy], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      contentType = [(AMSUIWebBuyAction *)self contentType];
      if (contentType)
      {
        [(AMSUIWebBuyAction *)self _runBuyWithContentType:contentType];
      }

      else
      {
        [(AMSUIWebBuyAction *)self _runBuy];
      }
      v11 = ;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __30__AMSUIWebBuyAction_runAction__block_invoke;
    v17[3] = &unk_1E7F24B78;
    v17[4] = self;
    [v11 addFinishBlock:v17];
  }

  else
  {
    v13 = MEMORY[0x1E698CAD0];
    v14 = AMSError();
    v11 = [v13 promiseWithError:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

void __30__AMSUIWebBuyAction_runAction__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished purchase", &v14, 0x16u);
  }

  v7 = [*(a1 + 32) context];
  v8 = [v7 signatureResumption];

  if (v8)
  {
    v9 = [*(a1 + 32) context];
    v10 = [v9 additionalHeaders];
    v11 = [v10 mutableCopy];

    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5E0]];
    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5B8]];
    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5C0]];
    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5D0]];
    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5C8]];
    [v11 setObject:0 forKeyedSubscript:*MEMORY[0x1E698C5D8]];
    v12 = [*(a1 + 32) context];
    [v12 setAdditionalHeaders:v11];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(AMSUIWebAction *)self context];
  actionDelegate = [context actionDelegate];
  v11 = [actionDelegate action:self pauseTimeouts:1 handleAuthenticateRequest:requestCopy];

  [v11 addFinishBlock:completionCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__AMSUIWebBuyAction_purchase_handleAuthenticateRequest_completion___block_invoke;
  v12[3] = &unk_1E7F25C18;
  v12[4] = self;
  [v11 addSuccessBlock:v12];
}

void __67__AMSUIWebBuyAction_purchase_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 account];
  [v2 _makeCurrentAccountIfNeeded:v3];
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(AMSUIWebAction *)self context];
  actionDelegate = [context actionDelegate];
  v11 = [actionDelegate action:self pauseTimeouts:1 handleDialogRequest:requestCopy];

  [v11 addFinishBlock:completionCopy];
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AMSUIWebBuyAction_purchase_handleEngagementRequest_completion___block_invoke;
  block[3] = &unk_1E7F25C40;
  v12 = requestCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__AMSUIWebBuyAction_purchase_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [AMSUIEngagementTask alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) context];
  v5 = [v4 bag];
  v6 = [*(a1 + 40) context];
  v7 = [v6 flowController];
  v8 = [v7 currentContainer];
  v10 = [(AMSUIEngagementTask *)v2 initWithRequest:v3 bag:v5 presentingViewController:v8];

  v9 = [(AMSUIEngagementTask *)v10 presentEngagement];
  [v9 addFinishBlock:*(a1 + 48)];
}

- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error
{
  v6 = [(AMSUIWebAction *)self context:purchase];
  flowController = [v6 flowController];
  currentContainer = [flowController currentContainer];
  view = [currentContainer view];
  window = [view window];

  if (error && !window)
  {
    *error = AMSError();
  }

  return window;
}

- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error
{
  v6 = [(AMSUIWebAction *)self presentingSceneIdentifier:purchase];
  v7 = v6;
  if (error && !v6)
  {
    *error = AMSError();
  }

  return v7;
}

- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(AMSUIWebAction *)self context];
  clientInfo = [context clientInfo];
  proxyAppBundleID = [clientInfo proxyAppBundleID];

  if (proxyAppBundleID)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v30 = a2;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  context = [(AMSUIWebAction *)self context];
  clientInfo2 = [context clientInfo];
  proxyAppBundleID = [clientInfo2 bundleIdentifier];

  if (!proxyAppBundleID)
  {
    goto LABEL_18;
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v30 = a2;
    if (v13)
    {
LABEL_12:
      v17 = AMSLogKey();
      v29 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v17, v29];
      v18 = LABEL_14:;
      context = AMSHashIfNeeded();
      v19 = AMSHashIfNeeded();
      *buf = 138543874;
      v32 = v18;
      v33 = 2114;
      v34 = context;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Found scene identifier %{public}@ in %{public}@", buf, 0x20u);
      if (v13)
      {

        v18 = v29;
      }

      a2 = v30;
      goto LABEL_17;
    }

LABEL_13:
    v17 = NSStringFromSelector(a2);
    [v14 stringWithFormat:@"%@: %@ ", v15, v17];
    goto LABEL_14;
  }

LABEL_17:

LABEL_18:
  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = AMSLogKey();
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (v22)
    {
      v25 = AMSLogKey();
      context = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, context];
    }

    else
    {
      v25 = NSStringFromSelector(a2);
      [v23 stringWithFormat:@"%@: %@ ", v24, v25];
    }
    v26 = ;
    v27 = AMSHashIfNeeded();
    *buf = 138543618;
    v32 = v26;
    v33 = 2114;
    v34 = v27;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Using bundle identifier: %{public}@", buf, 0x16u);
    if (v22)
    {

      v26 = context;
    }
  }

  completionCopy[2](completionCopy, proxyAppBundleID, 0);
  v28 = *MEMORY[0x1E69E9840];
}

- (id)_iTunesAccount
{
  account = [(AMSUIWebBuyAction *)self account];
  if (([account ams_isiTunesAccount] & 1) == 0)
  {
    v4 = MEMORY[0x1E6959A48];
    context = [(AMSUIWebAction *)self context];
    clientInfo = [context clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v8 = [v4 ams_sharedAccountStoreForMediaType:accountMediaType];

    v9 = [v8 ams_iTunesAccountForAccount:account];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = account;
    }

    v12 = v11;

    account = v12;
  }

  return account;
}

- (void)_makeCurrentAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[AMSUIWebBuyAction makeCurrentAccount](self, "makeCurrentAccount") || (-[AMSUIWebAction context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), [v4 account], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(neededCopy, "web_matchAccount:", v5), v5, v4, v6))
  {
    context = [(AMSUIWebAction *)self context];
    context2 = [(AMSUIWebAction *)self context];
    clientInfo = [context2 clientInfo];
    [context replaceCurrentAccount:neededCopy clientInfo:clientInfo];
  }
}

- (id)purchaseContentWithType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AMSUIWebPluginPurchaseContentTypeApp])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v5 = getASDPurchaseClass_softClass;
    v39 = getASDPurchaseClass_softClass;
    if (!getASDPurchaseClass_softClass)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __getASDPurchaseClass_block_invoke;
      v35[3] = &unk_1E7F241B0;
      v35[4] = &v36;
      __getASDPurchaseClass_block_invoke(v35);
      v5 = v37[3];
    }

    v6 = v5;
    _Block_object_dispose(&v36, 8);
    v7 = objc_alloc_init(v5);
    v8 = objc_alloc(MEMORY[0x1E698C818]);
    buyParams = [(AMSUIWebBuyAction *)self buyParams];
    v10 = [v8 initWithString:buyParams];

    account = [(AMSUIWebBuyAction *)self account];
    ams_DSID = [account ams_DSID];
    [v7 setAccountIdentifier:ams_DSID];

    stringValue = [v10 stringValue];
    [v7 setBuyParameters:stringValue];

    v14 = MEMORY[0x1E696AD98];
    v15 = [v10 parameterForKey:*MEMORY[0x1E698C530]];
    v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "longLongValue")}];
    [v7 setItemID:v16];

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    presentingSceneIdentifierPromise = [(AMSUIWebAction *)self presentingSceneIdentifierPromise];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke;
    v33[3] = &unk_1E7F25C68;
    v33[4] = self;
    v19 = v7;
    v34 = v19;
    v20 = [presentingSceneIdentifierPromise continueWithBinaryPromiseBlock:v33];

    [v17 addObject:v20];
    presentingSceneBundleIdentifierPromise = [(AMSUIWebAction *)self presentingSceneBundleIdentifierPromise];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_90;
    v31[3] = &unk_1E7F25C68;
    v31[4] = self;
    v22 = v19;
    v32 = v22;
    v23 = [presentingSceneBundleIdentifierPromise continueWithBinaryPromiseBlock:v31];

    [v17 addObject:v23];
    v24 = [MEMORY[0x1E698C7F0] promiseWithAll:v17];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_91;
    v29[3] = &unk_1E7F25CB0;
    v30 = v22;
    v25 = v22;
    v26 = [v24 continueWithPromiseBlock:v29];
  }

  else
  {
    v27 = MEMORY[0x1E698CAD0];
    v10 = AMSError();
    v26 = [v27 promiseWithError:v10];
  }

  return v26;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = v13;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@Getting presenting scene identifier failed. Error: %{public}@", buf, 0x16u);
      if (v10)
      {

        v15 = v3;
      }
    }
  }

  v16 = [v6 value];
  [*(a1 + 40) setPresentingSceneIdentifier:v16];

  v17 = [MEMORY[0x1E698C7F0] promiseWithSuccess];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = v13;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@Getting presenting scene bundle id identifier failed. Error: %{public}@", buf, 0x16u);
      if (v10)
      {

        v15 = v3;
      }
    }
  }

  v16 = [v6 value];
  [*(a1 + 40) setPresentingSceneBundleIdentifier:v16];

  v17 = [MEMORY[0x1E698C7F0] promiseWithSuccess];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_91(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v6 = getASDPurchaseManagerClass_softClass;
  v17 = getASDPurchaseManagerClass_softClass;
  if (!getASDPurchaseManagerClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getASDPurchaseManagerClass_block_invoke;
    v13[3] = &unk_1E7F241B0;
    v13[4] = &v14;
    __getASDPurchaseManagerClass_block_invoke(v13);
    v6 = v15[3];
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  v8 = [v6 sharedManager];
  v9 = *(a1 + 32);
  v10 = [v5 completionHandlerAdapter];
  [v8 processPurchase:v9 withResponseHandler:v10];

  v11 = [v5 continueWithBlock:&__block_literal_global_19];

  return v11;
}

id __45__AMSUIWebBuyAction_purchaseContentWithType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 items];
  v6 = [v5 firstObject];

  if (v4)
  {
    v7 = v4;
LABEL_4:
    v8 = v7;
    v9 = [MEMORY[0x1E698CAD0] promiseWithError:v7];

    goto LABEL_5;
  }

  v7 = [v6 error];
  if (v7)
  {
    goto LABEL_4;
  }

  if (([v6 success] & 1) == 0)
  {
    v7 = AMSError();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = [MEMORY[0x1E698CAD0] promiseWithResult:&unk_1F394A968];
LABEL_5:

  return v9;
}

- (id)_runBuy
{
  v37 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v34 = v5;
    v35 = 2114;
    v36 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting buy", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x1E698C818]);
  buyParams = [(AMSUIWebBuyAction *)self buyParams];
  v27 = [v7 initWithString:buyParams];
  context = [(AMSUIWebAction *)self context];
  clientInfo = [context clientInfo];
  requiresAccount = [(AMSUIWebBuyAction *)self requiresAccount];
  context2 = [(AMSUIWebAction *)self context];
  additionalHeaders = [context2 additionalHeaders];
  sendBlindedData = [(AMSUIWebBuyAction *)self sendBlindedData];
  context3 = [(AMSUIWebAction *)self context];
  metricsOverlay = [context3 metricsOverlay];
  context4 = [(AMSUIWebAction *)self context];
  performanceMetricsOverlay = [context4 performanceMetricsOverlay];
  v17 = [(AMSUIWebBuyAction *)self configurePurchaseWithBuyParams:v27 isUserInitiated:1 clientInfo:clientInfo requiresAccount:requiresAccount additionalHeaders:additionalHeaders sendBlindedData:sendBlindedData metricsOverlay:metricsOverlay performanceMetricsOverlay:performanceMetricsOverlay];

  v18 = [AMSUIPurchaseTask alloc];
  context5 = [(AMSUIWebAction *)self context];
  v20 = [context5 bag];
  v21 = [(AMSPurchaseTask *)v18 initWithPurchase:v17 bag:v20];

  [(AMSPurchaseTask *)v21 setDelegate:self];
  performPurchase = [(AMSPurchaseTask *)v21 performPurchase];
  objc_initWeak(buf, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __28__AMSUIWebBuyAction__runBuy__block_invoke;
  v30[3] = &unk_1E7F25CD8;
  objc_copyWeak(&v32, buf);
  v23 = v17;
  v31 = v23;
  [performPurchase addFinishBlock:v30];
  v24 = [performPurchase thenWithBlock:&__block_literal_global_113];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void __28__AMSUIWebBuyAction__runBuy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = *(a1 + 32);
  v14 = @"purchase";
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v5 ams_errorByAddingUserInfo:v9];

  v11 = [WeakRetained context];
  v12 = [v11 actionDelegate];
  [v12 actionDidFinishPurchaseWithResult:v6 error:v10];

  v13 = *MEMORY[0x1E69E9840];
}

id __28__AMSUIWebBuyAction__runBuy__block_invoke_2(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  [v4 postNotificationName:@"AMSPurchaseFinishedNotification" object:0];

  v13[0] = @"success";
  v13[1] = @"responseData";
  v14[0] = @"true";
  v5 = [v3 responseDictionary];

  v6 = [v5 ams_sanitizeServerObject];
  v7 = v6;
  v8 = &stru_1F3921360;
  if (v6)
  {
    v8 = v6;
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_runBuyWithContentType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = AMSLogKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = objc_opt_class();
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = typeCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Purchasing content with type: %{public}@", buf, 0x20u);
  }

  v8 = [(AMSUIWebBuyAction *)self _purchasePluginIdentifierForContentType:typeCopy];
  if (!v8)
  {
    v17 = [(AMSUIWebBuyAction *)self purchaseContentWithType:typeCopy];
    goto LABEL_18;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543874;
    v28 = v11;
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading plugin: %{public}@", buf, 0x20u);
  }

  context = [(AMSUIWebAction *)self context];
  pluginLoader = [context pluginLoader];
  v14 = [pluginLoader pluginForBundleIdentifier:v8];

  if (!v14)
  {
    v18 = MEMORY[0x1E698CAD0];
LABEL_16:
    buyParams = AMSError();
    v16 = [v18 promiseWithError:buyParams];
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = MEMORY[0x1E698CAD0];
    goto LABEL_16;
  }

  buyParams = [(AMSUIWebBuyAction *)self buyParams];
  v16 = [v14 purchaseContentWithType:typeCopy buyParams:buyParams];
LABEL_17:
  v17 = v16;

LABEL_18:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke;
  v25[3] = &unk_1E7F25D20;
  v25[4] = self;
  v19 = v5;
  v26 = v19;
  [v17 addSuccessBlock:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke_133;
  v23[3] = &unk_1E7F24990;
  v23[4] = self;
  v24 = v19;
  v20 = v19;
  [v17 addErrorBlock:v23];

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

void __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Purchase finished", &v9, 0x16u);
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"AMSPurchaseFinishedNotification" object:0];

  v8 = *MEMORY[0x1E69E9840];
}

void __44__AMSUIWebBuyAction__runBuyWithContentType___block_invoke_133(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Purchase failed: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_runLegacyBuy
{
  v12[2] = *MEMORY[0x1E69E9840];
  presentingSceneIdentifierPromise = [(AMSUIWebAction *)self presentingSceneIdentifierPromise];
  presentingSceneBundleIdentifierPromise = [(AMSUIWebAction *)self presentingSceneBundleIdentifierPromise];
  v5 = MEMORY[0x1E698CAD0];
  v12[0] = presentingSceneIdentifierPromise;
  v12[1] = presentingSceneBundleIdentifierPromise;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v5 promiseWithAll:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke;
  v11[3] = &unk_1E7F25D98;
  v11[4] = self;
  v8 = [v7 thenWithBlock:v11];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke(uint64_t a1, void *a2)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = v11;
    if (v8)
    {
      v2 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v12, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting legacy buy", &buf, 0xCu);
    if (v8)
    {

      v13 = v2;
    }
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2050000000;
  v14 = getSSPurchaseClass_softClass;
  v56 = getSSPurchaseClass_softClass;
  if (!getSSPurchaseClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v58 = __getSSPurchaseClass_block_invoke;
    v59 = &unk_1E7F241B0;
    v60 = &v53;
    __getSSPurchaseClass_block_invoke(&buf);
    v14 = v54[3];
  }

  v15 = v14;
  _Block_object_dispose(&v53, 8);
  v16 = objc_alloc_init(v14);
  v17 = [*(a1 + 32) buyParams];
  [v16 setBuyParameters:v17];

  v18 = [*(a1 + 32) account];
  v19 = [v18 ams_DSID];
  [v16 setAccountIdentifier:v19];

  v20 = [v4 objectAtIndexedSubscript:0];
  v21 = [v20 value];
  [v16 setPresentingSceneIdentifier:v21];

  v22 = [v4 objectAtIndexedSubscript:1];
  v23 = [v22 value];
  [v16 setPresentingSceneBundleIdentifier:v23];

  v24 = [*(a1 + 32) context];
  v25 = [v24 additionalHeaders];
  [v16 setTidHeaders:v25];

  v26 = [*(a1 + 32) account];
  LODWORD(v25) = [v26 ams_isSandboxAccount];

  if (v25)
  {
    v27 = [v16 requestProperties];
    v28 = [v27 mutableCopy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v53 = 0;
      v54 = &v53;
      v55 = 0x2050000000;
      v31 = getSSMutableURLRequestPropertiesClass_softClass;
      v56 = getSSMutableURLRequestPropertiesClass_softClass;
      if (!getSSMutableURLRequestPropertiesClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v58 = __getSSMutableURLRequestPropertiesClass_block_invoke;
        v59 = &unk_1E7F241B0;
        v60 = &v53;
        __getSSMutableURLRequestPropertiesClass_block_invoke(&buf);
        v31 = v54[3];
      }

      v32 = v31;
      _Block_object_dispose(&v53, 8);
      v30 = objc_alloc_init(v31);
    }

    v33 = v30;

    [v33 setURLBagType:1];
    [v16 setRequestProperties:v33];
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2050000000;
  v34 = getSSPurchaseRequestClass_softClass;
  v56 = getSSPurchaseRequestClass_softClass;
  if (!getSSPurchaseRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v58 = __getSSPurchaseRequestClass_block_invoke;
    v59 = &unk_1E7F241B0;
    v60 = &v53;
    __getSSPurchaseRequestClass_block_invoke(&buf);
    v34 = v54[3];
  }

  v35 = v34;
  _Block_object_dispose(&v53, 8);
  v36 = [v34 alloc];
  v62[0] = v16;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
  v38 = [v36 initWithPurchases:v37];

  [v38 setBackgroundRequest:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4;
  v60 = __Block_byref_object_dispose__4;
  v61 = 0;
  v39 = AMSLogKey();
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_136;
  v52[3] = &unk_1E7F25D48;
  v52[4] = &buf;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_2;
  v47[3] = &unk_1E7F25D70;
  v40 = v39;
  p_buf = &buf;
  v41 = *(a1 + 32);
  v48 = v40;
  v49 = v41;
  v42 = v5;
  v50 = v42;
  [v38 startWithPurchaseResponseBlock:v52 completionBlock:v47];
  v43 = v50;
  v44 = v42;

  _Block_object_dispose(&buf, 8);
  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

void __34__AMSUIWebBuyAction__runLegacyBuy__block_invoke_2(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  if (v3)
  {
LABEL_4:
    v7 = [v3 domain];
    if ([v7 isEqualToString:@"SSErrorDomain"])
    {
      v8 = [v3 code];

      if (v8 != 134)
      {
LABEL_8:
        v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
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
          *buf = 138543874;
          v48 = v12;
          v49 = 2114;
          v50 = v13;
          v51 = 2114;
          v52 = v3;
          _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy purchase failed: %{public}@", buf, 0x20u);
        }

        [*(a1 + 48) finishWithError:v3];
        goto LABEL_13;
      }

      AMSError();
      v3 = v7 = v3;
    }

    goto LABEL_8;
  }

  v6 = [*(*(*(a1 + 56) + 8) + 40) error];
  if (v6)
  {
    v3 = v6;
    goto LABEL_4;
  }

  v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v15)
  {
    v15 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    *buf = 138543618;
    v48 = v18;
    v49 = 2114;
    v50 = v19;
    _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Legacy buy finished successfully", buf, 0x16u);
  }

  v20 = [*(*(*(a1 + 56) + 8) + 40) URLResponse];
  v3 = [v20 bodyData];

  if (v3)
  {
    v44 = 0;
    v21 = [MEMORY[0x1E698C888] objectWithData:v3 encoding:0 error:&v44];
    v22 = v44;
    v23 = v21;
    objc_opt_class();
    v24 = 0;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    if (!v24 || v22)
    {
      v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v25)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 40);
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        *buf = 138543874;
        v48 = v28;
        v49 = 2114;
        v50 = v29;
        v51 = 2114;
        v52 = v22;
        _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode server response. %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v30 = [*(*(*(a1 + 56) + 8) + 40) purchase];
  v31 = [v30 accountIdentifier];

  if (v31)
  {
    v32 = MEMORY[0x1E6959A48];
    v33 = [*(a1 + 40) context];
    v34 = [v33 clientInfo];
    v35 = [v34 accountMediaType];
    v36 = [v32 ams_sharedAccountStoreForMediaType:v35];

    v37 = [*(*(*(a1 + 56) + 8) + 40) purchase];
    v38 = [v37 accountIdentifier];
    v39 = [v36 ams_iTunesAccountWithDSID:v38];

    [*(a1 + 40) _makeCurrentAccountIfNeeded:v39];
  }

  v45[0] = @"success";
  v45[1] = @"responseData";
  v46[0] = @"true";
  v40 = [v24 ams_sanitizeServerObject];
  v41 = v40;
  v42 = &stru_1F3921360;
  if (v40)
  {
    v42 = v40;
  }

  v46[1] = v42;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  [*(a1 + 48) finishWithResult:v43];
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

@end