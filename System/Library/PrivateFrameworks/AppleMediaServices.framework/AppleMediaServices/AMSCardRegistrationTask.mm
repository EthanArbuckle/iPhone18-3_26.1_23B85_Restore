@interface AMSCardRegistrationTask
- (AMSCardRegistrationTask)initWithCountryCode:(id)code merchantIdentifier:(id)identifier;
- (id)_performCardRegistration;
- (id)performCardRegistration;
- (void)_sendAutoBugCaptureReportWithSubtypeContext:(id)context;
@end

@implementation AMSCardRegistrationTask

- (AMSCardRegistrationTask)initWithCountryCode:(id)code merchantIdentifier:(id)identifier
{
  codeCopy = code;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AMSCardRegistrationTask;
  v8 = [(AMSTask *)&v14 init];
  if (v8)
  {
    v9 = [codeCopy copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v9;

    v11 = [identifierCopy copy];
    merchantIdentifier = v8->_merchantIdentifier;
    v8->_merchantIdentifier = v11;
  }

  return v8;
}

- (id)performCardRegistration
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AMSCardRegistrationTask_performCardRegistration__block_invoke;
  v5[3] = &unk_1E73B59F8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __50__AMSCardRegistrationTask_performCardRegistration__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedConfig];
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
      [v6 stringWithFormat:@"%@: ", v7, v17];
    }
    v8 = ;
    v9 = [*(a1 + 32) merchantIdentifier];
    v10 = AMSHashIfNeeded(v9);
    v11 = [*(a1 + 32) countryCode];
    v12 = AMSHashIfNeeded(v11);
    *buf = 138543874;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to fetch Wallet card data. Merchant identifier: %{public}@ | countryCode: %{public}@", buf, 0x20u);
  }

  v13 = [WeakRetained _performCardRegistration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__AMSCardRegistrationTask_performCardRegistration__block_invoke_23;
  v18[3] = &unk_1E73B32F0;
  v19 = v3;
  v20 = WeakRetained;
  v14 = v3;
  [v13 addErrorBlock:v18];
  v15 = [v13 promiseWithTimeout:300.0];

  return v15;
}

void __50__AMSCardRegistrationTask_performCardRegistration__block_invoke_23(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
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
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Wallet card data with error: %{public}@", buf, 0x16u);
  }
}

- (id)_performCardRegistration
{
  objc_initWeak(&location, self);
  v3 = [AMSMutableLazyPromise alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AMSCardRegistrationTask__performCardRegistration__block_invoke;
  v6[3] = &unk_1E73B5678;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [(AMSMutableLazyPromise *)v3 initWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __51__AMSCardRegistrationTask__performCardRegistration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (getPKInAppPaymentServiceClass())
  {
    v5 = objc_alloc_init(getPKInAppPaymentServiceClass());
    if (v5)
    {
      v6 = [AMSDeallocGuard alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__AMSCardRegistrationTask__performCardRegistration__block_invoke_2;
      v19[3] = &unk_1E73B3DE0;
      v19[4] = *(a1 + 32);
      v7 = v3;
      v20 = v7;
      v8 = [(AMSDeallocGuard *)v6 initWithDeallocGuardBlock:v19];
      v9 = [WeakRetained merchantIdentifier];
      v10 = [*(a1 + 32) countryCode];
      v11 = AMSNormalisedCountryCodeForPaymentRequest(v10);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__AMSCardRegistrationTask__performCardRegistration__block_invoke_52;
      v14[3] = &unk_1E73B5A20;
      v15 = v8;
      v16 = WeakRetained;
      v17 = *(a1 + 32);
      v18 = v7;
      v12 = v8;
      [v5 cardDataForMerchantIdentifier:v9 countryCode:v11 completion:v14];
    }

    else
    {
      [*(a1 + 32) _sendAutoBugCaptureReportWithSubtypeContext:@"PKInAppPaymentService Creation Failed"];
      v13 = AMSError(0, @"Cannot Create PKInAppPaymentService", @"Creating a PKInAppPaymentService returned nil", 0);
      [v3 finishWithError:v13];
    }
  }

  else
  {
    [*(a1 + 32) _sendAutoBugCaptureReportWithSubtypeContext:@"PKInAppPaymentService Class Load Failed"];
    v5 = AMSError(0, @"Cannot Create PKInAppPaymentService", @"PKInAppPaymentService Class Load Failed", 0);
    [v3 finishWithError:v5];
  }
}

void __51__AMSCardRegistrationTask__performCardRegistration__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = AMSLogKey();
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = v6;
    if (v4)
    {
      v21 = AMSLogKey();
      [v5 stringWithFormat:@"%@: [%@] ", v7, v21];
    }

    else
    {
      [v5 stringWithFormat:@"%@: ", v6];
    }
    v8 = ;
    PKInAppPaymentServiceClass = getPKInAppPaymentServiceClass();
    v10 = NSStringFromClass(PKInAppPaymentServiceClass);
    v11 = AMSHashIfNeeded(v10);
    v12 = NSStringFromSelector(sel_cardDataForMerchantIdentifier_countryCode_completion_);
    v13 = AMSHashIfNeeded(v12);
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_ERROR, "%{public}@Completion handler passed to [%{public}@ %{public}@] deallocated without being called.", buf, 0x20u);

    if (v4)
    {

      v8 = v21;
    }
  }

  [*(a1 + 32) _sendAutoBugCaptureReportWithSubtypeContext:@"Dealloc Guard"];
  v14 = MEMORY[0x1E696AEC0];
  v15 = getPKInAppPaymentServiceClass();
  v16 = NSStringFromClass(v15);
  v17 = NSStringFromSelector(sel_cardDataForMerchantIdentifier_countryCode_completion_);
  v18 = [v14 stringWithFormat:@"Completion handler passed to -[%@ %@] deallocated without being called.", v16, v17];

  v19 = *(a1 + 40);
  v20 = AMSError(0, @"Completion Handler Not Called", v18, 0);
  [v19 finishWithError:v20];
}

