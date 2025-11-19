@interface NWURLSession
+ (BOOL)isSubclassOfClass:(Class)a3;
+ (id)sessionWithConfiguration:(id)a3;
+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
+ (void)initialize;
- (BOOL)isKindOfClass:(Class)a3;
- (NSOperationQueue)delegateQueue;
- (NSURLSessionConfiguration)configuration;
- (NSURLSessionDelegate)delegate;
- (NWURLSession)initWithConfiguration:(id)a3 UUID:(id)a4 delegate:(id)a5 delegateQueue:(id)a6 delegateDispatchQueue:(id)a7;
- (OS_nw_context)_networkContext;
- (id)_dataTaskWithRequest:(id)a3 delegate:(id)a4;
- (id)_dataTaskWithRequest:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)_dataTaskWithURL:(id)a3 delegate:(id)a4;
- (id)_dataTaskWithURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)_downloadTaskWithRequest:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)_downloadTaskWithResumeData:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)_downloadTaskWithURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)_uploadTaskWithRequest:(id)a3 fromData:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (id)_uploadTaskWithRequest:(id)a3 fromFile:(id)a4 delegate:(id)a5 completionHandler:(id)a6;
- (id)_uploadTaskWithResumeData:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (id)dataTaskWithResumeInfo:(id)a3;
- (id)downloadTaskWithRequest:(id)a3;
- (id)downloadTaskWithResumeData:(id)a3;
- (id)downloadTaskWithResumeInfo:(id)a3;
- (id)downloadTaskWithURL:(id)a3;
- (id)preparedRequestFromRequest:(void *)a3 bodyInfo:;
- (id)streamTaskWithHostName:(id)a3 port:(int64_t)a4;
- (id)streamTaskWithNetService:(id)a3;
- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4;
- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4;
- (id)uploadTaskWithResumeData:(id)a3 completionHandler:(id)a4;
- (id)uploadTaskWithResumeInfo:(id)a3;
- (id)uploadTaskWithStreamedRequest:(id)a3;
- (id)webSocketTaskWithRequest:(id)a3;
- (id)webSocketTaskWithURL:(id)a3 protocols:(id)a4;
- (void)checkForCompletion;
- (void)finishTasksAndInvalidate;
- (void)flushWithCompletionHandler:(id)a3;
- (void)getAllTasksWithCompletionHandler:(id)a3;
- (void)getTasksWithCompletionHandler:(id)a3;
- (void)invalidateAndCancel;
- (void)resetWithCompletionHandler:(id)a3;
- (void)taskCompleted:(os_unfair_lock_s *)a1;
- (void)taskStarted:(os_unfair_lock_s *)a1;
- (void)teardownAllConnections;
- (void)withLock:(os_unfair_lock_s *)a1;
@end

@implementation NWURLSession

+ (void)initialize
{
  if (initialize_onceToken[0] != -1)
  {
    dispatch_once(initialize_onceToken, &__block_literal_global_46728);
  }
}

void __26__NWURLSession_initialize__block_invoke()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  addCategories(v0, v1);
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  addCategories(v2, v3);
}

- (void)checkForCompletion
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 24));
    if (*(a1 + 28) == 1)
    {
      v11 = *(a1 + 104);
      v2 = [v11 anyObject];
      if (v2)
      {
      }

      else
      {
        v3 = [*(a1 + 112) count];

        if (!v3)
        {
          v4 = *(a1 + 160);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __34__NWURLSession_checkForCompletion__block_invoke;
          v16[3] = &unk_1E6A3D868;
          v16[4] = a1;
          nw_queue_context_async_if_needed(v4, v16);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v13 = __34__NWURLSession_checkForCompletion__block_invoke_2;
          v14 = &unk_1E6A3D868;
          v15 = a1;
          v5 = v12;
          v6 = *(a1 + 136);
          *(a1 + 136) = 0;

          if (*(a1 + 36))
          {
            IONotificationPortSetDispatchQueue(*(a1 + 128), 0);
            if (*(a1 + 40))
            {
              notifier = *(a1 + 40);
              *(a1 + 40) = 0;
              v7 = IODeregisterForSystemPower(&notifier);
              if (v7)
              {
                v8 = v7;
                if (__nwlog_url_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                }

                v9 = gurlLogObj;
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  v19 = v8;
                  _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "Failed to deregister power notifications: %d", buf, 8u);
                }
              }
            }

            IOServiceClose(*(a1 + 36));
            *(a1 + 36) = 0;
            v10 = *(a1 + 128);
            if (v10)
            {
              IONotificationPortDestroy(v10);
              *(a1 + 128) = 0;
            }

            dispatch_async(*(a1 + 144), v5);
          }

          else
          {
            (v13)(v5);
          }
        }
      }
    }
  }
}

- (OS_nw_context)_networkContext
{
  if (self)
  {
    self = self->_context;
  }

  return self;
}

- (id)downloadTaskWithResumeInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionDownloadTask created with nil resume info" userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__46581;
  v22 = __Block_byref_object_dispose__46582;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__NWURLSession_downloadTaskWithResumeInfo___block_invoke;
  v15[3] = &unk_1E6A3BE58;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [(NWURLSession *)self withLock:v15];
  v6 = v19[5];
  if (v6)
  {
    v7 = 248;
    if (!*(v6 + 248))
    {
      v7 = 240;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = v19[5];
      v11 = [(NWURLSessionDelegateWrapper *)v8 delegateFor_didCreateTask];
      [v11 URLSession:v8[5] didCreateTask:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __43__NWURLSession_downloadTaskWithResumeInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionDownloadTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v20);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = [*(a1 + 40) currentRequest];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 144);
  }

  else
  {
    v6 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v4 queue:v6];

  v7 = [[NWURLSessionResponseConsumerDownload alloc] initWithResumeInfo:0 completionHandler:?];
  v8 = [NWURLSessionDownloadTask alloc];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v8->super.super.isa initWithResumeInfo:v9 identifier:v11 session:v12];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 48) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
    v17 = *(*(*(a1 + 48) + 8) + 40);
    if (v17)
    {
      objc_storeStrong((v17 + 440), v7);
    }
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 104);
  }

  else
  {
    v19 = 0;
  }

  [v19 addObject:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)withLock:(os_unfair_lock_s *)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock(a1 + 6);
    v3[2]();
    os_unfair_lock_unlock(a1 + 6);
  }
}

- (id)uploadTaskWithResumeInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionUploadTask created with nil resume info" userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__46581;
  v22 = __Block_byref_object_dispose__46582;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__NWURLSession_uploadTaskWithResumeInfo___block_invoke;
  v15[3] = &unk_1E6A3BE58;
  v15[4] = self;
  v17 = &v18;
  v5 = v4;
  v16 = v5;
  [(NWURLSession *)self withLock:v15];
  v6 = v19[5];
  if (v6)
  {
    v7 = 248;
    if (!*(v6 + 248))
    {
      v7 = 240;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = v19[5];
      v11 = [(NWURLSessionDelegateWrapper *)v8 delegateFor_didCreateTask];
      [v11 URLSession:v8[5] didCreateTask:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __41__NWURLSession_uploadTaskWithResumeInfo___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 28) == 1)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionUploadTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v17);
  }

  v3 = [NWURLSessionUploadTask alloc];
  v5 = a1[4];
  v4 = a1[5];
  if (v5)
  {
    v6 = *(v5 + 32) + 1;
    *(v5 + 32) = v6;
    v7 = a1[4];
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(NWURLSessionUploadTask *)&v3->super.super.super.isa initWithUploadResumeInfo:v4 identifier:v6 session:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v12 = *(*(a1[6] + 8) + 40);
  if (v12)
  {
    objc_storeStrong((v12 + 440), v11);
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = *(v13 + 104);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(a1[6] + 8) + 40);

  return [v14 addObject:v15];
}

