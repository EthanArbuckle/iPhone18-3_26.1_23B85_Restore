@interface ENAFURLConnectionOperation
+ (id)networkRequestThread;
+ (void)networkRequestThreadEntryPoint:(id)point;
- (BOOL)connection:(id)connection canAuthenticateAgainstProtectionSpace:(id)space;
- (BOOL)isReady;
- (ENAFURLConnectionOperation)initWithCoder:(id)coder;
- (ENAFURLConnectionOperation)initWithRequest:(id)request;
- (NSInputStream)inputStream;
- (NSString)description;
- (NSString)responseString;
- (id)connection:(id)connection willCacheResponse:(id)response;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (void)cancel;
- (void)cancelConnection;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)operationDidStart;
- (void)pause;
- (void)resume;
- (void)setCompletionBlock:(id)block;
- (void)setInputStream:(id)stream;
- (void)setOutputStream:(id)stream;
- (void)setState:(signed __int16)state;
- (void)start;
@end

@implementation ENAFURLConnectionOperation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  request = [(ENAFURLConnectionOperation *)self request];
  v6 = [v4 initWithRequest:request];

  uploadProgress = [(ENAFURLConnectionOperation *)self uploadProgress];
  [v6 setUploadProgress:uploadProgress];

  downloadProgress = [(ENAFURLConnectionOperation *)self downloadProgress];
  [v6 setDownloadProgress:downloadProgress];

  authenticationAgainstProtectionSpace = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];
  [v6 setAuthenticationAgainstProtectionSpace:authenticationAgainstProtectionSpace];

  authenticationChallenge = [(ENAFURLConnectionOperation *)self authenticationChallenge];
  [v6 setAuthenticationChallenge:authenticationChallenge];

  cacheResponse = [(ENAFURLConnectionOperation *)self cacheResponse];
  [v6 setCacheResponse:cacheResponse];

  redirectResponse = [(ENAFURLConnectionOperation *)self redirectResponse];
  [v6 setRedirectResponse:redirectResponse];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ENAFURLConnectionOperation *)self pause];
  request = [(ENAFURLConnectionOperation *)self request];
  [coderCopy encodeObject:request forKey:@"request"];

  state = [(ENAFURLConnectionOperation *)self state];
  state2 = 1;
  if (state != 2 && state != 0xFFFF)
  {
    state2 = [(ENAFURLConnectionOperation *)self state];
  }

  [coderCopy encodeInteger:state2 forKey:@"state"];
  [coderCopy encodeBool:-[ENAFURLConnectionOperation isCancelled](self forKey:{"isCancelled"), @"isCancelled"}];
  response = [(ENAFURLConnectionOperation *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  error = [(ENAFURLConnectionOperation *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  responseData = [(ENAFURLConnectionOperation *)self responseData];
  [coderCopy encodeObject:responseData forKey:@"responseData"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ENAFURLConnectionOperation totalBytesRead](self, "totalBytesRead")}];
  [coderCopy encodeObject:v10 forKey:@"totalBytesRead"];
}

- (ENAFURLConnectionOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"request"];
  v6 = [(ENAFURLConnectionOperation *)self initWithRequest:v5];
  if (v6)
  {
    -[ENAFURLConnectionOperation setState:](v6, "setState:", [coderCopy decodeIntegerForKey:@"state"]);
    -[ENAFURLConnectionOperation setCancelled:](v6, "setCancelled:", [coderCopy decodeBoolForKey:@"isCancelled"]);
    v7 = [coderCopy decodeObjectForKey:@"response"];
    [(ENAFURLConnectionOperation *)v6 setResponse:v7];

    v8 = [coderCopy decodeObjectForKey:@"error"];
    [(ENAFURLConnectionOperation *)v6 setError:v8];

    v9 = [coderCopy decodeObjectForKey:@"responseData"];
    [(ENAFURLConnectionOperation *)v6 setResponseData:v9];

    v10 = [coderCopy decodeObjectForKey:@"totalBytesRead"];
    -[ENAFURLConnectionOperation setTotalBytesRead:](v6, "setTotalBytesRead:", [v10 longLongValue]);

    v11 = v6;
  }

  return v6;
}

