@interface SHAudioManager
+ (id)sharedInstance;
- (BOOL)recorder:(id)recorder shouldProcessAudioBuffer:(id)buffer atTime:(id)time;
- (SHAudioManager)initWithAudioSessionManager:(id)manager audioRecordingManager:(id)recordingManager;
- (int64_t)activeAssistantServiceTaps;
- (void)audioRecordingManager:(id)manager didDetachTap:(id)tap;
- (void)audioRecordingManager:(id)manager failedToStartRecorders:(id)recorders;
- (void)audioRecordingManager:(id)manager willAttachTap:(id)tap;
- (void)audioRecordingManagerDidStopRecording:(id)recording;
- (void)audioRecordingManagerWillStartRecording:(id)recording;
- (void)audioSessionManager:(id)manager interruptionBeganWithOptions:(unint64_t)options;
- (void)audioSessionManager:(id)manager interruptionEndedWithOptions:(unint64_t)options;
- (void)mediaServicesWereReset;
- (void)recorder:(id)recorder failedToStartWithError:(id)error;
- (void)resetRecordingLog;
@end

@implementation SHAudioManager

- (SHAudioManager)initWithAudioSessionManager:(id)manager audioRecordingManager:(id)recordingManager
{
  managerCopy = manager;
  recordingManagerCopy = recordingManager;
  v16.receiver = self;
  v16.super_class = SHAudioManager;
  v9 = [(SHAudioManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_audioSessionManager, manager);
    [(SHAudioSessionManaging *)v10->_audioSessionManager setDelegate:v10];
    objc_storeStrong(&v10->_audioRecordingManager, recordingManager);
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
  audioRecordingManager = [(SHAudioManager *)self audioRecordingManager];
  [audioRecordingManager stopRecordingForReason:6];

  audioRecordingManager2 = [(SHAudioManager *)self audioRecordingManager];
  hasActiveTaps = [audioRecordingManager2 hasActiveTaps];

  if (hasActiveTaps)
  {
    audioRecordingManager3 = [(SHAudioManager *)self audioRecordingManager];
    [audioRecordingManager3 startRecording];
  }
}

- (void)audioSessionManager:(id)manager interruptionBeganWithOptions:(unint64_t)options
{
  v4 = [(SHAudioManager *)self audioRecordingManager:manager];
  [v4 stopRecordingForReason:4];
}

- (void)audioSessionManager:(id)manager interruptionEndedWithOptions:(unint64_t)options
{
  optionsCopy = options;
  managerCopy = manager;
  if (optionsCopy & 1) != 0 && (-[SHAudioManager audioRecordingManager](self, "audioRecordingManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasActiveTaps], v7, (v8))
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resuming recording after interruption", v12, 2u);
    }

    audioRecordingManager = [(SHAudioManager *)self audioRecordingManager];
    [audioRecordingManager startRecording];
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Audio interruption ended but recording should not restart", buf, 2u);
    }

    audioRecordingManager = [(SHAudioManager *)self audioRecordingManager];
    [audioRecordingManager stopRecordingForReason:5];
  }
}

- (BOOL)recorder:(id)recorder shouldProcessAudioBuffer:(id)buffer atTime:(id)time
{
  v5 = [(SHAudioManager *)self audioSessionManager:recorder];
  isAudioSessionInterrupted = [v5 isAudioSessionInterrupted];

  return isAudioSessionInterrupted ^ 1;
}

- (void)recorder:(id)recorder failedToStartWithError:(id)error
{
  v5 = [(SHAudioManager *)self audioSessionManager:recorder];
  [v5 deactivateAudioSession];

  audioSessionManager = [(SHAudioManager *)self audioSessionManager];
  [audioSessionManager activateAudioSessionForClient:2];
}

- (void)audioRecordingManager:(id)manager failedToStartRecorders:(id)recorders
{
  v4 = [(SHAudioManager *)self audioRecordingManager:manager];
  [v4 stopRecordingForReason:3];
}

- (void)audioRecordingManager:(id)manager willAttachTap:(id)tap
{
  tapCopy = tap;
  recordingLogsLock = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock lock];

  recordingLogs = [(SHAudioManager *)self recordingLogs];
  bundleIdentifier = [tapCopy bundleIdentifier];
  v9 = [recordingLogs objectForKey:bundleIdentifier];

  if (!v9)
  {
    v10 = [SHRecordingLog alloc];
    bundleIdentifier2 = [tapCopy bundleIdentifier];
    v9 = [(SHRecordingLog *)v10 initWithBundleID:bundleIdentifier2];

    recordingLogs2 = [(SHAudioManager *)self recordingLogs];
    bundleIdentifier3 = [tapCopy bundleIdentifier];
    [recordingLogs2 setObject:v9 forKey:bundleIdentifier3];
  }

  -[SHRecordingLog attachedTapForClient:](v9, "attachedTapForClient:", [tapCopy client]);
  recordingLogsLock2 = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock2 unlock];

  v15 = sh_log_object();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    activeAssistantServiceTaps = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "willAttachTap: number of assistant taps %li", &v16, 0xCu);
  }
}

- (void)audioRecordingManager:(id)manager didDetachTap:(id)tap
{
  tapCopy = tap;
  recordingLogsLock = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock lock];

  recordingLogs = [(SHAudioManager *)self recordingLogs];
  bundleIdentifier = [tapCopy bundleIdentifier];
  v9 = [recordingLogs objectForKey:bundleIdentifier];

  client = [tapCopy client];
  [v9 detachedTapForClient:client];
  recordingLogsLock2 = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock2 unlock];

  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    activeAssistantServiceTaps = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didDetachTap: number of assistant taps %li", &v13, 0xCu);
  }
}

- (void)audioRecordingManagerWillStartRecording:(id)recording
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    activeAssistantServiceTaps = [(SHAudioManager *)self activeAssistantServiceTaps];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "audioRecordingManagerWillStartRecording - number of assistant taps %li", &v7, 0xCu);
  }

  audioSessionManager = [(SHAudioManager *)self audioSessionManager];
  if ([(SHAudioManager *)self activeAssistantServiceTaps]< 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [audioSessionManager activateAudioSessionForClient:v6];
}

- (void)audioRecordingManagerDidStopRecording:(id)recording
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "audioRecordingManagerDidStopRecording", v8, 2u);
  }

  audioSessionManager = [(SHAudioManager *)self audioSessionManager];
  isAudioSessionInterrupted = [audioSessionManager isAudioSessionInterrupted];

  if ((isAudioSessionInterrupted & 1) == 0)
  {
    audioSessionManager2 = [(SHAudioManager *)self audioSessionManager];
    [audioSessionManager2 deactivateAudioSession];
  }
}

- (void)resetRecordingLog
{
  recordingLogsLock = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock lock];

  v4 = +[NSMutableDictionary dictionary];
  recordingLogs = self->_recordingLogs;
  self->_recordingLogs = v4;

  recordingLogsLock2 = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock2 unlock];
}

- (int64_t)activeAssistantServiceTaps
{
  recordingLogsLock = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock lock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  recordingLogs = [(SHAudioManager *)self recordingLogs];
  allValues = [recordingLogs allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 += [*(*(&v13 + 1) + 8 * i) assistantTapCount];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  recordingLogsLock2 = [(SHAudioManager *)self recordingLogsLock];
  [recordingLogsLock2 unlock];

  return v8;
}

@end