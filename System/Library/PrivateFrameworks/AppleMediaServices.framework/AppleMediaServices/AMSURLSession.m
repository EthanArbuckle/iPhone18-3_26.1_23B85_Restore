@interface AMSURLSession
+ (AKAppleIDSession)sharedAuthKitSession;
+ (id)_taskFromSession:(id)a3 request:(id)a4 activity:(id)a5;
+ (id)defaultSession;
+ (id)imageSession;
+ (id)loggingOnlySession;
+ (id)loggingOnlySessionUsing:(id)a3;
+ (id)minimalSession;
+ (id)minimalSessionUsing:(id)a3;
- (AMSRequestEncoding)requestEncoder;
- (AMSResponseDecoding)responseDecoder;
- (AMSURLHandling)protocolHandler;
- (AMSURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (BOOL)_protocolHandler:(id)a3 canUseAlternateImplementationOfSelector:(SEL)a4;
- (NSURLSessionDelegate)delegate;
- (id)_createSharedDataForTask:(id)a3 properties:(id)a4 completionHandler:(id)a5;
- (id)_formatError:(id)a3 task:(id)a4 decodedObject:(id)a5;
- (id)_handleURLAction:(id)a3 task:(id)a4 contiguousActionIdentifier:(unint64_t)a5;
- (id)_prepareRequest:(id)a3 logUUID:(id)a4;
- (id)_reconfigureNewRequest:(id)a3 originalTask:(id)a4 protocolHandler:(id)a5 redirect:(BOOL)a6;
- (id)_retryTask:(id)a3 action:(id)a4;
- (id)dataTaskPromiseWithRequest:(id)a3 activity:(id)a4;
- (id)dataTaskPromiseWithRequestPromise:(id)a3 activity:(id)a4;
- (id)dataTaskWithRequest:(id)a3 signpostID:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_completeTaskWithTaskInfo:(id)a3 result:(id)a4 decodedObject:(id)a5 error:(id)a6;
- (void)createDataTaskWithRequest:(id)a3 signpostID:(unint64_t)a4 activity:(id)a5 dataTaskCreationCompletionHandler:(id)a6 requestCompletionHandler:(id)a7;
- (void)dealloc;
- (void)invalidateAndCancel;
- (void)setDelegate:(id)a3;
- (void)setProtocolHandler:(id)a3;
- (void)setRequestEncoder:(id)a3;
- (void)setResponseDecoder:(id)a3;
@end

@implementation AMSURLSession

+ (id)minimalSession
{
  swift_getObjCClassMetadata();
  v2 = static AMSURLSession.minimal()();

  return v2;
}

- (void)dealloc
{
  v3 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_INFO, "AMSURLSession: dealloc", buf, 2u);
  }

  [(AMSURLDelegateProxy *)self->_delegateProxy invalidate];
  [(NSURLSession *)self->_session invalidateAndCancel];
  v5.receiver = self;
  v5.super_class = AMSURLSession;
  [(AMSURLSession *)&v5 dealloc];
}

- (AMSRequestEncoding)requestEncoder
{
  os_unfair_lock_lock_with_options();
  v3 = self->_requestEncoder;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

- (AMSURLHandling)protocolHandler
{
  os_unfair_lock_lock_with_options();
  v3 = self->_protocolHandler;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

uint64_t __37__AMSURLSession_sharedAuthKitSession__block_invoke()
{
  qword_1ED6E3228 = objc_alloc_init(MEMORY[0x1E698DCC8]);

  return MEMORY[0x1EEE66BB8]();
}

+ (AKAppleIDSession)sharedAuthKitSession
{
  if (qword_1ED6E3220 != -1)
  {
    dispatch_once(&qword_1ED6E3220, &__block_literal_global_18_3);
  }

  v3 = qword_1ED6E3228;

  return v3;
}

+ (id)minimalSessionUsing:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AMSURLSession.minimalSession(using:)(v4);

  return v5;
}

- (NSURLSessionDelegate)delegate
{
  v2 = [(AMSURLSession *)self delegateProxy];
  v3 = [v2 delegate];

  return v3;
}

- (AMSResponseDecoding)responseDecoder
{
  os_unfair_lock_lock_with_options();
  v3 = self->_responseDecoder;
  os_unfair_lock_unlock(&self->_propertiesLock);

  return v3;
}

+ (id)defaultSession
{
  if (_MergedGlobals_159 != -1)
  {
    dispatch_once(&_MergedGlobals_159, &__block_literal_global_148);
  }

  v3 = qword_1ED6E3208;

  return v3;
}

uint64_t __31__AMSURLSession_defaultSession__block_invoke()
{
  qword_1ED6E3208 = objc_alloc_init(AMSURLSession);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)loggingOnlySession
{
  swift_getObjCClassMetadata();
  v2 = static AMSURLSession.loggingOnly()();

  return v2;
}

+ (id)loggingOnlySessionUsing:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AMSURLSession.loggingOnlySession(using:)(v4);

  return v5;
}

- (AMSURLSession)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = AMSURLSession;
  v11 = [(AMSURLSession *)&v31 init];
  if (v11)
  {
    if (!v8)
    {
      v12 = MEMORY[0x1E695AC80];
      v13 = +[AMSProcessInfo currentProcess];
      v8 = [v12 ams_configurationWithProcessInfo:v13 bag:0];

      [v8 set_systemClientOfPrivateAccessTokens:1];
    }

    objc_storeStrong(&v11->_configuration, v8);
    if (+[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests") || +[AMSUnitTests isRunningPerformanceTests])
    {
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      v15 = [(NSURLSessionConfiguration *)v11->_configuration protocolClasses];
      v16 = [v14 initWithArray:v15];

      [v16 insertObject:objc_opt_class() atIndex:0];
      [(NSURLSessionConfiguration *)v11->_configuration setProtocolClasses:v16];
    }

    v17 = [[AMSURLDelegateProxy alloc] initWithSession:v11 delegate:v9];
    delegateProxy = v11->_delegateProxy;
    v11->_delegateProxy = v17;

    if (v10)
    {
      v19 = v10;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    }

    delegateQueue = v11->_delegateQueue;
    v11->_delegateQueue = v19;

    [(NSOperationQueue *)v11->_delegateQueue setMaxConcurrentOperationCount:1];
    v21 = objc_alloc_init(AMSURLProtocolHandler);
    protocolHandler = v11->_protocolHandler;
    v11->_protocolHandler = v21;

    [(AMSURLHandling *)v11->_protocolHandler setSession:v11];
    v23 = objc_alloc_init(AMSURLResponseDecoder);
    responseDecoder = v11->_responseDecoder;
    v11->_responseDecoder = v23;

    v25 = MEMORY[0x1E695AC78];
    v26 = v11->_delegateProxy;
    v27 = [(AMSURLSession *)v11 delegateQueue];
    v28 = [v25 sessionWithConfiguration:v8 delegate:v26 delegateQueue:v27];
    session = v11->_session;
    v11->_session = v28;

    v11->_useFallbackBag = 1;
    v11->_propertiesLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

+ (id)imageSession
{
  if (qword_1ED6E3210 != -1)
  {
    dispatch_once(&qword_1ED6E3210, &__block_literal_global_16_1);
  }

  v3 = qword_1ED6E3218;

  return v3;
}

void __29__AMSURLSession_imageSession__block_invoke()
{
  v0 = [AMSURLSession alloc];
  v3 = [MEMORY[0x1E695AC80] ams_imageConfiguration];
  v1 = [(AMSURLSession *)v0 initWithConfiguration:v3];
  v2 = qword_1ED6E3218;
  qword_1ED6E3218 = v1;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLSession *)self delegateProxy];
  [v5 setDelegate:v4];
}

- (void)setProtocolHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [v4 setSession:self];
  protocolHandler = self->_protocolHandler;
  self->_protocolHandler = v4;

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (void)setRequestEncoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  requestEncoder = self->_requestEncoder;
  self->_requestEncoder = v4;

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (void)setResponseDecoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  responseDecoder = self->_responseDecoder;
  self->_responseDecoder = v4;

  os_unfair_lock_unlock(&self->_propertiesLock);
}

- (void)invalidateAndCancel
{
  [(AMSURLSession *)self setInvalidated:1];
  v3 = [(AMSURLSession *)self session];
  [v3 getAllTasksWithCompletionHandler:&__block_literal_global_22_2];
}

