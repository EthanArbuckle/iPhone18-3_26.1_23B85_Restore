@interface AMSURLProtocolHandler
+ (id)reversePushSamplingPercentageForTask:(id)a3;
- (AMSURLProtocolHandler)init;
- (AMSURLProtocolHandler)initWithFraudReportRefreshScoreBlock:(id)a3 fraudReportStateStorageFactoryBlock:(id)a4;
- (AMSURLProtocolHandler)initWithMetricsHandler:(id)a3 fairPlayDeviceIdentity:(id)a4 fraudReportRefreshScoreBlock:(id)a5 fraudReportStateStorageFactoryBlock:(id)a6;
- (AMSURLSession)session;
- (id)_URLIsTrustedFromRequest:(id)a3 bag:(id)a4;
- (id)_handleResponse:(id)a3 task:(id)a4;
- (id)_setResponseCookiesFromResponse:(id)a3 taskInfo:(id)a4;
- (id)decodeData:(id)a3 task:(id)a4 error:(id *)a5;
- (id)decodeMutableData:(id)a3 task:(id)a4 error:(id *)a5;
- (id)shouldEnableReversePushForTask:(id)a3;
- (void)_pingURL:(id)a3 session:(id)a4 account:(id)a5 bag:(id)a6;
- (void)decodeMutableData:(id)a3 task:(id)a4 completionHandler:(id)a5;
- (void)didCreateTask:(id)a3 fromRequest:(id)a4 completionHandler:(id)a5;
- (void)didCreateTask:(id)a3 fromRequest:(id)a4 error:(id *)a5;
- (void)handleCompletionWithTask:(id)a3 metrics:(id)a4 decodedObject:(id)a5 completionHandler:(id)a6;
- (void)handleResponse:(id)a3 task:(id)a4 completionHandler:(id)a5;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 completionHandler:(id)a6;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
- (void)reportMetricsForContext:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation AMSURLProtocolHandler

- (AMSURLProtocolHandler)init
{
  v3 = [[AMSURLMetricsLoadURLHandler alloc] initWithMetrics:objc_opt_class()];
  v4 = +[AMSFairPlayDeviceIdentity shared];
  v5 = [(AMSURLProtocolHandler *)self initWithMetricsHandler:v3 fairPlayDeviceIdentity:v4];

  return v5;
}

- (AMSURLSession)session
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  os_unfair_lock_unlock(&self->_propertiesLock);

  return WeakRetained;
}

- (AMSURLProtocolHandler)initWithFraudReportRefreshScoreBlock:(id)a3 fraudReportStateStorageFactoryBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSURLMetricsLoadURLHandler alloc] initWithMetrics:objc_opt_class()];
  v9 = +[AMSFairPlayDeviceIdentity shared];
  v10 = [(AMSURLProtocolHandler *)self initWithMetricsHandler:v8 fairPlayDeviceIdentity:v9 fraudReportRefreshScoreBlock:v7 fraudReportStateStorageFactoryBlock:v6];

  return v10;
}

- (AMSURLProtocolHandler)initWithMetricsHandler:(id)a3 fairPlayDeviceIdentity:(id)a4 fraudReportRefreshScoreBlock:(id)a5 fraudReportStateStorageFactoryBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = AMSURLProtocolHandler;
  v15 = [(AMSURLProtocolHandler *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_propertiesLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_metricsHandler, a3);
    objc_storeStrong(&v16->_fairPlayDeviceIdentity, a4);
    v17 = _Block_copy(v13);
    fraudReportRefreshScoreBlock = v16->_fraudReportRefreshScoreBlock;
    v16->_fraudReportRefreshScoreBlock = v17;

    v19 = _Block_copy(v14);
    fraudReportStateStorageFactoryBlock = v16->_fraudReportStateStorageFactoryBlock;
    v16->_fraudReportStateStorageFactoryBlock = v19;
  }

  return v16;
}

- (void)setSession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_session, v4);

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (void)decodeMutableData:(id)a3 task:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [AMSURLTaskInfo taskInfoForTask:v9];
  v25 = [v11 properties];
  v12 = [v25 mescalType];
  v13 = [v11 properties];
  v14 = [v13 bag];
  v15 = [AMSMescal verificationPromiseForTask:v9 data:v8 type:v12 bag:v14];
  v16 = [v15 promiseAdapter];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke;
  v32[3] = &unk_1E73B38E0;
  v17 = v11;
  v33 = v17;
  v34 = self;
  v35 = v8;
  v36 = v9;
  v24 = v9;
  v18 = v8;
  v19 = [v16 continueWithBlock:v32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke_44;
  v30[3] = &unk_1E73B8288;
  v20 = v17;
  v31 = v20;
  v21 = [v19 catchWithBlock:v30];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke_2;
  v26[3] = &unk_1E73BCF18;
  v28 = self;
  v29 = v10;
  v27 = v20;
  v22 = v20;
  v23 = v10;
  [v21 addFinishBlock:v26];
}

id __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v16 = a1[6];
    v17 = [a1[7] response];
    v18 = [v17 ams_valueForHTTPHeaderField:@"Content-Encoding"];

    if (v18 && ![v18 caseInsensitiveCompare:@"gzip"])
    {
      v19 = [AMSData decompressedDataWithGzippedData:a1[6]];
      v20 = v19;
      if (v19)
      {
        v21 = v19;

        v16 = v21;
      }
    }

    if ([v6 BOOLValue] && (objc_msgSend(a1[4], "properties"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "disableResponseDecoding"), v22, (v23 & 1) == 0))
    {
      v29 = [a1[4] response];
      v31 = 0;
      v24 = [AMSData objectWithData:v16 response:v29 error:&v31];
      v25 = v31;

      if (v25)
      {
        v30 = AMSError(4, @"Data decoding failed", @"Failed to decode data in response", v25);
        v26 = [AMSPromise promiseWithError:v30];

        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = [[AMSOptional alloc] initWithValue:v24];
    v26 = [AMSPromise promiseWithResult:v25];
LABEL_16:

    goto LABEL_22;
  }

  v8 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [a1[4] properties];
    v11 = [v10 logUUID];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      a1 = [a1[4] properties];
      v3 = [a1 logUUID];
      [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v27 = AMSLogableError(v7);
    *buf = 138543618;
    v33 = v15;
    v34 = 2114;
    v35 = v27;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Protocol encountered verification error = %{public}@", buf, 0x16u);
    if (v11)
    {

      v15 = a1;
    }
  }

  v16 = AMSError(304, @"Mescal Verification Failed", @"Failed to verify mescal response header", v7);
  v26 = [AMSPromise promiseWithError:v16];
LABEL_22:

  return v26;
}

id __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) response];
  v5 = [v4 ams_statusCode] - 200;

  if (v5 > 0x63)
  {
    v7 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v7];
  }

  else
  {
    v6 = [AMSPromise promiseWithError:v3];
  }

  return v6;
}

