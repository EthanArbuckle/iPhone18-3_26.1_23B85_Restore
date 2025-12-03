@interface AMSCarrierLinkTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSCarrierLinkTask)initWithAccount:(id)account bag:(id)bag engagementHandler:(id)handler guid:(id)guid linkParams:(id)params metrics:(id)metrics msisdn:(id)msisdn pacTokenPromise:(id)self0 productCode:(id)self1 requestEncoder:(id)self2 urlSession:(id)self3;
- (AMSCarrierLinkTask)initWithAccount:(id)account bag:(id)bag linkParams:(id)params productCode:(id)code;
- (AMSCarrierLinkTaskDelegate)delegate;
- (id)_linkFailureFromResult:(id)result;
- (id)_linkParameters;
- (id)_linkURLRequest;
- (id)_metricsEventFromCarrierLinkResult:(id)result error:(id)error;
- (id)_pacToken;
- (id)_performLinking;
- (id)_performLinkingWithValidations;
- (id)_promptForAccount;
- (id)_recordEngagementMetricsEvent:(id)event;
- (id)_resultDecodingURLResult:(id)result;
- (id)perform;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)_delegateHandleEngagementRequest:(id)request completion:(id)completion;
- (void)_performDelegateAuthenticationWithRequest:(id)request completion:(id)completion;
@end

@implementation AMSCarrierLinkTask

- (AMSCarrierLinkTask)initWithAccount:(id)account bag:(id)bag linkParams:(id)params productCode:(id)code
{
  v9 = MEMORY[0x1E695AC80];
  codeCopy = code;
  paramsCopy = params;
  bagCopy = bag;
  accountCopy = account;
  v14 = +[AMSProcessInfo currentProcess];
  v27 = [v9 ams_configurationWithProcessInfo:v14 bag:0];

  v21 = [[AMSURLSession alloc] initWithConfiguration:v27 delegate:0 delegateQueue:0];
  v24 = objc_alloc_init(AMSEngagement);
  v23 = +[AMSDevice deviceGUID];
  v20 = [[AMSCarrierLinkParams alloc] initWithString:paramsCopy];

  v15 = [AMSMetrics internalInstanceUsingBag:bagCopy];
  v22 = objc_opt_new();
  msisdn = [v22 msisdn];
  v17 = +[AMSDevice voicePreferredPACToken];
  v18 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v26 = [(AMSCarrierLinkTask *)self initWithAccount:accountCopy bag:bagCopy engagementHandler:v24 guid:v23 linkParams:v20 metrics:v15 msisdn:msisdn pacTokenPromise:v17 productCode:codeCopy requestEncoder:v18 urlSession:v21];

  return v26;
}

- (AMSCarrierLinkTask)initWithAccount:(id)account bag:(id)bag engagementHandler:(id)handler guid:(id)guid linkParams:(id)params metrics:(id)metrics msisdn:(id)msisdn pacTokenPromise:(id)self0 productCode:(id)self1 requestEncoder:(id)self2 urlSession:(id)self3
{
  accountCopy = account;
  bagCopy = bag;
  handlerCopy = handler;
  guidCopy = guid;
  guidCopy2 = guid;
  paramsCopy = params;
  metricsCopy = metrics;
  msisdnCopy = msisdn;
  promiseCopy = promise;
  codeCopy = code;
  encoderCopy = encoder;
  sessionCopy = session;
  v35.receiver = self;
  v35.super_class = AMSCarrierLinkTask;
  v22 = [(AMSTask *)&v35 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_account, account);
    objc_storeStrong(&v23->_bag, bag);
    objc_storeStrong(&v23->_engagementHandler, handler);
    objc_storeStrong(&v23->_guid, guidCopy);
    objc_storeStrong(&v23->_linkParams, params);
    objc_storeStrong(&v23->_metrics, metrics);
    objc_storeStrong(&v23->_msisdn, msisdn);
    objc_storeStrong(&v23->_pacTokenPromise, promise);
    objc_storeStrong(&v23->_productCode, code);
    objc_storeStrong(&v23->_requestEncoder, encoder);
    objc_storeStrong(&v23->_urlSession, session);
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

- (void)_delegateHandleEngagementRequest:(id)request completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMSCarrierLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSCarrierLinkTask *)self delegate];
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

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v23 = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There is no delegate set to handle engagement request challenge: %{public}@ for this task. Terminating carrier linking", &v23, 0x20u);
    }
  }

