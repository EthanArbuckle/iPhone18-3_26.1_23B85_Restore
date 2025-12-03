@interface AMSCardAuthorizationTask
- (AMSCardAuthorizationTask)initWithPaymentSession:(id)session;
- (id)_metricsTimestamp;
- (id)_metricsUserActionDictionary;
- (id)_presentPaymentRequest:(id)request;
- (id)performCardAuthorization;
- (void)_metricsPost;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event;
- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation AMSCardAuthorizationTask

- (AMSCardAuthorizationTask)initWithPaymentSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = AMSCardAuthorizationTask;
  v6 = [(AMSTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_didBiometricsLockout = 0;
    v6->_didCancelHomeButton = 0;
    objc_storeStrong(&v6->_paymentSession, session);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userActions = v7->_userActions;
    v7->_userActions = v8;
  }

  return v7;
}

- (id)performCardAuthorization
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AMSCardAuthorizationTask_performCardAuthorization__block_invoke;
  v5[3] = &unk_1E73B5628;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [(AMSTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __52__AMSCardAuthorizationTask_performCardAuthorization__block_invoke(uint64_t a1, void *a2)
{
  v80[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = AMSSetLogKeyIfNeeded();
  v6 = objc_alloc_init(_MergedGlobals_3[0]());
  [v6 setAPIType:0];
  v7 = objc_alloc(off_1ED6DF150[0]());
  v8 = [*(a1 + 32) paymentSession];
  v9 = [v7 initWithDictionary:v8];

  [v6 setMerchantSession:v9];
  [v6 setExpectsMerchantSession:1];
  [v6 setMerchantCapabilities:13];
  v10 = [*(a1 + 32) currencyCode];
  [v6 setCurrencyCode:v10];

  v11 = [*(a1 + 32) countryCode];
  AMSSetCountryCodeOnPaymentRequest(v11, v6);

  v12 = [*(a1 + 32) countryCode];

  if (!v12)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v75 = objc_opt_class();
      v76 = 2114;
      v77 = v5;
      v15 = v75;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Failed to find countryCode", buf, 0x16u);
    }
  }

  v16 = [*(a1 + 32) currencyCode];

  if (!v16)
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v75 = v19;
      v76 = 2114;
      v77 = v5;
      v20 = v19;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Failed to find currencyCode", buf, 0x16u);
    }
  }

  v21 = [WeakRetained confirmationStyle];
  if (v21)
  {
    if (v21 != 1)
    {
      goto LABEL_18;
    }

    v22 = 1;
  }

  else
  {
    v22 = 6;
  }

  [v6 setConfirmationStyle:v22];
