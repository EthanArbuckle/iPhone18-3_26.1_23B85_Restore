@interface AMSChannelLinkTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_postLinkingParametersWithResult:(id)a3 account:(id)a4;
+ (id)createBagForSubProfile;
- (AMSChannelLinkTask)initWithAccount:(id)a3 bag:(id)a4 engagementHandler:(id)a5 guid:(id)a6 linkParams:(id)a7 metrics:(id)a8 msisdn:(id)a9 pacTokenPromise:(id)a10 productCode:(id)a11 requestEncoder:(id)a12 supplementaryFields:(id)a13 urlSession:(id)a14;
- (AMSChannelLinkTask)initWithAccount:(id)a3 bag:(id)a4 linkParams:(id)a5 productCode:(id)a6 supplementaryFields:(id)a7;
- (AMSChannelLinkTaskDelegate)delegate;
- (id)_chainedLinkingResult:(id)a3;
- (id)_linkFailureFromResult:(id)a3;
- (id)_linkParameters;
- (id)_linkURLRequest;
- (id)_metricsEventFromChannelLinkResult:(id)a3 error:(id)a4;
- (id)_performLinking;
- (id)_performLinkingWithValidations;
- (id)_postLinkingActionURLRequestWithResult:(id)a3;
- (id)_processPostLinkingActionsWithResult:(id)a3;
- (id)_processPostLinkingMetricsWithResult:(id)a3 error:(id)a4;
- (id)_promptForAccount;
- (id)_recordEngagementMetricsEvent:(id)a3;
- (id)_resultDecodingURLResult:(id)a3;
- (id)perform;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)_delegateHandleEngagementRequest:(id)a3 completion:(id)a4;
- (void)_performDelegateAuthenticationWithRequest:(id)a3 completion:(id)a4;
- (void)_processSubscriptionStatusForResult:(id)a3;
@end

@implementation AMSChannelLinkTask

- (AMSChannelLinkTask)initWithAccount:(id)a3 bag:(id)a4 linkParams:(id)a5 productCode:(id)a6 supplementaryFields:(id)a7
{
  v11 = a7;
  v12 = MEMORY[0x1E695AC80];
  v29 = a6;
  v13 = a5;
  v27 = a4;
  v28 = a3;
  v14 = +[AMSProcessInfo currentProcess];
  v15 = [v12 ams_configurationWithProcessInfo:v14 bag:0];

  v32 = v15;
  v16 = [[AMSURLSession alloc] initWithConfiguration:v15 delegate:0 delegateQueue:0];
  LODWORD(v15) = [v11 containsObject:@"MSISDN"];
  v17 = [v11 containsObject:@"PAC"];
  v18 = 0;
  if (v15)
  {
    v19 = objc_opt_new();
    v18 = [v19 msisdn];
  }

  if (v17)
  {
    v20 = +[AMSDevice voicePreferredPACToken];
  }

  else
  {
    v20 = 0;
  }

  v25 = objc_alloc_init(AMSEngagement);
  v26 = +[AMSDevice deviceGUID];
  v21 = [[AMSChannelLinkParams alloc] initWithString:v13];

  v22 = [AMSMetrics internalInstanceUsingBag:v27];
  v23 = [[AMSURLRequestEncoder alloc] initWithBag:v27];
  v31 = [(AMSChannelLinkTask *)self initWithAccount:v28 bag:v27 engagementHandler:v25 guid:v26 linkParams:v21 metrics:v22 msisdn:v18 pacTokenPromise:v20 productCode:v29 requestEncoder:v23 supplementaryFields:v11 urlSession:v16];

  return v31;
}

