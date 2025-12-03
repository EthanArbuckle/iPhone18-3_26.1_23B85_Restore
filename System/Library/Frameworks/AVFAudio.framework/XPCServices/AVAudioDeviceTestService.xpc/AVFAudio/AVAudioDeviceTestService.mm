@interface AVAudioDeviceTestService
- (AVAudioDeviceTestService)init;
- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)for;
- (BOOL)isMixerOutputEnabled;
- (BOOL)isOutputRouteBluetooth:(id)bluetooth session:(id)session;
- (BOOL)isPlaybackForTestEnabled;
- (BOOL)setVolume:(id)volume;
- (BOOL)setVolume:(id)volume session:(id)session;
- (double)calculateCrossCorrelationPeakRelativeToSource:(id)source capture:(id)capture;
- (id)convertBufferFor:(id)for sourceBuffer:(id)buffer;
- (id)stringForInterruptionReason:(unint64_t)reason;
- (id)stringForRouteChangeReason:(unint64_t)reason;
- (void)cancel;
- (void)checkSequenceValidity:(id)validity completion:(id)completion;
- (void)cleanUp;
- (void)cleanUpObservers;
- (void)configureDataSources:(id)sources session:(id)session;
- (void)configureMultiChannelMixerForOutputChannel:(int64_t)channel totalChannels:(int64_t)channels;
- (void)createAudioEngineAndProcessingChain:(id)chain session:(id)session sourceNodeBlock:(id)block;
- (void)dealloc;
- (void)passExtensionToken:(id)token;
- (void)playback:(id)playback filePath:(id)path completion:(id)completion;
- (void)playbackTone:(id)tone completion:(id)completion;
- (void)removeSystemVolumeObserver;
- (void)resetVolume:(float)volume;
- (void)setupAudioEngineFor:(id)for sourceNodeBlock:(id)block;
- (void)setupAudioSessionFor:(id)for playbackOnly:(BOOL)only completion:(id)completion;
- (void)setupAudioSessionForHearingTest:(id)test;
- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success;
- (void)setupMultiChannelMixerForOutputChannel:(id)channel completion:(id)completion;
- (void)setupObservers:(id)observers;
- (void)setupVolumeObserverForVolume:(float)volume completion:(id)completion;
- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion;
- (void)startWithSequence:(id)sequence completion:(id)completion;
- (void)stopAudioSession:(id)session;
- (void)stopPlayback;
- (void)stopRecording:(id)recording;
@end

@implementation AVAudioDeviceTestService

- (void)cancel
{
  engine = [(AVAudioDeviceTestService *)self engine];
  [engine stop];

  exit(0);
}

- (void)cleanUp
{
  sourceNode = [(AVAudioDeviceTestService *)self sourceNode];

  if (sourceNode)
  {
    sourceNode2 = [(AVAudioDeviceTestService *)self sourceNode];
    [sourceNode2 reset];

    [(AVAudioDeviceTestService *)self setSourceNode:0];
  }

  player = [(AVAudioDeviceTestService *)self player];

  if (player)
  {
    player2 = [(AVAudioDeviceTestService *)self player];
    [player2 stop];

    [(AVAudioDeviceTestService *)self setPlayer:0];
  }

  engine = [(AVAudioDeviceTestService *)self engine];
  if (engine)
  {
    v8 = engine;
    engine2 = [(AVAudioDeviceTestService *)self engine];
    isRunning = [engine2 isRunning];

    if (isRunning)
    {
      engine3 = [(AVAudioDeviceTestService *)self engine];
      [engine3 stop];

      engine4 = [(AVAudioDeviceTestService *)self engine];
      [engine4 reset];

      [(AVAudioDeviceTestService *)self setEngine:0];
    }
  }

  ptr = self->mPulseToneHandler.__ptr_;
  p_mPulseToneHandler = &self->mPulseToneHandler;
  if (ptr)
  {

    sub_1000022D4(p_mPulseToneHandler, 0);
  }
}

- (void)removeSystemVolumeObserver
{
  systemVolumeObserver = [(AVAudioDeviceTestService *)self systemVolumeObserver];

  if (systemVolumeObserver)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v4 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "AVAudioDeviceTestService.mm";
      v9 = 1024;
      v10 = 1893;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Removing systemVolumeObserver", &v7, 0x12u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    systemVolumeObserver2 = [(AVAudioDeviceTestService *)self systemVolumeObserver];
    [v5 removeObserver:systemVolumeObserver2];
  }
}

- (void)cleanUpObservers
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v3 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "AVAudioDeviceTestService.mm";
    v28 = 1024;
    v29 = 1861;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers", buf, 0x12u);
  }

  routeChangeObserver = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v5 = routeChangeObserver == 0;

  if (!v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    routeChangeObserver2 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v6 removeObserver:routeChangeObserver2];
  }

  interruptionObserver = [(AVAudioDeviceTestService *)self interruptionObserver];
  v9 = interruptionObserver == 0;

  if (!v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    interruptionObserver2 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v10 removeObserver:interruptionObserver2];
  }

  mediaservicesLostObserver = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  v13 = mediaservicesLostObserver == 0;

  if (!v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v14 removeObserver:mediaservicesLostObserver2];
  }

  mediaservicesResetObserver = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  v17 = mediaservicesResetObserver == 0;

  if (!v17)
  {
    v18 = +[NSNotificationCenter defaultCenter];
    mediaservicesResetObserver2 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v18 removeObserver:mediaservicesResetObserver2];
  }

  [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
  v20 = +[NSNotificationCenter defaultCenter];
  [v20 removeObserver:self];

  v21 = +[AVSystemController sharedAVSystemController];
  v25 = 0;
  [v21 setAttribute:0 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v25];
  v22 = v25;

  if (v22)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v23 = *qword_100025DF8;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v22 localizedDescription];
      *buf = 136315650;
      v27 = "AVAudioDeviceTestService.mm";
      v28 = 1024;
      v29 = 1886;
      v30 = 2114;
      v31 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to unsubscribe from AVSystemController volume notification. { error=%{public}@ }", buf, 0x1Cu);
    }
  }
}

- (id)stringForRouteChangeReason:(unint64_t)reason
{
  if (reason > 8)
  {
    return &stru_100020E90;
  }

  else
  {
    return *(&off_1000208A8 + reason);
  }
}

- (id)stringForInterruptionReason:(unint64_t)reason
{
  if (reason > 2)
  {
    return &stru_100020E90;
  }

  else
  {
    return *(&off_100020890 + reason);
  }
}

- (void)setupObservers:(id)observers
{
  observersCopy = observers;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v5 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v43 = "AVAudioDeviceTestService.mm";
    v44 = 1024;
    v45 = 1721;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting up observers", buf, 0x12u);
  }

  routeChangeObserver = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v7 = routeChangeObserver == 0;

  if (!v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    routeChangeObserver2 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v8 removeObserver:routeChangeObserver2];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100003240;
  v40[3] = &unk_100020810;
  v40[4] = self;
  v11 = observersCopy;
  v41 = v11;
  v12 = [v10 addObserverForName:AVAudioSessionRouteChangeNotification object:0 queue:0 usingBlock:v40];
  [(AVAudioDeviceTestService *)self setRouteChangeObserver:v12];

  interruptionObserver = [(AVAudioDeviceTestService *)self interruptionObserver];
  LOBYTE(v10) = interruptionObserver == 0;

  if ((v10 & 1) == 0)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    interruptionObserver2 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v14 removeObserver:interruptionObserver2];
  }

  v16 = +[NSNotificationCenter defaultCenter];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100003454;
  v38[3] = &unk_100020810;
  v17 = v11;
  v38[4] = self;
  v39 = v17;
  v18 = [v16 addObserverForName:AVAudioSessionInterruptionNotification object:0 queue:0 usingBlock:v38];
  [(AVAudioDeviceTestService *)self setInterruptionObserver:v18];

  mediaservicesLostObserver = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  LOBYTE(v16) = mediaservicesLostObserver == 0;

  if ((v16 & 1) == 0)
  {
    v20 = +[NSNotificationCenter defaultCenter];
    mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v20 removeObserver:mediaservicesLostObserver2];
  }

  v22 = +[NSNotificationCenter defaultCenter];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000039A8;
  v36[3] = &unk_100020578;
  v23 = v17;
  v37 = v23;
  v24 = [v22 addObserverForName:AVAudioSessionMediaServicesWereLostNotification object:0 queue:0 usingBlock:v36];
  [(AVAudioDeviceTestService *)self setMediaservicesLostObserver:v24];

  mediaservicesResetObserver = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  LOBYTE(v22) = mediaservicesResetObserver == 0;

  if ((v22 & 1) == 0)
  {
    v26 = +[NSNotificationCenter defaultCenter];
    mediaservicesResetObserver2 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v26 removeObserver:mediaservicesResetObserver2];
  }

  v28 = +[NSNotificationCenter defaultCenter];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100003B7C;
  v34 = &unk_100020578;
  v29 = v23;
  v35 = v29;
  v30 = [v28 addObserverForName:AVAudioSessionMediaServicesWereResetNotification object:0 queue:0 usingBlock:&v31];
  [(AVAudioDeviceTestService *)self setMediaservicesResetObserver:v30, v31, v32, v33, v34];
}

