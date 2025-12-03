@interface AMSPaymentValidationService
+ (BOOL)_isEntitledForDirectAccess;
+ (id)paymentHardwareStatusHeaders;
+ (id)performPaymentHardwareStatusWithService:(id)service;
@end

@implementation AMSPaymentValidationService

+ (BOOL)_isEntitledForDirectAccess
{
  v2 = +[AMSProcessInfo currentProcess];
  isAMSAccountsDaemon = [v2 isAMSAccountsDaemon];

  return isAMSAccountsDaemon;
}

+ (id)paymentHardwareStatusHeaders
{
  v31 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() _isEntitledForDirectAccess])
  {
    v4 = NSClassFromString(&cfstr_Amsdpaymentval.isa);
    NSSelectorFromString(&cfstr_Sharedservice.isa);
    if (objc_opt_respondsToSelector())
    {
      v5 = [(objc_class *)v4 performSelector:sel_sharedService];
      v6 = [self performPaymentHardwareStatusWithService:v5];
    }

    else
    {
      v8 = +[AMSUnitTests isRunningUnitTests];
      v9 = +[AMSLogConfig sharedConfig];
      defaultCenter = v9;
      if (v8)
      {
        if (!v9)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v12 = AMSLogKey();
          v13 = MEMORY[0x1E696AEC0];
          v14 = objc_opt_class();
          if (v12)
          {
            v15 = AMSLogKey();
            a2 = NSStringFromSelector(a2);
            [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a2];
          }

          else
          {
            v15 = NSStringFromSelector(a2);
            [v13 stringWithFormat:@"%@: %@ ", v14, v15];
          }
          v16 = ;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Process is entitled for direct access, does not respond to sharedService selector", &buf, 0xCu);
          if (v12)
          {

            v16 = a2;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v9)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v18 = AMSLogKey();
          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          if (v18)
          {
            v21 = AMSLogKey();
            a2 = NSStringFromSelector(a2);
            [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, a2];
          }

          else
          {
            v21 = NSStringFromSelector(a2);
            [v19 stringWithFormat:@"%@: %@ ", v20, v21];
          }
          v22 = ;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v22;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Process is entitled for direct access, does not respond to sharedService selector", &buf, 0xCu);
          if (v18)
          {

            v22 = a2;
          }
        }
      }

      v23 = AMSError(12, @"Method Not Found", @"Either payment validation service class is Nil or it does not respond to +sharedService.", 0);
      v6 = [AMSPromise promiseWithError:v23];
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__54;
    v29 = __Block_byref_object_dispose__54;
    v30 = objc_alloc_init(AMSDaemonConnection);
    paymentValidationServiceProxy = [*(*(&buf + 1) + 40) paymentValidationServiceProxy];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__AMSPaymentValidationService_paymentHardwareStatusHeaders__block_invoke;
    v25[3] = &unk_1E73BAB50;
    v25[4] = &buf;
    v25[5] = self;
    v6 = [paymentValidationServiceProxy thenWithBlock:v25];

    _Block_object_dispose(&buf, 8);
  }

  return v6;
}

id __59__AMSPaymentValidationService_paymentHardwareStatusHeaders__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) performPaymentHardwareStatusWithService:a2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AMSPaymentValidationService_paymentHardwareStatusHeaders__block_invoke_2;
  v5[3] = &unk_1E73B4030;
  v5[4] = *(a1 + 32);
  [v3 addFinishBlock:v5];

  return v3;
}

void __59__AMSPaymentValidationService_paymentHardwareStatusHeaders__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

+ (id)performPaymentHardwareStatusWithService:(id)service
{
  serviceCopy = service;
  v5 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AMSPaymentValidationService_performPaymentHardwareStatusWithService___block_invoke;
  v8[3] = &unk_1E73BAB78;
  selfCopy = self;
  v6 = v5;
  v9 = v6;
  [serviceCopy paymentHardwareStatusHeaderWithCompletion:v8];

  return v6;
}

void __71__AMSPaymentValidationService_performPaymentHardwareStatusWithService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get payment hardware status header with error: %{public}@", &v16, 0x20u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Getting payment hardware status header failed with no response dictionary", &v16, 0x16u);
    }

    v15 = AMSError(12, @"Payment hardware status Error", @"Empty response dictionary", 0);
    [*(a1 + 32) finishWithError:v15];
  }
}

@end