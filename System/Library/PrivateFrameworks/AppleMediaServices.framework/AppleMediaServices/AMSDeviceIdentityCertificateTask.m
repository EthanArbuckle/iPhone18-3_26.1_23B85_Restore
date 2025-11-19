@interface AMSDeviceIdentityCertificateTask
- (AMSDeviceIdentityCertificateTask)initWithBag:(id)a3;
- (id)performDeviceIdentityRequestForAbsinthe;
- (id)performDeviceIdentityRequestForFraudReport;
- (id)performDeviceIdentityRequestWithBaaOptions:(id)a3 ttlBagKey:(id)a4 logInformation:(id)a5;
@end

@implementation AMSDeviceIdentityCertificateTask

- (id)performDeviceIdentityRequestForAbsinthe
{
  v13[6] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6999EA8];
  v12[0] = *MEMORY[0x1E6999EA0];
  v12[1] = v3;
  v13[0] = MEMORY[0x1E695E118];
  v13[1] = MEMORY[0x1E695E110];
  v4 = *MEMORY[0x1E6999EB8];
  v12[2] = *MEMORY[0x1E6999EB0];
  v12[3] = v4;
  v13[2] = @"apple";
  v13[3] = @"com.apple.AppleMediaServices.antifraud";
  v5 = *MEMORY[0x1E6999ED0];
  v13[4] = &unk_1F07793E8;
  v6 = *MEMORY[0x1E6999F00];
  v12[4] = v5;
  v12[5] = v6;
  v11 = *MEMORY[0x1E6999F08];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[5] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v9 = [(AMSDeviceIdentityCertificateTask *)self performDeviceIdentityRequestWithBaaOptions:v8 ttlBagKey:@"afcert-ttl" logInformation:@"fraud prevention"];

  return v9;
}

- (id)performDeviceIdentityRequestForFraudReport
{
  v3 = AMSLogKey();
  v4 = [(AMSDeviceIdentityCertificateTask *)self bag];
  v5 = [v4 BOOLForKey:@"fsr-ucrt-device-ids-disabled"];
  v6 = [v5 valuePromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__AMSDeviceIdentityCertificateTask_AMSFraudReport__performDeviceIdentityRequestForFraudReport__block_invoke;
  v10[3] = &unk_1E73B3190;
  v11 = v3;
  v12 = self;
  v7 = v3;
  v8 = [v6 continueWithBlock:v10];

  return v8;
}

id __94__AMSDeviceIdentityCertificateTask_AMSFraudReport__performDeviceIdentityRequestForFraudReport__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey(*(a1 + 32));
  if (v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
    v6 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      v31 = 1026;
      v32 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] shouldRequestUCRTDeviceIds=%{public}d", buf, 0x1Cu);
    }
  }

  else
  {
    v6 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543618;
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] UCRT ids disabler is missing in bag, will request certificate with UCRT device ids.", buf, 0x16u);
    }

    v5 = 1;
  }

  v12 = *MEMORY[0x1E6999EA8];
  v25[0] = *MEMORY[0x1E6999EA0];
  v25[1] = v12;
  v26[0] = MEMORY[0x1E695E118];
  v26[1] = MEMORY[0x1E695E110];
  v13 = *MEMORY[0x1E6999EB8];
  v25[2] = *MEMORY[0x1E6999EB0];
  v25[3] = v13;
  v26[2] = @"apple";
  v26[3] = @"com.apple.AppleMediaServices.fsr";
  v25[4] = *MEMORY[0x1E6999ED0];
  v26[4] = &unk_1F0779400;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v15 = [v14 mutableCopy];

  v16 = *MEMORY[0x1E6999EF0];
  if (v5)
  {
    v24[0] = *MEMORY[0x1E6999EE0];
    v24[1] = v16;
    v24[2] = *MEMORY[0x1E6999F08];
    v17 = MEMORY[0x1E695DEC8];
    v18 = v24;
    v19 = 3;
  }

  else
  {
    v23[0] = *MEMORY[0x1E6999EE0];
    v23[1] = v16;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v23;
    v19 = 2;
  }

  v20 = [v17 arrayWithObjects:v18 count:v19];
  [v15 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6999F00]];

  v21 = [*(a1 + 40) performDeviceIdentityRequestWithBaaOptions:v15 ttlBagKey:@"fsr-cert-ttl" logInformation:@"fraud score report"];

  return v21;
}