- (id)dataTaskWithResumeInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionDataTask created with nil resume info" userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__46581;
  v22 = __Block_byref_object_dispose__46582;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__NWURLSession_dataTaskWithResumeInfo___block_invoke;
  v15[3] = &unk_1E6A3BE58;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [(NWURLSession *)self withLock:v15];
  v6 = v19[5];
  if (v6)
  {
    v7 = 248;
    if (!*(v6 + 248))
    {
      v7 = 240;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = v19[5];
      v11 = [(NWURLSessionDelegateWrapper *)v8 delegateFor_didCreateTask];
      [v11 URLSession:v8[5] didCreateTask:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __39__NWURLSession_dataTaskWithResumeInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionDataTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v20);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = [*(a1 + 40) currentRequest];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 144);
  }

  else
  {
    v6 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v4 queue:v6];

  v7 = [NWURLSessionDataTask alloc];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 32) + 1;
    *(v9 + 32) = v10;
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  v12 = [(NWURLSessionTask *)&v7->super.super.isa initWithResumeInfo:v8 identifier:v10 session:v11];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (v15)
  {
    objc_storeStrong((v15 + 432), obj);
  }

  v16 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v17 = *(*(*(a1 + 48) + 8) + 40);
  if (v17)
  {
    objc_storeStrong((v17 + 440), v16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 104);
  }

  else
  {
    v19 = 0;
  }

  [v19 addObject:*(*(*(a1 + 48) + 8) + 40)];
}

- (id)_downloadTaskWithResumeData:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionDownloadTask created with nil resume data";
    goto LABEL_13;
  }

  v11 = v10;
  if (!v10)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil completion handler";
LABEL_13:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__46581;
  v36 = __Block_byref_object_dispose__46582;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__NWURLSession__downloadTaskWithResumeData_delegate_completionHandler___block_invoke;
  v27[3] = &unk_1E6A34320;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v13 = v11;
  v30 = v13;
  v31 = &v32;
  v14 = v9;
  v29 = v14;
  [(NWURLSession *)self withLock:v27];
  v15 = v33[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v33[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __71__NWURLSession__downloadTaskWithResumeData_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionDownloadTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v22);
  }

  v3 = [NWURLSessionDownloadResumeInfo infoWithResumeData:*(a1 + 40)];
  if (v3)
  {
    v23 = v3;
    v4 = [NWURLSessionRequestBodyInfo alloc];
    v5 = [v23 currentRequest];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = [(NWURLSessionRequestBodyInfo *)v4 initWithRequest:v5 queue:v7];

    v9 = [[NWURLSessionResponseConsumerDownload alloc] initWithResumeInfo:v23 completionHandler:*(a1 + 56)];
    v10 = [NWURLSessionDownloadTask alloc];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 32) + 1;
      *(v11 + 32) = v12;
      v13 = *(a1 + 32);
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    v14 = [(NWURLSessionTask *)&v10->super.super.isa initWithResumeInfo:v23 identifier:v12 session:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 64) + 8) + 40);
    if (v17 && (objc_storeStrong((v17 + 432), v8), (v18 = *(*(*(a1 + 64) + 8) + 40)) != 0))
    {
      objc_storeStrong((v18 + 440), v9);
      v19 = *(*(*(a1 + 64) + 8) + 40);
    }

    else
    {
      v19 = 0;
    }

    [v19 setDelegate:*(a1 + 48)];
    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = *(v20 + 104);
    }

    else
    {
      v21 = 0;
    }

    [v21 addObject:*(*(*(a1 + 64) + 8) + 40)];

    v3 = v23;
  }
}

- (id)_downloadTaskWithURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil URL";
    goto LABEL_13;
  }

  v11 = v10;
  if (!v10)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil completion handler";
LABEL_13:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__46581;
  v36 = __Block_byref_object_dispose__46582;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__NWURLSession__downloadTaskWithURL_delegate_completionHandler___block_invoke;
  v27[3] = &unk_1E6A34320;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v31 = &v32;
  v13 = v11;
  v30 = v13;
  v14 = v9;
  v29 = v14;
  [(NWURLSession *)self withLock:v27];
  v15 = v33[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v33[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __64__NWURLSession__downloadTaskWithURL_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v18);
  }

  v3 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 40)];
  v19 = [(NWURLSession *)v2 preparedRequestFromRequest:v3 bodyInfo:0];

  v4 = [NWURLSessionDownloadTask alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32) + 1;
    *(v5 + 32) = v6;
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(NWURLSessionTask *)&v4->super.super.isa initWithRequest:v19 identifier:v6 session:v7];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [NWURLSessionResponseConsumerDownload alloc];
  v12 = *(a1 + 56);
  if (v11)
  {
    v20.receiver = v11;
    v20.super_class = NWURLSessionResponseConsumerDownload;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    if (v11)
    {
      v13 = _Block_copy(v12);
      completionHandler = v11->_completionHandler;
      v11->_completionHandler = v13;

      v11->_fd = -1;
    }
  }

  v15 = *(*(*(a1 + 64) + 8) + 40);
  if (v15)
  {
    objc_storeStrong((v15 + 440), v11);
  }

  [*(*(*(a1 + 64) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 64) + 8) + 40) setDelegate:*(a1 + 48)];
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 104);
  }

  else
  {
    v17 = 0;
  }

  [v17 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (id)preparedRequestFromRequest:(void *)a3 bodyInfo:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 96);
    v8 = [v7 HTTPAdditionalHeaders];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52__NWURLSession_preparedRequestFromRequest_bodyInfo___block_invoke;
    v32[3] = &unk_1E6A33448;
    v32[4] = a1;
    v9 = v5;

    v33 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v32];

    v10 = [v9 valueForHTTPHeaderField:@"Host"];

    if (v10)
    {
      [v9 setValue:0 forHTTPHeaderField:@"Host"];
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v11 = gurlLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "HTTP/1-only header field Host should not be set on the request.", buf, 2u);
      }
    }

    v12 = [v9 valueForHTTPHeaderField:@"Connection"];

    if (v12)
    {
      [v9 setValue:0 forHTTPHeaderField:@"Connection"];
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v13 = gurlLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "HTTP/1-only header field Connection should not be set on the request.", buf, 2u);
      }
    }

    v14 = [v9 valueForHTTPHeaderField:@"Transfer-Encoding"];

    if (v14)
    {
      [v9 setValue:0 forHTTPHeaderField:@"Transfer-Encoding"];
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v15 = gurlLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "HTTP/1-only header field Transfer-Encoding should not be set on the request.", buf, 2u);
      }
    }

    v16 = [v9 valueForHTTPHeaderField:@"Upgrade"];

    if (v16)
    {
      [v9 setValue:0 forHTTPHeaderField:@"Upgrade"];
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v17 = gurlLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "HTTP/1-only header field Upgrade should not be set on the request.", buf, 2u);
      }
    }

    if (!v6 || v6[1] != -1)
    {
      if (!v9 || ([v9 HTTPMethod], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "caseInsensitiveCompare:", @"GET"), v18, v19) && (objc_msgSend(v9, "HTTPMethod"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "caseInsensitiveCompare:", @"HEAD"), v26, v27))
      {
        v28 = [v9 valueForHTTPHeaderField:@"Content-Length"];

        if (!v28)
        {
          if (v6)
          {
            v29 = v6[1];
          }

          else
          {
            v29 = 0;
          }

          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v29];
          [v9 setValue:v30 forHTTPHeaderField:@"Content-Length"];
        }
      }
    }

    if (![*(a1 + 96) usesClassicLoadingMode])
    {
      goto LABEL_37;
    }

    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];
    if ([v21 isEqualToString:@"fm.overcast.overcast"])
    {
      v22 = [v9 HTTPMethod];
      if ([v22 isEqualToString:@"POST"])
      {
        v23 = [v9 valueForHTTPHeaderField:@"Content-Type"];

        if (!v23)
        {
          [v9 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    [v9 setHTTPBody:0];
    [v9 setHTTPBodyStream:0];
    v24 = v9;

    goto LABEL_38;
  }

  v24 = 0;
LABEL_38:

  return v24;
}

void __52__NWURLSession_preparedRequestFromRequest_bodyInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [*(a1 + 40) valueForHTTPHeaderField:v9];

    if (!v6)
    {
      [*(a1 + 40) setValue:v5 forHTTPHeaderField:v9];
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7 || ([*(v7 + 96) usesClassicLoadingMode] & 1) == 0)
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionConfiguration.httpAdditionalHeaders keys and values must be strings" userInfo:0];
      objc_exception_throw(v8);
    }
  }
}

- (id)_downloadTaskWithRequest:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 URL];

  if (!v11)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil URL";
    goto LABEL_13;
  }

  if (!v10)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil completion handler";
