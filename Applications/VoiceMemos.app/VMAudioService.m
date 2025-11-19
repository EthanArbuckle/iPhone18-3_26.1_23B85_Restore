@interface VMAudioService
+ (NSDictionary)compressedAudioSettings;
+ (NSDictionary)losslessAudioSettings;
+ (VMAudioService)sharedInstance;
+ (void)playStartRecordingSoundEffect:(id)a3;
- (BOOL)__activateAudioSessionOnQueue:(id)a3 recording:(BOOL)a4 overdubbing:(BOOL)a5 captureSpatial:(BOOL)a6 error:(id *)a7;
- (BOOL)__refreshRecording:(id)a3 composition:(id)a4 controller:(id)a5;
- (BOOL)_disableStereo:(id *)a3;
- (BOOL)_editRecording:(id)a3 editBlock:(id)a4 controller:(id)a5 error:(id *)a6;
- (BOOL)_enableStereo:(id *)a3;
- (BOOL)_mergeRecording:(id)a3 atTime:(double)a4 controller:(id)a5 shouldCaptureSpatial:(BOOL)a6 error:(id *)a7;
- (BOOL)_popFileVersion:(id)a3 error:(id *)a4;
- (BOOL)_startRecordingWithController:(id)a3 shouldCaptureSpatial:(BOOL)a4 error:(id *)a5;
- (BOOL)_updateStereoOrientationWithOverdubbing:(BOOL)a3 error:(id *)a4;
- (BOOL)_userPreferenceIsSpatialCapture;
- (BOOL)_userPrefersStereo;
- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)a3;
- (BOOL)attemptSingleFragmentFinalization:(id)a3 recording:(id)a4 controller:(id)a5;
- (BOOL)cutRecording:(id)a3 timeRange:(id)a4 controller:(id)a5 error:(id *)a6;
- (BOOL)forceCloseActiveRecordingAssetWriter:(id *)a3;
- (BOOL)isRecording;
- (BOOL)isRecordingEnabled:(id *)a3;
- (BOOL)pausePlaying:(id)a3;
- (BOOL)refreshRecording:(id)a3 controller:(id)a4;
- (BOOL)sampleRecordingTime:(double *)a3;
- (BOOL)setSilenceRemoverEnabled:(BOOL)a3 controller:(id)a4;
- (BOOL)setSpeechIsolatorEnabled:(BOOL)a3 controller:(id)a4;
- (BOOL)setSpeechIsolatorValue:(float)a3 controller:(id)a4;
- (BOOL)setTargetRate:(float)a3 controller:(id)a4;
- (BOOL)setTime:(double)a3 controller:(id)a4;
- (BOOL)shouldWaitForAccessTokenBeforeStartingRecording:(id)a3;
- (BOOL)stopPlaying:(id)a3;
- (BOOL)stopRecording:(id)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)stopRecording:(id)a3 error:(id *)a4;
- (BOOL)stopRecordingWithController:(id)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)stopRecordingWithController:(id)a3 error:(id *)a4;
- (BOOL)trimRecording:(id)a3 timeRange:(id)a4 controller:(id)a5 error:(id *)a6;
- (VMAudioRecorder)activeAudioRecorder;
- (VMAudioService)init;
- (double)recordingDuration;
- (id)_assetForRecording:(id)a3 error:(id *)a4;
- (id)_closestAllowedSampleRate:(double)a3 allowedSampleRates:(id)a4;
- (id)_createAndConfigurePlayer;
- (id)_dataSourceSupportingStereo;
- (id)_duplicateRecordingWithID:(id)a3;
- (id)_fetchRecording:(id)a3 recordingController:(id)a4;
- (id)_finalizeRecording:(id)a3 controller:(id)a4 finalizationStrategy:(int)a5;
- (id)_newRecordingEngine:(id)a3 metadata:(id)a4 controller:(id)a5 shouldCaptureSpatial:(BOOL)a6 error:(id *)a7;
- (id)_saveAsNew:(id)a3 withAssetBackup:(id)a4 editedComposition:(id)a5 replacingOriginal:(BOOL)a6 error:(id *)a7;
- (id)fetchRecording:(id)a3;
- (id)finalizeRecording:(id)a3 controller:(id)a4 saveAsNew:(BOOL)a5;
- (id)newRecorderWithTitleBase:(id)a3;
- (id)playerForRecordingID:(id)a3;
- (id)recorderForRecordingID:(id)a3;
- (void)__eraseSecondLayerInComposition:(id)a3 outputFragment:(id)a4 completionBlock:(id)a5;
- (void)_activateAudioSessionForRecording:(BOOL)a3 overdubbing:(BOOL)a4 completion:(id)a5;
- (void)_activateAudioSessionForRecordingWithController:(id)a3 completion:(id)a4;
- (void)_beginStartRecordingSignpost;
- (void)_cancelFileTranscription;
- (void)_configureAudioSession:(id)a3 preferDecoupledIO:(BOOL)a4 isRecording:(BOOL)a5;
- (void)_configureAudioSessionForBTSmartRoutingConsideration:(id)a3 isRecording:(BOOL)a4;
- (void)_configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:(id)a3 isRecording:(BOOL)a4;
- (void)_configureAudioSessionStereoInput:(id)a3 isRecording:(BOOL)a4 isOverdubbing:(BOOL)a5;
- (void)_configureAudioSettings;
- (void)_configureAudioSettingsIfNeeded;
- (void)_createCloudRecordingForRecordingWithController:(id)a3 duration:(double)a4 recordingURL:(id)a5;
- (void)_deactivateAudioSessionAsync:(BOOL)a3;
- (void)_endStartRecordingSignPost;
- (void)_handleAudioSessionNotification:(id)a3;
- (void)_handleSecondaryQueueAudioSessionNotification:(id)a3;
- (void)_interruptRecording;
- (void)_mixDownEditedRecording:(id)a3 completion:(id)a4;
- (void)_observeUserDefaultsForAudioSettingsChanges;
- (void)_playStartRecordingSoundEffectThenStartRecording:(id)a3 controller:(id)a4;
- (void)_registerAudioSessionNotificationsIfNeeded;
- (void)_restoreOriginalRecording:(id)a3 andComposition:(id)a4 forFailedRecording:(id)a5;
- (void)_schedulePlayback:(id)a3;
- (void)_shutdownPlaybackEngine;
- (void)_startPlaybackAtRate:(float)a3 immediately:(BOOL)a4;
- (void)_updateNewVMAudioPlayer:(id)a3 withPropertiesForRecordingID:(id)a4;
- (void)_updateRecordingWithUniqueID:(id)a3 updateBlock:(id)a4;
- (void)isPlayingDidChange:(BOOL)a3;
- (void)prepareService;
- (void)replaceRecording:(id)a3 atTime:(double)a4 controller:(id)a5;
- (void)startPlaying:(id)a3;
- (void)startRecordingWithController:(id)a3;
- (void)vmPlayerError:(id)a3;
@end

@implementation VMAudioService

+ (VMAudioService)sharedInstance
{
  if (qword_1002D70D0 != -1)
  {
    sub_100013FF4();
  }

  v3 = qword_1002D70D8;

  return v3;
}

- (VMAudioService)init
{
  v22.receiver = self;
  v22.super_class = VMAudioService;
  v2 = [(VMAudioService *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_mode = 0;
    v4 = +[RCApplicationModel sharedApplicationModel];
    recordings = v3->_recordings;
    v3->_recordings = v4;

    v6 = dispatch_queue_create("com.apple.VoiceMemos.CallCenterQueue", 0);
    callCenterQueue = v3->_callCenterQueue;
    v3->_callCenterQueue = v6;

    v8 = v3->_callCenterQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014310;
    block[3] = &unk_10028A3B8;
    v9 = v3;
    v21 = v9;
    dispatch_async(v8, block);
    v10 = [(VMAudioService *)v9 _createAndConfigurePlayer];
    player = v9->_player;
    v9->_player = v10;

    v12 = objc_opt_new();
    regulatoryLogger = v9->_regulatoryLogger;
    v9->_regulatoryLogger = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.apple.VoiceMemos.AudioServiceQueue", v14);
    audioSessionQueue = v9->_audioSessionQueue;
    v9->_audioSessionQueue = v15;

    [(VMAudioService *)v9 _observeUserDefaultsForAudioSettingsChanges];
    v17 = objc_alloc_init(_TtC10VoiceMemos25StereoOrientationProvider);
    stereoOrientationProvider = v9->_stereoOrientationProvider;
    v9->_stereoOrientationProvider = v17;
  }

  return v3;
}

- (id)_createAndConfigurePlayer
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];

  return v3;
}

