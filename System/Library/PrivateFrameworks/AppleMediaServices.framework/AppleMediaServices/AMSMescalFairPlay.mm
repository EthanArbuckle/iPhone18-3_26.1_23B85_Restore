@interface AMSMescalFairPlay
- (AMSMescalFairPlay)initWithMescalType:(int64_t)a3 logKey:(id)a4 error:(id *)a5;
- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4;
- (BOOL)verifySignature:(id)a3 forData:(id)a4 error:(id *)a5;
- (id)_dataWithFairPlayBytes:(const char *)a3 length:(unsigned int)a4;
- (id)exchangeData:(id)a3 error:(id *)a4;
- (id)primingSignatureForData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)_teardownSession;
- (void)dealloc;
@end

@implementation AMSMescalFairPlay

- (AMSMescalFairPlay)initWithMescalType:(int64_t)a3 logKey:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v31.receiver = self;
  v31.super_class = AMSMescalFairPlay;
  v9 = [(AMSMescalFairPlay *)&v31 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_13;
  }

  if (!AMSFairPlayGetHardwareInfo(&v9->_hardwareInfo))
  {
    v17 = AMSError(12, @"Mescal Failed", @"Failed to fetch hardware info", 0);
    goto LABEL_6;
  }

  cp2g1b9ro(&v10->_context, &v10->_hardwareInfo);
  if (v11)
  {
    v17 = AMSErrorWithFormat(12, @"Mescal Failed", @"SAPInit failed: %ld", v12, v13, v14, v15, v16, v11);
LABEL_6:
    v18 = v17;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  v10->_mescalType = a3;
  v19 = [v8 copy];
  logKey = v10->_logKey;
  v10->_logKey = v19;

  if (!v18)
  {
LABEL_13:
    v25 = v10;
    v18 = 0;
    goto LABEL_20;
  }

  v21 = +[AMSLogConfig sharedConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (v8)
    {
      [v23 stringWithFormat:@"%@: [%@] ", v24, v8];
    }

    else
    {
      [v23 stringWithFormat:@"%@: ", v24, v30];
    }
    v26 = ;
    v27 = AMSLogableError(v18);
    *buf = 138543618;
    v33 = v26;
    v34 = 2112;
    v35 = v27;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@Init failed: %@", buf, 0x16u);
  }

  if (a5)
  {
    v28 = v18;
    v25 = 0;
    *a5 = v18;
  }

  else
  {
    v25 = 0;
  }

LABEL_20:

  return v25;
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    IPaI1oem5iL(context);
  }

  v4.receiver = self;
  v4.super_class = AMSMescalFairPlay;
  [(AMSMescalFairPlay *)&v4 dealloc];
}

- (id)exchangeData:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  context = self->_context;
  if (context)
  {
    v27 = 0;
    v26 = 0;
    v25 = -1;
    if (self->_mescalType == 2)
    {
      v9 = 210;
    }

    else
    {
      v9 = 200;
    }

    Mib5yocT(v9, &self->_hardwareInfo, context, [v6 bytes], objc_msgSend(v6, "length"), &v27, &v26, &v25);
    if (v10)
    {
      v11 = v10;
      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v29 = v14;
        v30 = 2114;
        v31 = v16;
        v32 = 2048;
        v33 = v11;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", buf, 0x20u);
      }

      context = 0;
    }

    else
    {
      self->_complete = v25 == 0;
      context = [(AMSMescalFairPlay *)self _dataWithFairPlayBytes:v27 length:v26];
    }

    v17 = 0;
  }

  else
  {
    v17 = AMSError(304, @"Mescal Failed", @"No context available for exchange", 0);
  }

  if (!(v17 | context))
  {
    v17 = AMSError(0, @"FairPlay Mescal Failed", @"An unknown error occurred exchanging data", 0);
  }

  if (v17)
  {
    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }

    else
    {
      v19 = +[AMSLogConfig sharedConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = v21;
        v23 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v29 = v21;
        v30 = 2114;
        v31 = v23;
        v32 = 2114;
        v33 = v17;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to exchange data. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  return context;
}

- (id)primingSignatureForData:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = 0;
  context = self->_context;
  v8 = a3;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  jfkdDAjba3jd(context, 100, v10, v11, &v31, &v30);
  if (v12)
  {
    v13 = v12;
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(AMSMescalFairPlay *)self logKey];
      *buf = 138543874;
      v33 = v16;
      v34 = 2114;
      v35 = v18;
      v36 = 2048;
      v37 = v13;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Could not SAP prime: %lu", buf, 0x20u);
    }
  }

  else
  {
    v23 = [(AMSMescalFairPlay *)self _dataWithFairPlayBytes:v31 length:v30];
    if (v23)
    {
      v22 = v23;
      v20 = 0;
      goto LABEL_18;
    }
  }

  v19 = AMSError(0, @"FairPlay Mescal Failed", @"An unknown error occurred priming data", 0);
  v20 = v19;
  if (v19)
  {
    if (a4)
    {
      v21 = v19;
      v22 = 0;
      *a4 = v20;
      goto LABEL_18;
    }

    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = v26;
      v28 = [(AMSMescalFairPlay *)self logKey];
      *buf = 138543874;
      v33 = v26;
      v34 = 2114;
      v35 = v28;
      v36 = 2114;
      v37 = v20;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to prime data. Error = %{public}@", buf, 0x20u);
    }
  }

  v22 = 0;