- (AMSChannelLinkTask)initWithAccount:(id)a3 bag:(id)a4 engagementHandler:(id)a5 guid:(id)a6 linkParams:(id)a7 metrics:(id)a8 msisdn:(id)a9 pacTokenPromise:(id)a10 productCode:(id)a11 requestEncoder:(id)a12 supplementaryFields:(id)a13 urlSession:(id)a14
{
  v37 = a3;
  v27 = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v28 = a7;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v30 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v38.receiver = self;
  v38.super_class = AMSChannelLinkTask;
  v23 = [(AMSTask *)&v38 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_account, a3);
    objc_storeStrong(&v24->_bag, v27);
    objc_storeStrong(&v24->_engagementHandler, a5);
    objc_storeStrong(&v24->_guid, a6);
    objc_storeStrong(&v24->_linkParams, v28);
    objc_storeStrong(&v24->_metrics, a8);
    objc_storeStrong(&v24->_msisdn, a9);
    objc_storeStrong(&v24->_pacTokenPromise, a10);
    objc_storeStrong(&v24->_productCode, a11);
    objc_storeStrong(&v24->_requestEncoder, a12);
    objc_storeStrong(&v24->_supplementaryFields, a13);
    objc_storeStrong(&v24->_urlSession, a14);
    [(AMSURLSession *)v24->_urlSession setDelegate:v24];
  }

  return v24;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__AMSChannelLinkTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __29__AMSChannelLinkTask_perform__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _performLinkingWithValidations];
  v3 = [*(a1 + 32) _chainedLinkingResult:v2];

  return v3;
}

- (id)_chainedLinkingResult:(id)a3
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AMSChannelLinkTask__chainedLinkingResult___block_invoke;
  v8[3] = &unk_1E73B5CA8;
  v8[4] = self;
  v4 = [a3 thenWithBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AMSChannelLinkTask__chainedLinkingResult___block_invoke_2;
  v7[3] = &unk_1E73B5CD0;
  v7[4] = self;
  v5 = [v4 continueWithBlock:v7];

  return v5;
}

- (id)_processPostLinkingActionsWithResult:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 subscriptionId];

  if (v6)
  {
    v7 = [(AMSChannelLinkTask *)self urlSession];
    v8 = [(AMSChannelLinkTask *)self _postLinkingActionURLRequestWithResult:v4];
    v9 = [v7 dataTaskPromiseWithRequestPromise:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__AMSChannelLinkTask__processPostLinkingActionsWithResult___block_invoke;
    v14[3] = &unk_1E73B5CF8;
    v14[4] = self;
    v10 = v5;
    v15 = v10;
    v16 = v4;
    [v9 addFinishBlock:v14];

    v11 = v16;
    v12 = v10;
  }

  else
  {
    [v5 finishWithResult:v4];
  }

  return v5;
}

void __59__AMSChannelLinkTask__processPostLinkingActionsWithResult___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSLogableError(v4);
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Post linking action failed. Error: %{public}@.", &v10, 0x20u);
    }
  }

  [*(a1 + 40) finishWithResult:*(a1 + 48)];
}

- (id)_processPostLinkingMetricsWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(AMSChannelLinkTask *)self _metricsEventFromChannelLinkResult:v6 error:v7];

  v10 = [(AMSChannelLinkTask *)self _recordEngagementMetricsEvent:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AMSChannelLinkTask__processPostLinkingMetricsWithResult_error___block_invoke;
  v16[3] = &unk_1E73B3538;
  v16[4] = self;
  v17 = v6;
  v11 = v8;
  v18 = v11;
  v12 = v6;
  [v10 addFinishBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __65__AMSChannelLinkTask__processPostLinkingMetricsWithResult_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [*(a1 + 32) metrics];
  v5 = [v4 flush];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6)
  {
    [v7 finishWithResult:?];
  }

  else if (v9)
  {
    [v7 finishWithError:?];
  }

  else
  {
    v8 = AMSError(0, @"Unexpectedly completed with no result or error!", 0, 0);
    [v7 finishWithError:v8];
  }
}