- (id)connection:(id)connection willCacheResponse:(id)response
{
  connectionCopy = connection;
  responseCopy = response;
  cacheResponse = [(ENAFURLConnectionOperation *)self cacheResponse];

  if (cacheResponse)
  {
    cacheResponse2 = [(ENAFURLConnectionOperation *)self cacheResponse];
    v10 = (cacheResponse2)[2](cacheResponse2, connectionCopy, responseCopy);
  }

  else if ([(ENAFURLConnectionOperation *)self isCancelled])
  {
    v10 = 0;
  }

  else
  {
    v10 = responseCopy;
  }

  return v10;
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  [(ENAFURLConnectionOperation *)self setError:error];
  outputStream = [(ENAFURLConnectionOperation *)self outputStream];
  [outputStream close];

  [(ENAFURLConnectionOperation *)self finish];

  [(ENAFURLConnectionOperation *)self setConnection:0];
}

- (void)connectionDidFinishLoading:(id)loading
{
  outputStream = [(ENAFURLConnectionOperation *)self outputStream];
  v5 = [outputStream propertyForKey:*MEMORY[0x277CBE740]];
  [(ENAFURLConnectionOperation *)self setResponseData:v5];

  outputStream2 = [(ENAFURLConnectionOperation *)self outputStream];
  [outputStream2 close];

  [(ENAFURLConnectionOperation *)self finish];

  [(ENAFURLConnectionOperation *)self setConnection:0];
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  dataCopy = data;
  -[ENAFURLConnectionOperation setTotalBytesRead:](self, "setTotalBytesRead:", -[ENAFURLConnectionOperation totalBytesRead](self, "totalBytesRead") + [dataCopy length]);
  outputStream = [(ENAFURLConnectionOperation *)self outputStream];
  hasSpaceAvailable = [outputStream hasSpaceAvailable];

  if (hasSpaceAvailable)
  {
    bytes = [dataCopy bytes];
    outputStream2 = [(ENAFURLConnectionOperation *)self outputStream];
    [outputStream2 write:bytes maxLength:{objc_msgSend(dataCopy, "length")}];
  }

  downloadProgress = [(ENAFURLConnectionOperation *)self downloadProgress];

  if (downloadProgress)
  {
    v11 = [dataCopy length];
    totalBytesRead = [(ENAFURLConnectionOperation *)self totalBytesRead];
    response = [(ENAFURLConnectionOperation *)self response];
    expectedContentLength = [response expectedContentLength];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__ENAFURLConnectionOperation_connection_didReceiveData___block_invoke;
    v15[3] = &unk_278C198F0;
    v15[4] = self;
    v15[5] = v11;
    v15[6] = totalBytesRead;
    v15[7] = expectedContentLength;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __56__ENAFURLConnectionOperation_connection_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadProgress];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  [(ENAFURLConnectionOperation *)self setResponse:response];
  outputStream = [(ENAFURLConnectionOperation *)self outputStream];
  [outputStream open];
}

- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  uploadProgress = [(ENAFURLConnectionOperation *)self uploadProgress];

  if (uploadProgress)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__ENAFURLConnectionOperation_connection_didSendBodyData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
    v11[3] = &unk_278C198F0;
    v11[4] = self;
    v11[5] = data;
    v11[6] = written;
    v11[7] = write;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __101__ENAFURLConnectionOperation_connection_didSendBodyData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadProgress];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  connectionCopy = connection;
  requestCopy = request;
  responseCopy = response;
  redirectResponse = [(ENAFURLConnectionOperation *)self redirectResponse];

  if (redirectResponse)
  {
    redirectResponse2 = [(ENAFURLConnectionOperation *)self redirectResponse];
    v13 = (redirectResponse2)[2](redirectResponse2, connectionCopy, requestCopy, responseCopy);
  }

  else
  {
    v13 = requestCopy;
  }

  return v13;
}

- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge
{
  connectionCopy = connection;
  challengeCopy = challenge;
  authenticationChallenge = [(ENAFURLConnectionOperation *)self authenticationChallenge];

  if (authenticationChallenge)
  {
    authenticationChallenge2 = [(ENAFURLConnectionOperation *)self authenticationChallenge];
    (authenticationChallenge2)[2](authenticationChallenge2, connectionCopy, challengeCopy);
  }

  else if ([challengeCopy previousFailureCount])
  {
    authenticationChallenge2 = [challengeCopy sender];
    [authenticationChallenge2 continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
  }

  else
  {
    request = [(ENAFURLConnectionOperation *)self request];
    v10 = CFURLCopyUserName([request URL]);

    request2 = [(ENAFURLConnectionOperation *)self request];
    v12 = CFURLCopyPassword([request2 URL]);

    if (v10 && v12)
    {
      authenticationChallenge2 = [MEMORY[0x277CBAB80] credentialWithUser:v10 password:v12 persistence:0];
    }

    else
    {
      mEMORY[0x277CBAB88] = [MEMORY[0x277CBAB88] sharedCredentialStorage];
      protectionSpace = [challengeCopy protectionSpace];
      if (v10)
      {
        v15 = [mEMORY[0x277CBAB88] credentialsForProtectionSpace:protectionSpace];
        authenticationChallenge2 = [v15 objectForKey:v10];
      }

      else
      {
        authenticationChallenge2 = [mEMORY[0x277CBAB88] defaultCredentialForProtectionSpace:protectionSpace];
      }
    }

    sender = [challengeCopy sender];
    v17 = sender;
    if (authenticationChallenge2)
    {
      [sender useCredential:authenticationChallenge2 forAuthenticationChallenge:challengeCopy];
    }

    else
    {
      [sender continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
    }
  }
}

- (BOOL)connection:(id)connection canAuthenticateAgainstProtectionSpace:(id)space
{
  connectionCopy = connection;
  spaceCopy = space;
  authenticationAgainstProtectionSpace = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];

  if (authenticationAgainstProtectionSpace)
  {
    authenticationAgainstProtectionSpace2 = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];
    v10 = (authenticationAgainstProtectionSpace2)[2](authenticationAgainstProtectionSpace2, connectionCopy, spaceCopy);
  }

  else
  {
    authenticationMethod = [spaceCopy authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]])
    {
    }

    else
    {
      authenticationMethod2 = [spaceCopy authenticationMethod];
      v13 = [authenticationMethod2 isEqualToString:*MEMORY[0x277CBAAC8]];

      if (!v13)
      {
        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)cancelConnection
{
  connection = [(ENAFURLConnectionOperation *)self connection];

  if (connection)
  {
    connection2 = [(ENAFURLConnectionOperation *)self connection];
    [connection2 cancel];

    request = [(ENAFURLConnectionOperation *)self request];
    v6 = [request URL];

    if (v6)
    {
      v7 = MEMORY[0x277CBEAC0];
      request2 = [(ENAFURLConnectionOperation *)self request];
      v9 = [request2 URL];
      v12 = [v7 dictionaryWithObject:v9 forKey:*MEMORY[0x277CCA748]];
    }

    else
    {
      v12 = 0;
    }

    connection3 = [(ENAFURLConnectionOperation *)self connection];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:v12];
    [(ENAFURLConnectionOperation *)self performSelector:sel_connection_didFailWithError_ withObject:connection3 withObject:v11];
  }
}

- (void)cancel
{
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  if (![(ENAFURLConnectionOperation *)self isFinished]&& ![(ENAFURLConnectionOperation *)self isCancelled])
  {
    [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"isCancelled"];
    self->_cancelled = 1;
    v8.receiver = self;
    v8.super_class = ENAFURLConnectionOperation;
    [(ENAFURLConnectionOperation *)&v8 cancel];
    [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"isCancelled"];
    networkRequestThread = [objc_opt_class() networkRequestThread];
    runLoopModes = [(ENAFURLConnectionOperation *)self runLoopModes];
    allObjects = [runLoopModes allObjects];
    [(ENAFURLConnectionOperation *)self performSelector:sel_cancelConnection onThread:networkRequestThread withObject:0 waitUntilDone:0 modes:allObjects];
  }

  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];
}

- (void)operationDidStart
{
  v24 = *MEMORY[0x277D85DE8];
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  if ([(ENAFURLConnectionOperation *)self isCancelled])
  {
    [(ENAFURLConnectionOperation *)self finish];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CBAB78]);
    request = [(ENAFURLConnectionOperation *)self request];
    v6 = [v4 initWithRequest:request delegate:self startImmediately:0];
    [(ENAFURLConnectionOperation *)self setConnection:v6];

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    runLoopModes = [(ENAFURLConnectionOperation *)self runLoopModes];
    v9 = [runLoopModes countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(runLoopModes);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          connection = [(ENAFURLConnectionOperation *)self connection];
          [connection scheduleInRunLoop:currentRunLoop forMode:v13];

          outputStream = [(ENAFURLConnectionOperation *)self outputStream];
          [outputStream scheduleInRunLoop:currentRunLoop forMode:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [runLoopModes countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    connection2 = [(ENAFURLConnectionOperation *)self connection];
    [connection2 start];
  }

  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  if ([(ENAFURLConnectionOperation *)self isReady])
  {
    [(ENAFURLConnectionOperation *)self setState:2];
    networkRequestThread = [objc_opt_class() networkRequestThread];
    runLoopModes = [(ENAFURLConnectionOperation *)self runLoopModes];
    allObjects = [runLoopModes allObjects];
    [(ENAFURLConnectionOperation *)self performSelector:sel_operationDidStart onThread:networkRequestThread withObject:0 waitUntilDone:0 modes:allObjects];
  }

  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];
}

