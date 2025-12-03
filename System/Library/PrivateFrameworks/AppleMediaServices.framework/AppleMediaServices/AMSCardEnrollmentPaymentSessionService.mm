@interface AMSCardEnrollmentPaymentSessionService
+ (id)performSilentEnrollmentWithRequest:(id)request logKey:(id)key;
@end

@implementation AMSCardEnrollmentPaymentSessionService

+ (id)performSilentEnrollmentWithRequest:(id)request logKey:(id)key
{
  requestCopy = request;
  keyCopy = key;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = objc_alloc_init(AMSDaemonConnection);
  v8 = [v19[5] securityServiceProxyWithDelegate:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__AMSCardEnrollmentPaymentSessionService_performSilentEnrollmentWithRequest_logKey___block_invoke;
  v13[3] = &unk_1E73B5170;
  v9 = requestCopy;
  v14 = v9;
  v10 = keyCopy;
  v16 = &v18;
  selfCopy = self;
  v15 = v10;
  v11 = [v8 thenWithBlock:v13];

  _Block_object_dispose(&v18, 8);

  return v11;
}

AMSMutablePromise *__84__AMSCardEnrollmentPaymentSessionService_performSilentEnrollmentWithRequest_logKey___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v6 = a1[4];
  v5 = a1[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__AMSCardEnrollmentPaymentSessionService_performSilentEnrollmentWithRequest_logKey___block_invoke_2;
  v12[3] = &unk_1E73B5960;
  v16 = a1[7];
  v13 = v5;
  v7 = v4;
  v8 = a1[6];
  v14 = v7;
  v15 = v8;
  [v3 performSilentEnrollmentWithRequest:v6 logKey:v13 completion:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __84__AMSCardEnrollmentPaymentSessionService_performSilentEnrollmentWithRequest_logKey___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
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
      v10 = *(a1 + 32);
      v22 = 138543874;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent enrollment failed with error: %{public}@", &v22, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  if (!v5)
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
      v14 = *(a1 + 32);
      v22 = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent enrollment failed with no response dictionary", &v22, 0x16u);
    }

    v15 = AMSError(12, @"Silent Enrollment Error", @"Empty response dictionary", 0);
    [*(a1 + 40) finishWithError:v15];
  }

  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    v22 = 138543618;
    v23 = v18;
    v24 = 2114;
    v25 = v19;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent enrollment succeeded", &v22, 0x16u);
  }

  [*(a1 + 40) finishWithResult:v5];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

@end