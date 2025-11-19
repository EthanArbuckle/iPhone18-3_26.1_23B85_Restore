@interface AMSPaymentSheetTask
- (AKAppleIDAuthenticationContext)authenticationContext;
- (AMSPaymentSheetTask)initWithRequest:(id)a3 bag:(id)a4;
- (BOOL)cancel;
- (id)_authorizePaymentWithAuthKitResults:(id)a3;
- (id)_authorizePaymentWithBiometricsRequest:(id)a3 payment:(id)a4;
- (id)_buildPaymentRequest;
- (id)_metricsEvent;
- (id)_performInProcessTask;
- (id)_presentPaymentSheetWithPaymentRequest:(id)a3;
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)a3;
- (id)presentationWindowForPaymentAuthorizationController:(id)a3;
- (void)_configureAttachSelectedCard:(id)a3;
- (void)_configureBasicsForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4;
- (void)_configureConfirmationScreenForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4;
- (void)_configureContentItemsForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4;
- (void)_configureCustomUIForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4;
- (void)_configureLanguage:(id)a3 completion:(id)a4;
- (void)_configureMerchantSessionForPaymentRequest:(id)a3;
- (void)_configurePSD2Decoration:(id)a3 completion:(id)a4;
- (void)_configurePaymentSummaryForPaymentRequest:(id)a3;
- (void)_dismissPaymentAuthorizationController:(id)a3;
- (void)_presentCompanionAuthenticationSheetWithPaymentRequest:(id)a3 purchaseResult:(id)a4;
- (void)_presentPaymentConfirmationWithPaymentRequest:(id)a3 purchaseResult:(id)a4;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4;
- (void)paymentAuthorizationController:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
@end

@implementation AMSPaymentSheetTask

- (AMSPaymentSheetTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = AMSPaymentSheetTask;
  v9 = [(AMSTask *)&v19 init];
  if (v9)
  {
    v10 = [v7 logKey];

    if (v10)
    {
      v11 = [v7 logKey];
      v12 = AMSSetLogKey(v11);
    }

    assetCache = v9->_assetCache;
    v9->_assetCache = 0;

    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v9->_request, a3);
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

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling payment sheet task", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  v12 = [(AMSPaymentSheetTask *)self paymentSheetPromise];
  [v12 cancel];

  v13 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(AMSPaymentSheetTask *)self request];
    v16 = [v15 logKey];
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    if (v16)
    {
      v19 = [(AMSPaymentSheetTask *)self request];
      v20 = [v19 logKey];
      a2 = NSStringFromSelector(a2);
      v26 = v20;
      [v17 stringWithFormat:@"%@: [%@] %@ ", v18, v20, a2];
    }

    else
    {
      v19 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: %@ ", v18, v19];
    }
    v21 = ;
    v22 = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
    v23 = AMSHashIfNeeded(v22);
    *buf = 138543618;
    v29 = v21;
    v30 = 2114;
    v31 = v23;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling payment authorization controller: %{public}@", buf, 0x16u);

    if (v16)
    {

      v21 = v26;
    }
  }

  v24 = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
  [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:v24];

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
    v4 = [(AMSPurchaseInfo *)self->_purchaseInfo purchase];

    if (v4)
    {
      v5 = [(AMSPurchaseInfo *)self->_purchaseInfo purchase];
      v6 = [v5 authenticationContextForRequest:self->_request];
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
      v5 = self->_authenticationContext;
      self->_authenticationContext = v9;
      goto LABEL_4;
    }
  }

LABEL_6:

  return authenticationContext;
}

- (id)_authorizePaymentWithAuthKitResults:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v7 = 0x1E696A000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;

    if (v8)
    {
      v9 = [(AMSPaymentSheetTask *)self state];
      v10 = +[AMSPaymentSheetMetricsEvent dictionaryForUserAction:didBiometricsLockout:](AMSPaymentSheetMetricsEvent, "dictionaryForUserAction:didBiometricsLockout:", 6, [v9 didBiometricsLockout]);

      if (v10)
      {
        v11 = [(AMSPaymentSheetTask *)self userActions];
        [v11 addObject:v10];
      }

      v12 = [(AMSPaymentSheetTask *)self purchaseInfo];
      v13 = [v12 idmsTokens];

      if (!v13)
      {
        v14 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v32 = [(AMSPaymentSheetTask *)self purchaseInfo];
        [v32 setIdmsTokens:v15];
      }

      v33 = [(AMSPaymentSheetTask *)self state];
      [v33 setPasswordEquivalentToken:v8];

      v34 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(AMSPaymentSheetTask *)self request];
        v36 = [v45 logKey];
        v37 = MEMORY[0x1E696AEC0];
        v38 = objc_opt_class();
        v39 = v38;
        if (v36)
        {
          v43 = [(AMSPaymentSheetTask *)self request];
          v3 = [v43 logKey];
          [v37 stringWithFormat:@"%@: [%@] ", v39, v3];
        }

        else
        {
          [v37 stringWithFormat:@"%@: ", v38];
        }
        v40 = ;
        *buf = 138543362;
        v47 = v40;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorized with PET from AuthKit", buf, 0xCu);
        if (v36)
        {

          v40 = v43;
        }
      }

      v41 = [(AMSPaymentSheetTask *)self state];
      [v41 setDidAuthorizePayment:1];

      v31 = [AMSPromise promiseWithResult:&unk_1F07798F8];

      goto LABEL_36;
    }
  }

  else
  {
  }

  v16 = [(AMSPaymentSheetTask *)self request];
  v17 = [v16 requiresAuthorization];

  if (v17)
  {
    v18 = AMSError(100, @"Payment Sheet Failed", @"AuthKit authorization failed", 0);
    v19 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    v20 = [(AMSPaymentSheetTask *)self state];
    v18 = +[AMSPaymentSheetMetricsEvent dictionaryForUserAction:didBiometricsLockout:](AMSPaymentSheetMetricsEvent, "dictionaryForUserAction:didBiometricsLockout:", 1, [v20 didBiometricsLockout]);

    if (v18)
    {
      v21 = [(AMSPaymentSheetTask *)self userActions];
      [v21 addObject:v18];
    }

    v22 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(AMSPaymentSheetTask *)self request];
      v25 = [v24 logKey];
      v26 = MEMORY[0x1E696AEC0];
      v27 = objc_opt_class();
      v28 = v27;
      if (v25)
      {
        v44 = [(AMSPaymentSheetTask *)self request];
        v7 = [v44 logKey];
        [v26 stringWithFormat:@"%@: [%@] ", v28, v7];
      }

      else
      {
        [v26 stringWithFormat:@"%@: ", v27];
      }
      v29 = ;
      *buf = 138543362;
      v47 = v29;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Payment authorized without authentication (confirmation only)", buf, 0xCu);
      if (v25)
      {

        v29 = v44;
      }
    }

    v30 = [(AMSPaymentSheetTask *)self state];
    [v30 setDidAuthorizePayment:1];

    v19 = [AMSPromise promiseWithResult:&unk_1F07798F8];
  }

  v31 = v19;

  v8 = 0;
