@interface SHAudioTapMatcher
- (BOOL)finishSessionConditionsMetForRequest:(id)a3 response:(id)a4;
- (BOOL)isRunning;
- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4;
- (BOOL)shouldGenerateSpectralOutput;
- (SHAudioTapMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4 catalog:(id)a5;
- (SHAudioTapMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4 session:(id)a5;
- (SHAudioTapMatcher)initWithAudioTap:(id)a3 sessionDriver:(id)a4 audioRecordingManager:(id)a5 catalog:(id)a6;
- (SHMatcherDelegate)delegate;
- (id)errorResponseSignature;
- (void)_stop;
- (void)session:(id)a3 didProduceResponse:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHAudioTapMatcher

- (SHAudioTapMatcher)initWithAudioTap:(id)a3 sessionDriver:(id)a4 audioRecordingManager:(id)a5 catalog:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SHSession alloc];
  v15 = [v10 _createMatcher];
  v16 = [v14 initWithCatalog:v10 matcher:v15 sessionDriver:v12];

  v17 = [(SHAudioTapMatcher *)self initWithAudioTap:v13 audioRecordingManager:v11 session:v16];
  return v17;
}

- (SHAudioTapMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4 catalog:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SHSession alloc] initWithCatalog:v8];

  v12 = [(SHAudioTapMatcher *)self initWithAudioTap:v10 audioRecordingManager:v9 session:v11];
  return v12;
}

- (SHAudioTapMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4 session:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = SHAudioTapMatcher;
  v12 = [(SHAudioTapMatcher *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioTap, a3);
    objc_storeStrong(&v13->_audioRecordingManager, a4);
    objc_storeStrong(&v13->_session, a5);
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

- (void)startRecognitionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioTapMatcher *)self lock];
  [v5 lock];

  if ([(SHAudioTapMatcher *)self isRunning])
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error: audio tap matcher: %@ asked to start recognition when it is already matching", &v17, 0xCu);
    }

    v7 = [SHCoreError errorWithCode:101 underlyingError:0];
    v8 = [SHError errorWithCode:202 underlyingError:v7];
    v9 = [(SHAudioTapMatcher *)self delegate];
    v10 = [(SHAudioTapMatcher *)self errorResponseSignature];
    v11 = [SHMatcherResponse errorResponseForSignature:v10 error:v8];
    [v9 matcher:self didProduceResponse:v11];
  }

  else
  {
    [(SHAudioTapMatcher *)self setMatcherRequest:v4];
    v12 = [(SHAudioTapMatcher *)self session];
    [v12 setDelegate:self];

    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v4 deadline];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "startRecognition based upon deadline %@", &v17, 0xCu);
    }

    v15 = [(SHAudioTapMatcher *)self audioRecordingManager];
    v16 = [(SHAudioTapMatcher *)self audioTap];
    [v15 attachTap:v16];

    v7 = [(SHAudioTapMatcher *)self lock];
    [v7 unlock];
  }
}

- (id)errorResponseSignature
{
  v3 = objc_opt_new();
  v4 = [(SHAudioTapMatcher *)self audioTap];
  v5 = [v4 recordingSource];
  v6 = [v3 metrics];
  [v6 setRecordingSource:v5];

  return v3;
}