- (void)_observeUserDefaultsForAudioSettingsChanges
{
  v3 = +[NSUserDefaults sharedSettingsUserDefaults];
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v4 = RCObserveChangesToKeyPaths();
  userDefaultsAudioSettingsObservance = self->_userDefaultsAudioSettingsObservance;
  self->_userDefaultsAudioSettingsObservance = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)prepareService
{
  audioSessionQueue = self->_audioSessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017118;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(audioSessionQueue, block);
}

- (void)_configureAudioSettingsIfNeeded
{
  if (!self->_audioSettings)
  {
    [(VMAudioService *)self _configureAudioSettings];
  }
}

- (void)_configureAudioSettings
{
  v3 = +[NSUserDefaults sharedSettingsUserDefaults];
  if (-[VMAudioService _userPreferenceIsSpatialCapture](self, "_userPreferenceIsSpatialCapture") || ![v3 rc_audioQuality])
  {
    v4 = +[VMAudioService compressedAudioSettings];
  }

  else
  {
    v4 = +[VMAudioService losslessAudioSettings];
  }

  audioSettings = self->_audioSettings;
  self->_audioSettings = v4;

  if (RCOverdubRecordingIsEnabled())
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[VMAudioService _configureAudioSettings]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s -- This device supports overdub recording.", buf, 0xCu);
    }
  }

  v7 = [(NSDictionary *)self->_audioSettings objectForKeyedSubscript:AVFormatIDKey];
  v8 = [v7 intValue];

  *buf = v8;
  if (v8 == 1633772320)
  {
    outPropertyDataSize = 0;
    if (!AudioFormatGetPropertyInfo(0x61657372u, 4u, buf, &outPropertyDataSize))
    {
      v9 = outPropertyDataSize;
      v10 = outPropertyDataSize >> 4;
      v11 = (&v17 - 2 * (outPropertyDataSize >> 4));
      if (!AudioFormatGetProperty(0x61657372u, 4u, buf, &outPropertyDataSize, v11))
      {
        v12 = [[NSMutableArray alloc] initWithCapacity:v9 >> 4];
        if (v9 >= 0x10)
        {
          do
          {
            v13 = *v11;
            v11 += 2;
            v14 = [NSNumber numberWithDouble:v13];
            [(NSArray *)v12 addObject:v14];

            --v10;
          }

          while (v10);
        }

        allowedSampleRates = self->_allowedSampleRates;
        self->_allowedSampleRates = v12;
      }
    }
  }

  else
  {
    v16 = self->_allowedSampleRates;
    self->_allowedSampleRates = 0;
  }
}

- (BOOL)isRecording
{
  if ([(VMAudioService *)self mode]!= 2)
  {
    return 0;
  }

  recordingEngine = self->_recordingEngine;

  return [(VMRecorder *)recordingEngine isRunning];
}

+ (NSDictionary)compressedAudioSettings
{
  v4[0] = AVFormatIDKey;
  v4[1] = AVEncoderAudioQualityKey;
  v5[0] = &off_10029AAC0;
  v5[1] = &off_10029AAD8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)_registerAudioSessionNotificationsIfNeeded
{
  if (!self->_audioSessionNotificationsAreRegistered)
  {
    self->_audioSessionNotificationsAreRegistered = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    v4 = +[AVAudioSession sharedInstance];
    [v5 addObserver:self selector:"_handleAudioSessionNotification:" name:AVAudioSessionInterruptionNotification object:v4];
    [v5 addObserver:self selector:"_handleAudioSessionNotification:" name:AVAudioSessionMediaServicesWereLostNotification object:v4];
    [v5 addObserver:self selector:"_handleAudioSessionNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:v4];
    [v5 addObserver:self selector:"_handleAudioSessionNotification:" name:AVAudioSessionSilenceSecondaryAudioHintNotification object:v4];
    [v5 addObserver:self selector:"_handleSecondaryQueueAudioSessionNotification:" name:AVAudioSessionRouteChangeNotification object:v4];
  }
}

+ (NSDictionary)losslessAudioSettings
{
  v4[0] = AVFormatIDKey;
  v4[1] = AVEncoderBitDepthHintKey;
  v5[0] = &off_10029AA90;
  v5[1] = &off_10029AAA8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)vmPlayerError:(id)a3
{
  v4 = a3;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001B9360();
  }

  v6 = [(VMPlayer *)self->_player currentItem];
  v7 = [v6 controller];
  v8 = v7;
  if (v7)
  {
    [v7 setPlaybackError:v4];
    [(VMAudioService *)self stopPlaying:v8];
  }
}

- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  audioSessionQueue = self->_audioSessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084AB4;
  block[3] = &unk_10028B8B8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(audioSessionQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)isPlayingDidChange:(BOOL)a3
{
  v3 = a3;
  v7 = [(VMPlayer *)self->_player currentItem];
  v4 = [v7 controller];
  v5 = v4;
  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  [v4 setCurrentState:v6];
}

- (BOOL)_userPreferenceIsSpatialCapture
{
  if (!RCSpatialAudioCaptureAvailable())
  {
    return 0;
  }

  v2 = +[NSUserDefaults sharedSettingsUserDefaults];
  v3 = [v2 rc_channelConfiguration] == 2;

  return v3;
}

- (void)_activateAudioSessionForRecordingWithController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(VMAudioService *)self _beginStartRecordingSignpost];
  [(VMAudioService *)self _shutdownPlaybackEngine];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100084F78;
  v30[4] = sub_100084F88;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v9 = [v6 overdubbing];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100084F90;
  v21[3] = &unk_10028B8E0;
  v23 = v28;
  v24 = v30;
  v25 = v26;
  v10 = v8;
  v22 = v10;
  [(VMAudioService *)self _activateAudioSessionForRecording:1 overdubbing:v9 completion:v21];
  dispatch_group_enter(v10);
  v11 = +[RCRecordingTranscriptionService sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100085018;
  v19[3] = &unk_10028A3B8;
  v12 = v10;
  v20 = v12;
  [v11 cancelFileTranscriptionWithCompletionHandler:v19];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085020;
  block[3] = &unk_10028B908;
  v15 = v7;
  v16 = v28;
  v17 = v26;
  v18 = v30;
  v13 = v7;
  dispatch_group_notify(v12, &_dispatch_main_q, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)_activateAudioSessionForRecording:(BOOL)a3 overdubbing:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  audioSessionQueue = self->_audioSessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085100;
  block[3] = &unk_10028B998;
  v13 = a3;
  v14 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(audioSessionQueue, block);
}

- (BOOL)__activateAudioSessionOnQueue:(id)a3 recording:(BOOL)a4 overdubbing:(BOOL)a5 captureSpatial:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  [(VMAudioService *)self _registerAudioSessionNotificationsIfNeeded];
  if (v10 && v8)
  {
    v13 = [v12 currentRoute];
    v14 = [v13 outputs];
    [v14 na_any:&stru_10028B9B8];
  }

  v26 = 0u;
  v27 = 0u;
  RCGetAudioConfiguration();
  v15 = [v12 category];
  if (v15)
  {
    goto LABEL_10;
  }

  v16 = [v12 mode];
  if (v16 != *(&v26 + 1) || [v12 routeSharingPolicy] != *(&v27 + 1))
  {

LABEL_10:
LABEL_11:
    if (self->_isAudioSessionActive)
    {
      self->_isAudioSessionActive = 0;
      [v12 setActive:0 error:0];
    }

    v18 = v26;
    v23 = v18;
    v19 = *(&v26 + 1);
    v24 = v19;
    v25 = v27;
    if (v12)
    {
      if ([v12 rc_configureSession:&v23 error:a7])
      {
        [(VMAudioService *)self _configureAudioSession:v12 preferDecoupledIO:*(&v26 + 1) == AVAudioSessionModeSpatialCapture isRecording:v10, v23, v24, v25];
        [(VMAudioService *)self _configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:v12 isRecording:v10];
        [(VMAudioService *)self _configureAudioSessionForBTSmartRoutingConsideration:v12 isRecording:v10];
        [(VMAudioService *)self _configureAudioSessionStereoInput:v12 isRecording:v10 isOverdubbing:v9];
        goto LABEL_16;
      }
    }

    else
    {
      v21 = v19;
    }

    v20 = 0;
    goto LABEL_21;
  }

  v17 = [v12 categoryOptions];

  if (v17 != v27)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (self->_isAudioSessionActive)
  {
    v20 = 1;
  }

  else
  {
    v20 = [v12 setActive:1 withOptions:0 error:a7];
    self->_isAudioSessionActive = v20;
  }

LABEL_21:

  return v20;
}

- (void)_configureAudioSession:(id)a3 preferDecoupledIO:(BOOL)a4 isRecording:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (RCSpatialAudioCaptureAvailable() && v5)
  {
    v11 = 0;
    v8 = [v7 preferDecoupledIO:v6 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001B93D4();
      }
    }
  }
}