LABEL_18:
  v23 = off_1ED6DF158();
  v24 = [MEMORY[0x1E696AB90] zero];
  v25 = [(objc_class *)v23 summaryItemWithLabel:&stru_1F071BA78 amount:v24];

  v80[0] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
  [v6 setPaymentSummaryItems:v26];

  [v6 setRequestType:3];
  v27 = [*(a1 + 32) passSerialNumber];
  [v6 setPassSerialNumber:v27];

  v28 = [*(a1 + 32) passTypeIdentifier];
  [v6 setPassTypeIdentifier:v28];

  v29 = [*(a1 + 32) passSerialNumber];

  if (!v29)
  {
    v30 = +[AMSLogConfig sharedConfig];
    if (!v30)
    {
      v30 = +[AMSLogConfig sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      *buf = 138543618;
      v75 = v32;
      v76 = 2114;
      v77 = v5;
      v33 = v9;
      v34 = v5;
      v35 = a2;
      v36 = v32;
      _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Failed to find serialNumber", buf, 0x16u);

      a2 = v35;
      v5 = v34;
      v9 = v33;
    }
  }

  v37 = [*(a1 + 32) passTypeIdentifier];

  if (!v37)
  {
    v38 = +[AMSLogConfig sharedConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      *buf = 138543618;
      v75 = v40;
      v76 = 2114;
      v77 = v5;
      v41 = v40;
      _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Failed to find passTypeIdentifier", buf, 0x16u);
    }
  }

  v42 = [WeakRetained _presentPaymentRequest:v6];
  v73 = 0;
  v43 = [v42 resultWithError:&v73];
  v44 = v73;

  if (v44)
  {
    [WeakRetained _metricsPost];
    v45 = v44;
    v46 = 0;
    *a2 = v44;
    goto LABEL_45;
  }

  if (![v43 BOOLValue])
  {
    v71 = v9;
    v56 = a2;
    v57 = +[AMSLogConfig sharedConfig];
    if (!v57)
    {
      v57 = +[AMSLogConfig sharedConfig];
    }

    v58 = [v57 OSLogObject];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      *buf = 138543618;
      v75 = v59;
      v76 = 2114;
      v77 = v5;
      v60 = v59;
      _os_log_impl(&dword_192869000, v58, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Failed to present view controller", buf, 0x16u);
    }

    [WeakRetained _metricsPost];
    AMSError(0, @"Card Authorization Error", @"Unknown Error", 0);
    *v56 = v46 = 0;
    goto LABEL_44;
  }

  v47 = objc_alloc_init(AMSMutableBinaryPromise);
  [WeakRetained setAuthorizationPromise:v47];

  v48 = [WeakRetained authorizationPromise];
  [v48 resultWithError:a2];

  if (*a2)
  {
    v71 = v9;
    v49 = v5;
    v50 = a2;
    v51 = +[AMSLogConfig sharedConfig];
    if (!v51)
    {
      v51 = +[AMSLogConfig sharedConfig];
    }

    v52 = [v51 OSLogObject];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = *v50;
      *buf = 138543874;
      v75 = v53;
      v76 = 2114;
      v77 = v49;
      v78 = 2114;
      v79 = v54;
      v55 = v53;
      _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Authorization failed with error: %{public}@", buf, 0x20u);
    }

    [WeakRetained _metricsPost];
    v46 = 0;
    v5 = v49;
LABEL_44:
    v9 = v71;
    goto LABEL_45;
  }

  v72 = a2;
  v62 = [WeakRetained payment];

  v63 = +[AMSLogConfig sharedConfig];
  v64 = v63;
  if (v62)
  {
    if (!v63)
    {
      v64 = +[AMSLogConfig sharedConfig];
    }

    v65 = [v64 OSLogObject];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      *buf = 138543618;
      v75 = v66;
      v76 = 2114;
      v77 = v5;
      v67 = v66;
      _os_log_impl(&dword_192869000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] performCardAuthorization: Authorization succeeded", buf, 0x16u);
    }

    [WeakRetained _metricsPost];
    v46 = [WeakRetained payment];
  }

  else
  {
    if (!v63)
    {
      v64 = +[AMSLogConfig sharedConfig];
    }

    v68 = [v64 OSLogObject];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_opt_class();
      *buf = 138543618;
      v75 = v69;
      v76 = 2114;
      v77 = v5;
      v70 = v69;
      _os_log_impl(&dword_192869000, v68, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] performCardAuthorization: Authorization failed", buf, 0x16u);
    }

    [WeakRetained _metricsPost];
    AMSError(6, @"Card Authorization Error", @"No payment generated", 0);
    *v72 = v46 = 0;
  }

LABEL_45:

  return v46;
}

- (void)_metricsPost
{
  v12 = *MEMORY[0x1E69E9840];
  metricsEvent = [(AMSCardAuthorizationTask *)self metricsEvent];

  if (!metricsEvent)
  {
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
      v7 = AMSSetLogKeyIfNeeded();
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics post failed for no metrics event", &v8, 0x16u);
    }
  }
}

- (id)_metricsTimestamp
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v4 = v3;

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v7 = [v5 stringWithFormat:@"%@", v6];

  return v7;
}

- (id)_metricsUserActionDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _metricsTimestamp = [(AMSCardAuthorizationTask *)self _metricsTimestamp];
  [v3 setObject:_metricsTimestamp forKeyedSubscript:@"responseTime"];

  if ([(AMSCardAuthorizationTask *)self didBiometricsLockout])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bioLockout"];
  }

  return v3;
}

