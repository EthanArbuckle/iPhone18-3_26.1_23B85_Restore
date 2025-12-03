@interface AMSChannelLinkTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_postLinkingParametersWithResult:(id)result account:(id)account;
+ (id)createBagForSubProfile;
- (AMSChannelLinkTask)initWithAccount:(id)account bag:(id)bag engagementHandler:(id)handler guid:(id)guid linkParams:(id)params metrics:(id)metrics msisdn:(id)msisdn pacTokenPromise:(id)self0 productCode:(id)self1 requestEncoder:(id)self2 supplementaryFields:(id)self3 urlSession:(id)self4;
- (AMSChannelLinkTask)initWithAccount:(id)account bag:(id)bag linkParams:(id)params productCode:(id)code supplementaryFields:(id)fields;
- (AMSChannelLinkTaskDelegate)delegate;
- (id)_chainedLinkingResult:(id)result;
- (id)_linkFailureFromResult:(id)result;
- (id)_linkParameters;
- (id)_linkURLRequest;
- (id)_metricsEventFromChannelLinkResult:(id)result error:(id)error;
- (id)_performLinking;
- (id)_performLinkingWithValidations;
- (id)_postLinkingActionURLRequestWithResult:(id)result;
- (id)_processPostLinkingActionsWithResult:(id)result;
- (id)_processPostLinkingMetricsWithResult:(id)result error:(id)error;
- (id)_promptForAccount;
- (id)_recordEngagementMetricsEvent:(id)event;
- (id)_resultDecodingURLResult:(id)result;
- (id)perform;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)_delegateHandleEngagementRequest:(id)request completion:(id)completion;
- (void)_performDelegateAuthenticationWithRequest:(id)request completion:(id)completion;
- (void)_processSubscriptionStatusForResult:(id)result;
@end

@implementation AMSChannelLinkTask

