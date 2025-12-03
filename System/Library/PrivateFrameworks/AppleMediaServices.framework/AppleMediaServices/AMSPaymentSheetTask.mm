@interface AMSPaymentSheetTask
- (AKAppleIDAuthenticationContext)authenticationContext;
- (AMSPaymentSheetTask)initWithRequest:(id)request bag:(id)bag;
- (BOOL)cancel;
- (id)_authorizePaymentWithAuthKitResults:(id)results;
- (id)_authorizePaymentWithBiometricsRequest:(id)request payment:(id)payment;
- (id)_buildPaymentRequest;
- (id)_metricsEvent;
- (id)_performInProcessTask;
- (id)_presentPaymentSheetWithPaymentRequest:(id)request;
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)controller;
- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)controller;
- (id)presentationWindowForPaymentAuthorizationController:(id)controller;
- (void)_configureAttachSelectedCard:(id)card;
- (void)_configureBasicsForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest;
- (void)_configureConfirmationScreenForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest;
- (void)_configureContentItemsForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest;
- (void)_configureCustomUIForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest;
- (void)_configureLanguage:(id)language completion:(id)completion;
- (void)_configureMerchantSessionForPaymentRequest:(id)request;
- (void)_configurePSD2Decoration:(id)decoration completion:(id)completion;
- (void)_configurePaymentSummaryForPaymentRequest:(id)request;
- (void)_dismissPaymentAuthorizationController:(id)controller;
- (void)_presentCompanionAuthenticationSheetWithPaymentRequest:(id)request purchaseResult:(id)result;
- (void)_presentPaymentConfirmationWithPaymentRequest:(id)request purchaseResult:(id)result;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event;
- (void)paymentAuthorizationController:(id)controller didSelectPaymentMethod:(id)method handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation AMSPaymentSheetTask

- (AMSPaymentSheetTask)initWithRequest:(id)request bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = AMSPaymentSheetTask;
  v9 = [(AMSTask *)&v19 init];
  if (v9)
  {
    logKey = [requestCopy logKey];

    if (logKey)
    {
      logKey2 = [requestCopy logKey];
      v12 = AMSSetLogKey(logKey2);
    }

    assetCache = v9->_assetCache;
    v9->_assetCache = 0;

    objc_storeStrong(&v9->_bag, bag);
    objc_storeStrong(&v9->_request, request);
    v14 = objc_alloc_init(_PaymentSheetState);
    state = v9->_state;
    v9->_state = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userActions = v9->_userActions;
    v9->_userActions = v16;
  }

  return v9;
}

- (BOOL)cancel
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling payment sheet task", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  paymentSheetPromise = [(AMSPaymentSheetTask *)self paymentSheetPromise];
  [paymentSheetPromise cancel];

  v13 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      a2 = NSStringFromSelector(a2);
      v26 = logKey2;
      [v17 stringWithFormat:@"%@: [%@] %@ ", v18, logKey2, a2];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: %@ ", v18, request2];
    }
    v21 = ;
    paymentAuthorizationController = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
    v23 = AMSHashIfNeeded(paymentAuthorizationController);
    *buf = 138543618;
    v29 = v21;
    v30 = 2114;
    v31 = v23;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling payment authorization controller: %{public}@", buf, 0x16u);

    if (logKey)
    {

      v21 = v26;
    }
  }

  paymentAuthorizationController2 = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
  [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:paymentAuthorizationController2];

  v27.receiver = self;
  v27.super_class = AMSPaymentSheetTask;
  return [(AMSTask *)&v27 cancel];
}

- (id)_performInProcessTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSPaymentSheetTask__performInProcessTask__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __44__AMSPaymentSheetTask__performInProcessTask__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) request];
  v3 = [v2 logKey];

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
    if (v3)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v7, v3];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7, v25];
    }
    v8 = ;
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting payment sheet task", buf, 0xCu);
  }

  if (os_variant_has_internal_content())
  {
    v9 = [*(a1 + 32) request];
    v10 = [v9 objectForLogging];
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    if (v3)
    {
      [v12 stringWithFormat:@"%@: [%@] ", v13, v3];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13, v25];
    }
    v14 = ;
    v15 = [v12 stringWithFormat:@"%@", v14];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [*(a1 + 32) request];
    v18 = [v16 stringWithFormat:@"<%@>", objc_opt_class()];
    AMSLogBigObject(v10, OS_LOG_TYPE_DEFAULT, v11, v15, v18);
  }

  v19 = [*(a1 + 32) request];
  if ([v19 requiresAuthorization])
  {
    v20 = [*(a1 + 32) authenticationContext];
    v21 = [v20 username];

    if (!v21)
    {
      v22 = [AMSPromise promiseWithErrorCode:2 title:@"Payment Sheet Failed" message:@"Invalid AuthKit context (Username is nil)"];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v23 = [*(a1 + 32) _buildPaymentRequest];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_232;
  v26[3] = &unk_1E73B69B8;
  v26[4] = *(a1 + 32);
  v27 = v3;
  v22 = [v23 thenWithBlock:v26];

LABEL_18:

  return v22;
}

id __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_232(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v19 = [v4 state];
    [v19 setCancellationType:100];

    v20 = @"Payment request is nil";
    v21 = 2;
    goto LABEL_19;
  }

  v5 = [v4 purchaseInfo];
  v6 = [v5 purchase];
  v7 = [v6 requiresApplePayClassic];

  if (v7)
  {
    v8 = [*(a1 + 32) request];
    if ([v8 isApplePayClassic])
    {
      v9 = [v3 requestType];

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v26 = [*(a1 + 32) state];
    [v26 setCancellationType:100];

    v20 = @"Purchase requires Apple Pay Classic, but we don't have an Apple Pay Classic sheet";
    v21 = 500;
LABEL_19:
    v27 = [AMSPromise promiseWithErrorCode:v21 title:@"Payment Sheet Failed" message:v20];
    goto LABEL_27;
  }

LABEL_5:
  v10 = objc_alloc_init(AMSMutablePromise);
  [*(a1 + 32) setPaymentSheetPromise:v10];

  v11 = [*(a1 + 32) request];
  v12 = [v11 requiresDelegateAuthentication];

  v13 = +[AMSLogConfig sharedPurchaseConfig];
  v14 = v13;
  if (v12)
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = *(a1 + 40);
      v18 = objc_opt_class();
      if (v17)
      {
        [v16 stringWithFormat:@"%@: [%@] ", v18, *(a1 + 40)];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v18, v39];
      }
      v28 = ;
      *buf = 138543362;
      v44 = v28;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting delegate authentication sheet", buf, 0xCu);
    }

    v29 = [*(a1 + 32) purchaseInfo];
    v30 = [v29 purchase];
    v31 = [AMSPurchase purchaseFromPurchase:v30];

    v32 = objc_alloc_init(AMSPurchaseResult);
    v33 = [*(a1 + 32) request];
    v34 = [v33 responseDictionary];
    [(AMSPurchaseResult *)v32 setResponseDictionary:v34];

    [(AMSPurchaseResult *)v32 setPurchase:v31];
    [*(a1 + 32) _presentCompanionAuthenticationSheetWithPaymentRequest:v3 purchaseResult:v32];
  }

  else
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v14 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = *(a1 + 40);
      v25 = objc_opt_class();
      if (v24)
      {
        [v23 stringWithFormat:@"%@: [%@] ", v25, *(a1 + 40)];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v25, v39];
      }
      v35 = ;
      *buf = 138543362;
      v44 = v35;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting normal payment sheet", buf, 0xCu);
    }

    v31 = [*(a1 + 32) _presentPaymentSheetWithPaymentRequest:v3];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_242;
    v42[3] = &unk_1E73B34B8;
    v42[4] = *(a1 + 32);
    [v31 addErrorBlock:v42];
  }

  v36 = [*(a1 + 32) paymentSheetPromise];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_2;
  v40[3] = &unk_1E73BA990;
  v37 = *(a1 + 40);
  v40[4] = *(a1 + 32);
  v41 = v37;
  v27 = [v36 continueWithBlock:v40];

LABEL_27:

  return v27;
}

void __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_242(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 paymentSheetPromise];
  [v4 finishWithError:v3];
}

id __44__AMSPaymentSheetTask__performInProcessTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _metricsEvent];
  v8 = [*(a1 + 32) bag];
  v9 = [AMSMetrics internalInstanceUsingBag:v8];
  [v9 enqueueEvent:v7];

  v10 = [*(a1 + 32) bag];
  v11 = [AMSMetrics internalInstanceUsingBag:v10];
  v12 = [v11 flush];

  if (v5 | v6)
  {
    if (v6)
    {
      v13 = +[AMSLogConfig sharedPurchaseOversizeConfig];
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
          [v15 stringWithFormat:@"%@: ", v17, v30];
        }
        v25 = ;
        v26 = AMSLogableError(v6);
        *buf = 138543618;
        v32 = v25;
        v33 = 2114;
        v34 = v26;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@Completed with error: %{public}@", buf, 0x16u);
      }

      v18 = [AMSPromise promiseWithError:v6];
    }

    else
    {
      v19 = [*(a1 + 32) purchaseInfo];
      [v19 setDidShowPaymentSheet:1];

      v20 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = *(a1 + 40);
        v24 = objc_opt_class();
        if (v23)
        {
          [v22 stringWithFormat:@"%@: [%@] ", v24, *(a1 + 40)];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v24, v30];
        }
        v27 = ;
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Completed successfully", buf, 0xCu);
      }

      v18 = [AMSPromise promiseWithResult:v5];
    }
  }

  else
  {
    v18 = [AMSPromise promiseWithErrorCode:0 title:@"Payment Sheet Failed" message:@"Finished without a result"];
  }

  v28 = v18;

  return v28;
}

- (AKAppleIDAuthenticationContext)authenticationContext
{
  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    purchase = [(AMSPurchaseInfo *)self->_purchaseInfo purchase];

    if (purchase)
    {
      purchase2 = [(AMSPurchaseInfo *)self->_purchaseInfo purchase];
      v6 = [purchase2 authenticationContextForRequest:self->_request];
      v7 = self->_authenticationContext;
      self->_authenticationContext = v6;

LABEL_4:
      authenticationContext = self->_authenticationContext;
      goto LABEL_6;
    }

    authenticationContext = self->_authenticationContext;
    if (!authenticationContext)
    {
      v9 = [AMSPurchase defaultAuthenticationContextForRequest:self->_request];
      purchase2 = self->_authenticationContext;
      self->_authenticationContext = v9;
      goto LABEL_4;
    }
  }