- (id)_presentPaymentRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = [AMSMutableLazyPromise alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AMSCardAuthorizationTask__presentPaymentRequest___block_invoke;
  v9[3] = &unk_1E73B5678;
  objc_copyWeak(&v11, &location);
  v6 = requestCopy;
  v10 = v6;
  v7 = [(AMSMutableLazyPromise *)v5 initWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __51__AMSCardAuthorizationTask__presentPaymentRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [objc_alloc(getPKPaymentAuthorizationControllerClass[0]()) initWithPaymentRequest:*(a1 + 32)];
  [v5 setDelegate:WeakRetained];
  [v5 setPrivateDelegate:WeakRetained];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AMSCardAuthorizationTask__presentPaymentRequest___block_invoke_2;
  v7[3] = &unk_1E73B5650;
  v7[4] = WeakRetained;
  v8 = v3;
  v6 = v3;
  [v5 presentWithCompletion:v7];
}

void __51__AMSCardAuthorizationTask__presentPaymentRequest___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v4;
      v8 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] _presentPaymentRequest: Did present view controller", &v12, 0x16u);
    }

    [*(a1 + 40) finishWithResult:&unk_1F07790B8];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v4;
      v10 = v13;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] _presentPaymentRequest: Failed to present view controller", &v12, 0x16u);
    }

    v11 = AMSError(0, @"Card Authorization Error", @"Failed to present view controller", 0);
    [*(a1 + 40) finishWithError:v11];
  }
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v22 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  payment = [(AMSCardAuthorizationTask *)self payment];

  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = payment == 0;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = AMSSetLogKeyIfNeeded();
    v12 = v11;
    v13 = @"YES";
    *buf = 138543874;
    v17 = v9;
    if (v8)
    {
      v13 = @"NO";
    }

    v18 = 2114;
    v19 = v11;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] paymentAuthorizationControllerDidFinish: Card authorization did finish with payment: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AMSCardAuthorizationTask_paymentAuthorizationControllerDidFinish___block_invoke;
  v14[3] = &unk_1E73B4418;
  objc_copyWeak(&v15, buf);
  [finishCopy dismissWithCompletion:v14];
  [finishCopy setDelegate:0];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __68__AMSCardAuthorizationTask_paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained authorizationPromise];
  [v1 finishWithSuccess];
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  handlerCopy = handler;
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSSetLogKeyIfNeeded();
    v14 = v13;
    v15 = @"YES";
    *buf = 138543874;
    v22 = v11;
    v23 = 2114;
    if (!paymentCopy)
    {
      v15 = @"NO";
    }

    v24 = v13;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] paymentAuthorizationControllerDidFinish: Did finish with payment? %{public}@", buf, 0x20u);
  }

  [(AMSCardAuthorizationTask *)self setPayment:paymentCopy];
  if (paymentCopy)
  {
    v16 = [objc_alloc(getPKPaymentAuthorizationResultClass_0[0]()) initWithStatus:0 errors:0];
  }

  else
  {
    v17 = AMSError(0, @"Card Authorization Error", @"No payment generated", 0);
    v18 = objc_alloc(getPKPaymentAuthorizationResultClass_0[0]());
    v20 = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v16 = [v18 initWithStatus:1 errors:v19];
  }

  handlerCopy[2](handlerCopy, v16);
}

- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = AMSSetLogKeyIfNeeded();
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:event];
    v20 = 138543874;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did encounter authorization event: %{public}@", &v20, 0x20u);
  }

  if (event > 4)
  {
    if (event > 6)
    {
      if (event == 7)
      {
        _metricsUserActionDictionary = [(AMSCardAuthorizationTask *)self _metricsUserActionDictionary];
        _metricsUserActionDictionary2 = _metricsUserActionDictionary;
        v16 = @"enterPasswordPressed";
      }

      else
      {
        if (event != 8)
        {
          return;
        }

        _metricsUserActionDictionary = [(AMSCardAuthorizationTask *)self _metricsUserActionDictionary];
        _metricsUserActionDictionary2 = _metricsUserActionDictionary;
        v16 = @"enterPasswordCancelled";
      }

      v18 = @"actionType";
    }

    else
    {
      if (event != 5)
      {
        [(AMSCardAuthorizationTask *)self setDidCancelHomeButton:1];
        return;
      }

      _metricsUserActionDictionary2 = [(AMSCardAuthorizationTask *)self _metricsUserActionDictionary];
      [_metricsUserActionDictionary2 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
      v16 = @"failure";
      v18 = @"result";
      _metricsUserActionDictionary = _metricsUserActionDictionary2;
    }

    [_metricsUserActionDictionary setObject:v16 forKeyedSubscript:v18];
    v17 = @"authenticate";
  }

  else if (event > 2)
  {
    _metricsUserActionDictionary3 = [(AMSCardAuthorizationTask *)self _metricsUserActionDictionary];
    if (event == 3)
    {
      _metricsUserActionDictionary2 = _metricsUserActionDictionary3;
      v14 = @"open";
    }

    else
    {
      _metricsUserActionDictionary2 = _metricsUserActionDictionary3;
      v14 = @"cancel";
    }

    [_metricsUserActionDictionary3 setObject:v14 forKeyedSubscript:@"actionType"];
    v17 = @"IForgot";
  }

  else
  {
    if (event != 1)
    {
      if (event == 2)
      {
        [(AMSCardAuthorizationTask *)self setDidBiometricsLockout:1];
      }

      return;
    }

    _metricsUserActionDictionary2 = [(AMSCardAuthorizationTask *)self _metricsUserActionDictionary];
    [_metricsUserActionDictionary2 setObject:@"authenticate" forKeyedSubscript:@"actionType"];
    [_metricsUserActionDictionary2 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
    [_metricsUserActionDictionary2 setObject:@"failure" forKeyedSubscript:@"result"];
    v17 = @"Biometric";
  }

  [_metricsUserActionDictionary2 setObject:v17 forKeyedSubscript:@"targetId"];
  v19 = [_metricsUserActionDictionary2 copy];

  if (v19)
  {
    [(NSMutableArray *)self->_userActions addObject:v19];
  }
}

- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  controllerCopy = controller;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = AMSSetLogKeyIfNeeded();
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = errorCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Payment sheet will finish with error: %{public}@", &v12, 0x20u);
  }

  [controllerCopy setPrivateDelegate:0];
}

@end