- (BOOL)isRunning
{
  v2 = [(SHAudioTapMatcher *)self matcherRequest];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHAudioTapMatcher *)self audioTap];
  v9 = [v8 recordingSource];
  v10 = [v7 metrics];
  [v10 setRecordingSource:v9];

  if ([(SHAudioTapMatcher *)self isRunning])
  {
    v11 = [(SHAudioTapMatcher *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(SHAudioTapMatcher *)self delegate];
      v14 = [v13 session:v6 shouldAttemptToMatchSignature:v7];
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

- (void)session:(id)a3 didProduceResponse:(id)a4
{
  v21 = a4;
  v5 = [(SHAudioTapMatcher *)self matcherRequest];
  v6 = [(SHAudioTapMatcher *)self finishSessionConditionsMetForRequest:v5 response:v21];

  if ((v6 & 1) == 0)
  {
    v7 = [SHMatcherResponse alloc];
    [v21 recordingIntermission];
    v9 = v8;
    [v21 recordingSignatureOffset];
    v11 = v10;
    [v21 retrySeconds];
    v13 = v12;
    v14 = [v21 match];
    v15 = [v21 signature];
    v16 = [(SHAudioTapMatcher *)self matcherRequest];
    v17 = [v16 requestID];
    v18 = [v21 error];
    v19 = [v7 initWithRecordingIntermission:v14 recordingSignatureOffset:v15 retrySeconds:v17 match:v18 signature:v9 runningAssociatedRequestID:v11 error:v13];

    v21 = v19;
  }

  v20 = [(SHAudioTapMatcher *)self delegate];
  [v20 matcher:self didProduceResponse:v21];

  if (v6)
  {
    [(SHAudioTapMatcher *)self _stop];
  }
}

- (BOOL)finishSessionConditionsMetForRequest:(id)a3 response:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 result];
  if ([v5 stopCondition] == 3)
  {
    v8 = [v5 hasHitDeadline];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 stopCondition];
  if ([v5 stopCondition] == 2)
  {
    v10 = [v6 match];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67109888;
    v15[1] = v8;
    v16 = 1024;
    v17 = v9 == 0;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v7 == 3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Tagging finish conditions: timeOut %d, oneAttempt: %d, foundMatch: %d, failed %d", v15, 0x1Au);
  }

  v13 = v7 == 3;

  if (!v9)
  {
    LOBYTE(v8) = 1;
  }

  return (v8 | v11 | v13) & 1;
}

- (void)_stop
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping recognition", v11, 2u);
  }

  v4 = [(SHAudioTapMatcher *)self lock];
  [v4 lock];

  [(SHAudioTapMatcher *)self setMatcherRequest:0];
  [(SHAudioTapMatcher *)self setDelegate:0];
  v5 = [(SHAudioTapMatcher *)self session];
  [v5 setDelegate:0];

  v6 = [(SHAudioTapMatcher *)self audioRecordingManager];
  v7 = [(SHAudioTapMatcher *)self audioTap];
  [v6 detachTap:v7];

  audioRecordingManager = self->_audioRecordingManager;
  self->_audioRecordingManager = 0;

  audioTap = self->_audioTap;
  self->_audioTap = 0;

  v10 = [(SHAudioTapMatcher *)self lock];
  [v10 unlock];
}

- (void)stopRecognition
{
  v4 = [(SHAudioTapMatcher *)self matcherRequest];
  v3 = [v4 requestID];
  [(SHAudioTapMatcher *)self stopRecognitionForRequestID:v3];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioTapMatcher *)self matcherRequest];
  v6 = [v5 requestID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Stopping recognition for matcher %@", &v15, 0xCu);
    }

    v9 = [(SHAudioTapMatcher *)self lock];
    [v9 lock];

    v10 = [SHError privateErrorWithCode:203 underlyingError:0];
    v11 = [(SHAudioTapMatcher *)self errorResponseSignature];
    v12 = [SHMatcherResponse errorResponseForSignature:v11 error:v10];

    v13 = [(SHAudioTapMatcher *)self delegate];
    [v13 matcher:self didProduceResponse:v12];

    [(SHAudioTapMatcher *)self _stop];
    v14 = [(SHAudioTapMatcher *)self lock];
    [v14 unlock];
  }
}

- (BOOL)shouldGenerateSpectralOutput
{
  v3 = [(SHAudioTapMatcher *)self audioTap];
  v4 = [v3 recordingSource];
  v5 = [(SHAudioTapMatcher *)self audioRecordingManager];
  LOBYTE(v4) = v4 == [v5 suggestedAudioRecordingSource];

  return v4;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end