void __36__AMSURLSession_invalidateAndCancel__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [AMSURLTaskInfo taskInfoForTask:v12];
  v16 = objc_alloc_init(AMSMutablePromise);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v42[3] = &unk_1E73BD528;
  v17 = v15;
  v43 = v17;
  v18 = v13;
  v44 = v18;
  v45 = self;
  v19 = v12;
  v47 = v16;
  v48 = a2;
  v46 = v19;
  v20 = v16;
  v21 = [v17 startContiguousAsyncActionWithInitialBlock:v42];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_129;
  v35[3] = &unk_1E73BD618;
  v35[4] = self;
  v22 = v17;
  v40 = v21;
  v41 = a2;
  v36 = v22;
  v37 = v11;
  v38 = v19;
  v39 = v18;
  v23 = v18;
  v24 = v19;
  v25 = v11;
  v26 = [(AMSMutablePromise *)v20 thenWithBlock:v35];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_144;
  v29[3] = &unk_1E73BD668;
  v30 = v22;
  v31 = self;
  v33 = v21;
  v34 = a2;
  v32 = v14;
  v27 = v14;
  v28 = v22;
  [v26 addFinishBlock:v29];
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) properties];
  v5 = [v4 logUUID];
  v6 = AMSSetLogKey(v5);

  [*(v3 + 32) setResponse:*(v3 + 40)];
  v7 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [*(v3 + 32) properties];
    v11 = [v10 logUUID];
    *buf = 138543618;
    v77 = v9;
    v78 = 2114;
    v79 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task received response", buf, 0x16u);
  }

  has_internal_content = os_variant_has_internal_content();
  v13 = +[AMSLogConfig sharedConfigOversize];
  v14 = v13;
  if (has_internal_content)
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = [*(v3 + 32) properties];
      v18 = [v17 logUUID];
      v19 = [*(v3 + 40) ams_allHeaderFields];
      *buf = 138543874;
      v77 = v16;
      v78 = 2114;
      v79 = v18;
      v80 = 2114;
      v81 = v19;
      v20 = v15;
      v21 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&dword_192869000, v20, v21, "%{public}@: [%{public}@] Response headers: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v17 = [*(v3 + 32) properties];
      v18 = [v17 logUUID];
      v19 = [*(v3 + 40) ams_allHeaderFields];
      *buf = 138543874;
      v77 = v22;
      v78 = 2114;
      v79 = v18;
      v80 = 2114;
      v81 = v19;
      v20 = v15;
      v21 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }

  v23 = [*(v3 + 48) protocolHandler];

  if (v23)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_25;
    aBlock[3] = &unk_1E73BD4D8;
    v24 = *(v3 + 56);
    aBlock[4] = *(v3 + 48);
    v72 = v24;
    v26 = *(v3 + 64);
    v25 = *(v3 + 72);
    v74 = a2;
    v75 = v25;
    v73 = v26;
    v27 = _Block_copy(aBlock);
    v28 = [*(v3 + 48) protocolHandler];
    v29 = objc_opt_respondsToSelector();

    v30 = [*(v3 + 48) protocolHandler];
    if (v29)
    {
      v31 = *(v3 + 56);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_50;
      v67[3] = &unk_1E73BD500;
      v32 = *(v3 + 40);
      v68 = *(v3 + 32);
      v70 = a2;
      v69 = v27;
      [v30 handleResponse:v32 task:v31 completionHandler:v67];

      v33 = v68;
    }

    else
    {
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = +[AMSLogConfig sharedURLLoadingConfig];
        if (!v37)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = AMSLogKey();
          v40 = MEMORY[0x1E696AEC0];
          v41 = objc_opt_class();
          if (v39)
          {
            v42 = AMSLogKey();
            v66 = NSStringFromSelector(*(v3 + 72));
            [v40 stringWithFormat:@"%@: [%@] %@ ", v41, v42, v66];
          }

          else
          {
            v42 = NSStringFromSelector(*(v3 + 72));
            [v40 stringWithFormat:@"%@: %@ ", v41, v42];
          }
          v43 = ;
          v59 = NSStringFromSelector(sel_handleResponse_task_);
          v60 = NSStringFromSelector(sel_handleResponse_task_completionHandler_);
          *buf = 138543874;
          v77 = v43;
          v78 = 2114;
          v79 = v59;
          v80 = 2114;
          v81 = v60;
          _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@ is deprecated. Use %{public}@ instead.", buf, 0x20u);
          if (v39)
          {

            v43 = v66;
          }
        }

        v61 = [*(v3 + 48) protocolHandler];
        v33 = [v61 handleResponse:*(v3 + 40) task:*(v3 + 56)];
      }

      else
      {
        v44 = +[AMSUnitTests isRunningUnitTests];
        v45 = +[AMSLogConfig sharedURLLoadingConfig];
        v46 = v45;
        if (v44)
        {
          if (!v45)
          {
            v46 = +[AMSLogConfig sharedConfig];
          }

          v47 = [v46 OSLogObject];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = AMSLogKey();
            v49 = MEMORY[0x1E696AEC0];
            v50 = objc_opt_class();
            if (v48)
            {
              v51 = AMSLogKey();
              v3 = NSStringFromSelector(*(v3 + 72));
              [v49 stringWithFormat:@"%@: [%@] %@ ", v50, v51, v3];
            }

            else
            {
              v51 = NSStringFromSelector(*(v3 + 72));
              [v49 stringWithFormat:@"%@: %@ ", v50, v51];
            }
            v52 = ;
            v62 = NSStringFromProtocol(&unk_1F077C400);
            v63 = NSStringFromSelector(sel_handleResponse_task_completionHandler_);
            *buf = 138543874;
            v77 = v52;
            v78 = 2114;
            v79 = v62;
            v80 = 2114;
            v81 = v63;
            _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_ERROR, "%{public}@%{public}@ is a required method on %{public}@ and must be implemented.", buf, 0x20u);
            if (v48)
            {

              v52 = v3;
            }
          }

          v46 = [MEMORY[0x1E696AD88] defaultCenter];
          v53 = +[AMSLogConfig sharedURLLoadingConfig];
          [v46 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v53 userInfo:0];
        }

        else
        {
          if (!v45)
          {
            v46 = +[AMSLogConfig sharedConfig];
          }

          v53 = [v46 OSLogObject];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            v54 = AMSLogKey();
            v55 = MEMORY[0x1E696AEC0];
            v56 = objc_opt_class();
            if (v54)
            {
              v57 = AMSLogKey();
              v3 = NSStringFromSelector(*(v3 + 72));
              [v55 stringWithFormat:@"%@: [%@] %@ ", v56, v57, v3];
            }

            else
            {
              v57 = NSStringFromSelector(*(v3 + 72));
              [v55 stringWithFormat:@"%@: %@ ", v56, v57];
            }
            v58 = ;
            v64 = NSStringFromProtocol(&unk_1F077C400);
            v65 = NSStringFromSelector(sel_handleResponse_task_completionHandler_);
            *buf = 138543874;
            v77 = v58;
            v78 = 2114;
            v79 = v64;
            v80 = 2114;
            v81 = v65;
            _os_log_impl(&dword_192869000, v53, OS_LOG_TYPE_FAULT, "%{public}@%{public}@ is a required method on %{public}@ and must be implemented.", buf, 0x20u);
            if (v54)
            {

              v58 = v3;
            }
          }
        }

        v33 = +[AMSURLAction proceedAction];
      }

      (*(v27 + 2))(v27, v33);
    }
  }

  else
  {
    v34 = *(v3 + 64);
    v35 = [[AMSPair alloc] initWithFirst:&unk_1F0779B20 second:0];
    [v34 finishWithResult:v35];
  }
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 actionType] == 0;
    v6 = [*(a1 + 32) _handleURLAction:v4 task:*(a1 + 40) contiguousActionIdentifier:*(a1 + 56)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
    v10[3] = &unk_1E73BD4B0;
    v7 = *(a1 + 64);
    v10[4] = *(a1 + 32);
    v12 = v7;
    v11 = *(a1 + 48);
    v13 = v5;
    [v6 addFinishBlock:v10];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [[AMSPair alloc] initWithFirst:&unk_1F0779B20 second:0];
    [v8 finishWithResult:v9];
  }
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = 0x1E73B0000uLL;
  if (v7)
  {
    v9 = +[AMSUnitTests isRunningUnitTests];
    v10 = +[AMSLogConfig sharedURLLoadingConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = v15;
        if (v13)
        {
          v3 = AMSLogKey();
          [v14 stringWithFormat:@"%@: [%@] ", v16, v3];
        }

        else
        {
          [v14 stringWithFormat:@"%@: ", v15];
        }
        v17 = ;
        v24 = AMSLogableError(v7);
        *buf = 138543618;
        v41 = v17;
        v42 = 2114;
        v43 = v24;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error occurred when handling action. error = %{public}@", buf, 0x16u);
        if (v13)
        {

          v17 = v3;
        }
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = +[AMSLogConfig sharedURLLoadingConfig];
      [v11 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v18 userInfo:0];
    }

    else
    {
      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v11 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = AMSLogKey();
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = v21;
        if (v19)
        {
          v3 = AMSLogKey();
          [v20 stringWithFormat:@"%@: [%@] ", v22, v3];
        }

        else
        {
          [v20 stringWithFormat:@"%@: ", v21];
        }
        v23 = ;
        v25 = AMSLogableError(v7);
        *buf = 138543618;
        v41 = v23;
        v42 = 2114;
        v43 = v25;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error occurred when handling action. error = %{public}@", buf, 0x16u);
        if (v19)
        {

          v23 = v3;
        }
      }
    }
  }

  v26 = [v6 second];
  if (v26)
  {
    v27 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v39 = v6;
      v29 = AMSLogKey();
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      if (v29)
      {
        v32 = AMSLogKey();
        v8 = NSStringFromSelector(*(a1 + 48));
        [v30 stringWithFormat:@"%@: [%@] %@ ", v31, v32, v8];
      }

      else
      {
        v32 = NSStringFromSelector(*(a1 + 48));
        [v30 stringWithFormat:@"%@: %@ ", v31, v32];
      }
      v33 = ;
      v34 = AMSLogableError(v26);
      *buf = 138543618;
      v41 = v33;
      v42 = 2114;
      v43 = v34;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error occurred when handling URL action. error = %{public}@", buf, 0x16u);
      if (v29)
      {

        v33 = v8;
      }

      v6 = v39;
    }
  }

  v35 = *(a1 + 40);
  v36 = [AMSPair alloc];
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v38 = [(AMSPair *)v36 initWithFirst:v37 second:v26];
  [v35 finishWithResult:v38];
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_51;
  v8[3] = &unk_1E73B4378;
  v9 = v4;
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  [v9 continueContiguousAsyncActionWithIdentifier:v5 block:v8];
}

uint64_t __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_51(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  v3 = [v2 logUUID];
  v4 = AMSSetLogKey(v3);

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

id __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_129(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = [v4 integerValue];

  v6 = [v3 second];

  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = [*(a1 + 32) delegateQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_130;
  v27[3] = &unk_1E73BD5A0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  v28 = v9;
  v35 = v10;
  v11 = v6;
  v12 = *(a1 + 32);
  v29 = v11;
  v30 = v12;
  v13 = *(a1 + 80);
  v36 = v5;
  v37 = v13;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v34 = v7;
  v14 = v7;
  [v8 addOperationWithBlock:v27];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3_141;
  v21[3] = &unk_1E73BD5F0;
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  v22 = v15;
  v23 = v16;
  v17 = *(a1 + 80);
  v25 = *(a1 + 72);
  v26 = v17;
  v24 = v11;
  v18 = v11;
  v19 = [(AMSMutablePromise *)v14 thenWithBlock:v21];

  return v19;
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_130(uint64_t a1)
{
  v2 = *(a1 + 88);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3;
  v9[3] = &unk_1E73BD578;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 104);
  v15 = *(a1 + 96);
  v16 = v5;
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v11 = v8;
  v10 = v7;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  [v3 continueContiguousAsyncActionWithIdentifier:v2 block:v9];
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  v3 = [v2 logUUID];
  v4 = AMSSetLogKey(v3);

  if (*(a1 + 40) || *(a1 + 88) != 1)
  {
    v19 = *(a1 + 80);
    v20 = [AMSPair alloc];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 88)];
    v26 = v21;
    v22 = *(a1 + 40);
    v23 = v20;
  }

  else
  {
    v5 = [*(a1 + 48) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [AMSDeallocGuard alloc];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4;
      v30[3] = &unk_1E73B40A8;
      v8 = *(a1 + 96);
      v30[4] = *(a1 + 48);
      v30[5] = v8;
      v9 = [(AMSDeallocGuard *)v7 initWithDeallocGuardBlock:v30];
      v10 = [[AMSMutablePromise alloc] initWithTimeout:10.0];
      v11 = [*(a1 + 48) delegate];
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_134;
      v27[3] = &unk_1E73BD550;
      v28 = v9;
      v29 = v10;
      v15 = v10;
      v16 = v9;
      [v11 URLSession:v12 dataTask:v13 didReceiveResponse:v14 completionHandler:v27];

      v17 = *(a1 + 80);
      v18 = [(AMSMutablePromise *)v15 continueWithBlock:&__block_literal_global_139_0];
      [v17 finishWithPromise:v18];

      return;
    }

    v19 = *(a1 + 80);
    v25 = [AMSPair alloc];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 88)];
    v26 = v21;
    v23 = v25;
    v22 = 0;
  }

  v24 = [(AMSPair *)v23 initWithFirst:v21 second:v22];
  [v19 finishWithResult:v24];
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedURLLoadingConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      if (v6)
      {
        v9 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: [%@] %@ ", v8, v9, a1];
      }

      else
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: %@ ", v8, v9];
      }
      v10 = ;
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v6)
      {

        v10 = a1;
      }
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[AMSLogConfig sharedURLLoadingConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      if (v12)
      {
        v15 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a1];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      *buf = 138543362;
      v18 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_FAULT, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v12)
      {

        v16 = a1;
      }
    }
  }
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_134(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 finishWithResult:v5];
}