- (void)configureMultiChannelMixerForOutputChannel:(int64_t)channel totalChannels:(int64_t)channels
{
  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v8 = [multichannelMixer inputFormatForBus:0];
  channelCount = [v8 channelCount];
  multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v11 = [multichannelMixer2 outputFormatForBus:0];
  v12 = [v11 channelCount] * channelCount;

  *buf = 0;
  sub_1000040D0(__b, v12);
  if (channels == 1)
  {
    *(__b[0] + channel) = 1065353216;
  }

  else if (channels >= 1)
  {
    memset_pattern16(__b[0], &unk_100016200, 4 * channels);
  }

  multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
  audioUnit = [multichannelMixer3 audioUnit];
  v15 = AudioUnitSetProperty(audioUnit, 0xBBEu, 1u, 0, __b[0], 4 * v12);

  if (v15)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v16 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1715;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", buf, 0x18u);
    }
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setupMultiChannelMixerForOutputChannel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [multichannelMixer outputFormatForBus:0];
  channelCount = [v9 channelCount];

  multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [multichannelMixer2 inputFormatForBus:0];
  channelCount2 = [v12 channelCount];

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v14 = *qword_100025DF8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v16 = [multichannelMixer3 inputFormatForBus:0];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1669;
    v33 = 1024;
    channelCount3 = [v16 channelCount];
    v35 = 1024;
    v36 = channelCount;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mixer dimension %d x %d", buf, 0x1Eu);
  }

  v17 = channelCount2 * channelCount;
  *v27 = 0;
  sub_1000040D0(buf, v17);
  if (channelCopy)
  {
    for (i = 0; [channelCopy count] > i; ++i)
    {
      v19 = [channelCopy objectAtIndexedSubscript:i];
      intValue = [v19 intValue];

      if (intValue < v17)
      {
        v21 = *buf;
        do
        {
          *(v21 + 4 * intValue) = 1065353216;
          intValue += channelCount;
        }

        while (intValue < v17);
      }
    }
  }

  else if (v17)
  {
    memset_pattern16(*buf, &unk_100016200, 4 * v17);
  }

  multichannelMixer4 = [(AVAudioDeviceTestService *)self multichannelMixer];
  audioUnit = [multichannelMixer4 audioUnit];
  v24 = AudioUnitSetProperty(audioUnit, 0xBBEu, 1u, 0, *buf, 4 * v17);

  if (v24)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v25 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315650;
      *&v27[4] = "AVAudioDeviceTestService.mm";
      v28 = 1024;
      v29 = 1688;
      v30 = 1024;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", v27, 0x18u);
    }

    v26 = sub_100003D50(-10);
    completionCopy[2](completionCopy, v26);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

- (void)dealloc
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v3 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AVAudioDeviceTestService.mm";
    v14 = 1024;
    v15 = 1646;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers and invalidating process assertion", buf, 0x12u);
  }

  [(AVAudioDeviceTestService *)self extensionHandle];
  if (sandbox_extension_release())
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v4 = *qword_100025DF8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 136315650;
      v13 = "AVAudioDeviceTestService.mm";
      v14 = 1024;
      v15 = 1650;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't release extension %i", buf, 0x18u);
    }
  }

  userVolumeBeforeHearingTest = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
  v7 = userVolumeBeforeHearingTest == 0;

  if (!v7)
  {
    userVolumeBeforeHearingTest2 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
    [userVolumeBeforeHearingTest2 floatValue];
    [(AVAudioDeviceTestService *)self resetVolume:?];
  }

  [(AVAudioDeviceTestService *)self cleanUpObservers];
  transaction = [(AVAudioDeviceTestService *)self transaction];
  v10 = transaction == 0;

  if (!v10)
  {
    [(AVAudioDeviceTestService *)self setTransaction:0];
  }

  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestService;
  [(AVAudioDeviceTestService *)&v11 dealloc];
}

- (id)convertBufferFor:(id)for sourceBuffer:(id)buffer
{
  forCopy = for;
  bufferCopy = buffer;
  v6 = [AVAudioFormat alloc];
  processingFormat = [forCopy processingFormat];
  settings = [processingFormat settings];
  v9 = [v6 initWithSettings:settings];

  v29 = v9;
  settings2 = [v9 settings];
  v11 = [settings2 mutableCopy];

  engine = [(AVAudioDeviceTestService *)self engine];
  inputNode = [engine inputNode];
  v14 = [inputNode inputFormatForBus:0];
  [v14 sampleRate];
  v15 = [NSNumber numberWithDouble:?];
  [v11 setObject:v15 forKeyedSubscript:AVSampleRateKey];

  [v11 setObject:&off_100021040 forKeyedSubscript:AVNumberOfChannelsKey];
  v16 = [[AVAudioFormat alloc] initWithSettings:v11];
  v17 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v16 frameCapacity:objc_msgSend(forCopy, "length")];
  v18 = [[AVAudioConverter alloc] initFromFormat:v29 toFormat:v16];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100004D14;
  v32[3] = &unk_1000205A0;
  v19 = bufferCopy;
  v33 = v19;
  v20 = objc_retainBlock(v32);
  v31 = 0;
  v21 = [v18 convertToBuffer:v17 error:&v31 withInputFromBlock:v20];
  v22 = v31;
  if (v21 == 3)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v23 = *qword_100025DF8;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v22 localizedDescription];
      v25 = sub_100003D50(-6);
      code = [v25 code];
      *buf = 136315906;
      v35 = "AVAudioDeviceTestService.mm";
      v36 = 1024;
      v37 = 1638;
      v38 = 2112;
      v39 = localizedDescription;
      v40 = 2048;
      v41 = code;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
    }
  }

  return v17;
}

- (void)setupAudioEngineFor:(id)for sourceNodeBlock:(id)block
{
  forCopy = for;
  blockCopy = block;
  v7 = +[AVAudioSession sharedInstance];
  [(AVAudioDeviceTestService *)self createAudioEngineAndProcessingChain:forCopy session:v7 sourceNodeBlock:blockCopy];
}

- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)for
{
  forCopy = for;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v5 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1582;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating engine and tone handler", &v13, 0x12u);
  }

  if (!forCopy)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (!os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1584;
    v11 = "%25s:%-5d Unable to create pulse tone from nil sequence";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x12u);
    goto LABEL_22;
  }

  v6 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v6];

  if (!v6)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (!os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1602;
    v11 = "%25s:%-5d Unable to create instance of AVAudioEngine";
    goto LABEL_21;
  }

  engine = [(AVAudioDeviceTestService *)self engine];
  outputNode = [engine outputNode];
  v9 = [outputNode outputFormatForBus:0];

  if (v9)
  {
    [v9 sampleRate];
    [forCopy frequency];
    [forCopy soundLevel];
    [forCopy numberOfPulses];
    [forCopy pulseDuration];
    [forCopy pauseDuration];
    [forCopy rampDuration];
    [forCopy startDelay];
    operator new();
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v10 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1599;
    v11 = "%25s:%-5d Unable to get output format for bus 0";
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

- (void)setupAudioSessionFor:(id)for playbackOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  forCopy = for;
  completionCopy = completion;
  v10 = +[AVAudioSession sharedInstance];
  v11 = v10;
  if (onlyCopy)
  {
    category = [v10 category];

    if (category == AVAudioSessionCategoryPlayback)
    {
      v20 = 0;
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v13 = *qword_100025DF8;
      if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v65 = "AVAudioDeviceTestService.mm";
        v66 = 1024;
        v67 = 1493;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating current audio session category to playback only.", buf, 0x12u);
      }

      v63 = 0;
      v14 = [v11 setCategory:AVAudioSessionCategoryPlayback error:&v63];
      v15 = v63;
      if ((v14 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v16 = *qword_100025DF8;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1496;
          v68 = 2112;
          v69 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session category. { error=%@ }", buf, 0x1Cu);
        }

        v18 = sub_100003D50(-1);
        completionCopy[2](completionCopy, v18);
      }

      v62 = v15;
      v19 = [v11 setMode:AVAudioSessionModeRaw error:&v62];
      v20 = v62;

      if ((v19 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v21 = *qword_100025DF8;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [v20 localizedDescription];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1501;
          v68 = 2112;
          v69 = localizedDescription2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session mode. { error=%@ }", buf, 0x1Cu);
        }

        v23 = sub_100003D50(-1);
        completionCopy[2](completionCopy, v23);
LABEL_73:
      }
    }
  }

  else
  {
    allowAllBuiltInDataSources = [v10 allowAllBuiltInDataSources];
    if ((allowAllBuiltInDataSources & 1) == 0)
    {
      [v11 setAllowAllBuiltInDataSources:1];
    }

    if (![forCopy requiresBluetoothOutput] || (objc_msgSend(v11, "categoryOptions") & 0x20) != 0)
    {
      v25 = allowAllBuiltInDataSources ^ 1;
      if ([forCopy outputMode] == 1)
      {
        v27 = [v11 categoryOptions] & 8;
        v26 = v27 ^ 8;
        v25 |= v27 == 0;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = 1;
      v26 = 32;
    }

    category2 = [v11 category];

    if (category2 == AVAudioSessionCategoryPlayAndRecord)
    {
      v20 = 0;
    }

    else
    {
      v61 = 0;
      v29 = [v11 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:v26 error:&v61];
      v20 = v61;
      if ((v29 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v30 = *qword_100025DF8;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          code = [v20 code];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1527;
          v68 = 2048;
          v69 = code;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
        }

        v32 = sub_100003D50(-1);
        completionCopy[2](completionCopy, v32);
      }

      v25 = 1;
    }

    if ([v11 preferredIOBufferFrameSize] != 4096)
    {
      v60 = v20;
      v33 = [v11 setPreferredIOBufferFrameSize:4096 error:&v60];
      v34 = v60;

      if ((v33 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v35 = *qword_100025DF8;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          code2 = [v34 code];
          v37 = sub_100003D50(-1);
          code3 = [v37 code];
          *buf = 136315906;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1544;
          v68 = 2048;
          v69 = code2;
          v70 = 2048;
          v71 = code3;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v25 = 1;
      v20 = v34;
    }

    mode = [forCopy mode];
    if (!mode)
    {
      goto LABEL_55;
    }

    mode2 = [v11 mode];
    mode3 = [forCopy mode];
    v42 = mode2 == mode3;

    if (v42)
    {
LABEL_55:
      if (v25 & 1) == 0 && ([v11 isActive])
      {
        goto LABEL_74;
      }
    }

    else
    {
      mode4 = [forCopy mode];
      v59 = v20;
      v44 = [v11 setMode:mode4 error:&v59];
      v45 = v59;

      if ((v44 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v46 = *qword_100025DF8;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          code4 = [v45 code];
          v48 = sub_100003D50(-1);
          code5 = [v48 code];
          *buf = 136315906;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1552;
          v68 = 2048;
          v69 = code4;
          v70 = 2048;
          v71 = code5;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v20 = v45;
    }

    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v50 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v65 = "AVAudioDeviceTestService.mm";
      v66 = 1024;
      v67 = 1559;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%25s:%-5d Audio session has changed, setting active.", buf, 0x12u);
    }

    v58 = v20;
    v51 = [v11 setActive:1 error:&v58];
    v52 = v58;

    v20 = v52;
    if ((v51 & 1) == 0)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v53 = *qword_100025DF8;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        code6 = [v52 code];
        v55 = sub_100003D50(-11);
        code7 = [v55 code];
        *buf = 136315906;
        v65 = "AVAudioDeviceTestService.mm";
        v66 = 1024;
        v67 = 1562;
        v68 = 2048;
        v69 = code6;
        v70 = 2048;
        v71 = code7;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
      }

      if ([v20 code] == 561145203)
      {
        [(AVAudioDeviceTestService *)self setTestServiceSupportedOnHardware:0];
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v57 = *qword_100025DF8;
        if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1566;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
        }

        v23 = sub_100003D50(-8);
        completionCopy[2](completionCopy, v23);
      }

      else
      {
        v23 = sub_100003D50(-11);
        completionCopy[2](completionCopy, v23);
      }

      goto LABEL_73;
    }

    [(AVAudioDeviceTestService *)self configureDataSources:forCopy session:v11];
  }

LABEL_74:
}

