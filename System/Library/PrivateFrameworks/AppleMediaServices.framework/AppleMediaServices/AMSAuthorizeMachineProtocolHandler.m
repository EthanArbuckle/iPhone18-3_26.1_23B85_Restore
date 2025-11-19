@interface AMSAuthorizeMachineProtocolHandler
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation AMSAuthorizeMachineProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a6;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = AMSLogKey();
    *buf = 138543618;
    v30 = v15;
    a6 = v14;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Reconfiguring request for authorization/deauthorization", buf, 0x16u);
  }

  v18 = [(AMSAuthorizeMachineProtocolHandler *)self reconfigureRequestHandler];

  if (v18)
  {
    v19 = [(AMSAuthorizeMachineProtocolHandler *)self reconfigureRequestHandler];
    (v19)[2](v19, v10);
  }

  v20 = [v11 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
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

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a6;
      v25 = objc_opt_class();
      v26 = v25;
      v27 = AMSLogKey();
      *buf = 138543618;
      v30 = v25;
      a6 = v24;
      v31 = 2114;
      v32 = v27;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding redirect on reconfigured request for authorization/deauthorization", buf, 0x16u);
    }

    v7 = 0;
  }

  v28.receiver = self;
  v28.super_class = AMSAuthorizeMachineProtocolHandler;
  [(AMSURLProtocolHandler *)&v28 reconfigureNewRequest:v10 originalTask:v11 redirect:v7 error:a6];
}

@end