- (void)_configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:(id)a3 isRecording:(BOOL)a4
{
  v7 = 0;
  v4 = [a3 setPrefersNoInterruptionsFromSystemAlerts:a4 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B9448();
    }
  }
}

- (void)_configureAudioSessionForBTSmartRoutingConsideration:(id)a3 isRecording:(BOOL)a4
{
  v7 = 0;
  v4 = [a3 setEligibleForBTSmartRoutingConsideration:!a4 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B94BC();
    }
  }
}

- (void)_configureAudioSessionStereoInput:(id)a3 isRecording:(BOOL)a4 isOverdubbing:(BOOL)a5
{
  if (a4)
  {
    v8 = 0;
    v5 = [(VMAudioService *)self _updateStereoOrientationWithOverdubbing:a5 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9530();
      }
    }
  }
}

- (BOOL)_userPrefersStereo
{
  v2 = +[NSUserDefaults sharedSettingsUserDefaults];
  if (RCSpatialAudioCaptureAvailable())
  {
    v3 = [v2 rc_channelConfiguration] == 1;
  }

  else
  {
    v3 = [v2 rc_useStereoRecording];
  }

  return v3;
}

- (BOOL)_updateStereoOrientationWithOverdubbing:(BOOL)a3 error:(id *)a4
{
  if (!RCStereoRecordingIsAvailable())
  {
    return 1;
  }

  if (a3 || ![(VMAudioService *)self _userPrefersStereo])
  {

    return [(VMAudioService *)self _disableStereo:a4];
  }

  else
  {

    return [(VMAudioService *)self _enableStereo:a4];
  }
}

- (id)_dataSourceSupportingStereo
{
  v3 = +[AVAudioSession sharedInstance];
  v4 = [v3 availableInputs];
  v5 = [v4 na_firstObjectPassingTest:&stru_10028B9D8];

  v6 = [v5 dataSources];
  v7 = [v6 na_filter:&stru_10028BA18];

  [(RCStereoOrientationProvider *)self->_stereoOrientationProvider preferredDataSourceOrientation];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100085B0C;
  v15 = v14[3] = &unk_10028BA40;
  v8 = v15;
  v9 = [v7 na_firstObjectPassingTest:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 firstObject];
  }

  v12 = v11;

  return v12;
}

- (BOOL)_disableStereo:(id *)a3
{
  v4 = [(VMAudioService *)self _dataSourceSupportingStereo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 setPreferredPolarPattern:0 error:a3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_enableStereo:(id *)a3
{
  v5 = [(VMAudioService *)self _dataSourceSupportingStereo];
  if (!v5)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v8 = RCVoiceMemosErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Built in mic does not support stereo";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a3 = [NSError errorWithDomain:v8 code:1 userInfo:v9];

LABEL_6:
    LOBYTE(a3) = 0;
    goto LABEL_7;
  }

  v6 = [(RCStereoOrientationProvider *)self->_stereoOrientationProvider preferredInputOrientationFor:v5];
  if (![v5 setPreferredPolarPattern:AVAudioSessionPolarPatternStereo error:a3])
  {
    goto LABEL_6;
  }

  v7 = +[AVAudioSession sharedInstance];
  LOBYTE(a3) = [v7 setPreferredInputOrientation:v6 error:a3];

LABEL_7:
  return a3;
}

- (void)_deactivateAudioSessionAsync:(BOOL)a3
{
  v3 = a3;
  v5 = [(VMPlayer *)self->_player currentItem];
  v6 = [v5 controller];
  v7 = v6;
  if (v6 && [v6 currentState] == 3)
  {
    [(VMAudioService *)self pausePlaying:v7];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100085DE0;
  v10[3] = &unk_10028A3B8;
  v10[4] = self;
  v8 = objc_retainBlock(v10);
  audioSessionQueue = self->_audioSessionQueue;
  if (v3)
  {
    dispatch_async(audioSessionQueue, v8);
  }

  else
  {
    dispatch_sync(audioSessionQueue, v8);
  }
}

- (void)_handleSecondaryQueueAudioSessionNotification:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085EE8;
  v4[3] = &unk_10028A650;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_handleAudioSessionNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 userInfo];
  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[VMAudioService _handleAudioSessionNotification:]";
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- notification received = %@", &v27, 0x16u);
  }

  if ([v5 isEqualToString:AVAudioSessionRouteChangeNotification])
  {
    v8 = [v4 object];
    v9 = [v6 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    v10 = [v9 integerValue];

    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B95A4(v10, v8, v11);
    }

    if ([(VMAudioService *)self mode]!= 2 || ![(VMRecorder *)self->_recordingEngine isRunning])
    {
      goto LABEL_12;
    }

    if (v10 <= 2)
    {
      v12 = [(VMRecorder *)self->_recordingEngine controller];
      if (v12)
      {
        [(VMAudioService *)self stopRecordingWithController:v12 error:0];
      }

LABEL_12:
      if (v10 != 2 || ![(VMPlayer *)self->_player playing])
      {
        goto LABEL_35;
      }

      v13 = [(VMPlayer *)self->_player currentItem];
      v14 = [v13 controller];
      [(VMAudioService *)self pausePlaying:v14];

      goto LABEL_30;
    }

LABEL_35:

    goto LABEL_36;
  }

  if ([v5 isEqualToString:AVAudioSessionInterruptionNotification])
  {
    v15 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    v16 = [v15 integerValue];

    [(VMAudioService *)self _updateIsAudioSessionActiveForInterruption:v16];
    if (v16 == 1)
    {
      v17 = [(VMPlayer *)self->_player currentItem];
      v8 = v17;
      if (v17)
      {
        v18 = [v17 controller];
        self->_lastInterruptionStoppedPlayer = [v18 targetState] == 3;
      }

      else
      {
        self->_lastInterruptionStoppedPlayer = 0;
      }

      if ([(VMPlayer *)self->_player playing])
      {
        v25 = [(VMPlayer *)self->_player currentItem];
        v26 = [v25 controller];
        [(VMAudioService *)self pausePlaying:v26];
      }

      [(VMAudioService *)self _interruptRecording];
      goto LABEL_35;
    }

    v20 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
    v21 = [v20 integerValue];

    if ((v21 & 1) != 0 && self->_lastInterruptionStoppedPlayer)
    {
      v8 = [(VMPlayer *)self->_player currentItem];
      v13 = [v8 controller];
      [v13 targetRate];
      [(VMAudioService *)self _startPlaybackAtRate:0 immediately:?];
      goto LABEL_30;
    }
  }

  else
  {
    if ([v5 isEqualToString:AVAudioSessionMediaServicesWereLostNotification])
    {
      [(VMAudioService *)self _interruptRecording];
      v19 = [(VMPlayer *)self->_player currentItem];
      v8 = v19;
      if (!v19)
      {
        goto LABEL_35;
      }

      v13 = [v19 controller];
      [(VMAudioService *)self stopPlaying:v13];
LABEL_30:

      goto LABEL_35;
    }

    if ([v5 isEqualToString:AVAudioSessionMediaServicesWereResetNotification])
    {
      [(VMAudioService *)self _deactivateAudioSessionAsync:0];
      player = self->_player;
      if (player)
      {
        v8 = [(VMPlayer *)player currentItem];
        v23 = [(VMAudioService *)self _createAndConfigurePlayer];
        v24 = self->_player;
        self->_player = v23;

        if (!v8 || [(VMAudioService *)self mode]!= 1)
        {
          goto LABEL_35;
        }

        v13 = [v8 controller];
        [v13 setPlayerItem:0];
        [(VMAudioService *)self startPlaying:v13];
        goto LABEL_30;
      }
    }
  }

LABEL_36:
}

- (void)_interruptRecording
{
  if ([(VMAudioService *)self mode]== 2)
  {
    v3 = [(VMRecorder *)self->_recordingEngine controller];
    if (v3)
    {
      v7 = 0;
      v4 = [(VMAudioService *)self stopRecordingWithController:v3 error:&v7];
      v5 = v7;
      if ((v4 & 1) == 0)
      {
        v6 = OSLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9684();
        }
      }
    }
  }
}

- (void)_schedulePlayback:(id)a3
{
  v4 = a3;
  v5 = [v4 playerItem];
  if (v5)
  {
    v6 = self->_player;
    recordingEnhancedObservance = self->_recordingEnhancedObservance;
    if (recordingEnhancedObservance)
    {
      [(RCKeyPathObservance *)recordingEnhancedObservance remove];
      v8 = self->_recordingEnhancedObservance;
      self->_recordingEnhancedObservance = 0;
    }

    recordings = self->_recordings;
    v10 = [v4 recordingID];
    v11 = [(RCApplicationModel *)recordings recordingWithUniqueID:v10];

    if (v11)
    {
      v12 = [NSString stringWithUTF8String:"enhanced"];
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100086608;
      v26 = &unk_10028BA68;
      v27 = v6;
      v28 = v11;
      v13 = RCObserveChangesToKeyPath();
      v14 = self->_recordingEnhancedObservance;
      self->_recordingEnhancedObservance = v13;
    }

    [v4 playableRange];
    [v5 setPlayableRangeEndTime:v15];
    [v4 setCurrentState:2];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100086648;
    v18[3] = &unk_10028BAB8;
    v18[4] = self;
    v19 = v4;
    v20 = v6;
    v21 = v5;
    v22 = v11;
    v16 = v11;
    v17 = v6;
    [(VMPlayer *)v17 prepareItem:v21 withCompletionHandler:v18];
  }
}