- (void)checkSequenceValidity:(id)validity completion:(id)completion
{
  validityCopy = validity;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = validityCopy;
    [v7 frequency];
    if (v8 != 0.0 || ([v7 soundLevel], v9 != 0.0) || (objc_msgSend(v7, "duration"), v10 != 0.0))
    {
      stimulusURL = [v7 stimulusURL];

      if (stimulusURL)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v12 = *qword_100025DF8;
        if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "AVAudioDeviceTestService.mm";
          v23 = 1024;
          v24 = 1468;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set playback URL and tone on the same sequence", &v21, 0x12u);
        }

        v13 = sub_100003D50(-7);
        completionCopy[2](completionCopy, v13);
      }
    }

    [v7 frequency];
    if (v14 == 0.0 || ([v7 soundLevel], v15 == 0.0) || (objc_msgSend(v7, "duration"), v16 == 0.0))
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v17 = *qword_100025DF8;
      if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "AVAudioDeviceTestService.mm";
        v23 = 1024;
        v24 = 1473;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot perform tone playback without setting all required parameters (frequency, soundLevel, and duration)", &v21, 0x12u);
      }

      v18 = sub_100003D50(-7);
      completionCopy[2](completionCopy, v18);
    }
  }

  if ([validityCopy requiresBluetoothOutput] && objc_msgSend(validityCopy, "outputMode") == 1)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v19 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "AVAudioDeviceTestService.mm";
      v23 = 1024;
      v24 = 1479;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot request speaker output on Bluetooth route", &v21, 0x12u);
    }

    v20 = sub_100003D50(-7);
    completionCopy[2](completionCopy, v20);
  }
}

- (void)resetVolume:(float)volume
{
  v14 = 0.0;
  v4 = +[AVSystemController sharedAVSystemController];
  v13 = 0;
  [v4 getActiveCategoryVolume:&v14 andName:&v13];
  v5 = v13;

  v6 = vabds_f32(v14, volume);
  v7 = fabsf(v14 + volume);
  v8 = (v7 * 0.00000011921) + (v7 * 0.00000011921);
  if (v6 >= 1.1755e-38 && v6 > v8)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = "AVAudioDeviceTestService.mm";
      v17 = 1024;
      v18 = 1456;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      volumeCopy = volume;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current volume is not as expected, updating volume. { current=%f, expected=%f, name=%@ }", buf, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    *&v12 = volume;
    [v11 setActiveCategoryVolumeTo:v12];
  }
}

- (void)setupVolumeObserverForVolume:(float)volume completion:(id)completion
{
  completionCopy = completion;
  v7 = +[AVSystemController sharedAVSystemController];
  v24 = AVSystemController_SystemVolumeDidChangeNotification;
  v8 = [NSArray arrayWithObjects:&v24 count:1];
  v17 = 0;
  [v7 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v17];
  v9 = v17;

  if (v9)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1433;
      v22 = 2112;
      v23 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to subscribe to system volume notification. { error=%@ }", buf, 0x1Cu);
    }

    completionCopy[2](completionCopy, v9);
  }

  else
  {
    [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v12 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1440;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] setting up systemVolumeObserver", buf, 0x12u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000067D4;
    v15[3] = &unk_1000207E8;
    volumeCopy = volume;
    v14 = [v13 addObserverForName:AVSystemController_SystemVolumeDidChangeNotification object:0 queue:0 usingBlock:v15];
    [(AVAudioDeviceTestService *)self setSystemVolumeObserver:v14];
  }
}

- (BOOL)isPlaybackForTestEnabled
{
  v2 = CFPreferencesCopyAppValue(@"playback_for_test", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

- (BOOL)isMixerOutputEnabled
{
  v2 = CFPreferencesCopyAppValue(@"mixer_output_enable", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

- (void)stopAudioSession:(id)session
{
  sessionCopy = session;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B3C;
  v7[3] = &unk_1000207A0;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(toneQueue, v7);
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success
{
  statusCopy = status;
  successCopy = success;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007068;
  block[3] = &unk_1000207C8;
  block[4] = self;
  v12 = statusCopy;
  v13 = successCopy;
  v9 = successCopy;
  v10 = statusCopy;
  dispatch_async(toneQueue, block);
}

- (void)setupAudioSessionForHearingTest:(id)test
{
  testCopy = test;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007868;
  v7[3] = &unk_1000207A0;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
  dispatch_async(toneQueue, v7);
}

- (void)stopRecording:(id)recording
{
  recordingCopy = recording;
  nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  [nodeToCaptureData removeTapOnBus:0];

  engine = [(AVAudioDeviceTestService *)self engine];
  isRunning = [engine isRunning];

  if (isRunning)
  {
    engine2 = [(AVAudioDeviceTestService *)self engine];
    [engine2 stop];
  }

  v9 = +[AVAudioSession sharedInstance];
  v36 = 0;
  v10 = [v9 setActive:0 error:&v36];
  v11 = v36;

  if ((v10 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v12 = *qword_100025DF8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      code = [v11 code];
      v14 = sub_100003D50(-11);
      code2 = [v14 code];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1249;
      v41 = 2048;
      v42 = code;
      v43 = 2048;
      v44 = *&code2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
    }
  }

  v16 = +[AVAudioSession sharedInstance];
  v35 = v11;
  [v16 setActive:0 error:&v35];
  v17 = v35;

  v18 = v17;
  if (v17)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v19 = *qword_100025DF8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v17 localizedDescription];
      *buf = 136315650;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1254;
      v41 = 2112;
      v42 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to reset audio session %@", buf, 0x1Cu);
    }
  }

  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008554;
  block[3] = &unk_100020750;
  block[4] = self;
  dispatch_sync(toneQueue, block);

  inputTapFile = [(AVAudioDeviceTestService *)self inputTapFile];
  v23 = [inputTapFile length] == 0;

  if (v23)
  {
    v32 = sub_100003D50(-13);
    recordingCopy[2](recordingCopy, v32);
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v24 = *qword_100025DF8;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      inputTapFile2 = [(AVAudioDeviceTestService *)self inputTapFile];
      v25 = [inputTapFile2 url];
      path = [v25 path];
      inputTapFile3 = [(AVAudioDeviceTestService *)self inputTapFile];
      v28 = [inputTapFile3 length];
      inputTapFile4 = [(AVAudioDeviceTestService *)self inputTapFile];
      fileFormat = [inputTapFile4 fileFormat];
      [fileFormat sampleRate];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1266;
      v41 = 2114;
      v42 = path;
      v43 = 2048;
      v44 = v28 / v31;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped recording on server side %{public}@ (%f s)", buf, 0x26u);
    }

    [(AVAudioDeviceTestService *)self setInputTapFile:0];
    recordingCopy[2](recordingCopy, 0);
  }
}

- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion
{
  recordingCopy = recording;
  pathCopy = path;
  completionCopy = completion;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:recordingCopy completion:completionCopy];
  [(AVAudioDeviceTestService *)self setupAudioSessionFor:recordingCopy playbackOnly:0 completion:completionCopy];
  [(AVAudioDeviceTestService *)self setupAudioEngineFor:recordingCopy sourceNodeBlock:0];
  engine = [(AVAudioDeviceTestService *)self engine];
  inputNode = [engine inputNode];
  v12 = [inputNode inputFormatForBus:0];

  v33 = [NSURL fileURLWithPath:pathCopy];
  v13 = [AVAudioFile alloc];
  settings = [v12 settings];
  v39 = 0;
  v15 = [v13 initForWriting:v33 settings:settings error:&v39];
  v16 = v39;
  [(AVAudioDeviceTestService *)self setInputTapFile:v15];

  if (v16)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v17 = *qword_100025DF8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v16 localizedDescription];
      *buf = 136315650;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1216;
      v44 = 2112;
      v45 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
    }
  }

  inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
  if (inputFilter)
  {
    inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
    engine2 = inputFilter2;
  }

  else
  {
    engine2 = [(AVAudioDeviceTestService *)self engine];
    inputFilter2 = [engine2 inputNode];
  }

  [(AVAudioDeviceTestService *)self setNodeToCaptureData:inputFilter2];
  if (!inputFilter)
  {
  }

  nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100008BAC;
  v37[3] = &unk_100020778;
  v37[4] = self;
  v23 = v16;
  v38 = v23;
  [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v12 block:v37];

  engine3 = [(AVAudioDeviceTestService *)self engine];
  v36 = v23;
  v25 = [engine3 startAndReturnError:&v36];
  v26 = v36;

  if ((v25 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v28 = *qword_100025DF8;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [v26 localizedDescription];
      v30 = sub_100003D50(-10);
      code = [v30 code];
      *buf = 136315906;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1229;
      v44 = 2112;
      v45 = localizedDescription2;
      v46 = 2048;
      v47 = code;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
    }

    v32 = sub_100003D50(-10);
    completionCopy[2](completionCopy, v32);

    exit(-1);
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v27 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "AVAudioDeviceTestService.mm";
    v42 = 1024;
    v43 = 1234;
    v44 = 2112;
    v45 = pathCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started recording on server side %@", buf, 0x1Cu);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)stopPlayback
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v3 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1157;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requesting to stop tone playback.", buf, 0x12u);
  }

  if (self->mPulseToneHandler.__ptr_)
  {
    toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008F94;
    block[3] = &unk_100020750;
    block[4] = self;
    dispatch_async(toneQueue, block);
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v5 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "AVAudioDeviceTestService.mm";
      v10 = 1024;
      v11 = 1179;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested, tone has already been stopped.", buf, 0x12u);
    }

    toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009294;
    v6[3] = &unk_100020750;
    v6[4] = self;
    dispatch_sync(toneQueue, v6);
  }
}

