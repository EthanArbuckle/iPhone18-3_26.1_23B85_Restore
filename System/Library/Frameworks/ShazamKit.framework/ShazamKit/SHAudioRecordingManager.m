@interface SHAudioRecordingManager
- (BOOL)hasActiveTaps;
- (BOOL)hasActiveTapsForRecordingSource:(int64_t)a3;
- (BOOL)isAudioSourceSupported:(int64_t)a3;
- (BOOL)shouldStartRecorder:(id)a3;
- (SHAudioRecordingManager)initWithRecorders:(id)a3;
- (SHAudioRecordingManagerDelegate)delegate;
- (id)recorderForSource:(int64_t)a3;
- (int64_t)suggestedAudioRecordingSource;
- (void)attachTap:(id)a3;
- (void)dealloc;
- (void)detachTap:(id)a3;
- (void)recorder:(id)a3 failedToStartWithError:(id)a4;
- (void)recorder:(id)a3 producedAudioBuffer:(id)a4 atTime:(id)a5;
- (void)recorderFailedToProduceValidAudio:(id)a3;
- (void)startRecording;
- (void)stopRecordingForReason:(int64_t)a3;
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

- (SHAudioRecordingManager)initWithRecorders:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = SHAudioRecordingManager;
  v6 = [(SHAudioRecordingManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recorders, a3);
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

- (BOOL)shouldStartRecorder:(id)a3
{
  v4 = a3;
  if ([v4 isRunning])
  {
    v5 = 0;
  }

  else
  {
    v5 = -[SHAudioRecordingManager hasActiveTapsForRecordingSource:](self, "hasActiveTapsForRecordingSource:", [v4 recordingSource]);
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

  v4 = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_enter(v4);

  v5 = [(SHAudioRecordingManager *)self delegate];
  [v5 audioRecordingManagerWillStartRecording:self];

  v6 = [(SHAudioRecordingManager *)self recorders];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);

  objc_initWeak(buf, self);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(SHAudioRecordingManager *)self recorders];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([(SHAudioRecordingManager *)self shouldStartRecorder:v12])
        {
          v13 = [(SHAudioRecordingManager *)self recordingBufferValidator];
          [v13 addMutedRecorder:v12];

          [v12 setDelegate:self];
          v14 = [(SHAudioRecordingManager *)self startRecognitionGroup];
          dispatch_group_enter(v14);

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

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_leave(v15);

  v16 = [(SHAudioRecordingManager *)self startRecognitionGroup];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  if ([v7 count])
  {
    v17 = [(SHAudioRecordingManager *)self delegate];
    [v17 audioRecordingManager:self failedToStartRecorders:v7];
  }

  objc_destroyWeak(buf);
}

- (void)stopRecordingForReason:(int64_t)a3
{
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping recording for reason %lu", buf, 0xCu);
  }

  v38 = a3;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [(SHAudioRecordingManager *)self recorders];
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [(SHAudioRecordingManager *)self recordingBufferValidator];
        [v12 addMutedRecorder:v11];

        [v11 setDelegate:0];
        v13 = sh_log_object();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v11;
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
            v51 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to stop recorder with error: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v17 = v38;
  if (v38 == 5 || v38 == 3)
  {
    if (v38 == 3)
    {
      v18 = 104;
    }

    else
    {
      v18 = 105;
    }

    v19 = [(SHAudioRecordingManager *)self lock];
    [v19 lock];

    v20 = [(SHAudioRecordingManager *)self activeTaps];
    v21 = [v20 copy];

    v22 = [(SHAudioRecordingManager *)self lock];
    [v22 unlock];

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
          v30 = [v29 completion];

          if (v30)
          {
            v31 = [v29 completion];
            v32 = [NSError errorWithDomain:v27 code:v18 userInfo:0];
            (v31)[2](v31, 0, 0, v32);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v25);
    }

    v17 = v38;
  }

  if ((v17 & 0xFFFFFFFFFFFFFFFDLL) != 4)
  {
    v33 = [(SHAudioRecordingManager *)self lock];
    [v33 lock];

    v34 = [(SHAudioRecordingManager *)self activeTaps];
    [v34 removeAllObjects];

    v35 = [(SHAudioRecordingManager *)self lock];
    [v35 unlock];
  }

  v36 = [(SHAudioRecordingManager *)self delegate];
  [v36 audioRecordingManagerDidStopRecording:self];

  v37 = sh_log_object();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = v17;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Stopped recording for reason %lu", buf, 0xCu);
  }
}

- (void)attachTap:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioRecordingManager *)self activeTaps];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not attaching tap: %@ it is already attached", &v12, 0xCu);
    }
  }

  else
  {
    v8 = [(SHAudioRecordingManager *)self delegate];
    [v8 audioRecordingManager:self willAttachTap:v4];

    v9 = [(SHAudioRecordingManager *)self lock];
    [v9 lock];

    v10 = [(SHAudioRecordingManager *)self activeTaps];
    [v10 addObject:v4];

    v11 = [(SHAudioRecordingManager *)self lock];
    [v11 unlock];

    [(SHAudioRecordingManager *)self startRecording];
  }
}

