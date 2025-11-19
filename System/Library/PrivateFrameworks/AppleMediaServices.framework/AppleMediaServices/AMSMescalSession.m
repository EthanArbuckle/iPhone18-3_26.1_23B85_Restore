@interface AMSMescalSession
+ (AMSMescalSession)sessionWithType:(int64_t)a3;
+ (id)defaultSession;
+ (id)primeSession;
- (AMSMescalSession)initWithType:(int64_t)a3;
- (BOOL)_cacheCertData:(id)a3 expiration:(double)a4;
- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4;
- (id)_cachedCertData;
- (id)_cachedCertPath;
- (id)primeSignatureForData:(id)a3 bag:(id)a4;
- (id)primeSignatureForData:(id)a3 bag:(id)a4 error:(id *)a5;
- (id)signData:(id)a3 bag:(id)a4;
- (id)signData:(id)a3 bag:(id)a4 error:(id *)a5;
- (id)verifyData:(id)a3 withSignature:(id)a4 bag:(id)a5;
- (id)verifyPrimeSignature:(id)a3;
@end

@implementation AMSMescalSession

+ (id)defaultSession
{
  if (_MergedGlobals_130 != -1)
  {
    dispatch_once(&_MergedGlobals_130, &__block_literal_global_90);
  }

  v3 = qword_1ED6E2E58;

  return v3;
}

uint64_t __34__AMSMescalSession_defaultSession__block_invoke()
{
  qword_1ED6E2E58 = [[AMSMescalSession alloc] initWithType:1];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_cachedCertData
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AMSMescalSession *)self _cachedCertPath];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (!v5)
    {
      v6 = 0;
      goto LABEL_29;
    }

    v24 = 0;
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v24];
    v7 = v24;
    v8 = v7;
    if (!v6 || v7)
    {
      v9 = +[AMSLogConfig sharedConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v9 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        *buf = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v8;
        v18 = v17;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to find cert data. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v9 = +[AMSDefaults mescalCertExpiration];
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = v10;
      if (v9 && [v10 compare:v9]!= 1)
      {
        v19 = +[AMSLogConfig sharedConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        v20 = [v19 OSLogObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          *buf = 138543362;
          v26 = v21;
          v22 = v21;
          _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Loaded cert data", buf, 0xCu);
        }
      }

      else
      {
        v12 = +[AMSLogConfig sharedConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          *buf = 138543362;
          v26 = v14;
          v15 = v14;
          _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Removing expired cert data cache", buf, 0xCu);
        }

        [(AMSMescalSession *)self _cacheCertData:0 expiration:0.0];
        v6 = 0;
      }
    }
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v16 = v26;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine cache path", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_29:

  return v6;
}

- (id)_cachedCertPath
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 lastObject];
  v5 = [v2 initWithObjects:{v4, @"com.apple.AppleMediaServices", 0}];

  v6 = [MEMORY[0x1E696AEC0] pathWithComponents:v5];
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if (([v7 fileExistsAtPath:v6] & 1) != 0 || (v8 = 0, objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6, 1, 0, 0)))
  {
    v8 = [v6 stringByAppendingPathComponent:@"sap-setup-cert.txt"];
  }

  return v8;
}

- (AMSMescalSession)initWithType:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = AMSMescalSession;
  v4 = [(AMSMescalSession *)&v14 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [AMSMescalFairplaySession alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__AMSMescalSession_initWithType___block_invoke;
    v11[3] = &unk_1E73B9230;
    objc_copyWeak(&v12, &location);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__AMSMescalSession_initWithType___block_invoke_7;
    v9[3] = &unk_1E73B9258;
    objc_copyWeak(&v10, &location);
    v6 = [(AMSMescalFairplaySession *)v5 initWithMescalType:a3 cachedCertificateProvider:v11 certificateCacher:v9];
    session = v4->_session;
    v4->_session = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __33__AMSMescalSession_initWithType___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _cachedCertData];
  }

  else
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Attempted to get cached certificate from deallocated AMSMescalSession", &v7, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

void __33__AMSMescalSession_initWithType___block_invoke_7(uint64_t a1, void *a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cacheCertData:v5 expiration:a3];
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Attempted to cache certificate in deallocated AMSMescalSession", &v10, 0xCu);
    }
  }
}

+ (id)primeSession
{
  if (qword_1ED6E2E60 != -1)
  {
    dispatch_once(&qword_1ED6E2E60, &__block_literal_global_11_0);
  }

  v3 = qword_1ED6E2E68;

  return v3;
}