- (void)playback:(id)playback filePath:(id)path completion:(id)completion
{
  playbackCopy = playback;
  pathCopy = path;
  v96 = playbackCopy;
  completionCopy = completion;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:playbackCopy completion:?];
  hearingTestSession = [(AVAudioDeviceTestService *)self hearingTestSession];

  if (!hearingTestSession)
  {
    [(AVAudioDeviceTestService *)self setupAudioSessionFor:playbackCopy playbackOnly:0 completion:completionCopy];
  }

  [(AVAudioDeviceTestService *)self setupAudioEngineFor:playbackCopy sourceNodeBlock:0];
  if (![(AVAudioDeviceTestService *)self setVolume:playbackCopy])
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [playbackCopy volume];
      v12 = v11;
      v13 = sub_100003D50(-7);
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1045;
      v109 = 2048;
      v110 = v12;
      v111 = 2048;
      code = [v13 code];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f (%li)", buf, 0x26u);
    }

    v14 = sub_100003D50(-7);
    completionCopy[2](completionCopy, v14);
  }

  v15 = [AVAudioFile alloc];
  stimulusURL = [v96 stimulusURL];
  v104 = 0;
  v95 = [v15 initForReading:stimulusURL error:&v104];
  v17 = v104;

  if (!v95 && v17)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v81 = *qword_100025DF8;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      [v17 localizedDescription];
      v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v83 = sub_100003D50(-9);
      code2 = [v83 code];
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1054;
      v109 = 2112;
      v110 = v82;
      v111 = 2048;
      code = code2;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
    }

    v85 = sub_100003D50(-9);
    completionCopy[2](completionCopy, v85);

    exit(-9);
  }

  v18 = [AVAudioPCMBuffer alloc];
  processingFormat = [v95 processingFormat];
  v20 = [v18 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v95, "length")];

  v103 = v17;
  LOBYTE(v18) = [v95 readIntoBuffer:v20 error:&v103];
  v21 = v103;

  if ((v18 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v22 = *qword_100025DF8;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 localizedDescription];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1061;
      v109 = 2112;
      v110 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
    }

    v20 = 0;
  }

  format = [v20 format];
  v25 = [format channelCount] > 1;

  if (!v25)
  {
    splitIntoSingleChannelBuffers = v20;
    goto LABEL_38;
  }

  microphone = [v96 microphone];
  v27 = microphone == 0;

  if (!v27)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v28 = *qword_100025DF8;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [v96 microphone];
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1068;
      v109 = 2114;
      v110 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Multichannel file provided, will split into single channel buffers. { requestedMic=%{public}@ }", buf, 0x1Cu);
    }

    splitIntoSingleChannelBuffers = [v20 splitIntoSingleChannelBuffers];
    microphone2 = [v96 microphone];
    v32 = [microphone2 isEqualToString:@"LeftBottom"];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      microphone3 = [v96 microphone];
      v38 = [microphone3 isEqualToString:@"Front"];

      if (v38)
      {
        v33 = 1;
      }

      else
      {
        microphone4 = [v96 microphone];
        v40 = [microphone4 isEqualToString:@"Back"];

        if (v40)
        {
          v33 = 2;
        }

        else
        {
          microphone5 = [v96 microphone];
          v42 = [microphone5 isEqualToString:@"RightBottom"];

          if (!v42)
          {
            if (qword_100025DF0 != -1)
            {
              dispatch_once(&qword_100025DF0, &stru_100020500);
            }

            v79 = *qword_100025DF8;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              [v96 microphone];
              v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136315650;
              v106 = "AVAudioDeviceTestService.mm";
              v107 = 1024;
              v108 = 1081;
              v109 = 2114;
              v110 = v80;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid mic channel name. { providedName=%{public}@ }", buf, 0x1Cu);
            }

            v58 = sub_100003D50(-7);
            completionCopy[2](completionCopy, v58);
            v36 = v21;
            goto LABEL_66;
          }

          v33 = 3;
        }
      }
    }

    v43 = [splitIntoSingleChannelBuffers objectAtIndexedSubscript:v33];

    splitIntoSingleChannelBuffers = v43;
LABEL_38:
    if (pathCopy)
    {
      format2 = [v20 format];
      v45 = [format2 channelCount] == 1;

      if (v45)
      {
        processingFormat2 = [v95 processingFormat];
        [processingFormat2 sampleRate];
        v48 = v47;
        engine = [(AVAudioDeviceTestService *)self engine];
        inputNode = [engine inputNode];
        v51 = [inputNode inputFormatForBus:0];
        [v51 sampleRate];
        v53 = v48 != v52;

        if (v53)
        {
          v54 = [(AVAudioDeviceTestService *)self convertBufferFor:v95 sourceBuffer:v20];
        }

        else
        {
          v54 = 0;
        }

        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v20;
        }

        v56 = v55;

        splitIntoSingleChannelBuffers = v56;
      }
    }

    v92 = dispatch_semaphore_create(0);
    player = [(AVAudioDeviceTestService *)self player];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_10000A51C;
    v100[3] = &unk_1000207A0;
    v91 = completionCopy;
    v102 = v91;
    v58 = v92;
    v101 = v58;
    [player scheduleBuffer:splitIntoSingleChannelBuffers atTime:0 options:2 completionHandler:v100];

    if (pathCopy)
    {
      inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
      if (inputFilter)
      {
        inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
        engine2 = inputFilter2;
      }

      else
      {
        engine2 = [(AVAudioDeviceTestService *)self engine];
        inputFilter2 = [engine2 inputNode];
      }

      [(AVAudioDeviceTestService *)self setNodeToCaptureData:inputFilter2];
      if (!inputFilter)
      {
      }

      engine3 = [(AVAudioDeviceTestService *)self engine];
      inputNode2 = [engine3 inputNode];
      v64 = [inputNode2 inputFormatForBus:0];

      v65 = [NSURL fileURLWithPath:pathCopy];
      v66 = [AVAudioFile alloc];
      settings = [v64 settings];
      v99 = v21;
      v68 = [v66 initForWriting:v65 settings:settings error:&v99];
      v69 = v99;

      v21 = v69;
      [(AVAudioDeviceTestService *)self setInputTapFile:v68];

      if (v69)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v70 = *qword_100025DF8;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [v69 localizedDescription];
          v71 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136315650;
          v106 = "AVAudioDeviceTestService.mm";
          v107 = 1024;
          v108 = 1127;
          v109 = 2112;
          v110 = v71;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
        }
      }

      nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_10000A620;
      v98[3] = &unk_1000206D8;
      v98[4] = self;
      [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v64 block:v98];
    }

    engine4 = [(AVAudioDeviceTestService *)self engine];
    [engine4 prepare];

    engine5 = [(AVAudioDeviceTestService *)self engine];
    v97 = v21;
    v75 = [engine5 startAndReturnError:&v97];
    v36 = v97;

    if ((v75 & 1) == 0)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v86 = *qword_100025DF8;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        [v36 localizedDescription];
        v87 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v88 = sub_100003D50(-10);
        code3 = [v88 code];
        *buf = 136315906;
        v106 = "AVAudioDeviceTestService.mm";
        v107 = 1024;
        v108 = 1141;
        v109 = 2112;
        v110 = v87;
        v111 = 2048;
        code = code3;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
      }

      v90 = sub_100003D50(-10);
      v91[2](v91, v90);

      exit(-1);
    }

    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v76 = *qword_100025DF8;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      [(AVAudioDeviceTestService *)self engine];
      v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1146;
      v109 = 2112;
      v110 = v77;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", buf, 0x1Cu);
    }

    player2 = [(AVAudioDeviceTestService *)self player];
    [player2 play];

    dispatch_semaphore_wait(v58, 0xFFFFFFFFFFFFFFFFLL);
    [(AVAudioDeviceTestService *)self stopPlayback];

LABEL_66:
    goto LABEL_67;
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v34 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v106 = "AVAudioDeviceTestService.mm";
    v107 = 1024;
    v108 = 1086;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid setup, cannot provide multichannel playback file without specifying mic channel.", buf, 0x12u);
  }

  v35 = sub_100003D50(-7);
  completionCopy[2](completionCopy, v35);
  splitIntoSingleChannelBuffers = v35;
  v36 = v21;
LABEL_67:
}

- (void)playbackTone:(id)tone completion:(id)completion
{
  toneCopy = tone;
  completionCopy = completion;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8A0;
  block[3] = &unk_100020728;
  v12 = toneCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = toneCopy;
  dispatch_async(toneQueue, block);
}