- (BOOL)isReady
{
  if ([(ENAFURLConnectionOperation *)self state]!= 1)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = ENAFURLConnectionOperation;
  return [(ENAFURLConnectionOperation *)&v4 isReady];
}

- (void)resume
{
  if ([(ENAFURLConnectionOperation *)self isPaused])
  {
    lock = [(ENAFURLConnectionOperation *)self lock];
    [lock lock];

    [(ENAFURLConnectionOperation *)self setState:1];
    [(ENAFURLConnectionOperation *)self start];
    lock2 = [(ENAFURLConnectionOperation *)self lock];
    [lock2 unlock];
  }
}

- (void)pause
{
  if (![(ENAFURLConnectionOperation *)self isPaused]&& ![(ENAFURLConnectionOperation *)self isFinished]&& ![(ENAFURLConnectionOperation *)self isCancelled])
  {
    lock = [(ENAFURLConnectionOperation *)self lock];
    [lock lock];

    if ([(ENAFURLConnectionOperation *)self isExecuting])
    {
      connection = [(ENAFURLConnectionOperation *)self connection];
      networkRequestThread = [objc_opt_class() networkRequestThread];
      runLoopModes = [(ENAFURLConnectionOperation *)self runLoopModes];
      allObjects = [runLoopModes allObjects];
      [connection performSelector:sel_cancel onThread:networkRequestThread withObject:0 waitUntilDone:0 modes:allObjects];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"com.evernote.sdk.networking.operation.finish" object:self];
    }

    [(ENAFURLConnectionOperation *)self setState:0xFFFFFFFFLL];
    lock2 = [(ENAFURLConnectionOperation *)self lock];
    [lock2 unlock];
  }
}

- (NSString)responseString
{
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  if (!self->_responseString)
  {
    response = [(ENAFURLConnectionOperation *)self response];
    if (response)
    {
      v8 = response;
      responseData = [(ENAFURLConnectionOperation *)self responseData];

      if (responseData)
      {
        response2 = [(ENAFURLConnectionOperation *)self response];
        textEncodingName = [response2 textEncodingName];

        if (!textEncodingName || (-[ENAFURLConnectionOperation response](self, "response"), v12 = objc_claimAutoreleasedReturnValue(), [v12 textEncodingName], v13 = objc_claimAutoreleasedReturnValue(), v14 = CFStringConvertIANACharSetNameToEncoding(v13), v13, v12, v14 == -1))
        {
          v15 = 4;
        }

        else
        {
          v15 = CFStringConvertEncodingToNSStringEncoding(v14);
        }

        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        responseData2 = [(ENAFURLConnectionOperation *)self responseData];
        v18 = [v16 initWithData:responseData2 encoding:v15];
        [(ENAFURLConnectionOperation *)self setResponseString:v18];
      }
    }
  }

  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];

  responseString = self->_responseString;

  return responseString;
}

- (void)setState:(signed __int16)state
{
  stateCopy = state;
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  state = [(ENAFURLConnectionOperation *)self state];
  isCancelled = [(ENAFURLConnectionOperation *)self isCancelled];
  if (state > 2u)
  {
    if (state == 3 || state == 0xFFFF && stateCopy != 1)
    {
      goto LABEL_25;
    }
  }

  else if (state == 1)
  {
    if (stateCopy != -1 && stateCopy != 2 && (stateCopy != 3 || !isCancelled))
    {
      goto LABEL_25;
    }
  }

  else if (state == 2 && ((stateCopy + 1) & 0xFFFB) != 0)
  {
    goto LABEL_25;
  }

  v8 = [(ENAFURLConnectionOperation *)self state]+ 1;
  if (v8 > 4)
  {
    v9 = @"state";
  }

  else
  {
    v9 = off_278C19910[v8];
  }

  if ((stateCopy + 1) > 4)
  {
    v10 = @"state";
  }

  else
  {
    v10 = off_278C19910[(stateCopy + 1)];
  }

  [(ENAFURLConnectionOperation *)self willChangeValueForKey:v10];
  [(ENAFURLConnectionOperation *)self willChangeValueForKey:v9];
  self->_state = stateCopy;
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:v9];
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:v10];
  if (stateCopy == 2)
  {
    v11 = @"com.evernote.sdk.networking.operation.start";
  }

  else
  {
    if (stateCopy != 3)
    {
      goto LABEL_25;
    }

    v11 = @"com.evernote.sdk.networking.operation.finish";
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:v11 object:self];