- (void)_delegateHandleEngagementRequest:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AMSChannelLinkTask *)self delegate];

  if (v8)
  {
    v9 = [(AMSChannelLinkTask *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v12 = @"Delegate method not implemented";
    v13 = @"Delegate cannot handle this engagement request";
  }

  else
  {
    v12 = @"No delegate available";
    v13 = @"There is no delegate set to handle this engagement request";
  }

  v11 = AMSError(12, v12, v13, 0);
  if (v11)
  {
    v14 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v23 = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There is no delegate set to handle engagement request challenge: %{public}@ for this task. Terminating Channel linking", &v23, 0x20u);
    }
  }

LABEL_12:
  v18 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    v23 = 138543618;
    v24 = v20;
    v25 = 2114;
    v26 = v21;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle engagement request", &v23, 0x16u);
  }

  v22 = [(AMSChannelLinkTask *)self delegate];
  [v22 handleEngagementRequest:v7 completion:v6];
}

- (id)_linkFailureFromResult:(id)a3
{
  v3 = a3;
  v4 = [v3 statusCode];

  if (v4)
  {
    v5 = [v3 statusCode];
    v6 = [v5 integerValue];

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [v3 error];
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error - no error on server response. Code: %ld", v6];
      v6 = AMSError(0, @"Channel linking failed", v8, 0);

LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [v3 error];
    if (!v7)
    {
      v6 = AMSError(0, @"Channel linking failed", @"Unknown error - no status code or error in response", 0);
      goto LABEL_8;
    }
  }

  v9 = v7;
  v6 = v9;
LABEL_9:

LABEL_10:

  return v6;
}

- (id)_linkParameters
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = objc_opt_new();
  v3 = [(AMSChannelLinkTask *)self guid];
  v4 = [(AMSChannelLinkTask *)self linkParams];
  v5 = [v4 linkParamsString];
  v6 = [(AMSChannelLinkTask *)self productCode];
  v7 = [(AMSChannelLinkTask *)self additionalLinkingParameters];
  v8 = [(AMSChannelLinkTask *)self msisdn];
  v9 = [(AMSChannelLinkTask *)self pacTokenPromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__AMSChannelLinkTask__linkParameters__block_invoke;
  v12[3] = &unk_1E73B5D20;
  v12[4] = &v13;
  [AMSChannelLinkRequestParametersBuilder linkRequestParametersWithGuid:v3 linkParams:v5 productCode:v6 additionalParameters:v7 customerID:v8 pacPromise:v9 completionHandler:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)_linkURLRequest
{
  v3 = [(AMSChannelLinkTask *)self bag];
  v4 = [v3 URLForKey:@"linkChannelSubscription"];

  if (v4)
  {
    v5 = [v4 valuePromise];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSChannelLinkTask__linkURLRequest__block_invoke;
    v9[3] = &unk_1E73B5A70;
    v9[4] = self;
    v6 = [v5 thenWithBlock:v9];
  }

  else
  {
    v5 = AMSError(2, @"URL Request could not be created", @"bagURL is nil", 0);
    v6 = [AMSPromise promiseWithError:v5];
  }

  v7 = v6;

  return v7;
}

id __37__AMSChannelLinkTask__linkURLRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _linkParameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AMSChannelLinkTask__linkURLRequest__block_invoke_2;
  v9[3] = &unk_1E73B3F20;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 thenWithBlock:v9];

  return v7;
}

id __37__AMSChannelLinkTask__linkURLRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695AC18];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 requestWithURL:v4];
  [v6 setHTTPMethod:@"POST"];
  v7 = [*(a1 + 40) requestEncoder];
  [v7 setRequestEncoding:3];

  v8 = [*(a1 + 40) requestEncoder];
  v9 = [v6 copy];
  v10 = [v8 requestByEncodingRequest:v9 parameters:v5];

  return v10;
}

