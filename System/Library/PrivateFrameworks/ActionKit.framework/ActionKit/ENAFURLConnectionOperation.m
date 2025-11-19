@interface ENAFURLConnectionOperation
+ (id)networkRequestThread;
+ (void)networkRequestThreadEntryPoint:(id)a3;
- (BOOL)connection:(id)a3 canAuthenticateAgainstProtectionSpace:(id)a4;
- (BOOL)isReady;
- (ENAFURLConnectionOperation)initWithCoder:(id)a3;
- (ENAFURLConnectionOperation)initWithRequest:(id)a3;
- (NSInputStream)inputStream;
- (NSString)description;
- (NSString)responseString;
- (id)connection:(id)a3 willCacheResponse:(id)a4;
- (id)connection:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)cancel;
- (void)cancelConnection;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6;
- (void)connectionDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)operationDidStart;
- (void)pause;
- (void)resume;
- (void)setCompletionBlock:(id)a3;
- (void)setInputStream:(id)a3;
- (void)setOutputStream:(id)a3;
- (void)setState:(signed __int16)a3;
- (void)start;
@end

@implementation ENAFURLConnectionOperation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ENAFURLConnectionOperation *)self request];
  v6 = [v4 initWithRequest:v5];

  v7 = [(ENAFURLConnectionOperation *)self uploadProgress];
  [v6 setUploadProgress:v7];

  v8 = [(ENAFURLConnectionOperation *)self downloadProgress];
  [v6 setDownloadProgress:v8];

  v9 = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];
  [v6 setAuthenticationAgainstProtectionSpace:v9];

  v10 = [(ENAFURLConnectionOperation *)self authenticationChallenge];
  [v6 setAuthenticationChallenge:v10];

  v11 = [(ENAFURLConnectionOperation *)self cacheResponse];
  [v6 setCacheResponse:v11];

  v12 = [(ENAFURLConnectionOperation *)self redirectResponse];
  [v6 setRedirectResponse:v12];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [(ENAFURLConnectionOperation *)self pause];
  v4 = [(ENAFURLConnectionOperation *)self request];
  [v11 encodeObject:v4 forKey:@"request"];

  v5 = [(ENAFURLConnectionOperation *)self state];
  v6 = 1;
  if (v5 != 2 && v5 != 0xFFFF)
  {
    v6 = [(ENAFURLConnectionOperation *)self state];
  }

  [v11 encodeInteger:v6 forKey:@"state"];
  [v11 encodeBool:-[ENAFURLConnectionOperation isCancelled](self forKey:{"isCancelled"), @"isCancelled"}];
  v7 = [(ENAFURLConnectionOperation *)self response];
  [v11 encodeObject:v7 forKey:@"response"];

  v8 = [(ENAFURLConnectionOperation *)self error];
  [v11 encodeObject:v8 forKey:@"error"];

  v9 = [(ENAFURLConnectionOperation *)self responseData];
  [v11 encodeObject:v9 forKey:@"responseData"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ENAFURLConnectionOperation totalBytesRead](self, "totalBytesRead")}];
  [v11 encodeObject:v10 forKey:@"totalBytesRead"];
}

- (ENAFURLConnectionOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"request"];
  v6 = [(ENAFURLConnectionOperation *)self initWithRequest:v5];
  if (v6)
  {
    -[ENAFURLConnectionOperation setState:](v6, "setState:", [v4 decodeIntegerForKey:@"state"]);
    -[ENAFURLConnectionOperation setCancelled:](v6, "setCancelled:", [v4 decodeBoolForKey:@"isCancelled"]);
    v7 = [v4 decodeObjectForKey:@"response"];
    [(ENAFURLConnectionOperation *)v6 setResponse:v7];

    v8 = [v4 decodeObjectForKey:@"error"];
    [(ENAFURLConnectionOperation *)v6 setError:v8];

    v9 = [v4 decodeObjectForKey:@"responseData"];
    [(ENAFURLConnectionOperation *)v6 setResponseData:v9];

    v10 = [v4 decodeObjectForKey:@"totalBytesRead"];
    -[ENAFURLConnectionOperation setTotalBytesRead:](v6, "setTotalBytesRead:", [v10 longLongValue]);

    v11 = v6;
  }

  return v6;
}

