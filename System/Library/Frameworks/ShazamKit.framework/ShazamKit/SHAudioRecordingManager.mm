@interface SHAudioRecordingManager
- (BOOL)hasActiveTaps;
- (BOOL)hasActiveTapsForRecordingSource:(int64_t)source;
- (BOOL)isAudioSourceSupported:(int64_t)supported;
- (BOOL)shouldStartRecorder:(id)recorder;
- (SHAudioRecordingManager)initWithRecorders:(id)recorders;
- (SHAudioRecordingManagerDelegate)delegate;
- (id)recorderForSource:(int64_t)source;
- (int64_t)suggestedAudioRecordingSource;
- (void)attachTap:(id)tap;
- (void)dealloc;
- (void)detachTap:(id)tap;
- (void)recorder:(id)recorder failedToStartWithError:(id)error;
- (void)recorder:(id)recorder producedAudioBuffer:(id)buffer atTime:(id)time;
- (void)recorderFailedToProduceValidAudio:(id)audio;
- (void)startRecording;
- (void)stopRecordingForReason:(int64_t)reason;
@end

@implementation SHAudioRecordingManager

- (void)dealloc
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deallocating recording service", buf, 2u);
  }

  [(SHAudioRecordingManager *)self stopRecordingForReason:2];
  v4.receiver = self;
  v4.super_class = SHAudioRecordingManager;
  [(SHAudioRecordingManager *)&v4 dealloc];
}

- (SHAudioRecordingManager)initWithRecorders:(id)recorders
{
  recordersCopy = recorders;
  v19.receiver = self;
  v19.super_class = SHAudioRecordingManager;
  v6 = [(SHAudioRecordingManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recorders, recorders);
    v8 = +[NSMutableSet set];
    activeTaps = v7->_activeTaps;
    v7->_activeTaps = v8;

    v10 = objc_opt_new();
    recordingBufferValidator = v7->_recordingBufferValidator;
    v7->_recordingBufferValidator = v10;

    [(SHAudioRecordingBufferValidator *)v7->_recordingBufferValidator setDelegate:v7];
    v12 = objc_alloc_init(NSRecursiveLock);
    lock = v7->_lock;
    v7->_lock = v12;

    v14 = objc_alloc_init(SHAudioEnvironment);
    audioEnvironment = v7->_audioEnvironment;
    v7->_audioEnvironment = v14;

    v16 = dispatch_group_create();
    startRecognitionGroup = v7->_startRecognitionGroup;
    v7->_startRecognitionGroup = v16;
  }

  return v7;
}

- (BOOL)shouldStartRecorder:(id)recorder
{
  recorderCopy = recorder;
  if ([recorderCopy isRunning])
  {
    v5 = 0;
  }

  else
  {
    v5 = -[SHAudioRecordingManager hasActiveTapsForRecordingSource:](self, "hasActiveTapsForRecordingSource:", [recorderCopy recordingSource]);
  }

  return v5;
}

- (void)startRecording
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting recording", buf, 2u);
  }

  startRecognitionGroup = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_enter(startRecognitionGroup);

  delegate = [(SHAudioRecordingManager *)self delegate];
  [delegate audioRecordingManagerWillStartRecording:self];

  recorders = [(SHAudioRecordingManager *)self recorders];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [recorders count]);

  objc_initWeak(buf, self);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  recorders2 = [(SHAudioRecordingManager *)self recorders];
  v9 = [recorders2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(recorders2);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([(SHAudioRecordingManager *)self shouldStartRecorder:v12])
        {
          recordingBufferValidator = [(SHAudioRecordingManager *)self recordingBufferValidator];
          [recordingBufferValidator addMutedRecorder:v12];

          [v12 setDelegate:self];
          startRecognitionGroup2 = [(SHAudioRecordingManager *)self startRecognitionGroup];
          dispatch_group_enter(startRecognitionGroup2);

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10003608C;
          v18[3] = &unk_10007DCE8;
          objc_copyWeak(&v20, buf);
          v18[4] = v12;
          v19 = v7;
          [v12 startRecordingWithCompletion:v18];

          objc_destroyWeak(&v20);
        }
      }

      v9 = [recorders2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  startRecognitionGroup3 = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_leave(startRecognitionGroup3);

  startRecognitionGroup4 = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_wait(startRecognitionGroup4, 0xFFFFFFFFFFFFFFFFLL);

  if ([v7 count])
  {
    delegate2 = [(SHAudioRecordingManager *)self delegate];
    [delegate2 audioRecordingManager:self failedToStartRecorders:v7];
  }

  objc_destroyWeak(buf);
}