uint64_t __32__AMSMescalSession_primeSession__block_invoke()
{
  qword_1ED6E2E68 = [[AMSMescalSession alloc] initWithType:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (AMSMescalSession)sessionWithType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = +[AMSMescalSession primeSession];
  }

  else if (a3 == 1)
  {
    v3 = +[AMSMescalSession defaultSession];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)primeSignatureForData:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AMSMutablePromise);
  session = self->_session;
  v10 = AMSLogKey();
  v11 = [(AMSPromise *)v8 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session primeSignatureForData:v7 bag:v6 logKey:v10 completionHandler:v11];

  return v8;
}

- (id)signData:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AMSMutablePromise);
  session = self->_session;
  v10 = AMSLogKey();
  v11 = [(AMSPromise *)v8 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session signData:v7 bag:v6 logKey:v10 completionHandler:v11];

  return v8;
}

- (id)verifyData:(id)a3 withSignature:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AMSMutableBinaryPromise);
  session = self->_session;
  v13 = AMSLogKey();
  v14 = [(AMSBinaryPromise *)v11 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session verifyData:v10 signature:v9 bag:v8 logKey:v13 completionHandler:v14];

  return v11;
}

- (id)verifyPrimeSignature:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  session = self->_session;
  v7 = [(AMSBinaryPromise *)v5 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session verifyPrimeSignature:v4 completionHandler:v7];

  return v5;
}

- (BOOL)_cacheCertData:(id)a3 expiration:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSMescalSession *)self _cachedCertPath];
  if (v7)
  {
    if (v6)
    {
      v29 = 0;
      v8 = [v6 writeToFile:v7 options:1 error:&v29];
      v9 = v29;
      if (v8)
      {
        v10 = [MEMORY[0x1E695DF00] date];
        v11 = [v10 dateByAddingTimeInterval:a4];
        [AMSDefaults setMescalCertExpiration:v11];

        v12 = +[AMSLogConfig sharedConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v14 = objc_opt_class();
        *buf = 138543618;
        v31 = v14;
        v32 = 2048;
        v33 = a4;
        v15 = v14;
        v16 = "%{public}@: Saved mescal cert with expiration: %ld";
        v17 = v13;
        v18 = OS_LOG_TYPE_INFO;
        goto LABEL_22;
      }

      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v22 = objc_opt_class();
      *buf = 138543618;
      v31 = v22;
      v32 = 2114;
      v33 = v9;
      v15 = v22;
      v16 = "%{public}@: Failed to cache mescal cert. Error: %{public}@";
LABEL_21:
      v17 = v13;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_22:
      v23 = 22;
LABEL_28:
      _os_log_impl(&dword_192869000, v17, v18, v16, buf, v23);

LABEL_29:
      goto LABEL_30;
    }

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = 0;
    LOBYTE(v8) = [v20 removeItemAtPath:v7 error:&v28];
    v9 = v28;

    if ((v8 & 1) == 0)
    {
      v21 = [v9 domain];
      if ([v21 isEqual:*MEMORY[0x1E696A250]])
      {
        if ([v9 code] == 4)
        {

LABEL_32:
          v12 = +[AMSLogConfig sharedConfig];
          if (!v12)
          {
            v12 = +[AMSLogConfig sharedConfig];
          }

          v13 = [v12 OSLogObject];
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v27 = objc_opt_class();
          *buf = 138543618;
          v31 = v27;
          v32 = 2114;
          v33 = v9;
          v15 = v27;
          v16 = "%{public}@: Failed to remove existing mescal cert. Error: %{public}@";
          goto LABEL_21;
        }

        v26 = [v9 code];

        if (v26 == 260)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v24 = objc_opt_class();
    *buf = 138543362;
    v31 = v24;
    v15 = v24;
    v16 = "%{public}@: Removed mescal cert if there was one present.";
    v17 = v13;
    v18 = OS_LOG_TYPE_INFO;
    v23 = 12;
    goto LABEL_28;
  }

  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v31 = objc_opt_class();
    v19 = v31;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine cache path", buf, 0xCu);
  }

  LOBYTE(v8) = 0;
LABEL_30:

  return v8;
}

- (id)signData:(id)a3 bag:(id)a4 error:(id *)a5
{
  v6 = [(AMSMescalSession *)self signData:a3 bag:a4];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (id)primeSignatureForData:(id)a3 bag:(id)a4 error:(id *)a5
{
  v6 = [(AMSMescalSession *)self primeSignatureForData:a3 bag:a4];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4
{
  v5 = [(AMSMescalSession *)self verifyPrimeSignature:a3];
  LOBYTE(a4) = [v5 resultWithError:a4];

  return a4;
}

@end