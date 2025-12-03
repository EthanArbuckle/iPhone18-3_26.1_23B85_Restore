@interface AMSPurchaseProtocolHandler
+ (id)reversePushSamplingPercentageForTask:(id)task;
- (AMSPurchaseProtocolHandler)init;
- (BOOL)_isEquivalentURL:(id)l toURL:(id)rL;
- (BOOL)_shouldRetryForFailureAction:(id)action response:(id)response task:(id)task decodedObject:(id)object responseDictionary:(id)dictionary;
- (id)_determineUpdatedBuyParamsFromResponse:(id)response urlAction:(id)action selectedAction:(id)selectedAction purchaseInfo:(id)info;
- (id)_shouldRedirectWithPurchaseInfo:(id)info bag:(id)bag urlAction:(id)action currentURL:(id)l;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)_syncKeybagFromResponse:(id)response purchaseInfo:(id)info;
- (void)_updatePasswordSettingWithBuyParams:(id)params account:(id)account;
- (void)_updateSubscriptionStatusFromBody:(id)body account:(id)account;
- (void)didCreateTask:(id)task fromRequest:(id)request completionHandler:(id)handler;
- (void)handleCompletionWithTask:(id)task metrics:(id)metrics decodedObject:(id)object completionHandler:(id)handler;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler;
- (void)setSession:(id)session;
@end

@implementation AMSPurchaseProtocolHandler

- (AMSPurchaseProtocolHandler)init
{
  v3.receiver = self;
  v3.super_class = AMSPurchaseProtocolHandler;
  result = [(AMSURLProtocolHandler *)&v3 init];
  if (result)
  {
    result->_propertiesLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  [sessionCopy setDelegate:self];
  v5.receiver = self;
  v5.super_class = AMSPurchaseProtocolHandler;
  [(AMSURLProtocolHandler *)&v5 setSession:sessionCopy];

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (void)handleCompletionWithTask:(id)task metrics:(id)metrics decodedObject:(id)object completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  objectCopy = object;
  handlerCopy = handler;
  metricsCopy = metrics;
  v13 = [AMSURLTaskInfo taskInfoForTask:taskCopy];
  properties = [v13 properties];
  purchaseInfo = [properties purchaseInfo];

  v16 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 objectForKeyedSubscript:@"failureType"];
  delegate = [purchaseInfo delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v36 = handlerCopy;
    v37 = taskCopy;
    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      purchase = [purchaseInfo purchase];
      logUUID = [purchase logUUID];
      *buf = 138543362;
      v49 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSPurchaseProtocolHandler: [%{public}@] Calling will process response", buf, 0xCu);
    }

    delegate2 = [purchaseInfo delegate];
    purchase2 = [purchaseInfo purchase];
    v27 = [v17 copy];
    [delegate2 purchase:purchase2 willProcessResponse:v27];

    handlerCopy = v36;
    taskCopy = v37;
  }

  account = [purchaseInfo account];
  [(AMSPurchaseProtocolHandler *)self _updateSubscriptionStatusFromBody:v17 account:account];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke;
  v40[3] = &unk_1E73BB0B0;
  v40[4] = self;
  v41 = v17;
  v42 = purchaseInfo;
  v43 = v13;
  v44 = taskCopy;
  v45 = v18;
  v46 = v16;
  v47 = handlerCopy;
  v39.receiver = self;
  v39.super_class = AMSPurchaseProtocolHandler;
  v29 = handlerCopy;
  v30 = v16;
  v31 = v18;
  v32 = taskCopy;
  v33 = v13;
  v34 = purchaseInfo;
  v35 = v17;
  [(AMSURLProtocolHandler *)&v39 handleCompletionWithTask:v32 metrics:metricsCopy decodedObject:v30 completionHandler:v40];
}

