@interface AMSAppleCardSilentEnrollmentProtocolHandler
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler;
@end

@implementation AMSAppleCardSilentEnrollmentProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler
{
  redirectCopy = redirect;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__AMSAppleCardSilentEnrollmentProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke;
  v13[3] = &unk_1E73B3A10;
  v15 = redirectCopy;
  v13[4] = self;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = AMSAppleCardSilentEnrollmentProtocolHandler;
  v11 = handlerCopy;
  [(AMSURLProtocolHandler *)&v12 reconfigureNewRequest:request originalTask:task redirect:redirectCopy completionHandler:v13];
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

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = [[AMSAuthenticateTask alloc] initWithRequest:requestCopy];

  performAuthentication = [(AMSAuthenticateTask *)v10 performAuthentication];
  [performAuthentication addFinishBlock:completionCopy];
}

@end