LABEL_13:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__46581;
  v36 = __Block_byref_object_dispose__46582;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__NWURLSession__downloadTaskWithRequest_delegate_completionHandler___block_invoke;
  v27[3] = &unk_1E6A34320;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v31 = &v32;
  v13 = v10;
  v30 = v13;
  v14 = v9;
  v29 = v14;
  [(NWURLSession *)self withLock:v27];
  v15 = v33[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v33[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __68__NWURLSession__downloadTaskWithRequest_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v24);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionDownloadTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 64) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = [NWURLSessionResponseConsumerDownload alloc];
  v18 = *(a1 + 56);
  if (v17)
  {
    v26.receiver = v17;
    v26.super_class = NWURLSessionResponseConsumerDownload;
    v17 = objc_msgSendSuper2(&v26, sel_init);
    if (v17)
    {
      v19 = _Block_copy(v18);
      completionHandler = v17->_completionHandler;
      v17->_completionHandler = v19;

      v17->_fd = -1;
    }
  }

  v21 = *(*(*(a1 + 64) + 8) + 40);
  if (v21)
  {
    objc_storeStrong((v21 + 440), v17);
  }

  [*(*(*(a1 + 64) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 64) + 8) + 40) setDelegate:*(a1 + 48)];
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(v22 + 104);
  }

  else
  {
    v23 = 0;
  }

  [v23 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (id)_uploadTaskWithResumeData:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionUploadTask created with nil resume data" userInfo:0];
    objc_exception_throw(v23);
  }

  v11 = v10;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__46581;
  v33 = __Block_byref_object_dispose__46582;
  v34 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__NWURLSession__uploadTaskWithResumeData_delegate_completionHandler___block_invoke;
  v24[3] = &unk_1E6A34320;
  v24[4] = self;
  v12 = v8;
  v25 = v12;
  v28 = &v29;
  v13 = v11;
  v27 = v13;
  v14 = v9;
  v26 = v14;
  [(NWURLSession *)self withLock:v24];
  v15 = v30[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v30[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

void __69__NWURLSession__uploadTaskWithResumeData_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionUploadTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v16);
  }

  v3 = [NWURLSessionUploadResumeInfo infoWithResumeData:*(a1 + 40)];
  if (v3)
  {
    v17 = v3;
    v4 = [NWURLSessionUploadTask alloc];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 32) + 1;
      *(v5 + 32) = v6;
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }

    v8 = [(NWURLSessionUploadTask *)&v4->super.super.super.isa initWithUploadResumeInfo:v17 identifier:v6 session:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(a1 + 56))
    {
      v11 = [[NWURLSessionResponseConsumerDataCompletionHandler alloc] initWithCompletionHandler:?];
    }

    else
    {
      v11 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
    }

    v12 = v11;
    v13 = *(*(*(a1 + 64) + 8) + 40);
    if (v13)
    {
      objc_storeStrong((v13 + 440), v11);
    }

    [*(*(*(a1 + 64) + 8) + 40) setDelegate:*(a1 + 48)];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 104);
    }

    else
    {
      v15 = 0;
    }

    [v15 addObject:*(*(*(a1 + 64) + 8) + 40)];
    v3 = v17;
  }
}

- (id)_uploadTaskWithRequest:(id)a3 fromData:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 URL];

  if (!v14)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil URL";
    goto LABEL_15;
  }

  if (!v11)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil bodyData";
    goto LABEL_15;
  }

  if (!v13)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil completion handler";
LABEL_15:
    v30 = [v27 exceptionWithName:v28 reason:v29 userInfo:0];
    objc_exception_throw(v30);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__46581;
  v45 = __Block_byref_object_dispose__46582;
  v46 = 0;
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __75__NWURLSession__uploadTaskWithRequest_fromData_delegate_completionHandler___block_invoke;
  v34 = &unk_1E6A349E8;
  v35 = self;
  v15 = v11;
  v36 = v15;
  v16 = v10;
  v37 = v16;
  v40 = &v41;
  v17 = v13;
  v39 = v17;
  v18 = v12;
  v38 = v18;
  [(NWURLSession *)self withLock:?];
  v19 = v42[5];
  if (v19)
  {
    v20 = 248;
    if (!*(v19 + 248))
    {
      v20 = 240;
    }

    v21 = *(v19 + v20);
    if (v21)
    {
      v22 = v42[5];
      v24 = [(NWURLSessionDelegateWrapper *)v21 delegateFor_didCreateTask];
      [v24 URLSession:v21[5] didCreateTask:{v22, v31, v32, v33, v34, v35, v36, v37}];
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = v42[5];
  _Block_object_dispose(&v41, 8);

  return v25;
}

void __75__NWURLSession__uploadTaskWithRequest_fromData_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v23);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 40);
  if (v3 && (v25.receiver = v3, v25.super_class = NWURLSessionRequestBodyInfo, (v5 = objc_msgSendSuper2(&v25, sel_init)) != 0))
  {
    obj = v5;
    v6 = [v4 _createDispatchData];
    v7 = obj[2];
    obj[2] = v6;

    obj[1] = [v4 length];
  }

  else
  {
    obj = 0;
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 48) mutableCopy];
  v10 = [(NWURLSession *)v8 preparedRequestFromRequest:v9 bodyInfo:obj];

  v11 = [NWURLSessionUploadTask alloc];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 32) + 1;
    *(v12 + 32) = v13;
    v14 = *(a1 + 32);
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  v15 = [(NWURLSessionTask *)&v11->super.super.super.isa initWithRequest:v10 identifier:v13 session:v14];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *(*(*(a1 + 72) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 432), obj);
  }

  v19 = [[NWURLSessionResponseConsumerDataCompletionHandler alloc] initWithCompletionHandler:?];
  v20 = *(*(*(a1 + 72) + 8) + 40);
  if (v20)
  {
    objc_storeStrong((v20 + 440), v19);
  }

  [*(*(*(a1 + 72) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 72) + 8) + 40) setDelegate:*(a1 + 56)];
  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 104);
  }

  else
  {
    v22 = 0;
  }

  [v22 addObject:*(*(*(a1 + 72) + 8) + 40)];
}

- (id)_uploadTaskWithRequest:(id)a3 fromFile:(id)a4 delegate:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 URL];

  if (!v14)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil URL";
    goto LABEL_17;
  }

  if (!v11)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil fileURL";
    goto LABEL_17;
  }

  if (([v11 isFileURL] & 1) == 0)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with invalid fileURL";
    goto LABEL_17;
  }

  if (!v13)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"URLSessionTask created with nil completion handler";
LABEL_17:
    v30 = [v27 exceptionWithName:v28 reason:v29 userInfo:0];
    objc_exception_throw(v30);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__46581;
  v45 = __Block_byref_object_dispose__46582;
  v46 = 0;
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __75__NWURLSession__uploadTaskWithRequest_fromFile_delegate_completionHandler___block_invoke;
  v34 = &unk_1E6A349E8;
  v35 = self;
  v15 = v11;
  v36 = v15;
  v16 = v10;
  v37 = v16;
  v40 = &v41;
  v17 = v13;
  v39 = v17;
  v18 = v12;
  v38 = v18;
  [(NWURLSession *)self withLock:?];
  v19 = v42[5];
  if (v19)
  {
    v20 = 248;
    if (!*(v19 + 248))
    {
      v20 = 240;
    }

    v21 = *(v19 + v20);
    if (v21)
    {
      v22 = v42[5];
      v24 = [(NWURLSessionDelegateWrapper *)v21 delegateFor_didCreateTask];
      [v24 URLSession:v21[5] didCreateTask:{v22, v31, v32, v33, v34, v35, v36, v37}];
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = v42[5];
  _Block_object_dispose(&v41, 8);

  return v25;
}

void __75__NWURLSession__uploadTaskWithRequest_fromFile_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)&v3->super.isa initWithFileURL:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionUploadTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 72) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = [[NWURLSessionResponseConsumerDataCompletionHandler alloc] initWithCompletionHandler:?];
  v18 = *(*(*(a1 + 72) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  [*(*(*(a1 + 72) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 72) + 8) + 40) setDelegate:*(a1 + 56)];
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 72) + 8) + 40)];
}

- (id)_dataTaskWithURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil URL";
    goto LABEL_13;
  }

  v11 = v10;
  if (!v10)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil completion handler";
