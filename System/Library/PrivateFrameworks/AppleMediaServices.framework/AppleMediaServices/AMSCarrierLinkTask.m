@interface AMSCarrierLinkTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSCarrierLinkTask)initWithAccount:(id)a3 bag:(id)a4 engagementHandler:(id)a5 guid:(id)a6 linkParams:(id)a7 metrics:(id)a8 msisdn:(id)a9 pacTokenPromise:(id)a10 productCode:(id)a11 requestEncoder:(id)a12 urlSession:(id)a13;
- (AMSCarrierLinkTask)initWithAccount:(id)a3 bag:(id)a4 linkParams:(id)a5 productCode:(id)a6;
- (AMSCarrierLinkTaskDelegate)delegate;
- (id)_linkFailureFromResult:(id)a3;
- (id)_linkParameters;
- (id)_linkURLRequest;
- (id)_metricsEventFromCarrierLinkResult:(id)a3 error:(id)a4;
- (id)_pacToken;
- (id)_performLinking;
- (id)_performLinkingWithValidations;
- (id)_promptForAccount;
- (id)_recordEngagementMetricsEvent:(id)a3;
- (id)_resultDecodingURLResult:(id)a3;
- (id)perform;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)_delegateHandleEngagementRequest:(id)a3 completion:(id)a4;
- (void)_performDelegateAuthenticationWithRequest:(id)a3 completion:(id)a4;
@end

@implementation AMSCarrierLinkTask

- (AMSCarrierLinkTask)initWithAccount:(id)a3 bag:(id)a4 linkParams:(id)a5 productCode:(id)a6
{
  v9 = MEMORY[0x1E695AC80];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[AMSProcessInfo currentProcess];
  v27 = [v9 ams_configurationWithProcessInfo:v14 bag:0];

  v21 = [[AMSURLSession alloc] initWithConfiguration:v27 delegate:0 delegateQueue:0];
  v24 = objc_alloc_init(AMSEngagement);
  v23 = +[AMSDevice deviceGUID];
  v20 = [[AMSCarrierLinkParams alloc] initWithString:v11];

  v15 = [AMSMetrics internalInstanceUsingBag:v12];
  v22 = objc_opt_new();
  v16 = [v22 msisdn];
  v17 = +[AMSDevice voicePreferredPACToken];
  v18 = [[AMSURLRequestEncoder alloc] initWithBag:v12];
  v26 = [(AMSCarrierLinkTask *)self initWithAccount:v13 bag:v12 engagementHandler:v24 guid:v23 linkParams:v20 metrics:v15 msisdn:v16 pacTokenPromise:v17 productCode:v10 requestEncoder:v18 urlSession:v21];

  return v26;
}

- (AMSCarrierLinkTask)initWithAccount:(id)a3 bag:(id)a4 engagementHandler:(id)a5 guid:(id)a6 linkParams:(id)a7 metrics:(id)a8 msisdn:(id)a9 pacTokenPromise:(id)a10 productCode:(id)a11 requestEncoder:(id)a12 urlSession:(id)a13
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v26 = a6;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v35.receiver = self;
  v35.super_class = AMSCarrierLinkTask;
  v22 = [(AMSTask *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_account, a3);
    objc_storeStrong(&v23->_bag, a4);
    objc_storeStrong(&v23->_engagementHandler, a5);
    objc_storeStrong(&v23->_guid, v26);
    objc_storeStrong(&v23->_linkParams, a7);
    objc_storeStrong(&v23->_metrics, a8);
    objc_storeStrong(&v23->_msisdn, a9);
    objc_storeStrong(&v23->_pacTokenPromise, a10);
    objc_storeStrong(&v23->_productCode, a11);
    objc_storeStrong(&v23->_requestEncoder, a12);
    objc_storeStrong(&v23->_urlSession, a13);
    [(AMSURLSession *)v23->_urlSession setDelegate:v23];
  }

  return v23;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__AMSCarrierLinkTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __29__AMSCarrierLinkTask_perform__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _performLinkingWithValidations];
  v10 = 0;
  v3 = [v2 resultWithError:&v10];
  v4 = v10;
  v5 = [*(a1 + 32) _metricsEventFromCarrierLinkResult:v3 error:v4];
  v6 = [*(a1 + 32) _recordEngagementMetricsEvent:v5];
  [v6 waitUntilFinished];

  v7 = [*(a1 + 32) metrics];

  v8 = [v7 flush];

  return v2;
}

