@interface AMSAppleCardSilentEnrollmentProtocolHandler
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation AMSAppleCardSilentEnrollmentProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__AMSAppleCardSilentEnrollmentProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke;
  v13[3] = &unk_1E73B3A10;
  v15 = v6;
  v13[4] = self;
  v14 = v10;
  v12.receiver = self;
  v12.super_class = AMSAppleCardSilentEnrollmentProtocolHandler;
  v11 = v10;
  [(AMSURLProtocolHandler *)&v12 reconfigureNewRequest:a3 originalTask:a4 redirect:v6 completionHandler:v13];
}

void __109__AMSAppleCardSilentEnrollmentProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v10 = *(*(a1 + 40) + 16);
LABEL_7:
    v10();
    goto LABEL_14;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v10 = *(*(a1 + 40) + 16);
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiCloudAccount];

  if (v8)
  {
    v9 = [v5 mutableCopy];
    [v9 ams_addSilentEnrollmentHeadersForAccount:v8];
    (*(*(a1 + 40) + 16))();
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
      v14 = v13;
      v15 = AMSSetLogKeyIfNeeded();
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find active iCloud account", &v16, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_14:
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = a5;
  v10 = [[AMSAuthenticateTask alloc] initWithRequest:v8];

  v9 = [(AMSAuthenticateTask *)v10 performAuthentication];
  [v9 addFinishBlock:v7];
}

@end