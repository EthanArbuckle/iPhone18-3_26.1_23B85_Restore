@interface QLThumbnailRequestOperation
+ (id)operationWithThumbnailRequest:(id)a3;
- (BOOL)_finishIfNeeded;
- (QLThumbnailRequestOperation)initWithThumbnailRequest:(id)a3;
- (id)sharedSerialResponseQueue;
- (void)__finishWithError:(id)a3;
- (void)_finishIfRequestIsInvalid;
- (void)_finishWithError:(id)a3;
- (void)cancel;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation QLThumbnailRequestOperation

- (QLThumbnailRequestOperation)initWithThumbnailRequest:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = QLThumbnailRequestOperation;
  v5 = [(QLThumbnailRequestOperation *)&v12 init];
  if (v5)
  {
    [v4 setRequestedTypes:-1];
    v6 = [QLThumbnailGenerationRequest requestWithThumbnailRequest:v4];
    request = v5->_request;
    v5->_request = v6;

    v8 = [(QLThumbnailRequestOperation *)v5 sharedSerialResponseQueue];
    v9 = dispatch_queue_create_with_target_V2("com.apple.quicklook.thumbnailRequestOperation", 0, v8);
    serialResponseQueue = v5->_serialResponseQueue;
    v5->_serialResponseQueue = v9;
  }

  return v5;
}

- (id)sharedSerialResponseQueue
{
  if (sharedSerialResponseQueue_onceToken != -1)
  {
    [QLThumbnailRequestOperation sharedSerialResponseQueue];
  }

  v3 = sharedSerialResponseQueue__sharedSerialResponseQueue;

  return v3;
}

uint64_t __56__QLThumbnailRequestOperation_sharedSerialResponseQueue__block_invoke()
{
  sharedSerialResponseQueue__sharedSerialResponseQueue = dispatch_queue_create("com.apple.quicklook.thumbnailRequestOperation.sharedResponseQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)operationWithThumbnailRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithThumbnailRequest:v4];

  return v5;
}

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(QLThumbnailRequestOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(QLThumbnailRequestOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    [(QLThumbnailRequestOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = a3;

    [(QLThumbnailRequestOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)start
{
  v2 = self;
  objc_sync_enter(v2);
  [(QLThumbnailRequestOperation *)v2 setExecuting:1];
  objc_sync_exit(v2);

  [(QLThumbnailRequestOperation *)v2 main];
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  v4.receiver = v2;
  v4.super_class = QLThumbnailRequestOperation;
  [(QLThumbnailRequestOperation *)&v4 cancel];
  v3 = +[QLThumbnailGenerator sharedGenerator];
  [v3 cancelRequest:v2->_request];

  objc_sync_exit(v2);
}

- (void)_finishWithError:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(QLThumbnailRequestOperation *)v4 __finishWithError:v5];
  objc_sync_exit(v4);
}

- (void)__finishWithError:(id)a3
{
  v4 = a3;
  if (![(QLThumbnailRequestOperation *)self isFinished])
  {
    [(QLThumbnailRequestOperation *)self setExecuting:0];
    [(QLThumbnailRequestOperation *)self setFinished:1];
    serialResponseQueue = self->_serialResponseQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__QLThumbnailRequestOperation___finishWithError___block_invoke;
    v6[3] = &unk_1E8369BD0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(serialResponseQueue, v6);
  }
}

void __49__QLThumbnailRequestOperation___finishWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) requestCompletionBlock];
  if (v2)
  {
    v3 = *(a1 + 40);

    if (v3)
    {
      v4 = qltLogHandles[0];
      if (!qltLogHandles[0])
      {
        QLTInitLogging();
        v4 = qltLogHandles[0];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 request];
        v8 = *(a1 + 40);
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1CA1E7000, v6, OS_LOG_TYPE_INFO, "Calling requestCompletionBlock for %@ with error: %@", &v11, 0x16u);
      }

      v9 = [*(a1 + 32) requestCompletionBlock];
      v9[2](v9, 0, *(a1 + 40));

      [*(a1 + 32) setRequestUpdateBlock:0];
      [*(a1 + 32) setRequestCompletionBlock:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_finishIfRequestIsInvalid
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_request)
  {
    [(QLThumbnailRequestOperation *)obj __finishWithError:obj->_thumbnailRequestInvalidError];
  }

  objc_sync_exit(obj);
}

- (BOOL)_finishIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(QLThumbnailRequestOperation *)v2 isCancelled]&& [(QLThumbnailRequestOperation *)v2 isExecuting])
  {
    v3 = [QLThumbnailGenerator errorWithCode:5 request:v2->_request additionalUserInfo:0];
    [(QLThumbnailRequestOperation *)v2 __finishWithError:v3];
  }

  else if (!v2->_request && [(QLThumbnailRequestOperation *)v2 isExecuting])
  {
    [(QLThumbnailRequestOperation *)v2 __finishWithError:v2->_thumbnailRequestInvalidError];
  }

  objc_sync_exit(v2);

  return [(QLThumbnailRequestOperation *)v2 isFinished];
}

- (void)main
{
  if (![(QLThumbnailRequestOperation *)self _finishIfNeeded])
  {
    objc_initWeak(&location, self);
    v3 = +[QLThumbnailGenerator sharedGenerator];
    request = self->_request;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__QLThumbnailRequestOperation_main__block_invoke;
    v9[3] = &unk_1E8369BF8;
    objc_copyWeak(&v10, &location);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__QLThumbnailRequestOperation_main__block_invoke_2;
    v7[3] = &unk_1E8369C20;
    objc_copyWeak(&v8, &location);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__QLThumbnailRequestOperation_main__block_invoke_3;
    v5[3] = &unk_1E8369C48;
    objc_copyWeak(&v6, &location);
    [v3 generateThumbnailForRequest:request updateHandler:v9 statusHandler:v7 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __35__QLThumbnailRequestOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained requestUpdateBlock];

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 requestUpdateBlock];
      (v10)[2](v10, v11);
    }
  }
}

void __35__QLThumbnailRequestOperation_main__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained thumbnailRequestGenerationWillStartBlock];

    if (v4)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v5 = [v9 thumbnailRequestGenerationWillStartBlock];
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 request];
      v8 = [v7 contentTypeUTI];
      (v5)[2](v5, v8);
    }
  }
}

void __35__QLThumbnailRequestOperation_main__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained requestCompletionBlock];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 requestCompletionBlock];
    (v9)[2](v9, v11, v5);
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _finish];
}

@end