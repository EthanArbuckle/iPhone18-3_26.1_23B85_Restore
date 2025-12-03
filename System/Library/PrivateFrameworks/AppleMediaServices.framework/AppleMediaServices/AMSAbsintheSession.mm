@interface AMSAbsintheSession
+ (AMSAbsintheSession)defaultSession;
- (AMSAbsintheSession)init;
- (BOOL)clearSession;
- (id)_prepareContextWithBag:(id)bag;
- (id)asynchronouslyClearSession;
- (id)signData:(id)data bag:(id)bag;
- (id)signData:(id)data bag:(id)bag error:(id *)error;
@end

@implementation AMSAbsintheSession

- (AMSAbsintheSession)init
{
  v6.receiver = self;
  v6.super_class = AMSAbsintheSession;
  v2 = [(AMSAbsintheSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSPromiseSerialQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_sessionRef = 0;
  }

  return v2;
}

+ (AMSAbsintheSession)defaultSession
{
  if (_MergedGlobals_79 != -1)
  {
    dispatch_once(&_MergedGlobals_79, &__block_literal_global_1);
  }

  v3 = qword_1ED6E2668;

  return v3;
}

uint64_t __36__AMSAbsintheSession_defaultSession__block_invoke()
{
  qword_1ED6E2668 = objc_alloc_init(AMSAbsintheSession);

  return MEMORY[0x1EEE66BB8]();
}

- (id)asynchronouslyClearSession
{
  queue = [(AMSAbsintheSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AMSAbsintheSession_asynchronouslyClearSession__block_invoke;
  v6[3] = &unk_1E73B3368;
  v6[4] = self;
  v4 = [queue runBinaryPromiseBlock:v6];

  return v4;
}

void __48__AMSAbsintheSession_asynchronouslyClearSession__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) sessionRef] && (v4 = ZyNF2D9(objc_msgSend(*(a1 + 32), "sessionRef"))) != 0)
  {
    v5 = v4;
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to clear session with status: %ld", &v11, 0x20u);
    }

    [*(a1 + 32) setSessionRef:0];
    [*(a1 + 32) setServKey:0];
    v10 = AMSError(0, @"Absinthe Session Failure", @"Failed to clear session", 0);
    v3[2](v3, 0, v10);
  }

  else
  {
    [*(a1 + 32) setSessionRef:0];
    [*(a1 + 32) setServKey:0];
    v3[2](v3, 1, 0);
  }
}