LABEL_36:

  return v31;
}

- (id)_authorizePaymentWithBiometricsRequest:(id)a3 payment:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v8;
    v12 = [(AMSPaymentSheetTask *)self request];
    v13 = [v12 logKey];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = v15;
    if (v13)
    {
      v4 = [(AMSPaymentSheetTask *)self request];
      v5 = [v4 logKey];
      [v14 stringWithFormat:@"%@: [%@] ", v16, v5];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    *buf = 138543362;
    v46 = v17;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Signing biometrics challenge", buf, 0xCu);
    if (v13)
    {

      v17 = v4;
    }

    v8 = v39;
  }

  v18 = [(AMSPaymentSheetTask *)self state];
  v19 = +[AMSPaymentSheetMetricsEvent dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:", 1, [v18 didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));

  if (v19)
  {
    v20 = [(AMSPaymentSheetTask *)self userActions];
    [v20 addObject:v19];
  }

  v21 = [(AMSPaymentSheetTask *)self request];
  v22 = [v21 biometricsRequest];
  v23 = [v22 localAuthContext];
  v24 = [(AMSPaymentSheetTask *)self purchaseInfo];
  [v24 setLocalAuthContext:v23];

  v25 = [[AMSBiometricsSignatureTask alloc] initWithRequest:v9];
  v26 = [(AMSPaymentSheetTask *)self bag];
  v27 = [(AMSBiometricsSignatureTask *)v25 request];
  [v27 setBag:v26];

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

  v32 = [(AMSBiometricsSignatureTask *)v25 performSignature];
  v44[0] = v32;
  v33 = [(AMSBinaryPromise *)v31 promiseAdapter];
  v44[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v35 = [AMSPromise promiseWithAll:v34];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __70__AMSPaymentSheetTask__authorizePaymentWithBiometricsRequest_payment___block_invoke_3;
  v40[3] = &unk_1E73BA9E0;
  v40[4] = self;
  v41 = v8;
  v36 = v8;
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
  v6 = [(AMSPaymentSheetTask *)self metricsDictionary];
  v7 = [(AMSMetricsEvent *)v5 initWithUnderlyingDictionary:v6];

  v8 = [(AMSPaymentSheetTask *)self request];
  v9 = [v8 biometricsRequest];

  v10 = [(AMSPaymentSheetTask *)self state];
  v11 = [v10 didAuthorizePayment];

  if (v9)
  {
    v12 = [(AMSPaymentSheetTask *)self state];
    v13 = v12;
    if (!v11)
    {
      v20 = [v12 cancellationType];

      if (!v20)
      {
        v21 = [(AMSPaymentSheetTask *)self state];
        [v21 setCancellationType:2];
      }

      [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:3];
      v22 = [(AMSPaymentSheetTask *)self state];
      v23 = [v22 cancellationType];
      v24 = [(AMSPaymentSheetTask *)self state];
      v25 = +[AMSPaymentSheetMetricsEvent dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:", v23, [v24 didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));

      if (v25)
      {
        v26 = [(AMSPaymentSheetTask *)self userActions];
        [v26 addObject:v25];
      }

      goto LABEL_20;
    }

    v14 = [v12 signatureResult];
    v15 = [v14 signature];

    if (v15)
    {
      v16 = v7;
      v17 = 1;
    }

    else
    {
      v35 = [(AMSPaymentSheetTask *)self state];
      v36 = [v35 passwordEquivalentToken];

      v16 = v7;
      if (!v36)
      {
        [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:0];
        v51 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v51)
        {
          v51 = +[AMSLogConfig sharedConfig];
        }

        v52 = [v51 OSLogObject];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v58 = [(AMSPaymentSheetTask *)self request];
          v53 = [v58 logKey];
          v54 = MEMORY[0x1E696AEC0];
          v55 = objc_opt_class();
          if (v53)
          {
            v56 = [(AMSPaymentSheetTask *)self request];
            v2 = [v56 logKey];
            a2 = NSStringFromSelector(a2);
            [v54 stringWithFormat:@"%@: [%@] %@ ", v55, v2, a2];
          }

          else
          {
            v56 = NSStringFromSelector(a2);
            [v54 stringWithFormat:@"%@: %@ ", v55, v56];
          }
          v57 = ;
          *buf = 138543362;
          v62 = v57;
          _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@Recording metrics for a successful biometric authorization that is neither Signature- nor PET-based", buf, 0xCu);
          if (v53)
          {

            v57 = v2;
          }
        }

        goto LABEL_20;
      }

      v17 = 2;
    }

    [(AMSPaymentSheetMetricsEvent *)v16 addBiometricMatchState:v17];
LABEL_20:
    v37 = [(AMSPaymentSheetTask *)self request];
    v38 = [v37 biometricsRequest];
    v39 = [v38 isDualAction];

    if (!v39)
    {
      goto LABEL_24;
    }

    v33 = [(AMSPaymentSheetTask *)self state];
    v34 = [v33 paymentToken];
    [(AMSPaymentSheetMetricsEvent *)v7 addDualActionSuccess:v34 != 0];
    goto LABEL_22;
  }

  if ((v11 & 1) == 0)
  {
    v27 = [(AMSPaymentSheetTask *)self state];
    v28 = [v27 cancellationType];

    if (!v28)
    {
      v29 = [(AMSPaymentSheetTask *)self state];
      [v29 setCancellationType:2];
    }

    [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:3];
    v30 = [(AMSPaymentSheetTask *)self state];
    v31 = [v30 cancellationType];
    v32 = [(AMSPaymentSheetTask *)self state];
    v33 = +[AMSPaymentSheetMetricsEvent dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForCancellationEvent:didBiometricsLockout:biometricsType:", v31, [v32 didBiometricsLockout], 1);

    if (!v33)
    {
      goto LABEL_23;
    }

    v34 = [(AMSPaymentSheetTask *)self userActions];
    [v34 addObject:v33];
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v18 = [(AMSPaymentSheetTask *)self request];
  v19 = [v18 requiresAuthorization];

  if (v19)
  {
    [(AMSPaymentSheetMetricsEvent *)v7 addBiometricMatchState:2];
  }

LABEL_24:
  v40 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v41 = [v40 purchase];
  v42 = [v41 metricsOverlay];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __36__AMSPaymentSheetTask__metricsEvent__block_invoke;
  v59[3] = &unk_1E73B55D8;
  v43 = v7;
  v60 = v43;
  [v42 enumerateKeysAndObjectsUsingBlock:v59];

  v44 = [(AMSPaymentSheetTask *)self request];
  [(AMSPaymentSheetMetricsEvent *)v43 addClientMetadataForPaymentSheetRequest:v44];

  v45 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v46 = [(AMSPaymentSheetTask *)self metricsDictionary];
  [(AMSPaymentSheetMetricsEvent *)v43 addClientMetadataForPurchaseInfo:v45 metricsDictionary:v46];

  [(AMSPaymentSheetMetricsEvent *)v43 addBiometricsState:+[AMSDefaults deviceBiometricsState]];
  v47 = [(AMSPaymentSheetTask *)self userActions];
  [(AMSPaymentSheetMetricsEvent *)v43 addUserActions:v47];

  v48 = [(AMSPaymentSheetTask *)self request];
  v49 = [v48 account];
  [(AMSMetricsEvent *)v43 setAccount:v49];

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

- (void)_configureBasicsForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [(AMSPaymentSheetTask *)self request];
  v8 = [v7 biometricsRequest];
  [v27 setAccesssControlRef:{objc_msgSend(v8, "localAuthAccessControlRef")}];

  v9 = [(AMSPaymentSheetTask *)self request];
  v10 = [v9 biometricsRequest];
  v11 = [v10 localAuthContext];
  v12 = [v11 externalizedContext];

  v13 = [(AMSPaymentSheetTask *)self request];
  LOBYTE(v10) = [v13 requiresAuthorization];

  if ((v10 & 1) != 0 || v12)
  {
    v14 = [(AMSPaymentSheetTask *)self authenticationContext];
    [v27 setAppleIDAuthenticationContext:v14];
  }

  [v27 setExternalizedContext:v12];
  [v27 setRequestType:1];
  v15 = [(AMSPaymentSheetTask *)self request];
  v16 = [v15 currencyCode];
  [v27 setCurrencyCode:v16];

  v17 = [(AMSPaymentSheetTask *)self request];
  LODWORD(v16) = [v17 disablePasscodeFallback];

  if (v16)
  {
    [v27 setDisablePasscodeFallback:1];
  }

  v18 = [(AMSPaymentSheetTask *)self request];
  v19 = [v18 countryCode];
  AMSSetCountryCodeOnPaymentRequest(v19, v27);

  v20 = [(AMSPaymentSheetTask *)self request];
  v21 = [v20 titleType];

  if (v21 == 2)
  {
    [v27 setRequestor:0];
  }

  else
  {
    v22 = [(AMSPaymentSheetTask *)self request];
    if ([v22 titleType])
    {
      [v6 setLocalizedNavigationTitle:0];
    }

    else
    {
      v23 = [(AMSPaymentSheetTask *)self request];
      v24 = [v23 title];
      [v6 setLocalizedNavigationTitle:v24];
    }
  }

  v25 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v26 = [v25 hostProcessIdentifier];
  [v27 setHostProcessIdentifier:v26];
}

- (void)_configureConfirmationScreenForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4
{
  v5 = a3;
  v6 = [(AMSPaymentSheetTask *)self request];
  [v5 setConfirmationStyle:{objc_msgSend(v6, "ams_confirmationStyle")}];
}

- (void)_configureMerchantSessionForPaymentRequest:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSPaymentSheetTask *)self request];
  v6 = [v5 merchantSession];

  if (v6)
  {
    v7 = [(AMSPaymentSheetTask *)self request];
    v8 = [v7 biometricsRequest];
    v9 = [v8 localAuthAccessControlRef];

    v10 = [(AMSPaymentSheetTask *)self bag];
    LODWORD(v8) = [AMSCardEnrollment shouldUseApplePayClassicWithBag:v10];

    if (v8)
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
        v12 = [AMSBiometrics ACLVersionForAccessControl:v9];
        v38 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v38)
        {
          v38 = +[AMSLogConfig sharedConfig];
        }

        v39 = [v38 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = objc_opt_class();
          v41 = v40;
          v42 = [(AMSPaymentSheetTask *)self request];
          v43 = [v42 logKey];
          *buf = 138543874;
          *&buf[4] = v40;
          *&buf[12] = 2114;
          *&buf[14] = v43;
          *&buf[22] = 2114;
          v54 = v12;
          _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for insufficient ACL version: %{public}@", buf, 0x20u);
        }

        goto LABEL_30;
      }

      v11 = 3;
    }

    if ([AMSBiometrics isActionSupported:v11 withAccessControl:v9])
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
      v12 = [v22 initWithDictionary:{v6, v49}];
      v23 = +[AMSLogConfig sharedPurchaseConfig];
      v24 = v23;
      if (v12)
      {
        if (!v23)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        v25 = [v24 OSLogObject];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = v26;
          v28 = [(AMSPaymentSheetTask *)self request];
          v29 = [v28 logKey];
          *buf = 138543618;
          *&buf[4] = v26;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attaching merchant session", buf, 0x16u);
        }

        [v4 setMerchantSession:v12];
        [v4 setMerchantCapabilities:13];
        v30 = [(AMSPaymentSheetTask *)self request];
        v31 = [v30 isApplePayClassic];

        if (v31)
        {
          v32 = +[AMSLogConfig sharedPurchaseConfig];
          if (!v32)
          {
            v32 = +[AMSLogConfig sharedConfig];
          }

          v33 = [v32 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = objc_opt_class();
            v35 = v34;
            v36 = [(AMSPaymentSheetTask *)self request];
            v37 = [v36 logKey];
            *buf = 138543618;
            *&buf[4] = v34;
            *&buf[12] = 2114;
            *&buf[14] = v37;
            _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting apple-pay-classic flag", buf, 0x16u);
          }

          [v4 setRequestType:0];
        }
      }

      else
      {
        if (!v23)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        v44 = [v24 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = v45;
          v47 = [(AMSPaymentSheetTask *)self request];
          v48 = [v47 logKey];
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2114;
          *&buf[14] = v48;
          _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to instantiate PKPaymentMerchantSession object", buf, 0x16u);
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

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [(AMSPaymentSheetTask *)self request];
    v17 = [v16 logKey];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no merchant session", buf, 0x16u);
  }

LABEL_30:
}

