@interface AMSMockNetworkProxy
+ (BOOL)canInitWithRequest:(id)a3;
+ (NSArray)executedOverrides;
+ (NSArray)registeredOverrides;
+ (NSMutableArray)_executedOverrides;
+ (id)_overrides;
+ (void)_removeAllOverrides;
+ (void)_removeOverride:(id)a3;
+ (void)_sync:(id)a3;
+ (void)addOverride:(id)a3;
+ (void)clearOverrides;
+ (void)removeOverride:(id)a3;
- (void)finishWithData:(id)a3;
- (void)finishWithError:(id)a3;
- (void)performRedirectFromResponse:(id)a3;
- (void)sendResponse:(id)a3;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation AMSMockNetworkProxy

+ (id)_overrides
{
  if (_MergedGlobals_136 != -1)
  {
    dispatch_once(&_MergedGlobals_136, &__block_literal_global_101);
  }

  v3 = qword_1ED6E2F98;

  return v3;
}

uint64_t __33__AMSMockNetworkProxy__overrides__block_invoke()
{
  qword_1ED6E2F98 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (NSArray)registeredOverrides
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__47;
  v9 = __Block_byref_object_dispose__47;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSMockNetworkProxy_registeredOverrides__block_invoke;
  v4[3] = &unk_1E73B5F60;
  v4[4] = &v5;
  v4[5] = a1;
  [a1 _sync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__AMSMockNetworkProxy_registeredOverrides__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) _overrides];
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (NSArray)executedOverrides
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__47;
  v11 = __Block_byref_object_dispose__47;
  v12 = 0;
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__AMSMockNetworkProxy_executedOverrides__block_invoke;
  v6[3] = &unk_1E73B5F60;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 _sync:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__AMSMockNetworkProxy_executedOverrides__block_invoke(uint64_t a1)
{
  v5 = [objc_opt_class() _executedOverrides];
  v2 = [v5 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)addOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__AMSMockNetworkProxy_addOverride___block_invoke;
  v6[3] = &unk_1E73B40A8;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [a1 _sync:v6];
}

void __35__AMSMockNetworkProxy_addOverride___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _overrides];
  [v2 addObject:*(a1 + 32)];
}

+ (void)clearOverrides
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__AMSMockNetworkProxy_clearOverrides__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  [a1 _sync:v2];
}

void __37__AMSMockNetworkProxy_clearOverrides__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _overrides];
  [v1 removeAllObjects];
}

+ (void)removeOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AMSMockNetworkProxy_removeOverride___block_invoke;
  v6[3] = &unk_1E73B40A8;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [a1 _sync:v6];
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AMSMockNetworkProxy_canInitWithRequest___block_invoke;
  v7[3] = &unk_1E73BA1C0;
  v10 = a1;
  v5 = v4;
  v8 = v5;
  v9 = &v11;
  [a1 _sync:v7];
  LOBYTE(a1) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return a1;
}

void __42__AMSMockNetworkProxy_canInitWithRequest___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 48) _overrides];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldOverrideURLRequest:*(a1 + 32)])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)startLoading
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__47;
  v19 = __Block_byref_object_dispose__47;
  v20 = 0;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = [(NSURLProtocol *)self request];
    v7 = AMSLogableURLRequest(v6);
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Overriding request: %{public}@", buf, 0x16u);
  }

  v8 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__AMSMockNetworkProxy_startLoading__block_invoke;
  v14[3] = &unk_1E73B3EA8;
  v14[4] = self;
  v14[5] = &v15;
  [v8 _sync:v14];
  [(AMSMockNetworkProxy *)self setCurrentOverride:v16[5]];
  v9 = [v16[5] response];
  memset(buf, 0, sizeof(buf));
  v10 = [(NSURLProtocol *)self request];
  if (v9)
  {
    [v9 handleReceivedRequest:v10];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  if (*&buf[8])
  {
    [(AMSMockNetworkProxy *)self sendResponse:?];
  }

  if (*&buf[16])
  {
    [(AMSMockNetworkProxy *)self finishWithError:?];
    v11 = [v16[5] executedObservable];
    [v11 sendFailure:*&buf[16]];
  }

  else
  {
    [(AMSMockNetworkProxy *)self finishWithData:*buf];
    v11 = [v16[5] executedObservable];
    [v11 sendResult:*&buf[8]];
  }

  v12 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__AMSMockNetworkProxy_startLoading__block_invoke_3;
  v13[3] = &unk_1E73B82D0;
  v13[4] = self;
  v13[5] = &v15;
  [v12 _sync:v13];

  _Block_object_dispose(&v15, 8);
}