LABEL_25:
  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];
}

- (void)setOutputStream:(id)stream
{
  streamCopy = stream;
  if (self->_outputStream != streamCopy)
  {
    v7 = streamCopy;
    [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"outputStream"];
    outputStream = self->_outputStream;
    if (outputStream)
    {
      [(NSOutputStream *)outputStream close];
    }

    objc_storeStrong(&self->_outputStream, stream);
    [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"outputStream"];
    streamCopy = v7;
  }
}

- (void)setInputStream:(id)stream
{
  streamCopy = stream;
  [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"inputStream"];
  request = [(ENAFURLConnectionOperation *)self request];
  v6 = [request mutableCopy];

  [v6 setHTTPBodyStream:streamCopy];
  [(ENAFURLConnectionOperation *)self setRequest:v6];
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"inputStream"];
}

- (NSInputStream)inputStream
{
  request = [(ENAFURLConnectionOperation *)self request];
  hTTPBodyStream = [request HTTPBodyStream];

  return hTTPBodyStream;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  lock = [(ENAFURLConnectionOperation *)self lock];
  [lock lock];

  if (blockCopy)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ENAFURLConnectionOperation_setCompletionBlock___block_invoke;
    v8[3] = &unk_278C1D7A0;
    v9 = blockCopy;
    objc_copyWeak(&v10, &location);
    v7.receiver = self;
    v7.super_class = ENAFURLConnectionOperation;
    [(ENAFURLConnectionOperation *)&v7 setCompletionBlock:v8];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ENAFURLConnectionOperation;
    [(ENAFURLConnectionOperation *)&v12 setCompletionBlock:0];
  }

  lock2 = [(ENAFURLConnectionOperation *)self lock];
  [lock2 unlock];
}

void __49__ENAFURLConnectionOperation_setCompletionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompletionBlock:0];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ENAFURLConnectionOperation *)self state]+ 1;
  if (v6 > 4)
  {
    v7 = @"state";
  }

  else
  {
    v7 = off_278C19910[v6];
  }

  if ([(ENAFURLConnectionOperation *)self isCancelled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  request = [(ENAFURLConnectionOperation *)self request];
  response = [(ENAFURLConnectionOperation *)self response];
  v11 = [v3 stringWithFormat:@"<%@: %p, state: %@, cancelled: %@ request: %@, response: %@>", v5, self, v7, v8, request, response];

  return v11;
}

- (void)dealloc
{
  outputStream = self->_outputStream;
  if (outputStream)
  {
    [(NSOutputStream *)outputStream close];
    v4 = self->_outputStream;
    self->_outputStream = 0;
  }

  v5.receiver = self;
  v5.super_class = ENAFURLConnectionOperation;
  [(ENAFURLConnectionOperation *)&v5 dealloc];
}

- (ENAFURLConnectionOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = ENAFURLConnectionOperation;
  v5 = [(ENAFURLConnectionOperation *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAC60]);
    [(ENAFURLConnectionOperation *)v5 setLock:v6];

    lock = [(ENAFURLConnectionOperation *)v5 lock];
    [lock setName:@"com.alamofire.networking.operation.lock"];

    v8 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CBE738]];
    [(ENAFURLConnectionOperation *)v5 setRunLoopModes:v8];

    [(ENAFURLConnectionOperation *)v5 setRequest:requestCopy];
    outputStreamToMemory = [MEMORY[0x277CBEB78] outputStreamToMemory];
    [(ENAFURLConnectionOperation *)v5 setOutputStream:outputStreamToMemory];

    [(ENAFURLConnectionOperation *)v5 setState:1];
    v10 = v5;
  }

  return v5;
}

+ (id)networkRequestThread
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENAFURLConnectionOperation_networkRequestThread__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (networkRequestThread_oncePredicate != -1)
  {
    dispatch_once(&networkRequestThread_oncePredicate, block);
  }

  v2 = networkRequestThread__networkRequestThread;

  return v2;
}

uint64_t __50__ENAFURLConnectionOperation_networkRequestThread__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:*(a1 + 32) selector:sel_networkRequestThreadEntryPoint_ object:0];
  v2 = networkRequestThread__networkRequestThread;
  networkRequestThread__networkRequestThread = v1;

  v3 = networkRequestThread__networkRequestThread;

  return [v3 start];
}

+ (void)networkRequestThreadEntryPoint:(id)point
{
  pointCopy = point;
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop run];

    objc_autoreleasePoolPop(v4);
  }
}

@end