- (double)calculateCrossCorrelationPeakRelativeToSource:(id)source capture:(id)capture
{
  sourceCopy = source;
  captureCopy = capture;
  format = [sourceCopy format];
  if ([format channelCount] == 1)
  {
    format2 = [captureCopy format];
    channelCount = [format2 channelCount];

    if (channelCount == 1)
    {
      frameLength = [sourceCopy frameLength];
      v11 = *[sourceCopy floatChannelData];
      v12 = malloc_type_malloc(8 * frameLength, 0x100004052888210uLL);
      bzero(v12, 8 * frameLength);
      v13 = 3 * frameLength - 1;
      v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      bzero(v14, 4 * v13);
      if (v13 <= [captureCopy frameLength])
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v18 = *qword_100025DF8;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = sub_100003D50(-12);
          v21 = 4.8152e-34;
          v22 = "AVAudioDeviceTestService.mm";
          v23 = 1024;
          v24 = 868;
          v25 = 2048;
          code = [v19 code];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d the length of the captured buffer needs to be greater (%li)", &v21, 0x1Cu);
        }
      }

      else
      {
        memcpy(v14, *[captureCopy floatChannelData], 4 * objc_msgSend(captureCopy, "frameLength"));
      }

      vDSP_conv(v14, 1, v11, 1, v12, 1, 2 * frameLength, frameLength);
      v21 = 0.0;
      vDSP_maxv(v12, 1, &v21, 2 * frameLength);
      free(v14);
      free(v12);
      v17 = (log10f(v21) * 10.0);
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v15 = *qword_100025DF8;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_100003D50(-12);
    v21 = 4.8152e-34;
    v22 = "AVAudioDeviceTestService.mm";
    v23 = 1024;
    v24 = 881;
    v25 = 2048;
    code = [v16 code];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d the source file or captured buffers aren't signal channel files (%li)", &v21, 0x1Cu);
  }

  v17 = 0.0;
LABEL_17:

  return v17;
}