- (void)_delegateHandleEngagementRequest:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AMSCarrierLinkTask *)self delegate];

  if (v8)
  {
    v9 = [(AMSCarrierLinkTask *)self delegate];
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
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There is no delegate set to handle engagement request challenge: %{public}@ for this task. Terminating carrier linking", &v23, 0x20u);
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

  v22 = [(AMSCarrierLinkTask *)self delegate];
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
      v6 = AMSError(0, @"Carrier linking failed", v8, 0);

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
      v6 = AMSError(0, @"Carrier linking failed", @"Unknown error - no status code or error in response", 0);
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
  v3 = objc_opt_new();
  v4 = [(AMSCarrierLinkTask *)self guid];
  [v3 setObject:v4 forKeyedSubscript:@"guid"];

  v5 = [(AMSCarrierLinkTask *)self msisdn];
  [v3 setObject:v5 forKeyedSubscript:@"channelCustomerId"];

  v6 = [(AMSCarrierLinkTask *)self linkParams];
  v7 = [v6 linkParamsString];
  [v3 setObject:v7 forKeyedSubscript:@"linkParams"];

  v8 = [(AMSCarrierLinkTask *)self productCode];
  [v3 setObject:v8 forKeyedSubscript:@"productCode"];

  v9 = [(AMSCarrierLinkTask *)self _pacToken];
  [v3 setObject:v9 forKeyedSubscript:@"pac"];

  v10 = [(AMSCarrierLinkTask *)self additionalLinkingParameters];

  if (v10)
  {
    v11 = [(AMSCarrierLinkTask *)self additionalLinkingParameters];
    [v3 addEntriesFromDictionary:v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (id)_linkURLRequest
{
  v3 = [(AMSCarrierLinkTask *)self bag];
  v4 = [v3 URLForKey:@"linkChannelSubscription"];

  if (v4)
  {
    v5 = [v4 valuePromise];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSCarrierLinkTask__linkURLRequest__block_invoke;
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

id __37__AMSCarrierLinkTask__linkURLRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695AC18] requestWithURL:a2];
  [v3 setHTTPMethod:@"POST"];
  v4 = [*(a1 + 32) requestEncoder];
  [v4 setRequestEncoding:3];

  v5 = [*(a1 + 32) requestEncoder];
  v6 = [v3 copy];
  v7 = [*(a1 + 32) _linkParameters];
  v8 = [v5 requestByEncodingRequest:v6 parameters:v7];

  return v8;
}

- (id)_metricsEventFromCarrierLinkResult:(id)a3 error:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
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

    v22 = [v6 response];
    v23 = [AMSMetricsEvent sanitizedObject:v22];
    [v16 setProperty:v23 forBodyKey:@"responseDictionary"];

    v24 = [(AMSCarrierLinkTask *)self additionalLinkingParameters];
    v25 = [AMSMetricsEvent sanitizedObject:v24];
    [v16 setProperty:v25 forBodyKey:@"additionalLinkingParameters"];

    v26 = [(AMSCarrierLinkTask *)self account];
    v27 = [v26 ams_DSID];
    v28 = [v27 description];
    [v16 setProperty:v28 forBodyKey:@"accountId"];

    v29 = [(AMSCarrierLinkTask *)self metricsOverlay];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __63__AMSCarrierLinkTask__metricsEventFromCarrierLinkResult_error___block_invoke;
    v42[3] = &unk_1E73B55D8;
    v12 = v16;
    v43 = v12;
    [v29 enumerateKeysAndObjectsUsingBlock:v42];

    if (v7)
    {
      v44[0] = @"code";
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "code")}];
      v45[0] = v30;
      v44[1] = @"domain";
      v31 = [v7 domain];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = &stru_1F071BA78;
      }

      v45[1] = v33;
      v44[2] = @"title";
      v34 = [v7 ams_title];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &stru_1F071BA78;
      }

      v45[2] = v36;
      v44[3] = @"message";
      v37 = [v7 ams_message];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = &stru_1F071BA78;
      }

      v45[3] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];

      [v12 setProperty:v40 forBodyKey:@"error"];
    }

    v9 = v43;
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
      v47 = v10;
      v48 = 2114;
      v49 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No result or error to form metrics around.", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_pacToken
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(AMSCarrierLinkTask *)self pacTokenPromise];

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [(AMSCarrierLinkTask *)self pacTokenPromise];
  v17 = 0;
  v5 = [v4 resultWithError:&v17];
  v6 = v17;

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
      *buf = 138543874;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not retrieve PAC. Error: %{public}@", buf, 0x20u);
    }
  }

  if (!v5)
  {
LABEL_9:
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
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No PAC token available", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_performDelegateAuthenticationWithRequest:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSCarrierLinkTask *)self delegate];

  if (v8)
  {
    v9 = [(AMSCarrierLinkTask *)self delegate];
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

  v12 = AMSError(12, @"AMSCarrierLinkTask failed", v11, 0);
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

  v23 = [(AMSCarrierLinkTask *)self delegate];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSCarrierLinkTask__performDelegateAuthenticationWithRequest_completion___block_invoke;
  v24[3] = &unk_1E73B5A98;
  v25 = v7;
  [v23 handleAuthenticateRequest:v6 completion:v24];

  v13 = v25;
LABEL_16:
}

- (id)_performLinkingWithValidations
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(AMSCarrierLinkTask *)self linkParams];

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
    v34 = v10;
    v35 = 2114;
    v36 = v11;
    v37 = 2114;
    v38 = v12;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting carrier link task. Error: %{public}@.", buf, 0x20u);