id __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_136(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[AMSPair alloc] initWithFirst:v5 second:v4];

  v7 = [AMSPromise promiseWithResult:v6];

  return v7;
}

AMSMutablePromise *__74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3_141(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = [v4 integerValue];

  v6 = [v3 second];

  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = a1[4];
  v9 = a1[7];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4_142;
  v17[3] = &unk_1E73BD5C8;
  v18 = v8;
  v19 = v6;
  v10 = a1[6];
  v20 = a1[5];
  v11 = a1[8];
  v23 = v5;
  v24 = v11;
  v21 = v10;
  v12 = v7;
  v22 = v12;
  v13 = v6;
  [v18 continueContiguousAsyncActionWithIdentifier:v9 block:v17];
  v14 = v22;
  v15 = v12;

  return v12;
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4_142(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) properties];
  v4 = [v3 logUUID];
  v5 = AMSSetLogKey(v4);

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) error];

    if (v6)
    {
      v7 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = AMSLogKey();
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        if (v9)
        {
          v12 = AMSLogKey();
          v1 = NSStringFromSelector(*(a1 + 80));
          [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v1];
        }

        else
        {
          v12 = NSStringFromSelector(*(a1 + 80));
          [v10 stringWithFormat:@"%@: %@ ", v11, v12];
        }
        v13 = ;
        v15 = [*(a1 + 32) error];
        v16 = AMSLogableError(v15);
        v17 = AMSLogableError(*(a1 + 56));
        *buf = 138543874;
        v21 = v13;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = v17;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Error occurred when getting URLSessionResponseDisposition, but taskInfo already had an error set. taskInfoError = %{public}@ | receivedError = %{public}@", buf, 0x20u);

        if (v9)
        {

          v13 = v1;
        }
      }
    }

    [*(a1 + 32) setError:*(a1 + 40)];
    if (*(a1 + 72) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 72);
    }
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v18 = *(a1 + 64);
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  [v18 finishWithResult:v19];
}

void __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_145;
  v15[3] = &unk_1E73BD640;
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v18 = *(a1 + 40);
  v21 = v7;
  v20 = v10;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v19 = v11;
  v22 = v12;
  v13 = v6;
  v14 = v5;
  [v9 continueContiguousAsyncActionWithIdentifier:v8 block:v15];
}

uint64_t __74__AMSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_145(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) integerValue];
  if (*(a1 + 40))
  {
    v3 = +[AMSUnitTests isRunningUnitTests];
    v4 = +[AMSLogConfig sharedURLLoadingConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = AMSLogKey();
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        if (v7)
        {
          v10 = AMSLogKey();
          v1 = NSStringFromSelector(*(a1 + 72));
          [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v1];
        }

        else
        {
          v10 = NSStringFromSelector(*(a1 + 72));
          [v8 stringWithFormat:@"%@: %@ ", v9, v10];
        }
        v11 = ;
        v18 = AMSLogableError(*(a1 + 40));
        *buf = 138543618;
        v22 = v11;
        v23 = 2114;
        v24 = v18;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error occurred when handling NSURLSessionResponseDisposition. Defaulting to cancelling the request. error = %{public}@.", buf, 0x16u);
        if (v7)
        {

          v11 = v1;
        }
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = +[AMSLogConfig sharedURLLoadingConfig];
      [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v12 userInfo:0];
    }

    else
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v5 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        if (v13)
        {
          v16 = AMSLogKey();
          v1 = NSStringFromSelector(*(a1 + 72));
          [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v16, v1];
        }

        else
        {
          v16 = NSStringFromSelector(*(a1 + 72));
          [v14 stringWithFormat:@"%@: %@ ", v15, v16];
        }
        v17 = ;
        v19 = AMSLogableError(*(a1 + 40));
        *buf = 138543618;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error occurred when handling NSURLSessionResponseDisposition. Defaulting to cancelling the request. error = %{public}@.", buf, 0x16u);
        if (v13)
        {

          v17 = v1;
        }
      }
    }
  }

  (*(*(a1 + 64) + 16))();
  return [*(a1 + 56) finishContiguousAsyncActionWithIdentifier:*(a1 + 80)];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [AMSURLTaskInfo taskInfoForTask:v8];
  [v10 appendData:v9];
  v11 = [(AMSURLSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSURLSession *)self delegate];
    [v13 URLSession:v14 dataTask:v8 didReceiveData:v9];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [AMSURLTaskInfo taskInfoForTask:v8];
  [v10 setMetrics:v9];
  v11 = [(AMSURLSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSURLSession *)self delegate];
    [v13 URLSession:v14 task:v8 didFinishCollectingMetrics:v9];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v31 = [AMSURLTaskInfo taskInfoForTask:v10];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__75;
  v47 = __Block_byref_object_dispose__75;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v13 = [v11 protectionSpace];
  v14 = [v13 authenticationMethod];
  v15 = [v14 isEqualToString:*MEMORY[0x1E695AB80]];

  if (v15 && os_variant_has_internal_content() && (+[AMSDefaults QAMode](AMSDefaults, "QAMode") || +[AMSDefaults ignoreServerTrustEvaluation](AMSDefaults, "ignoreServerTrustEvaluation") || +[AMSDefaults ss_ignoreServerTrustEvaluation]))
  {
    v16 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [v31 properties];
      v20 = [v19 logUUID];
      *buf = 138543618;
      v50 = v18;
      v51 = 2114;
      v52 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring server trust", buf, 0x16u);
    }

    v21 = [MEMORY[0x1E695AC48] credentialForTrust:{objc_msgSend(v13, "serverTrust")}];
    v22 = v44[5];
    v44[5] = v21;

    v40[3] = 0;
  }

  v23 = v40[3];
  if (v23 != 1)
  {
    goto LABEL_15;
  }

  v24 = [(AMSURLSession *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if ((v25 & 1) == 0)
  {
    v23 = v40[3];
LABEL_15:
    v12[2](v12, v23, v44[5]);
    goto LABEL_16;
  }

  v26 = [AMSDeallocGuard alloc];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __71__AMSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  v38[3] = &unk_1E73B40A8;
  v38[4] = self;
  v38[5] = a2;
  v27 = [(AMSDeallocGuard *)v26 initWithDeallocGuardBlock:v38];
  v28 = [(AMSURLSession *)self delegate];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__AMSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_155;
  v33[3] = &unk_1E73BD690;
  v36 = &v43;
  v37 = &v39;
  v35 = v12;
  v29 = v27;
  v34 = v29;
  [v28 URLSession:v32 didReceiveChallenge:v11 completionHandler:v33];

LABEL_16:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

void __71__AMSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedURLLoadingConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      if (v6)
      {
        v9 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: [%@] %@ ", v8, v9, a1];
      }

      else
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: %@ ", v8, v9];
      }
      v10 = ;
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v6)
      {

        v10 = a1;
      }
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[AMSLogConfig sharedURLLoadingConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      if (v12)
      {
        v15 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a1];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      *buf = 138543362;
      v18 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_FAULT, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v12)
      {

        v16 = a1;
      }
    }
  }
}

void __71__AMSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_155(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 56) + 8) + 24) = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [AMSURLTaskInfo taskInfoForTask:v14];
  [v18 setOriginalResponse:v15];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v25[3] = &unk_1E73BD780;
  v26 = v18;
  v27 = self;
  v28 = v16;
  v29 = v14;
  v30 = v13;
  v31 = v15;
  v32 = v17;
  v33 = a2;
  v19 = v17;
  v20 = v15;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  v24 = v18;
  [v24 startContiguousAsyncActionWithInitialBlock:v25];
}

void __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) properties];
  v5 = [v4 logUUID];
  v6 = AMSSetLogKey(v5);

  v7 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [*(a1 + 32) properties];
    v11 = [v10 logUUID];
    v12 = [*(a1 + 48) URL];
    v13 = AMSLogableURL(v12);
    *buf = 138543874;
    v34 = v9;
    v35 = 2114;
    v36 = v11;
    v37 = 2114;
    v38 = v13;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task redirecting to URL: %{public}@", buf, 0x20u);
  }

  v14 = [*(a1 + 40) protocolHandler];
  v15 = [*(a1 + 40) _reconfigureNewRequest:*(a1 + 48) originalTask:*(a1 + 56) protocolHandler:v14 redirect:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_157;
  v26[3] = &unk_1E73BD708;
  v20 = *(a1 + 32);
  v16 = v20.i64[0];
  v27 = vextq_s8(v20, v20, 8uLL);
  v17 = *(a1 + 88);
  v31 = a2;
  v32 = v17;
  v28 = *(a1 + 64);
  v29 = *(a1 + 56);
  v30 = *(a1 + 72);
  v18 = [v15 thenWithBlock:v26];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2_163;
  v21[3] = &unk_1E73BD758;
  v22 = *(a1 + 32);
  v25 = a2;
  v19 = *(a1 + 80);
  v23 = *(a1 + 40);
  v24 = v19;
  [v18 addFinishBlock:v21];
}

AMSMutablePromise *__89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_157(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) delegateQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
  v18[3] = &unk_1E73BD578;
  v6 = *(a1 + 40);
  v7 = *(a1 + 80);
  v24 = *(a1 + 72);
  v25 = v7;
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 32);
  v17 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v19 = v17;
  v20 = v11;
  v21 = *(a1 + 64);
  v22 = v3;
  v12 = v4;
  v23 = v12;
  v13 = v3;
  [v5 addOperationWithBlock:v18];

  v14 = v23;
  v15 = v12;

  return v12;
}