- (void)_shutdownPlaybackEngine
{
  player = self->_player;
  if (player)
  {
    v4 = [(VMPlayer *)player currentItem];
    v8 = v4;
    if (v4)
    {
      v5 = [v4 controller];
      [(VMAudioService *)self stopPlaying:v5];

      v4 = v8;
    }

    preparingToPlayController = self->_preparingToPlayController;
    if (preparingToPlayController)
    {
      self->_preparingToPlayController = 0;
      v7 = preparingToPlayController;

      [(VMAudioService *)self stopPlaying:v7];
      v4 = v8;
    }
  }
}

- (id)playerForRecordingID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setRecordingID:v4];
  [v5 setService:self];
  [v5 setTargetState:4];
  [(VMAudioService *)self _updateNewVMAudioPlayer:v5 withPropertiesForRecordingID:v4];

  [(VMAudioService *)self startPlaying:v5];

  return v5;
}

- (void)_updateNewVMAudioPlayer:(id)a3 withPropertiesForRecordingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[RCApplicationModel sharedApplicationModel];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100086B04;
  v11 = v10[3] = &unk_10028B058;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = v11;
  [v9 performBlockAndWait:v10];
}

- (id)newRecorderWithTitleBase:(id)a3
{
  v4 = a3;
  v5 = [[VMAudioRecorderImp alloc] _initWithRecordingID:0 model:self->_recordings];
  [v5 setIsNewRecording:1];
  [v5 setService:self];
  [v5 setTitleBase:v4];

  return v5;
}

- (id)recorderForRecordingID:(id)a3
{
  v4 = a3;
  v5 = [[VMAudioRecorderImp alloc] _initWithRecordingID:v4 model:self->_recordings];

  [v5 setService:self];

  return v5;
}

- (VMAudioRecorder)activeAudioRecorder
{
  v2 = [(VMAudioService *)self recordingController];
  v3 = v2;
  if (v2 && [v2 conformsToProtocol:&OBJC_PROTOCOL___VMAudioRecorder])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_assetForRecording:(id)a3 error:(id *)a4
{
  v5 = [RCComposition compositionLoadedForSavedRecording:a3];
  v6 = [v5 playableAsset:a4];

  return v6;
}

- (BOOL)shouldWaitForAccessTokenBeforeStartingRecording:(id)a3
{
  preparingToPlayController = self->_preparingToPlayController;
  if (preparingToPlayController)
  {
    v4 = a3;
    v5 = [(VMPlaybackController *)preparingToPlayController recordingID];
    v6 = [v4 recordingID];

    LOBYTE(preparingToPlayController) = v5 == v6;
  }

  return preparingToPlayController;
}

- (void)startPlaying:(id)a3
{
  v5 = a3;
  if ([(VMAudioService *)self mode]== 2)
  {
    v24 = @"VMAudioErrorModeKey";
    v6 = [NSNumber numberWithInt:[(VMAudioService *)self mode]];
    v25 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:1 userInfo:v7];

    [v5 setPlaybackError:v8];
  }

  else
  {
    if ([v5 targetState] == 3)
    {
      [v5 targetRate];
      if (v9 > 0.0)
      {
        [(VMAudioService *)self _activateAudioSessionForPlaybackWithCompletion:0];
      }
    }

    v8 = [v5 recordingID];
    v10 = [v5 playerItem];
    if (v10)
    {
      v11 = [v5 currentState];
      if (v11 == 4)
      {
        [v5 targetTime];
        v16 = v15;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100087188;
        v22[3] = &unk_10028B6A0;
        v22[4] = self;
        v23 = v5;
        [v10 seekToTime:v22 completionHandler:v16];
      }

      else if (v11 == 2)
      {
        [v5 targetState];
      }
    }

    else
    {
      v12 = [(RCApplicationModel *)self->_recordings recordingWithUniqueID:v8];
      if (v12)
      {
        if ([v5 currentState] != 1)
        {
          [v5 setCurrentState:1];
          objc_initWeak(&location, v5);
          objc_storeStrong(&self->_preparingToPlayController, a3);
          v13 = +[RCSSavedRecordingService sharedService];
          v14 = [v12 url];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000871CC;
          v18[3] = &unk_10028BAE0;
          objc_copyWeak(&v20, &location);
          v18[4] = self;
          v19 = v12;
          [v13 prepareToPreviewCompositionAVURL:v14 accessRequestHandler:v18];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v17 = OSLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1001B96F8();
        }
      }
    }
  }
}

- (BOOL)pausePlaying:(id)a3
{
  v4 = a3;
  v5 = [v4 playerItem];
  if (v5 && ([(VMPlayer *)self->_player currentItem], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    [(VMPlayer *)self->_player pause];
  }

  else
  {
    [v4 setCurrentState:4];
  }

  return 1;
}

- (BOOL)stopPlaying:(id)a3
{
  v4 = a3;
  v5 = [v4 playerItem];
  if (v5)
  {
    [v4 setTargetState:0];
    v6 = [(VMPlayer *)self->_player currentItem];

    if (v5 == v6)
    {
      [(VMPlayer *)self->_player replaceCurrentItemWithPlayerItem:0];
    }

    [v4 setPlayerItem:0];
  }

  v7 = [v4 playbackToken];
  if (v7)
  {
    v8 = +[RCSSavedRecordingService sharedService];
    v13 = 0;
    v9 = [v8 endAccessSessionWithToken:v7 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001B976C();
      }
    }

    [v4 setPlaybackToken:0];
  }

  [v4 setCurrentState:0];

  return 0;
}