LABEL_13:
    v6 = [AMSPromise promiseWithError:v7];

    goto LABEL_14;
  }

  v4 = [(AMSCarrierLinkTask *)self productCode];

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

  v5 = [(AMSCarrierLinkTask *)self account];

  if (v5)
  {
    v6 = [(AMSCarrierLinkTask *)self _performLinking];
  }

  else
  {
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
      v34 = v16;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is missing. Prompting for account.", buf, 0x16u);
    }

    v18 = [(AMSCarrierLinkTask *)self _promptForAccount];
    v32 = 0;
    v19 = [v18 resultWithError:&v32];
    v20 = v32;

    v21 = +[AMSLogConfig sharedPrivacyConfig];
    v22 = v21;
    if (v20)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = AMSLogKey();
        v26 = AMSLogableError(v20);
        *buf = 138543874;
        v34 = v24;
        v35 = 2114;
        v36 = v25;
        v37 = 2114;
        v38 = v26;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get account. Error: %{public}@.", buf, 0x20u);
      }

      v27 = [AMSPromise promiseWithError:v20];
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v22 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = AMSLogKey();
        *buf = 138543618;
        v34 = v29;
        v35 = 2114;
        v36 = v30;
        _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication prompt succeeded. Updating account value.", buf, 0x16u);
      }

      v31 = [v19 account];
      [(AMSCarrierLinkTask *)self setAccount:v31];

      v27 = [(AMSCarrierLinkTask *)self _performLinking];
    }

    v6 = v27;
  }

LABEL_14:

  return v6;
}

