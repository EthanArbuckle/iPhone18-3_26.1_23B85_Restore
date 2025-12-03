@interface ACSURLSessionTask
- (ACSURLSession)_weakSession;
- (ACSURLSessionTask)initWithNSURLTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session;
- (BOOL)_isUpload;
- (NSError)error;
- (NSProgress)progress;
- (NSString)description;
- (NSString)taskDescription;
- (NSURLRequest)currentRequest;
- (NSURLRequest)originalRequest;
- (NSURLResponse)response;
- (float)priority;
- (id)_nsurlTaskForRequest:(id)request;
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
- (void)setCountOfBytesClientExpectsToReceive:(int64_t)receive;
- (void)setCountOfBytesClientExpectsToSend:(int64_t)send;
- (void)setPriority:(float)priority;
- (void)setTaskDescription:(id)description;
- (void)suspend;
@end

@implementation ACSURLSessionTask

- (unint64_t)taskIdentifier
{
  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  taskIdentifier = [_nsurlTaskToOrigin taskIdentifier];

  return taskIdentifier;
}

- (NSURLRequest)originalRequest
{
  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  originalRequest = [_nsurlTaskToOrigin originalRequest];

  return originalRequest;
}

- (NSURLRequest)currentRequest
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    currentRequest = [_nsurlTaskToCachingServer currentRequest];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    currentRequest = [_nsurlTaskToOrigin currentRequest];
  }

  return currentRequest;
}

- (NSURLResponse)response
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    response = [_nsurlTaskToCachingServer response];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    response = [_nsurlTaskToOrigin response];
  }

  return response;
}

- (NSProgress)progress
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    progress = [_nsurlTaskToCachingServer progress];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    progress = [_nsurlTaskToOrigin progress];
  }

  return progress;
}

- (int64_t)countOfBytesClientExpectsToSend
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesClientExpectsToSend = [_nsurlTaskToCachingServer countOfBytesClientExpectsToSend];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesClientExpectsToSend = [_nsurlTaskToOrigin countOfBytesClientExpectsToSend];
  }

  return countOfBytesClientExpectsToSend;
}

- (void)setCountOfBytesClientExpectsToSend:(int64_t)send
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer)
  {
    [_nsurlTaskToCachingServer setCountOfBytesClientExpectsToSend:send];
  }

  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [_nsurlTaskToOrigin setCountOfBytesClientExpectsToSend:send];
}

- (int64_t)countOfBytesClientExpectsToReceive
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesClientExpectsToReceive = [_nsurlTaskToCachingServer countOfBytesClientExpectsToReceive];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesClientExpectsToReceive = [_nsurlTaskToOrigin countOfBytesClientExpectsToReceive];
  }

  return countOfBytesClientExpectsToReceive;
}

- (void)setCountOfBytesClientExpectsToReceive:(int64_t)receive
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer)
  {
    [_nsurlTaskToCachingServer setCountOfBytesClientExpectsToReceive:receive];
  }

  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [_nsurlTaskToOrigin setCountOfBytesClientExpectsToReceive:receive];
}

- (int64_t)countOfBytesReceived
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesReceived = [_nsurlTaskToCachingServer countOfBytesReceived];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesReceived = [_nsurlTaskToOrigin countOfBytesReceived];
  }

  return countOfBytesReceived;
}

- (int64_t)countOfBytesSent
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesSent = [_nsurlTaskToCachingServer countOfBytesSent];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesSent = [_nsurlTaskToOrigin countOfBytesSent];
  }

  return countOfBytesSent;
}

- (int64_t)countOfBytesExpectedToSend
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesExpectedToSend = [_nsurlTaskToCachingServer countOfBytesExpectedToSend];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesExpectedToSend = [_nsurlTaskToOrigin countOfBytesExpectedToSend];
  }

  return countOfBytesExpectedToSend;
}

- (int64_t)countOfBytesExpectedToReceive
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    countOfBytesExpectedToReceive = [_nsurlTaskToCachingServer countOfBytesExpectedToReceive];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    countOfBytesExpectedToReceive = [_nsurlTaskToOrigin countOfBytesExpectedToReceive];
  }

  return countOfBytesExpectedToReceive;
}

- (NSString)taskDescription
{
  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  taskDescription = [_nsurlTaskToOrigin taskDescription];

  return taskDescription;
}