- (void)stopRecordingForReason:(int64_t)reason
{
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping recording for reason %lu", buf, 0xCu);
  }

  reasonCopy2 = reason;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  recorders = [(SHAudioRecordingManager *)self recorders];
  v7 = [recorders countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(recorders);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        recordingBufferValidator = [(SHAudioRecordingManager *)self recordingBufferValidator];
        [recordingBufferValidator addMutedRecorder:v11];

        [v11 setDelegate:0];
        v13 = sh_log_object();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          reasonCopy = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stopping recorder: %@", buf, 0xCu);
        }

        v43 = 0;
        v14 = [v11 stopRecordingWithError:&v43];
        v15 = v43;
        if ((v14 & 1) == 0)
        {
          v16 = sh_log_object();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            reasonCopy = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to stop recorder with error: %@", buf, 0xCu);
          }
        }
      }

      v8 = [recorders countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v17 = reasonCopy2;
  if (reasonCopy2 == 5 || reasonCopy2 == 3)
  {
    if (reasonCopy2 == 3)
    {
      v18 = 104;
    }

    else
    {
      v18 = 105;
    }

    lock = [(SHAudioRecordingManager *)self lock];
    [lock lock];

    activeTaps = [(SHAudioRecordingManager *)self activeTaps];
    v21 = [activeTaps copy];

    lock2 = [(SHAudioRecordingManager *)self lock];
    [lock2 unlock];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      v27 = SHCoreErrorDomain;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v39 + 1) + 8 * j);
          completion = [v29 completion];

          if (completion)
          {
            completion2 = [v29 completion];
            v32 = [NSError errorWithDomain:v27 code:v18 userInfo:0];
            (completion2)[2](completion2, 0, 0, v32);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v25);
    }

    v17 = reasonCopy2;
  }

  if ((v17 & 0xFFFFFFFFFFFFFFFDLL) != 4)
  {
    lock3 = [(SHAudioRecordingManager *)self lock];
    [lock3 lock];

    activeTaps2 = [(SHAudioRecordingManager *)self activeTaps];
    [activeTaps2 removeAllObjects];

    lock4 = [(SHAudioRecordingManager *)self lock];
    [lock4 unlock];
  }

  delegate = [(SHAudioRecordingManager *)self delegate];
  [delegate audioRecordingManagerDidStopRecording:self];

  v37 = sh_log_object();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = v17;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Stopped recording for reason %lu", buf, 0xCu);
  }
}

- (void)attachTap:(id)tap
{
  tapCopy = tap;
  activeTaps = [(SHAudioRecordingManager *)self activeTaps];
  v6 = [activeTaps containsObject:tapCopy];

  if (v6)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = tapCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not attaching tap: %@ it is already attached", &v12, 0xCu);
    }
  }

  else
  {
    delegate = [(SHAudioRecordingManager *)self delegate];
    [delegate audioRecordingManager:self willAttachTap:tapCopy];

    lock = [(SHAudioRecordingManager *)self lock];
    [lock lock];

    activeTaps2 = [(SHAudioRecordingManager *)self activeTaps];
    [activeTaps2 addObject:tapCopy];

    lock2 = [(SHAudioRecordingManager *)self lock];
    [lock2 unlock];

    [(SHAudioRecordingManager *)self startRecording];
  }
}