void __66__AMSURLProtocolHandler_decodeMutableData_task_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a2 value];
  if (v7)
  {
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    v9 = +[AMSLogConfig sharedURLLoadingConfig];
    v10 = v9;
    if (v6)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1 + 32) properties];
        v13 = [v12 logUUID];
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = v15;
        if (v13)
        {
          v25 = [*(a1 + 32) properties];
          v3 = [v25 logUUID];
          [v14 stringWithFormat:@"%@: [%@] ", v16, v3];
        }

        else
        {
          [v14 stringWithFormat:@"%@: ", v15];
        }
        v17 = ;
        v24 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v24;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Data decoding failed. error = %{public}@.", buf, 0x16u);
        if (v13)
        {

          v17 = v25;
        }
      }
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) properties];
        v19 = [v18 logUUID];
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = v21;
        if (v19)
        {
          v25 = [*(a1 + 32) properties];
          v3 = [v25 logUUID];
          [v20 stringWithFormat:@"%@: [%@] ", v22, v3];
        }

        else
        {
          [v20 stringWithFormat:@"%@: ", v21];
        }
        v23 = ;
        *buf = 138543362;
        v27 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Data decoding finish without a created object or error.", buf, 0xCu);
        if (v19)
        {

          v23 = v25;
        }
      }
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
}

- (id)decodeData:(id)a3 task:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 mutableCopy];
  v10 = [(AMSURLProtocolHandler *)self decodeMutableData:v9 task:v8 error:a5];

  return v10;
}

- (id)decodeMutableData:(id)a3 task:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(AMSMutablePromise);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AMSURLProtocolHandler_decodeMutableData_task_error___block_invoke;
  v15[3] = &unk_1E73B8618;
  v16 = v10;
  v11 = v10;
  [(AMSURLProtocolHandler *)self decodeMutableData:v9 task:v8 completionHandler:v15];

  v12 = [(AMSPromise *)v11 resultWithError:a5];
  v13 = [v12 value];

  return v13;
}

void __54__AMSURLProtocolHandler_decodeMutableData_task_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = a2;
    v7 = [[AMSOptional alloc] initWithValue:v8];

    v6 = 0;
  }

  [*(a1 + 32) finishWithResult:v7 error:v6];
}

- (void)didCreateTask:(id)a3 fromRequest:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(AMSMutablePromise);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__AMSURLProtocolHandler_didCreateTask_fromRequest_error___block_invoke;
  v13[3] = &unk_1E73B3168;
  v14 = v10;
  v11 = v10;
  [(AMSURLProtocolHandler *)self didCreateTask:v9 fromRequest:v8 completionHandler:v13];

  v12 = [(AMSPromise *)v11 resultWithError:a5];
}

uint64_t __57__AMSURLProtocolHandler_didCreateTask_fromRequest_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    v5 = 0;
  }

  return [v4 finishWithResult:v5 error:a3];
}

- (void)didCreateTask:(id)a3 fromRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [AMSURLTaskInfo taskInfoForTask:v8];
  v12 = [v11 properties];
  v13 = [v12 knownToBeTrusted];

  if (v13)
  {
    v14 = [AMSBoolean BOOLeanWithBool:1];
    v15 = [AMSPromise promiseWithResult:v14];
  }

  else
  {
    v14 = [v11 properties];
    v16 = [v14 bag];
    v15 = [(AMSURLProtocolHandler *)self _URLIsTrustedFromRequest:v9 bag:v16];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__AMSURLProtocolHandler_didCreateTask_fromRequest_completionHandler___block_invoke;
  v21[3] = &unk_1E73BCF68;
  v21[4] = self;
  v22 = v11;
  v24 = v8;
  v25 = v10;
  v23 = v9;
  v17 = v8;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  [v15 addFinishBlock:v21];
}

void __69__AMSURLProtocolHandler_didCreateTask_fromRequest_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = AMSError(2, @"Invalid nil value", @"isTrusted was nil and so was error", 0);
    }

    v13 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = [a1[5] properties];
      v17 = [v16 logUUID];
      [a1[6] URL];
      v18 = v29 = v5;
      v19 = AMSLogableURL(v18);
      v20 = AMSLogableError(v7);
      *buf = 138544130;
      v35 = v15;
      v36 = 2114;
      v37 = v17;
      v38 = 2114;
      v39 = v19;
      v40 = 2114;
      v41 = v20;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to check trust for URL %{public}@, error: %{public}@", buf, 0x2Au);

      v5 = v29;
    }

    (*(a1[8] + 2))();
  }

  else
  {
    v8 = [a1[5] properties];
    v7 = [v8 bag];

    if ([v5 value])
    {
      v9 = [a1[4] shouldEnableReversePushForTask:a1[7]];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __69__AMSURLProtocolHandler_didCreateTask_fromRequest_completionHandler___block_invoke_63;
      v30[3] = &unk_1E73BCF40;
      v10 = a1[7];
      v11 = a1[4];
      v31 = v10;
      v32 = v11;
      v33 = a1[8];
      [v9 addFinishBlock:v30];

      v12 = v31;
    }

    else
    {
      v21 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = [a1[5] properties];
        v25 = [v24 logUUID];
        v26 = [a1[6] URL];
        v27 = AMSLogableURL(v26);
        *buf = 138543874;
        v35 = v23;
        v36 = 2114;
        v37 = v25;
        v38 = 2114;
        v39 = v27;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL not trusted: %{public}@", buf, 0x20u);
      }

      v28 = a1[8];
      v12 = AMSError(310, @"Invalid Request", @"URL not trusted", 0);
      v28[2](v28, 0, v12);
    }
  }
}

uint64_t __69__AMSURLProtocolHandler_didCreateTask_fromRequest_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a2 value])
  {
    if ([AMSProcessInfo BOOLForEntitlement:@"aps-connection-initiate"])
    {
      [*(a1 + 32) set_APSRelayTopic:@"com.apple.private.alloy.itunes.apsr"];
    }

    else
    {
      v3 = +[AMSUnitTests isRunningUnitTests];
      v4 = +[AMSLogConfig sharedURLLoadingConfig];
      v5 = v4;
      if (v3)
      {
        if (!v4)
        {
          v5 = +[AMSLogConfig sharedConfig];
        }

        v6 = [v5 OSLogObject];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v13 = 138543362;
          v14 = v8;
          _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Reverse push would have been attempted, but the current process lacks the correct entitlement", &v13, 0xCu);
        }

        v5 = [MEMORY[0x1E696AD88] defaultCenter];
        v9 = +[AMSLogConfig sharedURLLoadingConfig];
        [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v9 userInfo:0];
      }

      else
      {
        if (!v4)
        {
          v5 = +[AMSLogConfig sharedConfig];
        }

        v9 = [v5 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Reverse push would have been attempted, but the current process lacks the correct entitlement", &v13, 0xCu);
        }
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)handleCompletionWithTask:(id)a3 metrics:(id)a4 decodedObject:(id)a5 completionHandler:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [AMSURLTaskInfo taskInfoForTask:v9];
    v13 = [[AMSFinanceResponse alloc] initWithTaskInfo:v12 decodedObject:v10];
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v24 = [v12 properties];
        v17 = [v24 logUUID];
        *buf = 138543618;
        v32 = v16;
        v33 = 2114;
        v34 = v17;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to parse decodedObject", buf, 0x16u);
      }
    }

    v18 = [v12 response];
    v19 = [(AMSURLProtocolHandler *)self session];
    v20 = [AMSBiometrics handleResponse:v18 financeResponse:v13 session:v19 taskInfo:v12];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke;
    v25[3] = &unk_1E73BD080;
    v26 = v13;
    v27 = self;
    v28 = v12;
    v29 = v9;
    v30 = v11;
    v21 = v12;
    v22 = v13;
    [v20 addFinishBlock:v25];
  }

  else
  {
    v23 = +[AMSURLAction proceedAction];
    (*(v11 + 2))(v11, v23);
  }
}

