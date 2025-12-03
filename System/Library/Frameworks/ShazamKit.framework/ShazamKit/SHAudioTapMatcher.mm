@interface SHAudioTapMatcher
- (BOOL)finishSessionConditionsMetForRequest:(id)request response:(id)response;
- (BOOL)isRunning;
- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature;
- (BOOL)shouldGenerateSpectralOutput;
- (SHAudioTapMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager catalog:(id)catalog;
- (SHAudioTapMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager session:(id)session;
- (SHAudioTapMatcher)initWithAudioTap:(id)tap sessionDriver:(id)driver audioRecordingManager:(id)manager catalog:(id)catalog;
- (SHMatcherDelegate)delegate;
- (id)errorResponseSignature;
- (void)_stop;
- (void)session:(id)session didProduceResponse:(id)response;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHAudioTapMatcher

- (SHAudioTapMatcher)initWithAudioTap:(id)tap sessionDriver:(id)driver audioRecordingManager:(id)manager catalog:(id)catalog
{
  catalogCopy = catalog;
  managerCopy = manager;
  driverCopy = driver;
  tapCopy = tap;
  v14 = [SHSession alloc];
  _createMatcher = [catalogCopy _createMatcher];
  v16 = [v14 initWithCatalog:catalogCopy matcher:_createMatcher sessionDriver:driverCopy];

  v17 = [(SHAudioTapMatcher *)self initWithAudioTap:tapCopy audioRecordingManager:managerCopy session:v16];
  return v17;
}

- (SHAudioTapMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager catalog:(id)catalog
{
  catalogCopy = catalog;
  managerCopy = manager;
  tapCopy = tap;
  v11 = [[SHSession alloc] initWithCatalog:catalogCopy];

  v12 = [(SHAudioTapMatcher *)self initWithAudioTap:tapCopy audioRecordingManager:managerCopy session:v11];
  return v12;
}

- (SHAudioTapMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager session:(id)session
{
  tapCopy = tap;
  managerCopy = manager;
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = SHAudioTapMatcher;
  v12 = [(SHAudioTapMatcher *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioTap, tap);
    objc_storeStrong(&v13->_audioRecordingManager, manager);
    objc_storeStrong(&v13->_session, session);
    v14 = objc_alloc_init(NSRecursiveLock);
    lock = v13->_lock;
    v13->_lock = v14;

    objc_initWeak(&location, v13);
    objc_copyWeak(&v19, &location);
    v16 = [(SHAudioTapMatcher *)v13 audioTap:_NSConcreteStackBlock];
    [v16 setCompletion:&v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  lock = [(SHAudioTapMatcher *)self lock];
  [lock lock];

  if ([(SHAudioTapMatcher *)self isRunning])
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error: audio tap matcher: %@ asked to start recognition when it is already matching", &v17, 0xCu);
    }

    lock2 = [SHCoreError errorWithCode:101 underlyingError:0];
    v8 = [SHError errorWithCode:202 underlyingError:lock2];
    delegate = [(SHAudioTapMatcher *)self delegate];
    errorResponseSignature = [(SHAudioTapMatcher *)self errorResponseSignature];
    v11 = [SHMatcherResponse errorResponseForSignature:errorResponseSignature error:v8];
    [delegate matcher:self didProduceResponse:v11];
  }

  else
  {
    [(SHAudioTapMatcher *)self setMatcherRequest:requestCopy];
    session = [(SHAudioTapMatcher *)self session];
    [session setDelegate:self];

    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      deadline = [requestCopy deadline];
      v17 = 138412290;
      selfCopy = deadline;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "startRecognition based upon deadline %@", &v17, 0xCu);
    }

    audioRecordingManager = [(SHAudioTapMatcher *)self audioRecordingManager];
    audioTap = [(SHAudioTapMatcher *)self audioTap];
    [audioRecordingManager attachTap:audioTap];

    lock2 = [(SHAudioTapMatcher *)self lock];
    [lock2 unlock];
  }
}

- (id)errorResponseSignature
{
  v3 = objc_opt_new();
  audioTap = [(SHAudioTapMatcher *)self audioTap];
  recordingSource = [audioTap recordingSource];
  metrics = [v3 metrics];
  [metrics setRecordingSource:recordingSource];

  return v3;
}

- (BOOL)isRunning
{
  matcherRequest = [(SHAudioTapMatcher *)self matcherRequest];
  v3 = matcherRequest != 0;

  return v3;
}

- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature
{
  sessionCopy = session;
  signatureCopy = signature;
  audioTap = [(SHAudioTapMatcher *)self audioTap];
  recordingSource = [audioTap recordingSource];
  metrics = [signatureCopy metrics];
  [metrics setRecordingSource:recordingSource];

  if ([(SHAudioTapMatcher *)self isRunning])
  {
    delegate = [(SHAudioTapMatcher *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(SHAudioTapMatcher *)self delegate];
      v14 = [delegate2 session:sessionCopy shouldAttemptToMatchSignature:signatureCopy];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)session:(id)session didProduceResponse:(id)response
{
  responseCopy = response;
  matcherRequest = [(SHAudioTapMatcher *)self matcherRequest];
  v6 = [(SHAudioTapMatcher *)self finishSessionConditionsMetForRequest:matcherRequest response:responseCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [SHMatcherResponse alloc];
    [responseCopy recordingIntermission];
    v9 = v8;
    [responseCopy recordingSignatureOffset];
    v11 = v10;
    [responseCopy retrySeconds];
    v13 = v12;
    match = [responseCopy match];
    signature = [responseCopy signature];
    matcherRequest2 = [(SHAudioTapMatcher *)self matcherRequest];
    requestID = [matcherRequest2 requestID];
    error = [responseCopy error];
    v19 = [v7 initWithRecordingIntermission:match recordingSignatureOffset:signature retrySeconds:requestID match:error signature:v9 runningAssociatedRequestID:v11 error:v13];

    responseCopy = v19;
  }

  delegate = [(SHAudioTapMatcher *)self delegate];
  [delegate matcher:self didProduceResponse:responseCopy];

  if (v6)
  {
    [(SHAudioTapMatcher *)self _stop];
  }
}

- (BOOL)finishSessionConditionsMetForRequest:(id)request response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  result = [responseCopy result];
  if ([requestCopy stopCondition] == 3)
  {
    hasHitDeadline = [requestCopy hasHitDeadline];
  }

  else
  {
    hasHitDeadline = 0;
  }

  stopCondition = [requestCopy stopCondition];
  if ([requestCopy stopCondition] == 2)
  {
    match = [responseCopy match];
    v11 = match != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67109888;
    v15[1] = hasHitDeadline;
    v16 = 1024;
    v17 = stopCondition == 0;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = result == 3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Tagging finish conditions: timeOut %d, oneAttempt: %d, foundMatch: %d, failed %d", v15, 0x1Au);
  }

  v13 = result == 3;

  if (!stopCondition)
  {
    LOBYTE(hasHitDeadline) = 1;
  }

  return (hasHitDeadline | v11 | v13) & 1;
}

- (void)_stop
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping recognition", v11, 2u);
  }

  lock = [(SHAudioTapMatcher *)self lock];
  [lock lock];

  [(SHAudioTapMatcher *)self setMatcherRequest:0];
  [(SHAudioTapMatcher *)self setDelegate:0];
  session = [(SHAudioTapMatcher *)self session];
  [session setDelegate:0];

  audioRecordingManager = [(SHAudioTapMatcher *)self audioRecordingManager];
  audioTap = [(SHAudioTapMatcher *)self audioTap];
  [audioRecordingManager detachTap:audioTap];

  audioRecordingManager = self->_audioRecordingManager;
  self->_audioRecordingManager = 0;

  audioTap = self->_audioTap;
  self->_audioTap = 0;

  lock2 = [(SHAudioTapMatcher *)self lock];
  [lock2 unlock];
}

- (void)stopRecognition
{
  matcherRequest = [(SHAudioTapMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHAudioTapMatcher *)self stopRecognitionForRequestID:requestID];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  matcherRequest = [(SHAudioTapMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  v7 = [requestID isEqual:dCopy];

  if (v7)
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Stopping recognition for matcher %@", &v15, 0xCu);
    }

    lock = [(SHAudioTapMatcher *)self lock];
    [lock lock];

    v10 = [SHError privateErrorWithCode:203 underlyingError:0];
    errorResponseSignature = [(SHAudioTapMatcher *)self errorResponseSignature];
    v12 = [SHMatcherResponse errorResponseForSignature:errorResponseSignature error:v10];

    delegate = [(SHAudioTapMatcher *)self delegate];
    [delegate matcher:self didProduceResponse:v12];

    [(SHAudioTapMatcher *)self _stop];
    lock2 = [(SHAudioTapMatcher *)self lock];
    [lock2 unlock];
  }
}

- (BOOL)shouldGenerateSpectralOutput
{
  audioTap = [(SHAudioTapMatcher *)self audioTap];
  recordingSource = [audioTap recordingSource];
  audioRecordingManager = [(SHAudioTapMatcher *)self audioRecordingManager];
  LOBYTE(recordingSource) = recordingSource == [audioRecordingManager suggestedAudioRecordingSource];

  return recordingSource;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end