@interface ADOpportuneSpeakingModuleEdgeDetector
- (ADOpportuneSpeakingModuleEdgeDetector)initWithQueue:(id)a3 stateManager:(id)a4;
- (id)modeDescriptionFor:(unint64_t)a3;
- (unsigned)_framesPerSecondForOpportuneSpeakListeningType:(unint64_t)a3;
- (void)_handleFrame:(unint64_t)a3;
- (void)_initializeVoiceThresholdsForOpportuneSpeakListeningType:(unint64_t)a3;
- (void)_resetStateWithCompletion:(id)a3;
- (void)_restartAndExtendListening;
- (void)_scheduleTimerForMaxDelay:(float)a3;
- (void)_stopListeningWithCompletion:(id)a3;
- (void)_thresholdDetected;
- (void)dealloc;
- (void)listenForPauseWithOptions:(id)a3 forPause:(float)a4 maxDelay:(float)a5 stopOnDetection:(BOOL)a6 executeOnSuccess:(id)a7 onFail:(id)a8;
- (void)listenForUserSpeechWithOptions:(id)a3 forVoice:(float)a4 maxDelay:(float)a5 stopOnDetection:(BOOL)a6 executeOnSuccess:(id)a7 onFail:(id)a8;
- (void)opportuneSpeakListener:(id)a3 didStopUnexpectly:(BOOL)a4;
- (void)opportuneSpeakListener:(id)a3 hasRemoteVADAvailable:(BOOL)a4;
- (void)opportuneSpeakListener:(id)a3 hasVADAvailable:(BOOL)a4 withHostTime:(float)a5;
- (void)stopListening;
- (void)updateAttendingThreshold:(float)a3;
@end

@implementation ADOpportuneSpeakingModuleEdgeDetector

- (void)opportuneSpeakListener:(id)a3 didStopUnexpectly:(BOOL)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E344C;
  v5[3] = &unk_10051CBD8;
  v6 = a4;
  v5[4] = self;
  dispatch_async(dispatchQueue, v5);
}

- (void)opportuneSpeakListener:(id)a3 hasVADAvailable:(BOOL)a4 withHostTime:(float)a5
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E3614;
  v6[3] = &unk_100511188;
  v6[4] = self;
  v8 = a4;
  v7 = a5;
  dispatch_async(dispatchQueue, v6);
}

- (void)opportuneSpeakListener:(id)a3 hasRemoteVADAvailable:(BOOL)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E37B4;
  v5[3] = &unk_10051CBD8;
  v5[4] = self;
  v6 = a4;
  dispatch_async(dispatchQueue, v5);
}

- (id)modeDescriptionFor:(unint64_t)a3
{
  if (a3)
  {
    return @"ADOSMED_PAUSE";
  }

  else
  {
    return @"ADOSMED_SPEECH";
  }
}

- (void)_restartAndExtendListening
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADOpportuneSpeakingModuleEdgeDetector _restartAndExtendListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s OPPSPK - Restarting listener to bypass 90 second recording limit", buf, 0xCu);
  }

  self->_isStopping = 1;
  listener = self->_listener;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E3A1C;
  v5[3] = &unk_10051B580;
  v5[4] = self;
  [(CSOpportuneSpeakListener *)listener stopListenWithStateReset:0 completion:v5];
}

