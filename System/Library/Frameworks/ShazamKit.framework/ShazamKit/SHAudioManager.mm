@interface SHAudioManager
+ (id)sharedInstance;
- (BOOL)recorder:(id)a3 shouldProcessAudioBuffer:(id)a4 atTime:(id)a5;
- (SHAudioManager)initWithAudioSessionManager:(id)a3 audioRecordingManager:(id)a4;
- (int64_t)activeAssistantServiceTaps;
- (void)audioRecordingManager:(id)a3 didDetachTap:(id)a4;
- (void)audioRecordingManager:(id)a3 failedToStartRecorders:(id)a4;
- (void)audioRecordingManager:(id)a3 willAttachTap:(id)a4;
- (void)audioRecordingManagerDidStopRecording:(id)a3;
- (void)audioRecordingManagerWillStartRecording:(id)a3;
- (void)audioSessionManager:(id)a3 interruptionBeganWithOptions:(unint64_t)a4;
- (void)audioSessionManager:(id)a3 interruptionEndedWithOptions:(unint64_t)a4;
- (void)mediaServicesWereReset;
- (void)recorder:(id)a3 failedToStartWithError:(id)a4;
- (void)resetRecordingLog;
@end

@implementation SHAudioManager

- (SHAudioManager)initWithAudioSessionManager:(id)a3 audioRecordingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SHAudioManager;
  v9 = [(SHAudioManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_audioSessionManager, a3);
    [(SHAudioSessionManaging *)v10->_audioSessionManager setDelegate:v10];
    objc_storeStrong(&v10->_audioRecordingManager, a4);
    [(SHAudioRecordingManager *)v10->_audioRecordingManager setDelegate:v10];
    v11 = +[NSMutableDictionary dictionary];
    recordingLogs = v10->_recordingLogs;
    v10->_recordingLogs = v11;

    v13 = objc_alloc_init(NSLock);
    recordingLogsLock = v10->_recordingLogsLock;
    v10->_recordingLogsLock = v13;
  }

  return v10;
}

+ (id)sharedInstance
{
  if (qword_100098268 != -1)
  {
    sub_10000B034();
  }

  v3 = qword_100098260;

  return v3;
}

- (void)mediaServicesWereReset
{
  v3 = [(SHAudioManager *)self audioRecordingManager];
  [v3 stopRecordingForReason:6];

  v4 = [(SHAudioManager *)self audioRecordingManager];
  v5 = [v4 hasActiveTaps];

  if (v5)
  {
    v6 = [(SHAudioManager *)self audioRecordingManager];
    [v6 startRecording];
  }
}

- (void)audioSessionManager:(id)a3 interruptionBeganWithOptions:(unint64_t)a4
{
  v4 = [(SHAudioManager *)self audioRecordingManager:a3];
  [v4 stopRecordingForReason:4];
}

- (void)audioSessionManager:(id)a3 interruptionEndedWithOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 & 1) != 0 && (-[SHAudioManager audioRecordingManager](self, "audioRecordingManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasActiveTaps], v7, (v8))
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resuming recording after interruption", v12, 2u);
    }

    v10 = [(SHAudioManager *)self audioRecordingManager];
    [v10 startRecording];
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Audio interruption ended but recording should not restart", buf, 2u);
    }

    v10 = [(SHAudioManager *)self audioRecordingManager];
    [v10 stopRecordingForReason:5];
  }
}

- (BOOL)recorder:(id)a3 shouldProcessAudioBuffer:(id)a4 atTime:(id)a5
{
  v5 = [(SHAudioManager *)self audioSessionManager:a3];
  v6 = [v5 isAudioSessionInterrupted];

  return v6 ^ 1;
}

- (void)recorder:(id)a3 failedToStartWithError:(id)a4
{
  v5 = [(SHAudioManager *)self audioSessionManager:a3];
  [v5 deactivateAudioSession];

  v6 = [(SHAudioManager *)self audioSessionManager];
  [v6 activateAudioSessionForClient:2];
}

- (void)audioRecordingManager:(id)a3 failedToStartRecorders:(id)a4
{
  v4 = [(SHAudioManager *)self audioRecordingManager:a3];
  [v4 stopRecordingForReason:3];
}

- (void)audioRecordingManager:(id)a3 willAttachTap:(id)a4
{
  v5 = a4;
  v6 = [(SHAudioManager *)self recordingLogsLock];
  [v6 lock];

  v7 = [(SHAudioManager *)self recordingLogs];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = [SHRecordingLog alloc];
    v11 = [v5 bundleIdentifier];
    v9 = [(SHRecordingLog *)v10 initWithBundleID:v11];

    v12 = [(SHAudioManager *)self recordingLogs];
    v13 = [v5 bundleIdentifier];
    [v12 setObject:v9 forKey:v13];
  }

  -[SHRecordingLog attachedTapForClient:](v9, "attachedTapForClient:", [v5 client]);
  v14 = [(SHAudioManager *)self recordingLogsLock];
  [v14 unlock];

  v15 = sh_log_object();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "willAttachTap: number of assistant taps %li", &v16, 0xCu);
  }
}

- (void)audioRecordingManager:(id)a3 didDetachTap:(id)a4
{
  v5 = a4;
  v6 = [(SHAudioManager *)self recordingLogsLock];
  [v6 lock];

  v7 = [(SHAudioManager *)self recordingLogs];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 objectForKey:v8];

  v10 = [v5 client];
  [v9 detachedTapForClient:v10];
  v11 = [(SHAudioManager *)self recordingLogsLock];
  [v11 unlock];

  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didDetachTap: number of assistant taps %li", &v13, 0xCu);
  }
}

- (void)audioRecordingManagerWillStartRecording:(id)a3
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "audioRecordingManagerWillStartRecording - number of assistant taps %li", &v7, 0xCu);
  }

  v5 = [(SHAudioManager *)self audioSessionManager];
  if ([(SHAudioManager *)self activeAssistantServiceTaps]< 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 activateAudioSessionForClient:v6];
}

- (void)audioRecordingManagerDidStopRecording:(id)a3
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "audioRecordingManagerDidStopRecording", v8, 2u);
  }

  v5 = [(SHAudioManager *)self audioSessionManager];
  v6 = [v5 isAudioSessionInterrupted];

  if ((v6 & 1) == 0)
  {
    v7 = [(SHAudioManager *)self audioSessionManager];
    [v7 deactivateAudioSession];
  }
}

- (void)resetRecordingLog
{
  v3 = [(SHAudioManager *)self recordingLogsLock];
  [v3 lock];

  v4 = +[NSMutableDictionary dictionary];
  recordingLogs = self->_recordingLogs;
  self->_recordingLogs = v4;

  v6 = [(SHAudioManager *)self recordingLogsLock];
  [v6 unlock];
}

- (int64_t)activeAssistantServiceTaps
{
  v3 = [(SHAudioManager *)self recordingLogsLock];
  [v3 lock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SHAudioManager *)self recordingLogs];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v13 + 1) + 8 * i) assistantTapCount];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [(SHAudioManager *)self recordingLogsLock];
  [v11 unlock];

  return v8;
}

@end