- (id)_postLinkingActionURLRequestWithResult:(id)a3
{
  v4 = a3;
  v5 = [(AMSChannelLinkTask *)self bag];
  v6 = [v5 URLForKey:@"getChannelPostLinkingAction"];

  v7 = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSChannelLinkTask__postLinkingActionURLRequestWithResult___block_invoke;
  v11[3] = &unk_1E73B5D48;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __61__AMSChannelLinkTask__postLinkingActionURLRequestWithResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695AC18] requestWithURL:a2];
  [v3 setHTTPMethod:@"POST"];
  v4 = [*(a1 + 32) requestEncoder];
  [v4 setRequestEncoding:3];

  v5 = [*(a1 + 32) requestEncoder];
  v6 = [v3 copy];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) account];
  v9 = [AMSChannelLinkTask _postLinkingParametersWithResult:v7 account:v8];
  v10 = [v5 requestByEncodingRequest:v6 parameters:v9];

  return v10;
}

+ (id)_postLinkingParametersWithResult:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 subscriptionId];
  [v7 setObject:v8 forKeyedSubscript:@"subId"];

  v9 = [v6 postLinkingFields];

  LODWORD(v6) = [v9 containsObject:@"icloud-partition"];
  if (v6)
  {
    v10 = [v5 ams_iCloudPartition];
    v11 = [v10 stringValue];
    [v7 setObject:v11 forKeyedSubscript:@"iCloudPartition"];
  }

  v12 = [v7 copy];

  return v12;
}

- (id)_metricsEventFromChannelLinkResult:(id)a3 error:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 | v7)
  {
    v13 = [v6 error];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v7;
    }

    v8 = v15;

    v16 = [[AMSMetricsEvent alloc] initForEngagement];
    [v16 setProperty:@"carrier-link" forBodyKey:@"eventType"];
    [v16 setProperty:@"AMS" forBodyKey:@"source"];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v8 == 0];
    [v16 setProperty:v17 forBodyKey:@"success"];

    v18 = [v6 channelCustomerId];
    [v16 setProperty:v18 forBodyKey:@"channelCustomerId"];

    v19 = [v6 linkParams];
    v20 = [v19 dictionary];
    [v16 setProperty:v20 forBodyKey:@"linkParams"];

    v21 = [v6 productCode];
    [v16 setProperty:v21 forBodyKey:@"productCode"];

    v22 = [v6 supplementaryFields];
    [v16 setProperty:v22 forBodyKey:@"supplementaryFields"];

    v23 = [v6 response];
    v24 = [AMSMetricsEvent sanitizedObject:v23];
    [v16 setProperty:v24 forBodyKey:@"responseDictionary"];

    v25 = [(AMSChannelLinkTask *)self additionalLinkingParameters];
    v26 = [AMSMetricsEvent sanitizedObject:v25];
    [v16 setProperty:v26 forBodyKey:@"additionalLinkingParameters"];

    v27 = [(AMSChannelLinkTask *)self account];
    v28 = [v27 ams_DSID];
    v29 = [v28 description];
    [v16 setProperty:v29 forBodyKey:@"accountId"];

    v30 = [(AMSChannelLinkTask *)self metricsOverlay];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __63__AMSChannelLinkTask__metricsEventFromChannelLinkResult_error___block_invoke;
    v43[3] = &unk_1E73B55D8;
    v12 = v16;
    v44 = v12;
    [v30 enumerateKeysAndObjectsUsingBlock:v43];

    if (v7)
    {
      v45[0] = @"code";
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "code")}];
      v46[0] = v31;
      v45[1] = @"domain";
      v32 = [v7 domain];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = &stru_1F071BA78;
      }

      v46[1] = v34;
      v45[2] = @"title";
      v35 = [v7 ams_title];
      v36 = v35;
      if (v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = &stru_1F071BA78;
      }

      v46[2] = v37;
      v45[3] = @"message";
      v38 = [v7 ams_message];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = &stru_1F071BA78;
      }

      v46[3] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];

      [v12 setProperty:v41 forBodyKey:@"error"];
    }

    v9 = v44;
  }

  else
  {
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v48 = v10;
      v49 = 2114;
      v50 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No result or error to form metrics around.", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_performDelegateAuthenticationWithRequest:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSChannelLinkTask *)self delegate];

  if (v8)
  {
    v9 = [(AMSChannelLinkTask *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      goto LABEL_11;
    }

    v11 = @"Delegate does not handle authentication requests";
  }

  else
  {
    v11 = @"Delegate does not exist";
  }

  v12 = AMSError(12, @"AMSChannelLinkTask failed", v11, 0);
  if (v12)
  {
    v13 = v12;
    v14 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError(v13);
      *buf = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to perform auth request. Error: %{public}@", buf, 0x20u);
    }

    v7[2](v7, 0, v13);
    goto LABEL_16;
  }

LABEL_11:
  v19 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle authentication request", buf, 0x16u);
  }

  v23 = [(AMSChannelLinkTask *)self delegate];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSChannelLinkTask__performDelegateAuthenticationWithRequest_completion___block_invoke;
  v24[3] = &unk_1E73B5A98;
  v25 = v7;
  [v23 handleAuthenticateRequest:v6 completion:v24];

  v13 = v25;