- (BOOL)setTargetRate:(float)a3 controller:(id)a4
{
  v6 = a4;
  v7 = [v6 recordingID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100087658;
  v12[3] = &unk_10028BB00;
  v13 = a3;
  [(VMAudioService *)self _updateRecordingWithUniqueID:v7 updateBlock:v12];

  v8 = [v6 playerItem];

  v9 = [(VMPlayer *)self->_player currentItem];

  if (v9 == v8)
  {
    *&v10 = a3;
    [(VMPlayer *)self->_player setTargetRate:v10];
  }

  return v9 == v8;
}

- (BOOL)setSilenceRemoverEnabled:(BOOL)a3 controller:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [v6 recordingID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087754;
  v11[3] = &unk_10028BB20;
  v12 = v4;
  [(VMAudioService *)self _updateRecordingWithUniqueID:v7 updateBlock:v11];

  v8 = [v6 playerItem];

  v9 = [(VMPlayer *)self->_player currentItem];

  if (v9 == v8)
  {
    [(VMPlayer *)self->_player setSilenceRemoverEnabled:v4];
  }

  return v9 == v8;
}

- (BOOL)setSpeechIsolatorEnabled:(BOOL)a3 controller:(id)a4
{
  v6 = [a4 recordingID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100087804;
  v8[3] = &unk_10028BB20;
  v9 = a3;
  [(VMAudioService *)self _updateRecordingWithUniqueID:v6 updateBlock:v8];

  return 1;
}

- (BOOL)setSpeechIsolatorValue:(float)a3 controller:(id)a4
{
  v6 = [a4 recordingID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000878B4;
  v8[3] = &unk_10028BB00;
  v9 = a3;
  [(VMAudioService *)self _updateRecordingWithUniqueID:v6 updateBlock:v8];

  return 1;
}

- (void)_updateRecordingWithUniqueID:(id)a3 updateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  recordings = self->_recordings;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087984;
  v11[3] = &unk_10028A538;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(RCApplicationModel *)recordings performBlockAndWait:v11];
}

- (void)_startPlaybackAtRate:(float)a3 immediately:(BOOL)a4
{
  player = self->_player;
  if (player)
  {
    regulatoryLogger = self->_regulatoryLogger;
    v8 = player;
    [(RCRegulatoryLogger *)regulatoryLogger readingAudioData];
    *&v7 = a3;
    [(VMPlayer *)v8 setTargetRate:v7];
    [(VMPlayer *)v8 play];
  }
}

- (BOOL)setTime:(double)a3 controller:(id)a4
{
  v6 = a4;
  v7 = [v6 playerItem];
  v8 = self->_player;
  v9 = v8;
  if (v7 && ([(VMPlayer *)v8 currentItem], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v7))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100087B94;
    v13[3] = &unk_10028BB48;
    v14 = v9;
    v15 = v7;
    v16 = v6;
    v17 = a3;
    [v15 seekToTime:v13 completionHandler:a3];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_closestAllowedSampleRate:(double)a3 allowedSampleRates:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      v11 = 1.79769313e308;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [v13 doubleValue];
          v15 = vabdd_f64(a3, v14);
          if (v15 < v11)
          {
            v16 = v13;

            v9 = v16;
            v11 = v15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (a3 <= 384000.0)
  {
    v9 = [NSNumber numberWithDouble:a3];
  }

  else
  {
    v9 = &off_10029ACE8;
  }

  return v9;
}

- (id)_newRecordingEngine:(id)a3 metadata:(id)a4 controller:(id)a5 shouldCaptureSpatial:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v8)
  {
    v15 = [[_TtC10VoiceMemos17RCSpatialRecorder alloc] initWithOutputFileURL:v12 outputFileSettings:&__NSDictionary0__struct];
    [(RCSpatialRecorder *)v15 setController:v14];
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100084F78;
    v38 = sub_100084F88;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100084F78;
    v32 = sub_100084F88;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100084F78;
    v26 = sub_100084F88;
    v27 = 0;
    audioSessionQueue = self->_audioSessionQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000880AC;
    v21[3] = &unk_10028BB70;
    v21[4] = self;
    v21[5] = &v34;
    v21[6] = &v28;
    v21[7] = &v22;
    dispatch_sync(audioSessionQueue, v21);
    if (v35[5])
    {
      v17 = [RCAssetWriter alloc];
      v18 = [v17 initForWriting:v12 settings:v29[5] error:a7];
      if (!v18)
      {
        goto LABEL_10;
      }

      if (v13)
      {
        v19 = [RCCaptureFormat AVAssetAuthoringMetadataWithRecordingMetadata:v13];
        [v18 setMetadata:v19];
      }

      if ([v18 startWritingAudioFile:a7] && (objc_msgSend(v35[5], "setAssetWriter:", v18), objc_msgSend(v35[5], "setController:", v14), objc_msgSend(v35[5], "configureWithAudioSettings:error:", v29[5], a7)))
      {
        v15 = v35[5];
      }

      else
      {
LABEL_10:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      if (a7)
      {
        *a7 = v23[5];
      }
    }

    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  return v15;
}

- (void)_playStartRecordingSoundEffectThenStartRecording:(id)a3 controller:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000883D8;
  v9[3] = &unk_10028B058;
  v10 = a4;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v10;
  [VMAudioService playStartRecordingSoundEffect:v9];
}

- (void)startRecordingWithController:(id)a3
{
  v4 = a3;
  if ([(VMAudioService *)self mode]== 2)
  {
    v5 = [(VMRecorder *)self->_recordingEngine controller];

    if (v5 == v4)
    {
      v8 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
    }

    else
    {
      v17 = @"VMAudioErrorModeKey";
      v6 = [NSNumber numberWithInt:[(VMAudioService *)self mode]];
      v18 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v8 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:1 userInfo:v7];
    }

    [v4 setRecordingError:v8];
  }

  else
  {
    v16 = 0;
    v9 = [RCApplicationFileCoordinator createCaptureDirectoryAndReturnError:&v16];
    v8 = v16;
    if (v9)
    {
      [v4 setInitialCaptureToken:v9];
      v10 = [v9 uuid];
      v11 = [v10 UUIDString];
      [v4 setRecordingID:v11];

      v12 = objc_alloc_init(RCActivityWaveformProcessor);
      [v4 setActivityWaveformProcessor:v12];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008876C;
      v14[3] = &unk_10028BB98;
      v14[4] = self;
      v15 = v4;
      [(VMAudioService *)self _activateAudioSessionForRecordingWithController:v15 completion:v14];
    }

    else
    {
      v13 = OSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9854();
      }

      [v4 setRecordingError:v8];
    }
  }
}

- (BOOL)_startRecordingWithController:(id)a3 shouldCaptureSpatial:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = +[NSDate date];
  v10 = &RCAudioFileExtensionQTA;
  if (!v6)
  {
    v10 = &RCAudioFileExtensionM4A;
  }

  v30 = *v10;
  v11 = [RCSavedRecordingsModel standardURLForRecordingWithCreationDate:v9 fileExtension:?];
  [v8 setRecordingURL:v11];
  [v8 setRecordingDate:v9];
  v12 = [v8 waveformDataSource];

  if (!v12)
  {
    v13 = [v8 targetTrackIndex];
    v14 = [v8 recordingURL];
    v15 = [RCWaveform waveformURLForAVURL:v14 trackIndex:v13];

    v16 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:v13 trackIndex:0.0];
    v17 = [[RCWaveformDataSource alloc] initWithWaveformGenerator:v16 generatedWaveformOutputURL:v15 trackIndex:v13];
    [v17 beginLoading];
    [v8 setWaveformDataSource:v17];
  }

  v18 = [v8 initialCaptureToken];
  v19 = [v18 directoryURL];
  v20 = [v11 lastPathComponent];
  v21 = [v19 URLByAppendingPathComponent:v20];

  v35[0] = @"date";
  v35[1] = @"uniqueID";
  v36[0] = v9;
  v22 = [v8 recordingID];
  v36[1] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v24 = [(VMAudioService *)self _newRecordingEngine:v21 metadata:v23 controller:v8 shouldCaptureSpatial:v6 error:a5];
  if (v24)
  {
    objc_storeStrong(&self->_recordingEngine, v24);
    [(VMAudioService *)self setMode:2];
    [v8 setCurrentState:2];
    v25 = [(VMRecorder *)self->_recordingEngine group];
    dispatch_group_enter(v25);
    v26 = [v8 waveformDataSource];
    v27 = v26 == 0;

    if (!v27)
    {
      dispatch_group_enter(v25);
    }

    v28 = [v8 recordingID];
    [(VMAudioService *)self _playStartRecordingSoundEffectThenStartRecording:v28 controller:v8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100088BF4;
    block[3] = &unk_10028A9B0;
    block[4] = self;
    v32 = v21;
    v33 = v11;
    v34 = v8;
    dispatch_group_notify(v25, &_dispatch_main_q, block);
  }

  return 0;
}

- (void)_createCloudRecordingForRecordingWithController:(id)a3 duration:(double)a4 recordingURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  recordings = self->_recordings;
  v11 = [v8 recordingID];
  v12 = [(RCApplicationModel *)recordings recordingWithUniqueID:v11];

  if (v12)
  {
LABEL_4:
    [v12 length];
    if (v19 != a4 || ([v12 fileName], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
    {
      v21 = [v9 lastPathComponent];
      [v12 setFileName:v21];

      [v12 setLength:a4];
      [v12 setPlayable:1];
      [(RCApplicationModel *)self->_recordings saveIfNecessary];
      [RCAnalyticsUtilities sendNewRecordingDuration:a4];
    }

    goto LABEL_10;
  }

  v13 = self->_recordings;
  v14 = [v9 path];
  v15 = [v8 recordingDate];
  v16 = [v8 titleBase];
  v17 = [v8 recordingID];
  v23 = 0;
  v12 = [(RCApplicationModel *)v13 insertRecordingWithAudioFile:v14 duration:v15 date:v16 customTitleBase:v17 uniqueID:&v23 error:a4];
  v18 = v23;

  if (v12)
  {

    goto LABEL_4;
  }

  v22 = OSLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1001B99B0();
  }

  v12 = 0;
LABEL_10:
}

- (BOOL)stopRecording:(id)a3 error:(id *)a4
{
  v6 = a3;
  RCCurrentMediaTime();
  LOBYTE(a4) = [(VMAudioService *)self stopRecording:v6 atTime:a4 error:?];

  return a4;
}