- (AMSDeviceIdentityCertificateTask)initWithBag:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26.receiver = self;
  v26.super_class = AMSDeviceIdentityCertificateTask;
  v7 = [(AMSTask *)&v26 init];
  if (v7)
  {
    if (!v6)
    {
      v8 = +[AMSUnitTests isRunningUnitTests];
      v9 = +[AMSLogConfig sharedConfig];
      v10 = v9;
      if (v8)
      {
        if (!v9)
        {
          v10 = +[AMSLogConfig sharedConfig];
        }

        v11 = [v10 OSLogObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = AMSLogKey();
          v13 = MEMORY[0x1E696AEC0];
          v14 = objc_opt_class();
          v15 = v14;
          if (v12)
          {
            v3 = AMSLogKey();
            [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
          }

          else
          {
            [v13 stringWithFormat:@"%@: ", v14];
          }
          v16 = ;
          *buf = 138543362;
          v28 = v16;
          _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Bag wasn't provided. No identity request can be performed with this instance.", buf, 0xCu);
          if (v12)
          {

            v16 = v3;
          }
        }

        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        v17 = +[AMSLogConfig sharedConfig];
        [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
      }

      else
      {
        if (!v9)
        {
          v10 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v10 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v18 = AMSLogKey();
          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          v21 = v20;
          if (v18)
          {
            v3 = AMSLogKey();
            [v19 stringWithFormat:@"%@: [%@] ", v21, v3];
          }

          else
          {
            [v19 stringWithFormat:@"%@: ", v20];
          }
          v22 = ;
          *buf = 138543362;
          v28 = v22;
          _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Bag wasn't provided. No identity request can be performed with this instance.", buf, 0xCu);
          if (v18)
          {

            v22 = v3;
          }
        }
      }
    }

    objc_storeStrong(&v7->_bag, a3);
    v23 = dispatch_queue_create("com.apple.AppleMediaServices.deviceIdentityRequest", 0);
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v23;
  }

  return v7;
}

- (id)performDeviceIdentityRequestWithBaaOptions:(id)a3 ttlBagKey:(id)a4 logInformation:(id)a5
{
  location[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AMSSetLogKeyIfNeeded();
  v12 = [(AMSDeviceIdentityCertificateTask *)self bag];
  if (v12)
  {
    objc_initWeak(location, self);
    v13 = [AMSMutableLazyPromise alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __104__AMSDeviceIdentityCertificateTask_performDeviceIdentityRequestWithBaaOptions_ttlBagKey_logInformation___block_invoke;
    v25[3] = &unk_1E73B6C78;
    objc_copyWeak(&v31, location);
    v26 = v11;
    v27 = v10;
    v28 = v12;
    v29 = v9;
    v30 = v8;
    v14 = [(AMSMutableLazyPromise *)v13 initWithBlock:v25];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      if (v17)
      {
        v24 = AMSLogKey();
        [v18 stringWithFormat:@"%@: [%@] ", v20, v24];
      }

      else
      {
        [v18 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v21;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@Bag wasn't provided. No identity request will be performed.", location, 0xCu);
      if (v17)
      {

        v21 = v24;
      }
    }

    v22 = AMSError(0, @"Bag wasn't provided", 0, 0);
    v14 = [AMSPromise promiseWithError:v22];
  }

  return v14;
}

void __104__AMSDeviceIdentityCertificateTask_performDeviceIdentityRequestWithBaaOptions_ttlBagKey_logInformation___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (WeakRetained)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching BAA certs for %{public}@", buf, 0x20u);
    }

    v11 = [*(a1 + 48) integerForKey:*(a1 + 56)];
    v12 = [v11 valuePromise];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__AMSDeviceIdentityCertificateTask_performDeviceIdentityRequestWithBaaOptions_ttlBagKey_logInformation___block_invoke_41;
    v17[3] = &unk_1E73B6C50;
    v17[4] = WeakRetained;
    v18 = *(a1 + 32);
    v19 = v3;
    v20 = *(a1 + 64);
    v21 = *(a1 + 40);
    [v12 addFinishBlock:v17];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      *buf = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] AMSDeviceIdentityCertificateTask unexpectedly deallocated", buf, 0x16u);
    }

    v16 = AMSError(0, @"Task unexpectedly deallocated", 0, 0);
    [v3 finishWithError:v16];
  }
}

void __104__AMSDeviceIdentityCertificateTask_performDeviceIdentityRequestWithBaaOptions_ttlBagKey_logInformation___block_invoke_41(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
      v10 = a1[5];
      *buf = 138544130;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Parsing certificate TTL failed with error: %{public}@, TTL: %{public}@", buf, 0x2Au);
    }

    [a1[6] finishWithError:v6];
  }

  else
  {
    v11 = [a1[7] mutableCopy];
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6999F28]];
    v12 = [a1[4] requestQueue];
    v13 = [v11 copy];
    v14 = a1[5];
    v15 = a1[8];
    v16 = a1[6];
    DeviceIdentityIssueClientCertificateWithCompletion();
  }
}

void __104__AMSDeviceIdentityCertificateTask_performDeviceIdentityRequestWithBaaOptions_ttlBagKey_logInformation___block_invoke_42(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v25 = 138544130;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch BAA certs for %{public}@ failed with error: %{public}@", &v25, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v8];
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v10 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v25 = 138543874;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully retrieved BAA certs for %{public}@", &v25, 0x20u);
    }

    v19 = [AMSBAAKeychainItems alloc];
    v20 = [v7 objectAtIndexedSubscript:0];
    v21 = SecCertificateCopyData(v20);
    v22 = [v7 objectAtIndexedSubscript:1];
    v23 = SecCertificateCopyData(v22);
    v24 = [(AMSBAAKeychainItems *)v19 initWithBAACert:v21 BIKKey:a2 intermediateRootCert:v23];

    [*(a1 + 56) finishWithResult:v24];
  }
}

@end