@interface AMSPACTokenTask
+ (id)signatureForSimLabelID:(id)d fromSignatures:(id)signatures;
+ (id)signatureMapFromServerSignatures:(id)signatures;
+ (id)tokenForSimLabelID:(id)d withQueue:(id)queue signingData:(id)data;
- (AMSPACTokenTask)initWithSimLabelID:(id)d;
- (id)perform;
@end

@implementation AMSPACTokenTask

- (AMSPACTokenTask)initWithSimLabelID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AMSPACTokenTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_simLabelID, d);
  }

  return v7;
}

- (id)perform
{
  simLabelID = [(AMSPACTokenTask *)self simLabelID];

  if (simLabelID)
  {
    simLabelID2 = [(AMSPACTokenTask *)self simLabelID];
    v5 = dispatch_get_global_queue(0, 0);
    signingData = [(AMSPACTokenTask *)self signingData];
    v7 = [AMSPACTokenTask tokenForSimLabelID:simLabelID2 withQueue:v5 signingData:signingData];
  }

  else
  {
    simLabelID2 = AMSError(12, @"Cannot fetch PAC token", @"SIM labelID is missing", 0);
    v7 = [AMSPromise promiseWithError:simLabelID2];
  }

  return v7;
}

+ (id)tokenForSimLabelID:(id)d withQueue:(id)queue signingData:(id)data
{
  dCopy = d;
  dataCopy = data;
  queueCopy = queue;
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x1E69A4888]) initWithQueue:queueCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__AMSPACTokenTask_tokenForSimLabelID_withQueue_signingData___block_invoke;
  v18[3] = &unk_1E73BA648;
  v13 = v11;
  v20 = dCopy;
  selfCopy = self;
  v19 = v13;
  v14 = dCopy;
  [v12 generatePhoneAuthenticationSignatureOverData:dataCopy withCompletion:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __60__AMSPACTokenTask_tokenForSimLabelID_withQueue_signingData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v11 = a1 + 40;
    v9 = *(a1 + 40);
    v10 = *(v11 + 8);
    v12 = [v5 authenticationCertificateSignatures];
    v13 = [v10 signatureForSimLabelID:v9 fromSignatures:v12];
    [v8 finishWithResult:v13];
  }

  else if (v6)
  {
    v14 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError(v7);
      v25 = 138543874;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] PAC retrieval failed: %{public}@", &v25, 0x20u);
    }

    [*(a1 + 32) finishWithError:v7];
  }

  else
  {
    v19 = AMSError(0, @"Signing result missing", @"No signing result or error provided", 0);
    v20 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v24 = AMSLogableError(v19);
      v25 = 138543874;
      v26 = v22;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] PAC retrieval failed: %{public}@", &v25, 0x20u);
    }

    [*(a1 + 32) finishWithError:v19];
  }
}

+ (id)signatureMapFromServerSignatures:(id)signatures
{
  v20 = *MEMORY[0x1E69E9840];
  signaturesCopy = signatures;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = signaturesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        serverVerifiableEncoding = [v10 serverVerifiableEncoding];
        subscriptionIdentifier = [v10 subscriptionIdentifier];
        [v4 setObject:serverVerifiableEncoding forKeyedSubscript:subscriptionIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)signatureForSimLabelID:(id)d fromSignatures:(id)signatures
{
  dCopy = d;
  v7 = [self signatureMapFromServerSignatures:signatures];
  v8 = [v7 objectForKeyedSubscript:dCopy];

  return v8;
}

@end