@interface ASKLoadImageResourceOperation
+ (NSURLSession)URLSession;
+ (OS_dispatch_queue)dataConsumerQueue;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 dataConsumer:(id)a4;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5;
- (void)setQueuePriority:(int64_t)a3;
- (void)start;
@end

@implementation ASKLoadImageResourceOperation

+ (NSURLSession)URLSession
{
  if (URLSession_onceToken != -1)
  {
    +[ASKLoadImageResourceOperation URLSession];
  }

  v3 = URLSession_URLSession;

  return v3;
}

void __43__ASKLoadImageResourceOperation_URLSession__block_invoke(id a1)
{
  v1 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v7 = @"User-Agent";
  v2 = +[AMSProcessInfo currentProcess];
  v3 = [AMSUserAgent userAgentForProcessInfo:v2];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v1 setHTTPAdditionalHeaders:v4];

  v5 = [NSURLSession sessionWithConfiguration:v1];
  v6 = URLSession_URLSession;
  URLSession_URLSession = v5;
}

+ (OS_dispatch_queue)dataConsumerQueue
{
  if (dataConsumerQueue_onceToken != -1)
  {
    +[ASKLoadImageResourceOperation dataConsumerQueue];
  }

  v3 = dataConsumerQueue_dataConsumerQueue;

  return v3;
}

void __50__ASKLoadImageResourceOperation_dataConsumerQueue__block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UNSPECIFIED, 0);

  v2 = dispatch_queue_create("ShelfKit.LoadImageResourceOperation.dataConsumerQueue", attr);
  v3 = dataConsumerQueue_dataConsumerQueue;
  dataConsumerQueue_dataConsumerQueue = v2;
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = ASKLoadImageResourceOperation;
  v14 = [(ASKLoadImageResourceOperation *)&v27 init];
  if (v14)
  {
    objc_initWeak(&location, v14);
    v15 = [v10 URL];
    v16 = [v15 hash];

    if (!v16)
    {
      v17 = _MTLogCategoryArtworkDownload();
      v16 = os_signpost_id_generate(v17);
    }

    v14->_signpostID = v16;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __94__ASKLoadImageResourceOperation_initWithURLRequest_URLSession_dataConsumer_dataConsumerQueue___block_invoke;
    v24[3] = &unk_4AF348;
    v25[1] = v16;
    objc_copyWeak(v25, &location);
    v18 = [v11 dataTaskWithRequest:v10 completionHandler:v24];
    task = v14->_task;
    v14->_task = v18;

    v20 = _MTLogCategoryArtworkDownload();
    v21 = v20;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_EVENT, v16, "ASKLoadImageResourceOperation task created", "", v23, 2u);
    }

    objc_storeStrong(&v14->_dataConsumer, a5);
    objc_storeStrong(&v14->_dataConsumerQueue, a6);
    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __94__ASKLoadImageResourceOperation_initWithURLRequest_URLSession_dataConsumer_dataConsumerQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = _MTLogCategoryArtworkDownload();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, v12, "ASKLoadImageResourceOperation", "", v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishTaskWithData:v9 response:v8 error:v7];
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)a3 dataConsumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() URLSession];
  v9 = [objc_opt_class() dataConsumerQueue];
  v10 = [(ASKLoadImageResourceOperation *)self initWithURLRequest:v7 URLSession:v8 dataConsumer:v6 dataConsumerQueue:v9];

  return v10;
}

- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(ASKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
  v9 = [(ASKLoadImageResourceOperation *)self dataConsumerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__ASKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke;
  block[3] = &unk_4AF370;
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
  v3 = [v4 state] == 0;

  return v3;
}

- (BOOL)isFinished
{
  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ASKLoadImageResourceOperation *)self task];
  v3 = [v4 state] == &dword_0 + 3;

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
    v6 = dword_3F3550[v5];
  }

  v7 = [(ASKLoadImageResourceOperation *)self task];
  LODWORD(v8) = v6;
  [v7 setPriority:v8];
}

- (void)start
{
  v3 = [(ASKLoadImageResourceOperation *)self task];
  v4 = [v3 state];

  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) == 0 && v4 != &dword_0 + 2)
  {
    if (v4 == &dword_0 + 1)
    {
      [(ASKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
      v5 = __ROR8__([(ASKLoadImageResourceOperation *)self queuePriority]+ 8, 2) - 1;
      if (v5 > 3)
      {
        v6 = 1045220557;
      }

      else
      {
        v6 = dword_3F3550[v5];
      }

      v7 = [(ASKLoadImageResourceOperation *)self task];
      LODWORD(v8) = v6;
      [v7 setPriority:v8];

      v9 = _MTLogCategoryArtworkDownload();
      v10 = v9;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "ASKLoadImageResourceOperation", "", buf, 2u);
      }

      v12 = [(ASKLoadImageResourceOperation *)self task];
      [v12 resume];

      [(ASKLoadImageResourceOperation *)self didChangeValueForKey:@"isExecuting"];
    }

    else
    {
      NSLog(@"*** Warning, %s called multiple times on %@", "[ASKLoadImageResourceOperation start]", self);
    }
  }
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