LABEL_6:

  return authenticationContext;
}

- (id)_authorizePaymentWithAuthKitResults:(id)results
{
  v48 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  logKey4 = 0x1E696A000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;

    if (v8)
    {
      state = [(AMSPaymentSheetTask *)self state];
      v10 = +[AMSPaymentSheetMetricsEvent dictionaryForUserAction:didBiometricsLockout:](AMSPaymentSheetMetricsEvent, "dictionaryForUserAction:didBiometricsLockout:", 6, [state didBiometricsLockout]);

      if (v10)
      {
        userActions = [(AMSPaymentSheetTask *)self userActions];
        [userActions addObject:v10];
      }

      purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
      idmsTokens = [purchaseInfo idmsTokens];

      if (!idmsTokens)
      {
        v14 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB98]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        purchaseInfo2 = [(AMSPaymentSheetTask *)self purchaseInfo];
        [purchaseInfo2 setIdmsTokens:v15];
      }

      state2 = [(AMSPaymentSheetTask *)self state];
      [state2 setPasswordEquivalentToken:v8];

      v34 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        request = [(AMSPaymentSheetTask *)self request];
        logKey = [request logKey];
        v37 = MEMORY[0x1E696AEC0];
        v38 = objc_opt_class();
        v39 = v38;
        if (logKey)
        {
          request2 = [(AMSPaymentSheetTask *)self request];
          logKey2 = [request2 logKey];
          [v37 stringWithFormat:@"%@: [%@] ", v39, logKey2];
        }

        else
        {
          [v37 stringWithFormat:@"%@: ", v38];
        }
        v40 = ;
        *buf = 138543362;
        v47 = v40;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorized with PET from AuthKit", buf, 0xCu);
        if (logKey)
        {

          v40 = request2;
        }
      }

      state3 = [(AMSPaymentSheetTask *)self state];
      [state3 setDidAuthorizePayment:1];

      v31 = [AMSPromise promiseWithResult:&unk_1F07798F8];

      goto LABEL_36;
    }
  }

  else
  {
  }

  request3 = [(AMSPaymentSheetTask *)self request];
  requiresAuthorization = [request3 requiresAuthorization];

  if (requiresAuthorization)
  {
    v18 = AMSError(100, @"Payment Sheet Failed", @"AuthKit authorization failed", 0);
    v19 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    state4 = [(AMSPaymentSheetTask *)self state];
    v18 = +[AMSPaymentSheetMetricsEvent dictionaryForUserAction:didBiometricsLockout:](AMSPaymentSheetMetricsEvent, "dictionaryForUserAction:didBiometricsLockout:", 1, [state4 didBiometricsLockout]);

    if (v18)
    {
      userActions2 = [(AMSPaymentSheetTask *)self userActions];
      [userActions2 addObject:v18];
    }

    v22 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey3 = [request4 logKey];
      v26 = MEMORY[0x1E696AEC0];
      v27 = objc_opt_class();
      v28 = v27;
      if (logKey3)
      {
        request5 = [(AMSPaymentSheetTask *)self request];
        logKey4 = [request5 logKey];
        [v26 stringWithFormat:@"%@: [%@] ", v28, logKey4];
      }

      else
      {
        [v26 stringWithFormat:@"%@: ", v27];
      }
      v29 = ;
      *buf = 138543362;
      v47 = v29;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorized without authentication (confirmation only)", buf, 0xCu);
      if (logKey3)
      {

        v29 = request5;
      }
    }

    state5 = [(AMSPaymentSheetTask *)self state];
    [state5 setDidAuthorizePayment:1];

    v19 = [AMSPromise promiseWithResult:&unk_1F07798F8];
  }

  v31 = v19;

  v8 = 0;
LABEL_36:

  return v31;
}

- (id)_authorizePaymentWithBiometricsRequest:(id)request payment:(id)payment
{
  v47 = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  requestCopy = request;
  v10 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v39 = paymentCopy;
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = v15;
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      [v14 stringWithFormat:@"%@: [%@] ", v16, logKey2];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    *buf = 138543362;
    v46 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Signing biometrics challenge", buf, 0xCu);
    if (logKey)
    {

      v17 = request2;
    }

    paymentCopy = v39;
  }

  state = [(AMSPaymentSheetTask *)self state];
  v19 = +[AMSPaymentSheetMetricsEvent dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:", 1, [state didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));

  if (v19)
  {
    userActions = [(AMSPaymentSheetTask *)self userActions];
    [userActions addObject:v19];
  }

  request3 = [(AMSPaymentSheetTask *)self request];
  biometricsRequest = [request3 biometricsRequest];
  localAuthContext = [biometricsRequest localAuthContext];
  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  [purchaseInfo setLocalAuthContext:localAuthContext];

  v25 = [[AMSBiometricsSignatureTask alloc] initWithRequest:requestCopy];
  v26 = [(AMSPaymentSheetTask *)self bag];
  request4 = [(AMSBiometricsSignatureTask *)v25 request];
  [request4 setBag:v26];

  if (+[AMSBiometrics type]== 2)
  {
    v28 = objc_alloc_init(AMSMutableBinaryPromise);
    v29 = [(AMSPaymentSheetTask *)self bag];
    v30 = [v29 doubleForKey:@"touchIDChallengeSigningDelay"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke;
    v42[3] = &unk_1E73BA9B8;
    v31 = v28;
    v43 = v31;
    [v30 valueWithCompletion:v42];
  }

  else
  {
    v31 = +[AMSBinaryPromise promiseWithSuccess];
  }

  performSignature = [(AMSBiometricsSignatureTask *)v25 performSignature];
  v44[0] = performSignature;
  promiseAdapter = [(AMSBinaryPromise *)v31 promiseAdapter];
  v44[1] = promiseAdapter;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v35 = [AMSPromise promiseWithAll:v34];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke_3;
  v40[3] = &unk_1E73BA9E0;
  v40[4] = self;
  v41 = paymentCopy;
  v36 = paymentCopy;
  v37 = [v35 continueWithBlock:v40];

  return v37;
}

void __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke_2;
  v9[3] = &unk_1E73B3680;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = AMSLogKey();
  if (v4 * 1000000000.0 <= 9.22337204e18)
  {
    v7 = dispatch_time(0, (v4 * 1000000000.0));
  }

  else
  {
    v7 = -1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke_5;
  block[3] = &unk_1E73B36D0;
  v12 = v6;
  v13 = v5;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
}

id __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke_3(id *a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a2 objectAtIndexedSubscript:0];
  objc_opt_class();
  v10 = 0;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  v11 = [a1[4] state];
  [v11 setSignatureResult:v10];

  if (v8)
  {
    v12 = AMSError(601, @"Payment Sheet Failed", @"Failed to sign challenge.", v8);
    v13 = [AMSPromise promiseWithError:v12];
  }

  else
  {
    v14 = [a1[4] paymentSheetPromise];
    v15 = [v14 isFinished];

    if (v15)
    {
      v16 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [a1[4] request];
        v19 = [v18 logKey];
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = v21;
        if (v19)
        {
          v3 = [a1[4] request];
          v4 = [v3 logKey];
          [v20 stringWithFormat:@"%@: [%@] ", v22, v4];
        }

        else
        {
          [v20 stringWithFormat:@"%@: ", v21];
        }
        v5 = ;
        *buf = 138543362;
        v55 = v5;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorization cancelled before challenge was signed", buf, 0xCu);
        if (v19)
        {

          v5 = v3;
        }

        v29 = 1;
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v23 = [a1[4] state];
      [v23 setDidAuthorizePayment:1];

      v16 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [a1[4] request];
        v25 = [v24 logKey];
        v26 = MEMORY[0x1E696AEC0];
        v27 = objc_opt_class();
        v28 = v27;
        if (v25)
        {
          v3 = [a1[4] request];
          v4 = [v3 logKey];
          [v26 stringWithFormat:@"%@: [%@] ", v28, v4];
        }

        else
        {
          [v26 stringWithFormat:@"%@: ", v27];
        }
        v5 = ;
        *buf = 138543362;
        v55 = v5;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorization with signed biometrics challenge", buf, 0xCu);
        if (v25)
        {

          v5 = v3;
        }

        v29 = 0;
      }

      else
      {
        v29 = 0;
      }
    }

    v30 = [a1[5] token];
    v31 = [v30 paymentData];

    v32 = +[AMSLogConfig sharedPurchaseConfig];
    v33 = v32;
    if (v31)
    {
      if (!v32)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v29;
        v35 = [a1[4] request];
        v36 = [v35 logKey];
        v37 = MEMORY[0x1E696AEC0];
        v38 = objc_opt_class();
        v39 = v38;
        if (v36)
        {
          v4 = [a1[4] request];
          v5 = [v4 logKey];
          [v37 stringWithFormat:@"%@: [%@] ", v39, v5];
        }

        else
        {
          [v37 stringWithFormat:@"%@: ", v38];
        }
        v40 = ;
        *buf = 138543362;
        v55 = v40;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Received biometric payment token", buf, 0xCu);
        if (v36)
        {

          v40 = v4;
        }

        v29 = v53;
      }

      v48 = [a1[5] token];
      v49 = [v48 paymentData];
      v33 = [v49 base64EncodedStringWithOptions:0];

      v50 = [a1[4] state];
      [v50 setPaymentToken:v33];

      v41 = [a1[4] purchaseInfo];
      [v41 setPaymentToken:v33];
    }

    else
    {
      if (!v32)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v33 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [a1[4] request];
        v43 = [v42 logKey];
        v44 = MEMORY[0x1E696AEC0];
        v45 = objc_opt_class();
        v46 = v45;
        if (v43)
        {
          a1 = [a1[4] request];
          v4 = [a1 logKey];
          [v44 stringWithFormat:@"%@: [%@] ", v46, v4];
        }

        else
        {
          [v44 stringWithFormat:@"%@: ", v45];
        }
        v47 = ;
        *buf = 138543362;
        v55 = v47;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping biometric payment token", buf, 0xCu);
        if (v43)
        {

          v47 = a1;
        }
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
    v13 = [AMSPromise promiseWithResult:v12];
  }

  v51 = v13;

  return v51;
}