LABEL_16:
}

- (id)_performLinkingWithValidations
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(AMSChannelLinkTask *)self linkParams];

  if (!v3)
  {
    v7 = AMSError(7, @"Missing required field.", @"linkParams is missing", 0);
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

LABEL_12:
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSLogableError(v7);
    *buf = 138543874;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting Channel link task. Error: %{public}@.", buf, 0x20u);

LABEL_13:
    v6 = [AMSPromise promiseWithError:v7];
    goto LABEL_14;
  }

  v4 = [(AMSChannelLinkTask *)self productCode];

  if (!v4)
  {
    v7 = AMSError(7, @"Missing required field.", @"productCode is missing", 0);
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = [(AMSChannelLinkTask *)self account];

  if (v5)
  {
    v6 = [(AMSChannelLinkTask *)self _performLinking];
    goto LABEL_15;
  }

  v14 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    *buf = 138543618;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is missing. Prompting for account.", buf, 0x16u);
  }

  v7 = [(AMSChannelLinkTask *)self _promptForAccount];
  v18 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke;
  v24[3] = &unk_1E73B5D70;
  v24[4] = self;
  v19 = v18;
  v25 = v19;
  [v7 addSuccessBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke_161;
  v22[3] = &unk_1E73B32F0;
  v22[4] = self;
  v20 = v19;
  v23 = v20;
  [v7 addErrorBlock:v22];
  v21 = v23;
  v6 = v20;

LABEL_14:
LABEL_15:

  return v6;
}

void __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication prompt succeeded. Updating account value.", &v11, 0x16u);
  }

  v8 = [v3 account];

  [*(a1 + 32) setAccount:v8];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _performLinking];
  [v9 finishWithPromise:v10];
}

void __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke_161(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get account. Error: %{public}@.", &v9, 0x20u);
  }

  [*(a1 + 40) finishWithError:v3];
}