- (void)_configureAttachSelectedCard:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSPaymentSheetTask *)self request];
  v6 = [v5 selectedCard];

  if (v6)
  {
    v7 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(AMSPaymentSheetTask *)self request];
      v12 = [v11 logKey];
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attaching selected card info", &v19, 0x16u);
    }

    v13 = [(AMSPaymentSheetTask *)self request];
    v14 = [v13 selectedCard];
    v15 = [v14 passSerialNumber];
    [v4 setPassSerialNumber:v15];

    v16 = [(AMSPaymentSheetTask *)self request];
    v17 = [v16 selectedCard];
    v18 = [v17 passTypeIdentifier];
    [v4 setPassTypeIdentifier:v18];

    [v4 setRequestType:1];
    [v4 setAPIType:0];
  }
}

- (void)_configureLanguage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSPaymentSheetTask *)self bag];
  v9 = [v8 stringForKey:@"language"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AMSPaymentSheetTask__configureLanguage_completion___block_invoke;
  v12[3] = &unk_1E73BAA58;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
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

- (void)_configurePSD2Decoration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSPaymentSheetTask *)self request];
  v9 = [v8 isApplePayClassic];

  if (v9)
  {
    v10 = [(AMSPaymentSheetTask *)self bag];
    v11 = [v10 stringForKey:@"countryCode"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__AMSPaymentSheetTask__configurePSD2Decoration_completion___block_invoke;
    v12[3] = &unk_1E73BAA58;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    [v11 valueWithCompletion:v12];
  }

  else
  {
    v7[2](v7);
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

- (void)_configureCustomUIForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSPaymentSheetTask *)self request];
  v9 = [v8 designVersion];
  v10 = [v9 isEqualToNumber:&unk_1F07798E0];

  if (v10)
  {
    [v6 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
    v37 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v37];
    v12 = v37;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = [(AMSPaymentSheetTask *)self request];
        v17 = [v16 logKey];
        *buf = 138543874;
        v43 = v15;
        v44 = 2114;
        v45 = v17;
        v46 = 2114;
        v47 = v12;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize payment request: %{public}@", buf, 0x20u);
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
      v34 = [(AMSPaymentSheetTask *)self request];
      v33 = [v18 numberWithInteger:{objc_msgSend(v34, "payee")}];
      v41[0] = v33;
      v40[1] = @"AMSPaymentSheetPaymentRequestMetadataKeyDesignVersion";
      v19 = [(AMSPaymentSheetTask *)self request];
      v20 = [v19 designVersion];
      v41[1] = v20;
      v40[2] = @"AMSPaymentSheetPaymentRequestMetadataKeySalableIconType";
      v21 = MEMORY[0x1E696AD98];
      v22 = [(AMSPaymentSheetTask *)self request];
      v23 = [v21 numberWithInteger:{objc_msgSend(v22, "salableIcon")}];
      v41[2] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
      v13 = [v32 initWithDictionary:v24];

      v36 = 0;
      v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v36];
      v14 = v36;
      if (v14)
      {
        v26 = +[AMSLogConfig sharedPurchaseOversizeConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        v27 = [v26 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = AMSLogKey();
          *buf = 138543874;
          v43 = v28;
          v44 = 2114;
          v45 = v29;
          v46 = 2114;
          v47 = v14;
          _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize payment request metadata: %{public}@", buf, 0x20u);
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
      [v6 setClientViewSourceParameter:v31];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_configurePaymentSummaryForPaymentRequest:(id)a3
{
  v19 = a3;
  v4 = [(AMSPaymentSheetTask *)self request];
  v5 = [(AMSPaymentSheetTask *)self assetCache];
  v6 = [(AMSPaymentSheetTask *)self bag];
  v7 = [v4 ams_createSummaryItemsForAttributedListWithAssetCache:v5 bag:v6];

  if ([v7 count])
  {
    [v19 setPaymentSummaryItems:v7];
    [v19 setPaymentSummaryPinned:1];
    [v19 setSuppressTotal:1];
    goto LABEL_10;
  }

  v8 = [(AMSPaymentSheetTask *)self request];
  v9 = [v8 ams_createSummaryItems];

  [v19 setPaymentSummaryItems:v9];
  v10 = [(AMSPaymentSheetTask *)self request];
  v11 = [v10 paymentSummary];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [(AMSPaymentSheetTask *)self request];
  v14 = [v13 priceSectionItems];
  v15 = [v14 count];

  if (v15)
  {
    v10 = [(AMSPaymentSheetTask *)self request];
    v16 = [v10 paymentSummary];
    [v19 setLocalizedSummaryItemsTitle:v16];

LABEL_6:
  }

  v17 = [(AMSPaymentSheetTask *)self request];
  v18 = [v17 price];

  if (!v18)
  {
    [v19 setSuppressTotal:1];
  }

LABEL_10:
}

- (void)_configureContentItemsForPaymentRequest:(id)a3 amsPaymentRequest:(id)a4
{
  v76 = a3;
  v6 = a4;
  v7 = [(AMSPaymentSheetTask *)self request];
  [v6 setDrawBackground:{objc_msgSend(v7, "drawBackground")}];

  v8 = [(AMSPaymentSheetTask *)self request];
  [v6 setDrawBottomDivider:{objc_msgSend(v8, "drawBottomDivider")}];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [(AMSPaymentSheetTask *)self request];
  v12 = [(AMSPaymentSheetTask *)self assetCache];
  v13 = [(AMSPaymentSheetTask *)self request];
  v14 = [v13 designVersion];
  v15 = [(AMSPaymentSheetTask *)self bag];
  v16 = [v11 ams_createAMSContentItemForSalableInfoWithAssetCache:v12 designVersion:v14 bag:v15];

  v74 = v16;
  v75 = v6;
  [v6 setSalableInfo:v16];
  v17 = [(AMSPaymentSheetTask *)self request];
  v18 = [(AMSPaymentSheetTask *)self assetCache];
  v19 = [(AMSPaymentSheetTask *)self request];
  v20 = [v19 designVersion];
  v21 = [(AMSPaymentSheetTask *)self bag];
  v22 = [v17 ams_createAMSContentItemsForPreScreenDialogWithAssetCache:v18 designVersion:v20 bag:v21];

  if ([v22 count])
  {
    [v10 addObjectsFromArray:v22];
  }

  v23 = [(AMSPaymentSheetTask *)self request];
  v24 = [v23 ams_createAMSContentItemForRating];
  [v10 ams_addNullableObject:v24];

  v25 = [(AMSPaymentSheetTask *)self request];
  v26 = [(AMSPaymentSheetTask *)self assetCache];
  v27 = [(AMSPaymentSheetTask *)self request];
  v28 = [v27 designVersion];
  v29 = [(AMSPaymentSheetTask *)self bag];
  v30 = [v25 ams_createAMSContentItemsForFlexibleListWithAssetCache:v26 designVersion:v28 bag:v29];

  if ([v30 count])
  {
    [v10 addObjectsFromArray:v30];
  }

  v72 = v30;
  v73 = v22;
  v31 = [(AMSPaymentSheetTask *)self request];
  v32 = [(AMSPaymentSheetTask *)self assetCache];
  v33 = [(AMSPaymentSheetTask *)self request];
  v34 = [v33 designVersion];
  v35 = [(AMSPaymentSheetTask *)self bag];
  v36 = [v31 ams_createContentItemForSalableInfoWithAssetCache:v32 designVersion:v34 bag:v35];

  v71 = v36;
  [v9 ams_addNullableObject:v36];
  v37 = [(AMSPaymentSheetTask *)self request];
  v38 = [(AMSPaymentSheetTask *)self assetCache];
  v39 = [(AMSPaymentSheetTask *)self request];
  v40 = [v39 designVersion];
  v41 = [(AMSPaymentSheetTask *)self bag];
  v42 = [v37 ams_createContentItemsForPreScreenDialogWithAssetCache:v38 designVersion:v40 bag:v41];

  if ([v42 count])
  {
    [v9 addObjectsFromArray:v42];
  }

  v70 = v42;
  v43 = [(AMSPaymentSheetTask *)self request];
  v44 = [v43 ams_createContentItemForRating];
  [v9 ams_addNullableObject:v44];

  v45 = [(AMSPaymentSheetTask *)self request];
  v46 = [(AMSPaymentSheetTask *)self assetCache];
  v47 = [(AMSPaymentSheetTask *)self request];
  v48 = [v47 designVersion];
  v49 = [(AMSPaymentSheetTask *)self bag];
  v50 = [v45 ams_createContentItemsForFlexibleListWithAssetCache:v46 designVersion:v48 bag:v49];

  if ([v50 count])
  {
    [v9 addObjectsFromArray:v50];
  }

  v51 = [(AMSPaymentSheetTask *)self request];
  v52 = [v51 isDesignVersionLessThan:&unk_1F07798E0];

  if (v52)
  {
    v53 = [(AMSPaymentSheetTask *)self request];
    v54 = [v53 ams_createContentItemForAccount];

    [v9 ams_addNullableObject:v54];
  }

  v55 = v10;
  v56 = [(AMSPaymentSheetTask *)self request];
  v57 = [v56 isDesignVersionEqualOrGreaterThan:&unk_1F07798E0];

  if (v57)
  {
    v58 = [(AMSPaymentSheetTask *)self request];
    v59 = [(AMSPaymentSheetTask *)self assetCache];
    v60 = [(AMSPaymentSheetTask *)self request];
    v61 = [v60 designVersion];
    v62 = [(AMSPaymentSheetTask *)self bag];
    v63 = [v58 ams_createSecondaryContentItemForSalableInfoWithAssetCache:v59 designVersion:v61 bag:v62];

    if (v63)
    {
      [v75 setSecondarySalableInfo:v63];
    }

    v64 = [(AMSPaymentSheetTask *)self request];
    v65 = [(AMSPaymentSheetTask *)self assetCache];
    v66 = [(AMSPaymentSheetTask *)self request];
    v67 = [v66 designVersion];
    v68 = [(AMSPaymentSheetTask *)self bag];
    v69 = [v64 ams_createSecondaryContentItemsForFlexibleListWithAssetCache:v65 designVersion:v67 bag:v68];

    if ([v69 count])
    {
      [v75 setSecondaryContentItems:v69];
    }
  }

  [v76 setPaymentContentItems:v9];
  [v75 setPaymentContentItems:v55];
}

- (void)_dismissPaymentAuthorizationController:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(AMSPaymentSheetTask *)self request];
  v7 = [v6 logKey];

  v8 = +[AMSLogConfig sharedPurchaseConfig];
  v9 = v8;
  if (v5)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromSelector(a2);
      v14 = v13;
      if (v7)
      {
        [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v7, v13];
      }

      else
      {
        [v11 stringWithFormat:@"%@: %@ ", v12, v13, v28];
      }
      v20 = ;
      v21 = AMSHashIfNeeded(v5);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Dismissing authorization controller: %{public}@", buf, 0x16u);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__AMSPaymentSheetTask__dismissPaymentAuthorizationController___block_invoke;
    v29[3] = &unk_1E73B92F0;
    v29[4] = self;
    v32 = a2;
    v30 = v5;
    v31 = v7;
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

    v15 = [v9 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      v19 = v18;
      if (v7)
      {
        [v16 stringWithFormat:@"%@: [%@] %@ ", v17, v7, v18];
      }

      else
      {
        [v16 stringWithFormat:@"%@: %@ ", v17, v18, v28];
      }
      v25 = ;
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@Attempting to dismiss nil controller", buf, 0xCu);
    }

    v26 = AMSError(509, @"Authorization Controller Missing", @"We attempted to dismiss a nil controller.", 0);
    v27 = [(AMSPaymentSheetTask *)self paymentSheetPromise];
    [v27 finishWithError:v26];
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

- (void)_presentPaymentConfirmationWithPaymentRequest:(id)a3 purchaseResult:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(AMSPaymentSheetTask *)self request:a3];
  v6 = [v5 logKey];

  v7 = [(AMSPaymentSheetTask *)self request];
  if ([v7 requiresAuthorization])
  {
  }

  else
  {
    v8 = [(AMSPaymentSheetTask *)self request];
    v9 = [v8 requiresDelegateAuthentication];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to present payment presentation confirmation for request that is not confirmation only.", &v15, 0x16u);
  }

LABEL_9:
  v12 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = 138543618;
    v16 = v14;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Platform not supported", &v15, 0x16u);
  }
}

