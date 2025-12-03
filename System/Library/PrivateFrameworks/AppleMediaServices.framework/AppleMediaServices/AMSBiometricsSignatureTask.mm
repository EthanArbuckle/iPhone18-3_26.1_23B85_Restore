@interface AMSBiometricsSignatureTask
+ (__SecKey)copyPrivateKeyWithStyle:(unint64_t)style context:(id)context account:(id)account options:(id)options error:(id *)error;
+ (id)fetchDataToSignWithPublicKeyData:(id)data challenge:(id)challenge error:(id *)error;
+ (id)fetchPublicKeyDataFromPrivateKey:(__SecKey *)key error:(id *)error;
+ (id)signDataWithPrivateKey:(__SecKey *)key dataToSign:(id)sign error:(id *)error;
- (AMSBiometricsSignatureTask)initWithRequest:(id)request;
- (BOOL)_fetchCardEnrollmentConfigurations:(id *)configurations;
- (BOOL)_performCardEnrollmentCheck:(id *)check;
- (id)_performSignatureInProcess;
- (id)_performSignatureOutOfProcess;
- (id)performSignature;
- (id)performSignatureFromService;
- (id)signWithPrivateKey:(__SecKey *)key error:(id *)error;
- (void)regenerateAttestationKeys;
@end

@implementation AMSBiometricsSignatureTask

- (AMSBiometricsSignatureTask)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = AMSBiometricsSignatureTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (id)performSignature
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBiometricsConfig];
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
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Perform signature task - determine the context", buf, 0x16u);
  }

  v21 = 0;
  v8 = [(AMSBiometricsSignatureTask *)self _fetchCardEnrollmentConfigurations:&v21];
  v9 = v21;
  if (v8)
  {
    request = [(AMSBiometricsSignatureTask *)self request];
    keychainOptions = [request keychainOptions];
    if ([keychainOptions purpose] == 1)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      if ([processName isEqualToString:@"Music"])
      {
        v14 = 1;
      }

      else
      {
        processInfo2 = [MEMORY[0x1E696AE30] processInfo];
        processName2 = [processInfo2 processName];
        v14 = [processName2 isEqualToString:@"AppStore"];
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = AMSIsEntitledForDirectKeychainAccess();
    if ((v14 & 1) != 0 || !v18)
    {
      _performSignatureOutOfProcess = [(AMSBiometricsSignatureTask *)self _performSignatureOutOfProcess];
    }

    else
    {
      _performSignatureOutOfProcess = [(AMSBiometricsSignatureTask *)self _performSignatureInProcess];
    }
  }

  else
  {
    _performSignatureOutOfProcess = [AMSPromise promiseWithError:v9];
  }

  v19 = _performSignatureOutOfProcess;

  return v19;
}

- (id)performSignatureFromService
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBiometricsConfig];
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
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Perform signature task from service", &v10, 0x16u);
  }

  _performSignatureInProcess = [(AMSBiometricsSignatureTask *)self _performSignatureInProcess];

  return _performSignatureInProcess;
}

- (id)_performSignatureOutOfProcess
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBiometricsConfig];
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
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting OOP signature operation", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = objc_alloc_init(AMSSigningSecurityService);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__10;
  v13[4] = __Block_byref_object_dispose__10;
  request = [(AMSBiometricsSignatureTask *)self request];
  v8 = *(*&buf[8] + 40);
  request2 = [(AMSBiometricsSignatureTask *)self request];
  v10 = [v8 signatureForRequest:request2];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__AMSBiometricsSignatureTask__performSignatureOutOfProcess__block_invoke;
  v12[3] = &unk_1E73B5318;
  v12[4] = buf;
  v12[5] = v13;
  [v10 addFinishBlock:v12];
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(buf, 8);

  return v10;
}

