@interface AMSPushNotificationService
+ (id)_pushServicePromise;
+ (id)registerAllTokens;
+ (id)registerTokensIfNeeded;
@end

@implementation AMSPushNotificationService

+ (id)_pushServicePromise
{
  v3 = objc_alloc_init(AMSDaemonConnection);
  v4 = [(AMSDaemonConnection *)v3 pushNotificationService];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AMSPushNotificationService__pushServicePromise__block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a1;
  [v4 addErrorBlock:v6];

  return v4;
}

void __49__AMSPushNotificationService__pushServicePromise__block_invoke(uint64_t a1, void *a2)
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
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch push service. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

+ (id)registerAllTokens
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
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
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Refreshing all push tokens", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = [a1 _pushServicePromise];
  v12 = [v11 thenWithBinaryPromiseBlock:&__block_literal_global_119];

  return v12;
}

AMSMutableBinaryPromise *__47__AMSPushNotificationService_registerAllTokens__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AMSPushNotificationService_registerAllTokens__block_invoke_2;
  v6[3] = &unk_1E73B3168;
  v4 = v3;
  v7 = v4;
  [v2 registerAllTokensWithCompletionHandler:v6];

  return v4;
}

+ (id)registerTokensIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
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
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Refreshing push tokens if needed", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = [a1 _pushServicePromise];
  v12 = [v11 thenWithBinaryPromiseBlock:&__block_literal_global_11_1];

  return v12;
}

AMSMutableBinaryPromise *__52__AMSPushNotificationService_registerTokensIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AMSPushNotificationService_registerTokensIfNeeded__block_invoke_2;
  v6[3] = &unk_1E73B3168;
  v4 = v3;
  v7 = v4;
  [v2 registerTokensIfNeededWithCompletionHandler:v6];

  return v4;
}

@end