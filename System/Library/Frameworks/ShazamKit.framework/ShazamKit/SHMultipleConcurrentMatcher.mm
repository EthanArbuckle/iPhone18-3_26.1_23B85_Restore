@interface SHMultipleConcurrentMatcher
- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature;
- (SHMatcherDelegate)delegate;
- (SHMultipleConcurrentMatcher)initWithMatchers:(id)matchers audioRecordingManager:(id)manager;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHMultipleConcurrentMatcher

- (SHMultipleConcurrentMatcher)initWithMatchers:(id)matchers audioRecordingManager:(id)manager
{
  matchersCopy = matchers;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = SHMultipleConcurrentMatcher;
  v9 = [(SHMultipleConcurrentMatcher *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_matchers, matchers);
    objc_storeStrong(&v10->_audioRecordingManager, manager);
    v11 = objc_alloc_init(NSRecursiveLock);
    lock = v10->_lock;
    v10->_lock = v11;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = matchersCopy;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v19 + 1) + 8 * v17) setDelegate:{v10, v19}];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v10;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  lock = [(SHMultipleConcurrentMatcher *)self lock];
  [lock lock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  matchers = [(SHMultipleConcurrentMatcher *)self matchers];
  v7 = [matchers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(matchers);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([(SHMultipleConcurrentMatcher *)self recognitionHasStopped])
      {
        break;
      }

      [v11 startRecognitionForRequest:requestCopy];
      if (v8 == ++v10)
      {
        v8 = [matchers countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  lock2 = [(SHMultipleConcurrentMatcher *)self lock];
  [lock2 unlock];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  lock = [(SHMultipleConcurrentMatcher *)self lock];
  [lock lock];

  [(SHMultipleConcurrentMatcher *)self setRecognitionHasStopped:1];
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    matchers = [(SHMultipleConcurrentMatcher *)self matchers];
    *buf = 138412290;
    v20 = matchers;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SHMultipleConcurrentMatcher Calling stop on child matchers %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  matchers2 = [(SHMultipleConcurrentMatcher *)self matchers];
  v9 = [matchers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(matchers2);
        }

        [*(*(&v14 + 1) + 8 * v12) stopRecognitionForRequestID:dCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [matchers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  lock2 = [(SHMultipleConcurrentMatcher *)self lock];
  [lock2 unlock];
}

- (void)stopRecognition
{
  lock = [(SHMultipleConcurrentMatcher *)self lock];
  [lock lock];

  [(SHMultipleConcurrentMatcher *)self setRecognitionHasStopped:1];
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    matchers = [(SHMultipleConcurrentMatcher *)self matchers];
    *buf = 138412290;
    v18 = matchers;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SHMultipleConcurrentMatcher Calling stop on child matchers %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  matchers2 = [(SHMultipleConcurrentMatcher *)self matchers];
  v7 = [matchers2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(matchers2);
        }

        [*(*(&v12 + 1) + 8 * v10) stopRecognition];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [matchers2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  lock2 = [(SHMultipleConcurrentMatcher *)self lock];
  [lock2 unlock];
}

- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature
{
  signatureCopy = signature;
  metrics = [signatureCopy metrics];
  recordingSource = [metrics recordingSource];
  audioRecordingManager = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
  suggestedAudioRecordingSource = [audioRecordingManager suggestedAudioRecordingSource];

  v10 = sh_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    audioRecordingManager2 = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
    suggestedAudioRecordingSource2 = [audioRecordingManager2 suggestedAudioRecordingSource];
    metrics2 = [signatureCopy metrics];
    v15 = 134218496;
    v16 = suggestedAudioRecordingSource2;
    v17 = 2048;
    recordingSource2 = [metrics2 recordingSource];
    v19 = 1024;
    v20 = recordingSource == suggestedAudioRecordingSource;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Suggested audio recording source %li signature source %li shouldAttempt %i", &v15, 0x1Cu);
  }

  return recordingSource == suggestedAudioRecordingSource;
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  matcherCopy = matcher;
  responseCopy = response;
  matchers = [(SHMultipleConcurrentMatcher *)self matchers];
  if ([matchers count] <= 1)
  {

    goto LABEL_5;
  }

  signature = [responseCopy signature];
  metrics = [signature metrics];
  recordingSource = [metrics recordingSource];
  audioRecordingManager = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
  suggestedAudioRecordingSource = [audioRecordingManager suggestedAudioRecordingSource];

  if (recordingSource == suggestedAudioRecordingSource)
  {
LABEL_5:
    delegate = [(SHMultipleConcurrentMatcher *)self delegate];
    [delegate matcher:matcherCopy didProduceResponse:responseCopy];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end