- (BOOL)stopRecording:(id)a3 atTime:(double)a4 error:(id *)a5
{
  v8 = a3;
  if ([(VMAudioService *)self mode]== 2)
  {
    v9 = self->_recordingEngine;
    v10 = v9;
    if (v9)
    {
      v11 = [(VMRecorder *)v9 controller];
      v12 = [v11 recordingID];
      v13 = [v12 isEqualToString:v8];

      if (v13)
      {
        v14 = [v11 currentState];
        if (v14 && v14 != 3)
        {
          [v11 setCurrentState:3];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10008927C;
          v17[3] = &unk_10028B058;
          v17[4] = self;
          v18 = v10;
          v19 = v11;
          [v18 stopRecordingAtTime:v17 completion:a4];
        }
      }

      else if (a5)
      {
        *a5 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
      }

      goto LABEL_16;
    }

    if (a5)
    {
      [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:3 userInfo:0];
      *a5 = v13 = 0;
      goto LABEL_16;
    }

LABEL_9:
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (a5)
  {
    v20 = @"VMAudioErrorModeKey";
    v10 = [NSNumber numberWithInt:[(VMAudioService *)self mode]];
    v21 = v10;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a5 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:1 userInfo:v15];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)stopRecordingWithController:(id)a3 error:(id *)a4
{
  v6 = a3;
  RCCurrentMediaTime();
  LOBYTE(a4) = [(VMAudioService *)self stopRecordingWithController:v6 atTime:a4 error:?];

  return a4;
}

- (BOOL)stopRecordingWithController:(id)a3 atTime:(double)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(VMRecorder *)self->_recordingEngine controller];

  if (v9 == v8)
  {
    v11 = [v8 recordingID];
    v10 = [(VMAudioService *)self stopRecording:v11 atTime:a5 error:a4];
  }

  else if (a5)
  {
    [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchRecording:(id)a3 recordingController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCApplicationModel *)self->_recordings recordingWithUniqueID:v6];
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [v7 recordingID];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      recordings = self->_recordings;
      v13 = [v7 recordingDate];
      v14 = [v7 titleBase];
      v18 = 0;
      v9 = [(RCApplicationModel *)recordings insertRecordingWithAudioFile:0 duration:v13 date:v14 customTitleBase:v6 uniqueID:&v18 error:0.0];
      v15 = v18;

      if (!v9)
      {
        v16 = OSLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9B0C();
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)fetchRecording:(id)a3
{
  recordingEngine = self->_recordingEngine;
  v5 = a3;
  v6 = [(VMRecorder *)recordingEngine controller];
  v7 = [(VMAudioService *)self _fetchRecording:v5 recordingController:v6];

  return v7;
}

- (BOOL)isRecordingEnabled:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  callCenterQueue = self->_callCenterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089AC0;
  block[3] = &unk_10028BC10;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(callCenterQueue, block);
  v5 = v14[3];
  if (v5)
  {
    v17[0] = NSLocalizedFailureReasonErrorKey;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"UNABLE_TO_RECORD_WITH_ACTIVE_PHONE_CALL_TITLE" value:&stru_100295BB8 table:0];
    v18[0] = v7;
    v17[1] = NSLocalizedRecoverySuggestionErrorKey;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNABLE_TO_RECORD_WITH_ACTIVE_PHONE_CALL_BODY" value:&stru_100295BB8 table:0];
    v18[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    if (a3)
    {
      *a3 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:5 userInfo:v10];
    }
  }

  _Block_object_dispose(&v13, 8);
  return v5 == 0;
}

+ (void)playStartRecordingSoundEffect:(id)a3
{
  inCompletionBlock[0] = _NSConcreteStackBlock;
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = sub_100089B88;
  inCompletionBlock[3] = &unk_10028A510;
  v5 = a3;
  v3 = v5;
  AudioServicesPlaySystemSoundWithCompletion(0x459u, inCompletionBlock);
}

- (double)recordingDuration
{
  v3 = 0.0;
  result = 0.0;
  if (self->_mode == 2)
  {
    [(VMRecorder *)self->_recordingEngine sampleRecordingTime:&v3, 0.0];
    return v3;
  }

  return result;
}

- (BOOL)sampleRecordingTime:(double *)a3
{
  if (self->_mode == 2)
  {
    return [(VMRecorder *)self->_recordingEngine sampleRecordingTime:a3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_popFileVersion:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSFileVersion otherVersionsOfItemAtURL:v5];
  v7 = [v6 lastObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 replaceItemAtURL:v5 options:1 error:a4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 isEqual:v5];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)__refreshRecording:(id)a3 composition:(id)a4 controller:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 composedDuration];
  v12 = v11;
  [v10 setRecordingComposition:v9];
  [v10 setCurrentDuration:v12];
  v13 = +[NSFileManager defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [v9 composedWaveformURLs];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 removeItemAtURL:*(*(&v28 + 1) + 8 * v18) error:0];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  [v8 setLength:v12];
  v19 = [v9 composedFragments];
  v20 = [v19 count];

  if (!v20)
  {
    [v8 setPlayable:1];
  }

  v21 = [v10 liveTranscription];
  [v21 refreshWithComposition:v9];

  recordings = self->_recordings;
  v27 = 0;
  v23 = [(RCApplicationModel *)recordings saveIfNecessary:&v27];
  v24 = v27;
  if (v23)
  {
    [RCAnalyticsUtilities sendNewRecordingDuration:v12];
  }

  else
  {
    v25 = OSLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1001B9B80();
    }

    [v10 setRecordingError:v24];
  }

  return v23;
}

- (BOOL)refreshRecording:(id)a3 controller:(id)a4
{
  v6 = a4;
  v7 = [(VMAudioService *)self fetchRecording:a3];
  if (!v7)
  {
    goto LABEL_9;
  }

  player = self->_player;
  if (player)
  {
    v9 = [(VMPlayer *)player currentItem];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 controller];
      v12 = [v11 recordingID];
      v13 = [v6 recordingID];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        v15 = [v10 controller];
        [(VMAudioService *)self stopPlaying:v15];
      }
    }
  }

  v16 = [RCComposition compositionLoadedForSavedRecording:v7];
  if (v16)
  {
    v17 = v16;
    v18 = [(VMAudioService *)self __refreshRecording:v7 composition:v16 controller:v6];
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (void)__eraseSecondLayerInComposition:(id)a3 outputFragment:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 timeRangeInComposition];
  v10 = [v7 newRandomFragmentWithInsertionTimeRangeInComposition:1 trackIndex:RCAudioFileExtensionM4A pathExtension:?];
  v11 = [v10 mutableCopy];

  [v8 contentDuration];
  [v11 setContentDuration:?];
  [v8 timeRangeInContentToUse];
  [v11 setTimeRangeInContentToUse:?];
  v12 = [v11 AVOutputURL];
  v13 = +[VMAudioService compressedAudioSettings];
  v14 = [v13 mutableCopy];

  [v14 setObject:&off_10029AAF0 forKeyedSubscript:AVSampleRateKey];
  [v14 setObject:&off_10029AB08 forKeyedSubscript:AVNumberOfChannelsKey];
  v39 = 0;
  v15 = [[RCAssetWriter alloc] initForWriting:v12 settings:v14 error:&v39];
  v16 = v39;
  if (v15)
  {
    v33 = v12;
    v17 = [v15 processingFormat];
    v18 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v17 frameCapacity:0x2000];
    [v18 setFrameLength:0x2000];
    [v11 contentDuration];
    v20 = v19;
    v32 = v17;
    [v17 sampleRate];
    v22 = v21;
    v38 = v16;
    LODWORD(v17) = [v15 startWritingAudioFile:&v38];
    v23 = v38;

    if (v17)
    {
      v30 = v9;
      v31 = v7;
      v24 = (v20 * v22);
      if (!v24)
      {
LABEL_9:
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10008A3C8;
        v34[3] = &unk_10028BC38;
        v9 = v30;
        v36 = v30;
        v35 = v11;
        [v15 finishWritingAudioFile:v34];

        v7 = v31;
LABEL_17:
        v12 = v33;

        v16 = v23;
        goto LABEL_18;
      }

      v25 = 0x2000;
      v26 = v23;
      while (1)
      {
        if (v25 > v24)
        {
          [v18 setFrameLength:v24];
          v25 = v24;
        }

        v37 = v26;
        v27 = [v15 writeFromBuffer:v18 error:&v37];
        v23 = v37;

        if ((v27 & 1) == 0)
        {
          break;
        }

        v26 = v23;
        v24 = v24 - v25;
        if (!v24)
        {
          goto LABEL_9;
        }
      }

      v29 = OSLogForCategory();
      v7 = v31;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9C68();
      }

      v9 = v30;
    }

    else
    {
      v28 = OSLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9BF4();
      }
    }

    (*(v9 + 2))(v9, 0, v23);
    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)_mergeRecording:(id)a3 atTime:(double)a4 controller:(id)a5 shouldCaptureSpatial:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v55 = v12;
  v14 = [(VMAudioService *)self fetchRecording:v12];
  v15 = v14;
  if (v14)
  {
    v56 = [v14 url];
    v54 = +[RCSSavedRecordingService sharedService];
    v77 = 0;
    v16 = [v54 prepareToTrimCompositionAVURL:v56 error:&v77];
    v53 = v77;
    if (v16)
    {
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_10008ABE8;
      v74[3] = &unk_10028BC60;
      v75 = v54;
      v76 = self;
      v51 = objc_retainBlock(v74);
      v17 = [v13 recordingComposition];
      if (v17)
      {
        goto LABEL_9;
      }

      v18 = [VMRecordingAssetsBackup alloc];
      [v15 length];
      v73 = 0;
      v19 = [(VMRecordingAssetsBackup *)v18 initWithComposedAVURL:v56 duration:&v73 error:?];
      v20 = v73;
      [v13 setAssetBackup:v19];

      v21 = [v13 assetBackup];
      LODWORD(v19) = v21 == 0;

      if (v19)
      {
        v22 = OSLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9CDC();
        }
      }

      v17 = [RCComposition compositionLoadedForEditingSavedRecording:v15 error:a7];
      [v13 setRecordingComposition:v17];

      if (v17)
      {
LABEL_9:
        [v17 composedDuration];
        v24 = v23;
        [v13 setCurrentDuration:?];
        if (v24 < a4)
        {
          a4 = v24;
        }

        [v13 setRecordingURL:v56];
        v25 = [v13 targetTrackIndex];
        v26 = &RCAudioFileExtensionQTA;
        if (!v8)
        {
          v26 = &RCAudioFileExtensionM4A;
        }

        v48 = *v26;
        RCTimeRangeMake();
        v27 = [v17 newRandomFragmentWithInsertionTimeRangeInComposition:v25 trackIndex:v48 pathExtension:?];
        v28 = [v27 mutableCopy];

        v52 = [v28 AVOutputURL];
        v29 = +[NSFileManager defaultManager];
        [v29 removeItemAtURL:v52 error:0];

        v30 = [v13 waveformDataSource];
        v31 = v30;
        if (v30 && ([v30 finished] & 1) == 0)
        {
          [v31 cancelLoading];
        }

        v50 = [[RCCaptureInputWaveformDataSource alloc] initWithDestinationComposition:v17 destinationFragment:v28 trackIndex:v25];
        [v13 setWaveformDataSource:v50];
        [v50 beginLoading];
        [v13 setCurrentTime:a4];
        v46 = v31;
        v49 = [RCComposition mergeCaptureFragmentMetadataURLForComposedAVURL:v56];
        v32 = [v28 dictionaryPListRepresentation];
        v72 = 0;
        v33 = [v32 writeToURL:v49 error:&v72];
        v47 = v72;

        if ((v33 & 1) == 0)
        {
          v34 = OSLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1001B9D50();
          }
        }

        v35 = [(VMAudioService *)self _newRecordingEngine:v52 metadata:0 controller:v13 shouldCaptureSpatial:v8 error:a7];
        v36 = v35 != 0;
        if (v35)
        {
          objc_storeStrong(&self->_recordingEngine, v35);
          [(VMAudioService *)self setMode:3];
          [v13 setRecordingAccessToken:v16];

          v37 = &_dispatch_main_q;
          v38 = [v35 group];
          dispatch_group_enter(v38);
          [(VMAudioService *)self setMode:2];
          [v13 setRecordingID:v55];
          [v13 setCurrentState:2];
          [v35 setPunchInTime:a4];
          [(VMAudioService *)self _playStartRecordingSoundEffectThenStartRecording:v55 controller:v13];
          group = v38;
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_10008AC90;
          v68[3] = &unk_10028BC88;
          v71 = v51;
          v39 = v13;
          v69 = v39;
          v70 = self;
          v40 = objc_retainBlock(v68);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008AD14;
          block[3] = &unk_10028BD28;
          block[4] = self;
          v58 = v52;
          v66 = v40;
          v67 = a4;
          v59 = v28;
          v60 = v56;
          v61 = v17;
          v62 = v49;
          v63 = v15;
          v64 = v39;
          v65 = &_dispatch_main_q;
          v41 = v40;
          dispatch_group_notify(group, &_dispatch_main_q, block);

          v16 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      (v51[2])(v51, v16);
    }

    else
    {
      v42 = OSLogForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v79 = "[VMAudioService _mergeRecording:atTime:controller:shouldCaptureSpatial:error:]";
        v80 = 2112;
        v81 = v53;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s -- accessError = %@", buf, 0x16u);
      }

      if (a7)
      {
        v43 = v53;
        v36 = 0;
        *a7 = v53;
      }

      else
      {
        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (void)replaceRecording:(id)a3 atTime:(double)a4 controller:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(RCActivityWaveformProcessor);
  [v9 setActivityWaveformProcessor:v10];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008B3E0;
  v13[3] = &unk_10028BD50;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(VMAudioService *)self _activateAudioSessionForRecordingWithController:v11 completion:v13];
}