- (void)_presentCompanionAuthenticationSheetWithPaymentRequest:(id)a3 purchaseResult:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(AMSPaymentSheetTask *)self request:a3];
  v6 = [v5 logKey];

  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Platform not supported", buf, 0x16u);
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

- (id)_presentPaymentSheetWithPaymentRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AMSPaymentSheetTask__presentPaymentSheetWithPaymentRequest___block_invoke;
  v13[3] = &unk_1E73B71B0;
  v14 = v4;
  v6 = v5;
  v15 = v6;
  v16 = self;
  v7 = v13;
  v8 = v4;
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

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  v13 = 0x1E696A000;
  v45 = v9;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [(AMSPaymentSheetTask *)self request];
    v14 = [v40 logKey];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v42 = v10;
    if (v14)
    {
      v17 = [(AMSPaymentSheetTask *)self request];
      v18 = [v17 logKey];
      v9 = NSStringFromSelector(a2);
      v38 = v18;
      [v15 stringWithFormat:@"%@: [%@] %@ ", v16, v18, v9];
    }

    else
    {
      v17 = NSStringFromSelector(a2);
      [v15 stringWithFormat:@"%@: %@ ", v16, v17];
    }
    v19 = ;
    v20 = v8;
    v21 = AMSHashIfNeeded(v8);
    v22 = AMSHashIfNeeded(v45);
    *buf = 138543874;
    v50 = v19;
    v51 = 2114;
    v52 = v21;
    v53 = 2114;
    v54 = v22;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | payment: %{public}@", buf, 0x20u);
    if (v14)
    {

      v19 = v38;
    }

    v8 = v20;
    v9 = v45;
    v13 = 0x1E696A000;
    v10 = v42;
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
  v24 = v10;
  v47 = v24;
  [(AMSPromise *)v23 addFinishBlock:v46];
  v25 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v24;
    v43 = v8;
    v39 = [(AMSPaymentSheetTask *)self request];
    v27 = [v39 logKey];
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_opt_class();
    if (v27)
    {
      v30 = [(AMSPaymentSheetTask *)self request];
      v8 = [v30 logKey];
      v13 = NSStringFromSelector(a2);
      [v28 stringWithFormat:@"%@: [%@] %@ ", v29, v8, v13];
    }

    else
    {
      v30 = NSStringFromSelector(a2);
      [v28 stringWithFormat:@"%@: %@ ", v29, v30];
    }
    v31 = ;
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Authorizing payment…", buf, 0xCu);
    v24 = v41;
    if (v27)
    {

      v31 = v8;
    }

    v8 = v43;
    v9 = v45;
  }

  v32 = [v9 authKitAuthenticationResults];

  if (v32)
  {
    v33 = [v9 authKitAuthenticationResults];
    v34 = [(AMSPaymentSheetTask *)self _authorizePaymentWithAuthKitResults:v33];
    [(AMSMutablePromise *)v23 finishWithPromise:v34];
  }

  else
  {
    v35 = [(AMSPaymentSheetTask *)self request];
    v36 = [v35 biometricsRequest];

    if (!v36)
    {
      v33 = AMSError(0, @"Payment Sheet Failed", @"Unknown error occurred during authorization", 0);
      [(AMSMutablePromise *)v23 finishWithError:v33];
      goto LABEL_24;
    }

    v33 = [(AMSPaymentSheetTask *)self request];
    v34 = [v33 biometricsRequest];
    v37 = [(AMSPaymentSheetTask *)self _authorizePaymentWithBiometricsRequest:v34 payment:v9];
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

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(AMSPaymentSheetTask *)self request];
    v9 = [v15 logKey];
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = [(AMSPaymentSheetTask *)self request];
      v3 = [v12 logKey];
      a2 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v3, a2];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded(v6);
    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:v6];
}