- (id)_metricsEvent
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = [AMSPaymentSheetMetricsEvent alloc];
  metricsDictionary = [(AMSPaymentSheetTask *)self metricsDictionary];
  v7 = [(AMSMetricsEvent *)v5 initWithUnderlyingDictionary:metricsDictionary];

  request = [(AMSPaymentSheetTask *)self request];
  biometricsRequest = [request biometricsRequest];

  state = [(AMSPaymentSheetTask *)self state];
  didAuthorizePayment = [state didAuthorizePayment];

  if (biometricsRequest)
  {
    state2 = [(AMSPaymentSheetTask *)self state];
    v13 = state2;
    if (!didAuthorizePayment)
    {
      cancellationType = [state2 cancellationType];

      if (!cancellationType)
      {
        state3 = [(AMSPaymentSheetTask *)self state];
        [state3 setCancellationType:2];
      }

      [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:3];
      state4 = [(AMSPaymentSheetTask *)self state];
      cancellationType2 = [state4 cancellationType];
      state5 = [(AMSPaymentSheetTask *)self state];
      v25 = +[AMSPaymentSheetMetricsEvent dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:", cancellationType2, [state5 didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));

      if (v25)
      {
        userActions = [(AMSPaymentSheetTask *)self userActions];
        [userActions addObject:v25];
      }

      goto LABEL_20;
    }

    signatureResult = [state2 signatureResult];
    signature = [signatureResult signature];

    if (signature)
    {
      v16 = v7;
      v17 = 1;
    }

    else
    {
      state6 = [(AMSPaymentSheetTask *)self state];
      passwordEquivalentToken = [state6 passwordEquivalentToken];

      v16 = v7;
      if (!passwordEquivalentToken)
      {
        [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:0];
        v51 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v51)
        {
          v51 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v51 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          request2 = [(AMSPaymentSheetTask *)self request];
          logKey = [request2 logKey];
          v54 = MEMORY[0x1E696AEC0];
          v55 = objc_opt_class();
          if (logKey)
          {
            request3 = [(AMSPaymentSheetTask *)self request];
            logKey2 = [request3 logKey];
            a2 = NSStringFromSelector(a2);
            [v54 stringWithFormat:@"%@: [%@] %@ ", v55, logKey2, a2];
          }

          else
          {
            request3 = NSStringFromSelector(a2);
            [v54 stringWithFormat:@"%@: %@ ", v55, request3];
          }
          v57 = ;
          *buf = 138543362;
          v62 = v57;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Recording metrics for a successful biometric authorization that is neither Signature- nor PET-based", buf, 0xCu);
          if (logKey)
          {

            v57 = logKey2;
          }
        }

        goto LABEL_20;
      }

      v17 = 2;
    }

    [(AMSPaymentSheetMetricsEvent *)v16 addBiometricMatchState:v17];
LABEL_20:
    request4 = [(AMSPaymentSheetTask *)self request];
    biometricsRequest2 = [request4 biometricsRequest];
    isDualAction = [biometricsRequest2 isDualAction];

    if (!isDualAction)
    {
      goto LABEL_24;
    }

    state7 = [(AMSPaymentSheetTask *)self state];
    paymentToken = [state7 paymentToken];
    [(AMSPaymentSheetMetricsEvent *)v7 addDualActionSuccess:paymentToken != 0];
    goto LABEL_22;
  }

  if ((didAuthorizePayment & 1) == 0)
  {
    state8 = [(AMSPaymentSheetTask *)self state];
    cancellationType3 = [state8 cancellationType];

    if (!cancellationType3)
    {
      state9 = [(AMSPaymentSheetTask *)self state];
      [state9 setCancellationType:2];
    }

    [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:3];
    state10 = [(AMSPaymentSheetTask *)self state];
    cancellationType4 = [state10 cancellationType];
    state11 = [(AMSPaymentSheetTask *)self state];
    state7 = +[AMSPaymentSheetMetricsEvent dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:", cancellationType4, [state11 didBiometricsLockout], 1);

    if (!state7)
    {
      goto LABEL_23;
    }

    paymentToken = [(AMSPaymentSheetTask *)self userActions];
    [paymentToken addObject:state7];
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  request5 = [(AMSPaymentSheetTask *)self request];
  requiresAuthorization = [request5 requiresAuthorization];

  if (requiresAuthorization)
  {
    [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:2];
  }

LABEL_24:
  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  metricsOverlay = [purchase metricsOverlay];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __36__AMSPaymentSheetTask__metricsEvent__block_invoke;
  v59[3] = &unk_1E73B55D8;
  v43 = v7;
  v60 = v43;
  [metricsOverlay enumerateKeysAndObjectsUsingBlock:v59];

  request6 = [(AMSPaymentSheetTask *)self request];
  [(AMSPaymentSheetMetricsEvent *)v43 addClientMetadataForPaymentSheetRequest:request6];

  purchaseInfo2 = [(AMSPaymentSheetTask *)self purchaseInfo];
  metricsDictionary2 = [(AMSPaymentSheetTask *)self metricsDictionary];
  [(AMSPaymentSheetMetricsEvent *)v43 addClientMetadataForPurchaseInfo:purchaseInfo2 metricsDictionary:metricsDictionary2];

  [(AMSPaymentSheetMetricsEvent *)v43 addBiometricsState:+[AMSDefaults deviceBiometricsState]];
  userActions2 = [(AMSPaymentSheetTask *)self userActions];
  [(AMSPaymentSheetMetricsEvent *)v43 addUserActions:userActions2];

  request7 = [(AMSPaymentSheetTask *)self request];
  account = [request7 account];
  [(AMSMetricsEvent *)v43 setAccount:account];

  return v43;
}

void __36__AMSPaymentSheetTask__metricsEvent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setProperty:v5 forBodyKey:v6];
  }
}

- (id)_buildPaymentRequest
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v4 timeIntervalSince1970];
  v6 = v5;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke;
  v21[3] = &unk_1E73BAA08;
  v21[4] = self;
  v21[5] = v6;
  [(AMSPromise *)v3 addFinishBlock:v21];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = getPKPaymentRequestClass_softClass;
  v26 = getPKPaymentRequestClass_softClass;
  if (!getPKPaymentRequestClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getPKPaymentRequestClass_block_invoke;
    v22[3] = &unk_1E73B3880;
    v22[4] = &v23;
    __getPKPaymentRequestClass_block_invoke(v22);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  v9 = objc_alloc_init(v7);
  v10 = objc_alloc_init(AMSPaymentRequest);
  [(AMSPaymentSheetTask *)self _configureBasicsForPaymentRequest:v9 amsPaymentRequest:v10];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke_2;
  v17[3] = &unk_1E73B72B8;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v11 = v3;
  v20 = v11;
  v12 = v10;
  v13 = v9;
  [(AMSPaymentSheetTask *)self _configureLanguage:v12 completion:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

void __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) request];
  v7 = [v6 performanceMetrics];
  [v7 setModelConstructionStartTime:v5];

  v9 = [*(a1 + 32) request];
  v8 = [v9 performanceMetrics];
  [v8 setModelConstructionEndTime:v4];
}

void __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureMerchantSessionForPaymentRequest:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke_3;
  v7[3] = &unk_1E73B72B8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _configurePSD2Decoration:v2 completion:v7];
}

uint64_t __43__AMSPaymentSheetTask__buildPaymentRequest__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _configureAttachSelectedCard:*(a1 + 40)];
  [*(a1 + 32) _configureContentItemsForPaymentRequest:*(a1 + 40) amsPaymentRequest:*(a1 + 48)];
  [*(a1 + 32) _configurePaymentSummaryForPaymentRequest:*(a1 + 40)];
  [*(a1 + 32) _configureConfirmationScreenForPaymentRequest:*(a1 + 40) amsPaymentRequest:*(a1 + 48)];
  [*(a1 + 32) _configureCustomUIForPaymentRequest:*(a1 + 40) amsPaymentRequest:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);

  return [v2 finishWithResult:v3];
}