void __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__73;
  v49[4] = __Block_byref_object_dispose__73;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__73;
  v47[4] = __Block_byref_object_dispose__73;
  v48 = 0;
  if (v6 || v5 && [v5 actionType])
  {
    v7 = [AMSPromise promiseWithResult:v5];
  }

  else
  {
    if ([*(a1 + 32) supportedProtocolVersion])
    {
      v8 = objc_alloc_init(AMSPromiseSerialQueue);
      v9 = [*(a1 + 32) actions];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_76;
      v44[3] = &unk_1E73BCFE0;
      v10 = v8;
      v45 = v10;
      v46 = *(a1 + 48);
      v11 = [v9 ams_mapWithTransform:v44];

      v12 = [AMSPromise promiseWithAll:v11];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_4;
      v40[3] = &unk_1E73BD008;
      v41 = v5;
      v42 = v49;
      v43 = v47;
      v7 = [v12 continueWithBlock:v40];

      v13 = v45;
    }

    else
    {
      v10 = [*(a1 + 32) versionMismatchURL];
      v14 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v16 = [*(a1 + 48) properties];
        v17 = [v16 logUUID];
        v18 = AMSLogableURL(v10);
        *buf = 138543874;
        v52 = v27;
        v53 = 2114;
        v54 = v17;
        v55 = 2114;
        v56 = v18;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unsupported protocol version, redirecting to: %{public}@", buf, 0x20u);
      }

      v13 = [AMSURLAction redirectActionWithURL:v10];
      v7 = [AMSPromise promiseWithResult:v13];
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_5;
    v36[3] = &unk_1E73BD030;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v37 = v19;
    v38 = v20;
    v39 = v21;
    [v7 addFinishBlock:v36];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_6;
  v29[3] = &unk_1E73BD058;
  v22 = v6;
  v30 = v22;
  *&v23 = *(a1 + 32);
  *(&v23 + 1) = *(a1 + 40);
  v28 = v23;
  v24 = *(a1 + 56);
  v25 = *(a1 + 48);
  *&v26 = v24;
  *(&v26 + 1) = v25;
  v31 = v28;
  v32 = v26;
  v34 = v49;
  v35 = v47;
  v33 = *(a1 + 64);
  [v7 resultWithCompletion:v29];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

id __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_2;
  v8[3] = &unk_1E73BCFB8;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 runPromiseBlock:v8];

  return v6;
}

void __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_3;
    v9[3] = &unk_1E73BCF90;
    v10 = v3;
    [v5 performWithTaskInfo:v6 completionHandler:v9];
  }

  else
  {
    v7 = [v5 performWithTaskInfo:v6];
    v8 = [[AMSOptional alloc] initWithValue:v7];
    (*(v3 + 2))(v3, v8, 0);
  }
}

void __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  (*(v2 + 16))(v2, v4, 0);
}

id __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v28 + 1) + 8 * i) value];
        if (![*(a1 + 32) actionType] && objc_msgSend(v12, "actionType"))
        {
          v13 = v12;

          v7 = v13;
        }

        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        if (v15)
        {
          v16 = v15;
          v17 = *(v14 + 40);
          *(v14 + 40) = v16;
        }

        else
        {
          v18 = [v12 authenticateResult];
          v19 = *(*(a1 + 40) + 8);
          v17 = *(v19 + 40);
          *(v19 + 40) = v18;
        }

        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        if (v21)
        {
          v22 = v21;
          v23 = *(v20 + 40);
          *(v20 + 40) = v22;
        }

        else
        {
          v24 = [v12 dialogResult];
          v25 = *(*(a1 + 48) + 8);
          v23 = *(v25 + 40);
          *(v25 + 40) = v24;
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v26 = [AMSPromise promiseWithResult:v7];

  return v26;
}

void __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [*(a1 + 32) pingURLs];
    v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v2)
    {
      v3 = v2;
      v13 = *v15;
      do
      {
        v4 = 0;
        do
        {
          if (*v15 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v14 + 1) + 8 * v4);
          v6 = *(a1 + 40);
          v7 = +[AMSURLSession defaultSession];
          v8 = [*(a1 + 48) properties];
          v9 = [v8 account];
          v10 = [*(a1 + 48) properties];
          v11 = [v10 bag];
          [v6 _pingURL:v5 session:v7 account:v9 bag:v11];

          ++v4;
        }

        while (v3 != v4);
        v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v3);
    }
  }
}

void __90__AMSURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(a1 + 32) || v5 && [v5 actionType])
  {
    goto LABEL_2;
  }

  v9 = [*(a1 + 40) serverError];

  if (!v9)
  {
    goto LABEL_2;
  }

  v10 = [*(a1 + 48) session];
  v11 = [v10 delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = [*(a1 + 48) session];
  v14 = [v13 delegate];
  v15 = objc_opt_respondsToSelector();

  if (v12)
  {
    v16 = [*(a1 + 48) session];
    v17 = [v16 delegate];
    v18 = [*(a1 + 48) session];
    v19 = *(a1 + 56);
    v20 = [*(a1 + 40) serverError];
    LOBYTE(v19) = [v17 AMSURLSession:v18 task:v19 shouldFailWithServerError:v20];

    if ((v19 & 1) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_15;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = +[AMSLogConfig sharedConfig];
  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = objc_opt_class();
    v24 = *(a1 + 64);
    v25 = v23;
    v26 = [v24 properties];
    v27 = [v26 logUUID];
    v34 = 138543618;
    v35 = v23;
    v36 = 2114;
    v37 = v27;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for shouldFailWithServerError", &v34, 0x16u);
  }

  v28 = [*(a1 + 48) session];
  v29 = [v28 delegate];
  v30 = [*(a1 + 48) session];
  v31 = [*(a1 + 40) serverError];
  v32 = [v29 AMSURLSession:v30 shouldFailWithServerError:v31];

  if (v32)
  {
LABEL_15:
    v33 = [*(a1 + 40) serverError];

    v7 = v33;
  }

LABEL_2:
  if (v7)
  {
    v8 = [AMSURLAction actionWithError:v7];

    v5 = v8;
  }

  [v5 setAuthenticateResult:*(*(*(a1 + 80) + 8) + 40)];
  [v5 setDialogResult:*(*(*(a1 + 88) + 8) + 40)];
  (*(*(a1 + 72) + 16))();
}

- (void)handleResponse:(id)a3 task:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(AMSURLProtocolHandler *)self _handleResponse:a3 task:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AMSURLProtocolHandler_handleResponse_task_completionHandler___block_invoke;
  v11[3] = &unk_1E73B7FF8;
  v12 = v8;
  v10 = v8;
  [v9 addFinishBlock:v11];
}