- (id)presentationWindowForPaymentAuthorizationController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSPaymentSheetTask *)self request];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSPaymentSheetTask *)self request];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v6);
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  return 0;
}

- (void)paymentAuthorizationController:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(AMSPaymentSheetTask *)self request];
    v14 = [v33 logKey];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v34 = v11;
    v35 = a2;
    v32 = v14;
    if (v14)
    {
      v31 = [(AMSPaymentSheetTask *)self request];
      v17 = [v31 logKey];
      v29 = NSStringFromSelector(a2);
      v30 = v17;
      [v15 stringWithFormat:@"%@: [%@] %@ ", v16, v17, v29];
    }

    else
    {
      v31 = NSStringFromSelector(a2);
      [v15 stringWithFormat:@"%@: %@ ", v16, v31];
    }
    v18 = ;
    v36 = v9;
    v19 = AMSHashIfNeeded(v9);
    v20 = [v10 displayName];
    v21 = AMSHashIfNeeded(v20);
    v22 = [v10 network];
    v23 = AMSHashIfNeeded(v22);
    *buf = 138544386;
    v42 = v18;
    v43 = 2114;
    v44 = v19;
    v45 = 2114;
    v46 = v21;
    v47 = 2114;
    v48 = v23;
    v49 = 2048;
    v50 = [v10 type];
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | displayName: %{public}@ | network: %{public}@ | type: %lu", buf, 0x34u);

    if (v32)
    {

      v18 = v30;
    }

    a2 = v35;
    v9 = v36;
    v11 = v34;
  }

  v24 = [(AMSPaymentSheetTask *)self bag];
  v25 = [v24 BOOLForKey:@"applePayPaymentMethodTypeBuyParamEnabled"];
  v26 = [v25 valuePromise];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __85__AMSPaymentSheetTask_paymentAuthorizationController_didSelectPaymentMethod_handler___block_invoke;
  v37[3] = &unk_1E73BAAD0;
  v37[4] = self;
  v38 = v10;
  v39 = v11;
  v40 = a2;
  v27 = v11;
  v28 = v10;
  [v26 addFinishBlock:v37];
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