- (void)_configureBasicsForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest
{
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  request = [(AMSPaymentSheetTask *)self request];
  biometricsRequest = [request biometricsRequest];
  [requestCopy setAccesssControlRef:{objc_msgSend(biometricsRequest, "localAuthAccessControlRef")}];

  request2 = [(AMSPaymentSheetTask *)self request];
  biometricsRequest2 = [request2 biometricsRequest];
  localAuthContext = [biometricsRequest2 localAuthContext];
  externalizedContext = [localAuthContext externalizedContext];

  request3 = [(AMSPaymentSheetTask *)self request];
  LOBYTE(biometricsRequest2) = [request3 requiresAuthorization];

  if ((biometricsRequest2 & 1) != 0 || externalizedContext)
  {
    authenticationContext = [(AMSPaymentSheetTask *)self authenticationContext];
    [requestCopy setAppleIDAuthenticationContext:authenticationContext];
  }

  [requestCopy setExternalizedContext:externalizedContext];
  [requestCopy setRequestType:1];
  request4 = [(AMSPaymentSheetTask *)self request];
  currencyCode = [request4 currencyCode];
  [requestCopy setCurrencyCode:currencyCode];

  request5 = [(AMSPaymentSheetTask *)self request];
  LODWORD(currencyCode) = [request5 disablePasscodeFallback];

  if (currencyCode)
  {
    [requestCopy setDisablePasscodeFallback:1];
  }

  request6 = [(AMSPaymentSheetTask *)self request];
  countryCode = [request6 countryCode];
  AMSSetCountryCodeOnPaymentRequest(countryCode, requestCopy);

  request7 = [(AMSPaymentSheetTask *)self request];
  titleType = [request7 titleType];

  if (titleType == 2)
  {
    [requestCopy setRequestor:0];
  }

  else
  {
    request8 = [(AMSPaymentSheetTask *)self request];
    if ([request8 titleType])
    {
      [paymentRequestCopy setLocalizedNavigationTitle:0];
    }

    else
    {
      request9 = [(AMSPaymentSheetTask *)self request];
      title = [request9 title];
      [paymentRequestCopy setLocalizedNavigationTitle:title];
    }
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  hostProcessIdentifier = [purchaseInfo hostProcessIdentifier];
  [requestCopy setHostProcessIdentifier:hostProcessIdentifier];
}

- (void)_configureConfirmationScreenForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest
{
  requestCopy = request;
  request = [(AMSPaymentSheetTask *)self request];
  [requestCopy setConfirmationStyle:{objc_msgSend(request, "ams_confirmationStyle")}];
}

- (void)_configureMerchantSessionForPaymentRequest:(id)request
{
  v56 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  request = [(AMSPaymentSheetTask *)self request];
  merchantSession = [request merchantSession];

  if (merchantSession)
  {
    request2 = [(AMSPaymentSheetTask *)self request];
    biometricsRequest = [request2 biometricsRequest];
    localAuthAccessControlRef = [biometricsRequest localAuthAccessControlRef];

    v10 = [(AMSPaymentSheetTask *)self bag];
    LODWORD(biometricsRequest) = [AMSCardEnrollment shouldUseApplePayClassicWithBag:v10];

    if (biometricsRequest)
    {
      v11 = 4;
    }

    else
    {
      v18 = [(AMSPaymentSheetTask *)self bag];
      v19 = [AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v18];

      if (!v19)
      {
LABEL_25:
        v12 = [AMSBiometrics ACLVersionForAccessControl:localAuthAccessControlRef];
        v38 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v38)
        {
          v38 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v38 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v40 = objc_opt_class();
          v41 = v40;
          request3 = [(AMSPaymentSheetTask *)self request];
          logKey = [request3 logKey];
          *buf = 138543874;
          *&buf[4] = v40;
          *&buf[12] = 2114;
          *&buf[14] = logKey;
          *&buf[22] = 2114;
          v54 = v12;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for insufficient ACL version: %{public}@", buf, 0x20u);
        }

        goto LABEL_30;
      }

      v11 = 3;
    }

    if ([AMSBiometrics isActionSupported:v11 withAccessControl:localAuthAccessControlRef])
    {
      v49 = 0;
      v50 = &v49;
      v51 = 0x2050000000;
      v20 = getPKPaymentMerchantSessionClass_softClass;
      v52 = getPKPaymentMerchantSessionClass_softClass;
      if (!getPKPaymentMerchantSessionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPKPaymentMerchantSessionClass_block_invoke_0;
        v54 = &unk_1E73B3880;
        v55 = &v49;
        __getPKPaymentMerchantSessionClass_block_invoke_0(buf);
        v20 = v50[3];
      }

      v21 = v20;
      _Block_object_dispose(&v49, 8);
      v22 = [v20 alloc];
      v12 = [v22 initWithDictionary:{merchantSession, v49}];
      v23 = +[AMSLogConfig sharedPurchaseConfig];
      v24 = v23;
      if (v12)
      {
        if (!v23)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v24 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = v26;
          request4 = [(AMSPaymentSheetTask *)self request];
          logKey2 = [request4 logKey];
          *buf = 138543618;
          *&buf[4] = v26;
          *&buf[12] = 2114;
          *&buf[14] = logKey2;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attaching merchant session", buf, 0x16u);
        }

        [requestCopy setMerchantSession:v12];
        [requestCopy setMerchantCapabilities:13];
        request5 = [(AMSPaymentSheetTask *)self request];
        isApplePayClassic = [request5 isApplePayClassic];

        if (isApplePayClassic)
        {
          v32 = +[AMSLogConfig sharedPurchaseConfig];
          if (!v32)
          {
            v32 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject3 = [v32 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v34 = objc_opt_class();
            v35 = v34;
            request6 = [(AMSPaymentSheetTask *)self request];
            logKey3 = [request6 logKey];
            *buf = 138543618;
            *&buf[4] = v34;
            *&buf[12] = 2114;
            *&buf[14] = logKey3;
            _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting apple-pay-classic flag", buf, 0x16u);
          }

          [requestCopy setRequestType:0];
        }
      }

      else
      {
        if (!v23)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [v24 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = v45;
          request7 = [(AMSPaymentSheetTask *)self request];
          logKey4 = [request7 logKey];
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2114;
          *&buf[14] = logKey4;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to instantiate PKPaymentMerchantSession object", buf, 0x16u);
        }

        v12 = 0;
      }

      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v12 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    request8 = [(AMSPaymentSheetTask *)self request];
    logKey5 = [request8 logKey];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = logKey5;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no merchant session", buf, 0x16u);
  }

LABEL_30:
}

- (void)_configureAttachSelectedCard:(id)card
{
  v23 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  request = [(AMSPaymentSheetTask *)self request];
  selectedCard = [request selectedCard];

  if (selectedCard)
  {
    v7 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey = [request2 logKey];
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attaching selected card info", &v19, 0x16u);
    }

    request3 = [(AMSPaymentSheetTask *)self request];
    selectedCard2 = [request3 selectedCard];
    passSerialNumber = [selectedCard2 passSerialNumber];
    [cardCopy setPassSerialNumber:passSerialNumber];

    request4 = [(AMSPaymentSheetTask *)self request];
    selectedCard3 = [request4 selectedCard];
    passTypeIdentifier = [selectedCard3 passTypeIdentifier];
    [cardCopy setPassTypeIdentifier:passTypeIdentifier];

    [cardCopy setRequestType:1];
    [cardCopy setAPIType:0];
  }
}

- (void)_configureLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v8 = [(AMSPaymentSheetTask *)self bag];
  v9 = [v8 stringForKey:@"language"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AMSPaymentSheetTask__configureLanguage_completion___block_invoke;
  v12[3] = &unk_1E73BAA58;
  v13 = languageCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = languageCopy;
  v11 = completionCopy;
  [v9 valueWithCompletion:v12];
}

