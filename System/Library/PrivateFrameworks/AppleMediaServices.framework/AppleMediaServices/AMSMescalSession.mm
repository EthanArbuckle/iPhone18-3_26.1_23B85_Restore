@interface AMSMescalSession
+ (AMSMescalSession)sessionWithType:(int64_t)type;
+ (id)defaultSession;
+ (id)primeSession;
- (AMSMescalSession)initWithType:(int64_t)type;
- (BOOL)_cacheCertData:(id)data expiration:(double)expiration;
- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error;
- (id)_cachedCertData;
- (id)_cachedCertPath;
- (id)primeSignatureForData:(id)data bag:(id)bag;
- (id)primeSignatureForData:(id)data bag:(id)bag error:(id *)error;
- (id)signData:(id)data bag:(id)bag;
- (id)signData:(id)data bag:(id)bag error:(id *)error;
- (id)verifyData:(id)data withSignature:(id)signature bag:(id)bag;
- (id)verifyPrimeSignature:(id)signature;
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
  _cachedCertPath = [(AMSMescalSession *)self _cachedCertPath];
  if (_cachedCertPath)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:_cachedCertPath];

    if (!v5)
    {
      v6 = 0;
      goto LABEL_29;
    }

    v24 = 0;
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_cachedCertPath options:0 error:&v24];
    v7 = v24;
    v8 = v7;
    if (!v6 || v7)
    {
      oSLogObject4 = +[AMSLogConfig sharedConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        *buf = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v8;
        v18 = v17;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to find cert data. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      oSLogObject4 = +[AMSDefaults mescalCertExpiration];
      date = [MEMORY[0x1E695DF00] date];
      oSLogObject = date;
      if (oSLogObject4 && [date compare:oSLogObject4]!= 1)
      {
        v19 = +[AMSLogConfig sharedConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v19 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          *buf = 138543362;
          v26 = v21;
          v22 = v21;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: Loaded cert data", buf, 0xCu);
        }
      }

      else
      {
        v12 = +[AMSLogConfig sharedConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v12 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          *buf = 138543362;
          v26 = v14;
          v15 = v14;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: Removing expired cert data cache", buf, 0xCu);
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

    oSLogObject4 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v16 = v26;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine cache path", buf, 0xCu);
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
  lastObject = [v3 lastObject];
  v5 = [v2 initWithObjects:{lastObject, @"com.apple.AppleMediaServices", 0}];

  v6 = [MEMORY[0x1E696AEC0] pathWithComponents:v5];
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if (([v7 fileExistsAtPath:v6] & 1) != 0 || (v8 = 0, objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6, 1, 0, 0)))
  {
    v8 = [v6 stringByAppendingPathComponent:@"sap-setup-cert.txt"];
  }

  return v8;
}

- (AMSMescalSession)initWithType:(int64_t)type
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
    v6 = [(AMSMescalFairplaySession *)v5 initWithMescalType:type cachedCertificateProvider:v11 certificateCacher:v9];
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

+ (AMSMescalSession)sessionWithType:(int64_t)type
{
  if (type == 2)
  {
    v3 = +[AMSMescalSession primeSession];
  }

  else if (type == 1)
  {
    v3 = +[AMSMescalSession defaultSession];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)primeSignatureForData:(id)data bag:(id)bag
{
  bagCopy = bag;
  dataCopy = data;
  v8 = objc_alloc_init(AMSMutablePromise);
  session = self->_session;
  v10 = AMSLogKey();
  completionHandlerAdapter = [(AMSPromise *)v8 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session primeSignatureForData:dataCopy bag:bagCopy logKey:v10 completionHandler:completionHandlerAdapter];

  return v8;
}

- (id)signData:(id)data bag:(id)bag
{
  bagCopy = bag;
  dataCopy = data;
  v8 = objc_alloc_init(AMSMutablePromise);
  session = self->_session;
  v10 = AMSLogKey();
  completionHandlerAdapter = [(AMSPromise *)v8 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session signData:dataCopy bag:bagCopy logKey:v10 completionHandler:completionHandlerAdapter];

  return v8;
}

- (id)verifyData:(id)data withSignature:(id)signature bag:(id)bag
{
  bagCopy = bag;
  signatureCopy = signature;
  dataCopy = data;
  v11 = objc_alloc_init(AMSMutableBinaryPromise);
  session = self->_session;
  v13 = AMSLogKey();
  completionHandlerAdapter = [(AMSBinaryPromise *)v11 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session verifyData:dataCopy signature:signatureCopy bag:bagCopy logKey:v13 completionHandler:completionHandlerAdapter];

  return v11;
}

- (id)verifyPrimeSignature:(id)signature
{
  signatureCopy = signature;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  session = self->_session;
  completionHandlerAdapter = [(AMSBinaryPromise *)v5 completionHandlerAdapter];
  [(AMSMescalFairplaySession *)session verifyPrimeSignature:signatureCopy completionHandler:completionHandlerAdapter];

  return v5;
}

- (BOOL)_cacheCertData:(id)data expiration:(double)expiration
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  _cachedCertPath = [(AMSMescalSession *)self _cachedCertPath];
  if (_cachedCertPath)
  {
    if (dataCopy)
    {
      v29 = 0;
      v8 = [dataCopy writeToFile:_cachedCertPath options:1 error:&v29];
      v9 = v29;
      if (v8)
      {
        date = [MEMORY[0x1E695DF00] date];
        v11 = [date dateByAddingTimeInterval:expiration];
        [AMSDefaults setMescalCertExpiration:v11];

        oSLogObject2 = +[AMSLogConfig sharedConfig];
        if (!oSLogObject2)
        {
          oSLogObject2 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [oSLogObject2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v14 = objc_opt_class();
        *buf = 138543618;
        v31 = v14;
        v32 = 2048;
        expirationCopy = expiration;
        v15 = v14;
        v16 = "%{public}@: Saved mescal cert with expiration: %ld";
        v17 = oSLogObject;
        v18 = OS_LOG_TYPE_INFO;
        goto LABEL_22;
      }

      oSLogObject2 = +[AMSLogConfig sharedConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v22 = objc_opt_class();
      *buf = 138543618;
      v31 = v22;
      v32 = 2114;
      expirationCopy = v9;
      v15 = v22;
      v16 = "%{public}@: Failed to cache mescal cert. Error: %{public}@";
LABEL_21:
      v17 = oSLogObject;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_22:
      v23 = 22;
LABEL_28:
      _os_log_impl(&dword_192869000, v17, v18, v16, buf, v23);

LABEL_29:
      goto LABEL_30;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v28 = 0;
    LOBYTE(v8) = [defaultManager removeItemAtPath:_cachedCertPath error:&v28];
    v9 = v28;

    if ((v8 & 1) == 0)
    {
      domain = [v9 domain];
      if ([domain isEqual:*MEMORY[0x1E696A250]])
      {
        if ([v9 code] == 4)
        {

LABEL_32:
          oSLogObject2 = +[AMSLogConfig sharedConfig];
          if (!oSLogObject2)
          {
            oSLogObject2 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [oSLogObject2 OSLogObject];
          if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v27 = objc_opt_class();
          *buf = 138543618;
          v31 = v27;
          v32 = 2114;
          expirationCopy = v9;
          v15 = v27;
          v16 = "%{public}@: Failed to remove existing mescal cert. Error: %{public}@";
          goto LABEL_21;
        }

        code = [v9 code];

        if (code == 260)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    oSLogObject2 = +[AMSLogConfig sharedConfig];
    if (!oSLogObject2)
    {
      oSLogObject2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [oSLogObject2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v24 = objc_opt_class();
    *buf = 138543362;
    v31 = v24;
    v15 = v24;
    v16 = "%{public}@: Removed mescal cert if there was one present.";
    v17 = oSLogObject;
    v18 = OS_LOG_TYPE_INFO;
    v23 = 12;
    goto LABEL_28;
  }

  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v31 = objc_opt_class();
    v19 = v31;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: Failed to determine cache path", buf, 0xCu);
  }

  LOBYTE(v8) = 0;
LABEL_30:

  return v8;
}

- (id)signData:(id)data bag:(id)bag error:(id *)error
{
  v6 = [(AMSMescalSession *)self signData:data bag:bag];
  v7 = [v6 resultWithError:error];

  return v7;
}

- (id)primeSignatureForData:(id)data bag:(id)bag error:(id *)error
{
  v6 = [(AMSMescalSession *)self primeSignatureForData:data bag:bag];
  v7 = [v6 resultWithError:error];

  return v7;
}

- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error
{
  v5 = [(AMSMescalSession *)self verifyPrimeSignature:signature];
  LOBYTE(error) = [v5 resultWithError:error];

  return error;
}

@end