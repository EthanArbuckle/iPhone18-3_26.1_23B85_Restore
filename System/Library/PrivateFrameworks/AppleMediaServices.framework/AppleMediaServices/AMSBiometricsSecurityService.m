@interface AMSBiometricsSecurityService
+ (id)isAvailableForAccount:(id)a3;
+ (id)isIdentityMapValid;
+ (id)saveIdentityMap;
+ (id)verifyDevicePasscode;
@end

@implementation AMSBiometricsSecurityService

+ (id)isAvailableForAccount:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = objc_alloc_init(AMSDaemonConnection);
  v5 = [v15[5] securityServiceProxyWithDelegate:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke;
  v11[3] = &unk_1E73B5258;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  v7 = [v5 thenWithBlock:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke_3;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = a1;
  [v7 addErrorBlock:v10];
  v8 = [v7 binaryPromiseAdapter];

  _Block_object_dispose(&v14, 8);

  return v8;
}

AMSMutablePromise *__54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke_2;
  v9[3] = &unk_1E73B5148;
  v6 = v4;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  [v3 isBiometricsAvailableForAccount:v5 completion:v9];

  return v6;
}

void __54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    if (a2)
    {
      [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
      goto LABEL_6;
    }

    v5 = AMSError(11, @"Biometric Error", @"Biometrics not available", 0);
  }

  v6 = v5;
  [*(a1 + 32) finishWithError:v5];

LABEL_6:
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __54__AMSBiometricsSecurityService_isAvailableForAccount___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
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
    v6 = v5;
    v7 = AMSSetLogKeyIfNeeded();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch biometric availability: %{public}@", &v8, 0x20u);
  }
}

+ (id)isIdentityMapValid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = objc_alloc_init(AMSDaemonConnection);
  v3 = [v9[5] securityServiceProxyWithDelegate:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSBiometricsSecurityService_isIdentityMapValid__block_invoke;
  v7[3] = &unk_1E73B52C8;
  v7[4] = &v8;
  v7[5] = a1;
  v4 = [v3 thenWithBlock:v7];
  v5 = [v4 binaryPromiseAdapter];

  _Block_object_dispose(&v8, 8);

  return v5;
}

AMSMutablePromise *__50__AMSBiometricsSecurityService_isIdentityMapValid__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSBiometricsSecurityService_isIdentityMapValid__block_invoke_2;
  v7[3] = &unk_1E73B52A0;
  v5 = v4;
  v8 = v5;
  v9 = *(a1 + 32);
  [v3 isIdentityMapValidWithCompletion:v7];

  return v5;
}

void __50__AMSBiometricsSecurityService_isIdentityMapValid__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) finishWithError:v5];
  }

  else if (a2)
  {
    [*(a1 + 32) finishWithResult:MEMORY[0x1E695E118]];
  }

  else
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
      v10 = v9;
      v11 = AMSSetLogKeyIfNeeded();
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Biometric identity map invalid", &v15, 0x16u);
    }

    v12 = AMSError(11, @"Biometric Error", @"Invalid Identity Map", 0);
    [*(a1 + 32) finishWithError:v12];
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

+ (id)saveIdentityMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v8[5] securityServiceProxyWithDelegate:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AMSBiometricsSecurityService_saveIdentityMap__block_invoke;
  v6[3] = &unk_1E73B5198;
  v6[4] = &v7;
  v3 = [v2 thenWithBlock:v6];
  v4 = [v3 binaryPromiseAdapter];

  _Block_object_dispose(&v7, 8);

  return v4;
}

AMSMutablePromise *__47__AMSBiometricsSecurityService_saveIdentityMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AMSBiometricsSecurityService_saveIdentityMap__block_invoke_2;
  v8[3] = &unk_1E73B52F0;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  [v3 saveIdentityMapWithCompletion:v8];

  return v5;
}

void __47__AMSBiometricsSecurityService_saveIdentityMap__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 finishWithError:a2];
  }

  else
  {
    [v3 finishWithResult:&unk_1F0778FF8];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

+ (id)verifyDevicePasscode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v8[5] securityServiceProxyWithDelegate:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AMSBiometricsSecurityService_Project__verifyDevicePasscode__block_invoke;
  v6[3] = &unk_1E73B5198;
  v6[4] = &v7;
  v3 = [v2 thenWithBlock:v6];
  v4 = [v3 binaryPromiseAdapter];

  _Block_object_dispose(&v7, 8);

  return v4;
}

AMSMutablePromise *__61__AMSBiometricsSecurityService_Project__verifyDevicePasscode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AMSBiometricsSecurityService_Project__verifyDevicePasscode__block_invoke_2;
  v8[3] = &unk_1E73B5148;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  [v3 performDevicePasscodeVerificationWithCompletion:v8];

  return v5;
}

void __61__AMSBiometricsSecurityService_Project__verifyDevicePasscode__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [*(a1 + 32) finishWithError:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v4 finishWithResult:v5];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

@end