- (id)connection:(id)a3 willCacheResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENAFURLConnectionOperation *)self cacheResponse];

  if (v8)
  {
    v9 = [(ENAFURLConnectionOperation *)self cacheResponse];
    v10 = (v9)[2](v9, v6, v7);
  }

  else if ([(ENAFURLConnectionOperation *)self isCancelled])
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  [(ENAFURLConnectionOperation *)self setError:a4];
  v5 = [(ENAFURLConnectionOperation *)self outputStream];
  [v5 close];

  [(ENAFURLConnectionOperation *)self finish];

  [(ENAFURLConnectionOperation *)self setConnection:0];
}

- (void)connectionDidFinishLoading:(id)a3
{
  v4 = [(ENAFURLConnectionOperation *)self outputStream];
  v5 = [v4 propertyForKey:*MEMORY[0x277CBE740]];
  [(ENAFURLConnectionOperation *)self setResponseData:v5];

  v6 = [(ENAFURLConnectionOperation *)self outputStream];
  [v6 close];

  [(ENAFURLConnectionOperation *)self finish];

  [(ENAFURLConnectionOperation *)self setConnection:0];
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v5 = a4;
  -[ENAFURLConnectionOperation setTotalBytesRead:](self, "setTotalBytesRead:", -[ENAFURLConnectionOperation totalBytesRead](self, "totalBytesRead") + [v5 length]);
  v6 = [(ENAFURLConnectionOperation *)self outputStream];
  v7 = [v6 hasSpaceAvailable];

  if (v7)
  {
    v8 = [v5 bytes];
    v9 = [(ENAFURLConnectionOperation *)self outputStream];
    [v9 write:v8 maxLength:{objc_msgSend(v5, "length")}];
  }

  v10 = [(ENAFURLConnectionOperation *)self downloadProgress];

  if (v10)
  {
    v11 = [v5 length];
    v12 = [(ENAFURLConnectionOperation *)self totalBytesRead];
    v13 = [(ENAFURLConnectionOperation *)self response];
    v14 = [v13 expectedContentLength];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__ENAFURLConnectionOperation_connection_didReceiveData___block_invoke;
    v15[3] = &unk_278C198F0;
    v15[4] = self;
    v15[5] = v11;
    v15[6] = v12;
    v15[7] = v14;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __56__ENAFURLConnectionOperation_connection_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadProgress];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  [(ENAFURLConnectionOperation *)self setResponse:a4];
  v5 = [(ENAFURLConnectionOperation *)self outputStream];
  [v5 open];
}

- (void)connection:(id)a3 didSendBodyData:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6
{
  v10 = [(ENAFURLConnectionOperation *)self uploadProgress];

  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__ENAFURLConnectionOperation_connection_didSendBodyData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
    v11[3] = &unk_278C198F0;
    v11[4] = self;
    v11[5] = a4;
    v11[6] = a5;
    v11[7] = a6;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __101__ENAFURLConnectionOperation_connection_didSendBodyData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uploadProgress];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (id)connection:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ENAFURLConnectionOperation *)self redirectResponse];

  if (v11)
  {
    v12 = [(ENAFURLConnectionOperation *)self redirectResponse];
    v13 = (v12)[2](v12, v8, v9, v10);
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(ENAFURLConnectionOperation *)self authenticationChallenge];

  if (v7)
  {
    v8 = [(ENAFURLConnectionOperation *)self authenticationChallenge];
    (v8)[2](v8, v18, v6);
  }

  else if ([v6 previousFailureCount])
  {
    v8 = [v6 sender];
    [v8 continueWithoutCredentialForAuthenticationChallenge:v6];
  }

  else
  {
    v9 = [(ENAFURLConnectionOperation *)self request];
    v10 = CFURLCopyUserName([v9 URL]);

    v11 = [(ENAFURLConnectionOperation *)self request];
    v12 = CFURLCopyPassword([v11 URL]);

    if (v10 && v12)
    {
      v8 = [MEMORY[0x277CBAB80] credentialWithUser:v10 password:v12 persistence:0];
    }

    else
    {
      v13 = [MEMORY[0x277CBAB88] sharedCredentialStorage];
      v14 = [v6 protectionSpace];
      if (v10)
      {
        v15 = [v13 credentialsForProtectionSpace:v14];
        v8 = [v15 objectForKey:v10];
      }

      else
      {
        v8 = [v13 defaultCredentialForProtectionSpace:v14];
      }
    }

    v16 = [v6 sender];
    v17 = v16;
    if (v8)
    {
      [v16 useCredential:v8 forAuthenticationChallenge:v6];
    }

    else
    {
      [v16 continueWithoutCredentialForAuthenticationChallenge:v6];
    }
  }
}

