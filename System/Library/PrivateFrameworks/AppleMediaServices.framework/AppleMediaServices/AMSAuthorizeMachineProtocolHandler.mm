@interface AMSAuthorizeMachineProtocolHandler
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation AMSAuthorizeMachineProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  redirectCopy = redirect;
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  taskCopy = task;
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    errorCopy = error;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = AMSLogKey();
    *buf = 138543618;
    v30 = v15;
    error = errorCopy;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reconfiguring request for authorization/deauthorization", buf, 0x16u);
  }

  reconfigureRequestHandler = [(AMSAuthorizeMachineProtocolHandler *)self reconfigureRequestHandler];

  if (reconfigureRequestHandler)
  {
    reconfigureRequestHandler2 = [(AMSAuthorizeMachineProtocolHandler *)self reconfigureRequestHandler];
    (reconfigureRequestHandler2)[2](reconfigureRequestHandler2, requestCopy);
  }

  response = [taskCopy response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = response;
  }

  else
  {
    v21 = 0;
  }

  if ([v21 statusCode] < 300 || objc_msgSend(v21, "statusCode") >= 400)
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      errorCopy2 = error;
      v25 = objc_opt_class();
      v26 = v25;
      v27 = AMSLogKey();
      *buf = 138543618;
      v30 = v25;
      error = errorCopy2;
      v31 = 2114;
      v32 = v27;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding redirect on reconfigured request for authorization/deauthorization", buf, 0x16u);
    }

    redirectCopy = 0;
  }

  v28.receiver = self;
  v28.super_class = AMSAuthorizeMachineProtocolHandler;
  [(AMSURLProtocolHandler *)&v28 reconfigureNewRequest:requestCopy originalTask:taskCopy redirect:redirectCopy error:error];
}

@end