void __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke(id *a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__56;
  v62 = __Block_byref_object_dispose__56;
  v63 = a2;
  v47 = v63;
  v4 = [v63 dialogResult];

  if (v4)
  {
    v5 = [v59[5] dialogResult];
    v6 = [v5 selectedActionIdentifier];
    v7 = v6;
    v8 = @"AMSDialogResultDismissIdentifier";
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [v59[5] dialogResult];
    v11 = [v10 originalRequest];
    v12 = [v11 locateActionWithIdentifier:v9];

    if (v12)
    {
      if (([v12 ams_resolvedInterruption] & 1) != 0 || objc_msgSend(v12, "ams_actionType") == 4)
      {
        v13 = v59[5];
        if (!v13 || [v13 actionType] != 2)
        {
          v14 = +[AMSURLAction retryAction];
          v15 = v59[5];
          v59[5] = v14;
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = [v12 identifier];
        v18 = [v16 stringWithFormat:@"%@-%@", 0x1F073A158, v17];
        [v59[5] setRetryIdentifier:v18];
      }

      else
      {
        if ([v12 style] != 2)
        {
          goto LABEL_13;
        }

        v42 = [v59[5] error];
        if (!v42)
        {
          goto LABEL_13;
        }

        v43 = [v59[5] actionType] == 3;

        if (!v43)
        {
          goto LABEL_13;
        }

        v44 = [v59[5] error];
        v17 = AMSError(6, @"Purchase Cancelled", @"The dialog was cancelled", v44);

        v45 = [AMSURLAction actionWithError:v17];
        v18 = v59[5];
        v59[5] = v45;
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  v19 = [a1[4] _determineUpdatedBuyParamsFromResponse:a1[5] urlAction:v59[5] selectedAction:v12 purchaseInfo:a1[6]];
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [a1[6] purchase];
    v22 = [v46 logUUID];
    v23 = MEMORY[0x1E696AEC0];
    if (v22)
    {
      v24 = objc_opt_class();
      v25 = [a1[6] purchase];
      v2 = [v25 logUUID];
      v26 = [v23 stringWithFormat:@"%@: [%@] ", v24, v2];
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      v25 = v26;
    }

    v27 = AMSHashIfNeeded(v19);
    *buf = 138543618;
    v65 = v26;
    v66 = 2114;
    v67 = v27;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Response determined updated buyParams = %{public}@", buf, 0x16u);
    if (v22)
    {
    }
  }

  [a1[6] setBuyParams:v19];
  v28 = a1[4];
  v29 = [a1[7] properties];
  v30 = [v29 account];
  [v28 _updatePasswordSettingWithBuyParams:v19 account:v30];

  v31 = a1[4];
  v32 = a1[6];
  v33 = [a1[7] properties];
  v34 = [v33 bag];
  v35 = v59[5];
  v36 = [a1[8] currentRequest];
  v37 = [v36 URL];
  v38 = [v31 _shouldRedirectWithPurchaseInfo:v32 bag:v34 urlAction:v35 currentURL:v37];

  if (!v38)
  {
LABEL_35:
    if (v59[5])
    {
      [AMSOptional optionalWithValue:?];
    }

    else
    {
      +[AMSOptional optionalWithNil];
    }
    v39 = ;
    v38 = [AMSPromise promiseWithResult:v39];
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_74;
  v48[3] = &unk_1E73BB088;
  v57 = &v58;
  v49 = a1[9];
  v40 = a1[8];
  v41 = a1[4];
  v50 = v40;
  v51 = v41;
  v52 = a1[10];
  v53 = a1[5];
  v54 = a1[6];
  v55 = a1[7];
  v56 = a1[11];
  [v38 addFinishBlock:v48];

  _Block_object_dispose(&v58, 8);
}

void __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_74(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 value];

  if (v6)
  {
    v7 = [v5 value];
    v8 = *(*(a1 + 96) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if ([*(*(*(a1 + 96) + 8) + 40) actionType] == 2 || objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "actionType") == 1 || !*(a1 + 32))
  {
    [*(a1 + 48) _syncKeybagFromResponse:*(a1 + 64) purchaseInfo:*(a1 + 72)];
  }

  else
  {
    v10 = [*(a1 + 40) response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if ([*(a1 + 48) _shouldRetryForFailureAction:*(*(*(a1 + 96) + 8) + 40) response:v11 task:*(a1 + 40) decodedObject:*(a1 + 56) responseDictionary:*(a1 + 64)])
    {
      v32 = +[AMSURLAction retryAction];
      v33 = *(*(a1 + 96) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = *(*(*(a1 + 96) + 8) + 40);
    if (!v14)
    {
      goto LABEL_25;
    }

    [v14 actionType];
    goto LABEL_16;
  }

  v12 = [*(a1 + 32) integerValue] & 0xFFFFFFFFFFFFFFFDLL;
  v13 = *(*(*(a1 + 96) + 8) + 40);
  if (v13)
  {
    if ([v13 actionType] != 3 || v12 != 1001)
    {
LABEL_16:
      v15 = *(*(*(a1 + 96) + 8) + 40);
      if (v15 && [v15 actionType])
      {
        goto LABEL_29;
      }

LABEL_25:
      v24 = [*(a1 + 64) objectForKeyedSubscript:@"cancel-purchase-batch"];
      if (objc_opt_respondsToSelector())
      {
        v25 = [*(a1 + 64) objectForKeyedSubscript:@"cancel-purchase-batch"];
        v26 = [v25 BOOLValue];

        if (!v26)
        {
LABEL_29:
          v30 = [[AMSOptional alloc] initWithValue:*(*(*(a1 + 96) + 8) + 40)];
          v31 = [AMSPromise promiseWithResult:v30];
          goto LABEL_39;
        }

        v24 = AMSError(305, @"Purchase Failed", @"Server canceled the purchase", 0);
        v27 = [AMSURLAction actionWithError:v24];
        v28 = *(*(a1 + 96) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;
      }

      goto LABEL_29;
    }
  }

  else if (v12 != 1001)
  {
    goto LABEL_25;
  }

  v16 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 72) purchase];
    v19 = [v18 logUUID];
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v22 = v21;
    if (v19)
    {
      v2 = [*(a1 + 72) purchase];
      v3 = [v2 logUUID];
      [v20 stringWithFormat:@"%@: [%@] ", v22, v3];
    }

    else
    {
      [v20 stringWithFormat:@"%@: ", v21];
    }
    v23 = ;
    v35 = *(a1 + 32);
    *buf = 138543618;
    v40 = v23;
    v41 = 2114;
    v42 = v35;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Response has failureType %{public}@, authenticating…", buf, 0x16u);
    if (v19)
    {

      v23 = v2;
    }
  }

  v30 = [*(a1 + 80) response];
  v31 = [AMSFinanceAuthenticateResponse performAuthFromResponse:v30 taskInfo:*(a1 + 80)];
LABEL_39:
  v36 = v31;

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_87;
  v37[3] = &unk_1E73B7FF8;
  v38 = *(a1 + 88);
  [v36 addFinishBlock:v37];
}

void __95__AMSPurchaseProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_87(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  (*(v2 + 16))(v2, v3);
}

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  taskCopy = task;
  handlerCopy = handler;
  v46 = taskCopy;
  v10 = [AMSURLTaskInfo taskInfoForTask:taskCopy];
  properties = [v10 properties];
  purchaseInfo = [properties purchaseInfo];

  account = [purchaseInfo account];
  ams_DSID = [account ams_DSID];
  if (ams_DSID)
  {
    v15 = ams_DSID;
    v44 = account;
    properties2 = [v10 properties];
    account2 = [properties2 account];
    ams_DSID2 = [account2 ams_DSID];
    if (ams_DSID2)
    {
      v19 = ams_DSID2;
      ams_DSID3 = [v44 ams_DSID];
      [v10 properties];
      v21 = v43 = purchaseInfo;
      account3 = [v21 account];
      ams_DSID4 = [account3 ams_DSID];
      LODWORD(purchase2) = [ams_DSID3 isEqual:ams_DSID4];

      purchaseInfo = v43;
      account = v44;

      if (purchase2)
      {
        v24 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v24)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v24 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          purchase = [v43 purchase];
          logUUID = [purchase logUUID];
          v28 = MEMORY[0x1E696AEC0];
          v29 = objc_opt_class();
          v30 = v29;
          if (logUUID)
          {
            purchase2 = [v43 purchase];
            logUUID2 = [purchase2 logUUID];
            [v28 stringWithFormat:@"%@: [%@] ", v30, logUUID2];
          }

          else
          {
            [v28 stringWithFormat:@"%@: ", v29];
          }
          v31 = ;
          account = v44;
          v32 = AMSHashIfNeeded(v44);
          *buf = 138543618;
          v56 = v31;
          v57 = 2114;
          v58 = v32;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Purchase account has changed to: %{public}@", buf, 0x16u);
          if (logUUID)
          {

            v31 = purchase2;
          }
        }

        properties3 = [v10 properties];
        [properties3 setAccount:account];
      }
    }

    else
    {
    }
  }

  v34 = [requestCopy mutableCopy];
  properties4 = [v10 properties];
  v36 = [properties4 bag];
  v37 = [AMSPurchaseRequestEncoder configureRequest:v34 purchaseInfo:purchaseInfo bag:v36];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __92__AMSPurchaseProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke;
  v49[3] = &unk_1E73BB0D8;
  v50 = v34;
  v51 = v46;
  redirectCopy = redirect;
  selfCopy = self;
  v53 = handlerCopy;
  v38 = handlerCopy;
  v39 = v46;
  v40 = v34;
  [v37 addFinishBlock:v49];
}

void __92__AMSPurchaseProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7.receiver = v2;
  v7.super_class = AMSPurchaseProtocolHandler;
  objc_msgSendSuper2(&v7, sel_reconfigureNewRequest_originalTask_redirect_completionHandler_, v3, v4, v5, v6);
}

- (void)didCreateTask:(id)task fromRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  v11 = [AMSURLTaskInfo taskInfoForTask:taskCopy];
  properties = [v11 properties];
  purchaseInfo = [properties purchaseInfo];

  purchase = [purchaseInfo purchase];
  v15 = purchase;
  if (purchaseInfo)
  {
    v16 = purchase == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    buyParams = [purchaseInfo buyParams];
    v18 = [buyParams containsKey:@"pkPayment"];

    activityLabel = [v15 activityLabel];
    if ([v15 purchaseType] || (v18 & 1) == 0)
    {
      if ((([v15 purchaseType] == 3) & v18) != 0)
      {
        v20 = 8;
      }

      else
      {
        v20 = activityLabel;
      }
    }

    else
    {
      v20 = 6;
    }

    v34 = v11;
    metricsActivities = [v15 metricsActivities];
    v22 = [metricsActivities count];

    v23 = [AMSMetricsActivity alloc];
    v24 = v23;
    if (v22)
    {
      metricsActivities2 = [v15 metricsActivities];
      [metricsActivities2 firstObject];
      selfCopy = self;
      v26 = handlerCopy;
      v28 = v27 = requestCopy;
      nwActivity = [v28 nwActivity];
      v30 = [(AMSMetricsActivity *)v24 initWithLabel:v20 parent:nwActivity];

      requestCopy = v27;
      handlerCopy = v26;
      self = selfCopy;
    }

    else
    {
      v30 = [(AMSMetricsActivity *)v23 initWithLabel:v20];
    }

    metricsActivities3 = [v15 metricsActivities];
    [metricsActivities3 addObject:v30];

    [(AMSMetricsActivity *)v30 activate];
    nwActivity2 = [(AMSMetricsActivity *)v30 nwActivity];
    [taskCopy set_nw_activity:nwActivity2];

    v11 = v34;
  }

  v35.receiver = self;
  v35.super_class = AMSPurchaseProtocolHandler;
  [(AMSURLProtocolHandler *)&v35 didCreateTask:taskCopy fromRequest:requestCopy completionHandler:handlerCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10 = [AMSURLTaskInfo taskInfoForTask:task];
  properties = [v10 properties];
  purchaseInfo = [properties purchaseInfo];

  delegate = [purchaseInfo delegate];
  purchase = [purchaseInfo purchase];
  isUserInitiated = [purchase isUserInitiated];

  if ((isUserInitiated & 1) == 0)
  {
    v24 = @"Not user initiated";
LABEL_6:
    v25 = AMSError(2, @"Purchase Dialog Failed", v24, 0);
    completionCopy[2](completionCopy, 0, v25);

    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v24 = @"Purchase delegate not observing callback";
    goto LABEL_6;
  }

  purchase2 = [purchaseInfo purchase];
  metricsOverlay = [purchase2 metricsOverlay];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__AMSPurchaseProtocolHandler_AMSURLSession_task_handleDialogRequest_completion___block_invoke;
  v29[3] = &unk_1E73B55D8;
  v18 = requestCopy;
  v30 = v18;
  [metricsOverlay enumerateKeysAndObjectsUsingBlock:v29];

  properties2 = [v10 properties];
  purchaseInfo2 = [properties2 purchaseInfo];
  account = [purchaseInfo2 account];

  purchase3 = [purchaseInfo purchase];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__AMSPurchaseProtocolHandler_AMSURLSession_task_handleDialogRequest_completion___block_invoke_2;
  v26[3] = &unk_1E73BB100;
  v27 = account;
  v28 = completionCopy;
  v23 = account;
  [delegate purchase:purchase3 handleDialogRequest:v18 completion:v26];

LABEL_7:
}

void __80__AMSPurchaseProtocolHandler_AMSURLSession_task_handleDialogRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) metricsEvent];
    [v6 setProperty:v5 forBodyKey:v7];
  }
}