- (AMSChannelLinkTask)initWithAccount:(id)account bag:(id)bag linkParams:(id)params productCode:(id)code supplementaryFields:(id)fields
{
  fieldsCopy = fields;
  v12 = MEMORY[0x1E695AC80];
  codeCopy = code;
  paramsCopy = params;
  bagCopy = bag;
  accountCopy = account;
  v14 = +[AMSProcessInfo currentProcess];
  v15 = [v12 ams_configurationWithProcessInfo:v14 bag:0];

  v32 = v15;
  v16 = [[AMSURLSession alloc] initWithConfiguration:v15 delegate:0 delegateQueue:0];
  LODWORD(v15) = [fieldsCopy containsObject:@"MSISDN"];
  v17 = [fieldsCopy containsObject:@"PAC"];
  msisdn = 0;
  if (v15)
  {
    v19 = objc_opt_new();
    msisdn = [v19 msisdn];
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
  v21 = [[AMSChannelLinkParams alloc] initWithString:paramsCopy];

  v22 = [AMSMetrics internalInstanceUsingBag:bagCopy];
  v23 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v31 = [(AMSChannelLinkTask *)self initWithAccount:accountCopy bag:bagCopy engagementHandler:v25 guid:v26 linkParams:v21 metrics:v22 msisdn:msisdn pacTokenPromise:v20 productCode:codeCopy requestEncoder:v23 supplementaryFields:fieldsCopy urlSession:v16];

  return v31;
}

- (AMSChannelLinkTask)initWithAccount:(id)account bag:(id)bag engagementHandler:(id)handler guid:(id)guid linkParams:(id)params metrics:(id)metrics msisdn:(id)msisdn pacTokenPromise:(id)self0 productCode:(id)self1 requestEncoder:(id)self2 supplementaryFields:(id)self3 urlSession:(id)self4
{
  accountCopy = account;
  bagCopy = bag;
  bagCopy2 = bag;
  handlerCopy = handler;
  guidCopy = guid;
  paramsCopy = params;
  paramsCopy2 = params;
  metricsCopy = metrics;
  msisdnCopy = msisdn;
  promiseCopy = promise;
  codeCopy = code;
  encoderCopy = encoder;
  fieldsCopy = fields;
  sessionCopy = session;
  v38.receiver = self;
  v38.super_class = AMSChannelLinkTask;
  v23 = [(AMSTask *)&v38 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_account, account);
    objc_storeStrong(&v24->_bag, bagCopy);
    objc_storeStrong(&v24->_engagementHandler, handler);
    objc_storeStrong(&v24->_guid, guid);
    objc_storeStrong(&v24->_linkParams, paramsCopy);
    objc_storeStrong(&v24->_metrics, metrics);
    objc_storeStrong(&v24->_msisdn, msisdn);
    objc_storeStrong(&v24->_pacTokenPromise, promise);
    objc_storeStrong(&v24->_productCode, code);
    objc_storeStrong(&v24->_requestEncoder, encoder);
    objc_storeStrong(&v24->_supplementaryFields, fields);
    objc_storeStrong(&v24->_urlSession, session);
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

- (id)_chainedLinkingResult:(id)result
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AMSChannelLinkTask__chainedLinkingResult___block_invoke;
  v8[3] = &unk_1E73B5CA8;
  v8[4] = self;
  v4 = [result thenWithBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AMSChannelLinkTask__chainedLinkingResult___block_invoke_2;
  v7[3] = &unk_1E73B5CD0;
  v7[4] = self;
  v5 = [v4 continueWithBlock:v7];

  return v5;
}

- (id)_processPostLinkingActionsWithResult:(id)result
{
  resultCopy = result;
  v5 = objc_opt_new();
  subscriptionId = [resultCopy subscriptionId];

  if (subscriptionId)
  {
    urlSession = [(AMSChannelLinkTask *)self urlSession];
    v8 = [(AMSChannelLinkTask *)self _postLinkingActionURLRequestWithResult:resultCopy];
    v9 = [urlSession dataTaskPromiseWithRequestPromise:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__AMSChannelLinkTask__processPostLinkingActionsWithResult___block_invoke;
    v14[3] = &unk_1E73B5CF8;
    v14[4] = self;
    v10 = v5;
    v15 = v10;
    v16 = resultCopy;
    [v9 addFinishBlock:v14];

    v11 = v16;
    v12 = v10;
  }

  else
  {
    [v5 finishWithResult:resultCopy];
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

- (id)_processPostLinkingMetricsWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = objc_opt_new();
  v9 = [(AMSChannelLinkTask *)self _metricsEventFromChannelLinkResult:resultCopy error:errorCopy];

  v10 = [(AMSChannelLinkTask *)self _recordEngagementMetricsEvent:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AMSChannelLinkTask__processPostLinkingMetricsWithResult_error___block_invoke;
  v16[3] = &unk_1E73B3538;
  v16[4] = self;
  v17 = resultCopy;
  v11 = v8;
  v18 = v11;
  v12 = resultCopy;
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

- (void)_delegateHandleEngagementRequest:(id)request completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMSChannelLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSChannelLinkTask *)self delegate];
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There is no delegate set to handle engagement request challenge: %{public}@ for this task. Terminating Channel linking", &v23, 0x20u);
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

  delegate3 = [(AMSChannelLinkTask *)self delegate];
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
      integerValue = AMSError(0, @"Channel linking failed", v8, 0);

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
      integerValue = AMSError(0, @"Channel linking failed", @"Unknown error - no status code or error in response", 0);
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
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = objc_opt_new();
  guid = [(AMSChannelLinkTask *)self guid];
  linkParams = [(AMSChannelLinkTask *)self linkParams];
  linkParamsString = [linkParams linkParamsString];
  productCode = [(AMSChannelLinkTask *)self productCode];
  additionalLinkingParameters = [(AMSChannelLinkTask *)self additionalLinkingParameters];
  msisdn = [(AMSChannelLinkTask *)self msisdn];
  pacTokenPromise = [(AMSChannelLinkTask *)self pacTokenPromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__AMSChannelLinkTask__linkParameters__block_invoke;
  v12[3] = &unk_1E73B5D20;
  v12[4] = &v13;
  [AMSChannelLinkRequestParametersBuilder linkRequestParametersWithGuid:guid linkParams:linkParamsString productCode:productCode additionalParameters:additionalLinkingParameters customerID:msisdn pacPromise:pacTokenPromise completionHandler:v12];

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
    valuePromise = [v4 valuePromise];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSChannelLinkTask__linkURLRequest__block_invoke;
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

- (id)_postLinkingActionURLRequestWithResult:(id)result
{
  resultCopy = result;
  v5 = [(AMSChannelLinkTask *)self bag];
  v6 = [v5 URLForKey:@"getChannelPostLinkingAction"];

  valuePromise = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSChannelLinkTask__postLinkingActionURLRequestWithResult___block_invoke;
  v11[3] = &unk_1E73B5D48;
  v11[4] = self;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = [valuePromise thenWithBlock:v11];

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

+ (id)_postLinkingParametersWithResult:(id)result account:(id)account
{
  accountCopy = account;
  resultCopy = result;
  v7 = objc_opt_new();
  subscriptionId = [resultCopy subscriptionId];
  [v7 setObject:subscriptionId forKeyedSubscript:@"subId"];

  postLinkingFields = [resultCopy postLinkingFields];

  LODWORD(resultCopy) = [postLinkingFields containsObject:@"icloud-partition"];
  if (resultCopy)
  {
    ams_iCloudPartition = [accountCopy ams_iCloudPartition];
    stringValue = [ams_iCloudPartition stringValue];
    [v7 setObject:stringValue forKeyedSubscript:@"iCloudPartition"];
  }

  v12 = [v7 copy];

  return v12;
}

- (id)_metricsEventFromChannelLinkResult:(id)result error:(id)error
{
  v51 = *MEMORY[0x1E69E9840];
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

    supplementaryFields = [resultCopy supplementaryFields];
    [initForEngagement setProperty:supplementaryFields forBodyKey:@"supplementaryFields"];

    response = [resultCopy response];
    v24 = [AMSMetricsEvent sanitizedObject:response];
    [initForEngagement setProperty:v24 forBodyKey:@"responseDictionary"];

    additionalLinkingParameters = [(AMSChannelLinkTask *)self additionalLinkingParameters];
    v26 = [AMSMetricsEvent sanitizedObject:additionalLinkingParameters];
    [initForEngagement setProperty:v26 forBodyKey:@"additionalLinkingParameters"];

    account = [(AMSChannelLinkTask *)self account];
    ams_DSID = [account ams_DSID];
    v29 = [ams_DSID description];
    [initForEngagement setProperty:v29 forBodyKey:@"accountId"];

    metricsOverlay = [(AMSChannelLinkTask *)self metricsOverlay];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __63__AMSChannelLinkTask__metricsEventFromChannelLinkResult_error___block_invoke;
    v43[3] = &unk_1E73B55D8;
    v12 = initForEngagement;
    v44 = v12;
    [metricsOverlay enumerateKeysAndObjectsUsingBlock:v43];

    if (errorCopy)
    {
      v45[0] = @"code";
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v46[0] = v31;
      v45[1] = @"domain";
      domain = [errorCopy domain];
      v33 = domain;
      if (domain)
      {
        v34 = domain;
      }

      else
      {
        v34 = &stru_1F071BA78;
      }

      v46[1] = v34;
      v45[2] = @"title";
      ams_title = [errorCopy ams_title];
      v36 = ams_title;
      if (ams_title)
      {
        v37 = ams_title;
      }

      else
      {
        v37 = &stru_1F071BA78;
      }

      v46[2] = v37;
      v45[3] = @"message";
      ams_message = [errorCopy ams_message];
      v39 = ams_message;
      if (ams_message)
      {
        v40 = ams_message;
      }

      else
      {
        v40 = &stru_1F071BA78;
      }

      v46[3] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];

      [v12 setProperty:v41 forBodyKey:@"error"];
    }

    oSLogObject = v44;
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
      v48 = v10;
      v49 = 2114;
      v50 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No result or error to form metrics around.", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_performDelegateAuthenticationWithRequest:(id)request completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  delegate = [(AMSChannelLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSChannelLinkTask *)self delegate];
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

  delegate3 = [(AMSChannelLinkTask *)self delegate];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSChannelLinkTask__performDelegateAuthenticationWithRequest_completion___block_invoke;
  v24[3] = &unk_1E73B5A98;
  v25 = completionCopy;
  [delegate3 handleAuthenticateRequest:requestCopy completion:v24];

  v13 = v25;
LABEL_16:
}

- (id)_performLinkingWithValidations
{
  v32 = *MEMORY[0x1E69E9840];
  linkParams = [(AMSChannelLinkTask *)self linkParams];

  if (!linkParams)
  {
    _promptForAccount = AMSError(7, @"Missing required field.", @"linkParams is missing", 0);
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
    v12 = AMSLogableError(_promptForAccount);
    *buf = 138543874;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting Channel link task. Error: %{public}@.", buf, 0x20u);

LABEL_13:
    _performLinking = [AMSPromise promiseWithError:_promptForAccount];
    goto LABEL_14;
  }

  productCode = [(AMSChannelLinkTask *)self productCode];

  if (!productCode)
  {
    _promptForAccount = AMSError(7, @"Missing required field.", @"productCode is missing", 0);
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

  account = [(AMSChannelLinkTask *)self account];

  if (account)
  {
    _performLinking = [(AMSChannelLinkTask *)self _performLinking];
    goto LABEL_15;
  }

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
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is missing. Prompting for account.", buf, 0x16u);
  }

  _promptForAccount = [(AMSChannelLinkTask *)self _promptForAccount];
  v18 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke;
  v24[3] = &unk_1E73B5D70;
  v24[4] = self;
  v19 = v18;
  v25 = v19;
  [_promptForAccount addSuccessBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__AMSChannelLinkTask__performLinkingWithValidations__block_invoke_161;
  v22[3] = &unk_1E73B32F0;
  v22[4] = self;
  v20 = v19;
  v23 = v20;
  [_promptForAccount addErrorBlock:v22];
  v21 = v23;
  _performLinking = v20;

LABEL_14:
LABEL_15:

  return _performLinking;
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

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v36 = v5;
    v37 = 2114;
    v38 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning linking.", buf, 0x16u);
  }

  account = [(AMSChannelLinkTask *)self account];

  if (account)
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    account2 = [(AMSChannelLinkTask *)self account];
    v10 = [ams_sharedAccountStore ams_iTunesAccountForAccount:account2];

    if (v10)
    {
      requestEncoder = [(AMSChannelLinkTask *)self requestEncoder];
      [requestEncoder setAccount:v10];

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
        v36 = v14;
        v37 = 2114;
        v38 = v15;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using backing account.", buf, 0x16u);
      }

      v16 = objc_opt_new();
      urlSession = [(AMSChannelLinkTask *)self urlSession];
      _linkURLRequest = [(AMSChannelLinkTask *)self _linkURLRequest];
      v19 = [urlSession dataTaskPromiseWithRequestPromise:_linkURLRequest];
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

      oSLogObject3 = [v28 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = AMSLogKey();
        *buf = 138543618;
        v36 = v30;
        v37 = 2114;
        v38 = v31;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Backing account is nil.", buf, 0x16u);
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

    oSLogObject4 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543618;
      v36 = v26;
      v37 = 2114;
      v38 = v27;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Linking failure. Account is nil.", buf, 0x16u);
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

- (void)_processSubscriptionStatusForResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  object = [resultCopy object];
  v6 = [object objectForKeyedSubscript:@"subscriptionStatus"];

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

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing subscription status: %{public}@", buf, 0x20u);
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
      sharedStatusController = [v13 sharedStatusController];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __58__AMSChannelLinkTask__processSubscriptionStatusForResult___block_invoke;
      v16[3] = &unk_1E73B5D98;
      v16[4] = self;
      [sharedStatusController setSubscriptionStatusFromResponsePayload:v7 withCompletionHandler:v16];
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
  clientInfo = [(AMSChannelLinkTask *)self clientInfo];
  [v4 setClientInfo:clientInfo];

  [v4 setDebugReason:@"Account is not present while attempting Channel linking."];
  if ([(AMSChannelLinkTask *)self iCloudSignInPreferred])
  {
    [v4 setServiceType:1];
  }

  v6 = objc_alloc_init(AMSAuthenticateRequest);
  [(AMSAuthenticateRequest *)v6 setOptions:v4];
  completionHandlerAdapter = [v3 completionHandlerAdapter];
  [(AMSChannelLinkTask *)self _performDelegateAuthenticationWithRequest:v6 completion:completionHandlerAdapter];

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

  engagementHandler = [(AMSChannelLinkTask *)self engagementHandler];
  dictionaryForPosting = [eventCopy dictionaryForPosting];

  v11 = [engagementHandler enqueueData:dictionaryForPosting];

  v12 = objc_alloc_init(AMSMutableBinaryPromise);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSChannelLinkTask__recordEngagementMetricsEvent___block_invoke;
  v17[3] = &unk_1E73B5AE8;
  v13 = v12;
  v18 = v13;
  selfCopy = self;
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

  v6 = [AMSChannelLinkResult alloc];
  linkParams = [(AMSChannelLinkTask *)self linkParams];
  supplementaryFields = [(AMSChannelLinkTask *)self supplementaryFields];
  v9 = [(AMSChannelLinkResult *)v6 initWithResponse:v5 linkParams:linkParams supplementaryFields:supplementaryFields];

  return v9;
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMSChannelLinkTask *)self delegate];

  if (delegate)
  {
    delegate2 = [(AMSChannelLinkTask *)self delegate];
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

  delegate3 = [(AMSChannelLinkTask *)self delegate];
  [delegate3 handleDialogRequest:requestCopy completion:completionCopy];
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

- (AMSChannelLinkTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end