- (id)_performLinking
{
  v29 = *MEMORY[0x1E69E9840];
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
    v26 = v5;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning linking.", buf, 0x16u);
  }

  v7 = [(AMSCarrierLinkTask *)self account];

  if (v7)
  {
    v8 = [(AMSCarrierLinkTask *)self account];
    v9 = [(AMSCarrierLinkTask *)self requestEncoder];
    [v9 setAccount:v8];

    v10 = objc_opt_new();
    v11 = [(AMSCarrierLinkTask *)self urlSession];
    v12 = [(AMSCarrierLinkTask *)self _linkURLRequest];
    v13 = [v11 dataTaskPromiseWithRequestPromise:v12];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __37__AMSCarrierLinkTask__performLinking__block_invoke;
    v23[3] = &unk_1E73B3560;
    v23[4] = self;
    v14 = v10;
    v24 = v14;
    [v13 addFinishBlock:v23];

    v15 = v24;
    v16 = v14;

    v17 = v16;
  }

  else
  {
    v18 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Account is nil.", buf, 0x16u);
    }

    v16 = AMSError(12, @"Carrier linking failed", @"No account at link time", 0);
    v17 = [AMSPromise promiseWithError:v16];
  }

  return v17;
}

void __37__AMSCarrierLinkTask__performLinking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSLogableError(v5);
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Carrier Linking failed. Error: %{public}@.", &v18, 0x20u);
    }

    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    v11 = [*(a1 + 32) _resultDecodingURLResult:a2];
    v12 = [*(a1 + 32) _linkFailureFromResult:v11];
    if (v12)
    {
      v13 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v17 = AMSLogableError(v12);
        v18 = 138543874;
        v19 = v15;
        v20 = 2114;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Carrier Linking failed. Error: %{public}@.", &v18, 0x20u);
      }

      [*(a1 + 40) finishWithError:v12];
    }

    else
    {
      [*(a1 + 40) finishWithResult:v11];
    }
  }
}

- (id)_promptForAccount
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setEnableAccountCreation:1];
  [v4 setAuthenticationType:2];
  v5 = [(AMSCarrierLinkTask *)self clientInfo];
  [v4 setClientInfo:v5];

  [v4 setDebugReason:@"Account is not present while attempting carrier linking."];
  v6 = objc_alloc_init(AMSAuthenticateRequest);
  [(AMSAuthenticateRequest *)v6 setOptions:v4];
  v7 = [v3 completionHandlerAdapter];
  [(AMSCarrierLinkTask *)self _performDelegateAuthenticationWithRequest:v6 completion:v7];

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

  v9 = [(AMSCarrierLinkTask *)self engagementHandler];
  v10 = [v4 dictionaryForPosting];

  v11 = [v9 enqueueData:v10];

  v12 = objc_alloc_init(AMSMutableBinaryPromise);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke;
  v17[3] = &unk_1E73B5AE8;
  v13 = v12;
  v18 = v13;
  v19 = self;
  [v11 addFinishBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke_140;
  v16[3] = &unk_1E73B34B8;
  v16[4] = self;
  [(AMSBinaryPromise *)v13 addErrorBlock:v16];
  v14 = v13;

  return v13;
}

void __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
      v12[2] = __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke_2;
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

void __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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

void __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke_140(uint64_t a1, void *a2)
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

  v6 = [AMSCarrierLinkResult alloc];
  v7 = [(AMSCarrierLinkTask *)self linkParams];
  v8 = [(AMSCarrierLinkResult *)v6 initWithResponse:v5 linkParams:v7];

  return v8;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = a5;
  v10 = [(AMSCarrierLinkTask *)self delegate];

  if (v10)
  {
    v11 = [(AMSCarrierLinkTask *)self delegate];
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

  v25 = [(AMSCarrierLinkTask *)self delegate];
  [v25 handleDialogRequest:v9 completion:v8];
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_5 != -1)
  {
    dispatch_once(&_MergedGlobals_1_5, &__block_literal_global_27);
  }

  v3 = qword_1ED6E1E18;

  return v3;
}

void __35__AMSCarrierLinkTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1E18;
  qword_1ED6E1E18 = @"AMSCarrierLinkTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1E20 != -1)
  {
    dispatch_once(&qword_1ED6E1E20, &__block_literal_global_156);
  }

  v3 = qword_1ED6E1E28;

  return v3;
}

void __42__AMSCarrierLinkTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1E28;
  qword_1ED6E1E28 = @"1";
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

- (AMSCarrierLinkTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end