LABEL_12:
  v18 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    v23 = 138543618;
    v24 = v20;
    v25 = 2114;
    v26 = v21;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle engagement request", &v23, 0x16u);
  }

  delegate3 = [(AMSCarrierLinkTask *)self delegate];
  [delegate3 handleEngagementRequest:requestCopy completion:completionCopy];
}

- (id)_linkFailureFromResult:(id)result
{
  resultCopy = result;
  statusCode = [resultCopy statusCode];

  if (statusCode)
  {
    statusCode2 = [resultCopy statusCode];
    integerValue = [statusCode2 integerValue];

    if (!integerValue)
    {
      goto LABEL_10;
    }

    error = [resultCopy error];
    if (!error)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error - no error on server response. Code: %ld", integerValue];
      integerValue = AMSError(0, @"Carrier linking failed", v8, 0);

LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    error = [resultCopy error];
    if (!error)
    {
      integerValue = AMSError(0, @"Carrier linking failed", @"Unknown error - no status code or error in response", 0);
      goto LABEL_8;
    }
  }

  v9 = error;
  integerValue = v9;
LABEL_9:

LABEL_10:

  return integerValue;
}

- (id)_linkParameters
{
  v3 = objc_opt_new();
  guid = [(AMSCarrierLinkTask *)self guid];
  [v3 setObject:guid forKeyedSubscript:@"guid"];

  msisdn = [(AMSCarrierLinkTask *)self msisdn];
  [v3 setObject:msisdn forKeyedSubscript:@"channelCustomerId"];

  linkParams = [(AMSCarrierLinkTask *)self linkParams];
  linkParamsString = [linkParams linkParamsString];
  [v3 setObject:linkParamsString forKeyedSubscript:@"linkParams"];

  productCode = [(AMSCarrierLinkTask *)self productCode];
  [v3 setObject:productCode forKeyedSubscript:@"productCode"];

  _pacToken = [(AMSCarrierLinkTask *)self _pacToken];
  [v3 setObject:_pacToken forKeyedSubscript:@"pac"];

  additionalLinkingParameters = [(AMSCarrierLinkTask *)self additionalLinkingParameters];

  if (additionalLinkingParameters)
  {
    additionalLinkingParameters2 = [(AMSCarrierLinkTask *)self additionalLinkingParameters];
    [v3 addEntriesFromDictionary:additionalLinkingParameters2];
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
    valuePromise = [v4 valuePromise];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSCarrierLinkTask__linkURLRequest__block_invoke;
    v9[3] = &unk_1E73B5A70;
    v9[4] = self;
    v6 = [valuePromise thenWithBlock:v9];
  }

  else
  {
    valuePromise = AMSError(2, @"URL Request could not be created", @"bagURL is nil", 0);
    v6 = [AMSPromise promiseWithError:valuePromise];
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

- (id)_metricsEventFromCarrierLinkResult:(id)result error:(id)error
{
  v50 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  if (resultCopy | errorCopy)
  {
    error = [resultCopy error];
    v14 = error;
    if (error)
    {
      v15 = error;
    }

    else
    {
      v15 = errorCopy;
    }

    v8 = v15;

    initForEngagement = [[AMSMetricsEvent alloc] initForEngagement];
    [initForEngagement setProperty:@"carrier-link" forBodyKey:@"eventType"];
    [initForEngagement setProperty:@"AMS" forBodyKey:@"source"];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v8 == 0];
    [initForEngagement setProperty:v17 forBodyKey:@"success"];

    channelCustomerId = [resultCopy channelCustomerId];
    [initForEngagement setProperty:channelCustomerId forBodyKey:@"channelCustomerId"];

    linkParams = [resultCopy linkParams];
    dictionary = [linkParams dictionary];
    [initForEngagement setProperty:dictionary forBodyKey:@"linkParams"];

    productCode = [resultCopy productCode];
    [initForEngagement setProperty:productCode forBodyKey:@"productCode"];

    response = [resultCopy response];
    v23 = [AMSMetricsEvent sanitizedObject:response];
    [initForEngagement setProperty:v23 forBodyKey:@"responseDictionary"];

    additionalLinkingParameters = [(AMSCarrierLinkTask *)self additionalLinkingParameters];
    v25 = [AMSMetricsEvent sanitizedObject:additionalLinkingParameters];
    [initForEngagement setProperty:v25 forBodyKey:@"additionalLinkingParameters"];

    account = [(AMSCarrierLinkTask *)self account];
    ams_DSID = [account ams_DSID];
    v28 = [ams_DSID description];
    [initForEngagement setProperty:v28 forBodyKey:@"accountId"];

    metricsOverlay = [(AMSCarrierLinkTask *)self metricsOverlay];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __63__AMSCarrierLinkTask__metricsEventFromCarrierLinkResult_error___block_invoke;
    v42[3] = &unk_1E73B55D8;
    v12 = initForEngagement;
    v43 = v12;
    [metricsOverlay enumerateKeysAndObjectsUsingBlock:v42];

    if (errorCopy)
    {
      v44[0] = @"code";
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v45[0] = v30;
      v44[1] = @"domain";
      domain = [errorCopy domain];
      v32 = domain;
      if (domain)
      {
        v33 = domain;
      }

      else
      {
        v33 = &stru_1F071BA78;
      }

      v45[1] = v33;
      v44[2] = @"title";
      ams_title = [errorCopy ams_title];
      v35 = ams_title;
      if (ams_title)
      {
        v36 = ams_title;
      }

      else
      {
        v36 = &stru_1F071BA78;
      }

      v45[2] = v36;
      v44[3] = @"message";
      ams_message = [errorCopy ams_message];
      v38 = ams_message;
      if (ams_message)
      {
        v39 = ams_message;
      }

      else
      {
        v39 = &stru_1F071BA78;
      }

      v45[3] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];

      [v12 setProperty:v40 forBodyKey:@"error"];
    }

    oSLogObject = v43;
  }

  else
  {
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v47 = v10;
      v48 = 2114;
      v49 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No result or error to form metrics around.", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_pacToken
{
  v24 = *MEMORY[0x1E69E9840];
  pacTokenPromise = [(AMSCarrierLinkTask *)self pacTokenPromise];

  if (!pacTokenPromise)
  {
    goto LABEL_9;
  }

  pacTokenPromise2 = [(AMSCarrierLinkTask *)self pacTokenPromise];
  v17 = 0;
  v5 = [pacTokenPromise2 resultWithError:&v17];
  v6 = v17;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not retrieve PAC. Error: %{public}@", buf, 0x20u);
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

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No PAC token available", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_performDelegateAuthenticationWithRequest:(id)request completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  delegate = [(AMSCarrierLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSCarrierLinkTask *)self delegate];
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

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to perform auth request. Error: %{public}@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, 0, v13);
    goto LABEL_16;
  }

LABEL_11:
  v19 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle authentication request", buf, 0x16u);
  }

  delegate3 = [(AMSCarrierLinkTask *)self delegate];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSCarrierLinkTask__performDelegateAuthenticationWithRequest_completion___block_invoke;
  v24[3] = &unk_1E73B5A98;
  v25 = completionCopy;
  [delegate3 handleAuthenticateRequest:requestCopy completion:v24];

  v13 = v25;