- (void)paymentAuthorizationController:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v8;
    v11 = [(AMSPaymentSheetTask *)self request];
    v12 = [v11 logKey];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v42 = a2;
    v43 = self;
    if (v12)
    {
      v15 = [(AMSPaymentSheetTask *)self request];
      v4 = [v15 logKey];
      a2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v4, a2];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v16 = ;
    v17 = AMSHashIfNeeded(v45);
    *buf = 138543874;
    v47 = v16;
    v48 = 2114;
    v49 = v17;
    v50 = 2048;
    v51 = a4;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | event: %lu", buf, 0x20u);
    if (v12)
    {

      v16 = v4;
    }

    self = v43;
    v8 = v45;
    a2 = v42;
  }

  if (a4 > 5)
  {
    if (a4 > 8)
    {
      switch(a4)
      {
        case 9uLL:
          v21 = [(AMSPaymentSheetTask *)self state];
          v22 = v21;
          v23 = 1;
          break;
        case 0xAuLL:
          v21 = [(AMSPaymentSheetTask *)self state];
          v22 = v21;
          v23 = 5;
          break;
        case 0xBuLL:
          v21 = [(AMSPaymentSheetTask *)self state];
          v22 = v21;
          v23 = 4;
          break;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      if (a4 != 6)
      {
        v18 = [(AMSPaymentSheetTask *)self state];
        v19 = [v18 didBiometricsLockout];
        if (a4 == 7)
        {
          v20 = 8;
        }

        else
        {
          v20 = 7;
        }

LABEL_36:
        v38 = [AMSPaymentSheetMetricsEvent dictionaryForUserAction:v20 didBiometricsLockout:v19];
        goto LABEL_37;
      }

      v21 = [(AMSPaymentSheetTask *)self state];
      v22 = v21;
      v23 = 3;
    }

    [v21 setCancellationType:v23];
    goto LABEL_42;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v18 = [(AMSPaymentSheetTask *)self state];
      v19 = [v18 didBiometricsLockout];
      v20 = 3;
    }

    else
    {
      v18 = [(AMSPaymentSheetTask *)self state];
      v19 = [v18 didBiometricsLockout];
      if (a4 == 4)
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

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v24 = a2;
      v25 = [(AMSPaymentSheetTask *)self state];
      [v25 setDidBiometricsLockout:1];

      v26 = [(AMSPaymentSheetTask *)self request];
      v27 = [v26 disablePasscodeFallback];

      if (v27)
      {
        v28 = +[AMSLogConfig sharedPurchaseConfig];
        if (!v28)
        {
          v28 = +[AMSLogConfig sharedConfig];
        }

        v29 = [v28 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(AMSPaymentSheetTask *)self request];
          v31 = [v30 logKey];
          v32 = MEMORY[0x1E696AEC0];
          v33 = objc_opt_class();
          v34 = self;
          v35 = v33;
          v44 = v34;
          if (v31)
          {
            v36 = [(AMSPaymentSheetTask *)v34 request];
            v26 = [v36 logKey];
            v24 = NSStringFromSelector(v24);
            [v32 stringWithFormat:@"%@: [%@] %@ ", v35, v26, v24];
          }

          else
          {
            v36 = NSStringFromSelector(v24);
            [v32 stringWithFormat:@"%@: %@ ", v35, v36];
          }
          v37 = ;
          *buf = 138543362;
          v47 = v37;
          _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Dismissing Payment Sheet due to biometric lockout and no password fallback", buf, 0xCu);
          if (v31)
          {

            v37 = v26;
          }

          self = v44;
        }

        v40 = AMSError(509, @"Payment Sheet Failed", @"Device is in biometric lockout and password fallback is disabled", 0);
        v41 = [(AMSPaymentSheetTask *)self state];
        [v41 setError:v40];

        v22 = [(AMSPaymentSheetTask *)self paymentAuthorizationController];
        [(AMSPaymentSheetTask *)self _dismissPaymentAuthorizationController:v22];
        goto LABEL_42;
      }
    }

    goto LABEL_43;
  }

  v18 = [(AMSPaymentSheetTask *)self state];
  v38 = +[AMSPaymentSheetMetricsEvent dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:](AMSPaymentSheetMetricsEvent, "dictionaryForBiometricMatchState:didBiometricsLockout:biometricsType:", 100, [v18 didBiometricsLockout], +[AMSBiometrics type](AMSBiometrics, "type"));
