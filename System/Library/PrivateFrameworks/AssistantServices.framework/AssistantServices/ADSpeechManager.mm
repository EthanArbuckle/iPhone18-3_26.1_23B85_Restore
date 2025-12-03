@interface ADSpeechManager
+ (id)_ADSpeechManagerLowPriorityDispatchQueue;
+ (id)sharedManager;
- (BOOL)_endSessionIfIdle;
- (BOOL)_releaseSession;
- (BOOL)_supportsVolumeService;
- (BOOL)isCapturing;
- (BOOL)isLocallyRecognizing;
- (BOOL)isLocallyRecognizingInDictationMode;
- (BOOL)isStopped;
- (id)_currentSpeechCaptureSource;
- (id)_initWithInstanceContext:(id)context;
- (id)_interactiveLocalSpeechRecognizer;
- (id)_recordingInfo;
- (id)_speechCompressor;
- (id)_speechRecorder;
- (id)_startFixedPriorityCaptureForMode:(int64_t)mode options:(id)options sessionUUID:(id)d;
- (id)_volumeService;
- (id)getRecordingInfo;
- (id)startSpeechCaptureForDictationWithOptions:(id)options sessionUUID:(id)d secureOfflineOnly:(BOOL)only;
- (id)startSpeechCaptureForRequestWithOptions:(id)options sessionUUID:(id)d language:(id)language;
- (void)_addRecordStoppedCompletion:(id)completion;
- (void)_cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:(id)completion;
- (void)_cancelRecordingWithError:(id)error suppressAlert:(BOOL)alert;
- (void)_cleanUpDelegateInfo;
- (void)_fetchSmartSiriVolumeForType:(unint64_t)type forceFetch:(BOOL)fetch;
- (void)_getAdjustedSiriOutputVolumeLevelForAudioRoute:(id)route withCompletion:(id)completion;
- (void)_lastAudioBufferReceivedWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics;
- (void)_prepareAudioSystemWithContext:(id)context audioSessionAssertion:(id)assertion completion:(id)completion;
- (void)_recordingStoppedWithError:(id)error totalPacketCount:(int64_t)count endpointMode:(int64_t)mode endpointerMetrics:(id)metrics;
- (void)_startCaptureForMode:(int64_t)mode options:(id)options context:(id)context;
- (void)_stopSpeechCaptureWithOptions:(id)options;
- (void)_tellDelegateAboutFingerprint:(id)fingerprint duration:(double)duration;
- (void)_tellDelegateAboutInputAveragePower:(float)power peak:(float)peak;
- (void)_tellDelegateAboutSpeechPackets:(id)packets atTimestamp:(double)timestamp count:(int64_t)count;
- (void)_tellDelegateAudioFileDidFinish:(id)finish error:(id)error;
- (void)_tellDelegateDidDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident;
- (void)_tellDelegateDidSetAudioSessionActive:(BOOL)active;
- (void)_tellDelegateEndpointWasDelayedForMusic;
- (void)_tellDelegateMusicWasDetected;
- (void)_tellDelegateQuickStopWasRequested;
- (void)_tellDelegateShutdownUIWasRequested;
- (void)_tellDelegateSpeechCanceled;
- (void)_tellDelegateSpeechEndpointWasDetectedAtTime:(double)time;
- (void)_tellDelegateSpeechFailedWithError:(id)error;
- (void)_tellDelegateSpeechFinished;
- (void)_tellDelegateSpeechReceivedLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics;
- (void)_tellDelegateSpeechRecognitionUpdateWillBegin;
- (void)_tellDelegateSpeechShouldPreheatWithRecordingInfo:(id)info;
- (void)_tellDelegateSpeechStartedWithRecordingInfo:(id)info;
- (void)_tellDelegateSpeechStartpointWasDetectedAtTime:(double)time;
- (void)_tellDelegateSpeechWillBeginWithTimestamp:(double)timestamp isFromFile:(BOOL)file isAudioPowerUpdateDisabled:(BOOL)disabled;
- (void)_tellDelegateSpeechWillStopRecordingWithSignpostID:(unint64_t)d;
- (void)_tellDelegateToPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion;
- (void)_tellDelegateUpdateAudioInfo:(id)info;
- (void)_tellDelegateWillSetAudioSessionActive:(BOOL)active;
- (void)_updateAudioDeviceInfo:(id)info;
- (void)_updateCapturingStateWithOptions:(id)options;
- (void)_updateRecordRoute:(id)route andDeviceIdentifier:(id)identifier;
- (void)_updateSiriOutputVolume:(BOOL)volume completion:(id)completion;
- (void)_updateSpeechState:(int)state;
- (void)addRecordedDictationAudioSampleData:(id)data;
- (void)adjustSiriOutputVolumeForRouteIfNeeded:(id)needed;
- (void)asrBridgeReceivedEagerRecognitionCandidate:(id)candidate rawRecognitionResult:(id)result duration:(double)duration sessionUUID:(id)d;
- (void)asrBridgeReceivedFinalResult:(id)result speechPackage:(id)package sessionUUID:(id)d;
- (void)asrBridgeReceivedPartialResult:(id)result language:(id)language tokens:(id)tokens;
- (void)audioPowerUpdaterDidUpdate:(id)update averagePower:(float)power peakPower:(float)peakPower;
- (void)audioSessionCoordinator:(id)coordinator prepareAudioSessionWithContext:(id)context;
- (void)audioSessionCoordinator:(id)coordinator releaseAudioSessionWithContext:(id)context;
- (void)cancelLocalRecognitionIfActive;
- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert;
- (void)deactivateAudioSessionIfNoActiveAssertions;
- (void)dealloc;
- (void)dictationSessionDidComplete;
- (void)disableDESWithCompletion:(id)completion;
- (void)eagerlyInitializeAudioRecording;
- (void)endSession;
- (void)endSession:(BOOL)session completion:(id)completion;
- (void)enforcePreviousEndpointHint;
- (void)getLastStartpointTimestampAndCurrentTime:(id)time;
- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache completion:(id)completion;
- (void)getRecordingInfoUsingBlock:(id)block;
- (void)getSpeechRecorderVTSatScore:(id)score;
- (void)getVolumeServiceUsingBlock:(id)block;
- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error;
- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)localSpeechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package;
- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens;
- (void)playRecordingStartAlert;
- (void)preheatRecognizerWithOptions:(id)options;
- (void)preheatWithOptions:(id)options;
- (void)prepareAudioSystemWithContext:(id)context completion:(id)completion;
- (void)resetLocalRecognizer;
- (void)setClientConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)setDirtySiriOutputVolumeHostTime:(unint64_t)time;
- (void)setEARLanguageDetectorSpeechRequestId:(id)id;
- (void)setEndpointerDelayedTrigger:(BOOL)trigger;
- (void)setEndpointerThreshold:(double)threshold;
- (void)setFingerprintWasRecognized;
- (void)setSpeechRecognizedContext:(id)context;
- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)notifications;
- (void)speechCapturing:(id)capturing didInterruptAudioSession:(id)session;
- (void)speechCapturing:(id)capturing didLoseAudioSessionOwnerOrMediaServices:(id)services;
- (void)speechCapturing:(id)capturing didSetAudioSessionActive:(BOOL)active;
- (void)speechCapturing:(id)capturing languageDetectorDidFail:(id)fail;
- (void)speechCapturing:(id)capturing willSetAudioSessionActive:(BOOL)active;
- (void)speechCapturingDidProvideConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)type assetVersion:(id)self0;
- (void)speechCapturingDidReceiveLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics;
- (void)speechCapturingDidRecordSpeechPackets:(id)packets atTimestamp:(double)timestamp totalPacketCount:(int64_t)count;
- (void)speechCapturingDidRequestQuickStop:(id)stop;
- (void)speechCapturingDidRequestShutdownUI:(id)i;
- (void)speechCapturingDidRequestUpdateSiriOutputVolume:(id)volume;
- (void)speechCapturingDidStartRecordingSuccessfully:(BOOL)successfully error:(id)error withInfo:(id)info;
- (void)speechCapturingDidStopRecordingWithError:(id)error endpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics;
- (void)speechCapturingDidUpdateRecordingInfo:(id)info;
- (void)startRecordedDictationCaptureWithSessionUUID:(id)d narrowband:(BOOL)narrowband secureOfflineOnly:(BOOL)only;
- (void)startSpeechCaptureWithURL:(id)l isNarrowBand:(BOOL)band isDictation:(BOOL)dictation sessionUUID:(id)d;
- (void)stopFingerprintingForSuccess:(BOOL)success;
- (void)stopSpeechCaptureIfFingerprintingOnlyWithOptions:(id)options;
- (void)stopSpeechCaptureWithOptions:(id)options;
- (void)suppressAudioInterruptionEndedNotificationsAndEndSessionIfIdle:(id)idle;
- (void)suspendAutomaticEndpointingInRange:(AFTimeRange)range;
- (void)updateASRFeatures:(id)features;
- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion;
- (void)updateOptionsAfterRecognitionForElapsedTime:(double)time isFinal:(BOOL)final;
- (void)updateSpeechOptions:(id)options;
- (void)updateSpeechSynthesisRecord:(id)record;
@end

@implementation ADSpeechManager

+ (id)sharedManager
{
  if (qword_100590AB8 != -1)
  {
    dispatch_once(&qword_100590AB8, &stru_10051C2B8);
  }

  v3 = qword_100590AC0;

  return v3;
}

- (BOOL)isLocallyRecognizingInDictationMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D144;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_speechRecorder
{
  speechRecorder = self->_speechRecorder;
  if (!speechRecorder)
  {
    v4 = [CSSiriSpeechRecorder alloc];
    queue = self->_queue;
    speechController = self->_speechController;
    audioSessionController = self->_audioSessionController;
    audioPlaybackService = self->_audioPlaybackService;
    v9 = +[ADExperimentManager sharedManager];
    context = [v9 context];
    v11 = [v4 initWithQueue:queue speechController:speechController audioSessionController:audioSessionController audioPlaybackService:audioPlaybackService experimentContext:context];
    v12 = self->_speechRecorder;
    self->_speechRecorder = v11;

    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v14 = self->_speechRecorder;
      v16 = 136315650;
      v17 = "[ADSpeechManager _speechRecorder]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ created local speech recorder %@", &v16, 0x20u);
    }

    [(CSSiriSpeechRecorder *)self->_speechRecorder setClientConfiguration:self->_clientConfiguration];
    [(CSSiriSpeechRecorder *)self->_speechRecorder setDelegate:self];
    speechRecorder = self->_speechRecorder;
  }

  return speechRecorder;
}

- (BOOL)isStopped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CA54;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_currentSpeechCaptureSource
{
  currentCapturing = self->_currentCapturing;
  if (!currentCapturing)
  {
    _speechRecorder = [(ADSpeechManager *)self _speechRecorder];
    v5 = self->_currentCapturing;
    self->_currentCapturing = _speechRecorder;

    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = self->_currentCapturing;
      v9 = 136315394;
      v10 = "[ADSpeechManager _currentSpeechCaptureSource]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Speech capturing set to %@.", &v9, 0x16u);
    }

    currentCapturing = self->_currentCapturing;
  }

  return currentCapturing;
}

