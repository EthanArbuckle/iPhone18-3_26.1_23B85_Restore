@interface JXURLConnectionOperation
+ (id)networkThread;
+ (void)runLoopForever;
- (JXURLConnectionOperation)init;
- (JXURLConnectionOperation)initWithURL:(id)a3;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6;
- (void)connectionDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)main;
- (void)startConnection;
- (void)stopConnection;
- (void)willFinish;
@end

@implementation JXURLConnectionOperation

- (void)connectionDidFinishLoading:(id)a3
{
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {

    [(JXOperation *)self finish];
  }
}

- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6
{
  if (([(JXURLConnectionOperation *)self isCancelled:a3]& 1) == 0)
  {
    v8 = [(JXURLConnectionOperation *)self bytesUploaded]+ a4;

    [(JXURLConnectionOperation *)self setBytesUploaded:v8];
  }
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v10 = a4;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    v5 = [(JXURLConnectionOperation *)self outputStream];
    v6 = [v5 hasSpaceAvailable];

    if (v6)
    {
      v7 = [(JXURLConnectionOperation *)self outputStream];
      v8 = v10;
      v9 = [v7 write:objc_msgSend(v10 maxLength:{"bytes"), objc_msgSend(v10, "length")}];

      if (v9 != -1)
      {
        [(JXURLConnectionOperation *)self setBytesDownloaded:[(JXURLConnectionOperation *)self bytesDownloaded]+ v9];
      }
    }
  }
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  v6 = a4;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    [(JXURLConnectionOperation *)self setResponse:v6];
    v5 = [(JXURLConnectionOperation *)self outputStream];
    [v5 open];
  }
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    [(JXURLConnectionOperation *)self setError:v5];
    [(JXOperation *)self finish];
  }
}

- (void)stopConnection
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [objc_opt_class() networkThread];

  if (v3 == v4)
  {
    v5 = [(JXURLConnectionOperation *)self connection];
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    v7 = *MEMORY[0x277CBE738];
    [v5 unscheduleFromRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

    v8 = [(JXURLConnectionOperation *)self connection];
    [v8 cancel];

    v9 = [(JXURLConnectionOperation *)self outputStream];
    v10 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v9 removeFromRunLoop:v10 forMode:v7];

    v11 = [(JXURLConnectionOperation *)self outputStream];
    [v11 close];
  }

  else
  {
    v11 = [objc_opt_class() networkThread];
    [JXURLConnectionOperation performSelector:"performSelector:onThread:withObject:waitUntilDone:" onThread:sel_stopConnection withObject:? waitUntilDone:?];
  }
}

- (void)startConnection
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [objc_opt_class() networkThread];

  if (v3 == v4)
  {
    if (([(JXURLConnectionOperation *)self isCancelled]& 1) != 0)
    {
      return;
    }

    v5 = [(JXURLConnectionOperation *)self outputStream];
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    v7 = *MEMORY[0x277CBE738];
    [v5 scheduleInRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

    v8 = objc_alloc(MEMORY[0x277CBAB78]);
    v9 = [(JXURLConnectionOperation *)self request];
    v10 = [v8 initWithRequest:v9 delegate:self startImmediately:0];
    [(JXURLConnectionOperation *)self setConnection:v10];

    v11 = [(JXURLConnectionOperation *)self connection];
    v12 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v11 scheduleInRunLoop:v12 forMode:v7];

    v13 = [(JXURLConnectionOperation *)self connection];
    [v13 start];
  }

  else
  {
    v13 = [objc_opt_class() networkThread];
    [JXURLConnectionOperation performSelector:"performSelector:onThread:withObject:waitUntilDone:" onThread:sel_startConnection withObject:? waitUntilDone:?];
  }
}

- (void)willFinish
{
  v3.receiver = self;
  v3.super_class = JXURLConnectionOperation;
  [(JXOperation *)&v3 willFinish];
  [(JXURLConnectionOperation *)self stopConnection];
}

- (void)main
{
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {

    [(JXURLConnectionOperation *)self startConnection];
  }
}

- (JXURLConnectionOperation)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(JXURLConnectionOperation *)self init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v4];
    [(JXURLConnectionOperation *)v5 setRequest:v6];
  }

  return v5;
}

- (JXURLConnectionOperation)init
{
  v6.receiver = self;
  v6.super_class = JXURLConnectionOperation;
  v2 = [(JXOperation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(JXURLConnectionOperation *)v2 setConnection:0];
    [(JXURLConnectionOperation *)v3 setRequest:0];
    [(JXURLConnectionOperation *)v3 setResponse:0];
    [(JXURLConnectionOperation *)v3 setError:0];
    [(JXURLConnectionOperation *)v3 setBytesDownloaded:0];
    [(JXURLConnectionOperation *)v3 setBytesUploaded:0];
    v4 = [objc_alloc(MEMORY[0x277CBEB78]) initToMemory];
    [(JXURLConnectionOperation *)v3 setOutputStream:v4];
  }

  return v3;
}

- (void)dealloc
{
  [(JXURLConnectionOperation *)self stopConnection];
  v3.receiver = self;
  v3.super_class = JXURLConnectionOperation;
  [(JXOperation *)&v3 dealloc];
}

+ (void)runLoopForever
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  [v2 setName:@"JXHTTP"];

  v3 = *MEMORY[0x277CBE640];
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
    v6 = [MEMORY[0x277CBEAA8] distantFuture];
    [v5 runMode:v3 beforeDate:v6];

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)networkThread
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__JXURLConnectionOperation_networkThread__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (networkThread_predicate != -1)
  {
    dispatch_once(&networkThread_predicate, block);
  }

  v2 = networkThread_thread;

  return v2;
}

uint64_t __41__JXURLConnectionOperation_networkThread__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:*(a1 + 32) selector:sel_runLoopForever object:0];
  v2 = networkThread_thread;
  networkThread_thread = v1;

  v3 = networkThread_thread;

  return [v3 start];
}

@end