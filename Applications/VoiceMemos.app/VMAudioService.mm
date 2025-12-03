@interface VMAudioService
+ (NSDictionary)compressedAudioSettings;
+ (NSDictionary)losslessAudioSettings;
+ (VMAudioService)sharedInstance;
+ (void)playStartRecordingSoundEffect:(id)effect;
- (BOOL)__activateAudioSessionOnQueue:(id)queue recording:(BOOL)recording overdubbing:(BOOL)overdubbing captureSpatial:(BOOL)spatial error:(id *)error;
- (BOOL)__refreshRecording:(id)recording composition:(id)composition controller:(id)controller;
- (BOOL)_disableStereo:(id *)stereo;
- (BOOL)_editRecording:(id)recording editBlock:(id)block controller:(id)controller error:(id *)error;
- (BOOL)_enableStereo:(id *)stereo;
- (BOOL)_mergeRecording:(id)recording atTime:(double)time controller:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error;
- (BOOL)_popFileVersion:(id)version error:(id *)error;
- (BOOL)_startRecordingWithController:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error;
- (BOOL)_updateStereoOrientationWithOverdubbing:(BOOL)overdubbing error:(id *)error;
- (BOOL)_userPreferenceIsSpatialCapture;
- (BOOL)_userPrefersStereo;
- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)error;
- (BOOL)attemptSingleFragmentFinalization:(id)finalization recording:(id)recording controller:(id)controller;
- (BOOL)cutRecording:(id)recording timeRange:(id)range controller:(id)controller error:(id *)error;
- (BOOL)forceCloseActiveRecordingAssetWriter:(id *)writer;
- (BOOL)isRecording;
- (BOOL)isRecordingEnabled:(id *)enabled;
- (BOOL)pausePlaying:(id)playing;
- (BOOL)refreshRecording:(id)recording controller:(id)controller;
- (BOOL)sampleRecordingTime:(double *)time;
- (BOOL)setSilenceRemoverEnabled:(BOOL)enabled controller:(id)controller;
- (BOOL)setSpeechIsolatorEnabled:(BOOL)enabled controller:(id)controller;
- (BOOL)setSpeechIsolatorValue:(float)value controller:(id)controller;
- (BOOL)setTargetRate:(float)rate controller:(id)controller;
- (BOOL)setTime:(double)time controller:(id)controller;
- (BOOL)shouldWaitForAccessTokenBeforeStartingRecording:(id)recording;
- (BOOL)stopPlaying:(id)playing;
- (BOOL)stopRecording:(id)recording atTime:(double)time error:(id *)error;
- (BOOL)stopRecording:(id)recording error:(id *)error;
- (BOOL)stopRecordingWithController:(id)controller atTime:(double)time error:(id *)error;
- (BOOL)stopRecordingWithController:(id)controller error:(id *)error;
- (BOOL)trimRecording:(id)recording timeRange:(id)range controller:(id)controller error:(id *)error;
- (VMAudioRecorder)activeAudioRecorder;
- (VMAudioService)init;
- (double)recordingDuration;
- (id)_assetForRecording:(id)recording error:(id *)error;
- (id)_closestAllowedSampleRate:(double)rate allowedSampleRates:(id)rates;
- (id)_createAndConfigurePlayer;
- (id)_dataSourceSupportingStereo;
- (id)_duplicateRecordingWithID:(id)d;
- (id)_fetchRecording:(id)recording recordingController:(id)controller;
- (id)_finalizeRecording:(id)recording controller:(id)controller finalizationStrategy:(int)strategy;
- (id)_newRecordingEngine:(id)engine metadata:(id)metadata controller:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error;
- (id)_saveAsNew:(id)new withAssetBackup:(id)backup editedComposition:(id)composition replacingOriginal:(BOOL)original error:(id *)error;
- (id)fetchRecording:(id)recording;
- (id)finalizeRecording:(id)recording controller:(id)controller saveAsNew:(BOOL)new;
- (id)newRecorderWithTitleBase:(id)base;
- (id)playerForRecordingID:(id)d;
- (id)recorderForRecordingID:(id)d;
- (void)__eraseSecondLayerInComposition:(id)composition outputFragment:(id)fragment completionBlock:(id)block;
- (void)_activateAudioSessionForRecording:(BOOL)recording overdubbing:(BOOL)overdubbing completion:(id)completion;
- (void)_activateAudioSessionForRecordingWithController:(id)controller completion:(id)completion;
- (void)_beginStartRecordingSignpost;
- (void)_cancelFileTranscription;
- (void)_configureAudioSession:(id)session preferDecoupledIO:(BOOL)o isRecording:(BOOL)recording;
- (void)_configureAudioSessionForBTSmartRoutingConsideration:(id)consideration isRecording:(BOOL)recording;
- (void)_configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:(id)alerts isRecording:(BOOL)recording;
- (void)_configureAudioSessionStereoInput:(id)input isRecording:(BOOL)recording isOverdubbing:(BOOL)overdubbing;
- (void)_configureAudioSettings;
- (void)_configureAudioSettingsIfNeeded;
- (void)_createCloudRecordingForRecordingWithController:(id)controller duration:(double)duration recordingURL:(id)l;
- (void)_deactivateAudioSessionAsync:(BOOL)async;
- (void)_endStartRecordingSignPost;
- (void)_handleAudioSessionNotification:(id)notification;
- (void)_handleSecondaryQueueAudioSessionNotification:(id)notification;
- (void)_interruptRecording;
- (void)_mixDownEditedRecording:(id)recording completion:(id)completion;
- (void)_observeUserDefaultsForAudioSettingsChanges;
- (void)_playStartRecordingSoundEffectThenStartRecording:(id)recording controller:(id)controller;
- (void)_registerAudioSessionNotificationsIfNeeded;
- (void)_restoreOriginalRecording:(id)recording andComposition:(id)composition forFailedRecording:(id)failedRecording;
- (void)_schedulePlayback:(id)playback;
- (void)_shutdownPlaybackEngine;
- (void)_startPlaybackAtRate:(float)rate immediately:(BOOL)immediately;
- (void)_updateNewVMAudioPlayer:(id)player withPropertiesForRecordingID:(id)d;
- (void)_updateRecordingWithUniqueID:(id)d updateBlock:(id)block;
- (void)isPlayingDidChange:(BOOL)change;
- (void)prepareService;
- (void)replaceRecording:(id)recording atTime:(double)time controller:(id)controller;
- (void)startPlaying:(id)playing;
- (void)startRecordingWithController:(id)controller;
- (void)vmPlayerError:(id)error;
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
    _createAndConfigurePlayer = [(VMAudioService *)v9 _createAndConfigurePlayer];
    player = v9->_player;
    v9->_player = _createAndConfigurePlayer;

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
  intValue = [v7 intValue];

  *buf = intValue;
  if (intValue == 1633772320)
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

- (void)vmPlayerError:(id)error
{
  errorCopy = error;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001B9360();
  }

  currentItem = [(VMPlayer *)self->_player currentItem];
  controller = [currentItem controller];
  v8 = controller;
  if (controller)
  {
    [controller setPlaybackError:errorCopy];
    [(VMAudioService *)self stopPlaying:v8];
  }
}

- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)error
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
  block[6] = error;
  dispatch_sync(audioSessionQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)isPlayingDidChange:(BOOL)change
{
  changeCopy = change;
  currentItem = [(VMPlayer *)self->_player currentItem];
  controller = [currentItem controller];
  v5 = controller;
  if (changeCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  [controller setCurrentState:v6];
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

- (void)_activateAudioSessionForRecordingWithController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
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
  overdubbing = [controllerCopy overdubbing];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100084F90;
  v21[3] = &unk_10028B8E0;
  v23 = v28;
  v24 = v30;
  v25 = v26;
  v10 = v8;
  v22 = v10;
  [(VMAudioService *)self _activateAudioSessionForRecording:1 overdubbing:overdubbing completion:v21];
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
  v15 = completionCopy;
  v16 = v28;
  v17 = v26;
  v18 = v30;
  v13 = completionCopy;
  dispatch_group_notify(v12, &_dispatch_main_q, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)_activateAudioSessionForRecording:(BOOL)recording overdubbing:(BOOL)overdubbing completion:(id)completion
{
  completionCopy = completion;
  audioSessionQueue = self->_audioSessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085100;
  block[3] = &unk_10028B998;
  recordingCopy = recording;
  overdubbingCopy = overdubbing;
  block[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(audioSessionQueue, block);
}

- (BOOL)__activateAudioSessionOnQueue:(id)queue recording:(BOOL)recording overdubbing:(BOOL)overdubbing captureSpatial:(BOOL)spatial error:(id *)error
{
  spatialCopy = spatial;
  overdubbingCopy = overdubbing;
  recordingCopy = recording;
  queueCopy = queue;
  [(VMAudioService *)self _registerAudioSessionNotificationsIfNeeded];
  if (recordingCopy && spatialCopy)
  {
    currentRoute = [queueCopy currentRoute];
    outputs = [currentRoute outputs];
    [outputs na_any:&stru_10028B9B8];
  }

  v26 = 0u;
  v27 = 0u;
  RCGetAudioConfiguration();
  category = [queueCopy category];
  if (category)
  {
    goto LABEL_10;
  }

  mode = [queueCopy mode];
  if (mode != *(&v26 + 1) || [queueCopy routeSharingPolicy] != *(&v27 + 1))
  {

LABEL_10:
LABEL_11:
    if (self->_isAudioSessionActive)
    {
      self->_isAudioSessionActive = 0;
      [queueCopy setActive:0 error:0];
    }

    v18 = v26;
    v23 = v18;
    v19 = *(&v26 + 1);
    v24 = v19;
    v25 = v27;
    if (queueCopy)
    {
      if ([queueCopy rc_configureSession:&v23 error:error])
      {
        [(VMAudioService *)self _configureAudioSession:queueCopy preferDecoupledIO:*(&v26 + 1) == AVAudioSessionModeSpatialCapture isRecording:recordingCopy, v23, v24, v25];
        [(VMAudioService *)self _configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:queueCopy isRecording:recordingCopy];
        [(VMAudioService *)self _configureAudioSessionForBTSmartRoutingConsideration:queueCopy isRecording:recordingCopy];
        [(VMAudioService *)self _configureAudioSessionStereoInput:queueCopy isRecording:recordingCopy isOverdubbing:overdubbingCopy];
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

  categoryOptions = [queueCopy categoryOptions];

  if (categoryOptions != v27)
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
    v20 = [queueCopy setActive:1 withOptions:0 error:error];
    self->_isAudioSessionActive = v20;
  }

LABEL_21:

  return v20;
}

- (void)_configureAudioSession:(id)session preferDecoupledIO:(BOOL)o isRecording:(BOOL)recording
{
  recordingCopy = recording;
  oCopy = o;
  sessionCopy = session;
  if (RCSpatialAudioCaptureAvailable() && recordingCopy)
  {
    v11 = 0;
    v8 = [sessionCopy preferDecoupledIO:oCopy error:&v11];
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

- (void)_configureAudioSessionPrefersNoInterruptionsFromSystemAlerts:(id)alerts isRecording:(BOOL)recording
{
  v7 = 0;
  v4 = [alerts setPrefersNoInterruptionsFromSystemAlerts:recording error:&v7];
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

- (void)_configureAudioSessionForBTSmartRoutingConsideration:(id)consideration isRecording:(BOOL)recording
{
  v7 = 0;
  v4 = [consideration setEligibleForBTSmartRoutingConsideration:!recording error:&v7];
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

- (void)_configureAudioSessionStereoInput:(id)input isRecording:(BOOL)recording isOverdubbing:(BOOL)overdubbing
{
  if (recording)
  {
    v8 = 0;
    v5 = [(VMAudioService *)self _updateStereoOrientationWithOverdubbing:overdubbing error:&v8];
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
    rc_useStereoRecording = [v2 rc_channelConfiguration] == 1;
  }

  else
  {
    rc_useStereoRecording = [v2 rc_useStereoRecording];
  }

  return rc_useStereoRecording;
}

- (BOOL)_updateStereoOrientationWithOverdubbing:(BOOL)overdubbing error:(id *)error
{
  if (!RCStereoRecordingIsAvailable())
  {
    return 1;
  }

  if (overdubbing || ![(VMAudioService *)self _userPrefersStereo])
  {

    return [(VMAudioService *)self _disableStereo:error];
  }

  else
  {

    return [(VMAudioService *)self _enableStereo:error];
  }
}

- (id)_dataSourceSupportingStereo
{
  v3 = +[AVAudioSession sharedInstance];
  availableInputs = [v3 availableInputs];
  v5 = [availableInputs na_firstObjectPassingTest:&stru_10028B9D8];

  dataSources = [v5 dataSources];
  v7 = [dataSources na_filter:&stru_10028BA18];

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
    firstObject = v9;
  }

  else
  {
    firstObject = [v7 firstObject];
  }

  v12 = firstObject;

  return v12;
}

- (BOOL)_disableStereo:(id *)stereo
{
  _dataSourceSupportingStereo = [(VMAudioService *)self _dataSourceSupportingStereo];
  v5 = _dataSourceSupportingStereo;
  if (_dataSourceSupportingStereo)
  {
    v6 = [_dataSourceSupportingStereo setPreferredPolarPattern:0 error:stereo];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_enableStereo:(id *)stereo
{
  _dataSourceSupportingStereo = [(VMAudioService *)self _dataSourceSupportingStereo];
  if (!_dataSourceSupportingStereo)
  {
    if (!stereo)
    {
      goto LABEL_7;
    }

    v8 = RCVoiceMemosErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Built in mic does not support stereo";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *stereo = [NSError errorWithDomain:v8 code:1 userInfo:v9];

LABEL_6:
    LOBYTE(stereo) = 0;
    goto LABEL_7;
  }

  v6 = [(RCStereoOrientationProvider *)self->_stereoOrientationProvider preferredInputOrientationFor:_dataSourceSupportingStereo];
  if (![_dataSourceSupportingStereo setPreferredPolarPattern:AVAudioSessionPolarPatternStereo error:stereo])
  {
    goto LABEL_6;
  }

  v7 = +[AVAudioSession sharedInstance];
  LOBYTE(stereo) = [v7 setPreferredInputOrientation:v6 error:stereo];

LABEL_7:
  return stereo;
}

- (void)_deactivateAudioSessionAsync:(BOOL)async
{
  asyncCopy = async;
  currentItem = [(VMPlayer *)self->_player currentItem];
  controller = [currentItem controller];
  v7 = controller;
  if (controller && [controller currentState] == 3)
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
  if (asyncCopy)
  {
    dispatch_async(audioSessionQueue, v8);
  }

  else
  {
    dispatch_sync(audioSessionQueue, v8);
  }
}

- (void)_handleSecondaryQueueAudioSessionNotification:(id)notification
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085EE8;
  v4[3] = &unk_10028A650;
  v4[4] = self;
  notificationCopy = notification;
  v3 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_handleAudioSessionNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  userInfo = [notificationCopy userInfo];
  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[VMAudioService _handleAudioSessionNotification:]";
    v29 = 2112;
    v30 = name;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- notification received = %@", &v27, 0x16u);
  }

  if ([name isEqualToString:AVAudioSessionRouteChangeNotification])
  {
    object = [notificationCopy object];
    v9 = [userInfo objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    integerValue = [v9 integerValue];

    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B95A4(integerValue, object, v11);
    }

    if ([(VMAudioService *)self mode]!= 2 || ![(VMRecorder *)self->_recordingEngine isRunning])
    {
      goto LABEL_12;
    }

    if (integerValue <= 2)
    {
      controller = [(VMRecorder *)self->_recordingEngine controller];
      if (controller)
      {
        [(VMAudioService *)self stopRecordingWithController:controller error:0];
      }

LABEL_12:
      if (integerValue != 2 || ![(VMPlayer *)self->_player playing])
      {
        goto LABEL_35;
      }

      currentItem = [(VMPlayer *)self->_player currentItem];
      controller2 = [currentItem controller];
      [(VMAudioService *)self pausePlaying:controller2];

      goto LABEL_30;
    }

LABEL_35:

    goto LABEL_36;
  }

  if ([name isEqualToString:AVAudioSessionInterruptionNotification])
  {
    v15 = [userInfo objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    integerValue2 = [v15 integerValue];

    [(VMAudioService *)self _updateIsAudioSessionActiveForInterruption:integerValue2];
    if (integerValue2 == 1)
    {
      currentItem2 = [(VMPlayer *)self->_player currentItem];
      object = currentItem2;
      if (currentItem2)
      {
        controller3 = [currentItem2 controller];
        self->_lastInterruptionStoppedPlayer = [controller3 targetState] == 3;
      }

      else
      {
        self->_lastInterruptionStoppedPlayer = 0;
      }

      if ([(VMPlayer *)self->_player playing])
      {
        currentItem3 = [(VMPlayer *)self->_player currentItem];
        controller4 = [currentItem3 controller];
        [(VMAudioService *)self pausePlaying:controller4];
      }

      [(VMAudioService *)self _interruptRecording];
      goto LABEL_35;
    }

    v20 = [userInfo objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
    integerValue3 = [v20 integerValue];

    if ((integerValue3 & 1) != 0 && self->_lastInterruptionStoppedPlayer)
    {
      object = [(VMPlayer *)self->_player currentItem];
      currentItem = [object controller];
      [currentItem targetRate];
      [(VMAudioService *)self _startPlaybackAtRate:0 immediately:?];
      goto LABEL_30;
    }
  }

  else
  {
    if ([name isEqualToString:AVAudioSessionMediaServicesWereLostNotification])
    {
      [(VMAudioService *)self _interruptRecording];
      currentItem4 = [(VMPlayer *)self->_player currentItem];
      object = currentItem4;
      if (!currentItem4)
      {
        goto LABEL_35;
      }

      currentItem = [currentItem4 controller];
      [(VMAudioService *)self stopPlaying:currentItem];
LABEL_30:

      goto LABEL_35;
    }

    if ([name isEqualToString:AVAudioSessionMediaServicesWereResetNotification])
    {
      [(VMAudioService *)self _deactivateAudioSessionAsync:0];
      player = self->_player;
      if (player)
      {
        object = [(VMPlayer *)player currentItem];
        _createAndConfigurePlayer = [(VMAudioService *)self _createAndConfigurePlayer];
        v24 = self->_player;
        self->_player = _createAndConfigurePlayer;

        if (!object || [(VMAudioService *)self mode]!= 1)
        {
          goto LABEL_35;
        }

        currentItem = [object controller];
        [currentItem setPlayerItem:0];
        [(VMAudioService *)self startPlaying:currentItem];
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
    controller = [(VMRecorder *)self->_recordingEngine controller];
    if (controller)
    {
      v7 = 0;
      v4 = [(VMAudioService *)self stopRecordingWithController:controller error:&v7];
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

- (void)_schedulePlayback:(id)playback
{
  playbackCopy = playback;
  playerItem = [playbackCopy playerItem];
  if (playerItem)
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
    recordingID = [playbackCopy recordingID];
    v11 = [(RCApplicationModel *)recordings recordingWithUniqueID:recordingID];

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

    [playbackCopy playableRange];
    [playerItem setPlayableRangeEndTime:v15];
    [playbackCopy setCurrentState:2];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100086648;
    v18[3] = &unk_10028BAB8;
    v18[4] = self;
    v19 = playbackCopy;
    v20 = v6;
    v21 = playerItem;
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
    currentItem = [(VMPlayer *)player currentItem];
    v8 = currentItem;
    if (currentItem)
    {
      controller = [currentItem controller];
      [(VMAudioService *)self stopPlaying:controller];

      currentItem = v8;
    }

    preparingToPlayController = self->_preparingToPlayController;
    if (preparingToPlayController)
    {
      self->_preparingToPlayController = 0;
      v7 = preparingToPlayController;

      [(VMAudioService *)self stopPlaying:v7];
      currentItem = v8;
    }
  }
}

- (id)playerForRecordingID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  [v5 setRecordingID:dCopy];
  [v5 setService:self];
  [v5 setTargetState:4];
  [(VMAudioService *)self _updateNewVMAudioPlayer:v5 withPropertiesForRecordingID:dCopy];

  [(VMAudioService *)self startPlaying:v5];

  return v5;
}

- (void)_updateNewVMAudioPlayer:(id)player withPropertiesForRecordingID:(id)d
{
  playerCopy = player;
  dCopy = d;
  +[RCApplicationModel sharedApplicationModel];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100086B04;
  v11 = v10[3] = &unk_10028B058;
  v12 = dCopy;
  v13 = playerCopy;
  v7 = playerCopy;
  v8 = dCopy;
  v9 = v11;
  [v9 performBlockAndWait:v10];
}

- (id)newRecorderWithTitleBase:(id)base
{
  baseCopy = base;
  v5 = [[VMAudioRecorderImp alloc] _initWithRecordingID:0 model:self->_recordings];
  [v5 setIsNewRecording:1];
  [v5 setService:self];
  [v5 setTitleBase:baseCopy];

  return v5;
}

- (id)recorderForRecordingID:(id)d
{
  dCopy = d;
  v5 = [[VMAudioRecorderImp alloc] _initWithRecordingID:dCopy model:self->_recordings];

  [v5 setService:self];

  return v5;
}

- (VMAudioRecorder)activeAudioRecorder
{
  recordingController = [(VMAudioService *)self recordingController];
  v3 = recordingController;
  if (recordingController && [recordingController conformsToProtocol:&OBJC_PROTOCOL___VMAudioRecorder])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_assetForRecording:(id)recording error:(id *)error
{
  v5 = [RCComposition compositionLoadedForSavedRecording:recording];
  v6 = [v5 playableAsset:error];

  return v6;
}

- (BOOL)shouldWaitForAccessTokenBeforeStartingRecording:(id)recording
{
  preparingToPlayController = self->_preparingToPlayController;
  if (preparingToPlayController)
  {
    recordingCopy = recording;
    recordingID = [(VMPlaybackController *)preparingToPlayController recordingID];
    recordingID2 = [recordingCopy recordingID];

    LOBYTE(preparingToPlayController) = recordingID == recordingID2;
  }

  return preparingToPlayController;
}

- (void)startPlaying:(id)playing
{
  playingCopy = playing;
  if ([(VMAudioService *)self mode]== 2)
  {
    v24 = @"VMAudioErrorModeKey";
    v6 = [NSNumber numberWithInt:[(VMAudioService *)self mode]];
    v25 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    recordingID = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:1 userInfo:v7];

    [playingCopy setPlaybackError:recordingID];
  }

  else
  {
    if ([playingCopy targetState] == 3)
    {
      [playingCopy targetRate];
      if (v9 > 0.0)
      {
        [(VMAudioService *)self _activateAudioSessionForPlaybackWithCompletion:0];
      }
    }

    recordingID = [playingCopy recordingID];
    playerItem = [playingCopy playerItem];
    if (playerItem)
    {
      currentState = [playingCopy currentState];
      if (currentState == 4)
      {
        [playingCopy targetTime];
        v16 = v15;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100087188;
        v22[3] = &unk_10028B6A0;
        v22[4] = self;
        v23 = playingCopy;
        [playerItem seekToTime:v22 completionHandler:v16];
      }

      else if (currentState == 2)
      {
        [playingCopy targetState];
      }
    }

    else
    {
      v12 = [(RCApplicationModel *)self->_recordings recordingWithUniqueID:recordingID];
      if (v12)
      {
        if ([playingCopy currentState] != 1)
        {
          [playingCopy setCurrentState:1];
          objc_initWeak(&location, playingCopy);
          objc_storeStrong(&self->_preparingToPlayController, playing);
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

- (BOOL)pausePlaying:(id)playing
{
  playingCopy = playing;
  playerItem = [playingCopy playerItem];
  if (playerItem && ([(VMPlayer *)self->_player currentItem], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == playerItem))
  {
    [(VMPlayer *)self->_player pause];
  }

  else
  {
    [playingCopy setCurrentState:4];
  }

  return 1;
}

- (BOOL)stopPlaying:(id)playing
{
  playingCopy = playing;
  playerItem = [playingCopy playerItem];
  if (playerItem)
  {
    [playingCopy setTargetState:0];
    currentItem = [(VMPlayer *)self->_player currentItem];

    if (playerItem == currentItem)
    {
      [(VMPlayer *)self->_player replaceCurrentItemWithPlayerItem:0];
    }

    [playingCopy setPlayerItem:0];
  }

  playbackToken = [playingCopy playbackToken];
  if (playbackToken)
  {
    v8 = +[RCSSavedRecordingService sharedService];
    v13 = 0;
    v9 = [v8 endAccessSessionWithToken:playbackToken error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001B976C();
      }
    }

    [playingCopy setPlaybackToken:0];
  }

  [playingCopy setCurrentState:0];

  return 0;
}

- (BOOL)setTargetRate:(float)rate controller:(id)controller
{
  controllerCopy = controller;
  recordingID = [controllerCopy recordingID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100087658;
  v12[3] = &unk_10028BB00;
  rateCopy = rate;
  [(VMAudioService *)self _updateRecordingWithUniqueID:recordingID updateBlock:v12];

  playerItem = [controllerCopy playerItem];

  currentItem = [(VMPlayer *)self->_player currentItem];

  if (currentItem == playerItem)
  {
    *&v10 = rate;
    [(VMPlayer *)self->_player setTargetRate:v10];
  }

  return currentItem == playerItem;
}

- (BOOL)setSilenceRemoverEnabled:(BOOL)enabled controller:(id)controller
{
  enabledCopy = enabled;
  controllerCopy = controller;
  recordingID = [controllerCopy recordingID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087754;
  v11[3] = &unk_10028BB20;
  v12 = enabledCopy;
  [(VMAudioService *)self _updateRecordingWithUniqueID:recordingID updateBlock:v11];

  playerItem = [controllerCopy playerItem];

  currentItem = [(VMPlayer *)self->_player currentItem];

  if (currentItem == playerItem)
  {
    [(VMPlayer *)self->_player setSilenceRemoverEnabled:enabledCopy];
  }

  return currentItem == playerItem;
}

- (BOOL)setSpeechIsolatorEnabled:(BOOL)enabled controller:(id)controller
{
  recordingID = [controller recordingID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100087804;
  v8[3] = &unk_10028BB20;
  enabledCopy = enabled;
  [(VMAudioService *)self _updateRecordingWithUniqueID:recordingID updateBlock:v8];

  return 1;
}

- (BOOL)setSpeechIsolatorValue:(float)value controller:(id)controller
{
  recordingID = [controller recordingID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000878B4;
  v8[3] = &unk_10028BB00;
  valueCopy = value;
  [(VMAudioService *)self _updateRecordingWithUniqueID:recordingID updateBlock:v8];

  return 1;
}

- (void)_updateRecordingWithUniqueID:(id)d updateBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  recordings = self->_recordings;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087984;
  v11[3] = &unk_10028A538;
  v11[4] = self;
  v12 = dCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dCopy;
  [(RCApplicationModel *)recordings performBlockAndWait:v11];
}

- (void)_startPlaybackAtRate:(float)rate immediately:(BOOL)immediately
{
  player = self->_player;
  if (player)
  {
    regulatoryLogger = self->_regulatoryLogger;
    v8 = player;
    [(RCRegulatoryLogger *)regulatoryLogger readingAudioData];
    *&v7 = rate;
    [(VMPlayer *)v8 setTargetRate:v7];
    [(VMPlayer *)v8 play];
  }
}

- (BOOL)setTime:(double)time controller:(id)controller
{
  controllerCopy = controller;
  playerItem = [controllerCopy playerItem];
  v8 = self->_player;
  v9 = v8;
  if (playerItem && ([(VMPlayer *)v8 currentItem], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == playerItem))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100087B94;
    v13[3] = &unk_10028BB48;
    v14 = v9;
    v15 = playerItem;
    v16 = controllerCopy;
    timeCopy = time;
    [v15 seekToTime:v13 completionHandler:time];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_closestAllowedSampleRate:(double)rate allowedSampleRates:(id)rates
{
  ratesCopy = rates;
  v6 = ratesCopy;
  if (ratesCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [ratesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          v15 = vabdd_f64(rate, v14);
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

  else if (rate <= 384000.0)
  {
    v9 = [NSNumber numberWithDouble:rate];
  }

  else
  {
    v9 = &off_10029ACE8;
  }

  return v9;
}

- (id)_newRecordingEngine:(id)engine metadata:(id)metadata controller:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error
{
  spatialCopy = spatial;
  engineCopy = engine;
  metadataCopy = metadata;
  controllerCopy = controller;
  if (spatialCopy)
  {
    v15 = [[_TtC10VoiceMemos17RCSpatialRecorder alloc] initWithOutputFileURL:engineCopy outputFileSettings:&__NSDictionary0__struct];
    [(RCSpatialRecorder *)v15 setController:controllerCopy];
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
      v18 = [v17 initForWriting:engineCopy settings:v29[5] error:error];
      if (!v18)
      {
        goto LABEL_10;
      }

      if (metadataCopy)
      {
        v19 = [RCCaptureFormat AVAssetAuthoringMetadataWithRecordingMetadata:metadataCopy];
        [v18 setMetadata:v19];
      }

      if ([v18 startWritingAudioFile:error] && (objc_msgSend(v35[5], "setAssetWriter:", v18), objc_msgSend(v35[5], "setController:", controllerCopy), objc_msgSend(v35[5], "configureWithAudioSettings:error:", v29[5], error)))
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
      if (error)
      {
        *error = v23[5];
      }
    }

    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  return v15;
}

- (void)_playStartRecordingSoundEffectThenStartRecording:(id)recording controller:(id)controller
{
  recordingCopy = recording;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000883D8;
  v9[3] = &unk_10028B058;
  controllerCopy = controller;
  selfCopy = self;
  v12 = recordingCopy;
  v7 = recordingCopy;
  v8 = controllerCopy;
  [VMAudioService playStartRecordingSoundEffect:v9];
}

- (void)startRecordingWithController:(id)controller
{
  controllerCopy = controller;
  if ([(VMAudioService *)self mode]== 2)
  {
    controller = [(VMRecorder *)self->_recordingEngine controller];

    if (controller == controllerCopy)
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

    [controllerCopy setRecordingError:v8];
  }

  else
  {
    v16 = 0;
    v9 = [RCApplicationFileCoordinator createCaptureDirectoryAndReturnError:&v16];
    v8 = v16;
    if (v9)
    {
      [controllerCopy setInitialCaptureToken:v9];
      uuid = [v9 uuid];
      uUIDString = [uuid UUIDString];
      [controllerCopy setRecordingID:uUIDString];

      v12 = objc_alloc_init(RCActivityWaveformProcessor);
      [controllerCopy setActivityWaveformProcessor:v12];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008876C;
      v14[3] = &unk_10028BB98;
      v14[4] = self;
      v15 = controllerCopy;
      [(VMAudioService *)self _activateAudioSessionForRecordingWithController:v15 completion:v14];
    }

    else
    {
      v13 = OSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9854();
      }

      [controllerCopy setRecordingError:v8];
    }
  }
}

- (BOOL)_startRecordingWithController:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error
{
  spatialCopy = spatial;
  controllerCopy = controller;
  v9 = +[NSDate date];
  v10 = &RCAudioFileExtensionQTA;
  if (!spatialCopy)
  {
    v10 = &RCAudioFileExtensionM4A;
  }

  v30 = *v10;
  v11 = [RCSavedRecordingsModel standardURLForRecordingWithCreationDate:v9 fileExtension:?];
  [controllerCopy setRecordingURL:v11];
  [controllerCopy setRecordingDate:v9];
  waveformDataSource = [controllerCopy waveformDataSource];

  if (!waveformDataSource)
  {
    targetTrackIndex = [controllerCopy targetTrackIndex];
    recordingURL = [controllerCopy recordingURL];
    v15 = [RCWaveform waveformURLForAVURL:recordingURL trackIndex:targetTrackIndex];

    v16 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:targetTrackIndex trackIndex:0.0];
    v17 = [[RCWaveformDataSource alloc] initWithWaveformGenerator:v16 generatedWaveformOutputURL:v15 trackIndex:targetTrackIndex];
    [v17 beginLoading];
    [controllerCopy setWaveformDataSource:v17];
  }

  initialCaptureToken = [controllerCopy initialCaptureToken];
  directoryURL = [initialCaptureToken directoryURL];
  lastPathComponent = [v11 lastPathComponent];
  v21 = [directoryURL URLByAppendingPathComponent:lastPathComponent];

  v35[0] = @"date";
  v35[1] = @"uniqueID";
  v36[0] = v9;
  recordingID = [controllerCopy recordingID];
  v36[1] = recordingID;
  v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  v24 = [(VMAudioService *)self _newRecordingEngine:v21 metadata:v23 controller:controllerCopy shouldCaptureSpatial:spatialCopy error:error];
  if (v24)
  {
    objc_storeStrong(&self->_recordingEngine, v24);
    [(VMAudioService *)self setMode:2];
    [controllerCopy setCurrentState:2];
    group = [(VMRecorder *)self->_recordingEngine group];
    dispatch_group_enter(group);
    waveformDataSource2 = [controllerCopy waveformDataSource];
    v27 = waveformDataSource2 == 0;

    if (!v27)
    {
      dispatch_group_enter(group);
    }

    recordingID2 = [controllerCopy recordingID];
    [(VMAudioService *)self _playStartRecordingSoundEffectThenStartRecording:recordingID2 controller:controllerCopy];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100088BF4;
    block[3] = &unk_10028A9B0;
    block[4] = self;
    v32 = v21;
    v33 = v11;
    v34 = controllerCopy;
    dispatch_group_notify(group, &_dispatch_main_q, block);
  }

  return 0;
}

- (void)_createCloudRecordingForRecordingWithController:(id)controller duration:(double)duration recordingURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  recordings = self->_recordings;
  recordingID = [controllerCopy recordingID];
  v12 = [(RCApplicationModel *)recordings recordingWithUniqueID:recordingID];

  if (v12)
  {
LABEL_4:
    [v12 length];
    if (v19 != duration || ([v12 fileName], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
    {
      lastPathComponent = [lCopy lastPathComponent];
      [v12 setFileName:lastPathComponent];

      [v12 setLength:duration];
      [v12 setPlayable:1];
      [(RCApplicationModel *)self->_recordings saveIfNecessary];
      [RCAnalyticsUtilities sendNewRecordingDuration:duration];
    }

    goto LABEL_10;
  }

  v13 = self->_recordings;
  path = [lCopy path];
  recordingDate = [controllerCopy recordingDate];
  titleBase = [controllerCopy titleBase];
  recordingID2 = [controllerCopy recordingID];
  v23 = 0;
  v12 = [(RCApplicationModel *)v13 insertRecordingWithAudioFile:path duration:recordingDate date:titleBase customTitleBase:recordingID2 uniqueID:&v23 error:duration];
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

- (BOOL)stopRecording:(id)recording error:(id *)error
{
  recordingCopy = recording;
  RCCurrentMediaTime();
  LOBYTE(error) = [(VMAudioService *)self stopRecording:recordingCopy atTime:error error:?];

  return error;
}

- (BOOL)stopRecording:(id)recording atTime:(double)time error:(id *)error
{
  recordingCopy = recording;
  if ([(VMAudioService *)self mode]== 2)
  {
    v9 = self->_recordingEngine;
    v10 = v9;
    if (v9)
    {
      controller = [(VMRecorder *)v9 controller];
      recordingID = [controller recordingID];
      v13 = [recordingID isEqualToString:recordingCopy];

      if (v13)
      {
        currentState = [controller currentState];
        if (currentState && currentState != 3)
        {
          [controller setCurrentState:3];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10008927C;
          v17[3] = &unk_10028B058;
          v17[4] = self;
          v18 = v10;
          v19 = controller;
          [v18 stopRecordingAtTime:v17 completion:time];
        }
      }

      else if (error)
      {
        *error = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
      }

      goto LABEL_16;
    }

    if (error)
    {
      [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:3 userInfo:0];
      *error = v13 = 0;
      goto LABEL_16;
    }

LABEL_9:
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (error)
  {
    v20 = @"VMAudioErrorModeKey";
    v10 = [NSNumber numberWithInt:[(VMAudioService *)self mode]];
    v21 = v10;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:1 userInfo:v15];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)stopRecordingWithController:(id)controller error:(id *)error
{
  controllerCopy = controller;
  RCCurrentMediaTime();
  LOBYTE(error) = [(VMAudioService *)self stopRecordingWithController:controllerCopy atTime:error error:?];

  return error;
}

- (BOOL)stopRecordingWithController:(id)controller atTime:(double)time error:(id *)error
{
  controllerCopy = controller;
  controller = [(VMRecorder *)self->_recordingEngine controller];

  if (controller == controllerCopy)
  {
    recordingID = [controllerCopy recordingID];
    v10 = [(VMAudioService *)self stopRecording:recordingID atTime:error error:time];
  }

  else if (error)
  {
    [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchRecording:(id)recording recordingController:(id)controller
{
  recordingCopy = recording;
  controllerCopy = controller;
  v8 = [(RCApplicationModel *)self->_recordings recordingWithUniqueID:recordingCopy];
  v9 = v8;
  if (controllerCopy && !v8)
  {
    recordingID = [controllerCopy recordingID];
    v11 = [recordingID isEqualToString:recordingCopy];

    if (v11)
    {
      recordings = self->_recordings;
      recordingDate = [controllerCopy recordingDate];
      titleBase = [controllerCopy titleBase];
      v18 = 0;
      v9 = [(RCApplicationModel *)recordings insertRecordingWithAudioFile:0 duration:recordingDate date:titleBase customTitleBase:recordingCopy uniqueID:&v18 error:0.0];
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

- (id)fetchRecording:(id)recording
{
  recordingEngine = self->_recordingEngine;
  recordingCopy = recording;
  controller = [(VMRecorder *)recordingEngine controller];
  v7 = [(VMAudioService *)self _fetchRecording:recordingCopy recordingController:controller];

  return v7;
}

- (BOOL)isRecordingEnabled:(id *)enabled
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

    if (enabled)
    {
      *enabled = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:5 userInfo:v10];
    }
  }

  _Block_object_dispose(&v13, 8);
  return v5 == 0;
}

+ (void)playStartRecordingSoundEffect:(id)effect
{
  inCompletionBlock[0] = _NSConcreteStackBlock;
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = sub_100089B88;
  inCompletionBlock[3] = &unk_10028A510;
  effectCopy = effect;
  v3 = effectCopy;
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

- (BOOL)sampleRecordingTime:(double *)time
{
  if (self->_mode == 2)
  {
    return [(VMRecorder *)self->_recordingEngine sampleRecordingTime:time];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_popFileVersion:(id)version error:(id *)error
{
  versionCopy = version;
  v6 = [NSFileVersion otherVersionsOfItemAtURL:versionCopy];
  lastObject = [v6 lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    v9 = [lastObject replaceItemAtURL:versionCopy options:1 error:error];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 isEqual:versionCopy];
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

- (BOOL)__refreshRecording:(id)recording composition:(id)composition controller:(id)controller
{
  recordingCopy = recording;
  compositionCopy = composition;
  controllerCopy = controller;
  [compositionCopy composedDuration];
  v12 = v11;
  [controllerCopy setRecordingComposition:compositionCopy];
  [controllerCopy setCurrentDuration:v12];
  v13 = +[NSFileManager defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  composedWaveformURLs = [compositionCopy composedWaveformURLs];
  v15 = [composedWaveformURLs countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(composedWaveformURLs);
        }

        [v13 removeItemAtURL:*(*(&v28 + 1) + 8 * v18) error:0];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [composedWaveformURLs countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  [recordingCopy setLength:v12];
  composedFragments = [compositionCopy composedFragments];
  v20 = [composedFragments count];

  if (!v20)
  {
    [recordingCopy setPlayable:1];
  }

  liveTranscription = [controllerCopy liveTranscription];
  [liveTranscription refreshWithComposition:compositionCopy];

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

    [controllerCopy setRecordingError:v24];
  }

  return v23;
}

- (BOOL)refreshRecording:(id)recording controller:(id)controller
{
  controllerCopy = controller;
  v7 = [(VMAudioService *)self fetchRecording:recording];
  if (!v7)
  {
    goto LABEL_9;
  }

  player = self->_player;
  if (player)
  {
    currentItem = [(VMPlayer *)player currentItem];
    v10 = currentItem;
    if (currentItem)
    {
      controller = [currentItem controller];
      recordingID = [controller recordingID];
      recordingID2 = [controllerCopy recordingID];
      v14 = [recordingID isEqual:recordingID2];

      if (v14)
      {
        controller2 = [v10 controller];
        [(VMAudioService *)self stopPlaying:controller2];
      }
    }
  }

  v16 = [RCComposition compositionLoadedForSavedRecording:v7];
  if (v16)
  {
    v17 = v16;
    v18 = [(VMAudioService *)self __refreshRecording:v7 composition:v16 controller:controllerCopy];
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (void)__eraseSecondLayerInComposition:(id)composition outputFragment:(id)fragment completionBlock:(id)block
{
  compositionCopy = composition;
  fragmentCopy = fragment;
  blockCopy = block;
  [fragmentCopy timeRangeInComposition];
  v10 = [compositionCopy newRandomFragmentWithInsertionTimeRangeInComposition:1 trackIndex:RCAudioFileExtensionM4A pathExtension:?];
  v11 = [v10 mutableCopy];

  [fragmentCopy contentDuration];
  [v11 setContentDuration:?];
  [fragmentCopy timeRangeInContentToUse];
  [v11 setTimeRangeInContentToUse:?];
  aVOutputURL = [v11 AVOutputURL];
  v13 = +[VMAudioService compressedAudioSettings];
  v14 = [v13 mutableCopy];

  [v14 setObject:&off_10029AAF0 forKeyedSubscript:AVSampleRateKey];
  [v14 setObject:&off_10029AB08 forKeyedSubscript:AVNumberOfChannelsKey];
  v39 = 0;
  v15 = [[RCAssetWriter alloc] initForWriting:aVOutputURL settings:v14 error:&v39];
  v16 = v39;
  if (v15)
  {
    v33 = aVOutputURL;
    processingFormat = [v15 processingFormat];
    v18 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:processingFormat frameCapacity:0x2000];
    [v18 setFrameLength:0x2000];
    [v11 contentDuration];
    v20 = v19;
    v32 = processingFormat;
    [processingFormat sampleRate];
    v22 = v21;
    v38 = v16;
    LODWORD(processingFormat) = [v15 startWritingAudioFile:&v38];
    v23 = v38;

    if (processingFormat)
    {
      v30 = blockCopy;
      v31 = compositionCopy;
      v24 = (v20 * v22);
      if (!v24)
      {
LABEL_9:
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10008A3C8;
        v34[3] = &unk_10028BC38;
        blockCopy = v30;
        v36 = v30;
        v35 = v11;
        [v15 finishWritingAudioFile:v34];

        compositionCopy = v31;
LABEL_17:
        aVOutputURL = v33;

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
      compositionCopy = v31;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9C68();
      }

      blockCopy = v30;
    }

    else
    {
      v28 = OSLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9BF4();
      }
    }

    (*(blockCopy + 2))(blockCopy, 0, v23);
    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)_mergeRecording:(id)recording atTime:(double)time controller:(id)controller shouldCaptureSpatial:(BOOL)spatial error:(id *)error
{
  spatialCopy = spatial;
  recordingCopy = recording;
  controllerCopy = controller;
  v55 = recordingCopy;
  v14 = [(VMAudioService *)self fetchRecording:recordingCopy];
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
      selfCopy = self;
      v51 = objc_retainBlock(v74);
      recordingComposition = [controllerCopy recordingComposition];
      if (recordingComposition)
      {
        goto LABEL_9;
      }

      v18 = [VMRecordingAssetsBackup alloc];
      [v15 length];
      v73 = 0;
      v19 = [(VMRecordingAssetsBackup *)v18 initWithComposedAVURL:v56 duration:&v73 error:?];
      v20 = v73;
      [controllerCopy setAssetBackup:v19];

      assetBackup = [controllerCopy assetBackup];
      LODWORD(v19) = assetBackup == 0;

      if (v19)
      {
        v22 = OSLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9CDC();
        }
      }

      recordingComposition = [RCComposition compositionLoadedForEditingSavedRecording:v15 error:error];
      [controllerCopy setRecordingComposition:recordingComposition];

      if (recordingComposition)
      {
LABEL_9:
        [recordingComposition composedDuration];
        v24 = v23;
        [controllerCopy setCurrentDuration:?];
        if (v24 < time)
        {
          time = v24;
        }

        [controllerCopy setRecordingURL:v56];
        targetTrackIndex = [controllerCopy targetTrackIndex];
        v26 = &RCAudioFileExtensionQTA;
        if (!spatialCopy)
        {
          v26 = &RCAudioFileExtensionM4A;
        }

        v48 = *v26;
        RCTimeRangeMake();
        v27 = [recordingComposition newRandomFragmentWithInsertionTimeRangeInComposition:targetTrackIndex trackIndex:v48 pathExtension:?];
        v28 = [v27 mutableCopy];

        aVOutputURL = [v28 AVOutputURL];
        v29 = +[NSFileManager defaultManager];
        [v29 removeItemAtURL:aVOutputURL error:0];

        waveformDataSource = [controllerCopy waveformDataSource];
        v31 = waveformDataSource;
        if (waveformDataSource && ([waveformDataSource finished] & 1) == 0)
        {
          [v31 cancelLoading];
        }

        v50 = [[RCCaptureInputWaveformDataSource alloc] initWithDestinationComposition:recordingComposition destinationFragment:v28 trackIndex:targetTrackIndex];
        [controllerCopy setWaveformDataSource:v50];
        [v50 beginLoading];
        [controllerCopy setCurrentTime:time];
        v46 = v31;
        v49 = [RCComposition mergeCaptureFragmentMetadataURLForComposedAVURL:v56];
        dictionaryPListRepresentation = [v28 dictionaryPListRepresentation];
        v72 = 0;
        v33 = [dictionaryPListRepresentation writeToURL:v49 error:&v72];
        v47 = v72;

        if ((v33 & 1) == 0)
        {
          v34 = OSLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1001B9D50();
          }
        }

        v35 = [(VMAudioService *)self _newRecordingEngine:aVOutputURL metadata:0 controller:controllerCopy shouldCaptureSpatial:spatialCopy error:error];
        v36 = v35 != 0;
        if (v35)
        {
          objc_storeStrong(&self->_recordingEngine, v35);
          [(VMAudioService *)self setMode:3];
          [controllerCopy setRecordingAccessToken:v16];

          v37 = &_dispatch_main_q;
          group = [v35 group];
          dispatch_group_enter(group);
          [(VMAudioService *)self setMode:2];
          [controllerCopy setRecordingID:v55];
          [controllerCopy setCurrentState:2];
          [v35 setPunchInTime:time];
          [(VMAudioService *)self _playStartRecordingSoundEffectThenStartRecording:v55 controller:controllerCopy];
          group = group;
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_10008AC90;
          v68[3] = &unk_10028BC88;
          v71 = v51;
          v39 = controllerCopy;
          v69 = v39;
          selfCopy2 = self;
          v40 = objc_retainBlock(v68);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008AD14;
          block[3] = &unk_10028BD28;
          block[4] = self;
          v58 = aVOutputURL;
          v66 = v40;
          timeCopy = time;
          v59 = v28;
          v60 = v56;
          v61 = recordingComposition;
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

      if (error)
      {
        v43 = v53;
        v36 = 0;
        *error = v53;
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

- (void)replaceRecording:(id)recording atTime:(double)time controller:(id)controller
{
  recordingCopy = recording;
  controllerCopy = controller;
  v10 = objc_alloc_init(RCActivityWaveformProcessor);
  [controllerCopy setActivityWaveformProcessor:v10];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008B3E0;
  v13[3] = &unk_10028BD50;
  v13[4] = self;
  v14 = recordingCopy;
  timeCopy = time;
  v15 = controllerCopy;
  v11 = controllerCopy;
  v12 = recordingCopy;
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

- (BOOL)_editRecording:(id)recording editBlock:(id)block controller:(id)controller error:(id *)error
{
  recordingCopy = recording;
  blockCopy = block;
  controllerCopy = controller;
  [(VMAudioService *)self _shutdownPlaybackEngine];
  v12 = [(VMAudioService *)self fetchRecording:recordingCopy];
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

      if (error)
      {
        v27 = v29;
        v25 = 0;
        *error = v29;
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
    recordingComposition = [controllerCopy recordingComposition];
    if (!recordingComposition)
    {
      v17 = [VMRecordingAssetsBackup alloc];
      [v12 length];
      v32 = 0;
      v18 = [(VMRecordingAssetsBackup *)v17 initWithComposedAVURL:v30 duration:&v32 error:?];
      v19 = v32;
      [controllerCopy setAssetBackup:v18];

      assetBackup = [controllerCopy assetBackup];
      LODWORD(v18) = assetBackup == 0;

      if (v18)
      {
        v21 = OSLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1001B9E38();
        }
      }

      recordingComposition = [RCComposition compositionLoadedForEditingSavedRecording:v12 error:error, v29];
      if (!recordingComposition)
      {

        v22 = 0;
        goto LABEL_21;
      }

      [controllerCopy setRecordingComposition:recordingComposition];
    }

    v22 = blockCopy[2](blockCopy, recordingComposition, v12, error);

    if (v22)
    {
      v23 = [RCComposition compositionMetadataURLForComposedAVURL:v30];
      v24 = [(VMAudioService *)self _pushFileVersion:v23 error:error];

      [v22 saveMetadataToDefaultLocation];
      v25 = [(VMAudioService *)self __refreshRecording:v12 composition:v22 controller:controllerCopy];
LABEL_22:

      (v15[2])(v15, v14);
LABEL_23:

      goto LABEL_24;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  if (error)
  {
    [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:4 userInfo:0];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_24:

  return v25;
}

- (BOOL)trimRecording:(id)recording timeRange:(id)range controller:(id)controller error:(id *)error
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008BB00;
  v16 = &unk_10028BD98;
  rangeCopy = range;
  controllerCopy = controller;
  recordingCopy = recording;
  v11 = objc_retainBlock(&v13);
  LOBYTE(error) = [(VMAudioService *)self _editRecording:recordingCopy editBlock:v11 controller:controllerCopy error:error, v13, v14, v15, v16, *&rangeCopy.var0, *&rangeCopy.var1];

  return error;
}

- (BOOL)cutRecording:(id)recording timeRange:(id)range controller:(id)controller error:(id *)error
{
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10008BBDC;
  v16 = &unk_10028BD98;
  rangeCopy = range;
  controllerCopy = controller;
  recordingCopy = recording;
  v11 = objc_retainBlock(&v13);
  LOBYTE(error) = [(VMAudioService *)self _editRecording:recordingCopy editBlock:v11 controller:controllerCopy error:error, v13, v14, v15, v16, *&rangeCopy.var0, *&rangeCopy.var1];

  return error;
}

- (id)finalizeRecording:(id)recording controller:(id)controller saveAsNew:(BOOL)new
{
  recordingCopy = recording;
  controllerCopy = controller;
  recordingComposition = [controllerCopy recordingComposition];
  if (new)
  {
    v11 = 1;
LABEL_17:
    v16 = [(VMAudioService *)self _finalizeRecording:recordingCopy controller:controllerCopy finalizationStrategy:v11];
    goto LABEL_18;
  }

  v12 = [(VMAudioService *)self fetchRecording:recordingCopy];
  if (v12)
  {
    v13 = v12;
    if ([recordingComposition hasMultipleTracks])
    {
      v14 = [v13 canUpdateWithMultiTrackAsset] ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if ([recordingComposition hasSpatialAudio])
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

- (id)_finalizeRecording:(id)recording controller:(id)controller finalizationStrategy:(int)strategy
{
  recordingCopy = recording;
  controllerCopy = controller;
  [(VMAudioService *)self _deactivateAudioSessionAsync:1];
  v10 = strategy - 1;
  recordingComposition = [controllerCopy recordingComposition];
  if (!recordingComposition)
  {
    if (v10 > 1)
    {
      uuid = 0;
    }

    else
    {
      v14 = [(VMAudioService *)self _duplicateRecordingWithID:recordingCopy];
      uuid = [v14 uuid];
    }

    v13 = uuid;
    goto LABEL_29;
  }

  v12 = [(VMAudioService *)self fetchRecording:recordingCopy];
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

  if (v10 < 2 || ![(VMAudioService *)self attemptSingleFragmentFinalization:recordingComposition recording:v12 controller:controllerCopy])
  {
    v16 = [v12 url];
    v17 = controllerCopy;
    v18 = v17;
    if (v10 > 1)
    {
      recordingID = 0;
    }

    else
    {
      assetBackup = [v17 assetBackup];
      if (assetBackup)
      {
        v32 = 0;
        v28 = assetBackup;
        v20 = [(VMAudioService *)self _saveAsNew:v12 withAssetBackup:assetBackup editedComposition:recordingComposition replacingOriginal:strategy == 2 error:&v32];
        v29 = v32;
        if (v20)
        {
          uuid2 = [v20 uuid];
          [v18 setRecordingID:uuid2];

          v27 = [v20 url];

          recordingID = [v18 recordingID];
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

          recordingID = 0;
        }

        assetBackup = v28;
        v24 = v29;
      }

      else
      {
        v24 = OSLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1001BA014();
        }

        recordingID = 0;
      }
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10008C088;
    v30[3] = &unk_10028BDC0;
    v31 = v18;
    v25 = v18;
    [(VMAudioService *)self _mixDownEditedRecording:v16 completion:v30];
    v13 = recordingID;

LABEL_27:
    goto LABEL_28;
  }

  v13 = 0;
LABEL_28:

LABEL_29:

  return v13;
}

- (id)_duplicateRecordingWithID:(id)d
{
  v4 = [(VMAudioService *)self fetchRecording:d];
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

- (void)_restoreOriginalRecording:(id)recording andComposition:(id)composition forFailedRecording:(id)failedRecording
{
  recordingCopy = recording;
  compositionCopy = composition;
  failedRecordingCopy = failedRecording;
  if (failedRecordingCopy)
  {
    [(RCApplicationModel *)self->_recordings eraseRecording:failedRecordingCopy];
  }

  if (compositionCopy)
  {
    v11 = [recordingCopy url];
    uuid = [recordingCopy uuid];
    v16 = 0;
    v13 = [compositionCopy moveTo:v11 recordingID:uuid error:&v16];
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

- (id)_saveAsNew:(id)new withAssetBackup:(id)backup editedComposition:(id)composition replacingOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  newCopy = new;
  backupCopy = backup;
  compositionCopy = composition;
  if (originalCopy)
  {
    [newCopy creationDate];
  }

  else
  {
    +[NSDate now];
  }
  v14 = ;
  recordings = self->_recordings;
  v53 = 0;
  v16 = [(RCApplicationModel *)recordings duplicateRecording:newCopy copyingResources:0 creationDate:v14 error:&v53];
  v17 = v53;
  v18 = v17;
  if (!v16)
  {
    v40 = 0;
    goto LABEL_25;
  }

  v46 = originalCopy;
  v47 = v17;
  selfCopy = self;
  v49 = v14;
  v50 = backupCopy;
  creationDate = [v16 creationDate];
  uuid = [v16 uuid];
  [compositionCopy composedAVURL];
  v22 = v21 = compositionCopy;
  pathExtension = [v22 pathExtension];
  v24 = [RCSavedRecordingsModel standardPathForRecordingWithCreationDate:creationDate uniqueID:uuid fileExtension:pathExtension];
  v25 = [NSURL fileURLWithPath:v24];

  compositionCopy = v21;
  uuid2 = [v16 uuid];
  v51 = v25;
  v27 = [v21 moveTo:v25 recordingID:uuid2 error:error];

  if (v27)
  {
    backupCopy = v50;
    composedAVURLBackup = [v50 composedAVURLBackup];
    v29 = [newCopy url];
    v30 = composedAVURLBackup;
    v31 = +[NSFileManager defaultManager];
    *buf = 0;
    v32 = [v31 moveItemAtURL:v30 toURL:v29 error:buf];

    v33 = *buf;
    v34 = v33;
    if (v32)
    {

      compositionCopy = v21;
LABEL_8:
      [backupCopy originalDuration];
      [newCopy setLength:?];
      lastPathComponent = [v51 lastPathComponent];
      [v16 setFileName:lastPathComponent];

      v14 = v49;
      v18 = v47;
      if (v46)
      {
        v36 = OSLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          uuid3 = [newCopy uuid];
          uuid4 = [v16 uuid];
          *buf = 136315650;
          *&buf[4] = "[VMAudioService _saveAsNew:withAssetBackup:editedComposition:replacingOriginal:error:]";
          v55 = 2112;
          v56 = uuid3;
          v57 = 2112;
          v58 = uuid4;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s -- Migrating uniqueID %@ to multitrack with uniqueID %@", buf, 0x20u);
        }

        title = [newCopy title];
        [v16 setTitle:title];

        [(RCApplicationModel *)selfCopy->_recordings eraseRecording:newCopy];
      }

      [(RCApplicationModel *)selfCopy->_recordings saveIfNecessary];
      v40 = v16;
      goto LABEL_24;
    }

    v41 = v33;
    domain = [v41 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      v43 = [v41 code] == 516;
    }

    else
    {
      v43 = 0;
    }

    if (!error || v43)
    {

      backupCopy = v50;
      compositionCopy = v21;
      if (v43)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v44 = v41;
      *error = v41;

      backupCopy = v50;
      compositionCopy = v21;
    }

    [(VMAudioService *)selfCopy _restoreOriginalRecording:newCopy andComposition:v27 forFailedRecording:v16];
    v40 = 0;
  }

  else
  {
    [(VMAudioService *)selfCopy _restoreOriginalRecording:newCopy andComposition:0 forFailedRecording:v16];
    v40 = 0;
    backupCopy = v50;
  }

  v14 = v49;
  v18 = v47;
LABEL_24:

LABEL_25:

  return v40;
}

- (BOOL)attemptSingleFragmentFinalization:(id)finalization recording:(id)recording controller:(id)controller
{
  finalizationCopy = finalization;
  recordingCopy = recording;
  controllerCopy = controller;
  composedFragments = [finalizationCopy composedFragments];
  if ([composedFragments count] == 1)
  {
    firstObject = [composedFragments firstObject];
    [firstObject contentDuration];
    v14 = v13;
    [firstObject timeRangeInComposition];
    RCTimeRangeDeltaWithExactPrecision();
    if (v14 == v15)
    {
      v16 = +[NSFileManager defaultManager];
      aVOutputURL = [firstObject AVOutputURL];
      composedAVURL = [finalizationCopy composedAVURL];
      v26 = 0;
      v19 = [v16 moveItemAtURL:aVOutputURL toURL:composedAVURL error:&v26];
      v25 = v26;

      if (v19)
      {
        v20 = [finalizationCopy mutableCopy];
        [v20 setDecomposedFragments:&__NSArray0__struct];
        [v20 saveMetadataToDefaultLocation];
        v21 = [(VMAudioService *)self __refreshRecording:recordingCopy composition:v20 controller:controllerCopy];

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

        [controllerCopy setRecordingError:v25];
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

- (void)_mixDownEditedRecording:(id)recording completion:(id)completion
{
  completionCopy = completion;
  recordingCopy = recording;
  [(VMAudioService *)self setEditingStatus:1];
  +[RCSSavedRecordingService sharedService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008CA7C;
  v11 = v10[3] = &unk_10028BDE8;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = v11;
  [v9 prepareToExportCompositionAVURL:recordingCopy accessRequestHandler:v10];
}

- (BOOL)forceCloseActiveRecordingAssetWriter:(id *)writer
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

  v7 = [(VMRecorder *)v5 handleWillTerminate:writer];
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