- (void)detachTap:(id)tap
{
  tapCopy = tap;
  hasActiveTaps = [(SHAudioRecordingManager *)self hasActiveTaps];
  lock = [(SHAudioRecordingManager *)self lock];
  [lock lock];

  activeTaps = [(SHAudioRecordingManager *)self activeTaps];
  [activeTaps removeObject:tapCopy];

  lock2 = [(SHAudioRecordingManager *)self lock];
  [lock2 unlock];

  delegate = [(SHAudioRecordingManager *)self delegate];
  [delegate audioRecordingManager:self didDetachTap:tapCopy];

  v10 = sh_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activeTaps2 = [(SHAudioRecordingManager *)self activeTaps];
    v12 = 138412546;
    v13 = tapCopy;
    v14 = 2112;
    v15 = activeTaps2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Detached tap: %@ taps remaining: %@", &v12, 0x16u);
  }

  if (hasActiveTaps && ![(SHAudioRecordingManager *)self hasActiveTaps])
  {
    [(SHAudioRecordingManager *)self stopRecordingForReason:1];
  }
}

- (BOOL)hasActiveTaps
{
  lock = [(SHAudioRecordingManager *)self lock];
  [lock lock];

  activeTaps = [(SHAudioRecordingManager *)self activeTaps];
  v5 = [activeTaps count];

  lock2 = [(SHAudioRecordingManager *)self lock];
  [lock2 unlock];

  return v5 != 0;
}

- (BOOL)hasActiveTapsForRecordingSource:(int64_t)source
{
  lock = [(SHAudioRecordingManager *)self lock];
  [lock lock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeTaps = [(SHAudioRecordingManager *)self activeTaps];
  v7 = [activeTaps countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(activeTaps);
        }

        if ([*(*(&v14 + 1) + 8 * i) recordingSource] == source)
        {
          lock2 = [(SHAudioRecordingManager *)self lock];
          [lock2 unlock];

          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [activeTaps countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  activeTaps = [(SHAudioRecordingManager *)self lock];
  [activeTaps unlock];
  v11 = 0;
LABEL_11:

  return v11;
}

- (int64_t)suggestedAudioRecordingSource
{
  recorders = [(SHAudioRecordingManager *)self recorders];
  v4 = [recorders count];

  if (v4 == 1)
  {
    recorders2 = [(SHAudioRecordingManager *)self recorders];
    firstObject = [recorders2 firstObject];
    recordingSource = [firstObject recordingSource];

    return recordingSource;
  }

  v9 = [(SHAudioRecordingManager *)self isAudioSourceSupported:1];
  audioEnvironment = [(SHAudioRecordingManager *)self audioEnvironment];
  isUsingAlternativeOutputToBuiltInSpeaker = [audioEnvironment isUsingAlternativeOutputToBuiltInSpeaker];

  audioEnvironment2 = [(SHAudioRecordingManager *)self audioEnvironment];
  isOtherAudioPlaying = [audioEnvironment2 isOtherAudioPlaying];

  lock = [(SHAudioRecordingManager *)self lock];
  [lock lock];

  recordingBufferValidator = [(SHAudioRecordingManager *)self recordingBufferValidator];
  v16 = [(SHAudioRecordingManager *)self recorderForSource:1];
  v17 = [recordingBufferValidator isRecorderProducingValidAudio:v16];

  recordingBufferValidator2 = [(SHAudioRecordingManager *)self recordingBufferValidator];
  v19 = [(SHAudioRecordingManager *)self recorderForSource:2];
  v20 = [recordingBufferValidator2 isRecorderProducingValidAudio:v19];

  lock2 = [(SHAudioRecordingManager *)self lock];
  [lock2 unlock];

  if ((v20 & 1) != 0 || !v17)
  {
    if ((v9 & isUsingAlternativeOutputToBuiltInSpeaker & isOtherAudioPlaying & v17) != 0)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if ([(SHAudioRecordingManager *)self previouslySuggestedAudioRecordingSource]== v22)
    {
      return v22;
    }

    v23 = sh_log_object();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v9 & isUsingAlternativeOutputToBuiltInSpeaker & isOtherAudioPlaying & v17)
    {
      if (v24)
      {
        LOWORD(v30) = 0;
        v25 = "Marking the internal audio source as preferred";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v30, 2u);
      }
    }

    else if (v24)
    {
      LOWORD(v30) = 0;
      v25 = "Marking the external audio source as preferred";
      goto LABEL_19;
    }

    v29 = sh_log_object();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = __PAIR64__(v9, 67109888);
      v31 = 1024;
      v32 = isUsingAlternativeOutputToBuiltInSpeaker;
      v33 = 1024;
      v34 = isOtherAudioPlaying;
      v35 = 1024;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Internal audio source support: %d is using alternative output to built-in speaker: %d other audio playing %d, internal recorder is producing audio %d", &v30, 0x1Au);
    }

    selfCopy2 = self;
    v28 = v22;
    goto LABEL_23;
  }

  if ([(SHAudioRecordingManager *)self previouslySuggestedAudioRecordingSource]!= 1)
  {
    v26 = sh_log_object();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Marking the internal recorder as preferred. External recorder is not producing audio.", &v30, 2u);
    }

    v22 = 1;
    selfCopy2 = self;
    v28 = 1;
LABEL_23:
    [(SHAudioRecordingManager *)selfCopy2 setPreviouslySuggestedAudioRecordingSource:v28, v30];
    return v22;
  }

  return 1;
}

