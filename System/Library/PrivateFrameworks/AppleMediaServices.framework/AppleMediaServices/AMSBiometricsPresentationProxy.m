@interface AMSBiometricsPresentationProxy
- (AMSBiometricsPresentationProxy)initWithSession:(id)a3 task:(id)a4;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
@end

@implementation AMSBiometricsPresentationProxy

- (AMSBiometricsPresentationProxy)initWithSession:(id)a3 task:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = AMSBiometricsPresentationProxy;
  v9 = [(AMSBiometricsPresentationProxy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_task, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AppleMediaServices.AMSBiometricsPresentationProxy.delegatePresentQueue", v11);
    delegateQueue = v10->_delegateQueue;
    v10->_delegateQueue = v12;
  }

  return v10;
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSBiometricsPresentationProxy *)self session];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__AMSBiometricsPresentationProxy_handleAuthenticateRequest_completion___block_invoke;
    block[3] = &unk_1E73B5230;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    v12 = AMSError(6, @"Biometrics presentation error", @"Delegate doesn't respond to AMSURLSession:task:handleAuthenticateRequest:completion:", 0);
    (*(v7 + 2))(v7, 0, v12);
  }
}

void __71__AMSBiometricsPresentationProxy_handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded(*(a1 + 40));
    v12 = 138543874;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running on delegate queue, calling handleAuthenticateRequest with Request: %{public}@", &v12, 0x20u);
  }

  v8 = [*(a1 + 32) session];
  v9 = [v8 delegate];
  v10 = [*(a1 + 32) session];
  v11 = [*(a1 + 32) task];
  [v9 AMSURLSession:v10 task:v11 handleAuthenticateRequest:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)handleDialogRequest:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(AMSBiometricsPresentationProxy *)self session];
  v8 = [v7 delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(AMSBiometricsPresentationProxy *)self session];
    v11 = [v10 delegate];
    v12 = [(AMSBiometricsPresentationProxy *)self session];
    v13 = [(AMSBiometricsPresentationProxy *)self task];
    [v11 AMSURLSession:v12 task:v13 handleDialogRequest:v14 completion:v6];

    v6 = v11;
  }

  else
  {
    v10 = AMSError(6, @"Biometrics presentation error", @"Delegate doesn't respond to AMSURLSession:task:handleDialogRequest:completion:", 0);
    (*(v6 + 2))(v6, 0, v10);
  }
}

@end