- (id)signData:(id)data bag:(id)bag
{
  dataCopy = data;
  bagCopy = bag;
  if (bagCopy)
  {
    queue = [(AMSAbsintheSession *)self queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__AMSAbsintheSession_signData_bag___block_invoke;
    v11[3] = &unk_1E73B3400;
    v12 = dataCopy;
    selfCopy = self;
    v14 = bagCopy;
    v9 = [queue runPromiseBlock:v11];
  }

  else
  {
    queue = AMSError(2, @"Absinthe Session Failure", @"Bag was not provided", 0);
    v9 = [AMSPromise promiseWithError:queue];
  }

  return v9;
}

void __35__AMSAbsintheSession_signData_bag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSLogKey();
  if ([*(a1 + 32) length])
  {
    v5 = 0;
  }

  else
  {
    v6 = AMSError(2, @"Absinthe Session Failure", @"Invalid data", 0);
    v5 = [AMSBinaryPromise promiseWithError:v6];
  }

  if ([*(a1 + 40) sessionRef] && (objc_msgSend(*(a1 + 40), "servKey"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v9 = [*(a1 + 40) _prepareContextWithBag:*(a1 + 48)];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __35__AMSAbsintheSession_signData_bag___block_invoke_2;
    v21[3] = &unk_1E73B3390;
    v10 = v4;
    v11 = *(a1 + 40);
    v22 = v10;
    v23 = v11;
    v8 = [v9 thenWithBlock:v21];
  }

  v12 = [v8 promiseAdapter];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__AMSAbsintheSession_signData_bag___block_invoke_3;
  v19[3] = &unk_1E73B3078;
  v16 = *(a1 + 32);
  v13 = v16.i64[0];
  v20 = vextq_s8(v16, v16, 8uLL);
  v14 = [v12 thenWithBlock:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__AMSAbsintheSession_signData_bag___block_invoke_2_63;
  v17[3] = &unk_1E73B33D8;
  v17[4] = *(a1 + 40);
  v18 = v3;
  v15 = v3;
  [v14 addFinishBlock:v17];
}

id __35__AMSAbsintheSession_signData_bag___block_invoke_2(uint64_t a1)
{
  v2 = AMSSetLogKey(*(a1 + 32));
  if ([*(a1 + 40) sessionRef] && (objc_msgSend(*(a1 + 40), "servKey"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v5 = [*(a1 + 40) sessionRef] != 0;
    v6 = [*(a1 + 40) servKey];
    [v6 length];
    v12 = AMSErrorWithFormat(2, @"Absinthe Session Failure", @"Invalid session and/or servKey. hasSession: %d servKeyLength: %ld", v7, v8, v9, v10, v11, v5);
    v4 = [AMSBinaryPromise promiseWithError:v12];
  }

  return v4;
}

id __35__AMSAbsintheSession_signData_bag___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v2 = +[AMSLogConfig sharedConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = [*(a1 + 40) base64EncodedStringWithOptions:0];
      *buf = 138543618;
      *&buf[4] = v4;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Signing message: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v6 = qSCskg([*(a1 + 32) sessionRef], objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), buf, &v27, &v26, &v25);
  if (v6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v27 == 0;
  }

  if (v12 || v25 == 0)
  {
    v14 = v6;
    if (*buf)
    {
      ewFHQ(*buf);
    }

    if (v26)
    {
      ewFHQ(v26);
    }

    v18 = AMSErrorWithFormat(0, @"Absinthe Session Failure", @"Failed to generate signature. Status: %ld", v7, v8, v9, v10, v11, v14);
    v15 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E695DEF0]);
    v17 = [v16 initWithBytesNoCopy:*buf length:v27 deallocator:&__block_literal_global_56];
    v18 = [v17 base64EncodedStringWithOptions:0];
    v19 = objc_alloc(MEMORY[0x1E695DEF0]);
    v20 = [v19 initWithBytesNoCopy:v26 length:v25 deallocator:&__block_literal_global_56];
    v21 = [v20 base64EncodedStringWithOptions:0];

    if (v18 && v21 && (v22 = objc_alloc_init(AMSAbsintheSignature), [(AMSAbsintheSignature *)v22 setSignature:v18], [(AMSAbsintheSignature *)v22 setServKey:v21], v22))
    {
      v23 = [AMSPromise promiseWithResult:v22];
    }

    else
    {
      v22 = AMSError(0, @"Absinthe Session Failure", @"Signing finished without a result or error", 0);
      v23 = [AMSPromise promiseWithError:v22];
    }

    v15 = v23;
  }

  return v15;
}

void __35__AMSAbsintheSession_signData_bag___block_invoke_2_63(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSLogableError(v7);
      *buf = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to sign data. error = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_prepareContextWithBag:(id)bag
{
  v23 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provisioning session", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v9 = [bagCopy URLForKey:@"absinthe-handshake"];
  valuePromise = [v9 valuePromise];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__AMSAbsintheSession__prepareContextWithBag___block_invoke;
  v18[3] = &unk_1E73B3448;
  v18[4] = self;
  v20 = buf;
  v11 = bagCopy;
  v19 = v11;
  v12 = [valuePromise thenWithBlock:v18];
  v13 = [v12 thenWithBlock:&__block_literal_global_91];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__AMSAbsintheSession__prepareContextWithBag___block_invoke_3;
  v17[3] = &unk_1E73B3490;
  v17[4] = self;
  v17[5] = buf;
  v14 = [v13 thenWithBlock:v17];
  binaryPromiseAdapter = [v14 binaryPromiseAdapter];

  _Block_object_dispose(buf, 8);

  return binaryPromiseAdapter;
}

id __45__AMSAbsintheSession__prepareContextWithBag___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = 0;
  v29 = 0;
  if (+[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests") && [*(a1 + 32) PSCHelloV4Override])
  {
    v4 = [*(a1 + 32) PSCHelloV4Override];
  }

  else
  {
    v4 = SwZuQte6Dm;
  }

  if (+[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests") && [*(a1 + 32) PSCDisposeOverride])
  {
    v5 = [*(a1 + 32) PSCDisposeOverride];
  }

  else
  {
    v5 = ewFHQ;
  }

  v11 = v4(*(*(a1 + 48) + 8) + 24, &v29, &v30, 2);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v30 == 0;
  }

  if (v12 || !*(*(*(a1 + 48) + 8) + 24))
  {
    if (v29)
    {
      v5();
    }

    v13 = AMSErrorWithFormat(0, @"Absinthe Session Failure", @"Failed to create hello message. Status: %ld hasSession: %d MsgLength: %ld", v6, v7, v8, v9, v10, v11);
    v22 = [AMSPromise promiseWithError:v13];
  }

  else
  {
    v13 = +[AMSDevice deviceGUID];
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E695DEF0]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __45__AMSAbsintheSession__prepareContextWithBag___block_invoke_81;
      v28[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
      v28[4] = v5;
      v15 = [v14 initWithBytesNoCopy:v29 length:v30 deallocator:v28];
      v16 = [v15 base64EncodedStringWithOptions:0];
      v17 = v16;
      v18 = &stru_1F071BA78;
      if (v16)
      {
        v18 = v16;
      }

      v19 = v18;

      v31[0] = @"udid";
      v31[1] = @"request-message";
      v32[0] = v13;
      v32[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      v21 = [[AMSURLRequestEncoder alloc] initWithBag:*(a1 + 40)];

      [(AMSURLRequestEncoder *)v21 setRequestEncoding:3];
      v22 = [(AMSURLRequestEncoder *)v21 requestWithMethod:4 URL:v3 parameters:v20];
    }

    else
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543618;
        v34 = v25;
        v35 = 2114;
        v36 = v26;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to detemine unique device identifier", buf, 0x16u);
      }

      v15 = AMSError(5, @"Absinthe Session Failure", @"Failed to determine unique device identifier", 0);
      v22 = [AMSPromise promiseWithError:v15];
    }
  }

  return v22;
}

id __45__AMSAbsintheSession__prepareContextWithBag___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v3 = +[AMSURLSession defaultSession];
  v4 = [v3 dataTaskPromiseWithRequest:v2];

  return v4;
}

id __45__AMSAbsintheSession__prepareContextWithBag___block_invoke_3(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [a2 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (!v4)
    {
      v6 = 0;
      goto LABEL_21;
    }

    v5 = [v4 objectForKeyedSubscript:@"serv-key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;

      if (v6)
      {
        v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
        goto LABEL_10;
      }
    }

    else
    {

      v6 = 0;
    }

    v3 = 0;
LABEL_10:
    v7 = [v4 objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;

      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
        goto LABEL_15;
      }
    }

    else
    {

      v8 = 0;
    }

    v9 = 0;
LABEL_15:
    if ([v9 length])
    {
      if ([v3 length])
      {
        v10 = xtiKg(*(*(*(a1 + 40) + 8) + 24), [v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"));
        if (v10)
        {
          v16 = AMSErrorWithFormat(0, @"Absinthe Session Failure", @"Failed to setup session. Status: %ld", v11, v12, v13, v14, v15, v10);
          v17 = [AMSPromise promiseWithError:v16];

LABEL_31:
          goto LABEL_32;
        }
      }
    }

    goto LABEL_20;
  }

  v4 = 0;
  v6 = 0;
LABEL_20:

LABEL_21:
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v22 = 0;
LABEL_30:
    [v6 length];
    v3 = AMSErrorWithFormat(0, @"Absinthe Session Failure", @"Failed to create session. (sessionExists: %d servKeyLength: %ld)", v23, v24, v25, v26, v27, v22);
    v17 = [AMSPromise promiseWithError:v3];
    goto LABEL_31;
  }

  if (![v6 length])
  {
    v22 = *(*(*(a1 + 40) + 8) + 24) != 0;
    goto LABEL_30;
  }

  v18 = +[AMSLogConfig sharedConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    *buf = 138543618;
    v30 = v20;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provisioning succeeded", buf, 0x16u);
  }

  [*(a1 + 32) setSessionRef:*(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setServKey:v6];
  v17 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
LABEL_32:

  return v17;
}

- (BOOL)clearSession
{
  asynchronouslyClearSession = [(AMSAbsintheSession *)self asynchronouslyClearSession];
  v3 = [asynchronouslyClearSession resultWithError:0];

  return v3;
}

- (id)signData:(id)data bag:(id)bag error:(id *)error
{
  v6 = [(AMSAbsintheSession *)self signData:data bag:bag];
  v7 = [v6 resultWithError:error];

  return v7;
}

@end