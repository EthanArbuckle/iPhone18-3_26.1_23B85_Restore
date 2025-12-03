@interface JXURLConnectionOperation
+ (id)networkThread;
+ (void)runLoopForever;
- (JXURLConnectionOperation)init;
- (JXURLConnectionOperation)initWithURL:(id)l;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)main;
- (void)startConnection;
- (void)stopConnection;
- (void)willFinish;
@end

@implementation JXURLConnectionOperation

- (void)connectionDidFinishLoading:(id)loading
{
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {

    [(JXOperation *)self finish];
  }
}

- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  if (([(JXURLConnectionOperation *)self isCancelled:connection]& 1) == 0)
  {
    v8 = [(JXURLConnectionOperation *)self bytesUploaded]+ data;

    [(JXURLConnectionOperation *)self setBytesUploaded:v8];
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  dataCopy = data;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    outputStream = [(JXURLConnectionOperation *)self outputStream];
    hasSpaceAvailable = [outputStream hasSpaceAvailable];

    if (hasSpaceAvailable)
    {
      outputStream2 = [(JXURLConnectionOperation *)self outputStream];
      v8 = dataCopy;
      v9 = [outputStream2 write:objc_msgSend(dataCopy maxLength:{"bytes"), objc_msgSend(dataCopy, "length")}];

      if (v9 != -1)
      {
        [(JXURLConnectionOperation *)self setBytesDownloaded:[(JXURLConnectionOperation *)self bytesDownloaded]+ v9];
      }
    }
  }
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  responseCopy = response;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    [(JXURLConnectionOperation *)self setResponse:responseCopy];
    outputStream = [(JXURLConnectionOperation *)self outputStream];
    [outputStream open];
  }
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  errorCopy = error;
  if (([(JXURLConnectionOperation *)self isCancelled]& 1) == 0)
  {
    [(JXURLConnectionOperation *)self setError:errorCopy];
    [(JXOperation *)self finish];
  }
}

- (void)stopConnection
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  networkThread = [objc_opt_class() networkThread];

  if (currentThread == networkThread)
  {
    connection = [(JXURLConnectionOperation *)self connection];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v7 = *MEMORY[0x277CBE738];
    [connection unscheduleFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    connection2 = [(JXURLConnectionOperation *)self connection];
    [connection2 cancel];

    outputStream = [(JXURLConnectionOperation *)self outputStream];
    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [outputStream removeFromRunLoop:currentRunLoop2 forMode:v7];

    outputStream2 = [(JXURLConnectionOperation *)self outputStream];
    [outputStream2 close];
  }

  else
  {
    outputStream2 = [objc_opt_class() networkThread];
    [JXURLConnectionOperation performSelector:"performSelector:onThread:withObject:waitUntilDone:" onThread:sel_stopConnection withObject:? waitUntilDone:?];
  }
}

- (void)startConnection
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  networkThread = [objc_opt_class() networkThread];

  if (currentThread == networkThread)
  {
    if (([(JXURLConnectionOperation *)self isCancelled]& 1) != 0)
    {
      return;
    }

    outputStream = [(JXURLConnectionOperation *)self outputStream];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v7 = *MEMORY[0x277CBE738];
    [outputStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    v8 = objc_alloc(MEMORY[0x277CBAB78]);
    request = [(JXURLConnectionOperation *)self request];
    v10 = [v8 initWithRequest:request delegate:self startImmediately:0];
    [(JXURLConnectionOperation *)self setConnection:v10];

    connection = [(JXURLConnectionOperation *)self connection];
    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [connection scheduleInRunLoop:currentRunLoop2 forMode:v7];

    connection2 = [(JXURLConnectionOperation *)self connection];
    [connection2 start];
  }

  else
  {
    connection2 = [objc_opt_class() networkThread];
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

- (JXURLConnectionOperation)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(JXURLConnectionOperation *)self init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:lCopy];
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
    initToMemory = [objc_alloc(MEMORY[0x277CBEB78]) initToMemory];
    [(JXURLConnectionOperation *)v3 setOutputStream:initToMemory];
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
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [currentThread setName:@"JXHTTP"];

  v3 = *MEMORY[0x277CBE640];
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [currentRunLoop runMode:v3 beforeDate:distantFuture];

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)networkThread
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__JXURLConnectionOperation_networkThread__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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