void __63__AMSURLProtocolHandler_handleResponse_task_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  (*(v2 + 16))(v2, v3);
}

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a4;
  v43 = a6;
  v11 = a3;
  v12 = [AMSURLTaskInfo taskInfoForTask:v10];
  v13 = [v11 mutableCopy];

  v14 = [v12 properties];
  v15 = [v14 copy];

  v16 = +[AMSBinaryPromise promiseWithSuccess];
  v41 = v10;
  v42 = v12;
  if (v7)
  {
    v17 = [v10 response];
    if (v17)
    {
      [v10 response];
    }

    else
    {
      [v12 originalResponse];
    }
    v18 = ;

    v19 = [(AMSURLProtocolHandler *)self _setResponseCookiesFromResponse:v18 taskInfo:v12];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke;
    v70[3] = &unk_1E73B6C00;
    v70[4] = self;
    v71 = v10;
    v72 = v13;
    v20 = [v19 continueWithBlock:v70];

    v16 = v20;
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_93;
  v66[3] = &unk_1E73BB620;
  v21 = v13;
  v67 = v21;
  v22 = v15;
  v68 = v22;
  v69 = self;
  v23 = [v16 thenWithBlock:v66];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_97;
  v63[3] = &unk_1E73B3390;
  v24 = v22;
  v64 = v24;
  v25 = v21;
  v65 = v25;
  v26 = [v23 thenWithBlock:v63];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_98;
  v59[3] = &unk_1E73BB620;
  v27 = v24;
  v60 = v27;
  v28 = v25;
  v61 = v28;
  v62 = self;
  v29 = [v26 thenWithBlock:v59];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_101;
  v55[3] = &unk_1E73BB620;
  v30 = v27;
  v56 = v30;
  v31 = v28;
  v57 = v31;
  v58 = self;
  v32 = [v29 thenWithBlock:v55];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_103;
  v51[3] = &unk_1E73BB620;
  v33 = v31;
  v52 = v33;
  v34 = v30;
  v53 = v34;
  v54 = self;
  v35 = [v32 thenWithBlock:v51];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_105;
  v47[3] = &unk_1E73BB620;
  v36 = v33;
  v48 = v36;
  v49 = v34;
  v50 = self;
  v40 = v34;
  v37 = [v35 thenWithBlock:v47];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_108;
  v44[3] = &unk_1E73B43F0;
  v45 = v36;
  v46 = v43;
  v38 = v36;
  v39 = v43;
  [v37 addSuccessBlock:v44];
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v6)
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
        v3 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v13 = AMSLogableError(v5);
      *buf = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to set response cookies. Continuing with request reconfiguration. error = %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v3;
      }
    }
  }

  v14 = [*(a1 + 40) originalRequest];
  v15 = [v14 HTTPBody];

  if (v15)
  {
    v16 = [v14 HTTPBody];
    [*(a1 + 48) setHTTPBody:v16];
  }

  v17 = [v14 HTTPMethod];

  if (v17)
  {
    v18 = [v14 HTTPMethod];
    [*(a1 + 48) setHTTPMethod:v18];
  }

  v19 = [v14 valueForHTTPHeaderField:@"Content-Type"];
  [*(a1 + 48) setValue:v19 forHTTPHeaderField:@"Content-Type"];
  v20 = +[AMSBinaryPromise promiseWithSuccess];

  return v20;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_93(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [*(a1 + 40) clientInfo];
  v5 = [*(a1 + 40) bag];
  [v2 ams_addCookiesForAccount:v3 clientInfo:v4 bag:v5];

  if (([*(a1 + 40) excludeIdentifierHeadersForAccount] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) account];
    [v6 ams_addIdentifierHeadersForAccount:v7];
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) account];
  v10 = [*(a1 + 40) clientInfo];
  v11 = [v10 accountMediaType];
  v12 = [*(a1 + 40) bag];
  v13 = [AMSURLRequestDecoration addStoreFrontHeaderToRequest:v8 forAccount:v9 mediaType:v11 bag:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2;
  v16[3] = &unk_1E73B58D0;
  v16[4] = *(a1 + 48);
  v14 = [v13 catchWithBlock:v16];

  return v14;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add storefront header. Continuing with request reconfiguration. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_97(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  if ([v2 ams_isLocalAccount] & 1) != 0 || (objc_msgSend(v2, "ams_isEphemeralAccount"))
  {
    v3 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v3 = [*(a1 + 40) ams_addAuthKitHeaders];
  }

  v4 = v3;

  return v4;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_98(uint64_t a1)
{
  if ([*(a1 + 32) reversePushType] == 2)
  {
    v2 = [&unk_1F0779B08 stringValue];
    [*(a1 + 40) setValue:v2 forHTTPHeaderField:@"x-apple-aps-delivery-type"];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) purchaseInfo];
  v5 = [v4 buyParams];
  v6 = [*(a1 + 32) bag];
  v7 = +[AMSURLRequestDecoration addAbsintheHeadersToRequest:buyParams:bag:shouldUseRemoteSigningIfAvailable:](AMSURLRequestDecoration, "addAbsintheHeadersToRequest:buyParams:bag:shouldUseRemoteSigningIfAvailable:", v3, v5, v6, [*(a1 + 32) remoteSecuritySigningEnabled]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_100;
  v10[3] = &unk_1E73B58D0;
  v10[4] = *(a1 + 48);
  v8 = [v7 catchWithBlock:v10];

  return v8;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_100(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Absinthe headers. Continuing with request reconfiguration. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_101(uint64_t a1)
{
  if ([*(a1 + 32) mescalType])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) mescalType];
    v4 = [*(a1 + 32) bag];
    v5 = [*(a1 + 32) logUUID];
    v6 = [AMSURLRequestDecoration addMescalHeaderToRequest:v2 type:v3 bag:v4 logKey:v5];
  }

  else
  {
    v6 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_102;
  v9[3] = &unk_1E73B58D0;
  v9[4] = *(a1 + 48);
  v7 = [v6 catchWithBlock:v9];

  return v7;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_102(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Mescal headers. Continuing with request reconfiguration. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_103(uint64_t a1)
{
  [*(a1 + 32) ams_removeAnisetteHeaders];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [*(a1 + 40) anisetteType];
  v5 = [*(a1 + 40) bag];
  v6 = [AMSURLRequestDecoration addAnisetteHeadersToRequest:v2 account:v3 type:v4 bag:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_104;
  v9[3] = &unk_1E73B58D0;
  v9[4] = *(a1 + 48);
  v7 = [v6 catchWithBlock:v9];

  return v7;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_104(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Anisette headers. Continuing with request reconfiguration. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_105(id *a1)
{
  v2 = [a1[4] valueForHTTPHeaderField:@"X-Apple-FPDIRetryCount"];
  v15 = v2;
  if (v2)
  {
    v3 = [v2 integerValue] + 1;
  }

  else
  {
    v3 = 1;
  }

  [a1[4] ams_removeFPDIHeaders];
  v4 = a1[4];
  v5 = [a1[5] purchaseInfo];
  v6 = [v5 buyParams];
  v7 = [a1[5] bag];
  v8 = [a1[6] fairPlayDeviceIdentity];
  v9 = [AMSFairPlayDeviceIdentityNetworkProvider alloc];
  v10 = +[AMSURLSession minimalSession];
  v11 = [(AMSFairPlayDeviceIdentityNetworkProvider *)v9 initWithSession:v10];
  v12 = [AMSURLRequestDecoration addFPDIHeadersToRequest:v4 buyParams:v6 bag:v7 retryCount:v3 fairPlayDeviceIdentity:v8 fpdiNetworkProvider:v11];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_107;
  v17[3] = &unk_1E73B58D0;
  v17[4] = a1[6];
  v13 = [v12 catchWithBlock:v17];

  return v13;
}

id __87__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2_107(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add FPDI headers. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(AMSMutablePromise);
  v13 = [(AMSPromise *)v12 completionHandlerAdapter];
  [(AMSURLProtocolHandler *)self reconfigureNewRequest:v10 originalTask:v11 redirect:v7 completionHandler:v13];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_error___block_invoke;
  v17[3] = &unk_1E73B34E8;
  v18 = v10;
  v14 = v10;
  v15 = [(AMSMutablePromise *)v12 thenWithBlock:v17];
  v16 = [v15 resultWithError:a6];
}

id __75__AMSURLProtocolHandler_reconfigureNewRequest_originalTask_redirect_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v9 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v5 = [v3 allHTTPHeaderFields];
    [*(a1 + 32) setAllHTTPHeaderFields:v5];

    v6 = [v4 HTTPMethod];
    [*(a1 + 32) setHTTPMethod:v6];

    [*(a1 + 32) setHTTPShouldHandleCookies:{objc_msgSend(v4, "HTTPShouldHandleCookies")}];
    [*(a1 + 32) setHTTPShouldUsePipelining:{objc_msgSend(v4, "HTTPShouldUsePipelining")}];
    v7 = [v4 URL];
    [*(a1 + 32) setURL:v7];

    v8 = [v4 HTTPBodyStream];
    if (v8)
    {
      [*(a1 + 32) setHTTPBodyStream:v8];
    }

    else
    {
      v10 = [v4 HTTPBody];
      [*(a1 + 32) setHTTPBody:v10];
    }

    v9 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  return v9;
}

- (void)reportMetricsForContext:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLProtocolHandler *)self metricsHandler];
  [v5 reportMetricsForContext:v4];
}

+ (id)reversePushSamplingPercentageForTask:(id)a3
{
  v4 = [AMSURLTaskInfo taskInfoForTask:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 properties];
    v7 = [v6 bag];

    if (v7)
    {
      v8 = objc_alloc_init(AMSMutablePromise);
      v9 = [v5 properties];
      v10 = [v9 bag];
      v11 = [v10 doubleForKey:@"aps-sampling-percentage"];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__AMSURLProtocolHandler_reversePushSamplingPercentageForTask___block_invoke;
      v18[3] = &unk_1E73BD0A8;
      v19 = v5;
      v21 = a1;
      v12 = v8;
      v20 = v12;
      [v11 valueWithCompletion:v18];

      v13 = v20;
      v14 = v12;

      goto LABEL_7;
    }

    v15 = @"Cannot determine reverse push sampling percentage for a nil bag.";
  }

  else
  {
    v15 = @"Cannot determine reverse push sampling percentage for a nil task.";
  }

  v16 = AMSError(2, @"Task Missing", v15, 0);
  v14 = [AMSPromise promiseWithError:v16];

LABEL_7:

  return v14;
}

void __62__AMSURLProtocolHandler_reversePushSamplingPercentageForTask___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  v13 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [*(a1 + 32) properties];
    v16 = [v15 logUUID];
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = v18;
    if (v16)
    {
      v22 = [*(a1 + 32) properties];
      v4 = [v22 logUUID];
      [v17 stringWithFormat:@"%@: [%@] ", v19, v4];
    }

    else
    {
      [v17 stringWithFormat:@"%@: ", v18];
    }
    v20 = ;
    v21 = AMSHashIfNeeded(v8);
    *buf = 138543618;
    v24 = v20;
    v25 = 2114;
    v26 = v21;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Failed to fetch the APS sampling percentage from the bag. error = %{public}@", buf, 0x16u);
    if (v16)
    {

      v20 = v22;
    }
  }

  if (!v8)
  {
LABEL_2:
    v9 = *(a1 + 40);
    v10 = objc_opt_respondsToSelector();
    v11 = 0.0;
    if (v10)
    {
      [v7 doubleValue];
    }

    v12 = [AMSDouble doubleWithDouble:v11];
    [v9 finishWithResult:v12];
  }

  else
  {
    [*(a1 + 40) finishWithError:v8];
  }
}