- (void)startWithSequence:(id)sequence completion:(id)completion
{
  sequenceCopy = sequence;
  completionCopy = completion;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v7 = *qword_100025DF8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 449;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d entering sequence", buf, 0x12u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *v236 = 0;
  *&v236[8] = v236;
  *&v236[16] = 0x2020000000;
  p_weak_ivar_lyt = &AVAudioDeviceTestService__classData.weak_ivar_lyt;
  v10 = off_100025E00;
  *&v236[24] = off_100025E00;
  if (!off_100025E00)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000F6EC;
    *&buf[24] = &unk_100020838;
    *&buf[32] = v236;
    v11 = sub_10000F73C();
    v12 = dlsym(v11, "MSNMonitorBeginException");
    *(*(*&buf[32] + 8) + 24) = v12;
    off_100025E00 = *(*(*&buf[32] + 8) + 24);
    v10 = *(*&v236[8] + 24);
  }

  _Block_object_dispose(v236, 8);
  if (!v10)
  {
LABEL_172:
    dlerror();
    abort_report_np();
    __break(1u);
LABEL_182:
    dispatch_once(&qword_100025DF0, &stru_100020500);
LABEL_174:
    v182 = *qword_100025DF8;
    if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [p_weak_ivar_lyt localizedDescription];
      v184 = sub_100003D50(-9);
      code = [v184 code];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 581;
      *&buf[18] = 2112;
      *&buf[20] = localizedDescription;
      *&buf[28] = 2048;
      *&buf[30] = code;
      _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
    }

    v186 = sub_100003D50(-9);
    v196[2](v196, 0, v186);

    exit(-9);
  }

  v10("audiotesting");
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v13 = *qword_100025DF8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 457;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting sequence", buf, 0x12u);
  }

  v14 = +[AVAudioSession sharedInstance];
  [v14 setAllowAllBuiltInDataSources:1];
  if ([sequenceCopy priority])
  {
    priority = [sequenceCopy priority];
  }

  else
  {
    priority = 10;
  }

  v235 = 0;
  v16 = [v14 setInterruptionPriority:priority error:&v235];
  v17 = v235;
  if ((v16 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v18 = *qword_100025DF8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      code2 = [v17 code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 467;
      *&buf[18] = 2048;
      *&buf[20] = code2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d error setInterruptionPriority %li", buf, 0x1Cu);
    }

    v20 = sub_100003D50(-3);
    completionCopy[2](completionCopy, 0, v20);
  }

  if ([sequenceCopy requiresBluetoothOutput])
  {
    v21 = 33;
  }

  else
  {
    v21 = 1;
  }

  v234 = v17;
  v22 = [v14 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeRaw options:v21 error:&v234];
  v23 = v234;

  v24 = v23;
  if ((v22 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v25 = *qword_100025DF8;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      code3 = [v23 code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 477;
      *&buf[18] = 2048;
      *&buf[20] = code3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
    }

    v27 = sub_100003D50(-1);
    completionCopy[2](completionCopy, 0, v27);
  }

  v233 = v23;
  v28 = [v14 setActive:1 error:&v233];
  v29 = v233;

  v30 = v29;
  if (v28)
  {
    v232 = v29;
    v31 = [v14 setPreferredIOBufferFrameSize:4096 error:&v232];
    v32 = v232;

    if ((v31 & 1) == 0)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v33 = *qword_100025DF8;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        code4 = [v32 code];
        v35 = sub_100003D50(-1);
        code5 = [v35 code];
        *buf = 136315906;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 504;
        *&buf[18] = 2048;
        *&buf[20] = code4;
        *&buf[28] = 2048;
        *&buf[30] = code5;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
      }
    }

    v201 = dispatch_semaphore_create(0);
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v37 = *qword_100025DF8;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 509;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring sequence", buf, 0x12u);
    }

    mode = [sequenceCopy mode];
    v39 = mode == 0;

    if (!v39)
    {
      mode2 = [sequenceCopy mode];
      v231 = v32;
      v41 = [v14 setMode:mode2 error:&v231];
      v42 = v231;

      if ((v41 & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v43 = *qword_100025DF8;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          code6 = [v42 code];
          v45 = sub_100003D50(-1);
          code7 = [v45 code];
          *buf = 136315906;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 513;
          *&buf[18] = 2048;
          *&buf[20] = code6;
          *&buf[28] = 2048;
          *&buf[30] = code7;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v32 = v42;
    }

    [(AVAudioDeviceTestService *)selfCopy configureDataSources:sequenceCopy session:v14];
    [(AVAudioDeviceTestService *)selfCopy createAudioEngineAndProcessingChain:sequenceCopy session:v14 sourceNodeBlock:0];
    if ([sequenceCopy numberOfChannels])
    {
      outputID = [sequenceCopy outputID];
      numberOfChannels = [sequenceCopy numberOfChannels];
    }

    else
    {
      outputID = [sequenceCopy outputID];
      numberOfChannels = 1;
    }

    [(AVAudioDeviceTestService *)selfCopy configureMultiChannelMixerForOutputChannel:outputID totalChannels:numberOfChannels];
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v56 = *qword_100025DF8;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      requiresBluetoothOutput = [sequenceCopy requiresBluetoothOutput];
      v58 = [(AVAudioDeviceTestService *)selfCopy isOutputRouteBluetooth:sequenceCopy session:v14];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 529;
      *&buf[18] = 1024;
      *&buf[20] = requiresBluetoothOutput;
      *&buf[24] = 1024;
      *&buf[26] = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth setting: %d, Output route: %d", buf, 0x1Eu);
    }

    if ([sequenceCopy requiresBluetoothOutput] && !-[AVAudioDeviceTestService isOutputRouteBluetooth:session:](selfCopy, "isOutputRouteBluetooth:session:", sequenceCopy, v14))
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v93 = *qword_100025DF8;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 532;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%25s:%-5d Output route is not a bluetooth speaker", buf, 0x12u);
      }

      v94 = sub_100003D50(-7);
      completionCopy[2](completionCopy, 0, v94);
    }

    else
    {
      if ([(AVAudioDeviceTestService *)selfCopy setVolume:sequenceCopy session:v14])
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v59 = *qword_100025DF8;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 543;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting up observers", buf, 0x12u);
        }

        routeChangeObserver = [(AVAudioDeviceTestService *)selfCopy routeChangeObserver];
        v61 = routeChangeObserver == 0;

        if (!v61)
        {
          v62 = +[NSNotificationCenter defaultCenter];
          routeChangeObserver2 = [(AVAudioDeviceTestService *)selfCopy routeChangeObserver];
          [v62 removeObserver:routeChangeObserver2];
        }

        v64 = +[NSNotificationCenter defaultCenter];
        v230[0] = _NSConcreteStackBlock;
        v230[1] = 3221225472;
        v230[2] = sub_10000F84C;
        v230[3] = &unk_100020550;
        v230[4] = selfCopy;
        v65 = [v64 addObserverForName:AVAudioSessionRouteChangeNotification object:v14 queue:0 usingBlock:v230];
        [(AVAudioDeviceTestService *)selfCopy setRouteChangeObserver:v65];

        interruptionObserver = [(AVAudioDeviceTestService *)selfCopy interruptionObserver];
        v67 = interruptionObserver == 0;

        if (!v67)
        {
          v68 = +[NSNotificationCenter defaultCenter];
          interruptionObserver2 = [(AVAudioDeviceTestService *)selfCopy interruptionObserver];
          [v68 removeObserver:interruptionObserver2];
        }

        v70 = +[NSNotificationCenter defaultCenter];
        v228[0] = _NSConcreteStackBlock;
        v228[1] = 3221225472;
        v228[2] = sub_10000F9DC;
        v228[3] = &unk_100020578;
        v71 = completionCopy;
        v229 = v71;
        v72 = [v70 addObserverForName:AVAudioSessionInterruptionNotification object:v14 queue:0 usingBlock:v228];
        [(AVAudioDeviceTestService *)selfCopy setInterruptionObserver:v72];

        mediaservicesLostObserver = [(AVAudioDeviceTestService *)selfCopy mediaservicesLostObserver];
        v74 = mediaservicesLostObserver == 0;

        if (!v74)
        {
          v75 = +[NSNotificationCenter defaultCenter];
          mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)selfCopy mediaservicesLostObserver];
          [v75 removeObserver:mediaservicesLostObserver2];
        }

        v77 = +[NSNotificationCenter defaultCenter];
        v226[0] = _NSConcreteStackBlock;
        v226[1] = 3221225472;
        v226[2] = sub_10000FB78;
        v226[3] = &unk_100020578;
        v196 = v71;
        v227 = v196;
        v78 = [v77 addObserverForName:AVAudioSessionMediaServicesWereLostNotification object:v14 queue:0 usingBlock:v226];
        [(AVAudioDeviceTestService *)selfCopy setMediaservicesLostObserver:v78];

        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v79 = *qword_100025DF8;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 576;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d preparing for test", buf, 0x12u);
        }

        v80 = [AVAudioFile alloc];
        stimulusURL = [sequenceCopy stimulusURL];
        v225 = v32;
        v202 = [v80 initForReading:stimulusURL error:&v225];
        p_weak_ivar_lyt = v225;

        if (!v202 && p_weak_ivar_lyt)
        {
          if (qword_100025DF0 == -1)
          {
            goto LABEL_174;
          }

          goto LABEL_182;
        }

        v82 = [AVAudioPCMBuffer alloc];
        processingFormat = [v202 processingFormat];
        v199 = [v82 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v202, "length")];

        v224 = p_weak_ivar_lyt;
        LOBYTE(processingFormat) = [v202 readIntoBuffer:v199 error:&v224];
        v84 = v224;

        v30 = v84;
        if (processingFormat)
        {
          v85 = v199;
        }

        else
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v95 = *qword_100025DF8;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            localizedDescription2 = [v84 localizedDescription];
            *buf = 136315650;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 588;
            *&buf[18] = 2112;
            *&buf[20] = localizedDescription2;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
          }

          v85 = 0;
        }

        v200 = v85;
        format = [v85 format];
        v98 = [format channelCount] > 1;

        if (v98)
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v99 = *qword_100025DF8;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = sub_100003D50(-6);
            code8 = [v100 code];
            *buf = 136315650;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 593;
            *&buf[18] = 2048;
            *&buf[20] = code8;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid stimulus buffer format %li", buf, 0x1Cu);
          }

          v102 = sub_100003D50(-6);
          v196[2](v196, 0, v102);
          v55 = 1;
        }

        else
        {
          v193 = v200;
          processingFormat2 = [v202 processingFormat];
          [processingFormat2 sampleRate];
          v105 = v104;
          engine = [(AVAudioDeviceTestService *)selfCopy engine];
          inputNode = [engine inputNode];
          v108 = [inputNode inputFormatForBus:0];
          [v108 sampleRate];
          v110 = v105 != v109;

          if (v110)
          {
            v111 = [AVAudioFormat alloc];
            processingFormat3 = [v202 processingFormat];
            settings = [processingFormat3 settings];
            v194 = [v111 initWithSettings:settings];

            settings2 = [v194 settings];
            v197 = [settings2 mutableCopy];

            engine2 = [(AVAudioDeviceTestService *)selfCopy engine];
            inputNode2 = [engine2 inputNode];
            v117 = [inputNode2 inputFormatForBus:0];
            [v117 sampleRate];
            v118 = [NSNumber numberWithDouble:?];
            [v197 setObject:v118 forKeyedSubscript:AVSampleRateKey];

            [v197 setObject:&off_100021040 forKeyedSubscript:AVNumberOfChannelsKey];
            v119 = [[AVAudioFormat alloc] initWithSettings:v197];
            v120 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v119 frameCapacity:objc_msgSend(v202, "length")];
            v121 = [[AVAudioConverter alloc] initFromFormat:v194 toFormat:v119];
            v222[0] = _NSConcreteStackBlock;
            v222[1] = 3221225472;
            v222[2] = sub_10000FD14;
            v222[3] = &unk_1000205A0;
            v223 = v193;
            v122 = objc_retainBlock(v222);
            v221 = v30;
            v123 = [v121 convertToBuffer:v120 error:&v221 withInputFromBlock:v122];
            v192 = v221;

            if (!v123)
            {
              if (qword_100025DF0 != -1)
              {
                dispatch_once(&qword_100025DF0, &stru_100020500);
              }

              v124 = *qword_100025DF8;
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                localizedDescription3 = [v192 localizedDescription];
                v126 = sub_100003D50(-6);
                code9 = [v126 code];
                *buf = 136315906;
                *&buf[4] = "AVAudioDeviceTestService.mm";
                *&buf[12] = 1024;
                *&buf[14] = 621;
                *&buf[18] = 2112;
                *&buf[20] = localizedDescription3;
                *&buf[28] = 2048;
                *&buf[30] = code9;
                _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
              }
            }

            v30 = v192;
            v128 = v120;
          }

          else
          {
            v128 = 0;
          }

          v129 = v128;
          if (!v128)
          {
            v128 = v193;
          }

          v198 = v128;

          v217 = 0;
          v218 = &v217;
          v219 = 0x2020000000;
          frameLength = [v198 frameLength];
          [v14 outputSampleRate];
          v132 = v131;
          format2 = [v198 format];
          [format2 sampleRate];
          v135 = v134;
          [v14 outputLatency];
          v137 = v136;
          [v14 outputSampleRate];
          v139 = v138;
          [v14 outputSampleRate];
          v141 = v140;

          v220 = ((v132 / v135 * frameLength) + v137 * v139 + v141 * 0.5);
          engine3 = [(AVAudioDeviceTestService *)selfCopy engine];
          inputNode3 = [engine3 inputNode];
          v195 = [inputNode3 inputFormatForBus:0];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = sub_10000BCA8;
          *&buf[32] = sub_10000BCB8;
          v144 = [AVAudioPCMBuffer alloc];
          v238 = [v144 initWithPCMFormat:v195 frameCapacity:*(v218 + 6)];
          [*(*&buf[8] + 40) setFrameLength:0];
          inputFilter = [(AVAudioDeviceTestService *)selfCopy inputFilter];
          if (inputFilter)
          {
            inputFilter2 = [(AVAudioDeviceTestService *)selfCopy inputFilter];
            engine4 = inputFilter2;
          }

          else
          {
            engine4 = [(AVAudioDeviceTestService *)selfCopy engine];
            inputFilter2 = [engine4 inputNode];
          }

          [(AVAudioDeviceTestService *)selfCopy setNodeToCaptureData:inputFilter2];
          if (!inputFilter)
          {
          }

          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v148 = *qword_100025DF8;
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            v149 = *(v218 + 6);
            *v236 = 136315650;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 639;
            *&v236[18] = 1024;
            *&v236[20] = v149;
            _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "%25s:%-5d test length %i frames", v236, 0x18u);
          }

          nodeToCaptureData = [(AVAudioDeviceTestService *)selfCopy nodeToCaptureData];
          v212[0] = _NSConcreteStackBlock;
          v212[1] = 3221225472;
          v212[2] = sub_10000FD20;
          v212[3] = &unk_1000205C8;
          v215 = buf;
          v151 = v196;
          v214 = v151;
          v216 = &v217;
          v152 = v201;
          v213 = v152;
          [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v195 block:v212];

          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v153 = *qword_100025DF8;
          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 136315394;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 711;
            _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%25s:%-5d scheduling stimulus file", v236, 0x12u);
          }

          player = [(AVAudioDeviceTestService *)selfCopy player];
          [player scheduleBuffer:v198 atTime:0 options:2 completionHandler:&stru_1000205E8];

          engine5 = [(AVAudioDeviceTestService *)selfCopy engine];
          [engine5 prepare];

          engine6 = [(AVAudioDeviceTestService *)selfCopy engine];
          v211 = v30;
          LOBYTE(engine5) = [engine6 startAndReturnError:&v211];
          v157 = v211;

          v158 = v157;
          if ((engine5 & 1) == 0)
          {
            if (qword_100025DF0 != -1)
            {
              dispatch_once(&qword_100025DF0, &stru_100020500);
            }

            v187 = *qword_100025DF8;
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              localizedDescription4 = [v157 localizedDescription];
              v189 = sub_100003D50(-10);
              code10 = [v189 code];
              *v236 = 136315906;
              *&v236[4] = "AVAudioDeviceTestService.mm";
              *&v236[12] = 1024;
              *&v236[14] = 724;
              *&v236[18] = 2112;
              *&v236[20] = localizedDescription4;
              *&v236[28] = 2048;
              *&v236[30] = code10;
              _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v236, 0x26u);
            }

            v191 = sub_100003D50(-10);
            v151[2](v151, 0, v191);

            exit(-1);
          }

          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v159 = *qword_100025DF8;
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            engine7 = [(AVAudioDeviceTestService *)selfCopy engine];
            *v236 = 136315650;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 729;
            *&v236[18] = 2112;
            *&v236[20] = engine7;
            _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", v236, 0x1Cu);
          }

          player2 = [(AVAudioDeviceTestService *)selfCopy player];
          [player2 play];

          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v162 = *qword_100025DF8;
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 136315394;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 733;
            _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "%25s:%-5d waiting for sequence to finish", v236, 0x12u);
          }

          dispatch_semaphore_wait(v152, 0xFFFFFFFFFFFFFFFFLL);
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v163 = *qword_100025DF8;
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 136315394;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 737;
            _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence finished", v236, 0x12u);
          }

          nodeToCaptureData2 = [(AVAudioDeviceTestService *)selfCopy nodeToCaptureData];
          [nodeToCaptureData2 removeTapOnBus:0];

          engine8 = [(AVAudioDeviceTestService *)selfCopy engine];
          isRunning = [engine8 isRunning];

          if (isRunning)
          {
            player3 = [(AVAudioDeviceTestService *)selfCopy player];
            [player3 stop];

            engine9 = [(AVAudioDeviceTestService *)selfCopy engine];
            [engine9 stop];
          }

          v210 = v158;
          v169 = [v14 setActive:0 error:&v210];
          v170 = v210;

          v30 = v170;
          if ((v169 & 1) == 0)
          {
            if (qword_100025DF0 != -1)
            {
              dispatch_once(&qword_100025DF0, &stru_100020500);
            }

            v171 = *qword_100025DF8;
            if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
            {
              code11 = [v170 code];
              v173 = sub_100003D50(-11);
              code12 = [v173 code];
              *v236 = 136315906;
              *&v236[4] = "AVAudioDeviceTestService.mm";
              *&v236[12] = 1024;
              *&v236[14] = 751;
              *&v236[18] = 2048;
              *&v236[20] = code11;
              *&v236[28] = 2048;
              *&v236[30] = code12;
              _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", v236, 0x26u);
            }
          }

          [(AVAudioDeviceTestService *)selfCopy cleanUpObservers];
          v204[0] = _NSConcreteStackBlock;
          v204[1] = 3221225472;
          v204[2] = sub_10000FFDC;
          v204[3] = &unk_100020638;
          v209 = buf;
          v175 = sequenceCopy;
          v205 = v175;
          v206 = selfCopy;
          v102 = v198;
          v207 = v102;
          v208 = v151;
          v176 = objc_retainBlock(v204);
          if ([v175 processSequenceAsynchronously])
          {
            v177 = dispatch_get_global_queue(2, 0);
            dispatch_async(v177, v176);
          }

          else
          {
            (v176[2])(v176);
          }

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(&v217, 8);

          v55 = 0;
        }

        goto LABEL_161;
      }

      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v86 = *qword_100025DF8;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        [sequenceCopy volume];
        v88 = v87;
        category = [v14 category];
        v90 = sub_100003D50(-7);
        code13 = [v90 code];
        *buf = 136316162;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 538;
        *&buf[18] = 2048;
        *&buf[20] = v88;
        *&buf[28] = 2112;
        *&buf[30] = category;
        *&buf[38] = 2048;
        v238 = code13;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f for category %@ - (%li)", buf, 0x30u);
      }

      v92 = sub_100003D50(-7);
      completionCopy[2](completionCopy, 0, v92);
    }

    v55 = 1;
    v30 = v32;