LABEL_13:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__46581;
  v36 = __Block_byref_object_dispose__46582;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__NWURLSession__dataTaskWithURL_delegate_completionHandler___block_invoke;
  v27[3] = &unk_1E6A34320;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v31 = &v32;
  v13 = v11;
  v30 = v13;
  v14 = v9;
  v29 = v14;
  [(NWURLSession *)self withLock:v27];
  v15 = v33[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v33[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __60__NWURLSession__dataTaskWithURL_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v15);
  }

  v3 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 40)];
  v16 = [(NWURLSession *)v2 preparedRequestFromRequest:v3 bodyInfo:0];

  v4 = [NWURLSessionDataTask alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32) + 1;
    *(v5 + 32) = v6;
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(NWURLSessionTask *)&v4->super.super.isa initWithRequest:v16 identifier:v6 session:v7];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [[NWURLSessionResponseConsumerDataCompletionHandler alloc] initWithCompletionHandler:?];
  v12 = *(*(*(a1 + 64) + 8) + 40);
  if (v12)
  {
    objc_storeStrong((v12 + 440), v11);
  }

  [*(*(*(a1 + 64) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 64) + 8) + 40) setDelegate:*(a1 + 48)];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 104);
  }

  else
  {
    v14 = 0;
  }

  [v14 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (id)_dataTaskWithRequest:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 URL];
  if (v11)
  {
  }

  else if (!self || ([(NSURLSessionConfiguration *)self->_internalConfiguration usesClassicLoadingMode]& 1) == 0)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil URL";
    goto LABEL_18;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  if (!self || ([(NSURLSessionConfiguration *)self->_internalConfiguration usesClassicLoadingMode]& 1) == 0)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = @"URLSessionTask created with nil completion handler";
LABEL_18:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  v10 = &__block_literal_global_79;
LABEL_6:
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__46581;
  v36 = __Block_byref_object_dispose__46582;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__NWURLSession__dataTaskWithRequest_delegate_completionHandler___block_invoke_2;
  v27[3] = &unk_1E6A34320;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v31 = &v32;
  v13 = v10;
  v30 = v13;
  v14 = v9;
  v29 = v14;
  [(NWURLSession *)self withLock:v27];
  v15 = v33[5];
  if (v15)
  {
    v16 = 248;
    if (!*(v15 + 248))
    {
      v16 = 240;
    }

    v17 = *(v15 + v16);
    if (v17)
    {
      v18 = v33[5];
      v20 = [(NWURLSessionDelegateWrapper *)v17 delegateFor_didCreateTask];
      [v20 URLSession:v17[5] didCreateTask:v18];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __64__NWURLSession__dataTaskWithRequest_delegate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionDataTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 64) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = [[NWURLSessionResponseConsumerDataCompletionHandler alloc] initWithCompletionHandler:?];
  v18 = *(*(*(a1 + 64) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  [*(*(*(a1 + 64) + 8) + 40) setPrefersIncrementalDelivery:0];
  [*(*(*(a1 + 64) + 8) + 40) setDelegate:*(a1 + 48)];
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (id)_dataTaskWithURL:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && (!self || ([(NSURLSessionConfiguration *)self->_internalConfiguration usesClassicLoadingMode]& 1) == 0))
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil URL" userInfo:0];
    objc_exception_throw(v18);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__46581;
  v31 = __Block_byref_object_dispose__46582;
  v32 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __42__NWURLSession__dataTaskWithURL_delegate___block_invoke;
  v22 = &unk_1E6A33400;
  v23 = self;
  v8 = v6;
  v24 = v8;
  v26 = &v27;
  v9 = v7;
  v25 = v9;
  [(NWURLSession *)self withLock:?];
  v10 = v28[5];
  if (v10)
  {
    v11 = 248;
    if (!*(v10 + 248))
    {
      v11 = 240;
    }

    v12 = *(v10 + v11);
    if (v12)
    {
      v13 = v28[5];
      v15 = [(NWURLSessionDelegateWrapper *)v12 delegateFor_didCreateTask];
      [v15 URLSession:v12[5] didCreateTask:{v13, v19, v20, v21, v22, v23, v24}];
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v16;
}

void __42__NWURLSession__dataTaskWithURL_delegate___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 28) == 1)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v15);
  }

  v3 = [MEMORY[0x1E695AC18] requestWithURL:a1[5]];
  v16 = [(NWURLSession *)v2 preparedRequestFromRequest:v3 bodyInfo:0];

  v4 = [NWURLSessionDataTask alloc];
  v5 = a1[4];
  if (v5)
  {
    v6 = *(v5 + 32) + 1;
    *(v5 + 32) = v6;
    v7 = a1[4];
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(NWURLSessionTask *)&v4->super.super.isa initWithRequest:v16 identifier:v6 session:v7];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v12 = *(*(a1[7] + 8) + 40);
  if (v12)
  {
    objc_storeStrong((v12 + 440), v11);
  }

  [*(*(a1[7] + 8) + 40) setDelegate:a1[6]];
  v13 = a1[4];
  if (v13)
  {
    v14 = *(v13 + 104);
  }

  else
  {
    v14 = 0;
  }

  [v14 addObject:*(*(a1[7] + 8) + 40)];
}

- (id)_dataTaskWithRequest:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];
  if (v8)
  {
  }

  else if (!self || ([(NSURLSessionConfiguration *)self->_internalConfiguration usesClassicLoadingMode]& 1) == 0)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil URL" userInfo:0];
    objc_exception_throw(v19);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__46581;
  v32 = __Block_byref_object_dispose__46582;
  v33 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __46__NWURLSession__dataTaskWithRequest_delegate___block_invoke;
  v23 = &unk_1E6A33400;
  v24 = self;
  v9 = v6;
  v25 = v9;
  v27 = &v28;
  v10 = v7;
  v26 = v10;
  [(NWURLSession *)self withLock:?];
  v11 = v29[5];
  if (v11)
  {
    v12 = 248;
    if (!*(v11 + 248))
    {
      v12 = 240;
    }

    v13 = *(v11 + v12);
    if (v13)
    {
      v14 = v29[5];
      v16 = [(NWURLSessionDelegateWrapper *)v13 delegateFor_didCreateTask];
      [v16 URLSession:v13[5] didCreateTask:{v14, v20, v21, v22, v23, v24, v25}];
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v17;
}

void __46__NWURLSession__dataTaskWithRequest_delegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionDataTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v18 = *(*(*(a1 + 56) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  [*(*(*(a1 + 56) + 8) + 40) setDelegate:*(a1 + 48)];
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 56) + 8) + 40)];
}

- (id)uploadTaskWithResumeData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil completion handler" userInfo:0];
    objc_exception_throw(v11);
  }

  v8 = v7;
  v9 = [(NWURLSession *)self _uploadTaskWithResumeData:v6 delegate:0 completionHandler:v7];

  return v9;
}

- (id)webSocketTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];

  if (!v5)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"URLSessionTask created with nil URL";
    goto LABEL_13;
  }

  v6 = [v4 URL];
  isWeb = [(NSURL *)v6 _NW_isWebSocket];

  if (!isWeb)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"URLSessionTask created with invalid URL scheme";
LABEL_13:
    v20 = [v17 exceptionWithName:v18 reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__46581;
  v28 = __Block_byref_object_dispose__46582;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__NWURLSession_webSocketTaskWithRequest___block_invoke;
  v21[3] = &unk_1E6A3BE58;
  v21[4] = self;
  v8 = v4;
  v22 = v8;
  v23 = &v24;
  [(NWURLSession *)self withLock:v21];
  v9 = v25[5];
  if (v9)
  {
    v10 = 248;
    if (!*(v9 + 248))
    {
      v10 = 240;
    }

    v11 = *(v9 + v10);
    if (v11)
    {
      v12 = v25[5];
      v14 = [(NWURLSessionDelegateWrapper *)v11 delegateFor_didCreateTask];
      [v14 URLSession:v11[5] didCreateTask:v12];
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v15;
}

void __41__NWURLSession_webSocketTaskWithRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 28))
    {
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
      objc_exception_throw(v20);
    }

    v3 = [*(a1 + 40) mutableCopy];
    v4 = v2;
  }

  else
  {
    v3 = [*(a1 + 40) mutableCopy];
    v4 = 0;
  }

  v21 = [(NWURLSession *)v4 preparedRequestFromRequest:v3 bodyInfo:0];

  [NWURLSessionWebSocketTask addWebSocketHeadersToRequest:v21];
  v5 = [NWURLSessionWebSocketTask alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 32) + 1;
    *(v6 + 32) = v7;
    v8 = *(a1 + 32);
    v9 = v21;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v7 = 1;
  v9 = v21;
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_6:
  v10 = [(NWURLSessionTask *)&v5->super.super.isa initWithRequest:v9 identifier:v7 session:v8];
  v11 = v10;
  if (v10)
  {
    v10[62] = 0x100000;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = v11[67];
    v11[67] = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = v11[69];
    v11[69] = v14;
  }