- (void)stopListening
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3E30;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_stopListeningWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_isStopping)
  {
    self->_isStopping = 1;
    [(AFWatchdogTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;

    listener = self->_listener;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E3FB4;
    v7[3] = &unk_100511160;
    v7[4] = self;
    v8 = v4;
    [(CSOpportuneSpeakListener *)listener stopListenWithStateReset:1 completion:v7];
  }
}

- (void)_thresholdDetected
{
  if (self->_dispatchQueue)
  {
    shouldStopListeningOnDetection = self->_shouldStopListeningOnDetection;
    v4 = AFSiriLogContextDaemon;
    v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (shouldStopListeningOnDetection)
    {
      if (v5)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[ADOpportuneSpeakingModuleEdgeDetector _thresholdDetected]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s OPPSPK - stop listening event detected, stopping listener", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v14 = 0x3032000000;
      v15 = sub_1000E446C;
      v16 = sub_1000E4498;
      v17 = objc_retainBlock(self->_successCompletionBlock);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E44A0;
      v12[3] = &unk_100511138;
      v12[4] = self;
      v12[5] = &buf;
      [(ADOpportuneSpeakingModuleEdgeDetector *)self _stopListeningWithCompletion:v12];
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (v5)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[ADOpportuneSpeakingModuleEdgeDetector _thresholdDetected]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s OPPSPK - stop listening event detected, not stopping listener", &buf, 0xCu);
      }

      successCompletionBlock = self->_successCompletionBlock;
      if (successCompletionBlock)
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[ADOpportuneSpeakingModuleEdgeDetector _thresholdDetected]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s OPPSPK - will call completion but not stop listener", &buf, 0xCu);
          successCompletionBlock = self->_successCompletionBlock;
        }

        v8 = successCompletionBlock[2](successCompletionBlock, self->_mostRecentAudioFrameHostTime);
        v9 = AFSiriLogContextDaemon;
        v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
        if (v8)
        {
          if (v10)
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "[ADOpportuneSpeakingModuleEdgeDetector _thresholdDetected]";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s OPPSPK - resetting state and continuing to send threshold events", &buf, 0xCu);
          }

          self->_inVoice = 0;
          *&self->_currentPausedFrameCount = 0;
        }

        else
        {
          if (v10)
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "[ADOpportuneSpeakingModuleEdgeDetector _thresholdDetected]";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s OPPSPK - done sending threshold events", &buf, 0xCu);
          }

          v11 = self->_successCompletionBlock;
          self->_successCompletionBlock = 0;
        }
      }
    }
  }
}

- (void)_handleFrame:(unint64_t)a3
{
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 != 1)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136315138;
      *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Invalid frame type passed to _handleFrame", v29, 0xCu);
    }

    return;
  }

  if (!self->_currentHasAccel)
  {
    currentHasVAD = 0;
  }

  else
  {
LABEL_4:
    currentHasVAD = self->_currentHasVAD;
  }

  v6 = _AFPreferencesOpportuneSpeakingEdgeDetectorSignalOverride();
  if ((AFIsInternalInstall() & (v6 != -1)) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = currentHasVAD;
  }

  [(ADOpportuneSpeakingMovingAverageBuffer *)self->_avbuffer add:v7];
  [(ADOpportuneSpeakingMovingAverageBuffer *)self->_avbuffer movingAverage];
  if (v8 > self->_voiceOnMin)
  {
    ++self->_currentVoiceFrameCount;
    if (!self->_inVoice)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        currentFrameCount = self->_currentFrameCount;
        *v29 = 136315394;
        *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
        *&v29[12] = 1024;
        *&v29[14] = currentFrameCount;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s OPPSPK - VOICE STARTS frame = %d", v29, 0x12u);
      }

      self->_inVoice = 1;
    }

    v11 = 64;
LABEL_23:
    *(&self->super.isa + v11) = 0;
    goto LABEL_24;
  }

  [(ADOpportuneSpeakingMovingAverageBuffer *)self->_avbuffer movingAverage];
  if (v12 < self->_voiceOffMax)
  {
    ++self->_currentPausedFrameCount;
    if (self->_inVoice)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = self->_currentFrameCount;
        *v29 = 136315394;
        *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
        *&v29[12] = 1024;
        *&v29[14] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s OPPSPK - VOICE ENDS frame = %d", v29, 0x12u);
      }

      self->_inVoice = 0;
    }

    v11 = 68;
    goto LABEL_23;
  }