- (BOOL)isAudioSourceSupported:(int64_t)supported
{
  v3 = [(SHAudioRecordingManager *)self recorderForSource:supported];
  v4 = v3 != 0;

  return v4;
}

- (id)recorderForSource:(int64_t)source
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recorders = [(SHAudioRecordingManager *)self recorders];
  v5 = [recorders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(recorders);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 recordingSource] == source)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [recorders countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)recorder:(id)recorder producedAudioBuffer:(id)buffer atTime:(id)time
{
  recorderCopy = recorder;
  bufferCopy = buffer;
  timeCopy = time;
  delegate = [(SHAudioRecordingManager *)self delegate];
  if (!delegate || (v12 = delegate, -[SHAudioRecordingManager delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 recorder:recorderCopy shouldProcessAudioBuffer:bufferCopy atTime:timeCopy], v13, v12, v14))
  {
    lock = [(SHAudioRecordingManager *)self lock];
    [lock lock];

    recordingBufferValidator = [(SHAudioRecordingManager *)self recordingBufferValidator];
    v17 = [recordingBufferValidator isValidBuffer:bufferCopy atTime:timeCopy forRecorder:recorderCopy];

    lock2 = [(SHAudioRecordingManager *)self lock];
    [lock2 unlock];

    if (v17)
    {
      lock3 = [(SHAudioRecordingManager *)self lock];
      [lock3 lock];

      activeTaps = [(SHAudioRecordingManager *)self activeTaps];
      v21 = [activeTaps copy];

      lock4 = [(SHAudioRecordingManager *)self lock];
      [lock4 unlock];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v33;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v32 + 1) + 8 * i);
            recordingSource = [v28 recordingSource];
            if (recordingSource == [recorderCopy recordingSource])
            {
              completion = [v28 completion];

              if (completion)
              {
                completion2 = [v28 completion];
                (completion2)[2](completion2, bufferCopy, timeCopy, 0);
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v25);
      }
    }
  }
}

- (void)recorder:(id)recorder failedToStartWithError:(id)error
{
  errorCopy = error;
  recorderCopy = recorder;
  delegate = [(SHAudioRecordingManager *)self delegate];
  [delegate recorder:recorderCopy failedToStartWithError:errorCopy];
}

- (void)recorderFailedToProduceValidAudio:(id)audio
{
  audioCopy = audio;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  recorders = [(SHAudioRecordingManager *)self recorders];
  v6 = [recorders countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(recorders);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (v10 != audioCopy)
      {
        recordingBufferValidator = [(SHAudioRecordingManager *)self recordingBufferValidator];
        v12 = [recordingBufferValidator isRecorderProducingValidAudio:v10];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [recorders countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "All recorders are muted or producing invalid audio buffers. Stopping recording.", v15, 2u);
    }

    recorders = [(SHAudioRecordingManager *)self delegate];
    recorders2 = [(SHAudioRecordingManager *)self recorders];
    [recorders audioRecordingManager:self failedToStartRecorders:recorders2];
  }
}

- (SHAudioRecordingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end