LABEL_8:
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v11;

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 104);
  }

  else
  {
    v19 = 0;
  }

  [v19 addObject:*(*(*(a1 + 48) + 8) + 40)];
}

- (id)webSocketTaskWithURL:(id)a3 protocols:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil URL";
    goto LABEL_15;
  }

  v8 = v7;
  if (![(NSURL *)v6 _NW_isWebSocket])
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with invalid URL scheme";
    goto LABEL_15;
  }

  if (!v8)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil protocols";
LABEL_15:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__46581;
  v35 = __Block_byref_object_dispose__46582;
  v36 = 0;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __47__NWURLSession_webSocketTaskWithURL_protocols___block_invoke;
  v26 = &unk_1E6A33400;
  v27 = self;
  v9 = v6;
  v28 = v9;
  v10 = v8;
  v29 = v10;
  v30 = &v31;
  [(NWURLSession *)self withLock:?];
  v11 = v32[5];
  if (v11)
  {
    v12 = 248;
    if (!*(v11 + 248))
    {
      v12 = 240;
    }

    v13 = *(v11 + v12);
    if (v13)
    {
      v14 = v32[5];
      v16 = [(NWURLSessionDelegateWrapper *)v13 delegateFor_didCreateTask];
      [v16 URLSession:v13[5] didCreateTask:{v14, v23, v24, v25, v26, v27, v28}];
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __47__NWURLSession_webSocketTaskWithURL_protocols___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v19);
  }

  v20 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v3 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    [v20 addValue:v3 forHTTPHeaderField:@"Sec-WebSocket-Protocol"];
  }

  v4 = [(NWURLSession *)*(a1 + 32) preparedRequestFromRequest:v20 bodyInfo:0];
  [NWURLSessionWebSocketTask addWebSocketHeadersToRequest:v4];
  v5 = [NWURLSessionWebSocketTask alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 32) + 1;
    *(v6 + 32) = v7;
    v8 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  v7 = 1;
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_7:
  v9 = [(NWURLSessionTask *)&v5->super.super.isa initWithRequest:v4 identifier:v7 session:v8];
  v10 = v9;
  if (v9)
  {
    v9[62] = 0x100000;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = v10[67];
    v10[67] = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = v10[69];
    v10[69] = v13;
  }

LABEL_9:
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 104);
  }

  else
  {
    v18 = 0;
  }

  [v18 addObject:*(*(*(a1 + 56) + 8) + 40)];
}

- (id)streamTaskWithNetService:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"NetService is not supported by the new loader" userInfo:0];
  objc_exception_throw(v4);
}

- (id)streamTaskWithHostName:(id)a3 port:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"URLSessionTask created with nil hostname";
    goto LABEL_13;
  }

  if ((a4 - 0x10000) <= 0xFFFFFFFFFFFF0000)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"URLSessionTask created with invalid port";
LABEL_13:
    v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__46581;
  v32 = __Block_byref_object_dispose__46582;
  v33 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __44__NWURLSession_streamTaskWithHostName_port___block_invoke;
  v23 = &unk_1E6A333D8;
  v24 = self;
  v26 = &v28;
  v7 = v6;
  v25 = v7;
  v27 = a4;
  [(NWURLSession *)self withLock:?];
  v8 = v29[5];
  if (v8)
  {
    v9 = 248;
    if (!*(v8 + 248))
    {
      v9 = 240;
    }

    v10 = *(v8 + v9);
    if (v10)
    {
      v11 = v29[5];
      v13 = [(NWURLSessionDelegateWrapper *)v10 delegateFor_didCreateTask];
      [v13 URLSession:v10[5] didCreateTask:{v11, v20, v21, v22, v23, v24}];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v14;
}

uint64_t __44__NWURLSession_streamTaskWithHostName_port___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 28) == 1)
  {
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v43);
  }

  v3 = [NWURLSessionStreamTask alloc];
  v4 = a1[7];
  v5 = a1[4];
  v6 = a1[5];
  if (v5)
  {
    v7 = *(v5 + 32) + 1;
    *(v5 + 32) = v7;
    v8 = a1[4];
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  obj = v6;
  v9 = v6;
  if (v3)
  {
    v10 = MEMORY[0x1E696AF20];
    v11 = v8;
    v12 = objc_alloc_init(v10);
    [v12 setScheme:@"tcp"];
    [v12 setHost:v9];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    [v12 setPort:v13];

    v14 = MEMORY[0x1E695AC68];
    v15 = [v12 URL];
    v16 = [v14 requestWithURL:v15];

    v17 = [(NWURLSessionTask *)&v3->super.super.isa initWithRequest:v16 identifier:v7 session:v11];
    if (v17)
    {
      v18 = [NWURLSessionTaskConfiguration alloc];
      v19 = v17[52];
      v20 = v19;
      v44 = v4;
      if (v19)
      {
        v21 = v19[12];
      }

      else
      {
        v21 = 0;
      }

      v22 = [(NWURLSessionTaskConfiguration *)&v18->super.isa initWithConfiguration:v21 task:v17 request:0];
      v23 = v17[53];
      v17[53] = v22;

      v24 = [NWURLLoaderTCP alloc];
      v25 = v17[53];
      v26 = v17[29];
      v27 = v26;
      v28 = v25;
      v46 = v9;
      v45 = v9;
      v29 = v28;
      v30 = v27;
      v31 = v17;
      if (v24)
      {
        v48.receiver = v24;
        v48.super_class = NWURLLoaderTCP;
        v32 = objc_msgSendSuper2(&v48, sel_init);
        v24 = v32;
        if (v32)
        {
          objc_storeStrong(&v32->_hostname, obj);
          v24->_port = v44;
          objc_storeStrong(&v24->_configuration, v25);
          objc_storeStrong(&v24->_client, v17);
          objc_storeStrong(&v24->_queue, v26);
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          pendingWork = v24->_pendingWork;
          v24->_pendingWork = v33;
        }
      }

      v35 = v31[33];
      v31[33] = v24;

      v9 = v46;
    }

    v36 = v17;
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a1[6] + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  v39 = a1[4];
  if (v39)
  {
    v40 = *(v39 + 104);
  }

  else
  {
    v40 = 0;
  }

  v41 = *(*(a1[6] + 8) + 40);

  return [v40 addObject:v41];
}

- (id)downloadTaskWithResumeData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionDownloadTask created with nil resume data" userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__46581;
  v22 = __Block_byref_object_dispose__46582;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__NWURLSession_downloadTaskWithResumeData___block_invoke;
  v15[3] = &unk_1E6A3BE58;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [(NWURLSession *)self withLock:v15];
  v6 = v19[5];
  if (v6)
  {
    v7 = 248;
    if (!*(v6 + 248))
    {
      v7 = 240;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = v19[5];
      v11 = [(NWURLSessionDelegateWrapper *)v8 delegateFor_didCreateTask];
      [v11 URLSession:v8[5] didCreateTask:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __43__NWURLSession_downloadTaskWithResumeData___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionDownloadTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionDownloadResumeInfo infoWithResumeData:a1[5]];
  if (v3)
  {
    v22 = v3;
    v4 = [NWURLSessionRequestBodyInfo alloc];
    v5 = [v22 currentRequest];
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = [(NWURLSessionRequestBodyInfo *)v4 initWithRequest:v5 queue:v7];

    v9 = [[NWURLSessionResponseConsumerDownload alloc] initWithResumeInfo:v22 completionHandler:0];
    v10 = [NWURLSessionDownloadTask alloc];
    v11 = a1[4];
    if (v11)
    {
      v12 = *(v11 + 32) + 1;
      *(v11 + 32) = v12;
      v13 = a1[4];
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    v14 = [(NWURLSessionTask *)&v10->super.super.isa initWithResumeInfo:v22 identifier:v12 session:v13];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(a1[6] + 8) + 40);
    if (v17)
    {
      objc_storeStrong((v17 + 432), v8);
      v18 = *(*(a1[6] + 8) + 40);
      if (v18)
      {
        objc_storeStrong((v18 + 440), v9);
      }
    }

    v19 = a1[4];
    if (v19)
    {
      v20 = *(v19 + 104);
    }

    else
    {
      v20 = 0;
    }

    [v20 addObject:*(*(a1[6] + 8) + 40)];

    v3 = v22;
  }
}

- (id)downloadTaskWithURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil URL" userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__46581;
  v22 = __Block_byref_object_dispose__46582;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__NWURLSession_downloadTaskWithURL___block_invoke;
  v15[3] = &unk_1E6A3BE58;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [(NWURLSession *)self withLock:v15];
  v6 = v19[5];
  if (v6)
  {
    v7 = 248;
    if (!*(v6 + 248))
    {
      v7 = 240;
    }

    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = v19[5];
      v11 = [(NWURLSessionDelegateWrapper *)v8 delegateFor_didCreateTask];
      [v11 URLSession:v8[5] didCreateTask:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __36__NWURLSession_downloadTaskWithURL___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 28) == 1)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v15);
  }

  v3 = [MEMORY[0x1E695AC18] requestWithURL:a1[5]];
  v16 = [(NWURLSession *)v2 preparedRequestFromRequest:v3 bodyInfo:0];

  v4 = [NWURLSessionDownloadTask alloc];
  v5 = a1[4];
  if (v5)
  {
    v6 = *(v5 + 32) + 1;
    *(v5 + 32) = v6;
    v7 = a1[4];
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(NWURLSessionTask *)&v4->super.super.isa initWithRequest:v16 identifier:v6 session:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(*(a1[6] + 8) + 40) setPrefersIncrementalDelivery:0];
  v11 = objc_alloc_init(NWURLSessionResponseConsumerDownload);
  v12 = *(*(a1[6] + 8) + 40);
  if (v12)
  {
    objc_storeStrong((v12 + 440), v11);
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = *(v13 + 104);
  }

  else
  {
    v14 = 0;
  }

  [v14 addObject:*(*(a1[6] + 8) + 40)];
}