- (void)detachTap:(id)a3
{
  v4 = a3;
  v5 = [(SHAudioRecordingManager *)self hasActiveTaps];
  v6 = [(SHAudioRecordingManager *)self lock];
  [v6 lock];

  v7 = [(SHAudioRecordingManager *)self activeTaps];
  [v7 removeObject:v4];

  v8 = [(SHAudioRecordingManager *)self lock];
  [v8 unlock];

  v9 = [(SHAudioRecordingManager *)self delegate];
  [v9 audioRecordingManager:self didDetachTap:v4];

  v10 = sh_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SHAudioRecordingManager *)self activeTaps];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Detached tap: %@ taps remaining: %@", &v12, 0x16u);
  }

  if (v5 && ![(SHAudioRecordingManager *)self hasActiveTaps])
  {
    [(SHAudioRecordingManager *)self stopRecordingForReason:1];
  }
}

- (BOOL)hasActiveTaps
{
  v3 = [(SHAudioRecordingManager *)self lock];
  [v3 lock];

  v4 = [(SHAudioRecordingManager *)self activeTaps];
  v5 = [v4 count];

  v6 = [(SHAudioRecordingManager *)self lock];
  [v6 unlock];

  return v5 != 0;
}

- (BOOL)hasActiveTapsForRecordingSource:(int64_t)a3
{
  v5 = [(SHAudioRecordingManager *)self lock];
  [v5 lock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SHAudioRecordingManager *)self activeTaps];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * i) recordingSource] == a3)
        {
          v12 = [(SHAudioRecordingManager *)self lock];
          [v12 unlock];

          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [(SHAudioRecordingManager *)self lock];
  [v6 unlock];
  v11 = 0;
LABEL_11:

  return v11;
}

- (int64_t)suggestedAudioRecordingSource
{
  v3 = [(SHAudioRecordingManager *)self recorders];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SHAudioRecordingManager *)self recorders];
    v6 = [v5 firstObject];
    v7 = [v6 recordingSource];

    return v7;
  }

  v9 = [(SHAudioRecordingManager *)self isAudioSourceSupported:1];
  v10 = [(SHAudioRecordingManager *)self audioEnvironment];
  v11 = [v10 isUsingAlternativeOutputToBuiltInSpeaker];

  v12 = [(SHAudioRecordingManager *)self audioEnvironment];
  v13 = [v12 isOtherAudioPlaying];

  v14 = [(SHAudioRecordingManager *)self lock];
  [v14 lock];

  v15 = [(SHAudioRecordingManager *)self recordingBufferValidator];
  v16 = [(SHAudioRecordingManager *)self recorderForSource:1];
  v17 = [v15 isRecorderProducingValidAudio:v16];

  v18 = [(SHAudioRecordingManager *)self recordingBufferValidator];
  v19 = [(SHAudioRecordingManager *)self recorderForSource:2];
  v20 = [v18 isRecorderProducingValidAudio:v19];

  v21 = [(SHAudioRecordingManager *)self lock];
  [v21 unlock];

  if ((v20 & 1) != 0 || !v17)
  {
    if ((v9 & v11 & v13 & v17) != 0)
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
    if (v9 & v11 & v13 & v17)
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
      v32 = v11;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Internal audio source support: %d is using alternative output to built-in speaker: %d other audio playing %d, internal recorder is producing audio %d", &v30, 0x1Au);
    }

    v27 = self;
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
    v27 = self;
    v28 = 1;
LABEL_23:
    [(SHAudioRecordingManager *)v27 setPreviouslySuggestedAudioRecordingSource:v28, v30];
    return v22;
  }

  return 1;
}

- (BOOL)isAudioSourceSupported:(int64_t)a3
{
  v3 = [(SHAudioRecordingManager *)self recorderForSource:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)recorderForSource:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SHAudioRecordingManager *)self recorders];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 recordingSource] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)recorder:(id)a3 producedAudioBuffer:(id)a4 atTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SHAudioRecordingManager *)self delegate];
  if (!v11 || (v12 = v11, -[SHAudioRecordingManager delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 recorder:v8 shouldProcessAudioBuffer:v9 atTime:v10], v13, v12, v14))
  {
    v15 = [(SHAudioRecordingManager *)self lock];
    [v15 lock];

    v16 = [(SHAudioRecordingManager *)self recordingBufferValidator];
    v17 = [v16 isValidBuffer:v9 atTime:v10 forRecorder:v8];

    v18 = [(SHAudioRecordingManager *)self lock];
    [v18 unlock];

    if (v17)
    {
      v19 = [(SHAudioRecordingManager *)self lock];
      [v19 lock];

      v20 = [(SHAudioRecordingManager *)self activeTaps];
      v21 = [v20 copy];

      v22 = [(SHAudioRecordingManager *)self lock];
      [v22 unlock];

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
            v29 = [v28 recordingSource];
            if (v29 == [v8 recordingSource])
            {
              v30 = [v28 completion];

              if (v30)
              {
                v31 = [v28 completion];
                (v31)[2](v31, v9, v10, 0);
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

- (void)recorder:(id)a3 failedToStartWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHAudioRecordingManager *)self delegate];
  [v8 recorder:v7 failedToStartWithError:v6];
}

- (void)recorderFailedToProduceValidAudio:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SHAudioRecordingManager *)self recorders];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (v10 != v4)
      {
        v11 = [(SHAudioRecordingManager *)self recordingBufferValidator];
        v12 = [v11 isRecorderProducingValidAudio:v10];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

    v5 = [(SHAudioRecordingManager *)self delegate];
    v14 = [(SHAudioRecordingManager *)self recorders];
    [v5 audioRecordingManager:self failedToStartRecorders:v14];
  }
}

- (SHAudioRecordingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end