- (void)setTaskDescription:(id)description
{
  descriptionCopy = description;
  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  [_nsurlTaskToOrigin setTaskDescription:descriptionCopy];
}

- (void)cancel
{
  if ([(ACSURLSessionTask *)self _internalState]!= 2)
  {
    _weakSession = [(ACSURLSessionTask *)self _weakSession];
    [_weakSession _cancelTask:self];
  }
}

- (int64_t)state
{
  if ([(ACSURLSessionTask *)self _internalState]== 2)
  {
    return 3;
  }

  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    state = [_nsurlTaskToCachingServer state];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    state = [_nsurlTaskToOrigin state];
  }

  return state;
}

- (NSError)error
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    error = [_nsurlTaskToCachingServer error];
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    error = [_nsurlTaskToOrigin error];
  }

  _weakSession = [(ACSURLSessionTask *)self _weakSession];
  originalRequest = [(ACSURLSessionTask *)self originalRequest];
  currentRequest = [(ACSURLSessionTask *)self currentRequest];
  v9 = [_weakSession _errorWithResumeDataFromError:error originalRequest:originalRequest currentRequest:currentRequest];

  return v9;
}

- (void)suspend
{
  if ([(ACSURLSessionTask *)self _internalState]!= 2)
  {
    _weakSession = [(ACSURLSessionTask *)self _weakSession];
    [_weakSession _suspendTask:self];
  }
}

- (void)resume
{
  _weakSession = [(ACSURLSessionTask *)self _weakSession];
  [_weakSession _resumeTask:self];
}

- (float)priority
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer && [(ACSURLSessionTask *)self _tryCachingServer])
  {
    [_nsurlTaskToCachingServer priority];
    v5 = v4;
  }

  else
  {
    _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
    [_nsurlTaskToOrigin priority];
    v5 = v7;
  }

  return v5;
}

- (void)setPriority:(float)priority
{
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  if (_nsurlTaskToCachingServer)
  {
    *&v5 = priority;
    [_nsurlTaskToCachingServer setPriority:v5];
  }

  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  *&v7 = priority;
  [_nsurlTaskToOrigin setPriority:v7];
}

- (ACSURLSessionTask)initWithNSURLTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session
{
  creatorCopy = creator;
  requestCopy = request;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = ACSURLSessionTask;
  v11 = [(ACSURLSessionTask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(ACSURLSessionTask *)v11 set_nsurlTaskCreator:creatorCopy];
    v13 = creatorCopy[2](creatorCopy, requestCopy);
    [(ACSURLSessionTask *)v12 set_nsurlTaskToOrigin:v13];

    [(ACSURLSessionTask *)v12 set_weakSession:sessionCopy];
    -[ACSURLSessionTask set_tryCachingServer:](v12, "set_tryCachingServer:", [sessionCopy canUseCachingServer]);
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
  _nsurlTaskToOrigin = [(ACSURLSessionTask *)self _nsurlTaskToOrigin];
  descriptionWithAddress = [_nsurlTaskToOrigin descriptionWithAddress];
  _nsurlTaskToCachingServer = [(ACSURLSessionTask *)self _nsurlTaskToCachingServer];
  descriptionWithAddress2 = [_nsurlTaskToCachingServer descriptionWithAddress];
  v9 = [v3 stringWithFormat:@"%@ { taskToOrigin: %@, taskToCachingServer: %@, tryCachingServer: %d, failBackToOrigin: %d, suspended: %d }", v4, descriptionWithAddress, descriptionWithAddress2, -[ACSURLSessionTask _tryCachingServer](self, "_tryCachingServer"), -[ACSURLSessionTask _failBackToOrigin](self, "_failBackToOrigin"), -[ACSURLSessionTask _suspended](self, "_suspended")];

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

- (id)_nsurlTaskForRequest:(id)request
{
  requestCopy = request;
  _nsurlTaskCreator = [(ACSURLSessionTask *)self _nsurlTaskCreator];

  if (_nsurlTaskCreator)
  {
    _nsurlTaskCreator2 = [(ACSURLSessionTask *)self _nsurlTaskCreator];
    v7 = (_nsurlTaskCreator2)[2](_nsurlTaskCreator2, requestCopy);
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