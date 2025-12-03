@interface AMSMescalFairPlay
- (AMSMescalFairPlay)initWithMescalType:(int64_t)type logKey:(id)key error:(id *)error;
- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error;
- (BOOL)verifySignature:(id)signature forData:(id)data error:(id *)error;
- (id)_dataWithFairPlayBytes:(const char *)bytes length:(unsigned int)length;
- (id)exchangeData:(id)data error:(id *)error;
- (id)primingSignatureForData:(id)data error:(id *)error;
- (id)signData:(id)data error:(id *)error;
- (void)_teardownSession;
- (void)dealloc;
@end

@implementation AMSMescalFairPlay

- (AMSMescalFairPlay)initWithMescalType:(int64_t)type logKey:(id)key error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
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
  v10->_mescalType = type;
  v19 = [keyCopy copy];
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

  oSLogObject = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    if (keyCopy)
    {
      [v23 stringWithFormat:@"%@: [%@] ", v24, keyCopy];
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
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Init failed: %@", buf, 0x16u);
  }

  if (error)
  {
    v28 = v18;
    v25 = 0;
    *error = v18;
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

- (id)exchangeData:(id)data error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
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

    Mib5yocT(v9, &self->_hardwareInfo, context, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v27, &v26, &v25);
    if (v10)
    {
      v11 = v10;
      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        logKey = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v29 = v14;
        v30 = 2114;
        v31 = logKey;
        v32 = 2048;
        v33 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", buf, 0x20u);
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
    if (error)
    {
      v18 = v17;
      *error = v17;
    }

    else
    {
      v19 = +[AMSLogConfig sharedConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = v21;
        logKey2 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v29 = v21;
        v30 = 2114;
        v31 = logKey2;
        v32 = 2114;
        v33 = v17;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to exchange data. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  return context;
}

- (id)primingSignatureForData:(id)data error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = 0;
  context = self->_context;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  jfkdDAjba3jd(context, 100, bytes, v11, &v31, &v30);
  if (v12)
  {
    v13 = v12;
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      logKey = [(AMSMescalFairPlay *)self logKey];
      *buf = 138543874;
      v33 = v16;
      v34 = 2114;
      v35 = logKey;
      v36 = 2048;
      v37 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Could not SAP prime: %lu", buf, 0x20u);
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
    if (error)
    {
      v21 = v19;
      v22 = 0;
      *error = v20;
      goto LABEL_18;
    }

    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = v26;
      logKey2 = [(AMSMescalFairPlay *)self logKey];
      *buf = 138543874;
      v33 = v26;
      v34 = 2114;
      v35 = logKey2;
      v36 = 2114;
      v37 = v20;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to prime data. Error = %{public}@", buf, 0x20u);
    }
  }

  v22 = 0;
LABEL_18:

  return v22;
}

- (id)signData:(id)data error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  context = self->_context;
  if (context)
  {
    v28 = 0;
    v27 = 0;
    Fc3vhtJDvr(context, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v28, &v27);
    if (v9)
    {
      v10 = v9;
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        logKey = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v30 = v13;
        v31 = 2114;
        v32 = logKey;
        v33 = 2048;
        v34 = v10;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", buf, 0x20u);
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
    if (error)
    {
      v20 = v19;
      *error = v19;
    }

    else
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = v23;
        logKey2 = [(AMSMescalFairPlay *)self logKey];
        *buf = 138543874;
        v30 = v23;
        v31 = 2114;
        v32 = logKey2;
        v33 = 2114;
        v34 = v19;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to signing data. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  return context;
}

- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v7 = signatureCopy;
  if (!self->_context)
  {
    v15 = AMSError(304, @"Mescal Failed", @"No SAP context for prime verification", 0);
    if (v15)
    {
      v16 = v15;
      if (error)
      {
        v17 = v15;
        *error = v16;
      }

      else
      {
        v19 = +[AMSLogConfig sharedConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v19 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = v21;
          logKey = [(AMSMescalFairPlay *)self logKey];
          v25 = 138543874;
          v26 = v21;
          v27 = 2114;
          v28 = logKey;
          v29 = 2114;
          v30 = v16;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verify primed signature. Error = %{public}@", &v25, 0x20u);
        }
      }
    }

    goto LABEL_18;
  }

  [signatureCopy bytes];
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

    oSLogObject2 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      logKey2 = [(AMSMescalFairPlay *)self logKey];
      v25 = 138543874;
      v26 = v12;
      v27 = 2048;
      v28 = logKey2;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%public}@] SAPExchange failed: %ld", &v25, 0x20u);
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

- (BOOL)verifySignature:(id)signature forData:(id)data error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  dataCopy = data;
  if (!self->_context)
  {
    v17 = @"Mescal Failed";
    v18 = @"No SAP context for signature verification";
LABEL_12:
    v19 = 304;
    goto LABEL_13;
  }

  [signatureCopy bytes];
  [signatureCopy length];
  [dataCopy mutableBytes];
  [dataCopy length];
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

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    logKey = [(AMSMescalFairPlay *)self logKey];
    v30 = 138543874;
    v31 = v14;
    v32 = 2114;
    v33 = logKey;
    v34 = 2048;
    v35 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] SAPExchange failed: %ld", &v30, 0x20u);
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
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    else
    {
      v24 = +[AMSLogConfig sharedConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = v26;
        logKey2 = [(AMSMescalFairPlay *)self logKey];
        v30 = 138543874;
        v31 = v26;
        v32 = 2114;
        v33 = logKey2;
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verifying signature. Error = %{public}@", &v30, 0x20u);
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

- (id)_dataWithFairPlayBytes:(const char *)bytes length:(unsigned int)length
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes length:length deallocator:&__block_literal_global_89];

  return v4;
}

@end