void __51__AMSCardRegistrationTask__performCardRegistration__block_invoke_52(id *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [a1[4] invalidate];
  v4 = AMSSetLogKeyIfNeeded();
  if (!v3)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      if (v4)
      {
        [v13 stringWithFormat:@"%@: [%@] ", v14, v4];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14, v46];
      }
      v23 = ;
      *buf = 138543362;
      v48 = v23;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@Card registration failed for no response", buf, 0xCu);
    }

    [a1[6] _sendAutoBugCaptureReportWithSubtypeContext:@"Missing Response"];
    v22 = AMSError(7, @"Card Registration Error", @"Card Registration Not Found", 0);
    goto LABEL_24;
  }

  v5 = [v3 error];

  v6 = +[AMSLogConfig sharedConfig];
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
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      if (v4)
      {
        [v9 stringWithFormat:@"%@: [%@] ", v10, v4];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10, v46];
      }
      v18 = ;
      v19 = [v3 error];
      v20 = AMSLogableError(v19);
      *buf = 138543618;
      v48 = v18;
      v49 = 2114;
      v50 = v20;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Card registration failed with error: %{public}@", buf, 0x16u);
    }

    v21 = [v3 error];
    v22 = AMSError(0, @"Registration Failure", @"Failed to get card data.", v21);

LABEL_24:
    [a1[7] finishWithError:v22];
    goto LABEL_49;
  }

  if (!v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v7 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    if (v4)
    {
      [v16 stringWithFormat:@"%@: [%@] ", v17, v4];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v17, v46];
    }
    v24 = ;
    *buf = 138543362;
    v48 = v24;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Card registration success", buf, 0xCu);
  }

  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    if (v4)
    {
      [v27 stringWithFormat:@"%@: [%@] ", v28, v4];
    }

    else
    {
      [v27 stringWithFormat:@"%@: ", v28, v46];
    }
    v29 = ;
    v30 = [v3 cardData];
    v31 = [v30 length];
    *buf = 138543618;
    v48 = v29;
    v49 = 2050;
    v50 = v31;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Card registration data: %{public}lu bytes", buf, 0x16u);
  }

  v32 = +[AMSLogConfig sharedConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  v33 = [v32 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    if (v4)
    {
      [v34 stringWithFormat:@"%@: [%@] ", v35, v4];
    }

    else
    {
      [v34 stringWithFormat:@"%@: ", v35, v46];
    }
    v36 = ;
    v37 = [v3 brokerURL];
    v38 = AMSLogableURL(v37);
    *buf = 138543618;
    v48 = v36;
    v49 = 2114;
    v50 = v38;
    _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Card registration broker URL: %{public}@", buf, 0x16u);
  }

  v39 = +[AMSLogConfig sharedConfig];
  if (!v39)
  {
    v39 = +[AMSLogConfig sharedConfig];
  }

  v40 = [v39 OSLogObject];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = objc_opt_class();
    if (v4)
    {
      [v41 stringWithFormat:@"%@: [%@] ", v42, v4];
    }

    else
    {
      [v41 stringWithFormat:@"%@: ", v42, v46];
    }
    v43 = ;
    v44 = [v3 paymentServicesURL];
    v45 = AMSLogableURL(v44);
    *buf = 138543618;
    v48 = v43;
    v49 = 2114;
    v50 = v45;
    _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Card registration payment services URL: %{public}@", buf, 0x16u);
  }

  v22 = [[AMSCardRegistrationResult alloc] initWithCardRegistrationResponse:v3];
  [a1[7] finishWithResult:v22];
LABEL_49:
}

- (void)_sendAutoBugCaptureReportWithSubtypeContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded(contextCopy);
    *buf = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Sending Auto Bug Capture report for subtype context: %{public}@.", buf, 0x16u);
    if (v8)
    {

      v12 = v3;
    }
  }

  v14 = [AMSAutoBugCaptureReport alloc];
  v15 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v15 bundleIdentifier];
  v17 = [(AMSAutoBugCaptureReport *)v14 initWithDomain:@"AppleMediaServices" type:@"AMSCardRegistrationTask" subtype:@"Failure" subtypeContext:contextCopy process:bundleIdentifier thresholdValues:0];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__AMSCardRegistrationTask__sendAutoBugCaptureReportWithSubtypeContext___block_invoke;
  v18[3] = &unk_1E73B5A48;
  v18[4] = self;
  [(AMSAutoBugCaptureReport *)v17 captureWithDelay:0 events:0 payload:0 actions:v18 completionHandler:0.0];
}

void __71__AMSCardRegistrationTask__sendAutoBugCaptureReportWithSubtypeContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        a1 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, a1];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v18 = AMSLogableError(v4);
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Auto Bug Capture report: %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = a1;
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        a1 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, a1];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully sent Auto Bug Capture report.", buf, 0xCu);
      if (v13)
      {

        v17 = a1;
      }
    }
  }
}

@end