void __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3;
  v9[3] = &unk_1E73BD6E0;
  v3 = *(a1 + 88);
  v14 = *(a1 + 96);
  v8 = *(a1 + 40);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  [v2 continueContiguousAsyncActionWithIdentifier:v3 block:v9];
}

void __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [AMSDeallocGuard alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_4;
    v23[3] = &unk_1E73B40A8;
    v5 = *(a1 + 80);
    v23[4] = *(a1 + 32);
    v23[5] = v5;
    v6 = [(AMSDeallocGuard *)v4 initWithDeallocGuardBlock:v23];
    v7 = [[AMSMutablePromise alloc] initWithTimeout:10.0];
    v8 = [*(a1 + 32) delegate];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_160;
    v20 = &unk_1E73BD6B8;
    v21 = v7;
    v22 = v6;
    v13 = v6;
    v14 = v7;
    [v8 URLSession:v9 task:v10 willPerformHTTPRedirection:v11 newRequest:v12 completionHandler:&v17];

    [*(a1 + 72) finishWithPromise:{v14, v17, v18, v19, v20}];
  }

  else
  {
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);

    [v15 finishWithResult:v16];
  }
}

void __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedURLLoadingConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      if (v6)
      {
        v9 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: [%@] %@ ", v8, v9, a1];
      }

      else
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        [v7 stringWithFormat:@"%@: %@ ", v8, v9];
      }
      v10 = ;
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v6)
      {

        v10 = a1;
      }
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[AMSLogConfig sharedURLLoadingConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      if (v12)
      {
        v15 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a1];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 40));
        [v13 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      *buf = 138543362;
      v18 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_FAULT, "%{public}@Completion handler not called.", buf, 0xCu);
      if (v12)
      {

        v16 = a1;
      }
    }
  }
}

uint64_t __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_160(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) finishWithResult:a2];
  v3 = *(a1 + 40);

  return [v3 invalidate];
}

void __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2_163(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3_164;
  v14[3] = &unk_1E73BD730;
  v15 = v5;
  v8 = *(a1 + 56);
  v18 = *(a1 + 48);
  v13 = *(a1 + 32);
  v9 = v13.i64[0];
  v16 = vextq_s8(v13, v13, 8uLL);
  v10 = *(a1 + 56);
  v17 = v6;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  [v7 continueContiguousAsyncActionWithIdentifier:v8 block:v14];
}

uint64_t __89__AMSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3_164(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);
  }

  else
  {
    v3 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = [*(a1 + 48) properties];
      v7 = [v6 logUUID];
      v8 = AMSLogableError(*(a1 + 56));
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to redirect. Error = %{public}@", &v10, 0x20u);
    }

    [*(a1 + 48) setError:*(a1 + 56)];
    v2 = *(*(a1 + 64) + 16);
  }

  v2();
  return [*(a1 + 48) finishContiguousAsyncActionWithIdentifier:*(a1 + 72)];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [AMSURLTaskInfo taskInfoForTask:v8];
  v11 = [(AMSURLSession *)self protocolHandler];
  if (!v10)
  {
    v15 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = [0 properties];
      v19 = [v18 logUUID];
      v20 = AMSLogableError(v9);
      *buf = 138543874;
      v32 = v17;
      v33 = 2114;
      v34 = v19;
      v35 = 2114;
      v36 = v20;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping completion - no task info. error = %{public}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v12 = [v10 receivedAction];
  v13 = [v12 actionType];

  if (v13)
  {
    v14 = v13 == 3;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v21 = +[AMSLogConfig sharedURLLoadingConfig];
    v15 = v21;
    if (!v21)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = [v10 properties];
      v24 = [v23 logUUID];
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping completion", buf, 0x16u);
    }

LABEL_16:

    goto LABEL_17;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke;
  v25[3] = &unk_1E73BD8C0;
  v26 = v10;
  v27 = self;
  v28 = v8;
  v29 = v9;
  v30 = a2;
  [v26 startContiguousAsyncActionWithInitialDataBlock:v25];

  v15 = v26;
LABEL_17:
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) properties];
  v7 = [v6 logUUID];
  v8 = AMSSetLogKey(v7);

  v9 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = [*(a1 + 32) properties];
    v13 = [v12 logUUID];
    [*(a1 + 48) originalRequest];
    v14 = a2;
    v16 = v15 = v5;
    v17 = AMSLogableURLRequest(v16);
    *buf = 138543874;
    v80 = v11;
    v81 = 2114;
    v82 = v13;
    v83 = 2114;
    v84 = v17;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task finished loading for URL request %{public}@", buf, 0x20u);

    v5 = v15;
    a2 = v14;
  }

  v18 = [*(a1 + 32) error];
  v19 = v18;
  if (!v18)
  {
    v19 = *(a1 + 56);
  }

  v20 = v19;

  v21 = [*(a1 + 40) protocolHandler];
  v22 = objc_alloc_init(AMSMutablePromise);
  if (!v20 && v21 && [v5 length])
  {
    if ([*(a1 + 40) _protocolHandler:v21 canUseAlternateImplementationOfSelector:sel_decodeMutableData_task_error_] && objc_msgSend(*(a1 + 40), "_protocolHandler:canUseAlternateImplementationOfSelector:", v21, sel_decodeData_task_error_))
    {
      v23 = [*(a1 + 40) protocolHandler];
      v24 = *(a1 + 48);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_168;
      v75[3] = &unk_1E73BD7A8;
      v76 = *(a1 + 32);
      v78 = a2;
      v77 = v22;
      [v23 decodeMutableData:v5 task:v24 completionHandler:v75];

      v25 = v76;
    }

    else
    {
      v58 = v5;
      v27 = [*(a1 + 40) protocolHandler];
      v28 = objc_opt_respondsToSelector();

      v29 = [*(a1 + 40) protocolHandler];
      v30 = v29;
      v31 = *(a1 + 48);
      if (v28)
      {
        v74 = 0;
        v32 = &v74;
        v33 = [v29 decodeMutableData:v58 task:v31 error:&v74];
      }

      else
      {
        v73 = 0;
        v32 = &v73;
        v33 = [v29 decodeData:v58 task:v31 error:&v73];
      }

      v34 = v33;
      v35 = *v32;

      if (v35 || !v34)
      {
        if (v35)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@". Error: %@", v35];
        }

        else
        {
          v36 = &stru_1F071BA78;
        }

        v37 = +[AMSLogConfig sharedURLLoadingConfig];
        if (!v37)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v56 = v37;
        log = [v37 OSLogObject];
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v36;
          v53 = [*(a1 + 32) properties];
          v38 = [v53 logUUID];
          v52 = MEMORY[0x1E696AEC0];
          v39 = objc_opt_class();
          v40 = v39;
          v54 = v38;
          if (v38)
          {
            v38 = [*(a1 + 32) properties];
            v51 = [v38 logUUID];
            [v52 stringWithFormat:@"%@: [%@] ", v40, v51];
          }

          else
          {
            [v52 stringWithFormat:@"%@: ", v39];
          }
          v41 = ;
          *buf = 138543618;
          v80 = v41;
          v81 = 2114;
          v82 = v55;
          _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_DEFAULT, "%{public}@Protocol skipping data decoding%{public}@", buf, 0x16u);
          if (v54)
          {

            v41 = v38;
          }

          v36 = v55;
        }

        v34 = 0;
      }

      v42 = *(a1 + 32);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_177;
      v69[3] = &unk_1E73B71B0;
      v70 = v35;
      v71 = v34;
      v72 = v22;
      v25 = v34;
      v43 = v35;
      [v42 continueContiguousAsyncActionWithIdentifier:a2 block:v69];

      v5 = v58;
    }
  }

  else
  {
    v26 = *(a1 + 32);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_179;
    v67[3] = &unk_1E73B3680;
    v68 = v22;
    [v26 continueContiguousAsyncActionWithIdentifier:a2 block:v67];
    v25 = v68;
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_3;
  v59[3] = &unk_1E73BD898;
  v44 = *(a1 + 32);
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  v60 = v44;
  v61 = v45;
  v47 = v46;
  v48 = *(a1 + 64);
  v65 = a2;
  v66 = v48;
  v62 = v47;
  v63 = v20;
  v64 = v21;
  v49 = v21;
  v50 = v20;
  [(AMSPromise *)v22 addFinishBlock:v59];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_168(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2;
  v11[3] = &unk_1E73B71B0;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 continueContiguousAsyncActionWithIdentifier:v7 block:v11];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (a1[5])
  {
    v2 = a1[4];

    [v2 finishWithResult:0 error:?];
  }

  else
  {
    v4 = [[AMSOptional alloc] initWithValue:a1[6]];
    [v1 finishWithResult:v4 error:a1[5]];
  }
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_177(uint64_t a1)
{
  v2 = [AMSPromiseResult alloc];
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = [(AMSPromiseResult *)v2 initWithResult:0 error:?];
  }

  else
  {
    v5 = [[AMSOptional alloc] initWithValue:*(a1 + 40)];
    v6 = [(AMSPromiseResult *)v3 initWithResult:v5 error:*(a1 + 32)];

    v4 = v6;
  }

  v7 = v4;
  [*(a1 + 48) finishWithPromiseResult:v4];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_179(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AMSOptional optionalWithNil];
  [v1 finishWithResult:v2];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = buf;
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 assertIsOnPrivateQueue];
  v9 = [v8 value];

  v10 = 0x1E73B0000;
  if (v6)
  {
    v11 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v65 = v9;
    v13 = v6;
    v14 = [*(a1 + 32) properties];
    v15 = [v14 logUUID];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = v17;
    if (v15)
    {
      v5 = [*(a1 + 32) properties];
      v10 = [v5 logUUID];
      [v16 stringWithFormat:@"%@: [%@] ", v18, v10];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v17];
    }
    v19 = ;
    *buf = 138543618;
    v78 = v19;
    v79 = 2114;
    v80 = v13;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@Object decoding failed. Continuing request completion handling without object. error = %{public}@", buf, 0x16u);
    if (v15)
    {

      v19 = v5;
    }

    v6 = v13;
    goto LABEL_17;
  }

  if (v9)
  {
    goto LABEL_19;
  }

  v11 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v65 = 0;
    v20 = [*(a1 + 32) properties];
    v21 = [v20 logUUID];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = v23;
    if (v21)
    {
      v9 = [*(a1 + 32) properties];
      v10 = [v9 logUUID];
      [v22 stringWithFormat:@"%@: [%@] ", v24, v10];
    }

    else
    {
      [v22 stringWithFormat:@"%@: ", v23];
    }
    v25 = ;
    *buf = 138543362;
    v78 = v25;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Object decoding produced no object. Continuing request completion handling without object.", buf, 0xCu);
    if (v21)
    {

      v25 = v9;
    }

    v6 = 0;
