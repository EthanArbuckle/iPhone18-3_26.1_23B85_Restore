@interface AMSUINetworkImageFetchOperation
- (AMSUINetworkImageFetchOperation)initWithURL:(id)a3 URLSession:(id)a4;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (float)_sessionTaskPriorityForQueuePriority:(int64_t)a3;
- (id)_eagerlyDecompressImage:(id)a3;
- (void)_didCompleteTaskWithData:(id)a3 error:(id)a4;
- (void)cancel;
- (void)setQueuePriority:(int64_t)a3;
- (void)start;
@end

@implementation AMSUINetworkImageFetchOperation

- (AMSUINetworkImageFetchOperation)initWithURL:(id)a3 URLSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSUINetworkImageFetchOperation;
  v9 = [(AMSUINetworkImageFetchOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_URLSession, a4);
  }

  return v10;
}

- (BOOL)isExecuting
{
  if (([(AMSUINetworkImageFetchOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  v4 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
  v3 = [v4 state] == 0;

  return v3;
}

- (BOOL)isFinished
{
  if (([(AMSUINetworkImageFetchOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  v4 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
  v3 = [v4 state] == 3;

  return v3;
}

- (void)setQueuePriority:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = AMSUINetworkImageFetchOperation;
  [(AMSUIAssetFetchOperation *)&v10 setQueuePriority:?];
  v5 = [(AMSUINetworkImageFetchOperation *)self sessionTask];

  if (v5)
  {
    [(AMSUINetworkImageFetchOperation *)self _sessionTaskPriorityForQueuePriority:a3];
    v7 = v6;
    v8 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
    LODWORD(v9) = v7;
    [v8 setPriority:v9];
  }
}

- (void)start
{
  v3 = MEMORY[0x1E696AF68];
  v4 = [(AMSUINetworkImageFetchOperation *)self url];
  v5 = [v3 requestWithURL:v4];

  objc_initWeak(&location, self);
  v6 = [(AMSUINetworkImageFetchOperation *)self URLSession];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __40__AMSUINetworkImageFetchOperation_start__block_invoke;
  v18 = &unk_1E7F25318;
  objc_copyWeak(&v19, &location);
  v7 = [v6 dataTaskWithRequest:v5 completionHandler:&v15];
  [(AMSUINetworkImageFetchOperation *)self setSessionTask:v7, v15, v16, v17, v18];

  [(AMSUINetworkImageFetchOperation *)self _sessionTaskPriorityForQueuePriority:[(AMSUINetworkImageFetchOperation *)self queuePriority]];
  v9 = v8;
  v10 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
  LODWORD(v11) = v9;
  [v10 setPriority:v11];

  v12 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
  v13 = [v12 state];

  [(AMSUINetworkImageFetchOperation *)self isCancelled];
  if (v13 == 1)
  {
    [(AMSUINetworkImageFetchOperation *)self willChangeValueForKey:@"isExecuting"];
    v14 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
    [v14 resume];

    [(AMSUINetworkImageFetchOperation *)self didChangeValueForKey:@"isExecuting"];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __40__AMSUINetworkImageFetchOperation_start__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteTaskWithData:v7 error:v6];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = AMSUINetworkImageFetchOperation;
  [(AMSUIAssetFetchOperation *)&v4 cancel];
  v3 = [(AMSUINetworkImageFetchOperation *)self sessionTask];
  [v3 cancel];
}

- (float)_sessionTaskPriorityForQueuePriority:(int64_t)a3
{
  v3 = __ROR8__(a3 + 8, 2);
  result = 1.0;
  if (v3 <= 4)
  {
    return flt_1BB1EF270[v3];
  }

  return result;
}

- (void)_didCompleteTaskWithData:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (([(AMSUINetworkImageFetchOperation *)self isCancelled]& 1) == 0)
  {
    [(AMSUINetworkImageFetchOperation *)self willChangeValueForKey:@"isExecuting"];
    [(AMSUINetworkImageFetchOperation *)self didChangeValueForKey:@"isExecuting"];
    if (v13)
    {
      v7 = [MEMORY[0x1E69DCAB8] imageWithData:?];
      if (v7)
      {
        v8 = v7;
        v9 = [(AMSUINetworkImageFetchOperation *)self _eagerlyDecompressImage:v7];

        if (v9)
        {
          v10 = self;
          v11 = v9;
          v12 = 0;
LABEL_9:
          [(AMSUIAssetFetchOperation *)v10 _finishWithImage:v11 error:v12];

          goto LABEL_10;
        }
      }
    }

    else if (v6)
    {
      [(AMSUIAssetFetchOperation *)self _finishWithImage:0 error:v6];
      goto LABEL_10;
    }

    v9 = AMSError();
    v10 = self;
    v11 = 0;
    v12 = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)_eagerlyDecompressImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  v7 = v6;
  [v3 scale];
  v9 = v8;
  v13.width = v5;
  v13.height = v7;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v9);
  [v3 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end