- (id)_handleResponse:(id)a3 task:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = a4;
  v7 = [AMSURLTaskInfo taskInfoForTask:?];
  v51 = [v6 ams_valueForHTTPHeaderField:@"X-Apple-Application-Site"];
  v8 = [v6 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
  if ((os_variant_has_internal_content() & 1) == 0)
  {

    v8 = @"<private>";
  }

  v50 = v8;
  v9 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v7 properties];
    v14 = [v13 logUUID];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "ams_statusCode")}];
    *buf = 138544386;
    v75 = v11;
    v76 = 2114;
    v77 = v14;
    v78 = 2114;
    v79 = v15;
    v80 = 2114;
    v81 = v50;
    v82 = 2114;
    v83 = v51;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] StatusCode: %{public}@; %{public}@; Environment: %{public}@", buf, 0x34u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v6;
    v17 = [v7 properties];
    v18 = [(AMSURLProtocolHandler *)self session];
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = [v17 logUUID];
        *buf = 138543618;
        v75 = v21;
        v76 = 2114;
        v77 = v22;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL session is unexpectedly nil for Fraud Report, using default session", buf, 0x16u);
      }

      v18 = +[AMSURLSession defaultSession];
    }

    v23 = [v17 account];
    v24 = [v17 bag];
    v25 = [v17 userInfo];
    v26 = AMSFraudReportHandleResponseWithDetachedHandling(v18, v16, v23, v24, v25, self->_fraudReportStateStorageFactoryBlock, self->_fraudReportRefreshScoreBlock);
  }

  v48 = [(AMSURLProtocolHandler *)self _setResponseCookiesFromResponse:v6 taskInfo:v7];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke;
  v71[3] = &unk_1E73B6C00;
  v71[4] = self;
  v27 = v7;
  v72 = v27;
  v28 = v6;
  v73 = v28;
  v47 = [v48 continueWithBlock:v71];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_138;
  v69[3] = &unk_1E73BD0D0;
  v69[4] = self;
  v29 = v27;
  v70 = v29;
  v30 = [v47 catchWithBlock:v69];
  v31 = [v30 promiseAdapter];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_139;
  v65[3] = &unk_1E73BD0F8;
  v32 = v28;
  v66 = v32;
  v67 = self;
  v33 = v29;
  v68 = v33;
  v34 = [v31 thenWithBlock:v65];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_147;
  v61[3] = &unk_1E73BD168;
  v35 = v33;
  v62 = v35;
  v36 = v32;
  v63 = v36;
  v64 = self;
  v37 = [v34 continueWithBlock:v61];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_156;
  v56[3] = &unk_1E73B9BA8;
  v38 = v36;
  v57 = v38;
  v39 = v49;
  v58 = v39;
  v40 = v35;
  v59 = v40;
  v60 = self;
  v41 = [v37 continueWithBlock:v56];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_159;
  v52[3] = &unk_1E73B9BA8;
  v52[4] = self;
  v53 = v38;
  v54 = v40;
  v55 = v39;
  v42 = v39;
  v43 = v40;
  v44 = v38;
  v45 = [v41 continueWithBlock:v52];

  return v45;
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 40) properties];
      v9 = [v8 logUUID];
      v10 = AMSLogableError(v4);
      *buf = 138543874;
      v42 = v7;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to set response cookies on account. Continuing with request. error = %{public}@", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 48) ams_valueForHTTPHeaderField:@"X-Set-Apple-Store-Front"];
  if (![v11 length] || (objc_msgSend(*(a1 + 40), "properties"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "shouldSetStorefrontFromResponse"), v12, !v13))
  {
    v24 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_28;
  }

  v14 = [*(a1 + 40) properties];
  v15 = [v14 account];

  if (!v15)
  {
    v25 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = [v28 properties];
      v31 = [v30 logUUID];
      *buf = 138543874;
      v42 = v27;
      v43 = 2114;
      v44 = v31;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Set store front received (%{public}@) with no account to set it on", buf, 0x20u);
    }

    v32 = AMSError(0, @"Failed to save account with updated storefront", @"No account was provided", 0);
    v33 = [AMSBinaryPromise promiseWithError:v32];
    goto LABEL_25;
  }

  v16 = [*(a1 + 40) properties];
  v17 = [v16 clientInfo];
  v18 = [v17 accountMediaType];
  [v15 ams_setStorefront:v11 forMediaType:v18];

  if ([v15 ams_isEphemeralAccount])
  {
    v19 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = [*(a1 + 40) properties];
      v23 = [v22 logUUID];
      *buf = 138543874;
      v42 = v21;
      v43 = 2114;
      v44 = v23;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ^Ephemeral Account^ skipping save, set StoreFront: %{public}@", buf, 0x20u);
    }

    v24 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_27;
  }

  v34 = MEMORY[0x1E6959A48];
  v35 = [*(a1 + 40) properties];
  v36 = [v35 clientInfo];
  v32 = [v34 ams_sharedAccountStoreForProcessInfo:v36];

  if (!v32)
  {
    v33 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_25:
    v24 = v33;
    goto LABEL_26;
  }

  v24 = [v32 ams_saveAccount:v15 verifyCredentials:0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_130;
  v39[3] = &unk_1E73B32F0;
  v37 = *(a1 + 40);
  v39[4] = *(a1 + 32);
  v40 = v37;
  [v24 addErrorBlock:v39];

LABEL_26:
LABEL_27:

LABEL_28:

  return v24;
}