void __53__AMSPaymentSheetTask__configureLanguage_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 request];
      v13 = [v12 logKey];
      v14 = AMSLogableError(v6);
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve storefront language code from bag with error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    [*(a1 + 40) setLanguageTagBagValue:a2];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_configurePSD2Decoration:(id)decoration completion:(id)completion
{
  decorationCopy = decoration;
  completionCopy = completion;
  request = [(AMSPaymentSheetTask *)self request];
  isApplePayClassic = [request isApplePayClassic];

  if (isApplePayClassic)
  {
    v10 = [(AMSPaymentSheetTask *)self bag];
    v11 = [v10 stringForKey:@"countryCode"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__AMSPaymentSheetTask__configurePSD2Decoration_completion___block_invoke;
    v12[3] = &unk_1E73BAA58;
    v12[4] = self;
    v13 = decorationCopy;
    v14 = completionCopy;
    [v11 valueWithCompletion:v12];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __59__AMSPaymentSheetTask__configurePSD2Decoration_completion___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = a1[4];
      v12 = v10;
      v13 = [v11 request];
      v14 = [v13 logKey];
      *buf = 138543874;
      v24 = v10;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = @"countryCode";
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to lookup bag key '%{public}@' for dual-action buy", buf, 0x20u);
    }
  }

  if (v6)
  {
    v15 = [v6 uppercaseString];
    v16 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    [a1[5] setSupportedCountries:v16];
  }

  v17 = [a1[4] bag];
  v18 = [v17 arrayForKey:@"apple-pay-classic-networks"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__AMSPaymentSheetTask__configurePSD2Decoration_completion___block_invoke_280;
  v20[3] = &unk_1E73BAA30;
  v19 = a1[5];
  v20[4] = a1[4];
  v21 = v19;
  v22 = a1[6];
  [v18 valueWithCompletion:v20];
}

void __59__AMSPaymentSheetTask__configurePSD2Decoration_completion___block_invoke_280(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 request];
      v14 = [v13 logKey];
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = @"apple-pay-classic-networks";
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to lookup bag key '%{public}@' for dual-action buy", &v15, 0x20u);
    }
  }

  if (v6)
  {
    [*(a1 + 40) setSupportedNetworks:v6];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_configureCustomUIForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  request = [(AMSPaymentSheetTask *)self request];
  designVersion = [request designVersion];
  v10 = [designVersion isEqualToNumber:&unk_1F07798E0];

  if (v10)
  {
    [requestCopy setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
    v37 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v37];
    v12 = v37;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        request2 = [(AMSPaymentSheetTask *)self request];
        logKey = [request2 logKey];
        *buf = 138543874;
        v43 = v15;
        v44 = 2114;
        v45 = logKey;
        v46 = 2114;
        v47 = v12;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize payment request: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v35 = v11;
      v32 = objc_alloc(MEMORY[0x1E695DF90]);
      v40[0] = @"AMSPaymentSheetPaymentRequestMetadataKeyPayee";
      v18 = MEMORY[0x1E696AD98];
      request3 = [(AMSPaymentSheetTask *)self request];
      v33 = [v18 numberWithInteger:{objc_msgSend(request3, "payee")}];
      v41[0] = v33;
      v40[1] = @"AMSPaymentSheetPaymentRequestMetadataKeyDesignVersion";
      request4 = [(AMSPaymentSheetTask *)self request];
      designVersion2 = [request4 designVersion];
      v41[1] = designVersion2;
      v40[2] = @"AMSPaymentSheetPaymentRequestMetadataKeySalableIconType";
      v21 = MEMORY[0x1E696AD98];
      request5 = [(AMSPaymentSheetTask *)self request];
      v23 = [v21 numberWithInteger:{objc_msgSend(request5, "salableIcon")}];
      v41[2] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
      v13 = [v32 initWithDictionary:v24];

      v36 = 0;
      v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:paymentRequestCopy requiringSecureCoding:1 error:&v36];
      oSLogObject = v36;
      if (oSLogObject)
      {
        v26 = +[AMSLogConfig sharedPurchaseOversizeConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = AMSLogKey();
          *buf = 138543874;
          v43 = v28;
          v44 = 2114;
          v45 = v29;
          v46 = 2114;
          v47 = oSLogObject;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize payment request metadata: %{public}@", buf, 0x20u);
        }
      }

      else if (v25)
      {
        [v13 setObject:v25 forKeyedSubscript:@"AMSPaymentSheetPaymentRequestMetadataKeyRequestData"];
      }

      v11 = v35;
      v38[0] = @"AMSPaymentSheetPaymentRequest";
      v38[1] = @"AMSPaymentSheetPaymentRequestMetadata";
      v39[0] = v35;
      v30 = [v13 copy];
      v39[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      [requestCopy setClientViewSourceParameter:v31];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_configurePaymentSummaryForPaymentRequest:(id)request
{
  requestCopy = request;
  request = [(AMSPaymentSheetTask *)self request];
  assetCache = [(AMSPaymentSheetTask *)self assetCache];
  v6 = [(AMSPaymentSheetTask *)self bag];
  v7 = [request ams_createSummaryItemsForAttributedListWithAssetCache:assetCache bag:v6];

  if ([v7 count])
  {
    [requestCopy setPaymentSummaryItems:v7];
    [requestCopy setPaymentSummaryPinned:1];
    [requestCopy setSuppressTotal:1];
    goto LABEL_10;
  }

  request2 = [(AMSPaymentSheetTask *)self request];
  ams_createSummaryItems = [request2 ams_createSummaryItems];

  [requestCopy setPaymentSummaryItems:ams_createSummaryItems];
  request3 = [(AMSPaymentSheetTask *)self request];
  paymentSummary = [request3 paymentSummary];
  if (!paymentSummary)
  {
    goto LABEL_6;
  }

  v12 = paymentSummary;
  request4 = [(AMSPaymentSheetTask *)self request];
  priceSectionItems = [request4 priceSectionItems];
  v15 = [priceSectionItems count];

  if (v15)
  {
    request3 = [(AMSPaymentSheetTask *)self request];
    paymentSummary2 = [request3 paymentSummary];
    [requestCopy setLocalizedSummaryItemsTitle:paymentSummary2];

LABEL_6:
  }

  request5 = [(AMSPaymentSheetTask *)self request];
  price = [request5 price];

  if (!price)
  {
    [requestCopy setSuppressTotal:1];
  }

LABEL_10:
}

- (void)_configureContentItemsForPaymentRequest:(id)request amsPaymentRequest:(id)paymentRequest
{
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  request = [(AMSPaymentSheetTask *)self request];
  [paymentRequestCopy setDrawBackground:{objc_msgSend(request, "drawBackground")}];

  request2 = [(AMSPaymentSheetTask *)self request];
  [paymentRequestCopy setDrawBottomDivider:{objc_msgSend(request2, "drawBottomDivider")}];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  request3 = [(AMSPaymentSheetTask *)self request];
  assetCache = [(AMSPaymentSheetTask *)self assetCache];
  request4 = [(AMSPaymentSheetTask *)self request];
  designVersion = [request4 designVersion];
  v15 = [(AMSPaymentSheetTask *)self bag];
  v16 = [request3 ams_createAMSContentItemForSalableInfoWithAssetCache:assetCache designVersion:designVersion bag:v15];

  v74 = v16;
  v75 = paymentRequestCopy;
  [paymentRequestCopy setSalableInfo:v16];
  request5 = [(AMSPaymentSheetTask *)self request];
  assetCache2 = [(AMSPaymentSheetTask *)self assetCache];
  request6 = [(AMSPaymentSheetTask *)self request];
  designVersion2 = [request6 designVersion];
  v21 = [(AMSPaymentSheetTask *)self bag];
  v22 = [request5 ams_createAMSContentItemsForPreScreenDialogWithAssetCache:assetCache2 designVersion:designVersion2 bag:v21];

  if ([v22 count])
  {
    [v10 addObjectsFromArray:v22];
  }

  request7 = [(AMSPaymentSheetTask *)self request];
  ams_createAMSContentItemForRating = [request7 ams_createAMSContentItemForRating];
  [v10 ams_addNullableObject:ams_createAMSContentItemForRating];

  request8 = [(AMSPaymentSheetTask *)self request];
  assetCache3 = [(AMSPaymentSheetTask *)self assetCache];
  request9 = [(AMSPaymentSheetTask *)self request];
  designVersion3 = [request9 designVersion];
  v29 = [(AMSPaymentSheetTask *)self bag];
  v30 = [request8 ams_createAMSContentItemsForFlexibleListWithAssetCache:assetCache3 designVersion:designVersion3 bag:v29];

  if ([v30 count])
  {
    [v10 addObjectsFromArray:v30];
  }

  v72 = v30;
  v73 = v22;
  request10 = [(AMSPaymentSheetTask *)self request];
  assetCache4 = [(AMSPaymentSheetTask *)self assetCache];
  request11 = [(AMSPaymentSheetTask *)self request];
  designVersion4 = [request11 designVersion];
  v35 = [(AMSPaymentSheetTask *)self bag];
  v36 = [request10 ams_createContentItemForSalableInfoWithAssetCache:assetCache4 designVersion:designVersion4 bag:v35];

  v71 = v36;
  [v9 ams_addNullableObject:v36];
  request12 = [(AMSPaymentSheetTask *)self request];
  assetCache5 = [(AMSPaymentSheetTask *)self assetCache];
  request13 = [(AMSPaymentSheetTask *)self request];
  designVersion5 = [request13 designVersion];
  v41 = [(AMSPaymentSheetTask *)self bag];
  v42 = [request12 ams_createContentItemsForPreScreenDialogWithAssetCache:assetCache5 designVersion:designVersion5 bag:v41];

  if ([v42 count])
  {
    [v9 addObjectsFromArray:v42];
  }

  v70 = v42;
  request14 = [(AMSPaymentSheetTask *)self request];
  ams_createContentItemForRating = [request14 ams_createContentItemForRating];
  [v9 ams_addNullableObject:ams_createContentItemForRating];

  request15 = [(AMSPaymentSheetTask *)self request];
  assetCache6 = [(AMSPaymentSheetTask *)self assetCache];
  request16 = [(AMSPaymentSheetTask *)self request];
  designVersion6 = [request16 designVersion];
  v49 = [(AMSPaymentSheetTask *)self bag];
  v50 = [request15 ams_createContentItemsForFlexibleListWithAssetCache:assetCache6 designVersion:designVersion6 bag:v49];

  if ([v50 count])
  {
    [v9 addObjectsFromArray:v50];
  }

  request17 = [(AMSPaymentSheetTask *)self request];
  v52 = [request17 isDesignVersionLessThan:&unk_1F07798E0];

  if (v52)
  {
    request18 = [(AMSPaymentSheetTask *)self request];
    ams_createContentItemForAccount = [request18 ams_createContentItemForAccount];

    [v9 ams_addNullableObject:ams_createContentItemForAccount];
  }

  v55 = v10;
  request19 = [(AMSPaymentSheetTask *)self request];
  v57 = [request19 isDesignVersionEqualOrGreaterThan:&unk_1F07798E0];

  if (v57)
  {
    request20 = [(AMSPaymentSheetTask *)self request];
    assetCache7 = [(AMSPaymentSheetTask *)self assetCache];
    request21 = [(AMSPaymentSheetTask *)self request];
    designVersion7 = [request21 designVersion];
    v62 = [(AMSPaymentSheetTask *)self bag];
    v63 = [request20 ams_createSecondaryContentItemForSalableInfoWithAssetCache:assetCache7 designVersion:designVersion7 bag:v62];

    if (v63)
    {
      [v75 setSecondarySalableInfo:v63];
    }

    request22 = [(AMSPaymentSheetTask *)self request];
    assetCache8 = [(AMSPaymentSheetTask *)self assetCache];
    request23 = [(AMSPaymentSheetTask *)self request];
    designVersion8 = [request23 designVersion];
    v68 = [(AMSPaymentSheetTask *)self bag];
    v69 = [request22 ams_createSecondaryContentItemsForFlexibleListWithAssetCache:assetCache8 designVersion:designVersion8 bag:v68];

    if ([v69 count])
    {
      [v75 setSecondaryContentItems:v69];
    }
  }

  [requestCopy setPaymentContentItems:v9];
  [v75 setPaymentContentItems:v55];
}

- (void)_dismissPaymentAuthorizationController:(id)controller
{
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  request = [(AMSPaymentSheetTask *)self request];
  logKey = [request logKey];

  v8 = +[AMSLogConfig sharedPurchaseConfig];
  v9 = v8;
  if (controllerCopy)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromSelector(a2);
      v14 = v13;
      if (logKey)
      {
        [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey, v13];
      }

      else
      {
        [v11 stringWithFormat:@"%@: %@ ", v12, v13, v28];
      }
      v20 = ;
      v21 = AMSHashIfNeeded(controllerCopy);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Dismissing authorization controller: %{public}@", buf, 0x16u);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke;
    v29[3] = &unk_1E73B92F0;
    v29[4] = self;
    v32 = a2;
    v30 = controllerCopy;
    v31 = logKey;
    v22 = v29;
    v23 = AMSLogKey();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __AMSDispatchAsync_block_invoke_7;
    v34 = &unk_1E73B36D0;
    v35 = v23;
    v36 = v22;
    v24 = v23;
    dispatch_async(MEMORY[0x1E69E96A0], buf);
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      v19 = v18;
      if (logKey)
      {
        [v16 stringWithFormat:@"%@: [%@] %@ ", v17, logKey, v18];
      }

      else
      {
        [v16 stringWithFormat:@"%@: %@ ", v17, v18, v28];
      }
      v25 = ;
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Attempting to dismiss nil controller", buf, 0xCu);
    }

    v26 = AMSError(509, @"Authorization Controller Missing", @"We attempted to dismiss a nil controller.", 0);
    paymentSheetPromise = [(AMSPaymentSheetTask *)self paymentSheetPromise];
    [paymentSheetPromise finishWithError:v26];
  }
}

void __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke(uint64_t a1)
{
  v2 = [AMSDeallocGuard alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_2;
  v24[3] = &unk_1E73B40A8;
  v3 = *(a1 + 56);
  v24[4] = *(a1 + 32);
  v24[5] = v3;
  v4 = [(AMSDeallocGuard *)v2 initWithDeallocGuardBlock:v24];
  v5 = [[AMSMutablePromise alloc] initWithTimeout:3.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_296;
  v17[3] = &unk_1E73B9D88;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v23 = *(a1 + 56);
  v20 = v9;
  v10 = v4;
  v21 = v10;
  v11 = v5;
  v22 = v11;
  [v6 dismissWithCompletion:v17];
  v12 = [*(a1 + 32) paymentSheetPromise];
  v13 = [v12 isFinished];

  if ((v13 & 1) == 0)
  {
    v14 = [*(a1 + 32) paymentSheetPromise];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_299;
    v16[3] = &unk_1E73BAA80;
    v16[4] = *(a1 + 32);
    v15 = [(AMSMutablePromise *)v11 continueWithBlock:v16];
    [v14 finishWithPromise:v15];
  }

  [*(a1 + 40) setDelegate:0];
  [*(a1 + 32) setPaymentAuthorizationController:0];
}

void __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedPurchaseConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      if (v6)
      {
        v9 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: [%@] %@ ", v8, v9, a1];
      }

      else
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: %@ ", v8, v9];
      }
      v10 = ;
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v6)
      {

        v10 = a1;
      }
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      if (v12)
      {
        v15 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a1];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      *buf = 138543362;
      v18 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_FAULT, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v12)
      {

        v16 = a1;
      }
    }
  }
}

uint64_t __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_296(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
      v7 = *(a1 + 32);
      v8 = NSStringFromSelector(*(a1 + 72));
      [v4 stringWithFormat:@"%@: [%@] %@ ", v6, v7, v8];
    }

    else
    {
      v8 = NSStringFromSelector(*(a1 + 72));
      [v4 stringWithFormat:@"%@: %@ ", v6, v8, v13];
    }
    v9 = ;
    v10 = NSStringFromSelector(sel_dismissWithCompletion_);
    v11 = AMSHashIfNeeded(*(a1 + 48));
    *buf = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Received %{public}@ callback from %{public}@", buf, 0x20u);
  }

  [*(a1 + 56) invalidate];
  [*(a1 + 64) finishWithResult:MEMORY[0x1E695E118]];
  return [*(a1 + 40) _didDismissPaymentAuthorizationController:*(a1 + 48)];
}