void __59__AMSBiometricsSignatureTask__performSignatureOutOfProcess__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (id)_performSignatureInProcess
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v3;
    v6 = v29;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting signature operation", buf, 0x16u);
  }

  v22 = objc_alloc_init(AMSMutablePromise);
  v7 = objc_alloc_init(AMSPromise);
  request = [(AMSBiometricsSignatureTask *)self request];
  [request localAuthContext];
  v10 = v9 = v3;
  request2 = [(AMSBiometricsSignatureTask *)self request];
  localAuthAccessControlRef = [request2 localAuthAccessControlRef];
  request3 = [(AMSBiometricsSignatureTask *)self request];
  localAuthOptions = [request3 localAuthOptions];
  completionHandlerAdapter = [(AMSPromise *)v7 completionHandlerAdapter];
  [v10 evaluateAccessControl:localAuthAccessControlRef operation:3 options:localAuthOptions reply:completionHandlerAdapter];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56__AMSBiometricsSignatureTask__performSignatureInProcess__block_invoke;
  v26[3] = &unk_1E73B32F0;
  v26[4] = self;
  v16 = v22;
  v27 = v16;
  [(AMSPromise *)v7 addErrorBlock:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__AMSBiometricsSignatureTask__performSignatureInProcess__block_invoke_16;
  v23[3] = &unk_1E73B5340;
  v23[4] = self;
  v24 = v9;
  v17 = v16;
  v25 = v17;
  v18 = v9;
  [(AMSPromise *)v7 addSuccessBlock:v23];
  v19 = v25;
  v20 = v17;

  return v17;
}

void __56__AMSBiometricsSignatureTask__performSignatureInProcess__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] evaluateAccessControl reply with error: %{public}@", &v11, 0x20u);
  }

  if ([v3 code] == -2 || objc_msgSend(v3, "code") == -4)
  {
    v9 = AMSError(6, @"Biometrics dialog failed", @"Biometrics dialog cancelled", v3);
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;
  [*(a1 + 40) finishWithError:v9];
}

void __56__AMSBiometricsSignatureTask__performSignatureInProcess__block_invoke_16(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v41 = a1;
  v3 = *(a1 + 32);
  v45 = 0;
  [v3 _performCardEnrollmentCheck:&v45];
  v4 = v45;
  if (v4)
  {
    v5 = v4;
    v6 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      *buf = 138543874;
      v47 = v8;
      v48 = 2114;
      v49 = v9;
      v50 = 2114;
      v51 = v5;
      v10 = v8;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failing biometric signature due to auto-enrollment check: %{public}@", buf, 0x20u);
    }

    [*(v41 + 48) finishWithError:v5];
  }

  else
  {
    v11 = objc_opt_class();
    v12 = [*(a1 + 32) request];
    v13 = [v12 keychainOptions];
    v14 = [v13 style];
    v15 = [*(a1 + 32) request];
    v16 = [v15 localAuthContext];
    v17 = [*(a1 + 32) request];
    v18 = [v17 account];
    v19 = [*(a1 + 32) request];
    v20 = [v19 keychainOptions];
    v44 = 0;
    v21 = [v11 copyPrivateKeyWithStyle:v14 context:v16 account:v18 options:v20 error:&v44];
    v5 = v44;

    if (v5)
    {
      v22 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = *(v41 + 40);
        *buf = 138543874;
        v47 = v24;
        v48 = 2114;
        v49 = v25;
        v50 = 2114;
        v51 = v5;
        v26 = v24;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failing biometric signature due to auto-enrollment check: %{public}@", buf, 0x20u);
      }

      [*(v41 + 48) finishWithError:v5];
    }

    else if (v21)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__AMSBiometricsSignatureTask__performSignatureInProcess__block_invoke_23;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v21;
      v27 = _Block_copy(aBlock);
      v28 = *(v41 + 32);
      v42 = 0;
      v29 = [v28 signWithPrivateKey:v21 error:&v42];
      v30 = v42;
      v31 = v30;
      if (!v29 || v30)
      {
        v5 = AMSError(602, @"Signature Failed", @"Fatal error prior to signing data", 0);

        [*(v41 + 48) finishWithError:v5];
      }

      else
      {
        v32 = objc_alloc_init(AMSBiometricsSignatureResult);
        v33 = [objc_opt_class() fetchPublicKeyDataFromPrivateKey:v21 error:0];
        [(AMSBiometricsSignatureResult *)v32 setPublicKey:v33];

        v34 = [*(v41 + 32) request];
        [(AMSBiometricsSignatureResult *)v32 setOriginalRequest:v34];

        [(AMSBiometricsSignatureResult *)v32 setSignature:v29];
        v35 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v35)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v35 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = objc_opt_class();
          v38 = *(v41 + 40);
          *buf = 138543618;
          v47 = v37;
          v48 = 2114;
          v49 = v38;
          v39 = v37;
          _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Signature operation completed successfully", buf, 0x16u);
        }

        [*(v41 + 48) finishWithResult:v32];
        v5 = 0;
      }

      v27[2](v27);
    }

    else
    {
      v5 = AMSError(602, @"Signature Failed", @"Failed to get private key reference", 0);
      [*(v41 + 32) regenerateAttestationKeys];
      [*(v41 + 48) finishWithError:v5];
    }
  }
}