- (BOOL)connection:(id)a3 canAuthenticateAgainstProtectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];

  if (v8)
  {
    v9 = [(ENAFURLConnectionOperation *)self authenticationAgainstProtectionSpace];
    v10 = (v9)[2](v9, v6, v7);
  }

  else
  {
    v11 = [v7 authenticationMethod];
    if ([v11 isEqualToString:*MEMORY[0x277CBAB00]])
    {
    }

    else
    {
      v12 = [v7 authenticationMethod];
      v13 = [v12 isEqualToString:*MEMORY[0x277CBAAC8]];

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
  v3 = [(ENAFURLConnectionOperation *)self connection];

  if (v3)
  {
    v4 = [(ENAFURLConnectionOperation *)self connection];
    [v4 cancel];

    v5 = [(ENAFURLConnectionOperation *)self request];
    v6 = [v5 URL];

    if (v6)
    {
      v7 = MEMORY[0x277CBEAC0];
      v8 = [(ENAFURLConnectionOperation *)self request];
      v9 = [v8 URL];
      v12 = [v7 dictionaryWithObject:v9 forKey:*MEMORY[0x277CCA748]];
    }

    else
    {
      v12 = 0;
    }

    v10 = [(ENAFURLConnectionOperation *)self connection];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:v12];
    [(ENAFURLConnectionOperation *)self performSelector:sel_connection_didFailWithError_ withObject:v10 withObject:v11];
  }
}

- (void)cancel
{
  v3 = [(ENAFURLConnectionOperation *)self lock];
  [v3 lock];

  if (![(ENAFURLConnectionOperation *)self isFinished]&& ![(ENAFURLConnectionOperation *)self isCancelled])
  {
    [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"isCancelled"];
    self->_cancelled = 1;
    v8.receiver = self;
    v8.super_class = ENAFURLConnectionOperation;
    [(ENAFURLConnectionOperation *)&v8 cancel];
    [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"isCancelled"];
    v4 = [objc_opt_class() networkRequestThread];
    v5 = [(ENAFURLConnectionOperation *)self runLoopModes];
    v6 = [v5 allObjects];
    [(ENAFURLConnectionOperation *)self performSelector:sel_cancelConnection onThread:v4 withObject:0 waitUntilDone:0 modes:v6];
  }

  v7 = [(ENAFURLConnectionOperation *)self lock];
  [v7 unlock];
}