LABEL_17:
    v9 = v65;
  }

LABEL_18:

LABEL_19:
  v26 = [*(a1 + 40) protocolHandler];
  v27 = objc_opt_respondsToSelector();

  v28 = &unk_193016000;
  if (v27)
  {
    v29 = objc_alloc_init(AMSMutablePromise);
    v30 = [*(a1 + 40) protocolHandler];
    v31 = *(a1 + 48);
    v32 = [*(a1 + 32) metrics];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_181;
    v73[3] = &unk_1E73BD7D0;
    v33 = *(a1 + 32);
    v34 = *(a1 + 72);
    v74 = v33;
    v76 = v34;
    v35 = v29;
    v75 = v35;
    [v30 handleCompletionWithTask:v31 metrics:v32 decodedObject:v9 completionHandler:v73];

    v36 = v75;
    v37 = v35;

    v38 = v37;
  }

  else
  {
    v39 = +[AMSUnitTests isRunningUnitTests];
    v40 = +[AMSLogConfig sharedURLLoadingConfig];
    v41 = v40;
    if (v39)
    {
      if (!v40)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v63 = v6;
        v43 = AMSLogKey();
        v44 = MEMORY[0x1E696AEC0];
        v45 = objc_opt_class();
        if (v43)
        {
          v46 = AMSLogKey();
          v39 = NSStringFromSelector(*(a1 + 80));
          [v44 stringWithFormat:@"%@: [%@] %@ ", v45, v46, v39];
        }

        else
        {
          v46 = NSStringFromSelector(*(a1 + 80));
          [v44 stringWithFormat:@"%@: %@ ", v45, v46];
        }
        v47 = ;
        v54 = NSStringFromProtocol(&unk_1F077C400);
        v55 = NSStringFromSelector(sel_handleCompletionWithTask_metrics_decodedObject_completionHandler_);
        *buf = 138543874;
        v78 = v47;
        v79 = 2114;
        v80 = v54;
        v81 = 2114;
        v82 = v55;
        _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_ERROR, "%{public}@%{public}@ is a required method on %{public}@ and must be implemented.", buf, 0x20u);
        if (v43)
        {

          v47 = v39;
        }

        v6 = v63;
        v28 = &unk_193016000;
      }

      v41 = [MEMORY[0x1E696AD88] defaultCenter];
      v48 = +[AMSLogConfig sharedURLLoadingConfig];
      [v41 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v48 userInfo:0];
    }

    else
    {
      if (!v40)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v48 = [v41 OSLogObject];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        v64 = v6;
        v49 = AMSLogKey();
        v50 = MEMORY[0x1E696AEC0];
        v51 = objc_opt_class();
        if (v49)
        {
          v52 = AMSLogKey();
          v39 = NSStringFromSelector(*(a1 + 80));
          [v50 stringWithFormat:@"%@: [%@] %@ ", v51, v52, v39];
        }

        else
        {
          v52 = NSStringFromSelector(*(a1 + 80));
          [v50 stringWithFormat:@"%@: %@ ", v51, v52];
        }
        v53 = ;
        v56 = NSStringFromProtocol(&unk_1F077C400);
        v57 = NSStringFromSelector(sel_handleCompletionWithTask_metrics_decodedObject_completionHandler_);
        *buf = 138543874;
        v78 = v53;
        v79 = 2114;
        v80 = v56;
        v81 = 2114;
        v82 = v57;
        _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_FAULT, "%{public}@%{public}@ is a required method on %{public}@ and must be implemented.", buf, 0x20u);
        if (v49)
        {

          v53 = v39;
        }

        v6 = v64;
        v28 = &unk_193016000;
      }
    }

    v37 = +[AMSOptional optionalWithNil];
    v38 = [AMSPromise promiseWithResult:v37];
  }

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = v28[267];
  v67[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_183;
  v67[3] = &unk_1E73BD870;
  *&v58 = *(a1 + 32);
  *(&v58 + 1) = *(a1 + 40);
  v66 = v58;
  v59 = *(a1 + 48);
  v72 = *(a1 + 72);
  v60 = *(a1 + 56);
  *&v61 = v59;
  *(&v61 + 1) = v60;
  v68 = v66;
  v69 = v61;
  v70 = *(a1 + 64);
  v71 = v9;
  v62 = v9;
  [v38 addSuccessBlock:v67];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_181(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_182;
  v7[3] = &unk_1E73B3DE0;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 continueContiguousAsyncActionWithIdentifier:v4 block:v7];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_182(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[AMSOptional alloc] initWithValue:*(a1 + 40)];
  [v1 finishWithResult:v2];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_183(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 assertIsOnPrivateQueue];
  v5 = [v4 value];

  v6 = [*(a1 + 32) properties];
  v7 = [v6 logUUID];

  if (v5)
  {
    v8 = [*(a1 + 40) _handleURLAction:v5 task:*(a1 + 48) contiguousActionIdentifier:*(a1 + 80)];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_184;
    v33[3] = &unk_1E73B5838;
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v34 = v9;
    v35 = v10;
    v36 = v7;
    v11 = [v8 thenWithBlock:v33];
  }

  else
  {
    v12 = [AMSPair alloc];
    v13 = [(AMSPair *)v12 initWithFirst:MEMORY[0x1E695E118] second:*(a1 + 56)];
    v11 = [AMSPromise promiseWithResult:v13];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_185;
  v27[3] = &unk_1E73BD820;
  v14 = *(a1 + 32);
  v15 = *(a1 + 80);
  v28 = v14;
  v32 = v15;
  v29 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 40);
  v30 = v16;
  v31 = v17;
  v18 = [v11 thenWithBlock:v27];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_5;
  v22[3] = &unk_1E73BD848;
  v19 = *(a1 + 32);
  v26 = *(a1 + 80);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v23 = v19;
  v24 = v20;
  v25 = v21;
  [v18 addFinishBlock:v22];
}

id __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_184(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 first];
  v5 = [v3 second];

  if (v5)
  {
    v6 = v5;
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 48);
      v11 = AMSLogableError(v6);
      v18 = 138543874;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Protocol completed with error. %{public}@", &v18, 0x20u);
    }
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v12 = [v4 actionType] == 3 || objc_msgSend(v4, "actionType") == 0;
  v13 = [AMSPair alloc];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v15 = [(AMSPair *)v13 initWithFirst:v14 second:v6];
  v16 = [AMSPromise promiseWithResult:v15];

  return v16;
}

AMSMutablePromise *__54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_186;
  v13[3] = &unk_1E73BD6E0;
  v14 = v3;
  v15 = v5;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v7 = v4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v10 = v3;
  [v15 continueContiguousAsyncActionWithIdentifier:v6 block:v13];
  v11 = v7;

  return v7;
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_2_186(uint64_t a1)
{
  v2 = [*(a1 + 32) first];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 32) second];
  [*(a1 + 40) setError:v4];
  v5 = [*(a1 + 40) properties];
  v6 = [v5 account];
  v7 = [v6 ams_isEphemeralAccount];

  if (v7 & 1) == 0 && *(a1 + 48) && (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 40) createMetricsContextForDecodedObject:*(a1 + 56)];
    [*(a1 + 48) reportMetricsForContext:v8];
  }

  if (v3)
  {
    if (!v4)
    {
      v9 = [AMSURLResult URLResultPromiseWithTaskInfo:*(a1 + 40) object:*(a1 + 56)];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_3_190;
      v12[3] = &unk_1E73BD7F8;
      v10 = *(a1 + 40);
      v11 = *(a1 + 72);
      v17 = *(a1 + 80);
      v13 = v10;
      v14 = v11;
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      [v9 addFinishBlock:v12];

      goto LABEL_9;
    }

    [*(a1 + 72) _completeTaskWithTaskInfo:*(a1 + 40) result:0 decodedObject:*(a1 + 56) error:v4];
  }

  [*(a1 + 64) finishWithResult:MEMORY[0x1E695E118]];
LABEL_9:
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_3_190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_4;
  v8[3] = &unk_1E73B7138;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v6 = v3;
  [v5 continueContiguousAsyncActionWithIdentifier:v4 block:v8];
}

uint64_t __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _completeTaskWithTaskInfo:*(a1 + 40) result:*(a1 + 48) decodedObject:*(a1 + 56) error:0];
  v2 = *(a1 + 64);
  v3 = MEMORY[0x1E695E118];

  return [v2 finishWithResult:v3];
}

void __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_6;
  v15[3] = &unk_1E73B9D88;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v16 = v5;
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v20 = v11;
  v21 = v12;
  v13 = v6;
  v14 = v5;
  [v8 continueContiguousAsyncActionWithIdentifier:v10 block:v15];
}

uint64_t __54__AMSURLSession_URLSession_task_didCompleteWithError___block_invoke_6(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v3 = +[AMSUnitTests isRunningUnitTests];
    v4 = +[AMSLogConfig sharedURLLoadingConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = AMSLogKey();
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = v9;
        if (v7)
        {
          v1 = AMSLogKey();
          [v8 stringWithFormat:@"%@: [%@] ", v10, v1];
        }

        else
        {
          [v8 stringWithFormat:@"%@: ", v9];
        }
        v11 = ;
        v18 = AMSLogableError(*(a1 + 48));
        *buf = 138543618;
        v22 = v11;
        v23 = 2114;
        v24 = v18;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error occurred when handling completed task. error = %{public}@", buf, 0x16u);
        if (v7)
        {

          v11 = v1;
        }
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = +[AMSLogConfig sharedURLLoadingConfig];
      [v5 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v12 userInfo:0];
    }

    else
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v5 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = v15;
        if (v13)
        {
          v1 = AMSLogKey();
          [v14 stringWithFormat:@"%@: [%@] ", v16, v1];
        }

        else
        {
          [v14 stringWithFormat:@"%@: ", v15];
        }
        v17 = ;
        v19 = AMSLogableError(*(a1 + 48));
        *buf = 138543618;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error occurred when handling completed task. error = %{public}@", buf, 0x16u);
        if (v13)
        {

          v17 = v1;
        }
      }
    }
  }

  [AMSURLTaskInfo removeTaskInfoForTask:*(a1 + 56)];
  return [*(a1 + 64) finishContiguousAsyncActionWithIdentifier:*(a1 + 72)];
}