void __35__AMSMockNetworkProxy_startLoading__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _overrides];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__AMSMockNetworkProxy_startLoading__block_invoke_2;
  v6[3] = &unk_1E73BA1E8;
  v6[4] = *(a1 + 32);
  v3 = [v2 ams_firstObjectPassingTest:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __35__AMSMockNetworkProxy_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 request];
  v5 = [v3 shouldOverrideURLRequest:v4];

  return v5;
}

void __35__AMSMockNetworkProxy_startLoading__block_invoke_3(uint64_t a1)
{
  v3 = [objc_opt_class() _executedOverrides];
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  [v3 addObject:v2];
}

- (void)stopLoading
{
  v3 = [(AMSMockNetworkProxy *)self currentOverride];
  v2 = [v3 response];
  [v2 stopRunningTasks];
}

- (void)sendResponse:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 ams_valueForHTTPHeaderField:@"Location"];
  if ([v4 statusCode] >= 300 && objc_msgSend(v4, "statusCode") <= 399 && v5)
  {
    [(AMSMockNetworkProxy *)self performRedirectFromResponse:v7];
  }

  else
  {
    v6 = [(NSURLProtocol *)self client];
    [v6 URLProtocol:self didReceiveResponse:v7 cacheStoragePolicy:2];
  }
}

- (void)performRedirectFromResponse:(id)a3
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSURLProtocol *)self request];
  v6 = [v5 mutableCopy];

  v7 = [v4 ams_valueForHTTPHeaderField:@"Location"];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  [v6 setURL:v8];

  v9 = [v4 statusCode];
  if (v9 == 303 || (v9 - 301) <= 1 && ([v6 HTTPMethod], (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, v12 = objc_msgSend(v10, "isEqualToString:", @"POST"), v11, v12))
  {
    [v6 setHTTPMethod:@"GET"];
    [v6 setHTTPBody:0];
    [v6 setValue:0 forHTTPHeaderField:@"Content-Length"];
    [v6 setValue:0 forHTTPHeaderField:@"Content-Type"];
  }

  [v6 setValue:0 forHTTPHeaderField:@"Authorization"];
  v13 = [(NSURLProtocol *)self client];
  [v13 URLProtocol:self wasRedirectedToRequest:v6 redirectResponse:v14];
}

- (void)finishWithData:(id)a3
{
  v4 = a3;
  v5 = [(NSURLProtocol *)self client];
  [v5 URLProtocol:self didLoadData:v4];

  v6 = [(NSURLProtocol *)self client];
  [v6 URLProtocolDidFinishLoading:self];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(NSURLProtocol *)self client];
  [v5 URLProtocol:self didFailWithError:v4];
}

+ (NSMutableArray)_executedOverrides
{
  if (qword_1ED6E2FA0 != -1)
  {
    dispatch_once(&qword_1ED6E2FA0, &__block_literal_global_10_1);
  }

  v3 = qword_1ED6E2FA8;

  return v3;
}

uint64_t __41__AMSMockNetworkProxy__executedOverrides__block_invoke()
{
  qword_1ED6E2FA8 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_removeAllOverrides
{
  v2 = [a1 _overrides];
  [v2 removeAllObjects];
}

+ (void)_removeOverride:(id)a3
{
  v8 = a3;
  v4 = [a1 _overrides];
  v5 = [v4 count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    while (1)
    {
      v7 = [v4 objectAtIndexedSubscript:--v6];
      if ([v8 isEqual:v7])
      {
        break;
      }

      if (v6 <= 0)
      {
        goto LABEL_7;
      }
    }

    [v4 removeObjectAtIndex:v6];
  }

LABEL_7:
}

+ (void)_sync:(id)a3
{
  v3 = qword_1ED6E2FB0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6E2FB0, &__block_literal_global_12_3);
  }

  v5 = qword_1ED6E2FB8;
  [v5 lock];
  v4[2](v4);

  [v5 unlock];
}

uint64_t __29__AMSMockNetworkProxy__sync___block_invoke()
{
  qword_1ED6E2FB8 = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end