- (id)_performLinking
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v36 = v5;
    v37 = 2114;
    v38 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning linking.", buf, 0x16u);
  }

  v7 = [(AMSChannelLinkTask *)self account];

  if (v7)
  {
    v8 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v9 = [(AMSChannelLinkTask *)self account];
    v10 = [v8 ams_iTunesAccountForAccount:v9];

    if (v10)
    {
      v11 = [(AMSChannelLinkTask *)self requestEncoder];
      [v11 setAccount:v10];

      v12 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        *buf = 138543618;
        v36 = v14;
        v37 = 2114;
        v38 = v15;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using backing account.", buf, 0x16u);
      }

      v16 = objc_opt_new();
      v17 = [(AMSChannelLinkTask *)self urlSession];
      v18 = [(AMSChannelLinkTask *)self _linkURLRequest];
      v19 = [v17 dataTaskPromiseWithRequestPromise:v18];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __37__AMSChannelLinkTask__performLinking__block_invoke;
      v33[3] = &unk_1E73B3560;
      v33[4] = self;
      v20 = v16;
      v34 = v20;
      [v19 addFinishBlock:v33];

      v21 = v34;
      v22 = v20;

      v23 = v22;
    }

    else
    {
      v28 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = AMSLogKey();
        *buf = 138543618;
        v36 = v30;
        v37 = 2114;
        v38 = v31;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Backing account is nil.", buf, 0x16u);
      }

      v22 = AMSError(12, @"Channel linking failed", @"No account at link time", 0);
      v23 = [AMSPromise promiseWithError:v22];
    }
  }

  else
  {
    v24 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543618;
      v36 = v26;
      v37 = 2114;
      v38 = v27;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Account is nil.", buf, 0x16u);
    }

    v10 = AMSError(12, @"Channel linking failed", @"No account at link time", 0);
    v23 = [AMSPromise promiseWithError:v10];
  }

  return v23;
}

void __37__AMSChannelLinkTask__performLinking__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Channel Linking failed. Error: %{public}@.", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    [*(a1 + 32) _processSubscriptionStatusForResult:v5];
    v12 = [*(a1 + 32) _resultDecodingURLResult:v5];
    v13 = [*(a1 + 32) _linkFailureFromResult:v12];
    if (v13)
    {
      v14 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        v18 = AMSLogableError(v13);
        v19 = 138543874;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        v23 = 2114;
        v24 = v18;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Channel Linking failed. Error: %{public}@.", &v19, 0x20u);
      }

      [*(a1 + 40) finishWithError:v13];
    }

    else
    {
      [*(a1 + 40) finishWithResult:v12];
    }
  }
}

- (void)_processSubscriptionStatusForResult:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 objectForKeyedSubscript:@"subscriptionStatus"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
      v8 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        v12 = AMSHashIfNeeded(v7);
        *buf = 138543874;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        *&buf[22] = 2114;
        v22 = v12;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing subscription status: %{public}@", buf, 0x20u);
      }

      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v13 = qword_1ED6E1E70;
      v20 = qword_1ED6E1E70;
      if (!qword_1ED6E1E70)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getICMusicSubscriptionStatusControllerClass_block_invoke;
        v22 = &unk_1E73B3880;
        v23 = &v17;
        __getICMusicSubscriptionStatusControllerClass_block_invoke(buf);
        v13 = v18[3];
      }

      v14 = v13;
      _Block_object_dispose(&v17, 8);
      v15 = [v13 sharedStatusController];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __58__AMSChannelLinkTask__processSubscriptionStatusForResult___block_invoke;
      v16[3] = &unk_1E73B5D98;
      v16[4] = self;
      [v15 setSubscriptionStatusFromResponsePayload:v7 withCompletionHandler:v16];
    }
  }

  else
  {

    v7 = 0;
  }
}

void __58__AMSChannelLinkTask__processSubscriptionStatusForResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = +[AMSLogConfig sharedPrivacyConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v5);
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@: [%{public}@] Processing subscription status failed. Error: %{public}@.";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_192869000, v13, v14, v12, &v16, 0x20u);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded(v4);
      v16 = 138543874;
      v17 = v15;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@: [%{public}@] Processed subscription status successfully: %{public}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }
}

- (id)_promptForAccount
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setEnableAccountCreation:1];
  [v4 setAuthenticationType:2];
  v5 = [(AMSChannelLinkTask *)self clientInfo];
  [v4 setClientInfo:v5];

  [v4 setDebugReason:@"Account is not present while attempting Channel linking."];
  if ([(AMSChannelLinkTask *)self iCloudSignInPreferred])
  {
    [v4 setServiceType:1];
  }

  v6 = objc_alloc_init(AMSAuthenticateRequest);
  [(AMSAuthenticateRequest *)v6 setOptions:v4];
  v7 = [v3 completionHandlerAdapter];
  [(AMSChannelLinkTask *)self _performDelegateAuthenticationWithRequest:v6 completion:v7];

  return v3;
}