void __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_130(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 properties];
    v10 = [v9 logUUID];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set the storefront. error = %{public}@", &v11, 0x20u);
  }
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_138(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) properties];
    v6 = [v5 logUUID];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to save account with updated storefront. Response handling will continue.", &v9, 0x16u);
  }

  v7 = +[AMSBinaryPromise promiseWithSuccess];

  return v7;
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_139(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"X-Apple-Partner"];
  if (v2)
  {
    v3 = +[AMSProcessInfo currentProcess];
    [v3 setPartnerHeader:v2];
  }

  v4 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"x-apple-aps-delivery-type"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"x-apple-aps-delivery-type"];
    v6 = [v5 integerValue];

    if (v6 >= 1)
    {
      v7 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = [*(a1 + 48) properties];
        v11 = [v10 logUUID];
        v18 = 138543874;
        v19 = v9;
        v20 = 2114;
        v21 = v11;
        v22 = 2048;
        v23 = v6;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reverse push received response header %ld", &v18, 0x20u);
      }

      if (v6 == 1001)
      {
        v12 = [*(a1 + 48) properties];
        [v12 setReversePushType:2];

        v13 = +[AMSURLAction retryAction];
        [v13 setReason:@"reverse push"];
        [v13 setRetryIdentifier:0x1F073A198];
        if (v13 && [v13 actionType])
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_15:
  if ([*(a1 + 32) ams_statusCode] == 401)
  {
    v14 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"X-Apple-Allow-Auth-Types"];

    if (v14)
    {
      v15 = [AMSFinanceAuthenticateResponse performAuthFromResponse:*(a1 + 32) taskInfo:*(a1 + 48)];
      goto LABEL_19;
    }
  }

LABEL_18:
  v16 = [[AMSOptional alloc] initWithValue:v13];
  v15 = [AMSPromise promiseWithResult:v16];

LABEL_19:

  return v15;
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 value];
  v7 = v6;
  if (v5)
  {
    v8 = [AMSPromise promiseWithError:v5];
  }

  else if (v6 && [v6 actionType])
  {
    v9 = [[AMSOptional alloc] initWithValue:v7];
    v8 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    if (+[AMSDefaults enableRemoteSecuritySigning](AMSDefaults, "enableRemoteSecuritySigning") && ([*(a1 + 32) properties], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "remoteSecuritySigningEnabled"), v10, v11))
    {
      v12 = +[AMSSigningSecurityService sharedService];
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) properties];
      v15 = [v14 bag];
      v16 = [(AMSOptional *)v12 handleResponse:v13 bag:v15];
      v8 = [v16 continueWithBlock:&__block_literal_global_145];
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) properties];
      v19 = [v18 bag];
      v20 = [AMSAbsinthe handleResponse:v17 bag:v19];

      v12 = [[AMSOptional alloc] initWithValue:v20];
      v8 = [AMSPromise promiseWithResult:v12];
      v7 = v20;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_3;
    v22[3] = &unk_1E73BD140;
    v22[4] = *(a1 + 48);
    [v8 addFinishBlock:v22];
  }

  return v8;
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [v4 reason];

    if (!v6)
    {
      [v4 setReason:@"daemon security"];
    }
  }

  v7 = [[AMSOptional alloc] initWithValue:v4];
  v8 = [AMSPromise promiseWithResult:v7];

  return v8;
}

void __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a2 value];
  if (v2)
  {
    v3 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = AMSLogKey();
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Absinthe action generate.", &v8, 0x16u);
    }
  }
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_156(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 value];
  v7 = v6;
  if (v5)
  {
    v8 = [AMSPromise promiseWithError:v5];
  }

  else if (v6 && [v6 actionType])
  {
    v9 = [[AMSOptional alloc] initWithValue:v7];
    v8 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v18 = *(a1 + 32);
    v17 = [*(a1 + 40) originalRequest];
    v10 = [*(a1 + 48) properties];
    v11 = [v10 purchaseInfo];
    v12 = [v11 buyParams];
    v13 = [*(a1 + 48) properties];
    v14 = [v13 bag];
    v15 = [*(a1 + 56) fairPlayDeviceIdentity];
    v8 = [AMSFairPlayDeviceIdentityResponseHandler handleResponse:v18 request:v17 buyParams:v12 bag:v14 fairPlayDeviceIdentity:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_2_158;
    v19[3] = &unk_1E73BD140;
    v19[4] = *(a1 + 56);
    [v8 addFinishBlock:v19];
  }

  return v8;
}

void __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_2_158(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a2 value];
  if (v2)
  {
    v3 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = AMSLogKey();
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] FPDI action generate.", &v8, 0x16u);
    }
  }
}

id __46__AMSURLProtocolHandler__handleResponse_task___block_invoke_159(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 40);
      v8 = [v5 value];
      v9 = v8;
      if ((!v8 || ![v8 actionType]) && (objc_msgSend(*(a1 + 48), "properties"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "anisetteType"), objc_msgSend(*(a1 + 48), "properties"), v44 = v6, v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bag"), v43 = v5, v13 = v7, v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "properties"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "account"), v16 = objc_claimAutoreleasedReturnValue(), +[AMSAnisette handleResponse:type:bag:account:](AMSAnisette, "handleResponse:type:bag:account:", v13, v11, v14, v16), v17 = objc_claimAutoreleasedReturnValue(), v9, v16, v15, v14, v7 = v13, v5 = v43, v12, v6 = v44, v10, (v9 = v17) == 0) || !objc_msgSend(v9, "actionType"))
      {
        v45 = 0;
        v18 = +[AMSURLSession sharedAuthKitSession];
        v19 = [*(a1 + 56) currentRequest];
        [v18 handleResponse:v7 forRequest:v19 shouldRetry:&v45];

        if (v45 == 1)
        {
          v20 = +[AMSURLAction retryAction];

          [v20 setRetryIdentifier:0x1F073A0F8];
          v21 = +[AMSLogConfig sharedURLLoadingConfig];
          if (!v21)
          {
            v21 = +[AMSLogConfig sharedConfig];
          }

          v22 = [v21 OSLogObject];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            v24 = [*(a1 + 48) properties];
            v25 = [v24 logUUID];
            *buf = 138543618;
            v47 = v23;
            v48 = 2114;
            v49 = v25;
            _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrying for AuthKit anisette", buf, 0x16u);
          }

          v9 = v20;
        }
      }

      v26 = [[AMSOptional alloc] initWithValue:v9];
      v27 = [AMSPromise promiseWithResult:v26];

      if (!v9 || ![v9 actionType])
      {
        v28 = [*(a1 + 48) properties];
        v29 = [v28 account];
        v30 = [v28 bag];
        v31 = [v28 userInfo];
        v32 = AMSFraudReportHandleResponse(v7, v29, v30, v31, *(*(a1 + 32) + 48), *(*(a1 + 32) + 40));

        v27 = v32;
      }
    }

    else
    {
      v27 = [AMSPromise promiseWithResult:v5];
    }
  }

  else
  {
    v33 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v33)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      v36 = v35;
      v37 = AMSLogKey();
      v38 = AMSLogableError(v6);
      *buf = 138543874;
      v47 = v35;
      v48 = 2114;
      v49 = v37;
      v50 = 2114;
      v51 = v38;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Error occurred when handling response. error = %{public}@", buf, 0x20u);
    }

    v39 = [AMSOptional alloc];
    v40 = [AMSURLAction actionWithError:v6];
    v41 = [(AMSOptional *)v39 initWithValue:v40];
    v27 = [AMSPromise promiseWithResult:v41];
  }

  return v27;
}