id __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke_299(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  v3 = [v2 error];

  if (!v3)
  {
    v4 = [*(a1 + 32) state];
    v5 = [v4 didAuthorizePayment];

    if (v5)
    {
      v3 = objc_alloc_init(AMSPaymentSheetResult);
      v6 = [*(a1 + 32) state];
      v7 = [v6 passwordEquivalentToken];
      [(AMSPaymentSheetResult *)v3 setPasswordEquivalentToken:v7];

      v8 = [*(a1 + 32) state];
      v9 = [v8 signatureResult];
      [(AMSPaymentSheetResult *)v3 setSignatureResult:v9];

      v10 = [*(a1 + 32) state];
      v11 = [v10 paymentMethodType];
      [(AMSPaymentSheetResult *)v3 setPaymentMethodType:v11];

      v12 = [*(a1 + 32) state];
      v13 = [v12 paymentToken];
      [(AMSPaymentSheetResult *)v3 setPaymentToken:v13];

LABEL_9:
      v24 = [AMSPromise promiseWithResult:v3];
      goto LABEL_13;
    }
  }

  v14 = [*(a1 + 32) state];
  v15 = [v14 cancellationType];

  if (v15)
  {
    v29 = @"AMSCancellationType";
    v16 = MEMORY[0x1E696AD98];
    v17 = [*(a1 + 32) state];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "cancellationType")}];
    v30[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v20 = [v19 mutableCopy];

    v21 = [*(a1 + 32) state];
    v22 = [v21 cancellationType];
    if ((v22 - 1) > 4)
    {
      v23 = 0;
    }

    else
    {
      v23 = off_1E73BAB20[v22 - 1];
    }

    [v20 setObject:v23 forKeyedSubscript:@"AMSCancellationReason"];

    v25 = [v20 copy];
    v26 = AMSErrorWithUserInfo(6, @"Payment Sheet Failed", @"The payment sheet was cancelled by the user.", v25, 0);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    v3 = AMSError(6, @"Payment Sheet Failed", @"Payment sheet dismissed with neither an error nor a result", 0);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v24 = [AMSPromise promiseWithError:v3];
LABEL_13:
  v27 = v24;

  return v27;
}

- (void)_presentPaymentConfirmationWithPaymentRequest:(id)request purchaseResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(AMSPaymentSheetTask *)self request:request];
  logKey = [v5 logKey];

  request = [(AMSPaymentSheetTask *)self request];
  if ([request requiresAuthorization])
  {
  }

  else
  {
    request2 = [(AMSPaymentSheetTask *)self request];
    requiresDelegateAuthentication = [request2 requiresDelegateAuthentication];

    if (!requiresDelegateAuthentication)
    {
      goto LABEL_9;
    }
  }

  v10 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to present payment presentation confirmation for request that is not confirmation only.", &v15, 0x16u);
  }

LABEL_9:
  v12 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = 138543618;
    v16 = v14;
    v17 = 2114;
    v18 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Platform not supported", &v15, 0x16u);
  }
}

- (void)_presentCompanionAuthenticationSheetWithPaymentRequest:(id)request purchaseResult:(id)result
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(AMSPaymentSheetTask *)self request:request];
  logKey = [v5 logKey];

  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Platform not supported", buf, 0x16u);
  }

  v10 = AMSError(5, @"Companion Auth Error", @"Platform not supported", 0);
  [(AMSMutablePromise *)v7 finishWithError:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__AMSPaymentSheetTask__presentCompanionAuthenticationSheetWithPaymentRequest_purchaseResult___block_invoke;
  v12[3] = &unk_1E73BAAA8;
  v12[4] = self;
  [(AMSPromise *)v7 addSuccessBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__AMSPaymentSheetTask__presentCompanionAuthenticationSheetWithPaymentRequest_purchaseResult___block_invoke_2;
  v11[3] = &unk_1E73B34B8;
  v11[4] = self;
  [(AMSPromise *)v7 addErrorBlock:v11];
}

void __93__AMSPaymentSheetTask__presentCompanionAuthenticationSheetWithPaymentRequest_purchaseResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(AMSPaymentSheetResult);
  v4 = [v3 token];

  [(AMSPaymentSheetResult *)v6 setDelegateAuthenticateToken:v4];
  v5 = [*(a1 + 32) paymentSheetPromise];
  [v5 finishWithResult:v6];
}

void __93__AMSPaymentSheetTask__presentCompanionAuthenticationSheetWithPaymentRequest_purchaseResult___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 paymentSheetPromise];
  [v4 finishWithError:v3];
}

- (id)_presentPaymentSheetWithPaymentRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AMSPaymentSheetTask__presentPaymentSheetWithPaymentRequest___block_invoke;
  v13[3] = &unk_1E73B71B0;
  v14 = requestCopy;
  v6 = v5;
  v15 = v6;
  selfCopy = self;
  v7 = v13;
  v8 = requestCopy;
  v9 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_7;
  block[3] = &unk_1E73B36D0;
  v18 = v9;
  v19 = v7;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v11 = v6;
  return v6;
}

void __62__AMSPaymentSheetTask__presentPaymentSheetWithPaymentRequest___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v2 = _MergedGlobals_1_15;
  v29 = _MergedGlobals_1_15;
  if (!_MergedGlobals_1_15)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentAuthorizationControllerClass_block_invoke;
    v31 = &unk_1E73B3880;
    v32 = &v26;
    __getPKPaymentAuthorizationControllerClass_block_invoke(buf);
    v2 = v27[3];
  }

  v3 = v2;
  _Block_object_dispose(&v26, 8);
  v4 = [[v2 alloc] initWithPaymentRequest:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    [v4 setDelegate:*(a1 + 48)];
    [v5 setPrivateDelegate:*(a1 + 48)];
    [*(a1 + 48) setPaymentAuthorizationController:v5];
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [*(a1 + 48) request];
    v10 = [v9 performanceMetrics];
    [v10 setPageRequestTime:v8];

    v11 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v17 = AMSLogKey();
        v18 = [v14 stringWithFormat:@"%@: [%@] ", v16, v17];
      }

      else
      {
        v18 = [v14 stringWithFormat:@"%@: ", v15];
        v17 = v18;
      }

      v21 = AMSHashIfNeeded(v5);
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting payment authorization controller: %{public}@", buf, 0x16u);
      if (v13)
      {
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__AMSPaymentSheetTask__presentPaymentSheetWithPaymentRequest___block_invoke_315;
    v24[3] = &unk_1E73B5650;
    v23 = *(a1 + 40);
    v22 = v23.i64[0];
    v25 = vextq_s8(v23, v23, 8uLL);
    [v5 presentWithCompletion:v24];
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = AMSError(0, @"Payment Sheet Failed", @"Unable to create authorization controller", 0);
    [v19 finishWithError:v20];
  }
}

void __62__AMSPaymentSheetTask__presentPaymentSheetWithPaymentRequest___block_invoke_315(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) request];
      v8 = [v7 logKey];
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v2 = [*(a1 + 32) request];
        v3 = [v2 logKey];
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Payment sheet has presented", buf, 0xCu);
      if (v8)
      {

        v12 = v2;
      }
    }

    v16 = [MEMORY[0x1E695DF00] now];
    [v16 timeIntervalSince1970];
    v18 = v17;
    v19 = [*(a1 + 32) request];
    v20 = [v19 performanceMetrics];
    [v20 setPageEndTime:v18];

    [*(a1 + 40) finishWithSuccess];
  }

  else
  {
    v13 = [*(a1 + 32) state];
    [v13 setCancellationType:101];

    v14 = *(a1 + 40);
    v15 = AMSError(10, @"Payment Sheet Failed", @"Presentation failed", 0);
    [v14 finishWithError:v15];
  }

  v21 = [*(a1 + 32) request];
  v22 = [v21 performanceMetrics];
  v23 = [*(a1 + 32) purchaseInfo];
  v24 = [v23 purchase];
  v25 = [v24 performanceMetricsOverlay];
  [v22 enqueueMetricsEventWithOverlay:v25];
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  paymentCopy = payment;
  handlerCopy = handler;
  v11 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  v13 = 0x1E696A000;
  v45 = paymentCopy;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v42 = handlerCopy;
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      paymentCopy = NSStringFromSelector(a2);
      v38 = logKey2;
      [v15 stringWithFormat:@"%@: [%@] %@ ", v16, logKey2, paymentCopy];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v15 stringWithFormat:@"%@: %@ ", v16, request2];
    }
    v19 = ;
    v20 = controllerCopy;
    v21 = AMSHashIfNeeded(controllerCopy);
    v22 = AMSHashIfNeeded(v45);
    *buf = 138543874;
    v50 = v19;
    v51 = 2114;
    v52 = v21;
    v53 = 2114;
    v54 = v22;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | payment: %{public}@", buf, 0x20u);
    if (logKey)
    {

      v19 = v38;
    }

    controllerCopy = v20;
    paymentCopy = v45;
    v13 = 0x1E696A000;
    handlerCopy = v42;
  }

  v23 = objc_alloc_init(AMSMutablePromise);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __82__AMSPaymentSheetTask_paymentAuthorizationController_didAuthorizePayment_handler___block_invoke;
  v48[3] = &unk_1E73B34B8;
  v48[4] = self;
  [(AMSPromise *)v23 addErrorBlock:v48];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __82__AMSPaymentSheetTask_paymentAuthorizationController_didAuthorizePayment_handler___block_invoke_320;
  v46[3] = &unk_1E73B4F28;
  v24 = handlerCopy;
  v47 = v24;
  [(AMSPromise *)v23 addFinishBlock:v46];
  v25 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v24;
    v43 = controllerCopy;
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      controllerCopy = [request4 logKey];
      v13 = NSStringFromSelector(a2);
      [v28 stringWithFormat:@"%@: [%@] %@ ", v29, controllerCopy, v13];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v28 stringWithFormat:@"%@: %@ ", v29, request4];
    }
    v31 = ;
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Authorizing payment…", buf, 0xCu);
    v24 = v41;
    if (logKey3)
    {

      v31 = controllerCopy;
    }

    controllerCopy = v43;
    paymentCopy = v45;
  }

  authKitAuthenticationResults = [paymentCopy authKitAuthenticationResults];

  if (authKitAuthenticationResults)
  {
    authKitAuthenticationResults2 = [paymentCopy authKitAuthenticationResults];
    biometricsRequest2 = [(AMSPaymentSheetTask *)self _authorizePaymentWithAuthKitResults:authKitAuthenticationResults2];
    [(AMSMutablePromise *)v23 finishWithPromise:biometricsRequest2];
  }

  else
  {
    request5 = [(AMSPaymentSheetTask *)self request];
    biometricsRequest = [request5 biometricsRequest];

    if (!biometricsRequest)
    {
      authKitAuthenticationResults2 = AMSError(0, @"Payment Sheet Failed", @"Unknown error occurred during authorization", 0);
      [(AMSMutablePromise *)v23 finishWithError:authKitAuthenticationResults2];
      goto LABEL_24;
    }

    authKitAuthenticationResults2 = [(AMSPaymentSheetTask *)self request];
    biometricsRequest2 = [authKitAuthenticationResults2 biometricsRequest];
    v37 = [(AMSPaymentSheetTask *)self _authorizePaymentWithBiometricsRequest:biometricsRequest2 payment:paymentCopy];
    [(AMSMutablePromise *)v23 finishWithPromise:v37];
  }