- (BOOL)_fetchCardEnrollmentConfigurations:(id *)configurations
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = MEMORY[0x1E696AD98];
    v10 = v8;
    request = [(AMSBiometricsSignatureTask *)self request];
    v12 = [v9 numberWithBool:{objc_msgSend(request, "isDualAction")}];
    v41 = 138543874;
    v42 = v8;
    v43 = 2114;
    v44 = v5;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Start fetch CardEnrollment setting for dual-action=%@", &v41, 0x20u);
  }

  request2 = [(AMSBiometricsSignatureTask *)self request];
  isDualAction = [request2 isDualAction];

  if (!isDualAction)
  {
    goto LABEL_12;
  }

  request3 = [(AMSBiometricsSignatureTask *)self request];
  v16 = [request3 bag];

  if (v16)
  {
    request4 = [(AMSBiometricsSignatureTask *)self request];
    v18 = [request4 bag];
    v19 = [AMSCardEnrollment shouldUseApplePayClassicWithBag:v18];
    request5 = [(AMSBiometricsSignatureTask *)self request];
    [request5 setUseApplePayClassic:v19];

    request6 = [(AMSBiometricsSignatureTask *)self request];
    v22 = [request6 bag];
    v23 = [AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v22];
    request7 = [(AMSBiometricsSignatureTask *)self request];
    [request7 setUseAutoEnrollment:v23];

    v25 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = MEMORY[0x1E696AD98];
      v29 = v27;
      request8 = [(AMSBiometricsSignatureTask *)self request];
      v31 = [v28 numberWithBool:{objc_msgSend(request8, "shouldUseApplePayClassic")}];
      v32 = MEMORY[0x1E696AD98];
      request9 = [(AMSBiometricsSignatureTask *)self request];
      v34 = [v32 numberWithBool:{objc_msgSend(request9, "shouldUseAutoEnrollment")}];
      v41 = 138544130;
      v42 = v27;
      v43 = 2114;
      v44 = v5;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = v34;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Get CardEnrollment setting for dual-action, useApplePayClassic=%@, useAutoEnrollment=%@", &v41, 0x2Au);
    }

LABEL_12:
    v35 = 1;
    goto LABEL_13;
  }

  v37 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v37)
  {
    v37 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v37 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v39 = objc_opt_class();
    v41 = 138543618;
    v42 = v39;
    v43 = 2114;
    v44 = v5;
    v40 = v39;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Buy params indicate a dual-action buy but no bag available", &v41, 0x16u);
  }

  if (configurations)
  {
    AMSError(601, @"Biometric Signature Failure", @"No bag available for dual-action buy", 0);
    *configurations = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_13:

  return v35;
}