- (void)_pingURL:(id)a3 session:(id)a4 account:(id)a5 bag:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 URLForKey:@"metrics/metricsUrl"];
    v16 = [v15 valuePromise];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke;
    v29[3] = &unk_1E73BB150;
    v29[4] = self;
    v30 = v10;
    v31 = v14;
    v32 = v12;
    v17 = [v16 continueWithBlock:v29];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke_2;
    v27[3] = &unk_1E73B45F0;
    v27[4] = self;
    v28 = v11;
    v18 = [v17 thenWithBlock:v27];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke_174;
    v26[3] = &unk_1E73B5BD8;
    v26[4] = self;
    [v18 addFinishBlock:v26];
  }

  else
  {
    v19 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        self = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, self];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping ping-url as bag was not provided.", buf, 0xCu);
      if (v21)
      {

        v25 = self;
      }
    }
  }
}

id __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        a1 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, a1];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v32 = AMSLogableError(v6);
      *buf = 138543618;
      v37 = v13;
      v38 = 2114;
      v39 = v32;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@Response ping-url failed to fetch metrics url string. error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v31 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = [v14 host];
    v16 = [v5 host];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v14 resolvingAgainstBaseURL:0];
      v19 = [v14 path];
      v20 = [v5 path];
      v21 = [v18 queryItems];
      v22 = [v21 indexOfObjectPassingTest:&__block_literal_global_165];
      if ([v19 hasPrefix:v20] && v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSince1970];
        v25 = v24;

        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", (v25 * 1000.0)];
        v26 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"eventTime" value:v34];
        v35 = v19;
        v27 = [v21 mutableCopy];
        [v27 replaceObjectAtIndex:v22 withObject:v26];
        v28 = [v27 copy];
        [v18 setQueryItems:v28];

        v29 = [v18 URL];

        v19 = v35;
        v14 = v29;
      }
    }

    v30 = [[AMSURLRequestEncoder alloc] initWithBag:*(a1 + 48)];
    [(AMSURLRequestEncoder *)v30 setUrlKnownToBeTrusted:1];
    [(AMSURLRequestEncoder *)v30 setAccount:*(a1 + 56)];
    v31 = [(AMSURLRequestEncoder *)v30 requestWithMethod:2 URL:v14 parameters:0];
  }

  return v31;
}

uint64_t __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke_162(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"eventTime"];

  return v3;
}

id __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 properties];
    v8 = [v7 logUUID];
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v17 = [v4 properties];
      v2 = [v17 logUUID];
      [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = [v4 URL];
    v14 = AMSLogableURL(v13);
    *buf = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@Pinging %{public}@.", buf, 0x16u);

    if (v8)
    {

      v12 = v17;
    }
  }

  [v4 setTimeoutInterval:20.0];
  v15 = [*(a1 + 40) dataTaskPromiseWithRequest:v4];

  return v15;
}

void __54__AMSURLProtocolHandler__pingURL_session_account_bag___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedURLLoadingConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 logUUID];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        a1 = [v5 logUUID];
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@Ping-url succeeded.", buf, 0xCu);
      if (v10)
      {

        v14 = a1;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = [0 logUUID];
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        a1 = [0 logUUID];
        [v16 stringWithFormat:@"%@: [%@] ", v18, a1];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      v20 = AMSLogableError(v6);
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Ping-url failed. %{public}@", buf, 0x16u);
      if (v15)
      {

        v19 = a1;
      }
    }
  }
}

- (id)_setResponseCookiesFromResponse:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 properties];
  if ([v8 shouldSetCookiesFromResponse])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = MEMORY[0x1E6959A48];
      v11 = [v7 properties];
      v12 = [v11 clientInfo];
      v13 = [v10 ams_sharedAccountStoreForProcessInfo:v12];

      v14 = [v7 properties];
      v15 = [v14 account];
      v16 = [v13 ams_addCookiesForResponse:v6 account:v15];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__AMSURLProtocolHandler__setResponseCookiesFromResponse_taskInfo___block_invoke;
      v22[3] = &unk_1E73B32F0;
      v22[4] = self;
      v23 = v7;
      [v16 addErrorBlock:v22];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = [v7 properties];
  if ([v17 shouldSetCookiesFromResponse])
  {
  }

  else
  {
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if (v18)
    {
      v19 = [v7 properties];
      v20 = [v19 account];
      v16 = [v20 ams_asynchronouslyAddCookiesForResponse:v6];

      goto LABEL_10;
    }
  }

  v16 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_10:

  return v16;
}

void __66__AMSURLProtocolHandler__setResponseCookiesFromResponse_taskInfo___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 40) properties];
    v8 = [v7 logUUID];
    v9 = AMSLogableError(v3);
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to add cookies for response. error = %{public}@", &v10, 0x20u);
  }
}

