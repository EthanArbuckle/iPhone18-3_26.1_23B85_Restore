@interface VSVerificationStateResetOperation
- (VSVerificationStateResetOperation)init;
- (void)_resetVerificationStateWithURL:(id)a3;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSVerificationStateResetOperation

- (VSVerificationStateResetOperation)init
{
  v11.receiver = self;
  v11.super_class = VSVerificationStateResetOperation;
  v2 = [(VSVerificationStateResetOperation *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    v4 = v2->_result;
    v2->_result = v3;

    v5 = MEMORY[0x277CCABD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 queueWithName:v7];
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v8;
  }

  return v2;
}

- (void)_resetVerificationStateWithURL:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Resetting verification state with URL %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CCAD38];
  v7 = [(VSVerificationStateResetOperation *)self auditToken];
  v8 = [v6 vs_defaultSessionConfigurationForSourceAppWithAuditToken:v7];

  v9 = objc_alloc_init(MEMORY[0x277CF0188]);
  [v8 set_appleIDContext:v9];

  [v8 setTimeoutIntervalForRequest:30.0];
  v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:0 delegateQueue:0];
  v11 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v4];
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__VSVerificationStateResetOperation__resetVerificationStateWithURL___block_invoke;
  v13[3] = &unk_278B73CC8;
  objc_copyWeak(&v14, buf);
  v12 = [v10 dataTaskWithRequest:v11 completionHandler:v13];
  [(VSVerificationStateResetOperation *)self setResetStateTask:v12];
  [v12 resume];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __68__VSVerificationStateResetOperation__resetVerificationStateWithURL___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v18)
    {
      v8 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x277CBEAD8];
          v10 = *MEMORY[0x277CBE660];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          [v9 raise:v10 format:{@"Unexpectedly, response was %@, instead of NSHTTPURLResponse.", v12}];
        }

        v13 = [v8 statusCode] - 200;

        if (v13 <= 0x63)
        {
          v14 = objc_alloc_init(MEMORY[0x277D82BB8]);
          v15 = [VSFailable failableWithObject:v14];
LABEL_10:
          v16 = v15;
          v17 = [VSOptional optionalWithObject:v15];
          [WeakRetained setResult:v17];

          [WeakRetained finishExecutionIfPossible];
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v14 = VSPrivateError(-15, v6);
    v15 = [VSFailable failableWithError:v14];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)executionDidBegin
{
  v3 = @"gsOtp";
  v4 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v4 setBagKey:v3];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__VSVerificationStateResetOperation_executionDidBegin__block_invoke;
  v7[3] = &unk_278B73CF0;
  objc_copyWeak(&v9, &from);
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v8 = v5;
  [(VSAMSBagLoadOperation *)v4 setCompletionBlock:v7];
  v6 = [(VSVerificationStateResetOperation *)self privateQueue];
  [v6 addOperation:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __54__VSVerificationStateResetOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [v3 value];
    v6 = [v4 error];
    if (v5)
    {
      v7 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = *MEMORY[0x277CBE660];
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          [v8 raise:v9 format:{@"Unexpectedly, value was %@, instead of NSString.", v11}];
        }

        v7 = v7;
        v12 = [MEMORY[0x277CBEBC0] URLWithString:v7];
        v13 = VSDefaultLogObject();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = *(a1 + 32);
            *buf = 138412546;
            v23 = v12;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Did load URL value (%@) for bag key %@", buf, 0x16u);
          }

          [WeakRetained _resetVerificationStateWithURL:v12];
          goto LABEL_20;
        }

        if (v14)
        {
          v19 = *(a1 + 32);
          *buf = 138412546;
          v23 = v7;
          v24 = 2112;
          v25 = v19;
          _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Did load value (%@) for bag key %@ but could not create a URL", buf, 0x16u);
        }
      }

      else
      {
        v17 = VSDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138412546;
          v23 = v7;
          v24 = 2112;
          v25 = v18;
          _os_log_impl(&dword_23AB8E000, v17, OS_LOG_TYPE_DEFAULT, "Did load value (%@) for bag key %@ but it was NOT a string", buf, 0x16u);
        }
      }
    }

    else
    {
      v7 = VSDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Did NOT load value for bag key %@: %@", buf, 0x16u);
      }
    }

    v12 = VSPrivateError(-14, v6);
    v20 = [VSFailable failableWithError:v12];
    v21 = [VSOptional optionalWithObject:v20];
    [WeakRetained setResult:v21];

    [WeakRetained finishExecutionIfPossible];
LABEL_20:
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSVerificationStateResetOperation;
  [(VSAsyncOperation *)&v4 cancel];
  v3 = [(VSVerificationStateResetOperation *)self resetStateTask];
  [v3 cancel];
}

@end