- (void)_cancelFileTranscription
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[RCRecordingTranscriptionService sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B53C;
  v5[3] = &unk_10028A3B8;
  v6 = v2;
  v4 = v2;
  [v3 cancelFileTranscriptionWithCompletionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)_editRecording:(id)a3 editBlock:(id)a4 controller:(id)a5 error:(id *)a6
{
  v10 = a3;
  v31 = a4;
  v11 = a5;
  [(VMAudioService *)self _shutdownPlaybackEngine];
  v12 = [(VMAudioService *)self fetchRecording:v10];
  if (v12)
  {
    [(VMAudioService *)self _cancelFileTranscription];
    v30 = [v12 url];
    v13 = +[RCSSavedRecordingService sharedService];
    v35 = 0;
    v14 = [v13 prepareToTrimCompositionAVURL:v30 error:&v35];
    v29 = v35;
    if (!v14)
    {
      v26 = OSLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v37 = "[VMAudioService _editRecording:editBlock:controller:error:]";
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s -- accessError = %@", buf, 0x16u);
      }

      if (a6)
      {
        v27 = v29;
        v25 = 0;
        *a6 = v29;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_23;
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10008B9A0;
    v33[3] = &unk_10028BD78;
    v34 = v13;
    v15 = objc_retainBlock(v33);
    v16 = [v11 recordingComposition];
    if (!v16)
    {
      v17 = [VMRecordingAssetsBackup alloc];
      [v12 length];
      v32 = 0;
      v18 = [(VMRecordingAssetsBackup *)v17 initWithComposedAVURL:v30 duration:&v32 error:?];
      v19 = v32;
      [v11 setAssetBackup:v18];

      v20 = [v11 assetBackup];
      LODWORD(v18) = v20 == 0;

      if (v18)
      {
        v21 = OSLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9E38();
        }
      }

      v16 = [RCComposition compositionLoadedForEditingSavedRecording:v12 error:a6, v29];
      if (!v16)
      {

        v22 = 0;
        goto LABEL_21;
      }

      [v11 setRecordingComposition:v16];
    }

    v22 = v31[2](v31, v16, v12, a6);

    if (v22)
    {
      v23 = [RCComposition compositionMetadataURLForComposedAVURL:v30];
      v24 = [(VMAudioService *)self _pushFileVersion:v23 error:a6];

      [v22 saveMetadataToDefaultLocation];
      v25 = [(VMAudioService *)self __refreshRecording:v12 composition:v22 controller:v11];
LABEL_22:

      (v15[2])(v15, v14);
LABEL_23:

      goto LABEL_24;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  if (a6)
  {
    [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
    *a6 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_24:

  return v25;
}

- (BOOL)trimRecording:(id)a3 timeRange:(id)a4 controller:(id)a5 error:(id *)a6
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008BB00;
  v16 = &unk_10028BD98;
  v17 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_retainBlock(&v13);
  LOBYTE(a6) = [(VMAudioService *)self _editRecording:v10 editBlock:v11 controller:v9 error:a6, v13, v14, v15, v16, *&v17.var0, *&v17.var1];

  return a6;
}

- (BOOL)cutRecording:(id)a3 timeRange:(id)a4 controller:(id)a5 error:(id *)a6
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008BBDC;
  v16 = &unk_10028BD98;
  v17 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_retainBlock(&v13);
  LOBYTE(a6) = [(VMAudioService *)self _editRecording:v10 editBlock:v11 controller:v9 error:a6, v13, v14, v15, v16, *&v17.var0, *&v17.var1];

  return a6;
}

- (id)finalizeRecording:(id)a3 controller:(id)a4 saveAsNew:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 recordingComposition];
  if (a5)
  {
    v11 = 1;
LABEL_17:
    v16 = [(VMAudioService *)self _finalizeRecording:v8 controller:v9 finalizationStrategy:v11];
    goto LABEL_18;
  }

  v12 = [(VMAudioService *)self fetchRecording:v8];
  if (v12)
  {
    v13 = v12;
    if ([v10 hasMultipleTracks])
    {
      v14 = [v13 canUpdateWithMultiTrackAsset] ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if ([v10 hasSpatialAudio])
    {
      v17 = [v13 canUpdateWithSpatialAsset] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    if ((v14 | v17))
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_17;
  }

  v15 = OSLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001B9F20();
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)_finalizeRecording:(id)a3 controller:(id)a4 finalizationStrategy:(int)a5
{
  v8 = a3;
  v9 = a4;
  [(VMAudioService *)self _deactivateAudioSessionAsync:1];
  v10 = a5 - 1;
  v11 = [v9 recordingComposition];
  if (!v11)
  {
    if (v10 > 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = [(VMAudioService *)self _duplicateRecordingWithID:v8];
      v15 = [v14 uuid];
    }

    v13 = v15;
    goto LABEL_29;
  }

  v12 = [(VMAudioService *)self fetchRecording:v8];
  if (!v12)
  {
    v16 = OSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001BA094();
    }

    v13 = 0;
    goto LABEL_27;
  }

  if (v10 < 2 || ![(VMAudioService *)self attemptSingleFragmentFinalization:v11 recording:v12 controller:v9])
  {
    v16 = [v12 url];
    v17 = v9;
    v18 = v17;
    if (v10 > 1)
    {
      v22 = 0;
    }

    else
    {
      v19 = [v17 assetBackup];
      if (v19)
      {
        v32 = 0;
        v28 = v19;
        v20 = [(VMAudioService *)self _saveAsNew:v12 withAssetBackup:v19 editedComposition:v11 replacingOriginal:a5 == 2 error:&v32];
        v29 = v32;
        if (v20)
        {
          v21 = [v20 uuid];
          [v18 setRecordingID:v21];

          v27 = [v20 url];

          v22 = [v18 recordingID];
          v23 = [RCComposition compositionLoadedForSavedRecording:v20];
          [(VMAudioService *)self __refreshRecording:v20 composition:v23 controller:v18];
          v18 = 0;
          v16 = v27;
        }

        else
        {
          v23 = OSLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1001B9FA0();
          }

          v22 = 0;
        }

        v19 = v28;
        v24 = v29;
      }

      else
      {
        v24 = OSLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1001BA014();
        }

        v22 = 0;
      }
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10008C088;
    v30[3] = &unk_10028BDC0;
    v31 = v18;
    v25 = v18;
    [(VMAudioService *)self _mixDownEditedRecording:v16 completion:v30];
    v13 = v22;

LABEL_27:
    goto LABEL_28;
  }

  v13 = 0;
LABEL_28:

LABEL_29:

  return v13;
}

- (id)_duplicateRecordingWithID:(id)a3
{
  v4 = [(VMAudioService *)self fetchRecording:a3];
  if (v4)
  {
    recordings = self->_recordings;
    v9 = 0;
    v6 = [(RCApplicationModel *)recordings duplicateRecording:v4 error:&v9];
    if (v6)
    {
      goto LABEL_9;
    }

    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001BA114();
    }
  }

  else
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001BA194();
    }

    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (void)_restoreOriginalRecording:(id)a3 andComposition:(id)a4 forFailedRecording:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    [(RCApplicationModel *)self->_recordings eraseRecording:v10];
  }

  if (v9)
  {
    v11 = [v8 url];
    v12 = [v8 uuid];
    v16 = 0;
    v13 = [v9 moveTo:v11 recordingID:v12 error:&v16];
    v14 = v16;

    if (!v13)
    {
      v15 = OSLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001BA214();
      }
    }
  }
}