- (id)shouldEnableReversePushForTask:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [AMSURLTaskInfo taskInfoForTask:v3];
  v5 = [v4 properties];
  v6 = [v5 reversePushType];

  v7 = [v4 properties];
  v8 = [v7 purchaseInfo];
  v9 = v8 != 0;

  v10 = [v4 properties];
  v11 = [v10 bag];

  v12 = [v4 properties];
  v13 = [v12 logUUID];

  v14 = [v3 currentRequest];
  v15 = [v14 URL];
  v16 = [v15 absoluteString];

  if (+[AMSDefaults QAMode])
  {
    if (v8)
    {
      v17 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      if (v13)
      {
        [v19 stringWithFormat:@"%@: [%@] ", v20, v13];
      }

      else
      {
        [v19 stringWithFormat:@"%@: ", v20, v44];
      }
      v32 = ;
      *buf = 138543362;
      v54 = v32;
      v33 = "%{public}@Reverse push disabled (QAMode)";
      goto LABEL_36;
    }
  }

  else if ((v6 - 1) > 1)
  {
    if (v6 == 3)
    {
      v23 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = objc_opt_class();
        if (v13)
        {
          [v25 stringWithFormat:@"%@: [%@] ", v26, v13];
        }

        else
        {
          [v25 stringWithFormat:@"%@: ", v26, v44];
        }
        v39 = ;
        *buf = 138543362;
        v54 = v39;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Reverse push explicitly enabled by caller", buf, 0xCu);
      }

      v36 = 1;
      goto LABEL_40;
    }

    if (+[AMSDefaults reversePushEnabled]!= 2)
    {
      if (v16)
      {
        if (v11)
        {
          if (+[AMSDefaults reversePushEnabled]== 1)
          {
            v29 = [AMSDouble doubleWithDouble:1.0];
            v30 = [AMSPromise promiseWithResult:v29];

            v31 = self;
          }

          else
          {
            v31 = self;
            v30 = [objc_opt_class() reversePushSamplingPercentageForTask:v3];
          }

          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __56__AMSURLProtocolHandler_shouldEnableReversePushForTask___block_invoke;
          v46[3] = &unk_1E73BD1D8;
          v52 = v9;
          v47 = v4;
          v48 = v31;
          v49 = v11;
          v50 = v13;
          v51 = v16;
          v37 = [v30 thenWithBlock:v46];

          goto LABEL_41;
        }

        if (!v8)
        {
          goto LABEL_39;
        }

        v17 = +[AMSLogConfig sharedURLLoadingConfig];
        if (!v17)
        {
          v17 = +[AMSLogConfig sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v42 = MEMORY[0x1E696AEC0];
        v43 = objc_opt_class();
        if (v13)
        {
          [v42 stringWithFormat:@"%@: [%@] ", v43, v13];
        }

        else
        {
          [v42 stringWithFormat:@"%@: ", v43, v44];
        }
        v32 = ;
        *buf = 138543362;
        v54 = v32;
        v33 = "%{public}@Reverse push disabled because we the bag is nil.";
      }

      else
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v17 = +[AMSLogConfig sharedURLLoadingConfig];
        if (!v17)
        {
          v17 = +[AMSLogConfig sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v40 = MEMORY[0x1E696AEC0];
        v41 = objc_opt_class();
        if (v13)
        {
          [v40 stringWithFormat:@"%@: [%@] ", v41, v13];
        }

        else
        {
          [v40 stringWithFormat:@"%@: ", v41, v44];
        }
        v32 = ;
        *buf = 138543362;
        v54 = v32;
        v33 = "%{public}@Reverse push disabled because we can’t find a URL";
      }

      v34 = v18;
      v35 = OS_LOG_TYPE_ERROR;
      goto LABEL_37;
    }

    if (v8)
    {
      v17 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      if (v13)
      {
        [v27 stringWithFormat:@"%@: [%@] ", v28, v13];
      }

      else
      {
        [v27 stringWithFormat:@"%@: ", v28, v44];
      }
      v32 = ;
      *buf = 138543362;
      v54 = v32;
      v33 = "%{public}@Reverse push disabled (AMSDefaults)";
      v34 = v18;
      v35 = OS_LOG_TYPE_DEBUG;
      goto LABEL_37;
    }
  }

  else if (v8)
  {
    v17 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    if (v13)
    {
      [v21 stringWithFormat:@"%@: [%@] ", v22, v13];
    }

    else
    {
      [v21 stringWithFormat:@"%@: ", v22, v44];
    }
    v32 = ;
    *buf = 138543362;
    v54 = v32;
    v33 = "%{public}@Reverse push disabled by caller";
LABEL_36:
    v34 = v18;
    v35 = OS_LOG_TYPE_DEFAULT;
LABEL_37:
    _os_log_impl(&dword_192869000, v34, v35, v33, buf, 0xCu);

LABEL_38:
  }

LABEL_39:
  v36 = 0;
LABEL_40:
  v30 = [AMSBoolean BOOLeanWithBool:v36];
  v37 = [AMSPromise promiseWithResult:v30];
LABEL_41:

  return v37;
}

id __56__AMSURLProtocolHandler_shouldEnableReversePushForTask___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  [a2 value];
  v5 = v4;
  +[AMSRandomNumberGenerator normalizedRandomDouble];
  if (v6 <= 0.0 || v6 > v5)
  {
    if (*(a1 + 72) == 1)
    {
      v8 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) properties];
        v11 = [v10 logUUID];
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = v13;
        if (v11)
        {
          a1 = [*(a1 + 32) properties];
          v2 = [a1 logUUID];
          [v12 stringWithFormat:@"%@: [%@] ", v14, v2];
        }

        else
        {
          [v12 stringWithFormat:@"%@: ", v13];
        }
        v15 = ;
        *buf = 138543362;
        v28 = v15;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Reverse push not sampled", buf, 0xCu);
        if (v11)
        {

          v15 = a1;
        }
      }
    }

    v16 = [AMSBoolean BOOLeanWithBool:0];
    v20 = [AMSPromise promiseWithResult:v16];
  }

  else
  {
    v16 = [*(a1 + 48) arrayForKey:@"aps-enabled-patterns"];
    v17 = [v16 valuePromise];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__AMSURLProtocolHandler_shouldEnableReversePushForTask___block_invoke_177;
    v22[3] = &unk_1E73BD1B0;
    v26 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    v23 = v18;
    v24 = v19;
    v25 = *(a1 + 64);
    v20 = [v17 thenWithBlock:v22];
  }

  return v20;
}

id __56__AMSURLProtocolHandler_shouldEnableReversePushForTask___block_invoke_177(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__AMSURLProtocolHandler_shouldEnableReversePushForTask___block_invoke_178;
    v26[3] = &unk_1E73B2E28;
    v27 = *(a1 + 48);
    v4 = [v3 ams_concurrentAnyWithTest:v26];
    if (v4)
    {
      v5 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      if (v8)
      {
        [v7 stringWithFormat:@"%@: [%@] ", v9, *(a1 + 32)];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v9, v25];
      }
      v18 = ;
      *buf = 138543362;
      v29 = v18;
      v19 = "%{public}@Reverse push enabled";
    }

    else
    {
      if (*(a1 + 56) != 1)
      {
LABEL_30:
        v23 = [AMSBoolean BOOLeanWithBool:v4];
        v22 = [AMSPromise promiseWithResult:v23];

        v21 = v27;
        goto LABEL_31;
      }

      v5 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

        goto LABEL_30;
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      if (v16)
      {
        [v15 stringWithFormat:@"%@: [%@] ", v17, *(a1 + 32)];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v17, v25];
      }
      v18 = ;
      *buf = 138543362;
      v29 = v18;
      v19 = "%{public}@Reverse push sampled, but not enabled";
    }

    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);

    goto LABEL_29;
  }

  if (*(a1 + 56) == 1)
  {
    v10 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      if (v13)
      {
        [v12 stringWithFormat:@"%@: [%@] ", v14, *(a1 + 32)];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v14, v25];
      }
      v20 = ;
      *buf = 138543362;
      v29 = v20;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Reverse push sampled, but failed to find patterns.", buf, 0xCu);
    }
  }

  v21 = [AMSBoolean BOOLeanWithBool:0];
  v22 = [AMSPromise promiseWithResult:v21];
LABEL_31:

  return v22;
}

- (id)_URLIsTrustedFromRequest:(id)a3 bag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = [[AMSURLSentry alloc] initWithBag:v5];

  v9 = [v6 URL];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__AMSURLProtocolHandler__URLIsTrustedFromRequest_bag___block_invoke;
  v12[3] = &unk_1E73B3168;
  v10 = v7;
  v13 = v10;
  [(AMSURLSentry *)v8 isTrustedURL:v9 completionHandler:v12];

  return v10;
}

void __54__AMSURLProtocolHandler__URLIsTrustedFromRequest_bag___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [AMSBoolean BOOLeanWithBool:a2];
    [v3 finishWithResult:v5];
  }
}

@end