LABEL_16:
}

- (id)_performLinkingWithValidations
{
  v39 = *MEMORY[0x1E69E9840];
  linkParams = [(AMSCarrierLinkTask *)self linkParams];

  if (!linkParams)
  {
    v7 = AMSError(7, @"Missing required field.", @"linkParams is missing", 0);
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting carrier link task. Error: %{public}@.", buf, 0x20u);

LABEL_13:
    _performLinking = [AMSPromise promiseWithError:v7];

    goto LABEL_14;
  }

  productCode = [(AMSCarrierLinkTask *)self productCode];

  if (!productCode)
  {
    v7 = AMSError(7, @"Missing required field.", @"productCode is missing", 0);
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  account = [(AMSCarrierLinkTask *)self account];

  if (account)
  {
    _performLinking = [(AMSCarrierLinkTask *)self _performLinking];
  }

  else
  {
    v14 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543618;
      v34 = v16;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is missing. Prompting for account.", buf, 0x16u);
    }

    _promptForAccount = [(AMSCarrierLinkTask *)self _promptForAccount];
    v32 = 0;
    v19 = [_promptForAccount resultWithError:&v32];
    v20 = v32;

    v21 = +[AMSLogConfig sharedPrivacyConfig];
    v22 = v21;
    if (v20)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get account. Error: %{public}@.", buf, 0x20u);
      }

      _performLinking2 = [AMSPromise promiseWithError:v20];
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = AMSLogKey();
        *buf = 138543618;
        v34 = v29;
        v35 = 2114;
        v36 = v30;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication prompt succeeded. Updating account value.", buf, 0x16u);
      }

      account2 = [v19 account];
      [(AMSCarrierLinkTask *)self setAccount:account2];

      _performLinking2 = [(AMSCarrierLinkTask *)self _performLinking];
    }

    _performLinking = _performLinking2;
  }