- (id)_saveAsNew:(id)a3 withAssetBackup:(id)a4 editedComposition:(id)a5 replacingOriginal:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v7)
  {
    [v11 creationDate];
  }

  else
  {
    +[NSDate now];
  }
  v14 = ;
  recordings = self->_recordings;
  v53 = 0;
  v16 = [(RCApplicationModel *)recordings duplicateRecording:v11 copyingResources:0 creationDate:v14 error:&v53];
  v17 = v53;
  v18 = v17;
  if (!v16)
  {
    v40 = 0;
    goto LABEL_25;
  }

  v46 = v7;
  v47 = v17;
  v48 = self;
  v49 = v14;
  v50 = v12;
  v19 = [v16 creationDate];
  v20 = [v16 uuid];
  [v13 composedAVURL];
  v22 = v21 = v13;
  v23 = [v22 pathExtension];
  v24 = [RCSavedRecordingsModel standardPathForRecordingWithCreationDate:v19 uniqueID:v20 fileExtension:v23];
  v25 = [NSURL fileURLWithPath:v24];

  v13 = v21;
  v26 = [v16 uuid];
  v51 = v25;
  v27 = [v21 moveTo:v25 recordingID:v26 error:a7];

  if (v27)
  {
    v12 = v50;
    v28 = [v50 composedAVURLBackup];
    v29 = [v11 url];
    v30 = v28;
    v31 = +[NSFileManager defaultManager];
    *buf = 0;
    v32 = [v31 moveItemAtURL:v30 toURL:v29 error:buf];

    v33 = *buf;
    v34 = v33;
    if (v32)
    {

      v13 = v21;
LABEL_8:
      [v12 originalDuration];
      [v11 setLength:?];
      v35 = [v51 lastPathComponent];
      [v16 setFileName:v35];

      v14 = v49;
      v18 = v47;
      if (v46)
      {
        v36 = OSLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v11 uuid];
          v38 = [v16 uuid];
          *buf = 136315650;
          *&buf[4] = "[VMAudioService _saveAsNew:withAssetBackup:editedComposition:replacingOriginal:error:]";
          v55 = 2112;
          v56 = v37;
          v57 = 2112;
          v58 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s -- Migrating uniqueID %@ to multitrack with uniqueID %@", buf, 0x20u);
        }

        v39 = [v11 title];
        [v16 setTitle:v39];

        [(RCApplicationModel *)v48->_recordings eraseRecording:v11];
      }

      [(RCApplicationModel *)v48->_recordings saveIfNecessary];
      v40 = v16;
      goto LABEL_24;
    }

    v41 = v33;
    v42 = [v41 domain];
    if ([v42 isEqualToString:NSCocoaErrorDomain])
    {
      v43 = [v41 code] == 516;
    }

    else
    {
      v43 = 0;
    }

    if (!a7 || v43)
    {

      v12 = v50;
      v13 = v21;
      if (v43)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v44 = v41;
      *a7 = v41;

      v12 = v50;
      v13 = v21;
    }

    [(VMAudioService *)v48 _restoreOriginalRecording:v11 andComposition:v27 forFailedRecording:v16];
    v40 = 0;
  }

  else
  {
    [(VMAudioService *)v48 _restoreOriginalRecording:v11 andComposition:0 forFailedRecording:v16];
    v40 = 0;
    v12 = v50;
  }

  v14 = v49;
  v18 = v47;
LABEL_24:

LABEL_25:

  return v40;
}

- (BOOL)attemptSingleFragmentFinalization:(id)a3 recording:(id)a4 controller:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 composedFragments];
  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
    [v12 contentDuration];
    v14 = v13;
    [v12 timeRangeInComposition];
    RCTimeRangeDeltaWithExactPrecision();
    if (v14 == v15)
    {
      v16 = +[NSFileManager defaultManager];
      v17 = [v12 AVOutputURL];
      v18 = [v8 composedAVURL];
      v26 = 0;
      v19 = [v16 moveItemAtURL:v17 toURL:v18 error:&v26];
      v25 = v26;

      if (v19)
      {
        v20 = [v8 mutableCopy];
        [v20 setDecomposedFragments:&__NSArray0__struct];
        [v20 saveMetadataToDefaultLocation];
        v21 = [(VMAudioService *)self __refreshRecording:v9 composition:v20 controller:v10];

        v22 = v25;
      }

      else
      {
        v23 = OSLogForCategory();
        v22 = v25;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1001BA288();
        }

        [v10 setRecordingError:v25];
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_mixDownEditedRecording:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(VMAudioService *)self setEditingStatus:1];
  +[RCSSavedRecordingService sharedService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008CA7C;
  v11 = v10[3] = &unk_10028BDE8;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v11;
  [v9 prepareToExportCompositionAVURL:v7 accessRequestHandler:v10];
}

- (BOOL)forceCloseActiveRecordingAssetWriter:(id *)a3
{
  recordingEngine = self->_recordingEngine;
  if (!recordingEngine)
  {
    return 1;
  }

  v5 = recordingEngine;
  v6 = OSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VMAudioService forceCloseActiveRecordingAssetWriter:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- Closing in flight recording", &v9, 0xCu);
  }

  v7 = [(VMRecorder *)v5 handleWillTerminate:a3];
  return v7;
}

- (void)_beginStartRecordingSignpost
{
  if (RCIsInternalInstall())
  {
    self->_startRecordingContinuousTime = mach_continuous_time();
  }
}

- (void)_endStartRecordingSignPost
{
  if (RCIsInternalInstall() && self->_startRecordingContinuousTime)
  {
    v3 = OSLogForCategory();
    v4 = os_signpost_id_generate(v3);

    v5 = OSLogForCategory();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      startRecordingContinuousTime = self->_startRecordingContinuousTime;
      v8 = 134349056;
      v9 = startRecordingContinuousTime;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v4, "StartRecording", "beginTime=%{public, signpost.description:begin_time}llu", &v8, 0xCu);
    }

    self->_startRecordingContinuousTime = 0;
  }
}

@end