- (void)asrBridgeReceivedPartialResult:(id)result language:(id)language tokens:(id)tokens
{
  tokensCopy = tokens;
  if (+[AFFeatureFlags isSiriRequestDispatcherEnabled])
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100333514;
    v8[3] = &unk_10051E010;
    v8[4] = self;
    v9 = tokensCopy;
    dispatch_async(queue, v8);
  }
}

- (void)asrBridgeReceivedFinalResult:(id)result speechPackage:(id)package sessionUUID:(id)d
{
  packageCopy = package;
  dCopy = d;
  if (+[AFFeatureFlags isSiriRequestDispatcherEnabled])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100333724;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v11 = packageCopy;
    v12 = dCopy;
    dispatch_async(queue, block);
  }
}

- (void)asrBridgeReceivedEagerRecognitionCandidate:(id)candidate rawRecognitionResult:(id)result duration:(double)duration sessionUUID:(id)d
{
  resultCopy = result;
  dCopy = d;
  if (+[AFFeatureFlags isSiriRequestDispatcherEnabled])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100333908;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v12 = resultCopy;
    v13 = dCopy;
    dispatch_async(queue, block);
  }
}

- (void)_getAdjustedSiriOutputVolumeLevelForAudioRoute:(id)route withCompletion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  _volumeService = [(ADSpeechManager *)self _volumeService];
  name = [routeCopy name];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100333B20;
  v12[3] = &unk_10051C7D8;
  v13 = routeCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = routeCopy;
  v11 = completionCopy;
  [_volumeService getSiriOutputVolumeForAudioRoute:v10 withName:name completion:v12];
}

- (void)adjustSiriOutputVolumeForRouteIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003343F4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(queue, v7);
}

- (void)_updateSiriOutputVolume:(BOOL)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    hasUpdatedSiriOutputVolume = self->_hasUpdatedSiriOutputVolume;
    *buf = 136315650;
    v15 = "[ADSpeechManager _updateSiriOutputVolume:completion:]";
    v16 = 1024;
    v17 = hasUpdatedSiriOutputVolume;
    v18 = 1024;
    v19 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s hasUpdatedSiriOutputVolume = %d, forceUpdate = %d", buf, 0x18u);
  }

  if (self->_hasUpdatedSiriOutputVolume && !volumeCopy)
  {
    v11 = 1;
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  _volumeService = [(ADSpeechManager *)self _volumeService];
  v11 = _volumeService == 0;
  if (_volumeService)
  {
    self->_hasUpdatedSiriOutputVolume = 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100334950;
    v12[3] = &unk_10051C718;
    v12[4] = self;
    v13 = completionCopy;
    [_volumeService updateSiriOutputVolume:volumeCopy completion:v12];
  }

  if (completionCopy)
  {
LABEL_12:
    if (v11)
    {
      completionCopy[2](completionCopy);
    }
  }

LABEL_14:
}

- (void)_fetchSmartSiriVolumeForType:(unint64_t)type forceFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    hasFetchedSmartSiriVolume = self->_hasFetchedSmartSiriVolume;
    v15 = 136315906;
    v16 = "[ADSpeechManager _fetchSmartSiriVolumeForType:forceFetch:]";
    v17 = 1024;
    v18 = hasFetchedSmartSiriVolume;
    v19 = 2048;
    typeCopy = type;
    v21 = 1024;
    v22 = fetchCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, forType = %lu, forceFetch = %d", &v15, 0x22u);
  }

  if (!self->_hasFetchedSmartSiriVolume || fetchCopy)
  {
    _volumeService = [(ADSpeechManager *)self _volumeService];
    v11 = _volumeService;
    if (_volumeService)
    {
      *&self->_hasFetchedSmartSiriVolume = 1;
      [_volumeService fetchSmartSiriVolumeForType:type];
      v12 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v13 = self->_hasFetchedSmartSiriVolume;
        hasUpdatedSiriOutputVolume = self->_hasUpdatedSiriOutputVolume;
        v15 = 136315650;
        v16 = "[ADSpeechManager _fetchSmartSiriVolumeForType:forceFetch:]";
        v17 = 1024;
        v18 = v13;
        v19 = 1024;
        LODWORD(typeCopy) = hasUpdatedSiriOutputVolume;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, hasUpdatedSiriOutputVolume = %d", &v15, 0x18u);
      }
    }
  }
}

- (id)_volumeService
{
  if ([(ADSpeechManager *)self _supportsVolumeService])
  {
    volumeService = self->_volumeService;
    if (!volumeService)
    {
      v4 = [[ADVolumeService alloc] initWithQueue:self->_queue instanceContext:self->_instanceContext speechController:self->_speechController];
      v5 = self->_volumeService;
      self->_volumeService = v4;

      [(ADVolumeService *)self->_volumeService setClientConfiguration:self->_clientConfiguration];
      *&self->_hasFetchedSmartSiriVolume = 0;
      self->_dirtySiriOutputVolumeHostTime = 0;
      v6 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v9 = 136315650;
        v10 = "[ADSpeechManager _volumeService]";
        v11 = 1024;
        v12 = 0;
        v13 = 1024;
        v14 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, hasUpdatedSiriOutputVolume = %d", &v9, 0x18u);
      }

      volumeService = self->_volumeService;
    }

    v7 = volumeService;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_supportsVolumeService
{
  if (sub_10001A2F8(self->_instanceContext))
  {
    return 1;
  }

  return _AFDeviceSupportsTTS();
}

- (void)setEARLanguageDetectorSpeechRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100334DC8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)_addRecordStoppedCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    recordStoppedCompletion = self->_recordStoppedCompletion;
    if (recordStoppedCompletion)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100334F18;
      v11[3] = &unk_10051C6F0;
      v12 = objc_retainBlock(recordStoppedCompletion);
      v13 = completionCopy;
      v6 = v12;
      v7 = objc_retainBlock(v11);
      v8 = self->_recordStoppedCompletion;
      self->_recordStoppedCompletion = v7;
    }

    else
    {
      v9 = objc_retainBlock(completionCopy);
      v10 = self->_recordStoppedCompletion;
      self->_recordStoppedCompletion = v9;
    }
  }
}

- (void)setEndpointerDelayedTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADSpeechManager setEndpointerDelayedTrigger:]";
    v7 = 1024;
    v8 = triggerCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s setEndpointerDelayedTrigger: %d is unused in CoreSpeech.", &v5, 0x12u);
  }
}

- (void)setEndpointerThreshold:(double)threshold
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100335138;
  v6[3] = &unk_10051D770;
  v6[4] = self;
  *&v6[5] = threshold;
  dispatch_async(queue, v6);
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADSpeechManager setEndpointerThreshold:]";
    v9 = 2048;
    thresholdCopy = threshold;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setEndpointerThreshold: %f in CoreSpeech.", buf, 0x16u);
  }
}

- (void)updateSpeechSynthesisRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335224;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(queue, v7);
}

- (void)getLastStartpointTimestampAndCurrentTime:(id)time
{
  timeCopy = time;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033531C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = timeCopy;
  v6 = timeCopy;
  dispatch_async(queue, v7);
}

- (void)stopFingerprintingForSuccess:(BOOL)success
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003353E8;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  successCopy = success;
  dispatch_async(queue, v4);
}

- (void)updateSpeechOptions:(id)options
{
  optionsCopy = options;
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:303 context:0];

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10033551C;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  dispatch_async(queue, v8);
}

- (void)playRecordingStartAlert
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033559C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setSpeechRecognizedContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335678;
  v7[3] = &unk_10051E010;
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

- (void)enforcePreviousEndpointHint
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003357B4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003358C4;
  v13[3] = &unk_10051C6C8;
  v13[4] = self;
  v14 = cCopy;
  acceptCopy = accept;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = cCopy;
  dispatch_async(queue, v13);
}

- (void)updateOptionsAfterRecognitionForElapsedTime:(double)time isFinal:(BOOL)final
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100335998;
  block[3] = &unk_10051C6A0;
  block[4] = self;
  *&block[5] = time;
  finalCopy = final;
  dispatch_async(queue, block);
}

- (void)updateASRFeatures:(id)features
{
  featuresCopy = features;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335A48;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = featuresCopy;
  v6 = featuresCopy;
  dispatch_async(queue, v7);
}

- (void)suspendAutomaticEndpointingInRange:(AFTimeRange)range
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100335B14;
  block[3] = &unk_10051C678;
  block[4] = self;
  rangeCopy = range;
  dispatch_async(queue, block);
}

- (void)setFingerprintWasRecognized
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100335BDC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deactivateAudioSessionIfNoActiveAssertions
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100335C5C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)suppressAudioInterruptionEndedNotificationsAndEndSessionIfIdle:(id)idle
{
  idleCopy = idle;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100335F10;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = idleCopy;
  v6 = idleCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_endSessionIfIdle
{
  speechState = self->_speechState;
  v4 = AFSiriLogContextSpeech;
  v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (speechState)
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _endSessionIfIdle]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s but we're NOT idle", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _endSessionIfIdle]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s and we're idle", &v7, 0xCu);
    }

    [(ADSpeechManager *)self _releaseSession];
  }

  return speechState == 0;
}

- (void)_cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    speechState = self->_speechState;
    v7 = v5;
    v8 = sub_10001A01C(speechState);
    *buf = 136315394;
    v30 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]";
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s state = %@", buf, 0x16u);
  }

  v9 = [AFSafetyBlock alloc];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100336584;
  v27[3] = &unk_10051C628;
  v10 = completionCopy;
  v28 = v10;
  v11 = [v9 initWithBlock:v27];
  objc_initWeak(&location, self);
  v12 = self->_speechState;
  if ((v12 - 3) < 2)
  {
    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Stopping, waiting for did stop to release session", buf, 0xCu);
    }

    self->_releasesAudioSessionWhenRecordingStopped = 1;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003367BC;
    v19[3] = &unk_10051DFE8;
    v20 = v11;
    [(ADSpeechManager *)self _addRecordStoppedCompletion:v19];
  }

  else if (v12 == 2)
  {
    v17 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Recording, stopping record to release session", buf, 0xCu);
    }

    self->_releasesAudioSessionWhenRecordingStopped = 1;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003367B4;
    v21[3] = &unk_10051DFE8;
    v22 = v11;
    [(ADSpeechManager *)self _addRecordStoppedCompletion:v21];
    [(ADSpeechManager *)self _cancelRecordingWithError:0 suppressAlert:1];
  }

  else if (v12 == 1)
  {
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Started, waiting for did start to stop recording then release session", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100336650;
    v23[3] = &unk_10051C650;
    objc_copyWeak(&v25, &location);
    v24 = v11;
    v14 = objc_retainBlock(v23);
    recordStartedCompletion = self->_recordStartedCompletion;
    self->_recordStartedCompletion = v14;

    objc_destroyWeak(&v25);
  }

  else
  {
    v18 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Asking AVVoiceController to release its audio session now", buf, 0xCu);
    }

    [(ADSpeechManager *)self _releaseSession];
    [v11 invoke];
  }

  objc_destroyWeak(&location);
}