LABEL_14:

  return _performLinking;
}

- (id)_performLinking
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v26 = v5;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning linking.", buf, 0x16u);
  }

  account = [(AMSCarrierLinkTask *)self account];

  if (account)
  {
    account2 = [(AMSCarrierLinkTask *)self account];
    requestEncoder = [(AMSCarrierLinkTask *)self requestEncoder];
    [requestEncoder setAccount:account2];

    v10 = objc_opt_new();
    urlSession = [(AMSCarrierLinkTask *)self urlSession];
    _linkURLRequest = [(AMSCarrierLinkTask *)self _linkURLRequest];
    v13 = [urlSession dataTaskPromiseWithRequestPromise:_linkURLRequest];
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

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Account is nil.", buf, 0x16u);
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
  clientInfo = [(AMSCarrierLinkTask *)self clientInfo];
  [v4 setClientInfo:clientInfo];

  [v4 setDebugReason:@"Account is not present while attempting carrier linking."];
  v6 = objc_alloc_init(AMSAuthenticateRequest);
  [(AMSAuthenticateRequest *)v6 setOptions:v4];
  completionHandlerAdapter = [v3 completionHandlerAdapter];
  [(AMSCarrierLinkTask *)self _performDelegateAuthenticationWithRequest:v6 completion:completionHandlerAdapter];

  return v3;
}

- (id)_recordEngagementMetricsEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording engagement event.", buf, 0x16u);
  }

  engagementHandler = [(AMSCarrierLinkTask *)self engagementHandler];
  dictionaryForPosting = [eventCopy dictionaryForPosting];

  v11 = [engagementHandler enqueueData:dictionaryForPosting];

  v12 = objc_alloc_init(AMSMutableBinaryPromise);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSCarrierLinkTask__recordEngagementMetricsEvent___block_invoke;
  v17[3] = &unk_1E73B5AE8;
  v13 = v12;
  v18 = v13;
  selfCopy = self;
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

- (id)_resultDecodingURLResult:(id)result
{
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = [AMSCarrierLinkResult alloc];
  linkParams = [(AMSCarrierLinkTask *)self linkParams];
  v8 = [(AMSCarrierLinkResult *)v6 initWithResponse:v5 linkParams:linkParams];

  return v8;
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMSCarrierLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSCarrierLinkTask *)self delegate];
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

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to handle dialog request. Error: %{public}@", &v26, 0x20u);
    }
  }

LABEL_11:
  v21 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = AMSLogKey();
    v26 = 138543618;
    v27 = v23;
    v28 = 2114;
    v29 = v24;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling delegate to handle engagement request", &v26, 0x16u);
  }

  delegate3 = [(AMSCarrierLinkTask *)self delegate];
  [delegate3 handleDialogRequest:requestCopy completion:completionCopy];
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
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

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