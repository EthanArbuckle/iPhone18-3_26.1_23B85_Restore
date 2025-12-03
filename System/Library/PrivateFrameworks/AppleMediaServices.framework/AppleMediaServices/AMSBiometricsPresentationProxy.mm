@interface AMSBiometricsPresentationProxy
- (AMSBiometricsPresentationProxy)initWithSession:(id)session task:(id)task;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSBiometricsPresentationProxy

- (AMSBiometricsPresentationProxy)initWithSession:(id)session task:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = AMSBiometricsPresentationProxy;
  v9 = [(AMSBiometricsPresentationProxy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_task, task);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AppleMediaServices.AMSBiometricsPresentationProxy.delegatePresentQueue", v11);
    delegateQueue = v10->_delegateQueue;
    v10->_delegateQueue = v12;
  }

  return v10;
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  session = [(AMSBiometricsPresentationProxy *)self session];
  delegate = [session delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__AMSBiometricsPresentationProxy_handleAuthenticateRequest_completion___block_invoke;
    block[3] = &unk_1E73B5230;
    block[4] = self;
    v14 = requestCopy;
    v15 = completionCopy;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    v12 = AMSError(6, @"Biometrics presentation error", @"Delegate doesn't respond to AMSURLSession:task:handleAuthenticateRequest:completion:", 0);
    (*(completionCopy + 2))(completionCopy, 0, v12);
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

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  session = [(AMSBiometricsPresentationProxy *)self session];
  delegate = [session delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    session2 = [(AMSBiometricsPresentationProxy *)self session];
    delegate2 = [session2 delegate];
    session3 = [(AMSBiometricsPresentationProxy *)self session];
    task = [(AMSBiometricsPresentationProxy *)self task];
    [delegate2 AMSURLSession:session3 task:task handleDialogRequest:requestCopy completion:completionCopy];

    completionCopy = delegate2;
  }

  else
  {
    session2 = AMSError(6, @"Biometrics presentation error", @"Delegate doesn't respond to AMSURLSession:task:handleDialogRequest:completion:", 0);
    (*(completionCopy + 2))(completionCopy, 0, session2);
  }
}

@end