- (void)endSession:(BOOL)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADSpeechManager endSession:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s onlyIfIdle = %d", buf, 0x12u);
  }

  queue = self->_queue;
  if (sessionCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100336A00;
    v15[3] = &unk_10051DFE8;
    v15[4] = self;
    v9 = v15;
    v10 = queue;
    v11 = dispatch_semaphore_create(0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100336A08;
    v17 = &unk_10051E038;
    v18 = v11;
    v19 = v9;
    v12 = v11;
    dispatch_async(v10, buf);

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100336A4C;
    block[3] = &unk_10051E038;
    block[4] = self;
    v14 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)endSession
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADSpeechManager endSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  if (AFIsHorseman())
  {
    [(ADSpeechManager *)self endSession:0 completion:0];
  }

  else
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100336C04;
    v9[3] = &unk_10051DFE8;
    v9[4] = self;
    v5 = v9;
    v6 = queue;
    v7 = dispatch_semaphore_create(0);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v11 = sub_100336A08;
    v12 = &unk_10051E038;
    v13 = v7;
    v14 = v5;
    v8 = v7;
    dispatch_async(v6, &buf);

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)notifications
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100337144;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  notificationsCopy = notifications;
  dispatch_async(queue, v4);
}

- (void)_stopSpeechCaptureWithOptions:(id)options
{
  optionsCopy = options;
  activationEvent = [optionsCopy activationEvent];
  suppressStopAlert = [optionsCopy suppressStopAlert];
  stopRecordingHostTime = [optionsCopy stopRecordingHostTime];
  speechState = self->_speechState;
  v9 = AFSiriLogContextSpeech;
  if (speechState == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADSpeechManager _stopSpeechCaptureWithOptions:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Recording started stopping in record start completion", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003373DC;
    v15[3] = &unk_10051C600;
    selfCopy = self;
    v17 = activationEvent;
    v19 = suppressStopAlert;
    v18 = stopRecordingHostTime;
    v11 = selfCopy;
    v12 = objc_retainBlock(v15);
    isa = v11[11].isa;
    v11[11].isa = v12;

    goto LABEL_9;
  }

  if (speechState != 2)
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = v9;
    v14 = sub_10001A01C(speechState);
    *buf = 136315394;
    v21 = "[ADSpeechManager _stopSpeechCaptureWithOptions:]";
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error: asked to stop when we're in state %{public}@", buf, 0x16u);

LABEL_9:
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADSpeechManager _stopSpeechCaptureWithOptions:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Stopping speech capture", buf, 0xCu);
  }

  _currentSpeechCaptureSource = [(ADSpeechManager *)self _currentSpeechCaptureSource];
  [_currentSpeechCaptureSource stopSpeechCaptureForEvent:activationEvent suppressAlert:suppressStopAlert hostTime:stopRecordingHostTime];

  [(ADSpeechManager *)self _updateSpeechState:3];
LABEL_11:
  if (optionsCopy)
  {
    [(ADSpeechManager *)self _updateCapturingStateWithOptions:optionsCopy];
  }
}

- (void)stopSpeechCaptureIfFingerprintingOnlyWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:305 context:0];

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100337668;
  v12[3] = &unk_10051E010;
  v12[4] = self;
  v13 = optionsCopy;
  v7 = v12;
  v8 = queue;
  v9 = optionsCopy;
  v10 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100336A08;
  block[3] = &unk_10051E038;
  v15 = v10;
  v16 = v7;
  v11 = v10;
  dispatch_async(v8, block);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)stopSpeechCaptureWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[AFAnalytics sharedAnalytics];
  stopContext = [optionsCopy stopContext];
  [v5 logEventWithType:305 context:stopContext];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003377F4;
  v13[3] = &unk_10051E010;
  v13[4] = self;
  v14 = optionsCopy;
  v8 = v13;
  v9 = queue;
  v10 = optionsCopy;
  v11 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100336A08;
  block[3] = &unk_10051E038;
  v16 = v11;
  v17 = v8;
  v12 = v11;
  dispatch_async(v9, block);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert
{
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:304 context:0];

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100337940;
  v11[3] = &unk_10051CBD8;
  v11[4] = self;
  alertCopy = alert;
  v7 = v11;
  v8 = queue;
  v9 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100336A08;
  block[3] = &unk_10051E038;
  v14 = v9;
  v15 = v7;
  v10 = v9;
  dispatch_async(v8, block);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)startSpeechCaptureWithURL:(id)l isNarrowBand:(BOOL)band isDictation:(BOOL)dictation sessionUUID:(id)d
{
  lCopy = l;
  dCopy = d;
  v12 = [[CSSiriSpeechRecordingContext alloc] initWithSessionUUID:dCopy turnIdentifier:0];

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100337DD4;
  v16[3] = &unk_10051C5D8;
  v16[4] = self;
  v17 = v12;
  dictationCopy = dictation;
  v18 = lCopy;
  bandCopy = band;
  v14 = lCopy;
  v15 = v12;
  dispatch_async(queue, v16);
}

- (void)addRecordedDictationAudioSampleData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003381FC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)startRecordedDictationCaptureWithSessionUUID:(id)d narrowband:(BOOL)narrowband secureOfflineOnly:(BOOL)only
{
  dCopy = d;
  v9 = [[CSSiriSpeechRecordingContext alloc] initWithSessionUUID:dCopy turnIdentifier:0];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100338330;
  block[3] = &unk_10051C5B0;
  block[4] = self;
  v13 = v9;
  onlyCopy = only;
  narrowbandCopy = narrowband;
  v11 = v9;
  dispatch_async(queue, block);
}

- (void)_startCaptureForMode:(int64_t)mode options:(id)options context:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
    v66 = 2048;
    *v67 = mode;
    *&v67[8] = 2112;
    v68 = optionsCopy;
    v69 = 2112;
    v70 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s mode = %zd, options = %@, context = %@", buf, 0x2Au);
  }

  speechState = self->_speechState;
  if (speechState)
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v47 = v12;
      v48 = sub_10001A01C(speechState);
      *buf = 136315394;
      v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
      v66 = 2114;
      *v67 = v48;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s Asked to start recording when we're already in state %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = +[ADSpeechManager _badStateError];
    [WeakRetained speechManager:self didFailWithError:v14 context:contextCopy];
    goto LABEL_42;
  }

  self->_shouldTalkToDelegate = 1;
  self->_hasReceivedLastAudioBuffer = 0;
  self->_capturingMode = mode;
  objc_storeStrong(&self->_capturingContext, context);
  [(ADSpeechManager *)self _updateAudioDeviceInfo:0];
  [(ADSpeechManager *)self _updateRecordRoute:0 andDeviceIdentifier:0];
  *&self->_isReleaseAudioSessionRequired = 1;
  self->_releasesAudioSessionWhenRecordingStopped = 0;
  self->_releasesAudioSessionWhenPrepareAudioSystemDone = 0;
  _speechRecorder = [(ADSpeechManager *)self _speechRecorder];
  objc_storeStrong(&self->_currentCapturing, _speechRecorder);
  v16 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    currentCapturing = self->_currentCapturing;
    *buf = 136315394;
    v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
    v66 = 2112;
    *v67 = currentCapturing;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Speech capturing set to %@.", buf, 0x16u);
  }

  [_speechRecorder prepareForMode:mode withOptions:optionsCopy];
  activationEvent = [(NSString *)optionsCopy activationEvent];
  if (AFSpeechEventIsBluetooth())
  {
    v19 = +[ADBluetoothManager sharedInstance];
    activationDeviceIdentifier = [(NSString *)optionsCopy activationDeviceIdentifier];
    [v19 prewarmDeviceWithIdentifier:activationDeviceIdentifier];
  }

  if ([(NSString *)optionsCopy isMediaPlaying])
  {
    _volumeService = [(ADSpeechManager *)self _volumeService];
    [_volumeService _mediaPlaybackVolume];
    v23 = v22;

    v24 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
      v66 = 2048;
      *v67 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s mediaPlaybackVolume = %f", buf, 0x16u);
    }

    *&v25 = v23;
    [(NSString *)optionsCopy setMediaPlaybackVolume:v25];
  }

  IsTVRemote = AFSpeechEventIsTVRemote();
  v27 = IsTVRemote;
  if (IsTVRemote)
  {
    [(ADSpeechManager *)self _updateCapturingStateWithOptions:optionsCopy];
  }

  if ((mode - 1) > 1 || (AFIsNano() & 1) != 0 || activationEvent <= 0x10 && ((1 << activationEvent) & 0x18900) != 0)
  {
    if (v27)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v49 = [_speechRecorder recordingInfoForPreheatWithEvent:activationEvent];
  [(ADSpeechManager *)self _tellDelegateSpeechShouldPreheatWithRecordingInfo:v49];

  if ((v27 & 1) == 0)
  {
LABEL_22:
    [(ADSpeechManager *)self _updateCapturingStateWithOptions:optionsCopy];
  }

LABEL_23:
  v28 = AFIsATVOnly();
  if (mode == 3)
  {
    forceOfflineRecognition = [(AFDictationOptions *)self->_dictationOptions forceOfflineRecognition];
    v30 = &CoreEmbeddedSpeechRecognizerTaskDictation;
    if (!forceOfflineRecognition)
    {
      v30 = &CoreEmbeddedSpeechRecognizerTaskTshot;
    }

    goto LABEL_26;
  }

  if (v28)
  {
    localSpeechRecognizerTask = self->_localSpeechRecognizerTask;
    self->_localSpeechRecognizerTask = 0;

    v39 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      primaryDictationLanguage = self->_primaryDictationLanguage;
      v41 = v39;
      v42 = [NSNumber numberWithBool:AFOfflineDictationCapable()];
      *buf = 136315906;
      v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
      v66 = 2048;
      *v67 = mode;
      *&v67[8] = 2112;
      v68 = primaryDictationLanguage;
      v69 = 2112;
      v70 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Not using local speech recognition for mode %ld, dictation language %@, dictationCapable %@", buf, 0x2Au);
    }

    goto LABEL_27;
  }

  if (mode == 2 && AFOfflineDictationCapable())
  {
    v30 = &CoreEmbeddedSpeechRecognizerTaskDictation;
LABEL_26:
    objc_storeStrong(&self->_localSpeechRecognizerTask, *v30);
    goto LABEL_27;
  }

  if (!CSSiriSpeechRecordingModeIsSiri() || !AFOfflineDictationCapable())
  {
    goto LABEL_27;
  }

  if (mode == 5)
  {
    v43 = AFIsNano();
    v44 = &CoreEmbeddedSpeechRecognizerTaskDictation;
    if (!v43)
    {
      v44 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
    }

    objc_storeStrong(&self->_localSpeechRecognizerTask, *v44);
    [(ADSpeechManager *)self _tellDelegateSpeechRecognitionUpdateWillBegin];
    v45 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
    v46 = "%s Local speech recognition forced on for Siri";
  }

  else if ((_AFPreferencesSiriPersonalizedASRDisabled() & 1) != 0 || [(NSString *)optionsCopy skipPersonalizedASR])
  {
    v50 = self->_localSpeechRecognizerTask;
    self->_localSpeechRecognizerTask = 0;

    v45 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
    v46 = "%s Not using local speech recognition for Siri because the kill switch is on, or options were set";
  }

  else
  {
    v51 = AFIsNano();
    v52 = &CoreEmbeddedSpeechRecognizerTaskDictation;
    if (!v51)
    {
      v52 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
    }

    objc_storeStrong(&self->_localSpeechRecognizerTask, *v52);
    [(ADSpeechManager *)self _tellDelegateSpeechRecognitionUpdateWillBegin];
    v45 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
    v46 = "%s Doing local speech recognition for Siri";
  }

  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, v46, buf, 0xCu);