- (id)downloadTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];

  if (!v5)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil URL" userInfo:0];
    objc_exception_throw(v15);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__46581;
  v23 = __Block_byref_object_dispose__46582;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__NWURLSession_downloadTaskWithRequest___block_invoke;
  v16[3] = &unk_1E6A3BE58;
  v16[4] = self;
  v6 = v4;
  v17 = v6;
  v18 = &v19;
  [(NWURLSession *)self withLock:v16];
  v7 = v20[5];
  if (v7)
  {
    v8 = 248;
    if (!*(v7 + 248))
    {
      v8 = 240;
    }

    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v20[5];
      v12 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didCreateTask];
      [v12 URLSession:v9[5] didCreateTask:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __40__NWURLSession_downloadTaskWithRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)v3 initWithRequest:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionDownloadTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(*(*(a1 + 48) + 8) + 40) setPrefersIncrementalDelivery:0];
  v16 = *(*(*(a1 + 48) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = objc_alloc_init(NWURLSessionResponseConsumerDownload);
  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 48) + 8) + 40)];
}

- (id)uploadTaskWithStreamedRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];

  if (!v5)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"URLSessionTask created with nil URL" userInfo:0];
    objc_exception_throw(v15);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__46581;
  v23 = __Block_byref_object_dispose__46582;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__NWURLSession_uploadTaskWithStreamedRequest___block_invoke;
  v16[3] = &unk_1E6A3BE58;
  v16[4] = self;
  v6 = v4;
  v17 = v6;
  v18 = &v19;
  [(NWURLSession *)self withLock:v16];
  v7 = v20[5];
  if (v7)
  {
    v8 = 248;
    if (!*(v7 + 248))
    {
      v8 = 240;
    }

    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v20[5];
      v12 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didCreateTask];
      [v12 URLSession:v9[5] didCreateTask:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __46__NWURLSession_uploadTaskWithStreamedRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [NWURLSessionRequestBodyInfo initWithStream:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionUploadTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 48) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 48) + 8) + 40)];
}

- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];

  if (!v8)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil URL";
    goto LABEL_13;
  }

  if (!v7)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil bodyData";
LABEL_13:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__46581;
  v35 = __Block_byref_object_dispose__46582;
  v36 = 0;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __47__NWURLSession_uploadTaskWithRequest_fromData___block_invoke;
  v26 = &unk_1E6A33400;
  v27 = self;
  v9 = v7;
  v28 = v9;
  v10 = v6;
  v29 = v10;
  v30 = &v31;
  [(NWURLSession *)self withLock:?];
  v11 = v32[5];
  if (v11)
  {
    v12 = 248;
    if (!*(v11 + 248))
    {
      v12 = 240;
    }

    v13 = *(v11 + v12);
    if (v13)
    {
      v14 = v32[5];
      v16 = [(NWURLSessionDelegateWrapper *)v13 delegateFor_didCreateTask];
      [v16 URLSession:v13[5] didCreateTask:{v14, v23, v24, v25, v26, v27, v28}];
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __47__NWURLSession_uploadTaskWithRequest_fromData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v23);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 40);
  if (v3 && (v25.receiver = v3, v25.super_class = NWURLSessionRequestBodyInfo, (v5 = objc_msgSendSuper2(&v25, sel_init)) != 0))
  {
    obj = v5;
    v6 = [v4 _createDispatchData];
    v7 = obj[2];
    obj[2] = v6;

    obj[1] = [v4 length];
  }

  else
  {
    obj = 0;
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 48) mutableCopy];
  v10 = [(NWURLSession *)v8 preparedRequestFromRequest:v9 bodyInfo:obj];

  v11 = [NWURLSessionUploadTask alloc];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 32) + 1;
    *(v12 + 32) = v13;
    v14 = *(a1 + 32);
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  v15 = [(NWURLSessionTask *)&v11->super.super.super.isa initWithRequest:v10 identifier:v13 session:v14];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *(*(*(a1 + 56) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 432), obj);
  }

  v19 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v20 = *(*(*(a1 + 56) + 8) + 40);
  if (v20)
  {
    objc_storeStrong((v20 + 440), v19);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 104);
  }

  else
  {
    v22 = 0;
  }

  [v22 addObject:*(*(*(a1 + 56) + 8) + 40)];
}

- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];

  if (!v8)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil URL";
    goto LABEL_17;
  }

  if (!v7)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with nil fileURL";
    goto LABEL_17;
  }

  if (([v7 isFileURL] & 1) == 0 && (!self || (-[NSURLSessionConfiguration usesClassicLoadingMode](self->_internalConfiguration, "usesClassicLoadingMode") & 1) == 0))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"URLSessionTask created with invalid fileURL";
LABEL_17:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__46581;
  v35 = __Block_byref_object_dispose__46582;
  v36 = 0;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __47__NWURLSession_uploadTaskWithRequest_fromFile___block_invoke;
  v26 = &unk_1E6A33400;
  v27 = self;
  v9 = v7;
  v28 = v9;
  v10 = v6;
  v29 = v10;
  v30 = &v31;
  [(NWURLSession *)self withLock:?];
  v11 = v32[5];
  if (v11)
  {
    v12 = 248;
    if (!*(v11 + 248))
    {
      v12 = 240;
    }

    v13 = *(v11 + v12);
    if (v13)
    {
      v14 = v32[5];
      v16 = [(NWURLSessionDelegateWrapper *)v13 delegateFor_didCreateTask];
      [v16 URLSession:v13[5] didCreateTask:{v14, v23, v24, v25, v26, v27, v28}];
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __47__NWURLSession_uploadTaskWithRequest_fromFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 28) == 1)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"URLSessionTask created on an invalidated session" userInfo:0];
    objc_exception_throw(v21);
  }

  v3 = [NWURLSessionRequestBodyInfo alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  obj = [(NWURLSessionRequestBodyInfo *)&v3->super.isa initWithFileURL:v5 queue:?];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) mutableCopy];
  v8 = [(NWURLSession *)v6 preparedRequestFromRequest:v7 bodyInfo:obj];

  v9 = [NWURLSessionUploadTask alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32) + 1;
    *(v10 + 32) = v11;
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = [(NWURLSessionTask *)&v9->super.super.super.isa initWithRequest:v8 identifier:v11 session:v12];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    objc_storeStrong((v16 + 432), obj);
  }

  v17 = objc_alloc_init(NWURLSessionResponseConsumerDataDelegate);
  v18 = *(*(*(a1 + 56) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((v18 + 440), v17);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 104);
  }

  else
  {
    v20 = 0;
  }

  [v20 addObject:*(*(*(a1 + 56) + 8) + 40)];
}

- (void)getAllTasksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__NWURLSession_getAllTasksWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E6A3D710;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NWURLSession *)self withLock:v6];
}