LABEL_24:
}

void __82__AMSPaymentSheetTask_paymentAuthorizationController_didAuthorizePayment_handler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 state];
  v6 = [v5 error];

  if (v6)
  {
    v7 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) request];
      v10 = [v9 logKey];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v20 = [*(a1 + 32) request];
        v19 = [v20 logKey];
        [v11 stringWithFormat:@"%@: [%@] ", v13, v19];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = [*(a1 + 32) state];
      v16 = [v15 error];
      v17 = AMSLogableError(v16);
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Payment authorization failed with error, but an error already exists: %{public}@", buf, 0x16u);

      if (v10)
      {

        v14 = v20;
      }
    }
  }

  v18 = [*(a1 + 32) state];
  [v18 setError:v4];
}

void __82__AMSPaymentSheetTask_paymentAuthorizationController_didAuthorizePayment_handler___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = objc_alloc(getPKPaymentAuthorizationResultClass());
    v9 = v7;
  }

  else
  {
    v8 = objc_alloc(getPKPaymentAuthorizationResultClass());
    v11 = v8;
    if (v6)
    {
      v13[0] = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = [v11 initWithStatus:1 errors:v12];

      goto LABEL_6;
    }

    v9 = 1;
  }

  v10 = [v8 initWithStatus:v9 errors:0];
LABEL_6:
  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v20 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      a2 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, logKey2, a2];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, request2];
    }
    v13 = ;
    v14 = AMSHashIfNeeded(finishCopy);
    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v13 = logKey2;
    }
  }

  [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:finishCopy];
}

- (id)presentationWindowForPaymentAuthorizationController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, request2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(controllerCopy);
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  return 0;
}

- (void)paymentAuthorizationController:(id)controller didSelectPaymentMethod:(id)method handler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  methodCopy = method;
  handlerCopy = handler;
  v12 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v34 = handlerCopy;
    v35 = a2;
    v32 = logKey;
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      v29 = NSStringFromSelector(a2);
      v30 = logKey2;
      [v15 stringWithFormat:@"%@: [%@] %@ ", v16, logKey2, v29];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v15 stringWithFormat:@"%@: %@ ", v16, request2];
    }
    v18 = ;
    v36 = controllerCopy;
    v19 = AMSHashIfNeeded(controllerCopy);
    displayName = [methodCopy displayName];
    v21 = AMSHashIfNeeded(displayName);
    network = [methodCopy network];
    v23 = AMSHashIfNeeded(network);
    *buf = 138544386;
    v42 = v18;
    v43 = 2114;
    v44 = v19;
    v45 = 2114;
    v46 = v21;
    v47 = 2114;
    v48 = v23;
    v49 = 2048;
    type = [methodCopy type];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | displayName: %{public}@ | network: %{public}@ | type: %lu", buf, 0x34u);

    if (v32)
    {

      v18 = v30;
    }

    a2 = v35;
    controllerCopy = v36;
    handlerCopy = v34;
  }

  v24 = [(AMSPaymentSheetTask *)self bag];
  v25 = [v24 BOOLForKey:@"applePayPaymentMethodTypeBuyParamEnabled"];
  valuePromise = [v25 valuePromise];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85__AMSPaymentSheetTask_paymentAuthorizationController_didSelectPaymentMethod_handler___block_invoke;
  v37[3] = &unk_1E73BAAD0;
  v37[4] = self;
  v38 = methodCopy;
  v39 = handlerCopy;
  v40 = a2;
  v27 = handlerCopy;
  v28 = methodCopy;
  [valuePromise addFinishBlock:v37];
}

void __85__AMSPaymentSheetTask_paymentAuthorizationController_didSelectPaymentMethod_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 BOOLValue])
  {
    v8 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 32) request];
      v10 = [v34 logKey];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      if (v10)
      {
        v13 = [*(a1 + 32) request];
        v32 = [v13 logKey];
        v3 = NSStringFromSelector(*(a1 + 56));
        [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v32, v3];
      }

      else
      {
        v13 = NSStringFromSelector(*(a1 + 56));
        [v11 stringWithFormat:@"%@: %@ ", v12, v13];
      }
      v14 = ;
      v15 = [*(a1 + 40) type];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Enabled to add buyParam for ApplePay payment Method type: %lu", buf, 0x16u);
      if (v10)
      {

        v14 = v32;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "type")}];
    v17 = [*(a1 + 32) state];
    [v17 setPaymentMethodType:v16];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "type")}];
    v19 = [*(a1 + 32) purchaseInfo];
    [v19 setPaymentMethodType:v18];
  }

  if (v7 && [v7 code] != 204)
  {
    v20 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 32) request];
      v22 = [v35 logKey];
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      if (v22)
      {
        v33 = [*(a1 + 32) request];
        v25 = [v33 logKey];
        v31 = NSStringFromSelector(*(a1 + 56));
        v26 = [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v31];
      }

      else
      {
        v33 = NSStringFromSelector(*(a1 + 56));
        v26 = [v23 stringWithFormat:@"%@: %@ ", v24, v33];
        v25 = v26;
      }

      v27 = AMSLogableError(v7);
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get applePayPaymentMethodTypeBuyParamEnabled bag key with error: %{public}@", buf, 0x16u);
      if (v22)
      {
      }
    }
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v28 = getPKPaymentRequestPaymentMethodUpdateClass_softClass;
  v39 = getPKPaymentRequestPaymentMethodUpdateClass_softClass;
  if (!getPKPaymentRequestPaymentMethodUpdateClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentRequestPaymentMethodUpdateClass_block_invoke;
    v41 = &unk_1E73B3880;
    v42 = &v36;
    __getPKPaymentRequestPaymentMethodUpdateClass_block_invoke(buf);
    v28 = v37[3];
  }

  v29 = v28;
  _Block_object_dispose(&v36, 8);
  v30 = objc_alloc_init(v28);
  (*(*(a1 + 48) + 16))();
}

- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event
{
  v52 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v45 = controllerCopy;
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v42 = a2;
    selfCopy = self;
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      a2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, logKey2, a2];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, request2];
    }
    v16 = ;
    v17 = AMSHashIfNeeded(v45);
    *buf = 138543874;
    v47 = v16;
    v48 = 2114;
    v49 = v17;
    v50 = 2048;
    eventCopy = event;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | event: %lu", buf, 0x20u);
    if (logKey)
    {

      v16 = logKey2;
    }

    self = selfCopy;
    controllerCopy = v45;
    a2 = v42;
  }

  if (event > 5)
  {
    if (event > 8)
    {
      switch(event)
      {
        case 9uLL:
          state = [(AMSPaymentSheetTask *)self state];
          paymentAuthorizationController = state;
          v23 = 1;
          break;
        case 0xAuLL:
          state = [(AMSPaymentSheetTask *)self state];
          paymentAuthorizationController = state;
          v23 = 5;
          break;
        case 0xBuLL:
          state = [(AMSPaymentSheetTask *)self state];
          paymentAuthorizationController = state;
          v23 = 4;
          break;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      if (event != 6)
      {
        state2 = [(AMSPaymentSheetTask *)self state];
        didBiometricsLockout = [state2 didBiometricsLockout];
        if (event == 7)
        {
          v20 = 8;
        }

        else
        {
          v20 = 7;
        }

LABEL_36:
        v38 = [AMSPaymentSheetMetricsEvent dictionaryForUserAction:v20 didBiometricsLockout:didBiometricsLockout];
        goto LABEL_37;
      }

      state = [(AMSPaymentSheetTask *)self state];
      paymentAuthorizationController = state;
      v23 = 3;
    }

    [state setCancellationType:v23];
    goto LABEL_42;
  }

  if (event > 2)
  {
    if (event == 3)
    {
      state2 = [(AMSPaymentSheetTask *)self state];
      didBiometricsLockout = [state2 didBiometricsLockout];
      v20 = 3;
    }

    else
    {
      state2 = [(AMSPaymentSheetTask *)self state];
      didBiometricsLockout = [state2 didBiometricsLockout];
      if (event == 4)
      {
        v20 = 2;
      }

      else
      {
        v20 = 5;
      }
    }

    goto LABEL_36;
  }

  if (event != 1)
  {
    if (event == 2)
    {
      v24 = a2;
      state3 = [(AMSPaymentSheetTask *)self state];
      [state3 setDidBiometricsLockout:1];

      request3 = [(AMSPaymentSheetTask *)self request];
      disablePasscodeFallback = [request3 disablePasscodeFallback];

      if (disablePasscodeFallback)
      {
        v28 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v28)
        {
          v28 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v28 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          request4 = [(AMSPaymentSheetTask *)self request];
          logKey3 = [request4 logKey];
          v32 = MEMORY[0x1E696AEC0];
          v33 = objc_opt_class();
          selfCopy2 = self;
          v35 = v33;
          v44 = selfCopy2;
          if (logKey3)
          {
            request5 = [(AMSPaymentSheetTask *)selfCopy2 request];
            request3 = [request5 logKey];
            v24 = NSStringFromSelector(v24);
            [v32 stringWithFormat:@"%@: [%@] %@ ", v35, request3, v24];
          }

          else
          {
            request5 = NSStringFromSelector(v24);
            [v32 stringWithFormat:@"%@: %@ ", v35, request5];
          }
          v37 = ;
          *buf = 138543362;
          v47 = v37;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Dismissing Payment Sheet due to biometric lockout and no password fallback", buf, 0xCu);
          if (logKey3)
          {

            v37 = request3;
          }

          self = v44;
        }

        v40 = AMSError(509, @"Payment Sheet Failed", @"Device is in biometric lockout and password fallback is disabled", 0);
        state4 = [(AMSPaymentSheetTask *)self state];
        [state4 setError:v40];

        paymentAuthorizationController = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
        [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:paymentAuthorizationController];
        goto LABEL_42;
      }
    }

    goto LABEL_43;
  }

  state2 = [(AMSPaymentSheetTask *)self state];
  v38 = +[AMSPaymentSheetMetricsEvent dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:", 100, [state2 didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));
LABEL_37:
  paymentAuthorizationController = v38;

  if (paymentAuthorizationController)
  {
    userActions = [(AMSPaymentSheetTask *)self userActions];
    [userActions addObject:paymentAuthorizationController];

LABEL_42:
  }

LABEL_43:
}

- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  logKey2 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v31 = a2;
    selfCopy = self;
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      self = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: [%@] %@ ", v13, logKey2, self];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: %@ ", v13, request2];
    }
    v15 = ;
    v16 = AMSHashIfNeeded(controllerCopy);
    v17 = AMSLogableError(errorCopy);
    *buf = 138543874;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    v39 = 2114;
    v40 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | error: %{public}@", buf, 0x20u);
    if (logKey)
    {

      v15 = logKey2;
    }

    a2 = v31;
    self = selfCopy;
  }

  if (errorCopy)
  {
    v18 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v20 = a2;
      request3 = [(AMSPaymentSheetTask *)self request];
      logKey3 = [request3 logKey];
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      selfCopy2 = self;
      if (logKey3)
      {
        request4 = [(AMSPaymentSheetTask *)self request];
        self = [request4 logKey];
        v20 = NSStringFromSelector(v20);
        [v23 stringWithFormat:@"%@: [%@] %@ ", v24, self, v20];
      }

      else
      {
        request4 = NSStringFromSelector(v20);
        [v23 stringWithFormat:@"%@: %@ ", v24, request4];
      }
      selfCopy3 = ;
      v27 = AMSLogableError(errorCopy);
      *buf = 138543618;
      v36 = selfCopy3;
      v37 = 2114;
      v38 = v27;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Payment sheet will finish with error: %{public}@", buf, 0x16u);
      if (logKey3)
      {

        selfCopy3 = self;
      }

      self = selfCopy2;
    }

    v28 = AMSError(509, @"Payment Sheet Failed", @"There was an error in the payment authorization controller.", errorCopy);
    state = [(AMSPaymentSheetTask *)self state];
    [state setError:v28];
  }

  [controllerCopy setPrivateDelegate:0];
}

- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)controller
{
  v44 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      logKey5 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, logKey2, logKey5];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, request2];
    }
    request4 = ;
    logKey4 = AMSHashIfNeeded(controllerCopy);
    *buf = 138543618;
    v41 = request4;
    v42 = 2114;
    v43 = logKey4;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (logKey)
    {

      request4 = logKey2;
    }

    v8 = 0x1E73B0000uLL;
  }

  presentingSceneIdentifier = [(AMSPaymentSheetTask *)self presentingSceneIdentifier];
  if (presentingSceneIdentifier)
  {
    presentingSceneIdentifier2 = presentingSceneIdentifier;
    v18 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey4 = [request4 logKey];
      logKey2 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: [%@] %@ ", v22, logKey4, logKey2];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: %@ ", v22, request4];
    }
    v23 = ;
    *buf = 138543362;
    v41 = v23;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Using self.presentingSceneIdentifier", buf, 0xCu);
    v8 = 0x1E73B0000;
    if (logKey3)
    {

      v23 = logKey4;
    }

    goto LABEL_30;
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  logKey4 = [purchaseInfo purchase];
  presentingSceneIdentifier2 = [logKey4 presentingSceneIdentifier];

  if (!presentingSceneIdentifier2)
  {
    goto LABEL_32;
  }

  v18 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey5 = [request4 logKey];
      purchaseInfo = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: [%@] %@ ", v26, logKey5, purchaseInfo];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: %@ ", v26, request4];
    }
    logKey4 = ;
    *buf = 138543362;
    v41 = logKey4;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Using self.purchaseInfo.purchase.presentingSceneIdentifier", buf, 0xCu);
    v8 = 0x1E73B0000uLL;
    if (logKey3)
    {

      logKey4 = logKey5;
    }

LABEL_30:
  }

LABEL_31:

LABEL_32:
  sharedPurchaseConfig = [*(v8 + 3552) sharedPurchaseConfig];
  if (!sharedPurchaseConfig)
  {
    sharedPurchaseConfig = [*(v8 + 3552) sharedConfig];
  }

  oSLogObject3 = [sharedPurchaseConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    request5 = [(AMSPaymentSheetTask *)self request];
    logKey6 = [request5 logKey];
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    if (logKey6)
    {
      request6 = [(AMSPaymentSheetTask *)self request];
      request4 = [request6 logKey];
      logKey4 = NSStringFromSelector(a2);
      [v31 stringWithFormat:@"%@: [%@] %@ ", v32, request4, logKey4];
    }

    else
    {
      request6 = NSStringFromSelector(a2);
      [v31 stringWithFormat:@"%@: %@ ", v32, request6];
    }
    v34 = ;
    v35 = AMSHashIfNeeded(presentingSceneIdentifier2);
    *buf = 138543618;
    v41 = v34;
    v42 = 2114;
    v43 = v35;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@ returning scene identifier %{public}@", buf, 0x16u);
    if (logKey6)
    {

      v34 = request4;
    }
  }

  return presentingSceneIdentifier2;
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)controller
{
  v51 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v8 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    request = [(AMSPaymentSheetTask *)self request];
    logKey = [request logKey];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    if (logKey)
    {
      request2 = [(AMSPaymentSheetTask *)self request];
      logKey2 = [request2 logKey];
      logKey5 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: [%@] %@ ", v13, logKey2, logKey5];
    }

    else
    {
      request2 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: %@ ", v13, request2];
    }
    request4 = ;
    logKey4 = AMSHashIfNeeded(controllerCopy);
    *buf = 138543618;
    v48 = request4;
    v49 = 2114;
    v50 = logKey4;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (logKey)
    {

      request4 = logKey2;
    }
  }

  presentingSceneBundleIdentifier = [(AMSPaymentSheetTask *)self presentingSceneBundleIdentifier];
  if (presentingSceneBundleIdentifier)
  {
    presentingSceneBundleIdentifier2 = presentingSceneBundleIdentifier;
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v43 = presentingSceneBundleIdentifier2;
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey4 = [request4 logKey];
      logKey2 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: [%@] %@ ", v22, logKey4, logKey2];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: %@ ", v22, request4];
    }
    v23 = ;
    *buf = 138543362;
    v48 = v23;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Using self.presentingSceneBundleIdentifier", buf, 0xCu);
    presentingSceneBundleIdentifier2 = v43;
    if (logKey3)
    {

      v23 = logKey4;
    }

    goto LABEL_47;
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  logKey4 = [purchaseInfo purchase];
  presentingSceneBundleIdentifier2 = [logKey4 presentingSceneBundleIdentifier];

  if (presentingSceneBundleIdentifier2)
  {
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v44 = presentingSceneBundleIdentifier2;
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey5 = [request4 logKey];
      purchaseInfo = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: [%@] %@ ", v26, logKey5, purchaseInfo];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: %@ ", v26, request4];
    }
    logKey4 = ;
    *buf = 138543362;
    v48 = logKey4;
    v31 = "%{public}@Using self.purchaseInfo.purchase.presentingSceneBundleIdentifier";
    goto LABEL_44;
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  logKey4 = [purchaseInfo clientInfo];
  presentingSceneBundleIdentifier2 = [logKey4 proxyAppBundleID];

  if (presentingSceneBundleIdentifier2)
  {
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v44 = presentingSceneBundleIdentifier2;
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey5 = [request4 logKey];
      purchaseInfo = NSStringFromSelector(a2);
      [v27 stringWithFormat:@"%@: [%@] %@ ", v28, logKey5, purchaseInfo];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v27 stringWithFormat:@"%@: %@ ", v28, request4];
    }
    logKey4 = ;
    *buf = 138543362;
    v48 = logKey4;
    v31 = "%{public}@Using self.purchaseInfo.clientInfo.proxyAppBundleID";
    goto LABEL_44;
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  logKey4 = [purchaseInfo clientInfo];
  presentingSceneBundleIdentifier2 = [logKey4 bundleIdentifier];

  if (!presentingSceneBundleIdentifier2)
  {
    goto LABEL_49;
  }

  v17 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v44 = presentingSceneBundleIdentifier2;
    request3 = [(AMSPaymentSheetTask *)self request];
    logKey3 = [request3 logKey];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    if (logKey3)
    {
      request4 = [(AMSPaymentSheetTask *)self request];
      logKey5 = [request4 logKey];
      purchaseInfo = NSStringFromSelector(a2);
      [v29 stringWithFormat:@"%@: [%@] %@ ", v30, logKey5, purchaseInfo];
    }

    else
    {
      request4 = NSStringFromSelector(a2);
      [v29 stringWithFormat:@"%@: %@ ", v30, request4];
    }
    logKey4 = ;
    *buf = 138543362;
    v48 = logKey4;
    v31 = "%{public}@Using self.purchaseInfo.clientInfo.bundleIdentifier";
LABEL_44:
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);
    presentingSceneBundleIdentifier2 = v44;
    if (logKey3)
    {

      logKey4 = logKey5;
    }

LABEL_47:
  }

LABEL_48:

LABEL_49:
  v32 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v32 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    v34 = presentingSceneBundleIdentifier2;
    request5 = [(AMSPaymentSheetTask *)self request];
    logKey6 = [request5 logKey];
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    if (logKey6)
    {
      request6 = [(AMSPaymentSheetTask *)self request];
      request4 = [request6 logKey];
      logKey4 = NSStringFromSelector(a2);
      [v37 stringWithFormat:@"%@: [%@] %@ ", v38, request4, logKey4];
    }

    else
    {
      request6 = NSStringFromSelector(a2);
      [v37 stringWithFormat:@"%@: %@ ", v38, request6];
    }
    v40 = ;
    presentingSceneBundleIdentifier2 = v34;
    v41 = AMSHashIfNeeded(v34);
    *buf = 138543618;
    v48 = v40;
    v49 = 2114;
    v50 = v41;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@ returning bundle identifier %{public}@", buf, 0x16u);
    if (logKey6)
    {

      v40 = request4;
    }
  }

  return presentingSceneBundleIdentifier2;
}

@end