LABEL_24:
  v15 = self->_currentFrameCount + 1;
  self->_currentFrameCount = v15;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    currentPausedFrameCount = self->_currentPausedFrameCount;
    currentVoiceFrameCount = self->_currentVoiceFrameCount;
    currentHasAccel = self->_currentHasAccel;
    v25 = self->_currentHasVAD;
    avbuffer = self->_avbuffer;
    v27 = v16;
    [(ADOpportuneSpeakingMovingAverageBuffer *)avbuffer movingAverage];
    *v29 = 136316674;
    *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
    *&v29[12] = 1024;
    *&v29[14] = v15;
    *&v29[18] = 1024;
    *&v29[20] = currentVoiceFrameCount;
    v30 = 1024;
    v31 = currentPausedFrameCount;
    v32 = 1024;
    v33 = currentHasAccel;
    v34 = 1024;
    v35 = v25;
    v36 = 2048;
    v37 = v28;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s OPPSPK - frame %d/%d/%d wearer=%d ambient=%d moving=%f", v29, 0x34u);
  }

  mode = self->_mode;
  if (!mode)
  {
    if (self->_currentVoiceFrameCount < self->_thresholdFrameCount)
    {
      return;
    }

    v18 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v21 = self->_currentFrameCount;
    *v29 = 136315394;
    *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
    *&v29[12] = 1024;
    *&v29[14] = v21;
    v20 = "%s OPPSPK - SPEECH SEEN frame = %d";
    goto LABEL_34;
  }

  if (mode == 1 && self->_currentPausedFrameCount >= self->_thresholdFrameCount)
  {
    v18 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
LABEL_35:
      [(ADOpportuneSpeakingModuleEdgeDetector *)self _thresholdDetected:*v29];
      return;
    }

    v19 = self->_currentFrameCount;
    *v29 = 136315394;
    *&v29[4] = "[ADOpportuneSpeakingModuleEdgeDetector _handleFrame:]";
    *&v29[12] = 1024;
    *&v29[14] = v19;
    v20 = "%s OPPSPK - PAUSE SEEN frame = %d";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v20, v29, 0x12u);
    goto LABEL_35;
  }
}

- (void)updateAttendingThreshold:(float)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E4950;
  v4[3] = &unk_1005114D0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)listenForUserSpeechWithOptions:(id)a3 forVoice:(float)a4 maxDelay:(float)a5 stopOnDetection:(BOOL)a6 executeOnSuccess:(id)a7 onFail:(id)a8
{
  v10 = a6;
  v15 = a3;
  v16 = a8;
  v17 = a7;
  v18 = -[ADOpportuneSpeakingModuleEdgeDetector _framesPerSecondForOpportuneSpeakListeningType:](self, "_framesPerSecondForOpportuneSpeakListeningType:", [v15 opportuneSpeakListeningType]);
  self->_inVoice = 0;
  *&self->_currentPausedFrameCount = 0;
  self->_currentFrameCount = 0;
  v19 = objc_retainBlock(v17);

  successCompletionBlock = self->_successCompletionBlock;
  self->_successCompletionBlock = v19;

  v21 = objc_retainBlock(v16);
  failCompletionBlock = self->_failCompletionBlock;
  self->_failCompletionBlock = v21;

  self->_thresholdFrameCount = (v18 * a4);
  self->_mode = 0;
  self->_isListening = 1;
  self->_isStopping = 0;
  v23 = [v15 deviceId];
  deviceID = self->_deviceID;
  self->_deviceID = v23;

  self->_maxDelay = a5;
  v25 = [[ADOpportuneSpeakingMovingAverageBuffer alloc] initWithSize:self->_thresholdFrameCount];
  avbuffer = self->_avbuffer;
  self->_avbuffer = v25;

  self->_shouldStopListeningOnDetection = v10;
  objc_storeStrong(&self->_listeningOptions, a3);
  -[ADOpportuneSpeakingModuleEdgeDetector _initializeVoiceThresholdsForOpportuneSpeakListeningType:](self, "_initializeVoiceThresholdsForOpportuneSpeakListeningType:", [v15 opportuneSpeakListeningType]);
  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v29 = @"NO";
    if (v10)
    {
      v29 = @"YES";
    }

    *buf = 136315394;
    v33 = "[ADOpportuneSpeakingModuleEdgeDetector listenForUserSpeechWithOptions:forVoice:maxDelay:stopOnDetection:executeOnSuccess:onFail:]";
    v34 = 2112;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s shouldStopListeningOnDetection:%@", buf, 0x16u);
  }

  *&v28 = a5;
  [(ADOpportuneSpeakingModuleEdgeDetector *)self _scheduleTimerForMaxDelay:v28];
  listener = self->_listener;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000E4D10;
  v31[3] = &unk_10051B580;
  v31[4] = self;
  [(CSOpportuneSpeakListener *)listener startListenWithOption:v15 completion:v31];
}