- (id)_recordEngagementMetricsEvent:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording engagement event.", buf, 0x16u);
  }

  v9 = [(AMSChannelLinkTask *)self engagementHandler];
  v10 = [v4 dictionaryForPosting];

  v11 = [v9 enqueueData:v10];

  v12 = objc_alloc_init(AMSMutableBinaryPromise);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke;
  v17[3] = &unk_1E73B5AE8;
  v13 = v12;
  v18 = v13;
  v19 = self;
  [v11 addFinishBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke_179;
  v16[3] = &unk_1E73B34B8;
  v16[4] = self;
  [(AMSBinaryPromise *)v13 addErrorBlock:v16];
  v14 = v13;

  return v13;
}

void __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
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
      v8 = *(a1 + 40);
      v9 = [v6 request];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke_2;
      v12[3] = &unk_1E73B5AC0;
      v11 = *(a1 + 32);
      v10 = v11.i64[0];
      v13 = vextq_s8(v11, v11, 8uLL);
      [v8 _delegateHandleEngagementRequest:v9 completion:v12];
    }

    else
    {
      [*(a1 + 32) finishWithSuccess];
    }
  }
}

void __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement completed successfully", &v9, 0x16u);
    }
  }

  [*(a1 + 40) finishWithSuccess:v4 == 0 error:v4];
}

void __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke_179(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = v6;
    v8 = &stru_1F071BA78;
    v9 = 138543874;
    v10 = v5;
    if (v2)
    {
      v8 = v2;
    }

    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Engagement failed. %{public}@", &v9, 0x20u);
  }
}

- (id)_resultDecodingURLResult:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [AMSChannelLinkResult alloc];
  v7 = [(AMSChannelLinkTask *)self linkParams];
  v8 = [(AMSChannelLinkTask *)self supplementaryFields];
  v9 = [(AMSChannelLinkResult *)v6 initWithResponse:v5 linkParams:v7 supplementaryFields:v8];

  return v9;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = a5;
  v10 = [(AMSChannelLinkTask *)self delegate];

  if (v10)
  {
    v11 = [(AMSChannelLinkTask *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      goto LABEL_11;
    }

    v13 = @"Delegate method not implemented";
    v14 = @"Delegate cannot handle this dialog request";
  }

  else
  {
    v13 = @"No delegate available";
    v14 = @"There is no delegate set to handle dialog requests";
  }

  v15 = AMSError(12, v13, v14, 0);
  if (v15)
  {
    v16 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSLogableError(v15);
      v26 = 138543874;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to handle dialog request. Error: %{public}@", &v26, 0x20u);
    }
  }

LABEL_11:
  v21 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = AMSLogKey();
    v26 = 138543618;
    v27 = v23;
    v28 = 2114;
    v29 = v24;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle engagement request", &v26, 0x16u);
  }

  v25 = [(AMSChannelLinkTask *)self delegate];
  [v25 handleDialogRequest:v9 completion:v8];
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_7 != -1)
  {
    dispatch_once(&_MergedGlobals_1_7, &__block_literal_global_29);
  }

  v3 = qword_1ED6E1E58;

  return v3;
}

void __35__AMSChannelLinkTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1E58;
  qword_1ED6E1E58 = @"AMSCarrierLinkTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1E60 != -1)
  {
    dispatch_once(&qword_1ED6E1E60, &__block_literal_global_194);
  }

  v3 = qword_1ED6E1E68;

  return v3;
}

void __42__AMSChannelLinkTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1E68;
  qword_1ED6E1E68 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSChannelLinkTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end