- (void)operationDidStart
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(ENAFURLConnectionOperation *)self lock];
  [v3 lock];

  if ([(ENAFURLConnectionOperation *)self isCancelled])
  {
    [(ENAFURLConnectionOperation *)self finish];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CBAB78]);
    v5 = [(ENAFURLConnectionOperation *)self request];
    v6 = [v4 initWithRequest:v5 delegate:self startImmediately:0];
    [(ENAFURLConnectionOperation *)self setConnection:v6];

    v7 = [MEMORY[0x277CBEB88] currentRunLoop];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(ENAFURLConnectionOperation *)self runLoopModes];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [(ENAFURLConnectionOperation *)self connection];
          [v14 scheduleInRunLoop:v7 forMode:v13];

          v15 = [(ENAFURLConnectionOperation *)self outputStream];
          [v15 scheduleInRunLoop:v7 forMode:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = [(ENAFURLConnectionOperation *)self connection];
    [v16 start];
  }

  v17 = [(ENAFURLConnectionOperation *)self lock];
  [v17 unlock];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = [(ENAFURLConnectionOperation *)self lock];
  [v3 lock];

  if ([(ENAFURLConnectionOperation *)self isReady])
  {
    [(ENAFURLConnectionOperation *)self setState:2];
    v4 = [objc_opt_class() networkRequestThread];
    v5 = [(ENAFURLConnectionOperation *)self runLoopModes];
    v6 = [v5 allObjects];
    [(ENAFURLConnectionOperation *)self performSelector:sel_operationDidStart onThread:v4 withObject:0 waitUntilDone:0 modes:v6];
  }

  v7 = [(ENAFURLConnectionOperation *)self lock];
  [v7 unlock];
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
    v3 = [(ENAFURLConnectionOperation *)self lock];
    [v3 lock];

    [(ENAFURLConnectionOperation *)self setState:1];
    [(ENAFURLConnectionOperation *)self start];
    v4 = [(ENAFURLConnectionOperation *)self lock];
    [v4 unlock];
  }
}

- (void)pause
{
  if (![(ENAFURLConnectionOperation *)self isPaused]&& ![(ENAFURLConnectionOperation *)self isFinished]&& ![(ENAFURLConnectionOperation *)self isCancelled])
  {
    v3 = [(ENAFURLConnectionOperation *)self lock];
    [v3 lock];

    if ([(ENAFURLConnectionOperation *)self isExecuting])
    {
      v4 = [(ENAFURLConnectionOperation *)self connection];
      v5 = [objc_opt_class() networkRequestThread];
      v6 = [(ENAFURLConnectionOperation *)self runLoopModes];
      v7 = [v6 allObjects];
      [v4 performSelector:sel_cancel onThread:v5 withObject:0 waitUntilDone:0 modes:v7];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"com.evernote.sdk.networking.operation.finish" object:self];
    }

    [(ENAFURLConnectionOperation *)self setState:0xFFFFFFFFLL];
    v9 = [(ENAFURLConnectionOperation *)self lock];
    [v9 unlock];
  }
}

- (NSString)responseString
{
  v3 = [(ENAFURLConnectionOperation *)self lock];
  [v3 lock];

  if (!self->_responseString)
  {
    v7 = [(ENAFURLConnectionOperation *)self response];
    if (v7)
    {
      v8 = v7;
      v9 = [(ENAFURLConnectionOperation *)self responseData];

      if (v9)
      {
        v10 = [(ENAFURLConnectionOperation *)self response];
        v11 = [v10 textEncodingName];

        if (!v11 || (-[ENAFURLConnectionOperation response](self, "response"), v12 = objc_claimAutoreleasedReturnValue(), [v12 textEncodingName], v13 = objc_claimAutoreleasedReturnValue(), v14 = CFStringConvertIANACharSetNameToEncoding(v13), v13, v12, v14 == -1))
        {
          v15 = 4;
        }

        else
        {
          v15 = CFStringConvertEncodingToNSStringEncoding(v14);
        }

        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [(ENAFURLConnectionOperation *)self responseData];
        v18 = [v16 initWithData:v17 encoding:v15];
        [(ENAFURLConnectionOperation *)self setResponseString:v18];
      }
    }
  }

  v4 = [(ENAFURLConnectionOperation *)self lock];
  [v4 unlock];

  responseString = self->_responseString;

  return responseString;
}

