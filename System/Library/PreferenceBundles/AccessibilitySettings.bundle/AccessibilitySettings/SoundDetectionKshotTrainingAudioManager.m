@interface SoundDetectionKshotTrainingAudioManager
- (SoundDetectionKshotTrainingAudioManager)initWithTargetDetector:(id)a3;
- (SoundDetectionKshotTrainingAudioManagerDelegate)delegate;
- (id)_audioUIClient;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6;
- (int64_t)_stateForTargetDetector;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)dealloc;
- (void)setState:(int64_t)a3;
- (void)startListening;
- (void)stopListeningAndTrainIfPossible:(BOOL)a3;
- (void)updateState;
@end

@implementation SoundDetectionKshotTrainingAudioManager

- (SoundDetectionKshotTrainingAudioManager)initWithTargetDetector:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SoundDetectionKshotTrainingAudioManager;
  v5 = [(SoundDetectionKshotTrainingAudioManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SoundDetectionKshotTrainingAudioManager *)v5 setTargetDetector:v4];
    [(SoundDetectionKshotTrainingAudioManager *)v6 setState:6];
  }

  return v6;
}

- (void)dealloc
{
  [(AXUIClient *)self->_audioUIClient setDelegate:0];
  v3.receiver = self;
  v3.super_class = SoundDetectionKshotTrainingAudioManager;
  [(SoundDetectionKshotTrainingAudioManager *)&v3 dealloc];
}

- (void)setState:(int64_t)a3
{
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v8 = 134218240;
    v9 = state;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating State from: %ld to: %ld", &v8, 0x16u);
  }

  self->_state = a3;
  v7 = [(SoundDetectionKshotTrainingAudioManager *)self delegate];
  [v7 stateDidUpdate:a3];
}

- (void)startListening
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Start listening for Kshot Training", buf, 2u);
  }

  [(SoundDetectionKshotTrainingAudioManager *)self setState:[(SoundDetectionKshotTrainingAudioManager *)self _stateForTargetDetector]];
  v4 = +[AXSDKShotController sharedInstance];
  v5 = [(SoundDetectionKshotTrainingAudioManager *)self targetDetector];
  [v4 startListeningToTrainDetector:v5];

  v6 = +[AXSDKShotController sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__SoundDetectionKshotTrainingAudioManager_startListening__block_invoke;
  v7[3] = &unk_255DE8;
  v7[4] = self;
  [v6 registerListener:self forRecordingUpdates:v7];
}

id __57__SoundDetectionKshotTrainingAudioManager_startListening__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateForTargetDetector];
  v3 = *(a1 + 32);

  return [v3 setState:v2];
}

- (void)stopListeningAndTrainIfPossible:(BOOL)a3
{
  v3 = a3;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Stop listening for Kshot Training", v17, 2u);
  }

  [(SoundDetectionKshotTrainingAudioManager *)self setState:6];
  v6 = +[AXSDKShotController sharedInstance];
  [v6 stopListening];

  v7 = +[AXSDKShotController sharedInstance];
  [v7 deregisterListener:self];

  if (v3)
  {
    v8 = [(SoundDetectionKshotTrainingAudioManager *)self targetDetector];
    v9 = [v8 recordings];
    if ([v9 count] <= 4)
    {
    }

    else
    {
      v10 = [(SoundDetectionKshotTrainingAudioManager *)self targetDetector];
      v11 = [v10 identifier];

      if (v11)
      {
        v12 = [(SoundDetectionKshotTrainingAudioManager *)self _audioUIClient];
        v18 = SoundDetectionModelCreationIdentifierKey;
        v13 = [(SoundDetectionKshotTrainingAudioManager *)self targetDetector];
        v14 = [v13 identifier];
        v19 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v16 = +[AXAccessQueue mainAccessQueue];
        [v12 sendAsynchronousMessage:v15 withIdentifier:10003 targetAccessQueue:v16 completion:0];

LABEL_10:
        return;
      }
    }

    v12 = AXLogUltronKShot();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SoundDetectionKshotTrainingAudioManager *)self stopListeningAndTrainIfPossible:v12];
    }

    goto LABEL_10;
  }
}

- (int64_t)_stateForTargetDetector
{
  v2 = [(SoundDetectionKshotTrainingAudioManager *)self targetDetector];
  v3 = [v2 recordings];
  v4 = [v3 count];

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

- (void)updateState
{
  v3 = [(SoundDetectionKshotTrainingAudioManager *)self _stateForTargetDetector];

  [(SoundDetectionKshotTrainingAudioManager *)self setState:v3];
}

- (id)_audioUIClient
{
  audioUIClient = self->_audioUIClient;
  if (!audioUIClient)
  {
    v4 = [[AXUIClient alloc] initWithIdentifier:@"SDSDAudioUIClient" serviceBundleName:@"AXUltronPluginService"];
    v5 = self->_audioUIClient;
    self->_audioUIClient = v4;

    [(AXUIClient *)self->_audioUIClient setDelegate:self];
    audioUIClient = self->_audioUIClient;
  }

  return audioUIClient;
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6
{
  v7 = a4;
  v8 = AXLogUltronKShot();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = a5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Custom Detector Onboarding - Received IPC Message %lu\nDict:%@", &v10, 0x16u);
  }

  return 0;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __101__SoundDetectionKshotTrainingAudioManager_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __101__SoundDetectionKshotTrainingAudioManager_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (SoundDetectionKshotTrainingAudioManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopListeningAndTrainIfPossible:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = [a1 targetDetector];
  v5 = [a1 targetDetector];
  v6 = [v5 recordings];
  v7 = 138412546;
  v8 = v4;
  v9 = 2048;
  v10 = [v6 count];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to kick off training of detector: %@ with %lu recordings", &v7, 0x16u);
}

@end