LABEL_27:
  acousticIdEnabled = [(NSString *)optionsCopy acousticIdEnabled];
  if (mode == 4)
  {
    v32 = 1;
  }

  else
  {
    v32 = acousticIdEnabled;
  }

  [_speechRecorder setFingerprintingEnabled:v32];
  [_speechRecorder setAudioFileType:{-[NSString audioFileType](optionsCopy, "audioFileType")}];
  audioFileHandle = [(NSString *)optionsCopy audioFileHandle];
  [_speechRecorder setAudioFileHandle:audioFileHandle];

  [_speechRecorder setIsDriving:self->_isDriving];
  [_speechRecorder disableSpeechPacketGeneration:{-[NSString skipGeneratingSpeechPacket](optionsCopy, "skipGeneratingSpeechPacket")}];
  speechRecordingEventListeningEndpoint = [(NSString *)optionsCopy speechRecordingEventListeningEndpoint];
  [_speechRecorder setSpeechRecordingEventListeningEndpoint:speechRecordingEventListeningEndpoint];

  [_speechRecorder setHybridUODEnabled:{-[NSString isHybridUODEnabled](optionsCopy, "isHybridUODEnabled")}];
  [(ADSpeechManager *)self _updateSpeechState:1];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100338EBC;
  v58[3] = &unk_10051D650;
  WeakRetained = _speechRecorder;
  v59 = WeakRetained;
  v60 = contextCopy;
  selfCopy = self;
  v35 = optionsCopy;
  v62 = v35;
  modeCopy = mode;
  v36 = objc_retainBlock(v58);
  if (!sub_10001A2F8(self->_instanceContext))
  {
    goto LABEL_36;
  }

  if (([(NSString *)v35 reloadSmartSiriVolume]& 1) != 0 || self->_dirtySiriOutputVolumeHostTime)
  {
    *&self->_hasFetchedSmartSiriVolume = 0;
    self->_dirtySiriOutputVolumeHostTime = 0;
    v37 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v65 = "[ADSpeechManager _startCaptureForMode:options:context:]";
      v66 = 1024;
      *v67 = 0;
      *&v67[4] = 1024;
      *&v67[6] = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, hasUpdatedSiriOutputVolume = %d", buf, 0x18u);
    }
  }

  if (!AFIsHorseman())
  {
    v53 = _NSConcreteStackBlock;
    v54 = 3221225472;
    v55 = sub_1003393AC;
    v56 = &unk_10051CF58;
    v57 = v36;
    [(ADSpeechManager *)self _updateSiriOutputVolume:0 completion:&v53];
  }

  else
  {
LABEL_36:
    (v36[2])(v36);
  }

  [WeakRetained suppressUtteranceGradingIfRequired];

  v14 = v59;
LABEL_42:
}

- (id)_startFixedPriorityCaptureForMode:(int64_t)mode options:(id)options sessionUUID:(id)d
{
  optionsCopy = options;
  dCopy = d;
  v10 = +[AFAnalytics sharedAnalytics];
  startContext = [optionsCopy startContext];
  [v10 logEventWithType:301 context:startContext];

  v12 = [CSSiriSpeechRecordingContext alloc];
  turnIdentifier = [optionsCopy turnIdentifier];
  v14 = [v12 initWithSessionUUID:dCopy turnIdentifier:turnIdentifier];

  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003395A0;
  v21[3] = &unk_10051DBB8;
  modeCopy = mode;
  v21[4] = self;
  v22 = optionsCopy;
  v16 = v14;
  v23 = v16;
  v17 = optionsCopy;
  dispatch_async(queue, v21);
  v18 = v23;
  v19 = v16;

  return v16;
}

- (id)startSpeechCaptureForDictationWithOptions:(id)options sessionUUID:(id)d secureOfflineOnly:(BOOL)only
{
  onlyCopy = only;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003397A4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dCopy = d;
  optionsCopy = options;
  dispatch_async(queue, block);
  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADSpeechManager startSpeechCaptureForDictationWithOptions:sessionUUID:secureOfflineOnly:]";
    v18 = 1024;
    v19 = onlyCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s secureOfflineOnly is %d", buf, 0x12u);
  }

  if (onlyCopy)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = [(ADSpeechManager *)self _startFixedPriorityCaptureForMode:v12 options:optionsCopy sessionUUID:dCopy];

  return v13;
}

- (id)startSpeechCaptureForRequestWithOptions:(id)options sessionUUID:(id)d language:(id)language
{
  languageCopy = language;
  queue = self->_queue;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1003398E4;
  v18 = &unk_10051E010;
  selfCopy = self;
  v20 = languageCopy;
  v10 = languageCopy;
  dCopy = d;
  optionsCopy = options;
  dispatch_async(queue, &v15);
  selfCopy = [(ADSpeechManager *)self _startFixedPriorityCaptureForMode:1 options:optionsCopy sessionUUID:dCopy, v15, v16, v17, v18, selfCopy];

  return selfCopy;
}

- (BOOL)isCapturing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100339A28;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100339AE0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100339BD4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)_prepareAudioSystemWithContext:(id)context audioSessionAssertion:(id)assertion completion:(id)completion
{
  contextCopy = context;
  assertionCopy = assertion;
  completionCopy = completion;
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    speechState = self->_speechState;
    v12 = v10;
    v13 = sub_10001A01C(speechState);
    *buf = 136315650;
    v86 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]";
    v87 = 2112;
    v88 = contextCopy;
    v89 = 2112;
    v90 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Begin preparing audio system with context %@. (speechState = %@)", buf, 0x20u);
  }

  self->_isReleaseAudioSessionRequired = 1;
  speechRequestOptions = [contextCopy speechRequestOptions];
  v15 = AFAnalyticsContextCreateWithSpeechRequestOptions();
  v84[0] = v15;
  v82[0] = @"reason";
  [contextCopy reason];
  v16 = AFSetAudioSessionActiveReasonGetName();
  v82[1] = @"options";
  v83[0] = v16;
  [contextCopy options];
  v17 = AFSetAudioSessionActiveOptionsGetNames();
  v83[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
  v84[1] = v18;
  v19 = [NSArray arrayWithObjects:v84 count:2];
  v20 = AFAnalyticsContextsMerge();

  v21 = +[AFAnalytics sharedAnalytics];
  [v21 logEventWithType:244 context:v20 contextNoCopy:1];

  ++self->_prepareAudioSystemTransactionCount;
  _speechRecorder = [(ADSpeechManager *)self _speechRecorder];
  v23 = [AFOneArgumentSafetyBlock alloc];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10033A390;
  v76[3] = &unk_10051C3F8;
  v76[4] = self;
  v24 = _speechRecorder;
  v77 = v24;
  v25 = contextCopy;
  v78 = v25;
  v52 = assertionCopy;
  v79 = v52;
  v51 = v20;
  v80 = v51;
  v50 = completionCopy;
  v81 = v50;
  v26 = [AFError errorWithCode:27];
  v27 = [v23 initWithBlock:v76 defaultValue:v26];

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10033A9AC;
  v75[3] = &unk_10051C448;
  v75[4] = self;
  v28 = objc_retainBlock(v75);
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10033AB8C;
  v73[3] = &unk_10051C4C0;
  v73[4] = self;
  v29 = v24;
  v74 = v29;
  v30 = objc_retainBlock(v73);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10033ADA0;
  v69[3] = &unk_10051C4E8;
  v31 = v25;
  v70 = v31;
  selfCopy = self;
  v32 = v29;
  v72 = v32;
  v33 = objc_retainBlock(v69);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10033B120;
  v61[3] = &unk_10051C538;
  v34 = v31;
  v62 = v34;
  v35 = v32;
  v63 = v35;
  selfCopy2 = self;
  v36 = v28;
  v66 = v36;
  v37 = v30;
  v67 = v37;
  v38 = v33;
  v68 = v38;
  v39 = v27;
  v65 = v39;
  v40 = objc_retainBlock(v61);
  if (sub_10001A2F8(self->_instanceContext))
  {
    speechRequestOptions2 = [v34 speechRequestOptions];
    smartSiriVolumeTTSType = [speechRequestOptions2 smartSiriVolumeTTSType];

    if (smartSiriVolumeTTSType == 5)
    {
      v43 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v86 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Received TTSTypeDropInCallAnnouncement, force fetching SSV.", buf, 0xCu);
      }

      [(ADSpeechManager *)self _fetchSmartSiriVolumeForType:5 forceFetch:1];
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10033B300;
      v59[3] = &unk_10051CF58;
      v60 = v40;
      [(ADSpeechManager *)self _updateSiriOutputVolume:1 completion:v59];
      v44 = v60;
    }

    else
    {
      dirtySiriOutputVolumeHostTime = self->_dirtySiriOutputVolumeHostTime;
      if (dirtySiriOutputVolumeHostTime)
      {
        v46 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v86 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]";
          v87 = 2048;
          v88 = dirtySiriOutputVolumeHostTime;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Begin waiting for Siri output volume to update after host time %llu...", buf, 0x16u);
        }

        v48 = mach_absolute_time();
        _volumeService = [(ADSpeechManager *)self _volumeService];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10033B310;
        v55[3] = &unk_10051C560;
        v55[4] = self;
        v57 = dirtySiriOutputVolumeHostTime;
        v58 = v48;
        v56 = v40;
        [_volumeService waitUntilSiriOutputVolumeUpdatesAfterTimestamp:dirtySiriOutputVolumeHostTime withTimeout:v55 block:1.0];

        v44 = v56;
      }

      else
      {
        [(ADSpeechManager *)self _fetchSmartSiriVolume:0];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10033B4B4;
        v53[3] = &unk_10051CF58;
        v54 = v40;
        [(ADSpeechManager *)self _updateSiriOutputVolume:0 completion:v53];
        v44 = v54;
      }
    }
  }

  else
  {
    (v40[2])(v40);
  }
}

- (void)prepareAudioSystemWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  audioSessionCoordinator = self->_audioSessionCoordinator;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10033BB44;
  v20[3] = &unk_10051C368;
  v9 = contextCopy;
  v21 = v9;
  v10 = [AFAssertionContext newWithBuilder:v20];
  v11 = [(ADAudioSessionCoordinator *)audioSessionCoordinator acquireAudioSessionAssertionWithContext:v10 relinquishmentHandler:0];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033BC88;
  block[3] = &unk_10051E0D8;
  block[4] = self;
  v17 = v9;
  v18 = v11;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  v15 = v9;
  dispatch_async(queue, block);
}

- (void)preheatRecognizerWithOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADSpeechManager preheatRecognizerWithOptions:]";
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s options = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10033BDCC;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  dispatch_async(queue, v8);
}

