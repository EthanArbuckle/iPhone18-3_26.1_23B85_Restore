@interface ACSURLSessionTask
- (ACSURLSession)_weakSession;
- (ACSURLSessionTask)initWithNSURLTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5;
- (BOOL)_isUpload;
- (NSError)error;
- (NSProgress)progress;
- (NSString)description;
- (NSString)taskDescription;
- (NSURLRequest)currentRequest;
- (NSURLRequest)originalRequest;
- (NSURLResponse)response;
- (float)priority;
- (id)_nsurlTaskForRequest:(id)a3;
- (int64_t)countOfBytesClientExpectsToReceive;
- (int64_t)countOfBytesClientExpectsToSend;
- (int64_t)countOfBytesExpectedToReceive;
- (int64_t)countOfBytesExpectedToSend;
- (int64_t)countOfBytesReceived;
- (int64_t)countOfBytesSent;
- (int64_t)state;
- (unint64_t)taskIdentifier;
- (void)cancel;
- (void)resume;
- (void)setCountOfBytesClientExpectsToReceive:(int64_t)a3;
- (void)setCountOfBytesClientExpectsToSend:(int64_t)a3;
- (void)setPriority:(float)a3;
- (void)setTaskDescription:(id)a3;
- (void)suspend;
@end

@implementation ACSURLSessionTask

- (unint64_t)taskIdentifier
{
  v2 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  v3 = [v2 taskIdentifier];

  return v3;
}

- (NSURLRequest)originalRequest
{
  v2 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  v3 = [v2 originalRequest];

  return v3;
}

- (NSURLRequest)currentRequest
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 currentRequest];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 currentRequest];
  }

  return v4;
}

- (NSURLResponse)response
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 response];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 response];
  }

  return v4;
}

- (NSProgress)progress
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 progress];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 progress];
  }

  return v4;
}

- (int64_t)countOfBytesClientExpectsToSend
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesClientExpectsToSend];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesClientExpectsToSend];
  }

  return v4;
}

- (void)setCountOfBytesClientExpectsToSend:(int64_t)a3
{
  v6 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v6)
  {
    [v6 setCountOfBytesClientExpectsToSend:a3];
  }

  v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [v5 setCountOfBytesClientExpectsToSend:a3];
}

- (int64_t)countOfBytesClientExpectsToReceive
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesClientExpectsToReceive];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesClientExpectsToReceive];
  }

  return v4;
}

- (void)setCountOfBytesClientExpectsToReceive:(int64_t)a3
{
  v6 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v6)
  {
    [v6 setCountOfBytesClientExpectsToReceive:a3];
  }

  v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [v5 setCountOfBytesClientExpectsToReceive:a3];
}

- (int64_t)countOfBytesReceived
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesReceived];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesReceived];
  }

  return v4;
}

- (int64_t)countOfBytesSent
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesSent];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesSent];
  }

  return v4;
}

- (int64_t)countOfBytesExpectedToSend
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesExpectedToSend];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesExpectedToSend];
  }

  return v4;
}

- (int64_t)countOfBytesExpectedToReceive
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 countOfBytesExpectedToReceive];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 countOfBytesExpectedToReceive];
  }

  return v4;
}

- (NSString)taskDescription
{
  v2 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  v3 = [v2 taskDescription];

  return v3;
}

- (void)setTaskDescription:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [v5 setTaskDescription:v4];
}

- (void)cancel
{
  if ([(ACSURLSessionTask *)self _internalState]!= 2)
  {
    v3 = [(ACSURLSessionTask *)self _weakSession];
    [v3 _cancelTask:self];
  }
}

- (int64_t)state
{
  if ([(ACSURLSessionTask *)self _internalState]== 2)
  {
    return 3;
  }

  v4 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v4 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v3 = [v4 state];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v3 = [v5 state];
  }

  return v3;
}

- (NSError)error
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    v4 = [v3 error];
  }

  else
  {
    v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    v4 = [v5 error];
  }

  v6 = [(ACSURLSessionTask *)self _weakSession];
  v7 = [(ACSURLSessionTask *)self originalRequest];
  v8 = [(ACSURLSessionTask *)self currentRequest];
  v9 = [v6 _errorWithResumeDataFromError:v4 originalRequest:v7 currentRequest:v8];

  return v9;
}

- (void)suspend
{
  if ([(ACSURLSessionTask *)self _internalState]!= 2)
  {
    v3 = [(ACSURLSessionTask *)self _weakSession];
    [v3 _suspendTask:self];
  }
}

- (void)resume
{
  v3 = [(ACSURLSessionTask *)self _weakSession];
  [v3 _resumeTask:self];
}

- (float)priority
{
  v3 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v3 && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    [v3 priority];
    v5 = v4;
  }

  else
  {
    v6 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    [v6 priority];
    v5 = v7;
  }

  return v5;
}

- (void)setPriority:(float)a3
{
  v8 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (v8)
  {
    *&v5 = a3;
    [v8 setPriority:v5];
  }

  v6 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  *&v7 = a3;
  [v6 setPriority:v7];
}

- (ACSURLSessionTask)initWithNSURLTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ACSURLSessionTask;
  v11 = [(ACSURLSessionTask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(ACSURLSessionTask *)v11 set_nsurlTaskCreator:v8];
    v13 = v8[2](v8, v9);
    [(ACSURLSessionTask *)v12 set_nsurlTaskToOrigin:v13];

    [(ACSURLSessionTask *)v12 set_weakSession:v10];
    -[ACSURLSessionTask set_tryCachingServer:](v12, "set_tryCachingServer:", [v10 canUseCachingServer]);
    [(ACSURLSessionTask *)v12 set_failBackToOrigin:1];
    [(ACSURLSessionTask *)v12 set_internalState:0];
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ACSURLSessionTask;
  v4 = [(ACSURLSessionTask *)&v11 description];
  v5 = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  v6 = [v5 descriptionWithAddress];
  v7 = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  v8 = [v7 descriptionWithAddress];
  v9 = [v3 stringWithFormat:@"%@ { taskToOrigin: %@, taskToCachingServer: %@, tryCachingServer: %d, failBackToOrigin: %d, suspended: %d }", v4, v6, v8, -[ACSURLSessionTask _tryCachingServer](self, "_tryCachingServer"), -[ACSURLSessionTask _failBackToOrigin](self, "_failBackToOrigin"), -[ACSURLSessionTask _suspended](self, "_suspended")];

  return v9;
}

- (BOOL)_isUpload
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"subclass %@ must implement %@", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)_nsurlTaskForRequest:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSessionTask *)self _nsurlTaskCreator];

  if (v5)
  {
    v6 = [(ACSURLSessionTask *)self _nsurlTaskCreator];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSessionTask _nsurlTaskForRequest:];
    }

    v7 = 0;
  }

  return v7;
}

- (ACSURLSession)_weakSession
{
  WeakRetained = objc_loadWeakRetained(&self->__weakSession);

  return WeakRetained;
}

@end