- (void)createDataTaskWithRequest:(id)a3 signpostID:(unint64_t)a4 activity:(id)a5 dataTaskCreationCompletionHandler:(id)a6 requestCompletionHandler:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v48 = a5;
  v13 = a6;
  v47 = a7;
  v14 = [(AMSURLSession *)self protocolHandler];
  v15 = +[AMSLogConfig sharedURLLoadingConfig];
  v16 = v15;
  if (!v15)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  v18 = os_signpost_enabled(v17);
  if (a4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  if (!v15)
  {
  }

  if (v19)
  {
    v20 = +[AMSLogConfig sharedURLLoadingConfig];
    v21 = v20;
    if (!v20)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    a4 = os_signpost_id_make_with_pointer(v22, v12);

    if (!v20)
    {
    }

    v23 = +[AMSLogConfig sharedURLLoadingConfig];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 OSLogObject];
    }

    else
    {
      v26 = +[AMSLogConfig sharedConfig];
      v25 = [v26 OSLogObject];
    }

    if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v27 = [v12 URL];
      *buf = 138543362;
      v57 = v27;
      _os_signpost_emit_with_name_impl(&dword_192869000, v25, OS_SIGNPOST_INTERVAL_BEGIN, a4, "URL Data Task", "%{public}@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v12 properties];
  }

  else
  {
    v29 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v57 = v31;
      v58 = 2114;
      v59 = v32;
      _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Falling back to default properties since we don't have an AMSURLRequest", buf, 0x16u);
    }

    v28 = objc_alloc_init(AMSURLRequestProperties);
    if ([(AMSURLSession *)self useFallbackBag])
    {
      v33 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = [(AMSURLRequestProperties *)v28 logUUID];
        *buf = 138543618;
        v57 = v35;
        v58 = 2114;
        v59 = v36;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Warning: falling back to default properties (this may cause an additional bag load)", buf, 0x16u);
      }

      v37 = +[AMSURLRequestEncoder bagSubProfile];
      v38 = +[AMSURLRequestEncoder bagSubProfileVersion];
      v39 = [AMSBag bagForProfile:v37 profileVersion:v38];
      [(AMSURLRequestProperties *)v28 setBag:v39];
    }
  }

  v40 = [(AMSURLRequestProperties *)v28 logUUID];
  v41 = [(AMSURLSession *)self _prepareRequest:v12 logUUID:v40];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke;
  v49[3] = &unk_1E73BD960;
  v49[4] = self;
  v50 = v48;
  v54 = v13;
  v55 = a4;
  v51 = v28;
  v52 = v14;
  v53 = v47;
  v42 = v13;
  v43 = v14;
  v44 = v28;
  v45 = v48;
  v46 = v47;
  [v41 addFinishBlock:v49];
}

void __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) session];
    v8 = [v6 _taskFromSession:v7 request:v5 activity:*(a1 + 40)];

    v9 = [*(a1 + 32) _createSharedDataForTask:v8 properties:*(a1 + 48) completionHandler:*(a1 + 64)];
    [v9 setSignpostID:*(a1 + 80)];
    if (*(a1 + 56))
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_2;
      v12[3] = &unk_1E73BD938;
      v13 = v9;
      v10 = v8;
      v11 = *(a1 + 32);
      v14 = v10;
      v15 = v11;
      v16 = *(a1 + 48);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v17 = *(a1 + 56);
      v18 = v5;
      [v13 startContiguousAsyncActionWithInitialBlock:v12];
    }
  }
}

void __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) properties];
  v5 = [v4 logUUID];
  v6 = AMSSetLogKey(v5);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E73BD910;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v26 = a2;
  v19 = *(a1 + 48);
  v9 = *(&v19 + 1);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v23 = v19;
  v22 = v10;
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v11 = _Block_copy(aBlock);
  v12 = [*(a1 + 48) _protocolHandler:*(a1 + 64) canUseAlternateImplementationOfSelector:sel_didCreateTask_fromRequest_error_];
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  if (v12)
  {
    [v14 didCreateTask:v13 fromRequest:v15 completionHandler:v11];
  }

  else
  {
    v20 = 0;
    [v14 didCreateTask:v13 fromRequest:v15 error:&v20];
    v16 = v20;
    if (v16)
    {
      v17 = 0;
      v18 = v16;
    }

    else
    {
      v17 = 1;
      v18 = 0;
    }

    (v11)[2](v11, v17, v18);
  }
}

void __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 80);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_4;
  v17[3] = &unk_1E73BD8E8;
  v9 = v7;
  v16 = *(a1 + 48);
  v10 = v16.i64[1];
  v11.i64[0] = v6;
  v11.i64[1] = v9;
  v19 = vextq_s8(v16, v11, 8uLL);
  v18 = vextq_s8(v11, v16, 8uLL);
  v20 = v5;
  v21 = *(a1 + 64);
  v24 = a2;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v22 = v12;
  v23 = v13;
  v14 = v5;
  v15 = v6;
  [v9 continueContiguousAsyncActionWithIdentifier:v8 block:v17];
}

uint64_t __122__AMSURLSession_createDataTaskWithRequest_signpostID_activity_dataTaskCreationCompletionHandler_requestCompletionHandler___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) properties];
  v3 = [v2 logUUID];
  v4 = AMSSetLogKey(v3);

  v5 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [*(a1 + 48) logUUID];
    v9 = *(a1 + 56);
    v10 = [*(a1 + 40) session];
    v14 = 138544130;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task created: %{public}@ Session: %{public}@", &v14, 0x2Au);
  }

  if (*(a1 + 64) && (v11 = *(a1 + 72)) != 0)
  {
    (*(v11 + 16))(v11, 0);
  }

  else if (*(a1 + 96) == 1)
  {
    v12 = *(a1 + 80);
    if (v12)
    {
      (*(v12 + 16))(v12, *(a1 + 56));
    }
  }

  return [*(a1 + 32) finishContiguousAsyncActionWithIdentifier:*(a1 + 88)];
}

- (id)dataTaskWithRequest:(id)a3 signpostID:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(AMSMutablePromise);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__AMSURLSession_dataTaskWithRequest_signpostID_activity_completionHandler___block_invoke;
  v22[3] = &unk_1E73B6968;
  v23 = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__AMSURLSession_dataTaskWithRequest_signpostID_activity_completionHandler___block_invoke_2;
  v19[3] = &unk_1E73BD988;
  v20 = v23;
  v21 = v10;
  v14 = v10;
  v15 = v23;
  [(AMSURLSession *)self createDataTaskWithRequest:v12 signpostID:a4 activity:v11 dataTaskCreationCompletionHandler:v22 requestCompletionHandler:v19];

  v16 = [(AMSPromise *)v15 resultWithError:0];
  v17 = [v16 value];

  return v17;
}

void __75__AMSURLSession_dataTaskWithRequest_signpostID_activity_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [AMSOptional optionalWithValue:a2];
  [v2 finishWithResult:v3 error:0 logDuplicateFinishes:0];
}

void __75__AMSURLSession_dataTaskWithRequest_signpostID_activity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = +[AMSOptional optionalWithNil];
    [v6 finishWithResult:v7 error:0 logDuplicateFinishes:0];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

+ (id)_taskFromSession:(id)a3 request:(id)a4 activity:(id)a5
{
  v7 = a5;
  v8 = [a3 dataTaskWithRequest:a4];
  v9 = v8;
  if (v7)
  {
    [v8 set_nw_activity:v7];
  }

  return v9;
}

- (id)dataTaskPromiseWithRequest:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [AMSMutableLazyPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke;
  v13[3] = &unk_1E73BD9B0;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [(AMSMutableLazyPromise *)v8 initWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_210;
    v25[3] = &unk_1E73B6968;
    v26 = v3;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_3;
    v23[3] = &unk_1E73B5BD8;
    v24 = v26;
    [WeakRetained createDataTaskWithRequest:v5 signpostID:0 activity:v6 dataTaskCreationCompletionHandler:v25 requestCompletionHandler:v23];

    v7 = v26;
  }

  else
  {
    v8 = +[AMSUnitTests isRunningUnitTests];
    v9 = +[AMSLogConfig sharedURLLoadingConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = AMSLogKey();
        v15 = [*(a1 + 32) URL];
        v16 = AMSHashIfNeeded(v15);
        *buf = 138543874;
        v28 = v12;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The AMSURLSession used to create this AMSLazyPromise is unexpectedly deallocated. No network request will be attempted. url = %{public}@", buf, 0x20u);
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedURLLoadingConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = AMSLogKey();
        v21 = [*(a1 + 32) URL];
        v22 = AMSHashIfNeeded(v21);
        *buf = 138543874;
        v28 = v18;
        v29 = 2114;
        v30 = v20;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] The AMSURLSession used to create this AMSLazyPromise is unexpectedly deallocated. No network request will be attempted. url = %{public}@", buf, 0x20u);
      }
    }

    v7 = AMSError(0, @"AMSURLSession deallocated prematurely", @"The owning AMSURLSession instance was deallocated before running this associated AMSLazyPromise.", 0);
    [v3 finishWithError:v7];
  }
}

void __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_210(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 resume];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_2;
  v6[3] = &unk_1E73B34B8;
  v7 = v3;
  v5 = v3;
  [v4 addErrorBlock:v6];
}

void __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 ams_isTimeoutError] & 1) != 0 || objc_msgSend(v3, "ams_isUserCancelledError"))
  {
    [*(a1 + 32) cancel];
  }
}

uint64_t __53__AMSURLSession_dataTaskPromiseWithRequest_activity___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

- (id)dataTaskPromiseWithRequestPromise:(id)a3 activity:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AMSURLSession_dataTaskPromiseWithRequestPromise_activity___block_invoke;
  v10[3] = &unk_1E73B45F0;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 thenWithBlock:v10];

  return v8;
}