void __80__AMSPurchaseProtocolHandler_AMSURLSession_task_handleDialogRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 originalRequest];
  v8 = *(a1 + 32);
  v9 = [v7 metricsEvent];
  [v9 setAccount:v8];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v7 buttonActions];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(a1 + 32);
        v16 = [*(*(&v17 + 1) + 8 * v14) metricsEvent];
        [v16 setAccount:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = [AMSURLTaskInfo taskInfoForTask:task];
  properties = [v9 properties];
  purchaseInfo = [properties purchaseInfo];

  delegate = [purchaseInfo delegate];
  if (objc_opt_respondsToSelector())
  {
    purchase = [purchaseInfo purchase];
    [delegate purchase:purchase handleAuthenticateRequest:requestCopy completion:completionCopy];
  }

  else
  {
    purchase = AMSError(2, @"Purchase Authentication Failed", @"Purchase delegate not observing callback", 0);
    completionCopy[2](completionCopy, 0, purchase);
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = [AMSURLTaskInfo taskInfoForTask:task];
  properties = [v9 properties];
  purchaseInfo = [properties purchaseInfo];

  delegate = [purchaseInfo delegate];
  metricsOverlay = [requestCopy metricsOverlay];
  if (metricsOverlay && (v14 = metricsOverlay, [purchaseInfo purchase], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "metricsOverlay"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16))
  {
    metricsOverlay2 = [requestCopy metricsOverlay];
    purchase = [purchaseInfo purchase];
    metricsOverlay3 = [purchase metricsOverlay];
    v20 = [metricsOverlay2 ams_dictionaryByAddingEntriesFromDictionary:metricsOverlay3];
    [requestCopy setMetricsOverlay:v20];
  }

  else
  {
    purchase2 = [purchaseInfo purchase];
    metricsOverlay4 = [purchase2 metricsOverlay];

    if (!metricsOverlay4)
    {
      goto LABEL_7;
    }

    metricsOverlay2 = [purchaseInfo purchase];
    purchase = [metricsOverlay2 metricsOverlay];
    [requestCopy setMetricsOverlay:purchase];
  }

LABEL_7:
  if (objc_opt_respondsToSelector())
  {
    purchase3 = [purchaseInfo purchase];
    [delegate purchase:purchase3 handleEngagementRequest:requestCopy completion:completionCopy];
  }

  else
  {
    purchase3 = AMSError(2, @"Purchase Engagement Failed", @"Purchase delegate not observing callback", 0);
    completionCopy[2](completionCopy, 0, purchase3);
  }
}

+ (id)reversePushSamplingPercentageForTask:(id)task
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = [AMSURLTaskInfo taskInfoForTask:task];
  properties = [v6 properties];
  purchaseInfo = [properties purchaseInfo];

  buyParams = [purchaseInfo buyParams];
  v10 = buyParams;
  if (buyParams)
  {
    v11 = [buyParams parameterForKey:0x1F0722118];
    if (v11)
    {
      properties2 = [v6 properties];
      v13 = [properties2 bag];

      if (v13)
      {
        v14 = objc_alloc_init(AMSMutablePromise);
        v15 = [v13 dictionaryForKey:@"aps-allowed-product-type"];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __67__AMSPurchaseProtocolHandler_reversePushSamplingPercentageForTask___block_invoke;
        v40[3] = &unk_1E73BB128;
        v41 = v6;
        selfCopy = self;
        v16 = v14;
        v42 = v16;
        v43 = v11;
        [v15 valueWithCompletion:v40];
        v17 = v43;
        v18 = v16;
      }

      else
      {
        v34 = AMSError(2, @"Task Missing", @"Cannot determine reverse push sampling percentage for a nil bag.", 0);
        v18 = [AMSPromise promiseWithError:v34];

        v13 = 0;
      }
    }

    else
    {
      v27 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        properties3 = [v6 properties];
        logUUID = [properties3 logUUID];
        v30 = MEMORY[0x1E696AEC0];
        v31 = objc_opt_class();
        v32 = v31;
        if (logUUID)
        {
          properties4 = [v6 properties];
          logUUID2 = [properties4 logUUID];
          [v30 stringWithFormat:@"%@: [%@] ", v32, logUUID2];
        }

        else
        {
          [v30 stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        v35 = AMSHashIfNeeded(v10);
        *buf = 138543618;
        v46 = v33;
        v47 = 2114;
        v48 = v35;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Failed to fetch the APS sampling percentage. The buy params have no product type. buyParams = %{public}@", buf, 0x16u);
        if (logUUID)
        {

          v33 = properties4;
        }
      }

      v13 = AMSError(2, @"Missing Buy Params", @"Cannot compute reverse push sampling percentage with no product type in the buy params.", 0);
      v18 = [AMSPromise promiseWithError:v13];
    }
  }

  else
  {
    v19 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      properties5 = [v6 properties];
      logUUID3 = [properties5 logUUID];
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (logUUID3)
      {
        properties6 = [v6 properties];
        logUUID4 = [properties6 logUUID];
        [v23 stringWithFormat:@"%@: [%@] ", v25, logUUID4];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      *buf = 138543362;
      v46 = v26;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Failed to fetch the APS sampling percentage. The task has no buy params.", buf, 0xCu);
      if (logUUID3)
      {

        v26 = properties6;
      }
    }

    v11 = AMSError(2, @"Missing Buy Params", @"Cannot compute reverse push sampling percentage with no buy params.", 0);
    v18 = [AMSPromise promiseWithError:v11];
  }

  return v18;
}

void __67__AMSPurchaseProtocolHandler_reversePushSamplingPercentageForTask___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  v17 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [a1[4] properties];
    v20 = [v19 logUUID];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = v22;
    if (v20)
    {
      v34 = [a1[4] properties];
      v4 = [v34 logUUID];
      [v21 stringWithFormat:@"%@: [%@] ", v23, v4];
    }

    else
    {
      [v21 stringWithFormat:@"%@: ", v22];
    }
    v24 = ;
    v25 = AMSLogableError(v8);
    *buf = 138543618;
    v37 = v24;
    v38 = 2114;
    v39 = v25;
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Failed to fetch the APS sampling percentage from the bag. error = %{public}@", buf, 0x16u);
    if (v20)
    {

      v24 = v34;
    }
  }

  if (!v8)
  {
LABEL_2:
    v9 = [v7 objectForKeyedSubscript:a1[6]];
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v35 = [a1[4] properties];
        v12 = [v35 logUUID];
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        v15 = v14;
        if (v12)
        {
          v33 = [a1[4] properties];
          v32 = [v33 logUUID];
          [v13 stringWithFormat:@"%@: [%@] ", v15, v32];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        v26 = AMSHashIfNeeded(a1[6]);
        v27 = AMSHashIfNeeded(v7);
        *buf = 138543874;
        v37 = v16;
        v38 = 2114;
        v39 = v26;
        v40 = 2114;
        v41 = v27;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Failed to fetch the APS sampling percentage. The task’s product type is not an allowed product type. productType = %{public}@ | allowedProductTypes = %{public}@", buf, 0x20u);
        if (v12)
        {

          v16 = v33;
        }
      }
    }

    v28 = a1[5];
    v29 = objc_opt_respondsToSelector();
    v30 = 0.0;
    if (v29)
    {
      [v9 doubleValue];
    }

    v31 = [AMSDouble doubleWithDouble:v30];
    [v28 finishWithResult:v31];
  }

  else
  {
    [a1[5] finishWithError:v8];
  }
}