LABEL_161:
    v54 = v201;
    goto LABEL_162;
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v49 = *qword_100025DF8;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    code14 = [v29 code];
    v51 = sub_100003D50(-11);
    code15 = [v51 code];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 488;
    *&buf[18] = 2048;
    *&buf[20] = code14;
    *&buf[28] = 2048;
    *&buf[30] = code15;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
  }

  if ([v29 code] == 561145203)
  {
    [(AVAudioDeviceTestService *)selfCopy setTestServiceSupportedOnHardware:0];
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v53 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 492;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
    }

    v54 = sub_100003D50(-8);
    completionCopy[2](completionCopy, 0, v54);
  }

  else
  {
    v54 = sub_100003D50(-11);
    completionCopy[2](completionCopy, 0, v54);
  }

  v55 = 1;
LABEL_162:

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v178 = *qword_100025DF8;
  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 844;
    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence completed", buf, 0x12u);
  }

  if ((v55 | 2) == 2)
  {
    *v236 = 0;
    *&v236[8] = v236;
    *&v236[16] = 0x2020000000;
    p_weak_ivar_lyt = &AVAudioDeviceTestService__classData.weak_ivar_lyt;
    v179 = off_100025E10;
    *&v236[24] = off_100025E10;
    if (!off_100025E10)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100010528;
      *&buf[24] = &unk_100020838;
      *&buf[32] = v236;
      v180 = sub_10000F73C();
      v181 = dlsym(v180, "MSNMonitorEndException");
      *(*(*&buf[32] + 8) + 24) = v181;
      off_100025E10 = *(*(*&buf[32] + 8) + 24);
      v179 = *(*&v236[8] + 24);
    }

    _Block_object_dispose(v236, 8);
    if (v179)
    {
      v179("audiotesting");
      goto LABEL_171;
    }

    goto LABEL_172;
  }

LABEL_171:
  objc_sync_exit(selfCopy);
}

- (BOOL)isOutputRouteBluetooth:(id)bluetooth session:(id)session
{
  sessionCopy = session;
  v5 = +[AVSystemController sharedAVSystemController];
  category = [sessionCopy category];
  v7 = [v5 routeForCategory:category];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  return v8;
}

- (void)passExtensionToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!tokenCopy)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v5 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "AVAudioDeviceTestService.mm";
      v11 = 1024;
      v12 = 436;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d extension token is null", buf, 0x12u);
    }

LABEL_15:
    exit(-9);
  }

  [tokenCopy UTF8String];
  [(AVAudioDeviceTestService *)selfCopy setExtensionHandle:sandbox_extension_consume()];
  if ([(AVAudioDeviceTestService *)selfCopy extensionHandle]< 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v6 = *qword_100025DF8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 136315650;
      v10 = "AVAudioDeviceTestService.mm";
      v11 = 1024;
      v12 = 430;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to consume extension: %i", buf, 0x18u);
    }

    goto LABEL_15;
  }

  objc_sync_exit(selfCopy);
}

- (void)configureDataSources:(id)sources session:(id)session
{
  sourcesCopy = sources;
  sessionCopy = session;
  [sessionCopy availableInputs];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v6 = v49 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v7)
  {
    v8 = *v49;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        portType = [v10 portType];
        v12 = [portType isEqualToString:AVAudioSessionPortBuiltInMic];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = 0;
  for (j = 0; ; j = v19)
  {
    dataSources = [v7 dataSources];
    v16 = [dataSources count] > v13;

    if (!v16)
    {
      break;
    }

    dataSources2 = [v7 dataSources];
    v18 = [dataSources2 objectAtIndexedSubscript:v13];

    v19 = v18;
    microphone = [sourcesCopy microphone];
    if (microphone)
    {
    }

    else
    {
      dataSourceID = [v19 dataSourceID];
      v22 = [dataSourceID intValue] == 1634495520;

      if (v22)
      {
        goto LABEL_31;
      }
    }

    microphone2 = [sourcesCopy microphone];
    v24 = microphone2 == 0;

    if (v24)
    {
      goto LABEL_29;
    }

    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 == 3)
        {
          microphone3 = [sourcesCopy microphone];
          v28 = [microphone3 isEqualToString:@"RightBottom"];

          if (v28)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_29;
      }

      microphone4 = [sourcesCopy microphone];
      v26 = [microphone4 isEqualToString:@"Back"];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_29;
      }

      microphone4 = [sourcesCopy microphone];
      v26 = [microphone4 isEqualToString:@"Front"];
    }

    else
    {
      microphone4 = [sourcesCopy microphone];
      v26 = [microphone4 isEqualToString:@"LeftBottom"];
    }

    if (v26)
    {

LABEL_31:
      j = v19;
      break;
    }

LABEL_29:
    ++v13;
  }

  v47 = 0;
  v29 = [v7 setPreferredDataSource:j error:&v47];
  v30 = v47;
  if (v29)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v31 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 404;
      v56 = 2112;
      v57 = j;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using data source %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v32 = *qword_100025DF8;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      code = [v30 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 402;
      v56 = 2048;
      v57 = code;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredDataSource %li", buf, 0x1Cu);
    }
  }

  v46 = v30;
  v34 = [sessionCopy setPreferredInput:v7 error:&v46];
  v35 = v46;

  if (v34)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v36 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 411;
      v56 = 2112;
      v57 = v7;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using port %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v37 = *qword_100025DF8;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      code2 = [v35 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 409;
      v56 = 2048;
      v57 = code2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredInput %li", buf, 0x1Cu);
    }
  }

  if ([sourcesCopy outputMode] == 1)
  {
    v39 = 1936747378;
  }

  else
  {
    v39 = 0;
  }

  v45 = v35;
  v40 = [sessionCopy overrideOutputAudioPort:v39 error:&v45];
  v41 = v45;

  if ((v40 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v42 = *qword_100025DF8;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      code3 = [v41 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 417;
      v56 = 2048;
      v57 = code3;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideOutputAudioPort %li", buf, 0x1Cu);
    }
  }
}

- (BOOL)setVolume:(id)volume
{
  volumeCopy = volume;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [volumeCopy volume];
    v9 = 136315650;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 353;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume to %.2f", &v9, 0x1Cu);
  }

  v6 = +[AVSystemController sharedAVSystemController];
  [volumeCopy volume];
  v7 = [v6 setActiveCategoryVolumeTo:?];

  return v7;
}