- (void)preheatWithOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADSpeechManager preheatWithOptions:]";
    v13 = 2112;
    v14 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s options = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10033BF58;
  v8[3] = &unk_10051E010;
  v9 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  dispatch_async(queue, v8);
}

- (void)eagerlyInitializeAudioRecording
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033C068;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error
{
  recognizerCopy = recognizer;
  statisticsCopy = statistics;
  errorCopy = error;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10033C164;
  v15[3] = &unk_10051DB18;
  v16 = recognizerCopy;
  selfCopy = self;
  v18 = errorCopy;
  v19 = statisticsCopy;
  v12 = statisticsCopy;
  v13 = errorCopy;
  v14 = recognizerCopy;
  dispatch_async(queue, v15);
}

- (void)localSpeechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033C430;
  block[3] = &unk_10051DB68;
  v12 = recognizerCopy;
  selfCopy = self;
  v14 = packageCopy;
  v9 = packageCopy;
  v10 = recognizerCopy;
  dispatch_async(queue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033C698;
  block[3] = &unk_10051DB68;
  v12 = recognizerCopy;
  selfCopy = self;
  v14 = packageCopy;
  v9 = packageCopy;
  v10 = recognizerCopy;
  dispatch_async(queue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10033C8D4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = candidateCopy;
  v7 = candidateCopy;
  dispatch_async(queue, v8);
}

- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADSpeechManager localSpeechRecognizer:didProcessAudioDuration:]";
    v8 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Processed %.2f", &v6, 0x16u);
  }
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens
{
  recognizerCopy = recognizer;
  tokensCopy = tokens;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033CB9C;
  block[3] = &unk_10051DB68;
  v12 = recognizerCopy;
  selfCopy = self;
  v14 = tokensCopy;
  v9 = tokensCopy;
  v10 = recognizerCopy;
  dispatch_async(queue, block);
}

- (void)audioPowerUpdaterDidUpdate:(id)update averagePower:(float)power peakPower:(float)peakPower
{
  if (self->_audioPowerUpdater == update)
  {
    [ADSpeechManager _tellDelegateAboutInputAveragePower:"_tellDelegateAboutInputAveragePower:peak:" peak:?];
  }
}

- (id)_recordingInfo
{
  _speechRecorder = [(ADSpeechManager *)self _speechRecorder];
  fetchRecordingInfo = [_speechRecorder fetchRecordingInfo];

  return fetchRecordingInfo;
}

- (id)getRecordingInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10033CEA0;
  v10 = sub_10033CEB0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10033CEB8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)getRecordingInfoUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10033CFA8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getVolumeServiceUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10033D0A8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

- (void)setDirtySiriOutputVolumeHostTime:(unint64_t)time
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033D178;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = time;
  dispatch_async(queue, v4);
}

- (void)audioSessionCoordinator:(id)coordinator releaseAudioSessionWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[ADSpeechManager audioSessionCoordinator:releaseAudioSessionWithContext:]";
    v15 = 2112;
    v16 = coordinatorCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioSessionCoordinator = %@, context = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10033D39C;
    v10[3] = &unk_10051E010;
    v11 = coordinatorCopy;
    selfCopy = self;
    dispatch_async(queue, v10);
  }
}

- (void)audioSessionCoordinator:(id)coordinator prepareAudioSessionWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[ADSpeechManager audioSessionCoordinator:prepareAudioSessionWithContext:]";
    v15 = 2112;
    v16 = coordinatorCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioSessionCoordinator = %@, context = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10033D6B0;
    v10[3] = &unk_10051E010;
    v11 = coordinatorCopy;
    selfCopy = self;
    dispatch_async(queue, v10);
  }
}

- (void)speechCapturingDidProvideConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)type assetVersion:(id)self0
{
  assetVersionCopy = assetVersion;
  typeCopy = type;
  userCopy = user;
  scoresCopy = scores;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didReceiveConfidenceScores:scoresCopy classification:classification classifiedUser:userCopy unknownUserScore:score duration:duration version:version thresholdingType:typeCopy assetVersion:assetVersionCopy];
}

- (void)speechCapturing:(id)capturing languageDetectorDidFail:(id)fail
{
  failCopy = fail;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self languageDetectorDidFail:failCopy];
}

- (void)speechCapturing:(id)capturing didLoseAudioSessionOwnerOrMediaServices:(id)services
{
  servicesCopy = services;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSpeechManager speechCapturing:didLoseAudioSessionOwnerOrMediaServices:]";
    v9 = 2112;
    v10 = servicesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v7, 0x16u);
  }

  self->_isAudioSessionLikelyActive = 0;
  self->_hasPreparedAudioSystemForPlayback = 0;
}

- (void)speechCapturing:(id)capturing didInterruptAudioSession:(id)session
{
  sessionCopy = session;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSpeechManager speechCapturing:didInterruptAudioSession:]";
    v9 = 2112;
    v10 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v7, 0x16u);
  }

  self->_isAudioSessionLikelyActive = 0;
  self->_hasPreparedAudioSystemForPlayback = 0;
}

- (void)speechCapturing:(id)capturing didSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  capturingCopy = capturing;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADSpeechManager speechCapturing:didSetAudioSessionActive:]";
    v11 = 1024;
    v12 = activeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s flag = %d", &v9, 0x12u);
  }

  v8 = 210;
  if (!activeCopy)
  {
    v8 = 211;
  }

  *(&self->super.isa + v8) = activeCopy;
  self->_isAudioSessionLikelyActive = activeCopy;
  [(ADSpeechManager *)self _tellDelegateDidSetAudioSessionActive:activeCopy];
  [(ADAudioSessionCoordinator *)self->_audioSessionCoordinator handleDidSetAudioSessionActive:activeCopy];
}

- (void)speechCapturing:(id)capturing willSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  capturingCopy = capturing;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADSpeechManager speechCapturing:willSetAudioSessionActive:]";
    v11 = 1024;
    v12 = activeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s flag = %d", &v9, 0x12u);
  }

  v8 = 210;
  if (!activeCopy)
  {
    v8 = 211;
  }

  *(&self->super.isa + v8) = activeCopy;
  [(ADSpeechManager *)self _tellDelegateWillSetAudioSessionActive:activeCopy];
  [(ADAudioSessionCoordinator *)self->_audioSessionCoordinator handleWillSetAudioSessionActive:activeCopy];
}

- (void)speechCapturingDidRequestUpdateSiriOutputVolume:(id)volume
{
  volumeCopy = volume;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSpeechManager speechCapturingDidRequestUpdateSiriOutputVolume:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  if (sub_10001A2F8(self->_instanceContext))
  {
    [(ADSpeechManager *)self _fetchSmartSiriVolume:1];
    [(ADSpeechManager *)self _updateSiriOutputVolume:1 completion:0];
  }
}

- (void)speechCapturingDidRequestShutdownUI:(id)i
{
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSpeechManager speechCapturingDidRequestShutdownUI:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(ADSpeechManager *)self _tellDelegateShutdownUIWasRequested];
}

- (void)speechCapturingDidRequestQuickStop:(id)stop
{
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSpeechManager speechCapturingDidRequestQuickStop:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(ADSpeechManager *)self _tellDelegateQuickStopWasRequested];
}

- (void)speechCapturingDidRecordSpeechPackets:(id)packets atTimestamp:(double)timestamp totalPacketCount:(int64_t)count
{
  packetsCopy = packets;
  if ([(CSSiriSpeechRecordingContext *)self->_capturingContext wantsRecordedAudioBufferLogs])
  {
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = 136315906;
      v12 = "[ADSpeechManager speechCapturingDidRecordSpeechPackets:atTimestamp:totalPacketCount:]";
      v13 = 2048;
      v14 = [packetsCopy count];
      v15 = 2048;
      timestampCopy = timestamp;
      v17 = 2048;
      countCopy = count;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s packets.count = %llu, timestamp = %f, totalPacketCount = %lld", &v11, 0x2Au);
    }
  }

  [(ADSpeechLog *)self->_speechLog appendSpeechPackets:packetsCopy];
  [(ADSpeechManager *)self _tellDelegateAboutSpeechPackets:packetsCopy atTimestamp:count count:timestamp];
}

- (void)speechCapturingDidStopRecordingWithError:(id)error endpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics
{
  queue = self->_queue;
  metricsCopy = metrics;
  errorCopy = error;
  dispatch_assert_queue_V2(queue);
  recordingError = errorCopy;
  if (!errorCopy)
  {
    recordingError = self->_recordingError;
  }

  v13 = recordingError;
  [(ADSpeechManager *)self _recordingStoppedWithError:v13 totalPacketCount:count endpointMode:mode endpointerMetrics:metricsCopy];

  v14 = self->_recordingError;
  self->_recordingError = 0;
}

- (void)speechCapturingDidReceiveLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  dispatch_assert_queue_V2(self->_queue);
  speechState = self->_speechState;
  if (speechState > 4 || ((1 << speechState) & 0x13) == 0)
  {
    if (!self->_hasReceivedLastAudioBuffer)
    {
      [(ADSpeechManager *)self _lastAudioBufferReceivedWithEndpointMode:mode totalPacketCount:count endpointerMetrics:metricsCopy];
    }
  }

  else
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = sub_10001A01C(speechState);
      v14 = 136315394;
      v15 = "[ADSpeechManager speechCapturingDidReceiveLastAudioBufferWithEndpointMode:totalPacketCount:endpointerMetrics:]";
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Ignored because speech state is %@.", &v14, 0x16u);
    }
  }
}

- (void)speechCapturingDidUpdateRecordingInfo:(id)info
{
  infoCopy = info;
  route = [infoCopy route];
  deviceIdentifier = [infoCopy deviceIdentifier];
  [(ADSpeechManager *)self _updateRecordRoute:route andDeviceIdentifier:deviceIdentifier];

  [(ADSpeechManager *)self _tellDelegateUpdateAudioInfo:infoCopy];
}