- (void)setState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(ENAFURLConnectionOperation *)self lock];
  [v5 lock];

  v6 = [(ENAFURLConnectionOperation *)self state];
  v7 = [(ENAFURLConnectionOperation *)self isCancelled];
  if (v6 > 2u)
  {
    if (v6 == 3 || v6 == 0xFFFF && v3 != 1)
    {
      goto LABEL_25;
    }
  }

  else if (v6 == 1)
  {
    if (v3 != -1 && v3 != 2 && (v3 != 3 || !v7))
    {
      goto LABEL_25;
    }
  }

  else if (v6 == 2 && ((v3 + 1) & 0xFFFB) != 0)
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

  if ((v3 + 1) > 4)
  {
    v10 = @"state";
  }

  else
  {
    v10 = off_278C19910[(v3 + 1)];
  }

  [(ENAFURLConnectionOperation *)self willChangeValueForKey:v10];
  [(ENAFURLConnectionOperation *)self willChangeValueForKey:v9];
  self->_state = v3;
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:v9];
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:v10];
  if (v3 == 2)
  {
    v11 = @"com.evernote.sdk.networking.operation.start";
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_25;
    }

    v11 = @"com.evernote.sdk.networking.operation.finish";
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:v11 object:self];

LABEL_25:
  v13 = [(ENAFURLConnectionOperation *)self lock];
  [v13 unlock];
}

- (void)setOutputStream:(id)a3
{
  v5 = a3;
  if (self->_outputStream != v5)
  {
    v7 = v5;
    [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"outputStream"];
    outputStream = self->_outputStream;
    if (outputStream)
    {
      [(NSOutputStream *)outputStream close];
    }

    objc_storeStrong(&self->_outputStream, a3);
    [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"outputStream"];
    v5 = v7;
  }
}

- (void)setInputStream:(id)a3
{
  v4 = a3;
  [(ENAFURLConnectionOperation *)self willChangeValueForKey:@"inputStream"];
  v5 = [(ENAFURLConnectionOperation *)self request];
  v6 = [v5 mutableCopy];

  [v6 setHTTPBodyStream:v4];
  [(ENAFURLConnectionOperation *)self setRequest:v6];
  [(ENAFURLConnectionOperation *)self didChangeValueForKey:@"inputStream"];
}

- (NSInputStream)inputStream
{
  v2 = [(ENAFURLConnectionOperation *)self request];
  v3 = [v2 HTTPBodyStream];

  return v3;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(ENAFURLConnectionOperation *)self lock];
  [v5 lock];

  if (v4)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ENAFURLConnectionOperation_setCompletionBlock___block_invoke;
    v8[3] = &unk_278C1D7A0;
    v9 = v4;
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

  v6 = [(ENAFURLConnectionOperation *)self lock];
  [v6 unlock];
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

  v9 = [(ENAFURLConnectionOperation *)self request];
  v10 = [(ENAFURLConnectionOperation *)self response];
  v11 = [v3 stringWithFormat:@"<%@: %p, state: %@, cancelled: %@ request: %@, response: %@>", v5, self, v7, v8, v9, v10];

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

- (ENAFURLConnectionOperation)initWithRequest:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ENAFURLConnectionOperation;
  v5 = [(ENAFURLConnectionOperation *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAC60]);
    [(ENAFURLConnectionOperation *)v5 setLock:v6];

    v7 = [(ENAFURLConnectionOperation *)v5 lock];
    [v7 setName:@"com.alamofire.networking.operation.lock"];

    v8 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CBE738]];
    [(ENAFURLConnectionOperation *)v5 setRunLoopModes:v8];

    [(ENAFURLConnectionOperation *)v5 setRequest:v4];
    v9 = [MEMORY[0x277CBEB78] outputStreamToMemory];
    [(ENAFURLConnectionOperation *)v5 setOutputStream:v9];

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
  block[4] = a1;
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

+ (void)networkRequestThreadEntryPoint:(id)a3
{
  v3 = a3;
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v5 run];

    objc_autoreleasePoolPop(v4);
  }
}

@end