- (BOOL)setVolume:(id)volume session:(id)session
{
  volumeCopy = volume;
  sessionCopy = session;
  if ([volumeCopy outputMode])
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [volumeCopy volume];
      v9 = v8;
      category = [sessionCopy category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 346;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = category;
      v27 = 2112;
      v28 = @"Audio/Video";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    [volumeCopy volume];
    v12 = [v11 setVolumeTo:@"Audio/Video" forCategory:?];
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v13 = *qword_100025DF8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [volumeCopy volume];
      v15 = v14;
      category2 = [sessionCopy category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 342;
      v23 = 2048;
      v24 = v15;
      v25 = 2112;
      v26 = category2;
      v27 = 2112;
      v28 = @"PlayAndRecord";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    [volumeCopy volume];
    v12 = [v11 setVolumeTo:@"PlayAndRecord" forCategory:?];
  }

  v17 = v12;

  return v17;
}

- (void)createAudioEngineAndProcessingChain:(id)chain session:(id)session sourceNodeBlock:(id)block
{
  chainCopy = chain;
  sessionCopy = session;
  blockCopy = block;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v8 = *qword_100025DF8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 184;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating audio engine and processing chain", buf, 0x12u);
  }

  v9 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v9];

  if (blockCopy)
  {
    v10 = [[AVAudioSourceNode alloc] initWithRenderBlock:blockCopy];
    [(AVAudioDeviceTestService *)self setSourceNode:v10];
  }

  sourceNode = [(AVAudioDeviceTestService *)self sourceNode];
  v12 = sourceNode == 0;

  if (v12)
  {
    v13 = objc_opt_new();
    [(AVAudioDeviceTestService *)self setPlayer:v13];
  }

  if (!sessionCopy || (+[AVAudioSession sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == sessionCopy, v14, v15))
  {
    v22 = 0;
  }

  else
  {
    inData = [sessionCopy opaqueSessionID];
    engine = [(AVAudioDeviceTestService *)self engine];
    outputNode = [engine outputNode];
    v18 = AudioUnitSetProperty([outputNode audioUnit], 0x7E7u, 0, 0, &inData, 4u) == 0;

    if (!v18)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v19 = *qword_100025DF8;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 210;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set session on engine", buf, 0x12u);
      }
    }

    v20 = +[AVAudioSession sharedInstance];
    v132 = 0;
    v21 = [v20 setActive:0 error:&v132];
    v22 = v132;

    if ((v21 & 1) == 0)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v23 = *qword_100025DF8;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        code = [v22 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 215;
        *&buf[18] = 2048;
        v135 = code;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d sharedInstance setActive %li", buf, 0x1Cu);
      }
    }
  }

  inputProcessingChain = [chainCopy inputProcessingChain];
  v26 = inputProcessingChain == 0;

  if (!v26)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v27 = *qword_100025DF8;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting input processing chain", buf, 0x12u);
    }

    v28 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setInputFilter:v28];

    inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
    bands = [inputFilter bands];
    v31 = [bands objectAtIndexedSubscript:0];
    [v31 setFilterType:5];

    inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
    bands2 = [inputFilter2 bands];
    v34 = [bands2 objectAtIndexedSubscript:0];
    [v34 setBypass:0];

    inputFilter3 = [(AVAudioDeviceTestService *)self inputFilter];
    bands3 = [inputFilter3 bands];
    v37 = [bands3 objectAtIndexedSubscript:0];
    LODWORD(v38) = 1157234688;
    [v37 setFrequency:v38];

    inputFilter4 = [(AVAudioDeviceTestService *)self inputFilter];
    bands4 = [inputFilter4 bands];
    v41 = [bands4 objectAtIndexedSubscript:0];
    LODWORD(v42) = 4.0;
    [v41 setBandwidth:v42];
  }

  outputProcessingChain = [chainCopy outputProcessingChain];
  v44 = outputProcessingChain == 0;

  if (!v44)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v45 = *qword_100025DF8;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 238;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting output processing chain", buf, 0x12u);
    }

    v46 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setOutputFilter:v46];

    outputFilter = [(AVAudioDeviceTestService *)self outputFilter];
    bands5 = [outputFilter bands];
    v49 = [bands5 objectAtIndexedSubscript:0];
    [v49 setFilterType:5];

    outputFilter2 = [(AVAudioDeviceTestService *)self outputFilter];
    bands6 = [outputFilter2 bands];
    v52 = [bands6 objectAtIndexedSubscript:0];
    [v52 setBypass:0];

    outputFilter3 = [(AVAudioDeviceTestService *)self outputFilter];
    bands7 = [outputFilter3 bands];
    v55 = [bands7 objectAtIndexedSubscript:0];
    LODWORD(v56) = 1157234688;
    [v55 setFrequency:v56];

    outputFilter4 = [(AVAudioDeviceTestService *)self outputFilter];
    bands8 = [outputFilter4 bands];
    v59 = [bands8 objectAtIndexedSubscript:0];
    LODWORD(v60) = 4.0;
    [v59 setBandwidth:v60];
  }

  v61 = dispatch_semaphore_create(0);
  *buf = *"xmuaxmcmlppa";
  *&buf[16] = 0;
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_10001317C;
  v129[3] = &unk_100020528;
  v62 = v61;
  v130 = v62;
  selfCopy = self;
  [AVAudioUnit instantiateWithComponentDescription:buf options:0 completionHandler:v129];
  if (dispatch_semaphore_wait(v62, 0x3B9ACA00uLL))
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v63 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 270;
      v64 = "%25s:%-5d Creating multichannel mixer took too long";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
      goto LABEL_117;
    }

    goto LABEL_117;
  }

  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v66 = multichannelMixer == 0;

  if (!v66)
  {
    sourceNode2 = [(AVAudioDeviceTestService *)self sourceNode];
    v68 = sourceNode2 == 0;

    if (v68)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v72 = *qword_100025DF8;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 284;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching player to engine", buf, 0x12u);
      }

      engine2 = [(AVAudioDeviceTestService *)self engine];
      player = [(AVAudioDeviceTestService *)self player];
      [engine2 attachNode:player];
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v69 = *qword_100025DF8;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 281;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching sourceNode to engine", buf, 0x12u);
      }

      engine2 = [(AVAudioDeviceTestService *)self engine];
      player = [(AVAudioDeviceTestService *)self sourceNode];
      [engine2 attachNode:player];
    }

    inputFilter5 = [(AVAudioDeviceTestService *)self inputFilter];
    v74 = inputFilter5 == 0;

    if (!v74)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v75 = *qword_100025DF8;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching inputFilter to engine", buf, 0x12u);
      }

      engine3 = [(AVAudioDeviceTestService *)self engine];
      inputFilter6 = [(AVAudioDeviceTestService *)self inputFilter];
      [engine3 attachNode:inputFilter6];
    }

    outputFilter5 = [(AVAudioDeviceTestService *)self outputFilter];
    v79 = outputFilter5 == 0;

    if (!v79)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v80 = *qword_100025DF8;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 294;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching outputFilter to engine", buf, 0x12u);
      }

      engine4 = [(AVAudioDeviceTestService *)self engine];
      outputFilter6 = [(AVAudioDeviceTestService *)self outputFilter];
      [engine4 attachNode:outputFilter6];
    }

    engine5 = [(AVAudioDeviceTestService *)self engine];
    outputNode2 = [engine5 outputNode];
    v85 = [outputNode2 outputFormatForBus:0];
    [v85 sampleRate];
    v87 = v86;

    if (v87 <= 0.0)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v88 = *qword_100025DF8;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 300;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d sampleRate for engine outputNode was <= 0. Setting to 44100", buf, 0x12u);
      }

      v87 = 44100.0;
    }

    v124 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:1 channels:v87];
    if (!v124)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v89 = *qword_100025DF8;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 306;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create internal format from engine output node", buf, 0x12u);
      }
    }

    inputFilter7 = [(AVAudioDeviceTestService *)self inputFilter];
    v91 = inputFilter7 == 0;

    if (!v91)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v92 = *qword_100025DF8;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 311;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%25s:%-5d connecting inputFilter to inputNode", buf, 0x12u);
      }

      engine6 = [(AVAudioDeviceTestService *)self engine];
      engine7 = [(AVAudioDeviceTestService *)self engine];
      inputNode = [engine7 inputNode];
      inputFilter8 = [(AVAudioDeviceTestService *)self inputFilter];
      [engine6 connect:inputNode to:inputFilter8 format:0];
    }

    sourceNode3 = [(AVAudioDeviceTestService *)self sourceNode];
    v98 = sourceNode3 == 0;

    if (!v98)
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v99 = *qword_100025DF8;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 316;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting sourceNode to channel mixer", buf, 0x12u);
      }

      engine8 = [(AVAudioDeviceTestService *)self engine];
      sourceNode4 = [(AVAudioDeviceTestService *)self sourceNode];
      multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine8 connect:sourceNode4 to:multichannelMixer2 format:v125];
    }

    engine9 = [(AVAudioDeviceTestService *)self engine];
    multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
    engine10 = [(AVAudioDeviceTestService *)self engine];
    outputNode3 = [engine10 outputNode];
    engine11 = [(AVAudioDeviceTestService *)self engine];
    outputNode4 = [engine11 outputNode];
    v109 = [outputNode4 outputFormatForBus:0];
    [engine9 connect:multichannelMixer3 to:outputNode3 format:v109];

    outputFilter7 = [(AVAudioDeviceTestService *)self outputFilter];
    LOBYTE(outputNode4) = outputFilter7 == 0;

    if (outputNode4)
    {
      sourceNode5 = [(AVAudioDeviceTestService *)self sourceNode];
      v121 = sourceNode5 == 0;

      if (!v121)
      {
LABEL_112:
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v123 = *qword_100025DF8;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 336;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Finished creating audio engine and processing chain", buf, 0x12u);
        }

        goto LABEL_117;
      }

      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v122 = *qword_100025DF8;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 333;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to channel mixer", buf, 0x12u);
      }

      engine12 = [(AVAudioDeviceTestService *)self engine];
      player2 = [(AVAudioDeviceTestService *)self player];
      multichannelMixer4 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine12 connect:player2 to:multichannelMixer4 format:v125];
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v111 = *qword_100025DF8;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 325;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting outputFilter to channel mixer", buf, 0x12u);
      }

      engine13 = [(AVAudioDeviceTestService *)self engine];
      outputFilter8 = [(AVAudioDeviceTestService *)self outputFilter];
      multichannelMixer5 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine13 connect:outputFilter8 to:multichannelMixer5 format:v125];

      player3 = [(AVAudioDeviceTestService *)self player];
      LOBYTE(outputFilter8) = player3 == 0;

      if (outputFilter8)
      {
        goto LABEL_112;
      }

      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v116 = *qword_100025DF8;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 329;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to output filter", buf, 0x12u);
      }

      engine12 = [(AVAudioDeviceTestService *)self engine];
      player2 = [(AVAudioDeviceTestService *)self player];
      multichannelMixer4 = [(AVAudioDeviceTestService *)self outputFilter];
      [engine12 connect:player2 to:multichannelMixer4 format:v125];
    }

    goto LABEL_112;
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v63 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 274;
    v64 = "%25s:%-5d Failed to create multichannel mixer";
    goto LABEL_41;
  }

LABEL_117:
}

- (AVAudioDeviceTestService)init
{
  v8.receiver = self;
  v8.super_class = AVAudioDeviceTestService;
  v2 = [(AVAudioDeviceTestService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(AVAudioDeviceTestService *)v2 setTestServiceSupportedOnHardware:1];
    [(AVAudioDeviceTestService *)v3 setExtensionHandle:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.avaudiodevietestservice.tones", v4);
    [(AVAudioDeviceTestService *)v3 setToneQueue:v5];

    v6 = os_transaction_create();
    [(AVAudioDeviceTestService *)v3 setTransaction:v6];
  }

  return v3;
}

@end