void __49__NWURLSession_getAllTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[14];
  }

  v3 = v2;
  v4 = [v3 allObjects];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[13];
  }

  v6 = v5;
  v7 = [v6 allObjects];
  v8 = [v4 arrayByAddingObjectsFromArray:v7];

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 152);
  }

  else
  {
    v10 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__NWURLSession_getAllTasksWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E6A3D710;
  v11 = *(a1 + 40);
  v15 = v8;
  v16 = v11;
  v12 = v8;
  v13 = v12;
  if (v10)
  {
    [(NWURLSessionDelegateQueue *)*(v10 + 56) runDelegateBlock:v14];
    v13 = v15;
  }
}

- (void)getTasksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__NWURLSession_getTasksWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E6A3D710;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NWURLSession *)self withLock:v6];
}

void __46__NWURLSession_getTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = a1;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[13];
  }

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v13 = v4;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13 = v3, (v14) || (objc_opt_class(), v15 = objc_opt_isKindOfClass(), v13 = v2, (v15))
        {
          [v13 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = *(v34 + 32);
  if (v16)
  {
    v16 = v16[14];
  }

  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      v21 = 0;
      do
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v40 + 1) + 8 * v21);
        objc_opt_class();
        v23 = objc_opt_isKindOfClass();
        v24 = v4;
        if (v23 & 1) != 0 || (objc_opt_class(), v25 = objc_opt_isKindOfClass(), v24 = v3, (v25) || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v24 = v2, (v26))
        {
          [v24 addObject:v22];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  v27 = *(v34 + 32);
  if (v27)
  {
    v28 = *(v27 + 152);
  }

  else
  {
    v28 = 0;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __46__NWURLSession_getTasksWithCompletionHandler___block_invoke_2;
  v35[3] = &unk_1E6A3B8E8;
  v29 = *(v34 + 40);
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v39 = v29;
  v30 = v4;
  v31 = v3;
  v32 = v2;
  v33 = v30;
  if (v28)
  {
    [(NWURLSessionDelegateQueue *)*(v28 + 56) runDelegateBlock:v35];
    v33 = v38;
  }
}

void __46__NWURLSession_getTasksWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v5 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) copy];
  v4 = [*(a1 + 48) copy];
  (*(v2 + 16))(v2, v5, v3, v4);
}

- (void)flushWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v5 = gurlLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v11 = 16;
    v12 = 2098;
    uuid = self->uuid;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Session <%{public,uuid_t}.16P> flush", buf, 0x12u);
  }

  if (self)
  {
    self = self->_delegateWrapper;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__NWURLSession_flushWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A3CE48;
  v9 = v4;
  v6 = v4;
  v7 = v6;
  if (self)
  {
    [(NWURLSessionDelegateQueue *)self->_URLCredentialStorage runDelegateBlock:v8];
    v7 = v9;
  }
}

- (void)resetWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v5 = gurlLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v11 = 16;
    v12 = 2098;
    uuid = self->uuid;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Session <%{public,uuid_t}.16P> reset", buf, 0x12u);
  }

  if (self)
  {
    self = self->_delegateWrapper;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__NWURLSession_resetWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A3CE48;
  v9 = v4;
  v6 = v4;
  v7 = v6;
  if (self)
  {
    [(NWURLSessionDelegateQueue *)self->_URLCredentialStorage runDelegateBlock:v8];
    v7 = v9;
  }
}

- (void)invalidateAndCancel
{
  v11 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v3 = gurlLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8 = 16;
    v9 = 2098;
    uuid = self->uuid;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Session <%{public,uuid_t}.16P> invalidate and cancel", buf, 0x12u);
  }

  if (!self || !-[NSURLSessionConfiguration usesClassicLoadingMode](self->_internalConfiguration, "usesClassicLoadingMode") || ([MEMORY[0x1E695AC78] sharedSession], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != self))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__NWURLSession_invalidateAndCancel__block_invoke;
    v6[3] = &unk_1E6A3D868;
    v6[4] = self;
    v5 = self;
    [(NWURLSession *)v5 withLock:v6];
  }
}

void __35__NWURLSession_invalidateAndCancel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v4 = [v3 anyObject];
  if (v4)
  {

LABEL_8:
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 144);
    }

    else
    {
      v9 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__NWURLSession_invalidateAndCancel__block_invoke_2;
    block[3] = &unk_1E6A3D868;
    block[4] = v8;
    dispatch_async(v9, block);
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 112);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 count];

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    if (*(v10 + 28))
    {
      return;
    }

    *(v10 + 28) = 1;
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [(NWURLSession *)v11 checkForCompletion];
}

void __35__NWURLSession_invalidateAndCancel__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__NWURLSession_invalidateAndCancel__block_invoke_3;
  v2[3] = &unk_1E6A3D868;
  v2[4] = v1;
  [(NWURLSession *)v1 withLock:v2];
}

void __34__NWURLSession_checkForCompletion__block_invoke_2(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4)
    {
      v6 = [(NWURLSessionDelegateWrapper *)*(v3 + 152) delegateFor_sessionDidBecomeInvalidWithError];
      if (v6)
      {
        v7 = *(v4 + 40);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __57__NWURLSessionDelegateWrapper_didBecomeInvalidWithError___block_invoke;
        v12[3] = &unk_1E6A3C038;
        v13 = v6;
        v14 = v7;
        v15 = 0;
        v16 = v4;
        v8 = *(v4 + 56);
        v9 = v7;
        [(NWURLSessionDelegateQueue *)v8 runDelegateBlock:v12];
      }

      else
      {
        objc_setProperty_atomic(v4, v5, 0, 24);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 152);
    if (v11)
    {

      objc_setProperty_atomic(v11, a2, 0, 24);
    }
  }
}

- (void)teardownAllConnections
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_context_copy_cache_context(*(a1 + 160));
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __38__NWURLSession_teardownAllConnections__block_invoke;
    v29[3] = &unk_1E6A33470;
    v3 = v1;
    v30 = v3;
    v4 = v2;
    v31 = v4;
    nw_protocol_enumerate_instances(&nw_protocol_http_messaging_identifier::protocol_identifier, v29);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          nw_protocol_http_messaging_teardown([*(*(&v25 + 1) + 8 * i) unsignedIntegerValue]);
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v7);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (nw_protocol_http_joining_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_joining_identifier::onceToken, &__block_literal_global_22768);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__NWURLSession_teardownAllConnections__block_invoke_2;
    v22[3] = &unk_1E6A33470;
    v11 = v3;
    v23 = v11;
    v12 = v10;
    v24 = v12;
    nw_protocol_enumerate_instances(&nw_protocol_http_joining_identifier::protocol_identifier, v22);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          nw_protocol_http_joining_teardown([*(*(&v18 + 1) + 8 * j) unsignedIntegerValue]);
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v32 count:16];
      }

      while (v15);
    }
  }
}

void __38__NWURLSession_teardownAllConnections__block_invoke(uint64_t a1, void *a2)
{
  v8 = nw_protocol_get_parameters(a2);
  v4 = nw_parameters_copy_context(v8);
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v6 addObject:v7];
  }
}

void __38__NWURLSession_teardownAllConnections__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = nw_protocol_get_parameters(a2);
  v4 = nw_parameters_copy_context(v8);
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v6 addObject:v7];
  }
}

void __35__NWURLSession_invalidateAndCancel__block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[14];
  }

  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) cancel];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)finishTasksAndInvalidate
{
  v11 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v3 = gurlLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8 = 16;
    v9 = 2098;
    uuid = self->uuid;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Session <%{public,uuid_t}.16P> finish tasks and invalidate", buf, 0x12u);
  }

  if (!self || !-[NSURLSessionConfiguration usesClassicLoadingMode](self->_internalConfiguration, "usesClassicLoadingMode") || ([MEMORY[0x1E695AC78] sharedSession], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != self))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__NWURLSession_finishTasksAndInvalidate__block_invoke;
    v6[3] = &unk_1E6A3D868;
    v6[4] = self;
    v5 = self;
    [(NWURLSession *)v5 withLock:v6];
  }
}

void __40__NWURLSession_finishTasksAndInvalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 28) & 1) == 0)
    {
      *(v1 + 28) = 1;
      [(NWURLSession *)*(a1 + 32) checkForCompletion];
    }
  }

  else
  {
    [(NWURLSession *)0 checkForCompletion];
  }
}

- (NSURLSessionDelegate)delegate
{
  if (self && (delegateWrapper = self->_delegateWrapper) != 0)
  {
    return objc_getProperty(delegateWrapper, a2, 24, 1);
  }

  else
  {
    return 0;
  }
}