LABEL_18:

  return v22;
}

- (id)signData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  context = self->_context;
  if (context)
  {
    v28 = 0;
    v27 = 0;
    Fc3vhtJDvr(context, [v6 bytes], objc_msgSend(v6, "length"), &v28, &v27);
    if (v9)
    {
      v10 = v9;
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v30 = v13;
        v31 = 2114;
        v32 = v15;
        v33 = 2048;
        v34 = v10;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", buf, 0x20u);
      }

      if (v10 == -42186)
      {
        v16 = @"Bad SAP session for signing";
        v17 = 302;
        v18 = 0;
      }

      else
      {
        v16 = @"Mescal Failed";
        v18 = @"Bad SAP signature";
        v17 = 304;
      }

      v19 = AMSError(v17, v16, v18, 0);
      context = 0;
    }

    else
    {
      context = [(AMSMescalFairPlay *)self _dataWithFairPlayBytes:v28 length:v27];
      v19 = 0;
    }
  }

  else
  {
    v19 = AMSError(304, @"Mescal Failed", @"No SAP context for signing", 0);
  }

  if (!(v19 | context))
  {
    v19 = AMSError(0, @"FairPlay Mescal Failed", @"An unknown error occurred signing data", 0);
  }

  if (v19)
  {
    if (a4)
    {
      v20 = v19;
      *a4 = v19;
    }

    else
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = v23;
        v25 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v30 = v23;
        v31 = 2114;
        v32 = v25;
        v33 = 2114;
        v34 = v19;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to signing data. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  return context;
}

- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!self->_context)
  {
    v15 = AMSError(304, @"Mescal Failed", @"No SAP context for prime verification", 0);
    if (v15)
    {
      v16 = v15;
      if (a4)
      {
        v17 = v15;
        *a4 = v16;
      }

      else
      {
        v19 = +[AMSLogConfig sharedConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        v20 = [v19 OSLogObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = v21;
          v23 = [(AMSMescalFairPlay *)self logKey];
          v25 = 138543874;
          v26 = v21;
          v27 = 2114;
          v28 = v23;
          v29 = 2114;
          v30 = v16;
          _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verify primed signature. Error = %{public}@", &v25, 0x20u);
        }
      }
    }

    goto LABEL_18;
  }

  [v6 bytes];
  [v7 length];
  gLg1CWr7p();
  if (v8)
  {
    v9 = v8;
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [(AMSMescalFairPlay *)self logKey];
      v25 = 138543874;
      v26 = v12;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%public}@] SAPExchange failed: %ld", &v25, 0x20u);
    }

    [(AMSMescalFairPlay *)self _teardownSession];
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v18 = 1;
LABEL_19:

  return v18;
}

- (BOOL)verifySignature:(id)a3 forData:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!self->_context)
  {
    v17 = @"Mescal Failed";
    v18 = @"No SAP context for signature verification";
LABEL_12:
    v19 = 304;
    goto LABEL_13;
  }

  [v8 bytes];
  [v8 length];
  [v9 mutableBytes];
  [v9 length];
  gLg1CWr7p();
  if (!v10)
  {
    v20 = 1;
    goto LABEL_23;
  }

  v11 = v10;
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [(AMSMescalFairPlay *)self logKey];
    v30 = 138543874;
    v31 = v14;
    v32 = 2114;
    v33 = v16;
    v34 = 2048;
    v35 = v11;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", &v30, 0x20u);
  }

  if (v11 != -42186)
  {
    v17 = @"Mescal Failed";
    v18 = @"Bad SAP signature verification";
    goto LABEL_12;
  }

  v17 = @"Bad Session";
  v18 = @"Bad SAP session for signature verification";
  v19 = 302;
LABEL_13:
  v21 = AMSError(v19, v17, v18, 0);
  v22 = v21;
  if (v21)
  {
    if (a5)
    {
      v23 = v21;
      *a5 = v22;
    }

    else
    {
      v24 = +[AMSLogConfig sharedConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = v26;
        v28 = [(AMSMescalFairPlay *)self logKey];
        v30 = 138543874;
        v31 = v26;
        v32 = 2114;
        v33 = v28;
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verifying signature. Error = %{public}@", &v30, 0x20u);
      }
    }
  }

  v20 = 0;
LABEL_23:

  return v20;
}

- (void)_teardownSession
{
  context = self->_context;
  if (context)
  {
    IPaI1oem5iL(context);
    self->_context = 0;
  }

  self->_complete = 0;
}

- (id)_dataWithFairPlayBytes:(const char *)a3 length:(unsigned int)a4
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 deallocator:&__block_literal_global_89];

  return v4;
}

@end