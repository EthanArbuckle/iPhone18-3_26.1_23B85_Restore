@interface AMSClientCertificateTask
- (AMSClientCertificateTask)initWithOptions:(id)a3;
- (id)performClientCertChainRequestWithAccount:(id)a3;
@end

@implementation AMSClientCertificateTask

- (AMSClientCertificateTask)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSClientCertificateTask;
  v5 = [(AMSTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (id)performClientCertChainRequestWithAccount:(id)a3
{
  v4 = a3;
  v5 = +[AMSProcessInfo currentProcess];
  v6 = [v5 isAMSAccountsDaemon];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16;
  v25 = __Block_byref_object_dispose__16;
  v26 = 0;
  if (!v6 || (v7 = NSClassFromString(&cfstr_Amsdsecurityse.isa)) == 0 || (v8 = objc_alloc_init(v7), [AMSPromise promiseWithResult:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = objc_alloc_init(AMSDaemonConnection);
    v11 = v22[5];
    v22[5] = v10;

    v9 = [v22[5] securityServiceProxyWithDelegate:0];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke;
  v18[3] = &unk_1E73B5E50;
  v12 = v4;
  v19 = v12;
  v20 = self;
  v13 = [v9 thenWithBlock:v18];
  v14 = v13;
  if (v22[5])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke_2;
    v17[3] = &unk_1E73B5E78;
    v17[4] = &v21;
    [v13 addFinishBlock:v17];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke_3;
  v16[3] = &unk_1E73B34B8;
  v16[4] = self;
  [v14 addErrorBlock:v16];

  _Block_object_dispose(&v21, 8);

  return v14;
}

AMSPromise *__69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSPromise);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) options];
  v7 = [(AMSPromise *)v4 completionHandlerAdapter];
  [v3 performClientCertChainRequestWithAccount:v5 options:v6 completion:v7];

  return v4;
}

void __69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __69__AMSClientCertificateTask_performClientCertChainRequestWithAccount___block_invoke_3(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform client cert chain request: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

@end