- (id)_shouldRedirectWithPurchaseInfo:(id)info bag:(id)bag urlAction:(id)action currentURL:(id)l
{
  infoCopy = info;
  bagCopy = bag;
  actionCopy = action;
  lCopy = l;
  if (infoCopy && [actionCopy actionType] != 3 && (objc_msgSend(infoCopy, "buyParams"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "dictionary"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16))
  {
    v17 = [AMSPurchaseRequestEncoder bagURLFromPurchaseInfo:infoCopy bag:bagCopy];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__AMSPurchaseProtocolHandler__shouldRedirectWithPurchaseInfo_bag_urlAction_currentURL___block_invoke;
    v20[3] = &unk_1E73BB150;
    v20[4] = self;
    v21 = lCopy;
    v22 = infoCopy;
    v23 = actionCopy;
    v18 = [v17 continueWithBlock:v20];
  }

  else
  {
    v17 = +[AMSOptional optionalWithNil];
    v18 = [AMSPromise promiseWithResult:v17];
  }

  return v18;
}

id __87__AMSPurchaseProtocolHandler__shouldRedirectWithPurchaseInfo_bag_urlAction_currentURL___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ([a1[4] _isEquivalentURL:a1[5] toURL:v5] & 1) != 0)
  {
    v7 = +[AMSOptional optionalWithNil];
    v8 = [AMSPromise promiseWithResult:v7];
  }

  else
  {
    v10 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [a1[6] purchase];
      v13 = [v12 logUUID];
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v24 = [a1[6] purchase];
        v23 = [v24 logUUID];
        [v14 stringWithFormat:@"%@: [%@] ", v16, v23];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v18 = AMSLogableURL(a1[5]);
      v19 = AMSLogableURL(v5);
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Redirect from updated buyParam - from current URL: %{public}@ to URL: %{public}@", buf, 0x20u);
      if (v13)
      {

        v17 = v24;
      }
    }

    v7 = [AMSURLAction redirectActionWithURL:v5];
    [v7 setReason:@"buyParam redirect"];
    v20 = [a1[7] retryIdentifier];
    [v7 setRetryIdentifier:v20];

    v21 = [a1[7] updatedHeaders];
    [v7 setUpdatedHeaders:v21];

    v22 = [AMSOptional optionalWithValue:v7];
    v8 = [AMSPromise promiseWithResult:v22];
  }

  return v8;
}