- (BOOL)_performCardEnrollmentCheck:(id *)check
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = AMSSetLogKeyIfNeeded();
  request = [(AMSBiometricsSignatureTask *)self request];
  isDualAction = [request isDualAction];

  if (!isDualAction)
  {
    v19 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 138543618;
      *&v39[4] = objc_opt_class();
      *&v39[12] = 2114;
      *&v39[14] = v5;
      v21 = *&v39[4];
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping card enrollment check for no dual-action buy", v39, 0x16u);
    }

    goto LABEL_21;
  }

  request2 = [(AMSBiometricsSignatureTask *)self request];
  localAuthAccessControlRef = [request2 localAuthAccessControlRef];

  if (localAuthAccessControlRef)
  {
    goto LABEL_3;
  }

  v32 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v32 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    *v39 = 138543618;
    *&v39[4] = objc_opt_class();
    *&v39[12] = 2114;
    *&v39[14] = v5;
    v34 = *&v39[4];
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Signature failed for dual-action buy for no ACL", v39, 0x16u);
  }

  v29 = AMSError(601, @"Biometric Signature Failure", @"No ACL available for dual-action buy", 0);
  if (!v29)
  {
LABEL_3:
    v10 = [(AMSBiometricsSignatureTask *)self request:*v39];
    shouldUseApplePayClassic = [v10 shouldUseApplePayClassic];

    if (shouldUseApplePayClassic)
    {
      v12 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        *v39 = 138543618;
        *&v39[4] = v14;
        *&v39[12] = 2114;
        *&v39[14] = v5;
        v15 = v14;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking dual-action buy ACL for apple-pay-classic capability", v39, 0x16u);
      }

      request3 = [(AMSBiometricsSignatureTask *)self request];
      localAuthAccessControlRef2 = [request3 localAuthAccessControlRef];
      v18 = 4;
    }

    else
    {
      request4 = [(AMSBiometricsSignatureTask *)self request];
      shouldUseAutoEnrollment = [request4 shouldUseAutoEnrollment];

      if (!shouldUseAutoEnrollment)
      {
LABEL_21:
        v29 = 0;
        goto LABEL_22;
      }

      v24 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *v39 = 138543618;
        *&v39[4] = v26;
        *&v39[12] = 2114;
        *&v39[14] = v5;
        v27 = v26;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking dual-action buy ACL for auto-enrollment capability", v39, 0x16u);
      }

      request3 = [(AMSBiometricsSignatureTask *)self request];
      localAuthAccessControlRef2 = [request3 localAuthAccessControlRef];
      v18 = 3;
    }

    v28 = [AMSBiometrics isActionSupported:v18 withAccessControl:localAuthAccessControlRef2];

    if (v28)
    {
      goto LABEL_21;
    }

    v35 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      *v39 = 138543618;
      *&v39[4] = v37;
      *&v39[12] = 2114;
      *&v39[14] = v5;
      v38 = v37;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Signature failed dual-action buy for insufficient ACL capabilities", v39, 0x16u);
    }

    v29 = AMSError(601, @"Biometric Signature Failure", @"ACL does not support dual-action buy", 0);
  }

LABEL_22:
  if (check)
  {
    v30 = v29;
    *check = v29;
  }

  return v29 == 0;
}

- (void)regenerateAttestationKeys
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v26 = v5;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Required to regenerate attestation.", buf, 0x16u);
  }

  request = [(AMSBiometricsSignatureTask *)self request];
  keychainOptions = [request keychainOptions];
  v10 = [keychainOptions copy];

  [v10 setRegenerateKeys:1];
  request2 = [(AMSBiometricsSignatureTask *)self request];
  account = [request2 account];
  v13 = [AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:account];

  if (v13)
  {
    request3 = [(AMSBiometricsSignatureTask *)self request];
    account2 = [request3 account];
    v24 = 0;
    v16 = [AMSAttestation attestationWithAccount:account2 options:v10 error:&v24];
    v17 = v24;

    if (!v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v23 = 0;
  v16 = [AMSAttestation attestationWithOptions:v10 error:&v23];
  v17 = v23;
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_10:
  v18 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSLogKey();
    *buf = 138543874;
    v26 = v20;
    v27 = 2114;
    v28 = v22;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-attestation failed. error: %{public}@", buf, 0x20u);
  }

LABEL_15:
}