- (void)listenForPauseWithOptions:(id)a3 forPause:(float)a4 maxDelay:(float)a5 stopOnDetection:(BOOL)a6 executeOnSuccess:(id)a7 onFail:(id)a8
{
  v10 = a6;
  v15 = a3;
  v16 = a8;
  v17 = a7;
  LODWORD(a8) = -[ADOpportuneSpeakingModuleEdgeDetector _framesPerSecondForOpportuneSpeakListeningType:](self, "_framesPerSecondForOpportuneSpeakListeningType:", [v15 opportuneSpeakListeningType]);
  self->_inVoice = 0;
  *&self->_currentPausedFrameCount = 0;
  self->_currentFrameCount = 0;
  v18 = objc_retainBlock(v17);

  successCompletionBlock = self->_successCompletionBlock;
  self->_successCompletionBlock = v18;

  v20 = objc_retainBlock(v16);
  failCompletionBlock = self->_failCompletionBlock;
  self->_failCompletionBlock = v20;

  self->_thresholdFrameCount = (a8 * a4);
  self->_mode = 1;
  self->_isListening = 1;
  self->_isStopping = 0;
  v22 = [v15 deviceId];
  deviceID = self->_deviceID;
  self->_deviceID = v22;

  self->_maxDelay = a5;
  v24 = [[ADOpportuneSpeakingMovingAverageBuffer alloc] initWithSize:vcvtd_n_f64_u32(a8, 1uLL)];
  avbuffer = self->_avbuffer;
  self->_avbuffer = v24;

  self->_shouldStopListeningOnDetection = v10;
  objc_storeStrong(&self->_listeningOptions, a3);
  -[ADOpportuneSpeakingModuleEdgeDetector _initializeVoiceThresholdsForOpportuneSpeakListeningType:](self, "_initializeVoiceThresholdsForOpportuneSpeakListeningType:", [v15 opportuneSpeakListeningType]);
  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v28 = @"NO";
    if (v10)
    {
      v28 = @"YES";
    }

    *buf = 136315394;
    v32 = "[ADOpportuneSpeakingModuleEdgeDetector listenForPauseWithOptions:forPause:maxDelay:stopOnDetection:executeOnSuccess:onFail:]";
    v33 = 2112;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s shouldStopListeningOnDetection:%@", buf, 0x16u);
  }

  *&v27 = a5;
  [(ADOpportuneSpeakingModuleEdgeDetector *)self _scheduleTimerForMaxDelay:v27];
  listener = self->_listener;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000E510C;
  v30[3] = &unk_10051B580;
  v30[4] = self;
  [(CSOpportuneSpeakListener *)listener startListenWithOption:v15 completion:v30];
}

- (void)_scheduleTimerForMaxDelay:(float)a3
{
  v5 = [AFWatchdogTimer alloc];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E534C;
  v9[3] = &unk_10051DFE8;
  v9[4] = self;
  v7 = [v5 initWithTimeoutInterval:dispatchQueue onQueue:v9 timeoutHandler:a3];
  timer = self->_timer;
  self->_timer = v7;

  [(AFWatchdogTimer *)self->_timer start];
}