- (void)speechCapturingDidStartRecordingSuccessfully:(BOOL)successfully error:(id)error withInfo:(id)info
{
  successfullyCopy = successfully;
  errorCopy = error;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v90 = "[ADSpeechManager speechCapturingDidStartRecordingSuccessfully:error:withInfo:]";
    v91 = 1024;
    *v92 = successfullyCopy;
    *&v92[4] = 2112;
    *&v92[6] = errorCopy;
    *&v92[14] = 2112;
    *&v92[16] = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s success = %d, error = %@, info = %@", buf, 0x26u);
  }

  if (!successfullyCopy)
  {
    [(ADSpeechManager *)self _updateSpeechState:0];
    [(ADSpeechManager *)self _tellDelegateSpeechFailedWithError:errorCopy];
    goto LABEL_64;
  }

  route = [infoCopy route];
  deviceIdentifier = [infoCopy deviceIdentifier];
  [(ADSpeechManager *)self _updateRecordRoute:route andDeviceIdentifier:deviceIdentifier];

  [(ADSpeechManager *)self _updateSpeechState:2];
  codec = [infoCopy codec];
  if (codec)
  {
    v88 = self->_initialDictationLanguage;
    offlineLanguage = [(AFDictationOptions *)self->_dictationOptions offlineLanguage];
    if (offlineLanguage)
    {
      v15 = offlineLanguage;
    }

    else
    {
      v15 = self->_primaryDictationLanguage;
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    if (!self->_localSpeechRecognizerTask || !AFOfflineDictationCapable() || ([infoCopy isFingerprintOnly] & 1) != 0)
    {
LABEL_13:
      v16 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        localSpeechRecognizerTask = self->_localSpeechRecognizerTask;
        v18 = v16;
        v19 = [NSNumber numberWithBool:AFOfflineDictationCapable()];
        *buf = 136315906;
        v90 = "[ADSpeechManager speechCapturingDidStartRecordingSuccessfully:error:withInfo:]";
        v91 = 2112;
        *v92 = v15;
        *&v92[8] = 2112;
        *&v92[10] = localSpeechRecognizerTask;
        *&v92[18] = 2112;
        *&v92[20] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Not starting local recognizer: language %@, task %@, dictation capable %@", buf, 0x2Au);
      }

LABEL_62:
      [(ADSpeechManager *)self _tellDelegateSpeechStartedWithRecordingInfo:infoCopy];
      [(ADSpeechLog *)self->_speechLog beginNewSpeechLogWithFormat:codec];

      goto LABEL_63;
    }

    codecIsNarrowband = [infoCopy codecIsNarrowband];
    voiceTriggerEventInfo = [infoCopy voiceTriggerEventInfo];
    v22 = voiceTriggerEventInfo != 0;

    v86 = self->_localSpeechRecognizerTask;
    v81 = [(NSString *)v86 isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation];
    v23 = objc_alloc_init(NSMutableDictionary);
    [v23 setObject:codec forKeyedSubscript:@"codec"];
    [v23 setObject:v15 forKeyedSubscript:@"language"];
    v24 = [NSNumber numberWithBool:codecIsNarrowband];
    [v23 setObject:v24 forKeyedSubscript:@"narrowband"];

    v25 = [NSNumber numberWithBool:v22];
    [v23 setObject:v25 forKeyedSubscript:@"farField"];

    dictationOptions = self->_dictationOptions;
    if (dictationOptions)
    {
      if (v81)
      {
        AFIsDictationRequestEligibleForOnDeviceDictation();
        dictationOptions = self->_dictationOptions;
      }

      detectUtterances = [(AFDictationOptions *)dictationOptions detectUtterances];
      originalAudioFileURL = [(AFDictationOptions *)self->_dictationOptions originalAudioFileURL];
      modelOverrideURL = [(AFDictationOptions *)self->_dictationOptions modelOverrideURL];
      inlineItemList = [(AFDictationOptions *)self->_dictationOptions inlineItemList];
      fieldLabel = [(AFDictationOptions *)self->_dictationOptions fieldLabel];
      AFIsDictationRequestSpeechApiRequest();

      interactionIdentifier = [(AFDictationOptions *)self->_dictationOptions interactionIdentifier];
      applicationName = [(AFDictationOptions *)self->_dictationOptions applicationName];
      preferOnlineRecognition = [(AFDictationOptions *)self->_dictationOptions preferOnlineRecognition];
      forceOfflineRecognition = [(AFDictationOptions *)self->_dictationOptions forceOfflineRecognition];
      secureOfflineOnly = [(AFDictationOptions *)self->_dictationOptions secureOfflineOnly];
      v80 = v81 & forceOfflineRecognition;
      [(AFDictationOptions *)self->_dictationOptions emojiRecognition];
      [(AFDictationOptions *)self->_dictationOptions autoPunctuation];
      v29 = [NSNumber numberWithBool:detectUtterances];
      [v23 setObject:v29 forKeyedSubscript:@"detectUtterances"];

      v82 = applicationName;
      if (applicationName)
      {
        v30 = applicationName;
      }

      else
      {
        v30 = @"undefined";
      }

      [v23 setObject:v30 forKeyedSubscript:@"applicationName"];
      v31 = [NSNumber numberWithBool:preferOnlineRecognition];
      [v23 setObject:v31 forKeyedSubscript:@"preferOnlineRecognition"];

      v32 = [NSNumber numberWithBool:forceOfflineRecognition];
      [v23 setObject:v32 forKeyedSubscript:@"forceOfflineRecognition"];

      v33 = [NSNumber numberWithBool:secureOfflineOnly];
      [v23 setObject:v33 forKeyedSubscript:@"secureOfflineOnly"];

      if (v80 == 1)
      {
        v34 = v86;
        if (secureOfflineOnly)
        {
          if (interactionIdentifier)
          {
            v35 = interactionIdentifier;
          }

          else
          {
            v35 = &stru_10051F508;
          }

          [v23 setObject:v35 forKeyedSubscript:@"dictationUIInteractionIdentifier"];
          v36 = AFCurrentUserInterfaceIdiom();
          v37 = v36;
          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = &stru_10051F508;
          }

          [v23 setObject:v38 forKeyedSubscript:@"userInterfaceIdiom"];

          source = [infoCopy source];
          v40 = source;
          if (source)
          {
            v41 = source;
          }

          else
          {
            v41 = &stru_10051F508;
          }

          [v23 setObject:v41 forKeyedSubscript:@"audioSource"];

          vendorId = [infoCopy vendorId];
          v43 = vendorId;
          if (vendorId)
          {
            v44 = vendorId;
          }

          else
          {
            v44 = &stru_10051F508;
          }

          [v23 setObject:v44 forKeyedSubscript:@"vendorId"];

          productId = [infoCopy productId];
          v46 = productId;
          if (productId)
          {
            v47 = productId;
          }

          else
          {
            v47 = &stru_10051F508;
          }

          [v23 setObject:v47 forKeyedSubscript:@"productId"];

          fieldLabel2 = [(AFDictationOptions *)self->_dictationOptions fieldLabel];
          v49 = fieldLabel2;
          if (fieldLabel2)
          {
            v50 = fieldLabel2;
          }

          else
          {
            v50 = &stru_10051F508;
          }

          [v23 setObject:v50 forKeyedSubscript:@"fieldLabel"];

          v51 = sub_10000EF08([infoCopy speechEvent]);
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = &stru_10051F508;
          }

          [v23 setObject:v53 forKeyedSubscript:@"inputOrigin"];

          if (AFIsSearchDictationRequest())
          {
            v54 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
            offlineDictationStatus = [v54 offlineDictationStatus];
            inlineItemList = [offlineDictationStatus objectForKey:v15];

            v57 = [inlineItemList objectForKey:AFOfflineDictationStatusOnDeviceSearchKey];
            LODWORD(v54) = [v57 BOOLValue];

            if (!v54)
            {
              v34 = v86;
              v58 = interactionIdentifier;
              goto LABEL_58;
            }

            v34 = CoreEmbeddedSpeechRecognizerTaskWebSearch;

LABEL_52:
            v58 = interactionIdentifier;
LABEL_58:
            interactionIdentifier = v58;

            goto LABEL_59;
          }

          if ([(AFDictationOptions *)self->_dictationOptions taskHint]== 5)
          {
            inlineItemList = v86;
            v34 = @"DictationCC";
            goto LABEL_52;
          }
        }

LABEL_59:
        v59 = v23;
        [v23 setObject:v34 forKeyedSubscript:@"task"];
        v60 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v90 = "[ADSpeechManager speechCapturingDidStartRecordingSuccessfully:error:withInfo:]";
          v91 = 2114;
          *v92 = v34;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Will start local speech recognition with task: %{public}@", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [(CSSiriSpeechRecordingContext *)self->_capturingContext sessionUUID];
        v63 = v62 = v34;
        [WeakRetained speechManager:self didBeginLocalRecognitionWithContext:v59 sessionUUID:v63];

        goto LABEL_62;
      }
    }

    else
    {
      if (self->_inlineItemList)
      {
        v34 = v86;
        if (AFIsNano())
        {
          inlineItemList = 0;
        }

        else
        {
          inlineItemList = self->_inlineItemList;
        }

        v82 = 0;
        v58 = 0;
        modelOverrideURL = 0;
        originalAudioFileURL = 0;
        inlineItemList = self->_inlineItemList;
        self->_inlineItemList = 0;
        goto LABEL_58;
      }

      v82 = 0;
      inlineItemList = 0;
      interactionIdentifier = 0;
      modelOverrideURL = 0;
      originalAudioFileURL = 0;
    }

    v34 = v86;
    goto LABEL_59;
  }

  v88 = +[ADSpeechManager _speechCodecError];
  [ADSpeechManager _cancelRecordingWithError:"_cancelRecordingWithError:suppressAlert:" suppressAlert:?];
LABEL_63:

LABEL_64:
  recordStartedCompletion = self->_recordStartedCompletion;
  if (recordStartedCompletion)
  {
    v65 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      speechState = self->_speechState;
      v67 = v65;
      v68 = sub_10001A01C(speechState);
      *buf = 136315394;
      v90 = "[ADSpeechManager speechCapturingDidStartRecordingSuccessfully:error:withInfo:]";
      v91 = 2112;
      *v92 = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Invoking recording started completion (state = %@)", buf, 0x16u);

      recordStartedCompletion = self->_recordStartedCompletion;
    }

    recordStartedCompletion[2](recordStartedCompletion);
    v69 = self->_recordStartedCompletion;
    self->_recordStartedCompletion = 0;
  }

  if (!successfullyCopy)
  {
    recordStoppedCompletion = self->_recordStoppedCompletion;
    if (recordStoppedCompletion)
    {
      v71 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v72 = self->_speechState;
        v73 = v71;
        v74 = sub_10001A01C(v72);
        *buf = 136315394;
        v90 = "[ADSpeechManager speechCapturingDidStartRecordingSuccessfully:error:withInfo:]";
        v91 = 2112;
        *v92 = v74;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s Invoking recording stopped completion (state = %@)", buf, 0x16u);

        recordStoppedCompletion = self->_recordStoppedCompletion;
      }

      recordStoppedCompletion[2](recordStoppedCompletion);
      v75 = self->_recordStoppedCompletion;
      self->_recordStoppedCompletion = 0;
    }
  }
}

- (void)_updateCapturingStateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSpeechManager _updateCapturingStateWithOptions:]";
    v9 = 2112;
    v10 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  if (optionsCopy)
  {
    _currentSpeechCaptureSource = [(ADSpeechManager *)self _currentSpeechCaptureSource];
    [_currentSpeechCaptureSource setSpeechRequestOptions:optionsCopy];
  }
}