- (NSOperationQueue)delegateQueue
{
  if (!self)
  {
LABEL_8:

    return self;
  }

  delegateWrapper = self->_delegateWrapper;
  if (delegateWrapper)
  {
    delegateQueueWrapper = delegateWrapper->_delegateQueueWrapper;
    if (delegateQueueWrapper)
    {
      if (!objc_getProperty(delegateWrapper->_delegateQueueWrapper, a2, 16, 1))
      {
        var38[0] = MEMORY[0x1E69E9820];
        var38[1] = 3221225472;
        var38[2] = __42__NWURLSessionDelegateQueue_delegateQueue__block_invoke;
        var38[3] = &unk_1E6A3D868;
        var38[4] = delegateQueueWrapper;
        [(NWURLSessionDelegateQueue *)delegateQueueWrapper withLock:?];
      }

      self = objc_getProperty(delegateQueueWrapper, v5, 16, 1);
    }

    else
    {
      self = 0;
    }

    v2 = var38[8];
    goto LABEL_8;
  }

  self = 0;

  return self;
}

- (NSURLSessionConfiguration)configuration
{
  if (self)
  {
    self = self->_internalConfiguration;
  }

  v2 = [(NWURLSession *)self copy];

  return v2;
}

- (NWURLSession)initWithConfiguration:(id)a3 UUID:(id)a4 delegate:(id)a5 delegateQueue:(id)a6 delegateDispatchQueue:(id)a7
{
  v79 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v69 = a7;
  v74.receiver = self;
  v74.super_class = NWURLSession;
  v16 = [(NWURLSession *)&v74 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_38;
  }

  v68 = v14;
  if (v13)
  {
    [v13 getUUIDBytes:v16->uuid];
  }

  else
  {
    uuid_generate_random(v16->uuid);
  }

  v17->lock._os_unfair_lock_opaque = 0;
  v18 = dispatch_queue_create("com.apple.NWURLSession", 0);
  queue = v17->_queue;
  v17->_queue = v18;

  v20 = [[NWConcrete_nw_context alloc] initWithIdentifier:?];
  context = v17->_context;
  v17->_context = v20;

  nw_context_set_isolate_protocol_cache(v17->_context, 1);
  nw_context_set_privacy_level(v17->_context, [v12 _loggingPrivacyLevel]);
  nw_context_activate(v17->_context);
  nw_queue_context_target_dispatch_queue(v17->_context, v17->_queue);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v22 = [v12 _proxyConfigurations];
  v23 = [v22 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v71;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v71 != v25)
        {
          objc_enumerationMutation(v22);
        }

        nw_context_add_proxy(v17->_context, *(*(&v70 + 1) + 8 * i));
      }

      v24 = [v22 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v24);
  }

  v67 = v15;
  obj = a6;
  if (v12)
  {
    v27 = [v12 copy];
    internalConfiguration = v17->_internalConfiguration;
    v17->_internalConfiguration = v27;
  }

  else
  {
    v29 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v30 = v17->_internalConfiguration;
    v17->_internalConfiguration = v29;

    [(NSURLSessionConfiguration *)v17->_internalConfiguration setUsesClassicLoadingMode:0];
  }

  v66 = v13;
  v31 = [NWURLSessionDelegateWrapper alloc];
  v32 = v17->_queue;
  v33 = [(NSURLSessionConfiguration *)v17->_internalConfiguration usesClassicLoadingMode];
  v34 = v17;
  v64 = v32;
  v65 = v68;
  v35 = v67;
  v36 = v69;
  if (v31)
  {
    v75.receiver = v31;
    v75.super_class = NWURLSessionDelegateWrapper;
    v37 = [(NWURLSession *)&v75 init];
    v31 = v37;
    if (v37)
    {
      v62 = v33 ^ 1;
      *&v37->_notifierObject = v34;
      objc_storeStrong(&v37->_HTTPCookieStorage, v32);
      objc_storeStrong(&v31->_wrappedDelegate, a5);
      v38 = [NWURLSessionDelegateQueue alloc];
      v39 = v35;
      v40 = v36;
      if (!v38)
      {
        goto LABEL_23;
      }

      v76.receiver = v38;
      v76.super_class = NWURLSessionDelegateQueue;
      v41 = [(NWURLSession *)&v76 init];
      v38 = v41;
      if (!v41)
      {
        goto LABEL_23;
      }

      objc_storeStrong(v41 + 2, obj);
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v59 = [MEMORY[0x1E696ADC8] mainQueue];

        if (v59 != v39)
        {
          if (v39)
          {
            goto LABEL_23;
          }

          v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v60 = dispatch_queue_create("com.apple.NSURLSession-delegate", v43);
          dispatchQueue = v38->__dispatchQueue;
          v38->__dispatchQueue = v60;

LABEL_22:
LABEL_23:
          v13 = v66;

          delegateQueueWrapper = v31->_delegateQueueWrapper;
          v31->_delegateQueueWrapper = v38;

          v31->_strict = v62;
          goto LABEL_24;
        }

        v42 = getMainQueue();
      }

      v43 = v38->__dispatchQueue;
      v38->__dispatchQueue = v42;
      goto LABEL_22;
    }
  }

LABEL_24:

  delegateWrapper = v34->_delegateWrapper;
  v34->_delegateWrapper = v31;

  v46 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  weakUnresumedTasks = v34->_weakUnresumedTasks;
  v34->_weakUnresumedTasks = v46;

  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  runningTasks = v34->_runningTasks;
  v34->_runningTasks = v48;

  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  trustExceptions = v34->_trustExceptions;
  v34->_trustExceptions = v50;

  v15 = v67;
  v14 = v68;
  if ([v12 _disableAPWakeOnIdleConnections])
  {
    v76.receiver = 0;
    LODWORD(v75.receiver) = 0;
    v52 = IORegisterForSystemPower(v34, &v76, _systemPowerNotificationsCallback, &v75);
    v34->_rootPort = v52;
    if (v52)
    {
      receiver = v76.receiver;
      v34->_notifyPortRef = v76.receiver;
      v34->_notifierObject = v75.receiver;
      IONotificationPortSetDispatchQueue(receiver, v17->_queue);
    }

    else
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v54 = gurlLogObj;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "Failed to register power notifications", buf, 2u);
      }
    }

    objc_storeStrong(&v34->_retainedSelf, v17);
  }

  v55 = [(NSURLSessionConfiguration *)v17->_internalConfiguration usesClassicLoadingMode];
  if (v65 && v55)
  {
    v56 = [MEMORY[0x1E696AAE8] mainBundle];
    v57 = [v56 bundleIdentifier];

    if ([v57 isEqualToString:@"com.activision.callofduty.warzone"])
    {
      objc_storeStrong(&v34->_retainedSelf, v17);
    }
  }

LABEL_38:

  return v17;
}

void __62__NWURLSession_systemPowerChangedNotification_notificationID___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v2 = gurlLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "Continuing system sleep", v9, 2u);
  }

  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 36);
  }

  else
  {
    v4 = 0;
  }

  v5 = IOAllowPowerChange(v4, a1[6]);
  if (v5)
  {
    v7 = v5;
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v8 = gurlLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "Failed to continue system sleep: %d", v9, 8u);
    }
  }

  nw_queue_cancel_source(*(*(a1[5] + 8) + 24), v6);
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = NWURLSession;
  if ([(NWURLSession *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithConfiguration:v10 delegate:v9 delegateQueue:v8];

  return v11;
}

+ (id)sessionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConfiguration:v4 delegate:0 delegateQueue:0];

  return v5;
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NWURLSession;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

- (void)taskStarted:(os_unfair_lock_s *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__NWURLSession_taskStarted___block_invoke;
    v5[3] = &unk_1E6A3D760;
    v5[4] = a1;
    v6 = v3;
    [(NWURLSession *)a1 withLock:v5];
  }
}

uint64_t __28__NWURLSession_taskStarted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 112);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v5 addObject:v6];
}

- (void)taskCompleted:(os_unfair_lock_s *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__NWURLSession_taskCompleted___block_invoke;
    v5[3] = &unk_1E6A3D760;
    v5[4] = a1;
    v6 = v3;
    [(NWURLSession *)a1 withLock:v5];
  }
}

void __30__NWURLSession_taskCompleted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 112);
  }

  else
  {
    v5 = 0;
  }

  [v5 removeObject:*(a1 + 40)];
  v6 = *(a1 + 32);

  [(NWURLSession *)v6 checkForCompletion];
}

@end