- (void)_resetStateWithCompletion:(id)a3
{
  v7 = a3;
  [(ADOpportuneSpeakingModuleEdgeDetector *)self _didStopListening];
  self->_isListening = 0;
  failCompletionBlock = self->_failCompletionBlock;
  self->_failCompletionBlock = 0;

  successCompletionBlock = self->_successCompletionBlock;
  self->_successCompletionBlock = 0;

  v6 = v7;
  self->_inVoice = 0;
  *&self->_currentPausedFrameCount = 0;
  self->_currentFrameCount = 0;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)_initializeVoiceThresholdsForOpportuneSpeakListeningType:(unint64_t)a3
{
  if (a3 == 1)
  {
    _AFPreferencesAnnounceCallsVoiceOnMinRatio();
    self->_voiceOnMin = v7;
    _AFPreferencesAnnounceCallsVoiceOffMaxRatio();
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    _AFPreferencesAnnounceNotificationsVoiceOnMinRatio();
    self->_voiceOnMin = v5;
    _AFPreferencesAnnounceNotificationsVoiceOffMaxRatio();
  }

  self->_voiceOffMax = v6;
LABEL_6:
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    voiceOnMin = self->_voiceOnMin;
    voiceOffMax = self->_voiceOffMax;
    v11 = 136315906;
    v12 = "[ADOpportuneSpeakingModuleEdgeDetector _initializeVoiceThresholdsForOpportuneSpeakListeningType:]";
    v13 = 2048;
    v14 = voiceOnMin;
    v15 = 2048;
    v16 = voiceOffMax;
    v17 = 2048;
    v18 = a3;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Using voiceOnMin: %f, voiceOffMax: %f for listening type: %lu", &v11, 0x2Au);
  }
}

- (unsigned)_framesPerSecondForOpportuneSpeakListeningType:(unint64_t)a3
{
  if (!a3)
  {
    return 50;
  }

  if (a3 == 1)
  {
    return 100;
  }

  v4 = AFSiriLogContextDaemon;
  result = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = 136315138;
    v6 = "[ADOpportuneSpeakingModuleEdgeDetector _framesPerSecondForOpportuneSpeakListeningType:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Invalid listeningType passed to _framesPerSecondForOpportuneSpeakListeningType", &v5, 0xCu);
    return 0;
  }

  return result;
}

- (void)dealloc
{
  [(ADOpportuneSpeakingModuleEdgeDetector *)self _resetStateWithCompletion:0];
  v3.receiver = self;
  v3.super_class = ADOpportuneSpeakingModuleEdgeDetector;
  [(ADOpportuneSpeakingModuleEdgeDetector *)&v3 dealloc];
}

- (ADOpportuneSpeakingModuleEdgeDetector)initWithQueue:(id)a3 stateManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = ADOpportuneSpeakingModuleEdgeDetector;
  v9 = [(ADOpportuneSpeakingModuleEdgeDetector *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSUUID);
    uuid = v9->_uuid;
    v9->_uuid = v10;

    *&v9->_currentHasAccel = 0;
    v9->_inVoice = 0;
    *&v9->_currentPausedFrameCount = 0;
    v9->_currentFrameCount = 0;
    successCompletionBlock = v9->_successCompletionBlock;
    v9->_successCompletionBlock = 0;

    failCompletionBlock = v9->_failCompletionBlock;
    v9->_failCompletionBlock = 0;

    v9->_isListening = 0;
    v9->_isStopping = 0;
    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeStrong(&v9->_stateManager, a4);
    v14 = objc_alloc_init(CSOpportuneSpeakListener);
    listener = v9->_listener;
    v9->_listener = v14;

    [(CSOpportuneSpeakListener *)v9->_listener setDelegate:v9];
    listeningOptions = v9->_listeningOptions;
    v9->_listeningOptions = 0;

    v9->_shouldStopListeningOnDetection = 1;
    v17 = v9;
  }

  return v9;
}

@end