- (void)_recordingStoppedWithError:(id)error totalPacketCount:(int64_t)count endpointMode:(int64_t)mode endpointerMetrics:(id)metrics
{
  errorCopy = error;
  metricsCopy = metrics;
  v12 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    speechState = self->_speechState;
    v14 = v12;
    v15 = sub_10001A01C(speechState);
    v24 = 136316418;
    v25 = "[ADSpeechManager _recordingStoppedWithError:totalPacketCount:endpointMode:endpointerMetrics:]";
    v26 = 2112;
    v27 = errorCopy;
    v28 = 2048;
    modeCopy = mode;
    v30 = 2048;
    countCopy = count;
    v32 = 2112;
    v33 = metricsCopy;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s error = %@, endpointMode = %zd, totalPacketCount = %zd, endpointerMetrics = %@, ADSpeechState = %@", &v24, 0x3Eu);
  }

  v16 = self->_speechState;
  [(ADSpeechManager *)self _updateSpeechState:0];
  if (errorCopy)
  {
    [(ADSpeechManager *)self _tellDelegateSpeechFailedWithError:errorCopy];
  }

  else if (v16 == 4)
  {
    [(ADSpeechManager *)self _tellDelegateSpeechCanceled];
  }

  else
  {
    if (!self->_hasReceivedLastAudioBuffer)
    {
      [(ADSpeechManager *)self _lastAudioBufferReceivedWithEndpointMode:mode totalPacketCount:count endpointerMetrics:metricsCopy];
    }

    [(ADSpeechManager *)self _tellDelegateSpeechFinished];
  }

  [(ADSpeechLog *)self->_speechLog endSpeechLog];
  self->_hasPreparedAudioSystemForPlayback = 0;
  if (self->_releasesAudioSessionWhenRecordingStopped)
  {
    v17 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v24 = 136315138;
      v25 = "[ADSpeechManager _recordingStoppedWithError:totalPacketCount:endpointMode:endpointerMetrics:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Asking AVVoiceController to release its audio session now because 'releasesAudioSessionWhenRecordingStopped' is set.", &v24, 0xCu);
    }

    [(ADSpeechManager *)self _releaseSession];
  }

  recordStoppedCompletion = self->_recordStoppedCompletion;
  if (recordStoppedCompletion)
  {
    v19 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v20 = self->_speechState;
      v21 = v19;
      v22 = sub_10001A01C(v20);
      v24 = 136315394;
      v25 = "[ADSpeechManager _recordingStoppedWithError:totalPacketCount:endpointMode:endpointerMetrics:]";
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Invoking recording stopped completion (state = %@)", &v24, 0x16u);

      recordStoppedCompletion = self->_recordStoppedCompletion;
    }

    recordStoppedCompletion[2](recordStoppedCompletion);
    v23 = self->_recordStoppedCompletion;
    self->_recordStoppedCompletion = 0;
  }
}

- (void)_lastAudioBufferReceivedWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    speechState = self->_speechState;
    v11 = v9;
    v12 = sub_10001A01C(speechState);
    v13 = 136316162;
    v14 = "[ADSpeechManager _lastAudioBufferReceivedWithEndpointMode:totalPacketCount:endpointerMetrics:]";
    v15 = 2048;
    modeCopy = mode;
    v17 = 2048;
    countCopy = count;
    v19 = 2112;
    v20 = metricsCopy;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %zd %zd %@ %@", &v13, 0x34u);
  }

  self->_hasReceivedLastAudioBuffer = 1;
  [(ADSpeechManager *)self _tellDelegateSpeechReceivedLastAudioBufferWithEndpointMode:mode totalPacketCount:count endpointerMetrics:metricsCopy];
}

- (void)_cancelRecordingWithError:(id)error suppressAlert:(BOOL)alert
{
  alertCopy = alert;
  errorCopy = error;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    speechState = self->_speechState;
    v9 = v7;
    v10 = sub_10001A01C(speechState);
    v13 = 136315906;
    v14 = "[ADSpeechManager _cancelRecordingWithError:suppressAlert:]";
    v15 = 2112;
    v16 = errorCopy;
    v17 = 1024;
    v18 = alertCopy;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ %d %@", &v13, 0x26u);
  }

  recordingError = self->_recordingError;
  self->_recordingError = errorCopy;

  _currentSpeechCaptureSource = [(ADSpeechManager *)self _currentSpeechCaptureSource];
  [_currentSpeechCaptureSource cancelSpeechCaptureSuppressingAlert:alertCopy];

  [(ADSpeechManager *)self _updateSpeechState:4];
}

- (void)_tellDelegateSpeechWillStopRecordingWithSignpostID:(unint64_t)d
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self willStopRecordingWithSignpostID:d];
}

- (void)_tellDelegateDidDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident
{
  confidentCopy = confident;
  scoresCopy = scores;
  languageCopy = language;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didDetectLanguage:languageCopy confidenceScores:scoresCopy isConfident:confidentCopy];
}

- (void)_tellDelegateDidSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self audioSessionDidBecomeActive:activeCopy];
}

- (void)_tellDelegateWillSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self audioSessionWillBecomeActive:activeCopy];
}

- (void)_tellDelegateShutdownUIWasRequested
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didRequestShutdownUIWithContext:self->_capturingContext];
}

- (void)_tellDelegateQuickStopWasRequested
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didRequestQuickStopWithContext:self->_capturingContext];
}

- (void)_tellDelegateToPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self performTwoShotPromptWithType:type context:self->_capturingContext completion:completionCopy];
}

- (void)_tellDelegateSpeechEndpointWasDetectedAtTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didDetectEndpointAtTime:self->_capturingContext context:time];
}

- (void)_tellDelegateSpeechStartpointWasDetectedAtTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didDetectStartpointAtTime:self->_capturingContext context:time];
}

- (void)_tellDelegateAudioFileDidFinish:(id)finish error:(id)error
{
  errorCopy = error;
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained speechManager:self didFinishWritingAudioFile:finishCopy error:errorCopy context:self->_capturingContext];
}

- (void)_tellDelegateAboutInputAveragePower:(float)power peak:(float)peak
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *&v7 = power;
    *&v8 = peak;
    [WeakRetained speechManager:self didUpdateInputAveragePower:v7 peakPower:v8];
  }

  else
  {
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[ADSpeechManager _tellDelegateAboutInputAveragePower:peak:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

- (void)_tellDelegateEndpointWasDelayedForMusic
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManagerDidDelayEndpointForMusic:self];
  }

  else
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[ADSpeechManager _tellDelegateEndpointWasDelayedForMusic]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

- (void)_tellDelegateMusicWasDetected
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManagerDidDetectMusic:self];
  }

  else
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[ADSpeechManager _tellDelegateMusicWasDetected]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

- (void)_tellDelegateAboutFingerprint:(id)fingerprint duration:(double)duration
{
  fingerprintCopy = fingerprint;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self capturedFingerprint:fingerprintCopy duration:duration];
  }

  else
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[ADSpeechManager _tellDelegateAboutFingerprint:duration:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v9, 0xCu);
    }
  }
}

- (void)_tellDelegateAboutSpeechPackets:(id)packets atTimestamp:(double)timestamp count:(int64_t)count
{
  packetsCopy = packets;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self capturedPackets:packetsCopy atTimestamp:count totalCount:self->_capturingContext context:timestamp];
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[ADSpeechManager _tellDelegateAboutSpeechPackets:atTimestamp:count:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v11, 0xCu);
    }
  }
}

- (void)_tellDelegateUpdateAudioInfo:(id)info
{
  infoCopy = info;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didUpdateRecordingWithInfo:infoCopy context:self->_capturingContext];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _tellDelegateUpdateAudioInfo:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v7, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechStartedWithRecordingInfo:(id)info
{
  infoCopy = info;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didStartRecordingWithInfo:infoCopy context:self->_capturingContext];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _tellDelegateSpeechStartedWithRecordingInfo:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v7, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechWillBeginWithTimestamp:(double)timestamp isFromFile:(BOOL)file isAudioPowerUpdateDisabled:(BOOL)disabled
{
  if (self->_shouldTalkToDelegate)
  {
    disabledCopy = disabled;
    fileCopy = file;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = WeakRetained;
    if (disabledCopy)
    {
      [WeakRetained speechManager:self willStartRecordingAtTimestamp:fileCopy isFromFile:0 inputAudioPowerWrapper:self->_capturingContext context:timestamp];
    }

    else
    {
      _createNewXPCWrapper = [(AFAudioPowerUpdater *)self->_audioPowerUpdater _createNewXPCWrapper];
      [v12 speechManager:self willStartRecordingAtTimestamp:fileCopy isFromFile:_createNewXPCWrapper inputAudioPowerWrapper:self->_capturingContext context:timestamp];
    }
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADSpeechManager _tellDelegateSpeechWillBeginWithTimestamp:isFromFile:isAudioPowerUpdateDisabled:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechRecognitionUpdateWillBegin
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self recognitionUpdateWillBeginForTask:self->_localSpeechRecognizerTask];
  }

  else
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[ADSpeechManager _tellDelegateSpeechRecognitionUpdateWillBegin]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechShouldPreheatWithRecordingInfo:(id)info
{
  infoCopy = info;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self preheatWithRecordingInfo:infoCopy context:self->_capturingContext];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _tellDelegateSpeechShouldPreheatWithRecordingInfo:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v7, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechFinished
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didFinishWithCapturingMode:self->_capturingMode context:self->_capturingContext];

    if (!self->_localSpeechRecognizerTask)
    {

      [(ADSpeechManager *)self _cleanUpDelegateInfo];
    }
  }

  else
  {
    v4 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADSpeechManager _tellDelegateSpeechFinished]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v5, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechReceivedLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didReceiveLastAudioBufferWithEndpointMode:mode totalPacketCount:count endpointerMetrics:metricsCopy context:self->_capturingContext];
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[ADSpeechManager _tellDelegateSpeechReceivedLastAudioBufferWithEndpointMode:totalPacketCount:endpointerMetrics:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v11, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechFailedWithError:(id)error
{
  errorCopy = error;
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didFailWithError:errorCopy context:self->_capturingContext];

    [(ADSpeechManager *)self _cleanUpDelegateInfo];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _tellDelegateSpeechFailedWithError:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v7, 0xCu);
    }
  }
}

- (void)_tellDelegateSpeechCanceled
{
  if (self->_shouldTalkToDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didCancelWithContext:self->_capturingContext];

    [(ADSpeechManager *)self _cleanUpDelegateInfo];
  }

  else
  {
    v4 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADSpeechManager _tellDelegateSpeechCanceled]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", &v5, 0xCu);
    }
  }
}

- (void)_cleanUpDelegateInfo
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSpeechManager _cleanUpDelegateInfo]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ADSpeechManager no longer talking to delegate", &v5, 0xCu);
  }

  [(AFAudioPowerUpdater *)self->_audioPowerUpdater endUpdate];
  self->_shouldTalkToDelegate = 0;
  self->_hasReceivedLastAudioBuffer = 0;
  self->_capturingMode = 0;
  capturingContext = self->_capturingContext;
  self->_capturingContext = 0;
}

- (void)resetLocalRecognizer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003408CC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelLocalRecognitionIfActive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034099C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)isLocallyRecognizing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100340B38;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)disableDESWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100340BEC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100340CD8;
  block[3] = &unk_10051CF58;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

- (id)_interactiveLocalSpeechRecognizer
{
  dispatch_assert_queue_V2(self->_queue);
  interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
  if (!interactiveLocalSpeechRecognizer)
  {
    v4 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:self instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
    v5 = self->_interactiveLocalSpeechRecognizer;
    self->_interactiveLocalSpeechRecognizer = v4;

    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = self->_interactiveLocalSpeechRecognizer;
      v9 = 136315650;
      v10 = "[ADSpeechManager _interactiveLocalSpeechRecognizer]";
      v11 = 2112;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ created speech recognizer %@", &v9, 0x20u);
    }

    interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
  }

  return interactiveLocalSpeechRecognizer;
}