- (void)_completeTaskWithTaskInfo:(id)a3 result:(id)a4 decodedObject:(id)a5 error:(id)a6
{
  v108 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v86 = a5;
  v12 = a6;
  [v10 assertIsOnPrivateQueue];
  v13 = [v10 task];
  v14 = +[AMSNetworkQualityInquiry sharedInstance];
  v85 = v13;
  [v14 updateLastConnectionReportWithTask:v13];

  v87 = self;
  v15 = [(AMSURLSession *)self responseDecoder];
  v16 = v15;
  if (!v12 && v15)
  {
    v99 = 0;
    v17 = [v15 resultFromResult:v11 error:&v99];
    v18 = v99;

    if (v18 || !v17)
    {
      v19 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = [v10 properties];
        v23 = [v22 logUUID];
        v24 = AMSLogableError(v18);
        *buf = 138544130;
        v101 = v21;
        v102 = 2114;
        v103 = v23;
        v104 = 2114;
        v105 = v17;
        v106 = 2114;
        v107 = v24;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Session decoder failed. Result = %{public}@; Error = %{public}@", buf, 0x2Au);
      }

      v12 = v18;
      v17 = 0;
    }

    else
    {
      v12 = 0;
    }

    v11 = v17;
  }

  v25 = [v10 properties];
  v26 = [v25 responseDecoder];

  if (!v12 && v26)
  {
    v98 = 0;
    v27 = [v26 resultFromResult:v11 error:&v98];
    v28 = v98;

    if (v28 || !v27)
    {
      v29 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = [v10 properties];
        v33 = [v32 logUUID];
        v34 = AMSLogableError(v28);
        *buf = 138544130;
        v101 = v31;
        v102 = 2114;
        v103 = v33;
        v104 = 2114;
        v105 = v27;
        v106 = 2114;
        v107 = v34;
        _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request decoder failed. Result = %{public}@; Error = %{public}@", buf, 0x2Au);
      }

      v12 = v28;
      v27 = 0;
    }

    else
    {
      v12 = 0;
    }

    v11 = v27;
  }

  v35 = &unk_193016000;
  if (os_variant_has_internal_content())
  {
    if (+[AMSProcessInfo hasAMSEntitlement])
    {
      v36 = [v10 properties];
      v37 = [v36 account];
      v38 = [v37 ams_isEphemeralAccount];

      if (v38)
      {
        v96[0] = MEMORY[0x1E69E9820];
        v35 = &unk_193016000;
        v96[1] = 3221225472;
        v96[2] = __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke;
        v96[3] = &unk_1E73B3DE0;
        v96[4] = v87;
        v97 = v10;
        [v97 performAsyncBlock:v96];
        v39 = v97;
      }

      else
      {
        v94[0] = MEMORY[0x1E69E9820];
        v35 = &unk_193016000;
        v94[1] = 3221225472;
        v94[2] = __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke_217;
        v94[3] = &unk_1E73B3DE0;
        v94[4] = v87;
        v95 = v10;
        [v95 performAsyncBlock:v94];
        v39 = v95;
      }
    }

    else
    {
      v40 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v40 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        v43 = [v10 properties];
        v44 = [v43 logUUID];
        *buf = 138543618;
        v101 = v42;
        v102 = 2114;
        v103 = v44;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Warning: missing AMS private entitlement, skipping HAR logging.", buf, 0x16u);

        v35 = &unk_193016000;
      }
    }
  }

  v45 = +[AMSLogConfig sharedURLLoadingConfig];
  v46 = v45;
  if (v12)
  {
    if (!v45)
    {
      v46 = +[AMSLogConfig sharedConfig];
    }

    v47 = [v46 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      [v10 properties];
      v49 = v84 = v10;
      [v49 logUUID];
      v51 = v50 = v35;
      v52 = AMSLogableError(v12);
      *buf = 138543874;
      v101 = v48;
      v102 = 2114;
      v103 = v51;
      v104 = 2114;
      v105 = v52;
      _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Task completed with error = %{public}@", buf, 0x20u);

      v35 = v50;
      v10 = v84;
    }

    v53 = +[AMSLogConfig sharedURLLoadingConfig];
    v54 = v53;
    if (!v53)
    {
      v54 = +[AMSLogConfig sharedConfig];
    }

    v55 = [v54 OSLogObject];
    v56 = os_signpost_enabled(v55);

    if (!v53)
    {
    }

    if (v56)
    {
      v57 = +[AMSLogConfig sharedURLLoadingConfig];
      v58 = v57;
      if (v57)
      {
        v59 = [v57 OSLogObject];
      }

      else
      {
        v71 = +[AMSLogConfig sharedConfig];
        v59 = [v71 OSLogObject];
      }

      v72 = [v10 signpostID];
      if ((v72 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v73 = v72;
        if (os_signpost_enabled(v59))
        {
          v74 = AMSLogableError(v12);
          *buf = 138543362;
          v101 = v74;
          _os_signpost_emit_with_name_impl(&dword_192869000, v59, OS_SIGNPOST_INTERVAL_END, v73, "URL Data Task", "Failed with error: %{public}@", buf, 0xCu);
        }
      }

LABEL_65:
    }
  }

  else
  {
    if (!v45)
    {
      v46 = +[AMSLogConfig sharedConfig];
    }

    v60 = [v46 OSLogObject];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = objc_opt_class();
      v62 = [v10 properties];
      [v62 logUUID];
      v64 = v63 = v35;
      *buf = 138543618;
      v101 = v61;
      v102 = 2114;
      v103 = v64;
      _os_log_impl(&dword_192869000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task completed successfully", buf, 0x16u);

      v35 = v63;
      v12 = 0;
    }

    v65 = +[AMSLogConfig sharedURLLoadingConfig];
    v66 = v65;
    if (!v65)
    {
      v66 = +[AMSLogConfig sharedConfig];
    }

    v67 = [v66 OSLogObject];
    v68 = os_signpost_enabled(v67);

    if (!v65)
    {
    }

    if (v68)
    {
      v69 = +[AMSLogConfig sharedURLLoadingConfig];
      v70 = v69;
      if (v69)
      {
        v59 = [v69 OSLogObject];
      }

      else
      {
        v75 = +[AMSLogConfig sharedConfig];
        v59 = [v75 OSLogObject];
      }

      v76 = [v10 signpostID];
      if ((v76 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v77 = v76;
        if (os_signpost_enabled(v59))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_192869000, v59, OS_SIGNPOST_INTERVAL_END, v77, "URL Data Task", "Succeeded", buf, 2u);
        }
      }

      goto LABEL_65;
    }
  }

  v78 = [(AMSURLSession *)v87 delegateQueue];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = v35[267];
  v88[2] = __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke_219;
  v88[3] = &unk_1E73B7378;
  v88[4] = v87;
  v89 = v85;
  v90 = v12;
  v91 = v11;
  v92 = v86;
  v93 = v10;
  v79 = v10;
  v80 = v86;
  v81 = v11;
  v82 = v12;
  v83 = v85;
  [v78 addOperationWithBlock:v88];
}

void __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) properties];
    v6 = [v5 logUUID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Recording HAR log to ring buffer in progress (needs sysdiagnose or command to save to disk)", &v8, 0x16u);
  }

  v7 = [[AMSHTTPArchiveTaskInfo alloc] initWithURLTaskInfo:*(a1 + 40)];
  [AMSStreamHTTPArchiveEntryController ams_addEntriesForTaskInfo:v7];
}

void __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke_217(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) properties];
    v6 = [v5 logUUID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Recording HAR log.", &v8, 0x16u);
  }

  v7 = [[AMSHTTPArchiveTaskInfo alloc] initWithURLTaskInfo:*(a1 + 40)];
  [AMSHTTPArchiveService recordTrafficWithTaskInfo:v7];
}

void __70__AMSURLSession__completeTaskWithTaskInfo_result_decodedObject_error___block_invoke_219(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) session];
    [v4 URLSession:v5 task:*(a1 + 40) didCompleteWithError:*(a1 + 48)];
  }

  v6 = *(a1 + 48);
  if (v6 || !*(a1 + 56) && (AMSError(0, @"Unknown Error", @"Request finished without a result.", 0), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v9 = [*(a1 + 32) _formatError:v6 task:*(a1 + 40) decodedObject:*(a1 + 64)];
  }

  else
  {
    v9 = 0;
  }

  v8 = [*(a1 + 72) completionBlock];
  (v8)[2](v8, *(a1 + 56), v9);
}

- (id)_createSharedDataForTask:(id)a3 properties:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [AMSURLTaskInfo createTaskInfoForTask:a3];
  [v10 setCompletionBlock:v8];

  [v10 setProperties:v9];
  [v10 setSession:self];

  return v10;
}

- (id)_formatError:(id)a3 task:(id)a4 decodedObject:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 userInfo];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v14 = v13;

  v15 = [v14 objectForKeyedSubscript:@"AMSURL"];

  if (!v15)
  {
    v16 = [v7 response];
    v17 = [v16 URL];
    v18 = [v17 absoluteString];
    [v14 setObject:v18 forKeyedSubscript:@"AMSURL"];
  }

  v19 = [v14 objectForKeyedSubscript:@"AMSStatusCode"];

  if (!v19)
  {
    v20 = MEMORY[0x1E696AD98];
    v21 = [v7 response];
    v22 = [v20 numberWithInteger:{objc_msgSend(v21, "ams_statusCode")}];
    [v14 setObject:v22 forKeyedSubscript:@"AMSStatusCode"];
  }

  v23 = [v14 objectForKeyedSubscript:@"AMSServerPayload"];

  if (!v23)
  {
    [v14 setObject:v8 forKeyedSubscript:@"AMSServerPayload"];
  }

  v24 = [v14 objectForKeyedSubscript:@"AMSServerCorrelationKey"];

  if (!v24)
  {
    v25 = [v7 response];
    v26 = [v25 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
    [v14 setObject:v26 forKeyedSubscript:@"AMSServerCorrelationKey"];
  }

  v27 = [v9 domain];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"AMSErrorDomainWasNil";
  }

  v30 = [v9 code];
  v31 = [v9 ams_title];
  v32 = [v9 ams_message];
  v33 = [v9 ams_underlyingError];

  v34 = AMSCustomCodableError(v29, v30, v31, v32, v14, v33);

  return v34;
}

- (id)_handleURLAction:(id)a3 task:(id)a4 contiguousActionIdentifier:(unint64_t)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [AMSURLTaskInfo taskInfoForTask:v9];
  [v10 assertIsOnPrivateQueue];
  v11 = [v8 actionType];
  v12 = [v8 error];
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    v14 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self;
      v16 = a5;
      v17 = objc_opt_class();
      v28 = [v10 properties];
      v18 = [v28 logUUID];
      *buf = 138543874;
      v38 = v17;
      a5 = v16;
      self = v29;
      v39 = 2114;
      v40 = v18;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling URL action: %{public}@", buf, 0x20u);
    }

    v19 = +[AMSBinaryPromise promiseWithSuccess];
    if ((v13 - 1) >= 2)
    {
      if (v13 == 3)
      {
        [v9 cancel];
      }
    }

    else
    {
      v20 = [(AMSURLSession *)self _retryTask:v9 action:v8];

      v19 = v20;
    }
  }

  else
  {
    v19 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v21 = [v19 promiseAdapter];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__AMSURLSession__handleURLAction_task_contiguousActionIdentifier___block_invoke;
  v30[3] = &unk_1E73BD9D8;
  v31 = v10;
  v32 = v12;
  v35 = a5;
  v36 = v13;
  v33 = v8;
  v34 = v9;
  v22 = v9;
  v23 = v8;
  v24 = v12;
  v25 = v10;
  v26 = [v21 continueWithBlock:v30];

  return v26;
}