LABEL_37:
  v22 = v38;

  if (v22)
  {
    v39 = [(AMSPaymentSheetTask *)self userActions];
    [v39 addObject:v22];

LABEL_42:
  }

LABEL_43:
}

- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v7 = a4;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(AMSPaymentSheetTask *)self request];
    v11 = [v30 logKey];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v31 = a2;
    v32 = self;
    if (v11)
    {
      v14 = [(AMSPaymentSheetTask *)self request];
      v8 = [v14 logKey];
      self = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v8, self];
    }

    else
    {
      v14 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: %@ ", v13, v14];
    }
    v15 = ;
    v16 = AMSHashIfNeeded(v34);
    v17 = AMSLogableError(v7);
    *buf = 138543874;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    v39 = 2114;
    v40 = v17;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@ | error: %{public}@", buf, 0x20u);
    if (v11)
    {

      v15 = v8;
    }

    a2 = v31;
    self = v32;
  }

  if (v7)
  {
    v18 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a2;
      v21 = [(AMSPaymentSheetTask *)self request];
      v22 = [v21 logKey];
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v33 = self;
      if (v22)
      {
        v25 = [(AMSPaymentSheetTask *)self request];
        self = [v25 logKey];
        v20 = NSStringFromSelector(v20);
        [v23 stringWithFormat:@"%@: [%@] %@ ", v24, self, v20];
      }

      else
      {
        v25 = NSStringFromSelector(v20);
        [v23 stringWithFormat:@"%@: %@ ", v24, v25];
      }
      v26 = ;
      v27 = AMSLogableError(v7);
      *buf = 138543618;
      v36 = v26;
      v37 = 2114;
      v38 = v27;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@Payment sheet will finish with error: %{public}@", buf, 0x16u);
      if (v22)
      {

        v26 = self;
      }

      self = v33;
    }

    v28 = AMSError(509, @"Payment Sheet Failed", @"There was an error in the payment authorization controller.", v7);
    v29 = [(AMSPaymentSheetTask *)self state];
    [v29 setError:v28];
  }

  [v34 setPrivateDelegate:0];
}

- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AMSPaymentSheetTask *)self request];
    v12 = [v11 logKey];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    if (v12)
    {
      v15 = [(AMSPaymentSheetTask *)self request];
      v3 = [v15 logKey];
      v6 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v3, v6];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v5 = ;
    v4 = AMSHashIfNeeded(v39);
    *buf = 138543618;
    v41 = v5;
    v42 = 2114;
    v43 = v4;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v12)
    {

      v5 = v3;
    }

    v8 = 0x1E73B0000uLL;
  }

  v16 = [(AMSPaymentSheetTask *)self presentingSceneIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    v37 = [(AMSPaymentSheetTask *)self request];
    v20 = [v37 logKey];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v4 = [v5 logKey];
      v3 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v4, v3];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: %@ ", v22, v5];
    }
    v23 = ;
    *buf = 138543362;
    v41 = v23;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Using self.presentingSceneIdentifier", buf, 0xCu);
    v8 = 0x1E73B0000;
    if (v20)
    {

      v23 = v4;
    }

    goto LABEL_30;
  }

  v24 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v4 = [v24 purchase];
  v17 = [v4 presentingSceneIdentifier];

  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v37 = [(AMSPaymentSheetTask *)self request];
    v20 = [v37 logKey];
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v6 = [v5 logKey];
      v24 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: [%@] %@ ", v26, v6, v24];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: %@ ", v26, v5];
    }
    v4 = ;
    *buf = 138543362;
    v41 = v4;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Using self.purchaseInfo.purchase.presentingSceneIdentifier", buf, 0xCu);
    v8 = 0x1E73B0000uLL;
    if (v20)
    {

      v4 = v6;
    }

LABEL_30:
  }

LABEL_31:

LABEL_32:
  v27 = [*(v8 + 3552) sharedPurchaseConfig];
  if (!v27)
  {
    v27 = [*(v8 + 3552) sharedConfig];
  }

  v28 = [v27 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = [(AMSPaymentSheetTask *)self request];
    v30 = [v29 logKey];
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    if (v30)
    {
      v33 = [(AMSPaymentSheetTask *)self request];
      v5 = [v33 logKey];
      v4 = NSStringFromSelector(a2);
      [v31 stringWithFormat:@"%@: [%@] %@ ", v32, v5, v4];
    }

    else
    {
      v33 = NSStringFromSelector(a2);
      [v31 stringWithFormat:@"%@: %@ ", v32, v33];
    }
    v34 = ;
    v35 = AMSHashIfNeeded(v17);
    *buf = 138543618;
    v41 = v34;
    v42 = 2114;
    v43 = v35;
    _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEBUG, "%{public}@ returning scene identifier %{public}@", buf, 0x16u);
    if (v30)
    {

      v34 = v5;
    }
  }

  return v17;
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v8 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AMSPaymentSheetTask *)self request];
    v11 = [v10 logKey];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    if (v11)
    {
      v14 = [(AMSPaymentSheetTask *)self request];
      v3 = [v14 logKey];
      v6 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v3, v6];
    }

    else
    {
      v14 = NSStringFromSelector(a2);
      [v12 stringWithFormat:@"%@: %@ ", v13, v14];
    }
    v5 = ;
    v4 = AMSHashIfNeeded(v46);
    *buf = 138543618;
    v48 = v5;
    v49 = 2114;
    v50 = v4;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v11)
    {

      v5 = v3;
    }
  }

  v15 = [(AMSPaymentSheetTask *)self presentingSceneBundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v43 = v16;
    v19 = [(AMSPaymentSheetTask *)self request];
    v20 = [v19 logKey];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v4 = [v5 logKey];
      v3 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v4, v3];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v21 stringWithFormat:@"%@: %@ ", v22, v5];
    }
    v23 = ;
    *buf = 138543362;
    v48 = v23;
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Using self.presentingSceneBundleIdentifier", buf, 0xCu);
    v16 = v43;
    if (v20)
    {

      v23 = v4;
    }

    goto LABEL_47;
  }

  v24 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v4 = [v24 purchase];
  v16 = [v4 presentingSceneBundleIdentifier];

  if (v16)
  {
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v44 = v16;
    v19 = [(AMSPaymentSheetTask *)self request];
    v20 = [v19 logKey];
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v6 = [v5 logKey];
      v24 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: [%@] %@ ", v26, v6, v24];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v25 stringWithFormat:@"%@: %@ ", v26, v5];
    }
    v4 = ;
    *buf = 138543362;
    v48 = v4;
    v31 = "%{public}@Using self.purchaseInfo.purchase.presentingSceneBundleIdentifier";
    goto LABEL_44;
  }

  v24 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v4 = [v24 clientInfo];
  v16 = [v4 proxyAppBundleID];

  if (v16)
  {
    v17 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v44 = v16;
    v19 = [(AMSPaymentSheetTask *)self request];
    v20 = [v19 logKey];
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v6 = [v5 logKey];
      v24 = NSStringFromSelector(a2);
      [v27 stringWithFormat:@"%@: [%@] %@ ", v28, v6, v24];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v27 stringWithFormat:@"%@: %@ ", v28, v5];
    }
    v4 = ;
    *buf = 138543362;
    v48 = v4;
    v31 = "%{public}@Using self.purchaseInfo.clientInfo.proxyAppBundleID";
    goto LABEL_44;
  }

  v24 = [(AMSPaymentSheetTask *)self purchaseInfo];
  v4 = [v24 clientInfo];
  v16 = [v4 bundleIdentifier];

  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v44 = v16;
    v19 = [(AMSPaymentSheetTask *)self request];
    v20 = [v19 logKey];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    if (v20)
    {
      v5 = [(AMSPaymentSheetTask *)self request];
      v6 = [v5 logKey];
      v24 = NSStringFromSelector(a2);
      [v29 stringWithFormat:@"%@: [%@] %@ ", v30, v6, v24];
    }

    else
    {
      v5 = NSStringFromSelector(a2);
      [v29 stringWithFormat:@"%@: %@ ", v30, v5];
    }
    v4 = ;
    *buf = 138543362;
    v48 = v4;
    v31 = "%{public}@Using self.purchaseInfo.clientInfo.bundleIdentifier";
LABEL_44:
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);
    v16 = v44;
    if (v20)
    {

      v4 = v6;
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

  v33 = [v32 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = v16;
    v35 = [(AMSPaymentSheetTask *)self request];
    v36 = [v35 logKey];
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    if (v36)
    {
      v39 = [(AMSPaymentSheetTask *)self request];
      v5 = [v39 logKey];
      v4 = NSStringFromSelector(a2);
      [v37 stringWithFormat:@"%@: [%@] %@ ", v38, v5, v4];
    }

    else
    {
      v39 = NSStringFromSelector(a2);
      [v37 stringWithFormat:@"%@: %@ ", v38, v39];
    }
    v40 = ;
    v16 = v34;
    v41 = AMSHashIfNeeded(v34);
    *buf = 138543618;
    v48 = v40;
    v49 = 2114;
    v50 = v41;
    _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ returning bundle identifier %{public}@", buf, 0x16u);
    if (v36)
    {

      v40 = v5;
    }
  }

  return v16;
}

@end