- (BOOL)_isEquivalentURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isEqual:rLCopy])
  {
    v7 = 1;
  }

  else
  {
    scheme = [lCopy scheme];
    scheme2 = [rLCopy scheme];
    v10 = [scheme caseInsensitiveCompare:scheme2];

    if (v10 || ([lCopy host], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rLCopy, "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "caseInsensitiveCompare:", v12), v12, v11, v13))
    {
      v7 = 0;
    }

    else
    {
      path = [lCopy path];
      path2 = [rLCopy path];
      v7 = [path caseInsensitiveCompare:path2] == 0;
    }
  }

  return v7;
}

- (id)_determineUpdatedBuyParamsFromResponse:(id)response urlAction:(id)action selectedAction:(id)selectedAction purchaseInfo:(id)info
{
  v73 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  actionCopy = action;
  selectedActionCopy = selectedAction;
  infoCopy = info;
  v66 = selectedActionCopy;
  if (selectedActionCopy)
  {
    ams_buyParams = [selectedActionCopy ams_buyParams];
    if (ams_buyParams)
    {
      updatedBuyParams = ams_buyParams;
      v15 = +[AMSLogConfig sharedConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        purchase = [infoCopy purchase];
        logUUID = [purchase logUUID];
        *buf = 138543362;
        v68 = logUUID;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSPurchaseProtocolHandler: [%{public}@] Updating buy params from selected action", buf, 0xCu);
      }

      goto LABEL_26;
    }
  }

  if ([actionCopy actionType] == 3 || (objc_msgSend(actionCopy, "updatedHeaders"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "ams_firstKeyObjectPassingTest:", &__block_literal_global_116), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
LABEL_25:
    updatedBuyParams = [actionCopy updatedBuyParams];
    goto LABEL_26;
  }

  v21 = [responseCopy objectForKeyedSubscript:@"dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 objectForKeyedSubscript:@"okButtonAction"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v24 objectForKeyedSubscript:@"buyParams"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_24;
  }

  updatedBuyParams = v25;

  if (!updatedBuyParams)
  {
LABEL_24:

    goto LABEL_25;
  }

  v26 = +[AMSLogConfig sharedConfig];
  if (!v26)
  {
    v26 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v26 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    purchase2 = [infoCopy purchase];
    logUUID2 = [purchase2 logUUID];
    *buf = 138543874;
    v68 = logUUID2;
    v69 = 2114;
    v70 = actionCopy;
    v71 = 2114;
    v72 = v66;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "AMSPurchaseProtocolHandler: [%{public}@] Updating buy params from any action the current URLAction is %{public}@ selected action is %{public}@", buf, 0x20u);
  }

LABEL_26:
  v30 = [updatedBuyParams componentsSeparatedByString:@"&"];
  v31 = [v30 mutableCopy];

  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  if ([v31 count])
  {
    v33 = 0;
    do
    {
      v34 = [v31 objectAtIndexedSubscript:v33];
      if (([v34 ams_isPercentEncodedForAllowedCharacters:uRLQueryAllowedCharacterSet] & 1) == 0)
      {
        stringByRemovingPercentEncoding = [v34 stringByRemovingPercentEncoding];
        v36 = stringByRemovingPercentEncoding;
        if (!stringByRemovingPercentEncoding)
        {
          stringByRemovingPercentEncoding = v34;
        }

        v37 = [stringByRemovingPercentEncoding stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

        v34 = v37;
      }

      [v31 setObject:v34 atIndexedSubscript:v33];

      ++v33;
    }

    while (v33 < [v31 count]);
  }

  v65 = actionCopy;
  if ([v31 count])
  {
    v63 = responseCopy;
    v38 = [[AMSBuyParams alloc] initWithArray:v31];
    paymentToken = [infoCopy paymentToken];

    if (paymentToken)
    {
      v40 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        purchase3 = [infoCopy purchase];
        logUUID3 = [purchase3 logUUID];
        v43 = MEMORY[0x1E696AEC0];
        v44 = objc_opt_class();
        v45 = v44;
        if (logUUID3)
        {
          purchase4 = [infoCopy purchase];
          logUUID4 = [purchase4 logUUID];
          [v43 stringWithFormat:@"%@: [%@] ", v45, logUUID4];
        }

        else
        {
          [v43 stringWithFormat:@"%@: ", v44];
        }
        v46 = ;
        *buf = 138543362;
        v68 = v46;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Appending payment token to buyParams", buf, 0xCu);
        if (logUUID3)
        {

          v46 = purchase4;
        }
      }

      paymentToken2 = [infoCopy paymentToken];
      [(AMSBuyParams *)v38 setParameter:paymentToken2 forKey:@"pkPayment"];
    }

    paymentMethodType = [infoCopy paymentMethodType];

    if (paymentMethodType)
    {
      v49 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v49)
      {
        v49 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v49 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        purchase5 = [infoCopy purchase];
        logUUID5 = [purchase5 logUUID];
        v52 = MEMORY[0x1E696AEC0];
        v53 = objc_opt_class();
        v54 = v53;
        if (logUUID5)
        {
          self = [infoCopy purchase];
          purchase4 = [(AMSPurchaseProtocolHandler *)self logUUID];
          [v52 stringWithFormat:@"%@: [%@] ", v54, purchase4];
        }

        else
        {
          [v52 stringWithFormat:@"%@: ", v53];
        }
        selfCopy = ;
        *buf = 138543362;
        v68 = selfCopy;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@Appending ApplePay payment method type to buyParams", buf, 0xCu);
        if (logUUID5)
        {

          selfCopy = self;
        }
      }

      paymentMethodType2 = [infoCopy paymentMethodType];
      stringValue = [paymentMethodType2 stringValue];
      [(AMSBuyParams *)v38 setParameter:stringValue forKey:@"applePayPaymentMethodType"];
    }

    responseCopy = v63;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

uint64_t __107__AMSPurchaseProtocolHandler__determineUpdatedBuyParamsFromResponse_urlAction_selectedAction_purchaseInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 isEqualToString:@"X-Apple-TID-Action"])
  {
    v5 = [v4 isEqualToString:@"FB"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldRetryForFailureAction:(id)action response:(id)response task:(id)task decodedObject:(id)object responseDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  dictionaryCopy = dictionary;
  v11 = [AMSURLTaskInfo taskInfoForTask:task];
  properties = [v11 properties];
  purchaseInfo = [properties purchaseInfo];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"dialog"];

  if (v14 || ([purchaseInfo hasRetriedOriginalOwnerAccount] & 1) != 0 || (objc_msgSend(purchaseInfo, "purchase"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "ownerAccountId"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v27 = 0;
  }

  else
  {
    [purchaseInfo setHasRetriedOriginalOwnerAccount:1];
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    purchase = [purchaseInfo purchase];
    ownerAccountId = [purchase ownerAccountId];
    v20 = [ams_sharedAccountStore ams_iTunesAccountWithDSID:ownerAccountId];
    [purchaseInfo setAccount:v20];

    account = [purchaseInfo account];
    properties2 = [v11 properties];
    [properties2 setAccount:account];

    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      purchase2 = [purchaseInfo purchase];
      logUUID = [purchase2 logUUID];
      v32 = 138543362;
      v33 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSPurchaseProtocolHandler: [%{public}@] Falling back to owner account", &v32, 0xCu);
    }

    v27 = 1;
  }

  error = [actionCopy error];
  code = [error code];

  if ((code - 513) < 0xFFFFFFFFFFFFFFFELL)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)_syncKeybagFromResponse:(id)response purchaseInfo:(id)info
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = [response objectForKeyedSubscript:@"keybag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length])
  {
    v8 = +[AMSKeybag sharedInstance];
    v17 = 0;
    v9 = [v8 importKeybagWithData:v7 error:&v17];
    v10 = v17;

    if ((v9 & 1) == 0)
    {
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        purchase = [infoCopy purchase];
        logUUID = [purchase logUUID];
        account = [infoCopy account];
        ams_DSID = [account ams_DSID];
        *buf = 138543874;
        v19 = logUUID;
        v20 = 2114;
        v21 = ams_DSID;
        v22 = 2114;
        v23 = v10;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "AMSPurchaseProtocolHandler: [%{public}@] Error importing keybag data for account: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)_updatePasswordSettingWithBuyParams:(id)params account:(id)account
{
  accountCopy = account;
  v5 = [params parameterForKey:@"asn"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v5 integerValue];
    [accountCopy ams_setFreePasswordPromptSetting:{+[AMSSyncPasswordSettingsTask freePasswordSettingFromServerValue:](AMSSyncPasswordSettingsTask, "freePasswordSettingFromServerValue:", integerValue)}];
    [accountCopy ams_setPaidPasswordPromptSetting:{+[AMSSyncPasswordSettingsTask paidPasswordSettingFromServerValue:](AMSSyncPasswordSettingsTask, "paidPasswordSettingFromServerValue:", integerValue)}];
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v8 = [ams_sharedAccountStore ams_saveAccount:accountCopy];
  }
}

- (void)_updateSubscriptionStatusFromBody:(id)body account:(id)account
{
  v18[7] = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  accountCopy = account;
  v17[0] = @"newsEntitlements";
  v17[1] = @"appStoreEntitlements";
  v18[0] = &unk_1F0779910;
  v18[1] = &unk_1F0779928;
  v17[2] = @"activityEntitlements";
  v17[3] = @"musicEntitlements";
  v18[2] = &unk_1F0779940;
  v18[3] = &unk_1F0779958;
  v17[4] = @"tvEntitlements";
  v17[5] = @"iCloudEntitlements";
  v18[4] = &unk_1F0779970;
  v18[5] = &unk_1F0779988;
  v17[6] = @"podcastEntitlements";
  v18[6] = &unk_1F07799A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__AMSPurchaseProtocolHandler__updateSubscriptionStatusFromBody_account___block_invoke;
  v14[3] = &unk_1E73BB198;
  v8 = bodyCopy;
  v15 = v8;
  v9 = accountCopy;
  v16 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = [v8 objectForKeyedSubscript:@"subscriptionStatus"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"music"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;

      if (v10)
      {
        v13 = [AMSSubscriptionEntitlementsTask updateCacheForMediaType:2 account:v9 data:0];
      }
    }

    else
    {

      v10 = 0;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __72__AMSPurchaseProtocolHandler__updateSubscriptionStatusFromBody_account___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = +[AMSSubscriptionEntitlementsTask updateCacheForMediaType:account:data:](AMSSubscriptionEntitlementsTask, "updateCacheForMediaType:account:data:", [v8 integerValue], *(a1 + 40), v6);
    }
  }

  else
  {

    v6 = 0;
  }
}

@end