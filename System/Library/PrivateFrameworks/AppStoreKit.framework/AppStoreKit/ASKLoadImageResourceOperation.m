@interface ASKLoadImageResourceOperation
+ (OS_dispatch_queue)dataConsumerQueue;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5;
- (void)setQueuePriority:(int64_t)a3;
- (void)start;
@end

@implementation ASKLoadImageResourceOperation

+ (OS_dispatch_queue)dataConsumerQueue
{
  if (dataConsumerQueue_onceToken != -1)
  {
    +[ASKLoadImageResourceOperation dataConsumerQueue];
  }

  v3 = dataConsumerQueue_dataConsumerQueue;

  return v3;
}

void __50__ASKLoadImageResourceOperation_dataConsumerQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, -15);
  v1 = dispatch_queue_create("AppStoreKit.LoadImageResourceOperation.dataConsumerQueue", v0);
  v2 = dataConsumerQueue_dataConsumerQueue;
  dataConsumerQueue_dataConsumerQueue = v1;
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ASKLoadImageResourceOperation;
  v15 = [(ASKLoadImageResourceOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_session, a4);
    objc_storeStrong(&v16->_urlRequest, a3);
    objc_storeStrong(&v16->_dataConsumer, a5);
    objc_storeStrong(&v16->_dataConsumerQueue, a6);
  }

  return v16;
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() dataConsumerQueue];
  v12 = [(ASKLoadImageResourceOperation *)self initWithURLRequest:v10 URLSession:v9 dataConsumer:v8 dataConsumerQueue:v11];

  return v12;
}

- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(ASKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
  v9 = [(ASKLoadImageResourceOperation *)self dataConsumerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke;
  block[3] = &unk_1E870C2D8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);

  [(ASKLoadImageResourceOperation *)self didChangeValueForKey:@"isExecuting"];
}

void __70__ASKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 dataConsumer];
    v5 = *(a1 + 32);
    v11 = 0;
    v6 = [v4 objectForData:v5 error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = 0;
      v9 = v7;
    }

    else
    {
      v8 = v6;
      v9 = 0;
    }

    [*(a1 + 40) didCompleteWithResource:v8 error:v9];
  }

  else
  {
    v10 = *(a1 + 48);

    [v2 didCompleteWithResource:0 error:v10];
  }
}

- (BOOL)isExecuting
{
  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  v4 = [(ASKLoadImageResourceOperation *)self task];
  if (v4)
  {
    v5 = [(ASKLoadImageResourceOperation *)self task];
    v3 = [v5 state] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isFinished
{
  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ASKLoadImageResourceOperation *)self task];
  v3 = [v4 state] == 3;

  return v3;
}

- (void)setQueuePriority:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = ASKLoadImageResourceOperation;
  [(ASKLoadImageResourceOperation *)&v9 setQueuePriority:?];
  v5 = __ROR8__(a3 + 8, 2) - 1;
  if (v5 > 3)
  {
    v6 = 1045220557;
  }

  else
  {
    v6 = dword_1E1AFEA10[v5];
  }

  v7 = [(ASKLoadImageResourceOperation *)self task];
  LODWORD(v8) = v6;
  [v7 setPriority:v8];
}

- (void)start
{
  v3 = [(ASKLoadImageResourceOperation *)self task];
  v4 = [v3 state];

  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) == 0 && v4 != 2)
  {
    v5 = [(ASKLoadImageResourceOperation *)self task];

    if (!v5 || v4 == 1)
    {
      v6 = [(ASKLoadImageResourceOperation *)self task];

      if (!v6)
      {
        objc_initWeak(&location, self);
        v7 = [(ASKLoadImageResourceOperation *)self session];
        v8 = [(ASKLoadImageResourceOperation *)self urlRequest];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __38__ASKLoadImageResourceOperation_start__block_invoke;
        v11[3] = &unk_1E870C300;
        objc_copyWeak(&v12, &location);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __38__ASKLoadImageResourceOperation_start__block_invoke_2;
        v9[3] = &unk_1E870C328;
        objc_copyWeak(&v10, &location);
        [v7 createDataTaskWithRequest:v8 activity:0 dataTaskCreationCompletionHandler:v11 requestCompletionHandler:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      NSLog(&cfstr_WarningSCalled.isa, "[ASKLoadImageResourceOperation start]", self);
    }
  }
}

void __38__ASKLoadImageResourceOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setTask:v11];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 willChangeValueForKey:@"isExecuting"];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = __ROR8__([v7 queuePriority] + 8, 2) - 1;
    if (v8 > 3)
    {
      LODWORD(v9) = 1045220557;
    }

    else
    {
      LODWORD(v9) = dword_1E1AFEA10[v8];
    }

    [v11 setPriority:v9];

    [v11 resume];
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 didChangeValueForKey:@"isExecuting"];
  }
}

void __38__ASKLoadImageResourceOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 data];
  v8 = [v6 response];

  [WeakRetained didFinishTaskWithData:v7 response:v8 error:v5];
}

- (void)cancel
{
  v3 = [(ASKLoadImageResourceOperation *)self task];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = ASKLoadImageResourceOperation;
  [(ASKLoadImageResourceOperation *)&v4 cancel];
}

@end