- (void)dictationSessionDidComplete
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100340EFC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_releaseSession
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    isAudioSessionLikelyActive = self->_isAudioSessionLikelyActive;
    v23 = 136315394;
    v24 = "[ADSpeechManager _releaseSession]";
    v25 = 1024;
    v26 = isAudioSessionLikelyActive;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s isAudioSessionActive = %d (likely)", &v23, 0x12u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    hasActiveAudioSessionAssertions = [(ADAudioSessionCoordinator *)self->_audioSessionCoordinator hasActiveAudioSessionAssertions];
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315394;
      v24 = "[ADSpeechManager _releaseSession]";
      v25 = 1024;
      v26 = hasActiveAudioSessionAssertions;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s hasActiveAudioSessionAssertions = %d", &v23, 0x12u);
      v6 = AFSiriLogContextSpeech;
    }

    isReleaseAudioSessionRequired = self->_isReleaseAudioSessionRequired;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315394;
      v24 = "[ADSpeechManager _releaseSession]";
      v25 = 1024;
      v26 = isReleaseAudioSessionRequired;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s hasActivatedAudioSession = %d", &v23, 0x12u);
      if (hasActiveAudioSessionAssertions)
      {
LABEL_8:
        v8 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          v23 = 136315138;
          v24 = "[ADSpeechManager _releaseSession]";
          v9 = "%s Rejected releasing audio session because audio session coordinator has active assertions.";
LABEL_30:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v23, 0xCu);
          return 0;
        }

        return 0;
      }
    }

    else if (hasActiveAudioSessionAssertions)
    {
      goto LABEL_8;
    }

    if (!isReleaseAudioSessionRequired)
    {
      v8 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[ADSpeechManager _releaseSession]";
        v9 = "%s Skipped releasing audio session because audio session has not been activated and audio session coordinator has no active assertions.";
        goto LABEL_30;
      }

      return 0;
    }
  }

  if (self->_prepareAudioSystemTransactionCount < 1)
  {
    v29 = @"wasAudioSessionActive";
    v12 = [NSNumber numberWithBool:self->_isAudioSessionLikelyActive];
    v30 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v14 = +[AFAnalytics sharedAnalytics];
    [v14 logEventWithType:246 context:v13 contextNoCopy:1];

    *&self->_isAudioSessionLikelyActive = 0;
    self->_hasPreparedAudioSystemForPlayback = 0;
    self->_releasesAudioSessionWhenRecordingStopped = 0;
    self->_releasesAudioSessionWhenPrepareAudioSystemDone = 0;
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315138;
      v24 = "[ADSpeechManager _releaseSession]";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Stopping audio playback, if any", &v23, 0xCu);
    }

    [(CSSiriAudioPlaybackService *)self->_audioPlaybackService stopAllRequestsSynchronously];
    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315138;
      v24 = "[ADSpeechManager _releaseSession]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Stopped audio playback, if any", &v23, 0xCu);
    }

    _currentSpeechCaptureSource = [(ADSpeechManager *)self _currentSpeechCaptureSource];
    [(CSSiriSpeechRecorder *)_currentSpeechCaptureSource releaseAudioSession];
    speechRecorder = self->_speechRecorder;
    if (speechRecorder != _currentSpeechCaptureSource)
    {
      [(CSSiriSpeechRecorder *)speechRecorder releaseAudioSession];
    }

    [(ADSpeechManager *)self _updateAudioDeviceInfo:0];
    [(ADSpeechManager *)self _updateRecordRoute:0 andDeviceIdentifier:0];
    *&self->_hasFetchedSmartSiriVolume = 0;
    self->_dirtySiriOutputVolumeHostTime = 0;
    v19 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v23 = 136315650;
      v24 = "[ADSpeechManager _releaseSession]";
      v25 = 1024;
      v26 = 0;
      v27 = 1024;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, hasUpdatedSiriOutputVolume = %d", &v23, 0x18u);
    }

    if (self->_volumeService && ![(ADSpeechManager *)self _supportsVolumeService])
    {
      [(ADVolumeService *)self->_volumeService invalidate];
      volumeService = self->_volumeService;
      self->_volumeService = 0;
    }

    v21 = +[AFAnalytics sharedAnalytics];
    v11 = 1;
    [v21 logEventWithType:247 context:v13 contextNoCopy:1];
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[ADSpeechManager _releaseSession]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Deferred releasing audio session during audio system preparation.", &v23, 0xCu);
    }

    v11 = 0;
    self->_releasesAudioSessionWhenPrepareAudioSystemDone = 1;
  }

  return v11;
}

- (void)_updateRecordRoute:(id)route andDeviceIdentifier:(id)identifier
{
  routeCopy = route;
  identifierCopy = identifier;
  recordRoute = self->_recordRoute;
  if (recordRoute != routeCopy && ![(NSString *)recordRoute isEqualToString:routeCopy])
  {
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = self->_recordRoute;
      v18 = 136315650;
      v19 = "[ADSpeechManager _updateRecordRoute:andDeviceIdentifier:]";
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = routeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s recordRoute: %@ -> %@", &v18, 0x20u);
    }

    v11 = [(NSString *)routeCopy copy];
    v12 = self->_recordRoute;
    self->_recordRoute = v11;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier != identifierCopy && ![(NSString *)deviceIdentifier isEqualToString:identifierCopy])
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = self->_deviceIdentifier;
      v18 = 136315650;
      v19 = "[ADSpeechManager _updateRecordRoute:andDeviceIdentifier:]";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier: %@ -> %@", &v18, 0x20u);
    }

    v16 = [(NSString *)identifierCopy copy];
    v17 = self->_deviceIdentifier;
    self->_deviceIdentifier = v16;
  }
}

- (void)_updateAudioDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = self->_audioDeviceInfo;
  v6 = infoCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6 && v5)
    {
      v8 = [(CSAudioDeviceInfo *)v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      audioDeviceInfo = self->_audioDeviceInfo;
      v13 = 136315650;
      v14 = "[ADSpeechManager _updateAudioDeviceInfo:]";
      v15 = 2112;
      v16 = audioDeviceInfo;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s audioDeviceInfo: %@ -> %@", &v13, 0x20u);
    }

    v11 = [(CSAudioDeviceInfo *)v7 copy];
    v12 = self->_audioDeviceInfo;
    self->_audioDeviceInfo = v11;
  }

LABEL_11:
}

- (void)_updateSpeechState:(int)state
{
  speechState = self->_speechState;
  if (speechState != state)
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = sub_10001A01C(speechState);
      v9 = sub_10001A01C(state);
      v11 = 136315650;
      v12 = "[ADSpeechManager _updateSpeechState:]";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s speechState: %@ -> %@", &v11, 0x20u);
    }

    self->_speechState = state;
  }

  if ((state != 0) == (speechState == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechManager:self didChangeRecordingState:state != 0];
  }
}

- (id)_speechCompressor
{
  speechCompressor = self->_speechCompressor;
  if (!speechCompressor)
  {
    v4 = [ADSpeechCompressor alloc];
    queue = self->_queue;
    speechController = self->_speechController;
    audioSessionController = self->_audioSessionController;
    audioPlaybackService = self->_audioPlaybackService;
    v9 = +[ADExperimentManager sharedManager];
    context = [v9 context];
    v11 = [(ADSpeechCompressor *)v4 initWithQueue:queue speechController:speechController audioSessionController:audioSessionController audioPlaybackService:audioPlaybackService experimentContext:context];
    v12 = self->_speechCompressor;
    self->_speechCompressor = v11;

    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      speechRecorder = self->_speechRecorder;
      v16 = 136315650;
      v17 = "[ADSpeechManager _speechCompressor]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = speechRecorder;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ created speech compressor %@", &v16, 0x20u);
    }

    [(ADSpeechCompressor *)self->_speechCompressor setDelegate:self];
    speechCompressor = self->_speechCompressor;
  }

  return speechCompressor;
}

- (void)getSpeechRecorderVTSatScore:(id)score
{
  scoreCopy = score;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100341CA4;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = scoreCopy;
  v6 = scoreCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  [(AFAudioPowerUpdater *)self->_audioPowerUpdater invalidate];
  [(ADAudioSessionCoordinator *)self->_audioSessionCoordinator invalidate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ADSpeechManager;
  [(ADSpeechManager *)&v4 dealloc];
}

- (id)_initWithInstanceContext:(id)context
{
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = ADSpeechManager;
  v5 = [(ADSpeechManager *)&v36 init];
  if (v5)
  {
    v6 = sub_10021532C();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UNSPECIFIED, 0);

    if (v6)
    {
      v9 = dispatch_queue_create_with_target_V2("ADSpeechManagerQueue", v8, v6);
    }

    else
    {
      v9 = dispatch_queue_create("ADSpeechManagerQueue", v8);
    }

    v10 = v9;

    queue = v5->_queue;
    v5->_queue = v10;

    v5->_speechState = 0;
    v12 = objc_alloc_init(ADSpeechLog);
    speechLog = v5->_speechLog;
    v5->_speechLog = v12;

    if (contextCopy)
    {
      v14 = contextCopy;
    }

    else
    {
      v14 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v14;

    v16 = +[CSSpeechController sharedController];
    speechController = v5->_speechController;
    v5->_speechController = v16;

    v18 = +[CSAudioSessionController sharedInstance];
    audioSessionController = v5->_audioSessionController;
    v5->_audioSessionController = v18;

    if ([(AFInstanceContext *)v5->_instanceContext supportsAudioPowerUpdate])
    {
      v20 = [[ADAudioPowerCoreSpeechProvider alloc] initWithChannel:0 speechController:v5->_speechController];
      v21 = [[AFAudioPowerUpdater alloc] initWithProvider:v20 queue:v5->_queue frequency:1 delegate:v5];
      audioPowerUpdater = v5->_audioPowerUpdater;
      v5->_audioPowerUpdater = v21;
    }

    v23 = [[CSSiriAudioPlaybackService alloc] initWithAudioSessionController:v5->_audioSessionController];
    audioPlaybackService = v5->_audioPlaybackService;
    v5->_audioPlaybackService = v23;

    v25 = [[ADAudioSessionCoordinator alloc] initWithInstanceContext:contextCopy delegate:v5];
    audioSessionCoordinator = v5->_audioSessionCoordinator;
    v5->_audioSessionCoordinator = v25;

    v27 = v5->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034207C;
    block[3] = &unk_10051DFE8;
    v35 = v5;
    dispatch_async(v27, block);
    v28 = v5->_queue;
    v29 = +[ADQueueMonitor sharedMonitor];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1003420A0;
    v32[3] = &unk_10051C2E0;
    v33 = v28;
    v30 = v28;
    [v29 addQueue:v30 heartBeatInterval:v32 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v5;
}

+ (id)_ADSpeechManagerLowPriorityDispatchQueue
{
  v2 = qword_100590AB0;
  if (!qword_100590AB0)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.siri.ADSpeechManager.lowPrioritySerial", v4);
    v6 = qword_100590AB0;
    qword_100590AB0 = v5;

    v2 = qword_100590AB0;
  }

  return v2;
}

@end