AMSMutablePromise *__66__AMSURLSession__handleURLAction_task_contiguousActionIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = *(a1 + 64);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__AMSURLSession__handleURLAction_task_contiguousActionIdentifier___block_invoke_2;
  v19[3] = &unk_1E73BD6E0;
  v20 = v4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v24 = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v21 = v13;
  v22 = v12;
  v14 = v5;
  v23 = v14;
  v15 = v4;
  [v7 continueContiguousAsyncActionWithIdentifier:v6 block:v19];
  v16 = v23;
  v17 = v14;

  return v14;
}

void __66__AMSURLSession__handleURLAction_task_contiguousActionIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v7 = v2;
    v3 = *(a1 + 48);
  }

  else
  {
    v7 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (!v7)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  if (*(a1 + 80) != 3)
  {
    [*(a1 + 56) cancel];
    v4 = [AMSURLAction actionWithError:v7];

    v3 = v4;
  }

LABEL_7:
  [*(a1 + 64) setReceivedAction:v3];
  v5 = *(a1 + 72);
  v6 = [[AMSPair alloc] initWithFirst:v3 second:v7];
  [v5 finishWithResult:v6];
}

- (BOOL)_protocolHandler:(id)a3 canUseAlternateImplementationOfSelector:(SEL)a4
{
  v5 = a3;
  if (v5)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = objc_opt_class();
      v7 = [AMSMethodImplementationCache implementationsOf:a4 areEqualIn:v6 and:objc_opt_class()];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_retryTask:(id)a3 action:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [AMSURLTaskInfo taskInfoForTask:v5];
  v50 = [v7 properties];
  [v7 assertIsOnPrivateQueue];
  [v5 cancel];
  v8 = [AMSURLRequest alloc];
  v9 = [v5 originalRequest];
  v10 = [v9 copy];
  v11 = [(AMSURLRequest *)v8 initWithRequest:v10 properties:v50];

  v12 = [v6 updatedHeaders];
  [(NSMutableURLRequest *)v11 ams_addHeaders:v12];

  v13 = [v6 updatedBody];

  if (v13)
  {
    v14 = [v6 updatedBody];
    [(AMSURLRequest *)v11 setHTTPBody:v14];
  }

  v15 = [v6 updatedMethod];

  if (v15)
  {
    v16 = [v6 updatedMethod];
    [(AMSURLRequest *)v11 setHTTPMethod:v16];
  }

  if ([v6 actionType] == 1 && (objc_msgSend(v6, "redirectURL"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [v6 redirectURL];
    [(AMSURLRequest *)v11 setURL:v18];

    v19 = @"Redirecting";
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v19 = @"Retrying";
  }

  v21 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = [v50 logUUID];
    *buf = 138543874;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v24;
    *&buf[22] = 2114;
    v62 = v19;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ the request...", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v25 = [(AMSURLRequest *)v11 properties];
  v26 = [v25 bag];
  v27 = [v5 response];
  v28 = [AMSPSD2EventTask sendInitialPSD2EventWithAction:v6 bag:v26 originalResponse:v27];

  LOBYTE(v62) = v28;
  v29 = [v6 retryIdentifier];

  if (v29 && ([v7 retryIdentifiers], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "retryIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "containsObject:", v31), v31, v30, (v32 & 1) == 0))
  {
    v33 = [v6 retryIdentifier];
    [v7 addRetryIdentifier:v33];
  }

  else
  {
    [v7 setRetryCount:{objc_msgSend(v7, "retryCount") + 1}];
    if (v20 && [v7 retryCount] >= 1)
    {
      [v7 setRetryCount:0];
    }
  }

  v34 = [v7 retryCount];
  if (v34 <= [v50 maxRetryCount])
  {
    v39 = [(AMSURLSession *)self protocolHandler];
    if (v39)
    {
      v42 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      v43 = [v42 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_opt_class();
        v45 = AMSLogKey();
        *v57 = 138543618;
        v58 = v44;
        v59 = 2114;
        v60 = v45;
        _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Protocol handler reconfigure request", v57, 0x16u);
      }

      v46 = [(AMSURLSession *)self _reconfigureNewRequest:v11 originalTask:v5 protocolHandler:v39 redirect:0];
    }

    else
    {
      v46 = [AMSPromise promiseWithResult:v11];
    }

    v40 = v46;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __35__AMSURLSession__retryTask_action___block_invoke;
    v51[3] = &unk_1E73BDA50;
    v51[4] = self;
    v52 = v7;
    v53 = v5;
    v56 = buf;
    v54 = v6;
    v55 = v11;
    v47 = [v40 thenWithBlock:v51];
    v41 = [v47 binaryPromiseAdapter];
  }

  else
  {
    v35 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = [v50 logUUID];
      *v57 = 138543618;
      v58 = v37;
      v59 = 2114;
      v60 = v38;
      _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Exceeded max retry count", v57, 0x16u);
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task reached max retry count (%ld / %ld)", objc_msgSend(v7, "retryCount") - 1, objc_msgSend(v50, "maxRetryCount")];;
    v40 = AMSError(306, @"Reached max retry count", v39, 0);
    v41 = [AMSBinaryPromise promiseWithError:v40];
  }

  _Block_object_dispose(buf, 8);

  return v41;
}

AMSMutablePromise *__35__AMSURLSession__retryTask_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) signpostID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__AMSURLSession__retryTask_action___block_invoke_2;
  v17[3] = &unk_1E73BDA00;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__AMSURLSession__retryTask_action___block_invoke_3;
  v11[3] = &unk_1E73BDA28;
  v16 = *(a1 + 72);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v7 = v20;
  v14 = v7;
  v15 = *(a1 + 40);
  [v5 createDataTaskWithRequest:v3 signpostID:v6 activity:0 dataTaskCreationCompletionHandler:v17 requestCompletionHandler:v11];

  v8 = v15;
  v9 = v7;

  return v7;
}

void __35__AMSURLSession__retryTask_action___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSURLTaskInfo taskInfoForTask:v3];
  [v4 migrateFromTaskInfo:*(a1 + 32)];
  [AMSURLTaskInfo removeTaskInfoForTask:*(a1 + 40)];
  [v3 resume];

  [*(a1 + 48) finishWithResult:MEMORY[0x1E695E118]];
}

void __35__AMSURLSession__retryTask_action___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) properties];
    v8 = [v7 bag];
    [AMSPSD2EventTask sendRetryResultPSD2EventWithAction:v6 result:v12 error:v5 bag:v8];
  }

  if (v5 && ([*(a1 + 48) isFinished] & 1) == 0)
  {
    v9 = *(a1 + 48);
    v10 = AMSError(313, @"Retry Failed", @"Encountered a <nil> task while redirecting the request", v5);
    [v9 finishWithError:v10];
  }

  v11 = [*(a1 + 56) completionBlock];
  (v11)[2](v11, v12, v5);
}

- (id)_prepareRequest:(id)a3 logUUID:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSLogableURLRequest(v8);
    *buf = 138543874;
    v31 = v11;
    v32 = 2114;
    v33 = v7;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Preparing request: %{public}@", buf, 0x20u);
  }

  if ([(AMSURLSession *)self invalidated])
  {
    v14 = AMSError(6, @"Task Failed", @"Session has been invalidated", 0);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v17 = @"Request is nil";
    goto LABEL_13;
  }

  v14 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v15 = [v8 URL];

  if (!v15)
  {
    v17 = @"Request URL is nil";
LABEL_13:
    v18 = AMSError(2, @"Task Failed", v17, 0);

    v14 = v18;
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_9:
    v16 = [AMSPromise promiseWithError:v14];
    goto LABEL_23;
  }

LABEL_14:
  v19 = [(AMSURLSession *)self requestEncoder];

  if (v19)
  {
    v20 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogableURLRequest(v8);
      *buf = 138543874;
      v31 = v22;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request encoder will encode request %{public}@", buf, 0x20u);
    }

    v24 = [(AMSURLSession *)self requestEncoder];
    v16 = [v24 requestByEncodingRequest:v8 parameters:0];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__AMSURLSession__prepareRequest_logUUID___block_invoke;
    v28[3] = &unk_1E73B32F0;
    v28[4] = self;
    v29 = v7;
    [v16 addErrorBlock:v28];
  }

  else
  {
    v16 = [AMSPromise promiseWithResult:v8];
  }

  if (os_variant_has_internal_content())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __41__AMSURLSession__prepareRequest_logUUID___block_invoke_265;
    v26[3] = &unk_1E73BD6B8;
    v26[4] = self;
    v27 = v7;
    [v16 addSuccessBlock:v26];
  }

LABEL_23:

  return v16;
}

void __41__AMSURLSession__prepareRequest_logUUID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request encoding failed with error: %{public}@", &v9, 0x20u);
  }
}

void __41__AMSURLSession__prepareRequest_logUUID___block_invoke_265(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfigOversize];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = MEMORY[0x1E695DF20];
    v9 = [v3 allHTTPHeaderFields];
    v10 = [v8 dictionaryWithDictionary:v9];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request headers: %{public}@", &v11, 0x20u);
  }
}

- (id)_reconfigureNewRequest:(id)a3 originalTask:(id)a4 protocolHandler:(id)a5 redirect:(BOOL)a6
{
  v6 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [AMSURLTaskInfo taskInfoForTask:v11];
  [v13 assertIsOnPrivateQueue];
  v14 = objc_alloc_init(AMSMutablePromise);
  if ([(AMSURLSession *)self _protocolHandler:v10 canUseAlternateImplementationOfSelector:sel_reconfigureNewRequest_originalTask_redirect_error_])
  {
    v15 = [(AMSPromise *)v14 completionHandlerAdapter];
    [v10 reconfigureNewRequest:v12 originalTask:v11 redirect:v6 completionHandler:v15];
  }

  else
  {
    v16 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v6;
      v18 = AMSLogKey();
      v27 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      v29 = v18;
      if (v18)
      {
        v26 = AMSLogKey();
        [v27 stringWithFormat:@"%@: [%@] ", v20, v26];
      }

      else
      {
        [v27 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      v22 = NSStringFromSelector(sel_reconfigureNewRequest_originalTask_redirect_error_);
      v23 = NSStringFromSelector(sel_reconfigureNewRequest_originalTask_redirect_completionHandler_);
      *buf = 138543874;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@ is deprecated. %{public}@ should be used instead.", buf, 0x20u);
      if (v29)
      {

        v21 = v26;
      }

      v6 = v28;
    }

    v15 = [v12 mutableCopy];
    v30 = 0;
    [v10 reconfigureNewRequest:v15 originalTask:v11 redirect:v6 error:&v30];

    v24 = v30;
    [(AMSMutablePromise *)v14 finishWithResult:v15 error:v24];
  }

  return v14;
}

@end