- (id)signWithPrivateKey:(__SecKey *)key error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v7 = [objc_opt_class() fetchPublicKeyDataFromPrivateKey:key error:&v44];
  v8 = v44;
  if (v7)
  {
    v9 = objc_opt_class();
    request = [(AMSBiometricsSignatureTask *)self request];
    challenge = [request challenge];
    v43 = v8;
    v12 = [v9 fetchDataToSignWithPublicKeyData:v7 challenge:challenge error:&v43];
    v13 = v43;

    if (v12)
    {
      v42 = v13;
      v14 = [objc_opt_class() signDataWithPrivateKey:key dataToSign:v12 error:&v42];
      v8 = v42;

      if (v14)
      {
        v15 = [v14 base64EncodedStringWithOptions:0];
        if ([v15 length])
        {
          v16 = v15;
        }

        else
        {
          v33 = +[AMSLogConfig sharedBiometricsConfig];
          if (!v33)
          {
            v33 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v33 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v41 = v35;
            v36 = AMSLogKey();
            *buf = 138543618;
            v46 = v35;
            v47 = 2114;
            v48 = v36;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode the signed string", buf, 0x16u);
          }

          if (error)
          {
            AMSError(0, @"Signature Failed", @"Failed to encode the signed string.", 0);
            *error = v16 = 0;
          }

          else
          {
            v16 = 0;
          }
        }
      }

      else
      {
        v27 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v40 = v29;
          v30 = AMSLogKey();
          *buf = 138543874;
          v46 = v29;
          v47 = 2114;
          v48 = v30;
          v49 = 2114;
          v50 = v8;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Signature failed fatal error when signing data with error: %{public}@", buf, 0x20u);
        }

        domain = [v8 domain];
        if ([domain isEqualToString:*MEMORY[0x1E696EE30]])
        {
          v32 = [v8 code] != -2;
        }

        else
        {
          v32 = 0;
        }

        domain2 = [v8 domain];
        if ([domain2 isEqualToString:*MEMORY[0x1E6966708]])
        {
          v38 = [v8 code] == -3;
        }

        else
        {
          v38 = 0;
        }

        if (v32 || v38)
        {
          [(AMSBiometricsSignatureTask *)self regenerateAttestationKeys];
        }

        if (error)
        {
          AMSError(602, @"Signature Failed", @"Fatal error when signing data.", v8);
          *error = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v22 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = v24;
        v26 = AMSLogKey();
        *buf = 138543874;
        v46 = v24;
        v47 = 2114;
        v48 = v26;
        v49 = 2114;
        v50 = v13;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the data to sign from the challenge with error: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        AMSError(0, @"Signature Failed", @"Failed to fetch the data to sign from the challenge.", v13);
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v8 = v13;
    }
  }

  else
  {
    v17 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = AMSLogKey();
      *buf = 138543874;
      v46 = v19;
      v47 = 2114;
      v48 = v21;
      v49 = 2114;
      v50 = v8;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the public key for the private key with error: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      AMSError(0, @"Signature Failed", @"Failed to fetch the public key for the private key.", v8);
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (__SecKey)copyPrivateKeyWithStyle:(unint64_t)style context:(id)context account:(id)account options:(id)options error:(id *)error
{
  contextCopy = context;
  accountCopy = account;
  optionsCopy = options;
  if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:accountCopy])
  {
    v14 = +[AMSCertificateManager privateKeyForAccount:withContext:forSignaturePurpose:](AMSCertificateManager, "privateKeyForAccount:withContext:forSignaturePurpose:", accountCopy, contextCopy, [optionsCopy purpose]);
  }

  else if (style)
  {
    v14 = [AMSKeychain copyPrivateKeyWithContext:contextCopy account:accountCopy options:optionsCopy error:error];
  }

  else
  {
    v14 = [AMSKeychain copyCertificatePrivateKeyWithContext:contextCopy account:accountCopy options:optionsCopy error:error];
  }

  v15 = v14;

  return v15;
}

+ (id)fetchPublicKeyDataFromPrivateKey:(__SecKey *)key error:(id *)error
{
  error = 0;
  v5 = SecKeyCopyPublicKey(key);
  if (v5)
  {
    v6 = v5;
    v7 = SecKeyCopyExternalRepresentation(v5, &error);
    CFRelease(v6);
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (error)
  {
LABEL_3:
    *error = error;
  }

LABEL_4:

  return v7;
}

+ (id)fetchDataToSignWithPublicKeyData:(id)data challenge:(id)challenge error:(id *)error
{
  challengeCopy = challenge;
  v8 = [data base64EncodedStringWithOptions:0];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F071BA78;
  }

  v11 = [challengeCopy stringByAppendingString:v10];

  v12 = [v11 dataUsingEncoding:4];
  v13 = [v12 length];
  if (error && !v13)
  {
    *error = AMSError(0, @"Signature Failed", @"No data to sign", 0);
  }

  return v12;
}

+ (id)signDataWithPrivateKey:(__SecKey *)key dataToSign:(id)sign error:(id *)error
{
  error = 0;
  v6 = SecKeyCreateSignature(key, *MEMORY[0x1E697B128], sign, &error);
  if (error)
  {
    *error = error;
  }

  return v6;
}

@end