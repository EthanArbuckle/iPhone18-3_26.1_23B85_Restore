@interface SHMultipleConcurrentMatcher
- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4;
- (SHMatcherDelegate)delegate;
- (SHMultipleConcurrentMatcher)initWithMatchers:(id)a3 audioRecordingManager:(id)a4;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHMultipleConcurrentMatcher

- (SHMultipleConcurrentMatcher)initWithMatchers:(id)a3 audioRecordingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = SHMultipleConcurrentMatcher;
  v9 = [(SHMultipleConcurrentMatcher *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_matchers, a3);
    objc_storeStrong(&v10->_audioRecordingManager, a4);
    v11 = objc_alloc_init(NSRecursiveLock);
    lock = v10->_lock;
    v10->_lock = v11;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v7;
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

- (void)startRecognitionForRequest:(id)a3
{
  v4 = a3;
  v5 = [(SHMultipleConcurrentMatcher *)self lock];
  [v5 lock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SHMultipleConcurrentMatcher *)self matchers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([(SHMultipleConcurrentMatcher *)self recognitionHasStopped])
      {
        break;
      }

      [v11 startRecognitionForRequest:v4];
      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = [(SHMultipleConcurrentMatcher *)self lock];
  [v12 unlock];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHMultipleConcurrentMatcher *)self lock];
  [v5 lock];

  [(SHMultipleConcurrentMatcher *)self setRecognitionHasStopped:1];
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(SHMultipleConcurrentMatcher *)self matchers];
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SHMultipleConcurrentMatcher Calling stop on child matchers %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(SHMultipleConcurrentMatcher *)self matchers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) stopRecognitionForRequestID:v4];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [(SHMultipleConcurrentMatcher *)self lock];
  [v13 unlock];
}

- (void)stopRecognition
{
  v3 = [(SHMultipleConcurrentMatcher *)self lock];
  [v3 lock];

  [(SHMultipleConcurrentMatcher *)self setRecognitionHasStopped:1];
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(SHMultipleConcurrentMatcher *)self matchers];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SHMultipleConcurrentMatcher Calling stop on child matchers %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(SHMultipleConcurrentMatcher *)self matchers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10) stopRecognition];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [(SHMultipleConcurrentMatcher *)self lock];
  [v11 unlock];
}

- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4
{
  v5 = a4;
  v6 = [v5 metrics];
  v7 = [v6 recordingSource];
  v8 = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
  v9 = [v8 suggestedAudioRecordingSource];

  v10 = sh_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
    v12 = [v11 suggestedAudioRecordingSource];
    v13 = [v5 metrics];
    v15 = 134218496;
    v16 = v12;
    v17 = 2048;
    v18 = [v13 recordingSource];
    v19 = 1024;
    v20 = v7 == v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Suggested audio recording source %li signature source %li shouldAttempt %i", &v15, 0x1Cu);
  }

  return v7 == v9;
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(SHMultipleConcurrentMatcher *)self matchers];
  if ([v7 count] <= 1)
  {

    goto LABEL_5;
  }

  v8 = [v6 signature];
  v9 = [v8 metrics];
  v10 = [v9 recordingSource];
  v11 = [(SHMultipleConcurrentMatcher *)self audioRecordingManager];
  v12 = [v11 suggestedAudioRecordingSource];

  if (v10 == v12)
  {
LABEL_5:
    v13 = [(SHMultipleConcurrentMatcher *)self delegate];
    [v13 matcher:v14 didProduceResponse:v6];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end