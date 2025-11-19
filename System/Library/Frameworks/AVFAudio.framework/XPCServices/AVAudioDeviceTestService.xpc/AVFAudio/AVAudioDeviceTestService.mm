@interface AVAudioDeviceTestService
- (AVAudioDeviceTestService)init;
- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)a3;
- (BOOL)isMixerOutputEnabled;
- (BOOL)isOutputRouteBluetooth:(id)a3 session:(id)a4;
- (BOOL)isPlaybackForTestEnabled;
- (BOOL)setVolume:(id)a3;
- (BOOL)setVolume:(id)a3 session:(id)a4;
- (double)calculateCrossCorrelationPeakRelativeToSource:(id)a3 capture:(id)a4;
- (id)convertBufferFor:(id)a3 sourceBuffer:(id)a4;
- (id)stringForInterruptionReason:(unint64_t)a3;
- (id)stringForRouteChangeReason:(unint64_t)a3;
- (void)cancel;
- (void)checkSequenceValidity:(id)a3 completion:(id)a4;
- (void)cleanUp;
- (void)cleanUpObservers;
- (void)configureDataSources:(id)a3 session:(id)a4;
- (void)configureMultiChannelMixerForOutputChannel:(int64_t)a3 totalChannels:(int64_t)a4;
- (void)createAudioEngineAndProcessingChain:(id)a3 session:(id)a4 sourceNodeBlock:(id)a5;
- (void)dealloc;
- (void)passExtensionToken:(id)a3;
- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)playbackTone:(id)a3 completion:(id)a4;
- (void)removeSystemVolumeObserver;
- (void)resetVolume:(float)a3;
- (void)setupAudioEngineFor:(id)a3 sourceNodeBlock:(id)a4;
- (void)setupAudioSessionFor:(id)a3 playbackOnly:(BOOL)a4 completion:(id)a5;
- (void)setupAudioSessionForHearingTest:(id)a3;
- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4;
- (void)setupMultiChannelMixerForOutputChannel:(id)a3 completion:(id)a4;
- (void)setupObservers:(id)a3;
- (void)setupVolumeObserverForVolume:(float)a3 completion:(id)a4;
- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5;
- (void)startWithSequence:(id)a3 completion:(id)a4;
- (void)stopAudioSession:(id)a3;
- (void)stopPlayback;
- (void)stopRecording:(id)a3;
@end

@implementation AVAudioDeviceTestService

- (void)cancel
{
  v2 = [(AVAudioDeviceTestService *)self engine];
  [v2 stop];

  exit(0);
}

- (void)cleanUp
{
  v3 = [(AVAudioDeviceTestService *)self sourceNode];

  if (v3)
  {
    v4 = [(AVAudioDeviceTestService *)self sourceNode];
    [v4 reset];

    [(AVAudioDeviceTestService *)self setSourceNode:0];
  }

  v5 = [(AVAudioDeviceTestService *)self player];

  if (v5)
  {
    v6 = [(AVAudioDeviceTestService *)self player];
    [v6 stop];

    [(AVAudioDeviceTestService *)self setPlayer:0];
  }

  v7 = [(AVAudioDeviceTestService *)self engine];
  if (v7)
  {
    v8 = v7;
    v9 = [(AVAudioDeviceTestService *)self engine];
    v10 = [v9 isRunning];

    if (v10)
    {
      v11 = [(AVAudioDeviceTestService *)self engine];
      [v11 stop];

      v12 = [(AVAudioDeviceTestService *)self engine];
      [v12 reset];

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
  v3 = [(AVAudioDeviceTestService *)self systemVolumeObserver];

  if (v3)
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
    v6 = [(AVAudioDeviceTestService *)self systemVolumeObserver];
    [v5 removeObserver:v6];
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

  v4 = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v5 = v4 == 0;

  if (!v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v6 removeObserver:v7];
  }

  v8 = [(AVAudioDeviceTestService *)self interruptionObserver];
  v9 = v8 == 0;

  if (!v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v10 removeObserver:v11];
  }

  v12 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v14 removeObserver:v15];
  }

  v16 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = +[NSNotificationCenter defaultCenter];
    v19 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v18 removeObserver:v19];
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
      v24 = [v22 localizedDescription];
      *buf = 136315650;
      v27 = "AVAudioDeviceTestService.mm";
      v28 = 1024;
      v29 = 1886;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to unsubscribe from AVSystemController volume notification. { error=%{public}@ }", buf, 0x1Cu);
    }
  }
}

- (id)stringForRouteChangeReason:(unint64_t)a3
{
  if (a3 > 8)
  {
    return &stru_100020E90;
  }

  else
  {
    return *(&off_1000208A8 + a3);
  }
}

- (id)stringForInterruptionReason:(unint64_t)a3
{
  if (a3 > 2)
  {
    return &stru_100020E90;
  }

  else
  {
    return *(&off_100020890 + a3);
  }
}

- (void)setupObservers:(id)a3
{
  v4 = a3;
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

  v6 = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [v8 removeObserver:v9];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100003240;
  v40[3] = &unk_100020810;
  v40[4] = self;
  v11 = v4;
  v41 = v11;
  v12 = [v10 addObserverForName:AVAudioSessionRouteChangeNotification object:0 queue:0 usingBlock:v40];
  [(AVAudioDeviceTestService *)self setRouteChangeObserver:v12];

  v13 = [(AVAudioDeviceTestService *)self interruptionObserver];
  LOBYTE(v10) = v13 == 0;

  if ((v10 & 1) == 0)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [v14 removeObserver:v15];
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

  v19 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  LOBYTE(v16) = v19 == 0;

  if ((v16 & 1) == 0)
  {
    v20 = +[NSNotificationCenter defaultCenter];
    v21 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [v20 removeObserver:v21];
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

  v25 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  LOBYTE(v22) = v25 == 0;

  if ((v22 & 1) == 0)
  {
    v26 = +[NSNotificationCenter defaultCenter];
    v27 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [v26 removeObserver:v27];
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

- (void)configureMultiChannelMixerForOutputChannel:(int64_t)a3 totalChannels:(int64_t)a4
{
  v7 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v8 = [v7 inputFormatForBus:0];
  v9 = [v8 channelCount];
  v10 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v11 = [v10 outputFormatForBus:0];
  v12 = [v11 channelCount] * v9;

  *buf = 0;
  sub_1000040D0(__b, v12);
  if (a4 == 1)
  {
    *(__b[0] + a3) = 1065353216;
  }

  else if (a4 >= 1)
  {
    memset_pattern16(__b[0], &unk_100016200, 4 * a4);
  }

  v13 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v14 = [v13 audioUnit];
  v15 = AudioUnitSetProperty(v14, 0xBBEu, 1u, 0, __b[0], 4 * v12);

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

- (void)setupMultiChannelMixerForOutputChannel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [v8 outputFormatForBus:0];
  v10 = [v9 channelCount];

  v11 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [v11 inputFormatForBus:0];
  v13 = [v12 channelCount];

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v14 = *qword_100025DF8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v16 = [v15 inputFormatForBus:0];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1669;
    v33 = 1024;
    v34 = [v16 channelCount];
    v35 = 1024;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mixer dimension %d x %d", buf, 0x1Eu);
  }

  v17 = v13 * v10;
  *v27 = 0;
  sub_1000040D0(buf, v17);
  if (v6)
  {
    for (i = 0; [v6 count] > i; ++i)
    {
      v19 = [v6 objectAtIndexedSubscript:i];
      v20 = [v19 intValue];

      if (v20 < v17)
      {
        v21 = *buf;
        do
        {
          *(v21 + 4 * v20) = 1065353216;
          v20 += v10;
        }

        while (v20 < v17);
      }
    }
  }

  else if (v17)
  {
    memset_pattern16(*buf, &unk_100016200, 4 * v17);
  }

  v22 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v23 = [v22 audioUnit];
  v24 = AudioUnitSetProperty(v23, 0xBBEu, 1u, 0, *buf, 4 * v17);

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
    v7[2](v7, v26);
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

  v6 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
    [v8 floatValue];
    [(AVAudioDeviceTestService *)self resetVolume:?];
  }

  [(AVAudioDeviceTestService *)self cleanUpObservers];
  v9 = [(AVAudioDeviceTestService *)self transaction];
  v10 = v9 == 0;

  if (!v10)
  {
    [(AVAudioDeviceTestService *)self setTransaction:0];
  }

  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestService;
  [(AVAudioDeviceTestService *)&v11 dealloc];
}

- (id)convertBufferFor:(id)a3 sourceBuffer:(id)a4
{
  v30 = a3;
  v28 = a4;
  v6 = [AVAudioFormat alloc];
  v7 = [v30 processingFormat];
  v8 = [v7 settings];
  v9 = [v6 initWithSettings:v8];

  v29 = v9;
  v10 = [v9 settings];
  v11 = [v10 mutableCopy];

  v12 = [(AVAudioDeviceTestService *)self engine];
  v13 = [v12 inputNode];
  v14 = [v13 inputFormatForBus:0];
  [v14 sampleRate];
  v15 = [NSNumber numberWithDouble:?];
  [v11 setObject:v15 forKeyedSubscript:AVSampleRateKey];

  [v11 setObject:&off_100021040 forKeyedSubscript:AVNumberOfChannelsKey];
  v16 = [[AVAudioFormat alloc] initWithSettings:v11];
  v17 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v16 frameCapacity:objc_msgSend(v30, "length")];
  v18 = [[AVAudioConverter alloc] initFromFormat:v29 toFormat:v16];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100004D14;
  v32[3] = &unk_1000205A0;
  v19 = v28;
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
      v24 = [v22 localizedDescription];
      v25 = sub_100003D50(-6);
      v26 = [v25 code];
      *buf = 136315906;
      v35 = "AVAudioDeviceTestService.mm";
      v36 = 1024;
      v37 = 1638;
      v38 = 2112;
      v39 = v24;
      v40 = 2048;
      v41 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
    }
  }

  return v17;
}

- (void)setupAudioEngineFor:(id)a3 sourceNodeBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = +[AVAudioSession sharedInstance];
  [(AVAudioDeviceTestService *)self createAudioEngineAndProcessingChain:v8 session:v7 sourceNodeBlock:v6];
}

- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)a3
{
  v4 = a3;
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

  if (!v4)
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

  v7 = [(AVAudioDeviceTestService *)self engine];
  v8 = [v7 outputNode];
  v9 = [v8 outputFormatForBus:0];

  if (v9)
  {
    [v9 sampleRate];
    [v4 frequency];
    [v4 soundLevel];
    [v4 numberOfPulses];
    [v4 pulseDuration];
    [v4 pauseDuration];
    [v4 rampDuration];
    [v4 startDelay];
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

- (void)setupAudioSessionFor:(id)a3 playbackOnly:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[AVAudioSession sharedInstance];
  v11 = v10;
  if (v6)
  {
    v12 = [v10 category];

    if (v12 == AVAudioSessionCategoryPlayback)
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
          v17 = [v15 localizedDescription];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1496;
          v68 = 2112;
          v69 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session category. { error=%@ }", buf, 0x1Cu);
        }

        v18 = sub_100003D50(-1);
        v9[2](v9, v18);
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
          v22 = [v20 localizedDescription];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1501;
          v68 = 2112;
          v69 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session mode. { error=%@ }", buf, 0x1Cu);
        }

        v23 = sub_100003D50(-1);
        v9[2](v9, v23);
LABEL_73:
      }
    }
  }

  else
  {
    v24 = [v10 allowAllBuiltInDataSources];
    if ((v24 & 1) == 0)
    {
      [v11 setAllowAllBuiltInDataSources:1];
    }

    if (![v8 requiresBluetoothOutput] || (objc_msgSend(v11, "categoryOptions") & 0x20) != 0)
    {
      v25 = v24 ^ 1;
      if ([v8 outputMode] == 1)
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

    v28 = [v11 category];

    if (v28 == AVAudioSessionCategoryPlayAndRecord)
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
          v31 = [v20 code];
          *buf = 136315650;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1527;
          v68 = 2048;
          v69 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
        }

        v32 = sub_100003D50(-1);
        v9[2](v9, v32);
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
          v36 = [v34 code];
          v37 = sub_100003D50(-1);
          v38 = [v37 code];
          *buf = 136315906;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1544;
          v68 = 2048;
          v69 = v36;
          v70 = 2048;
          v71 = v38;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v25 = 1;
      v20 = v34;
    }

    v39 = [v8 mode];
    if (!v39)
    {
      goto LABEL_55;
    }

    v40 = [v11 mode];
    v41 = [v8 mode];
    v42 = v40 == v41;

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
      v43 = [v8 mode];
      v59 = v20;
      v44 = [v11 setMode:v43 error:&v59];
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
          v47 = [v45 code];
          v48 = sub_100003D50(-1);
          v49 = [v48 code];
          *buf = 136315906;
          v65 = "AVAudioDeviceTestService.mm";
          v66 = 1024;
          v67 = 1552;
          v68 = 2048;
          v69 = v47;
          v70 = 2048;
          v71 = v49;
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
        v54 = [v52 code];
        v55 = sub_100003D50(-11);
        v56 = [v55 code];
        *buf = 136315906;
        v65 = "AVAudioDeviceTestService.mm";
        v66 = 1024;
        v67 = 1562;
        v68 = 2048;
        v69 = v54;
        v70 = 2048;
        v71 = v56;
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
        v9[2](v9, v23);
      }

      else
      {
        v23 = sub_100003D50(-11);
        v9[2](v9, v23);
      }

      goto LABEL_73;
    }

    [(AVAudioDeviceTestService *)self configureDataSources:v8 session:v11];
  }

LABEL_74:
}

- (void)checkSequenceValidity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    [v7 frequency];
    if (v8 != 0.0 || ([v7 soundLevel], v9 != 0.0) || (objc_msgSend(v7, "duration"), v10 != 0.0))
    {
      v11 = [v7 stimulusURL];

      if (v11)
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
        v6[2](v6, v13);
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
      v6[2](v6, v18);
    }
  }

  if ([v5 requiresBluetoothOutput] && objc_msgSend(v5, "outputMode") == 1)
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
    v6[2](v6, v20);
  }
}

- (void)resetVolume:(float)a3
{
  v14 = 0.0;
  v4 = +[AVSystemController sharedAVSystemController];
  v13 = 0;
  [v4 getActiveCategoryVolume:&v14 andName:&v13];
  v5 = v13;

  v6 = vabds_f32(v14, a3);
  v7 = fabsf(v14 + a3);
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
      v22 = a3;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current volume is not as expected, updating volume. { current=%f, expected=%f, name=%@ }", buf, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    *&v12 = a3;
    [v11 setActiveCategoryVolumeTo:v12];
  }
}

- (void)setupVolumeObserverForVolume:(float)a3 completion:(id)a4
{
  v6 = a4;
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
      v11 = [v9 localizedDescription];
      *buf = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1433;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to subscribe to system volume notification. { error=%@ }", buf, 0x1Cu);
    }

    v6[2](v6, v9);
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
    v16 = a3;
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

- (void)stopAudioSession:(id)a3
{
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B3C;
  v7[3] = &unk_1000207A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)a3 success:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007068;
  block[3] = &unk_1000207C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setupAudioSessionForHearingTest:(id)a3
{
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007868;
  v7[3] = &unk_1000207A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopRecording:(id)a3
{
  v4 = a3;
  v5 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  [v5 removeTapOnBus:0];

  v6 = [(AVAudioDeviceTestService *)self engine];
  v7 = [v6 isRunning];

  if (v7)
  {
    v8 = [(AVAudioDeviceTestService *)self engine];
    [v8 stop];
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
      v13 = [v11 code];
      v14 = sub_100003D50(-11);
      v15 = [v14 code];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1249;
      v41 = 2048;
      v42 = v13;
      v43 = 2048;
      v44 = *&v15;
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
      v20 = [v17 localizedDescription];
      *buf = 136315650;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1254;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to reset audio session %@", buf, 0x1Cu);
    }
  }

  v21 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008554;
  block[3] = &unk_100020750;
  block[4] = self;
  dispatch_sync(v21, block);

  v22 = [(AVAudioDeviceTestService *)self inputTapFile];
  v23 = [v22 length] == 0;

  if (v23)
  {
    v32 = sub_100003D50(-13);
    v4[2](v4, v32);
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
      v33 = [(AVAudioDeviceTestService *)self inputTapFile];
      v25 = [v33 url];
      v26 = [v25 path];
      v27 = [(AVAudioDeviceTestService *)self inputTapFile];
      v28 = [v27 length];
      v29 = [(AVAudioDeviceTestService *)self inputTapFile];
      v30 = [v29 fileFormat];
      [v30 sampleRate];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1266;
      v41 = 2114;
      v42 = v26;
      v43 = 2048;
      v44 = v28 / v31;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped recording on server side %{public}@ (%f s)", buf, 0x26u);
    }

    [(AVAudioDeviceTestService *)self setInputTapFile:0];
    v4[2](v4, 0);
  }
}

- (void)startRecording:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v35 = a4;
  v9 = a5;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:v8 completion:v9];
  [(AVAudioDeviceTestService *)self setupAudioSessionFor:v8 playbackOnly:0 completion:v9];
  [(AVAudioDeviceTestService *)self setupAudioEngineFor:v8 sourceNodeBlock:0];
  v10 = [(AVAudioDeviceTestService *)self engine];
  v11 = [v10 inputNode];
  v12 = [v11 inputFormatForBus:0];

  v33 = [NSURL fileURLWithPath:v35];
  v13 = [AVAudioFile alloc];
  v14 = [v12 settings];
  v39 = 0;
  v15 = [v13 initForWriting:v33 settings:v14 error:&v39];
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
      v18 = [v16 localizedDescription];
      *buf = 136315650;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1216;
      v44 = 2112;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
    }
  }

  v19 = [(AVAudioDeviceTestService *)self inputFilter];
  if (v19)
  {
    v20 = [(AVAudioDeviceTestService *)self inputFilter];
    v21 = v20;
  }

  else
  {
    v21 = [(AVAudioDeviceTestService *)self engine];
    v20 = [v21 inputNode];
  }

  [(AVAudioDeviceTestService *)self setNodeToCaptureData:v20];
  if (!v19)
  {
  }

  v22 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100008BAC;
  v37[3] = &unk_100020778;
  v37[4] = self;
  v23 = v16;
  v38 = v23;
  [v22 installTapOnBus:0 bufferSize:4096 format:v12 block:v37];

  v24 = [(AVAudioDeviceTestService *)self engine];
  v36 = v23;
  v25 = [v24 startAndReturnError:&v36];
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
      v29 = [v26 localizedDescription];
      v30 = sub_100003D50(-10);
      v31 = [v30 code];
      *buf = 136315906;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1229;
      v44 = 2112;
      v45 = v29;
      v46 = 2048;
      v47 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
    }

    v32 = sub_100003D50(-10);
    v9[2](v9, v32);

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
    v45 = v35;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started recording on server side %@", buf, 0x1Cu);
  }

  v9[2](v9, 0);
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
    v4 = [(AVAudioDeviceTestService *)self toneQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008F94;
    block[3] = &unk_100020750;
    block[4] = self;
    dispatch_async(v4, block);
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

    v4 = [(AVAudioDeviceTestService *)self toneQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009294;
    v6[3] = &unk_100020750;
    v6[4] = self;
    dispatch_sync(v4, v6);
  }
}

- (void)playback:(id)a3 filePath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v94 = a4;
  v96 = v8;
  v93 = a5;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:v8 completion:?];
  v9 = [(AVAudioDeviceTestService *)self hearingTestSession];

  if (!v9)
  {
    [(AVAudioDeviceTestService *)self setupAudioSessionFor:v8 playbackOnly:0 completion:v93];
  }

  [(AVAudioDeviceTestService *)self setupAudioEngineFor:v8 sourceNodeBlock:0];
  if (![(AVAudioDeviceTestService *)self setVolume:v8])
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v8 volume];
      v12 = v11;
      v13 = sub_100003D50(-7);
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1045;
      v109 = 2048;
      v110 = v12;
      v111 = 2048;
      v112 = [v13 code];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f (%li)", buf, 0x26u);
    }

    v14 = sub_100003D50(-7);
    v93[2](v93, v14);
  }

  v15 = [AVAudioFile alloc];
  v16 = [v96 stimulusURL];
  v104 = 0;
  v95 = [v15 initForReading:v16 error:&v104];
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
      v84 = [v83 code];
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1054;
      v109 = 2112;
      v110 = v82;
      v111 = 2048;
      v112 = v84;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
    }

    v85 = sub_100003D50(-9);
    v93[2](v93, v85);

    exit(-9);
  }

  v18 = [AVAudioPCMBuffer alloc];
  v19 = [v95 processingFormat];
  v20 = [v18 initWithPCMFormat:v19 frameCapacity:objc_msgSend(v95, "length")];

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

  v24 = [v20 format];
  v25 = [v24 channelCount] > 1;

  if (!v25)
  {
    v30 = v20;
    goto LABEL_38;
  }

  v26 = [v96 microphone];
  v27 = v26 == 0;

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

    v30 = [v20 splitIntoSingleChannelBuffers];
    v31 = [v96 microphone];
    v32 = [v31 isEqualToString:@"LeftBottom"];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v37 = [v96 microphone];
      v38 = [v37 isEqualToString:@"Front"];

      if (v38)
      {
        v33 = 1;
      }

      else
      {
        v39 = [v96 microphone];
        v40 = [v39 isEqualToString:@"Back"];

        if (v40)
        {
          v33 = 2;
        }

        else
        {
          v41 = [v96 microphone];
          v42 = [v41 isEqualToString:@"RightBottom"];

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
            v93[2](v93, v58);
            v36 = v21;
            goto LABEL_66;
          }

          v33 = 3;
        }
      }
    }

    v43 = [v30 objectAtIndexedSubscript:v33];

    v30 = v43;
LABEL_38:
    if (v94)
    {
      v44 = [v20 format];
      v45 = [v44 channelCount] == 1;

      if (v45)
      {
        v46 = [v95 processingFormat];
        [v46 sampleRate];
        v48 = v47;
        v49 = [(AVAudioDeviceTestService *)self engine];
        v50 = [v49 inputNode];
        v51 = [v50 inputFormatForBus:0];
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

        v30 = v56;
      }
    }

    v92 = dispatch_semaphore_create(0);
    v57 = [(AVAudioDeviceTestService *)self player];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_10000A51C;
    v100[3] = &unk_1000207A0;
    v91 = v93;
    v102 = v91;
    v58 = v92;
    v101 = v58;
    [v57 scheduleBuffer:v30 atTime:0 options:2 completionHandler:v100];

    if (v94)
    {
      v59 = [(AVAudioDeviceTestService *)self inputFilter];
      if (v59)
      {
        v60 = [(AVAudioDeviceTestService *)self inputFilter];
        v61 = v60;
      }

      else
      {
        v61 = [(AVAudioDeviceTestService *)self engine];
        v60 = [v61 inputNode];
      }

      [(AVAudioDeviceTestService *)self setNodeToCaptureData:v60];
      if (!v59)
      {
      }

      v62 = [(AVAudioDeviceTestService *)self engine];
      v63 = [v62 inputNode];
      v64 = [v63 inputFormatForBus:0];

      v65 = [NSURL fileURLWithPath:v94];
      v66 = [AVAudioFile alloc];
      v67 = [v64 settings];
      v99 = v21;
      v68 = [v66 initForWriting:v65 settings:v67 error:&v99];
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

      v72 = [(AVAudioDeviceTestService *)self nodeToCaptureData];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_10000A620;
      v98[3] = &unk_1000206D8;
      v98[4] = self;
      [v72 installTapOnBus:0 bufferSize:4096 format:v64 block:v98];
    }

    v73 = [(AVAudioDeviceTestService *)self engine];
    [v73 prepare];

    v74 = [(AVAudioDeviceTestService *)self engine];
    v97 = v21;
    v75 = [v74 startAndReturnError:&v97];
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
        v89 = [v88 code];
        *buf = 136315906;
        v106 = "AVAudioDeviceTestService.mm";
        v107 = 1024;
        v108 = 1141;
        v109 = 2112;
        v110 = v87;
        v111 = 2048;
        v112 = v89;
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

    v78 = [(AVAudioDeviceTestService *)self player];
    [v78 play];

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
  v93[2](v93, v35);
  v30 = v35;
  v36 = v21;
LABEL_67:
}

- (void)playbackTone:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8A0;
  block[3] = &unk_100020728;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (double)calculateCrossCorrelationPeakRelativeToSource:(id)a3 capture:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 format];
  if ([v7 channelCount] == 1)
  {
    v8 = [v6 format];
    v9 = [v8 channelCount];

    if (v9 == 1)
    {
      v10 = [v5 frameLength];
      v11 = *[v5 floatChannelData];
      v12 = malloc_type_malloc(8 * v10, 0x100004052888210uLL);
      bzero(v12, 8 * v10);
      v13 = 3 * v10 - 1;
      v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      bzero(v14, 4 * v13);
      if (v13 <= [v6 frameLength])
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
          v26 = [v19 code];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d the length of the captured buffer needs to be greater (%li)", &v21, 0x1Cu);
        }
      }

      else
      {
        memcpy(v14, *[v6 floatChannelData], 4 * objc_msgSend(v6, "frameLength"));
      }

      vDSP_conv(v14, 1, v11, 1, v12, 1, 2 * v10, v10);
      v21 = 0.0;
      vDSP_maxv(v12, 1, &v21, 2 * v10);
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
    v26 = [v16 code];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d the source file or captured buffers aren't signal channel files (%li)", &v21, 0x1Cu);
  }

  v17 = 0.0;
LABEL_17:

  return v17;
}

- (void)startWithSequence:(id)a3 completion:(id)a4
{
  v6 = a3;
  v203 = a4;
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

  v8 = self;
  objc_sync_enter(v8);
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
      v183 = [p_weak_ivar_lyt localizedDescription];
      v184 = sub_100003D50(-9);
      v185 = [v184 code];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 581;
      *&buf[18] = 2112;
      *&buf[20] = v183;
      *&buf[28] = 2048;
      *&buf[30] = v185;
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
  if ([v6 priority])
  {
    v15 = [v6 priority];
  }

  else
  {
    v15 = 10;
  }

  v235 = 0;
  v16 = [v14 setInterruptionPriority:v15 error:&v235];
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
      v19 = [v17 code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 467;
      *&buf[18] = 2048;
      *&buf[20] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d error setInterruptionPriority %li", buf, 0x1Cu);
    }

    v20 = sub_100003D50(-3);
    v203[2](v203, 0, v20);
  }

  if ([v6 requiresBluetoothOutput])
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
      v26 = [v23 code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 477;
      *&buf[18] = 2048;
      *&buf[20] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
    }

    v27 = sub_100003D50(-1);
    v203[2](v203, 0, v27);
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
        v34 = [v32 code];
        v35 = sub_100003D50(-1);
        v36 = [v35 code];
        *buf = 136315906;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 504;
        *&buf[18] = 2048;
        *&buf[20] = v34;
        *&buf[28] = 2048;
        *&buf[30] = v36;
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

    v38 = [v6 mode];
    v39 = v38 == 0;

    if (!v39)
    {
      v40 = [v6 mode];
      v231 = v32;
      v41 = [v14 setMode:v40 error:&v231];
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
          v44 = [v42 code];
          v45 = sub_100003D50(-1);
          v46 = [v45 code];
          *buf = 136315906;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 513;
          *&buf[18] = 2048;
          *&buf[20] = v44;
          *&buf[28] = 2048;
          *&buf[30] = v46;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v32 = v42;
    }

    [(AVAudioDeviceTestService *)v8 configureDataSources:v6 session:v14];
    [(AVAudioDeviceTestService *)v8 createAudioEngineAndProcessingChain:v6 session:v14 sourceNodeBlock:0];
    if ([v6 numberOfChannels])
    {
      v47 = [v6 outputID];
      v48 = [v6 numberOfChannels];
    }

    else
    {
      v47 = [v6 outputID];
      v48 = 1;
    }

    [(AVAudioDeviceTestService *)v8 configureMultiChannelMixerForOutputChannel:v47 totalChannels:v48];
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v56 = *qword_100025DF8;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v6 requiresBluetoothOutput];
      v58 = [(AVAudioDeviceTestService *)v8 isOutputRouteBluetooth:v6 session:v14];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 529;
      *&buf[18] = 1024;
      *&buf[20] = v57;
      *&buf[24] = 1024;
      *&buf[26] = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth setting: %d, Output route: %d", buf, 0x1Eu);
    }

    if ([v6 requiresBluetoothOutput] && !-[AVAudioDeviceTestService isOutputRouteBluetooth:session:](v8, "isOutputRouteBluetooth:session:", v6, v14))
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
      v203[2](v203, 0, v94);
    }

    else
    {
      if ([(AVAudioDeviceTestService *)v8 setVolume:v6 session:v14])
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

        v60 = [(AVAudioDeviceTestService *)v8 routeChangeObserver];
        v61 = v60 == 0;

        if (!v61)
        {
          v62 = +[NSNotificationCenter defaultCenter];
          v63 = [(AVAudioDeviceTestService *)v8 routeChangeObserver];
          [v62 removeObserver:v63];
        }

        v64 = +[NSNotificationCenter defaultCenter];
        v230[0] = _NSConcreteStackBlock;
        v230[1] = 3221225472;
        v230[2] = sub_10000F84C;
        v230[3] = &unk_100020550;
        v230[4] = v8;
        v65 = [v64 addObserverForName:AVAudioSessionRouteChangeNotification object:v14 queue:0 usingBlock:v230];
        [(AVAudioDeviceTestService *)v8 setRouteChangeObserver:v65];

        v66 = [(AVAudioDeviceTestService *)v8 interruptionObserver];
        v67 = v66 == 0;

        if (!v67)
        {
          v68 = +[NSNotificationCenter defaultCenter];
          v69 = [(AVAudioDeviceTestService *)v8 interruptionObserver];
          [v68 removeObserver:v69];
        }

        v70 = +[NSNotificationCenter defaultCenter];
        v228[0] = _NSConcreteStackBlock;
        v228[1] = 3221225472;
        v228[2] = sub_10000F9DC;
        v228[3] = &unk_100020578;
        v71 = v203;
        v229 = v71;
        v72 = [v70 addObserverForName:AVAudioSessionInterruptionNotification object:v14 queue:0 usingBlock:v228];
        [(AVAudioDeviceTestService *)v8 setInterruptionObserver:v72];

        v73 = [(AVAudioDeviceTestService *)v8 mediaservicesLostObserver];
        v74 = v73 == 0;

        if (!v74)
        {
          v75 = +[NSNotificationCenter defaultCenter];
          v76 = [(AVAudioDeviceTestService *)v8 mediaservicesLostObserver];
          [v75 removeObserver:v76];
        }

        v77 = +[NSNotificationCenter defaultCenter];
        v226[0] = _NSConcreteStackBlock;
        v226[1] = 3221225472;
        v226[2] = sub_10000FB78;
        v226[3] = &unk_100020578;
        v196 = v71;
        v227 = v196;
        v78 = [v77 addObserverForName:AVAudioSessionMediaServicesWereLostNotification object:v14 queue:0 usingBlock:v226];
        [(AVAudioDeviceTestService *)v8 setMediaservicesLostObserver:v78];

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
        v81 = [v6 stimulusURL];
        v225 = v32;
        v202 = [v80 initForReading:v81 error:&v225];
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
        v83 = [v202 processingFormat];
        v199 = [v82 initWithPCMFormat:v83 frameCapacity:objc_msgSend(v202, "length")];

        v224 = p_weak_ivar_lyt;
        LOBYTE(v83) = [v202 readIntoBuffer:v199 error:&v224];
        v84 = v224;

        v30 = v84;
        if (v83)
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
            v96 = [v84 localizedDescription];
            *buf = 136315650;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 588;
            *&buf[18] = 2112;
            *&buf[20] = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
          }

          v85 = 0;
        }

        v200 = v85;
        v97 = [v85 format];
        v98 = [v97 channelCount] > 1;

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
            v101 = [v100 code];
            *buf = 136315650;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 593;
            *&buf[18] = 2048;
            *&buf[20] = v101;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid stimulus buffer format %li", buf, 0x1Cu);
          }

          v102 = sub_100003D50(-6);
          v196[2](v196, 0, v102);
          v55 = 1;
        }

        else
        {
          v193 = v200;
          v103 = [v202 processingFormat];
          [v103 sampleRate];
          v105 = v104;
          v106 = [(AVAudioDeviceTestService *)v8 engine];
          v107 = [v106 inputNode];
          v108 = [v107 inputFormatForBus:0];
          [v108 sampleRate];
          v110 = v105 != v109;

          if (v110)
          {
            v111 = [AVAudioFormat alloc];
            v112 = [v202 processingFormat];
            v113 = [v112 settings];
            v194 = [v111 initWithSettings:v113];

            v114 = [v194 settings];
            v197 = [v114 mutableCopy];

            v115 = [(AVAudioDeviceTestService *)v8 engine];
            v116 = [v115 inputNode];
            v117 = [v116 inputFormatForBus:0];
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
                v125 = [v192 localizedDescription];
                v126 = sub_100003D50(-6);
                v127 = [v126 code];
                *buf = 136315906;
                *&buf[4] = "AVAudioDeviceTestService.mm";
                *&buf[12] = 1024;
                *&buf[14] = 621;
                *&buf[18] = 2112;
                *&buf[20] = v125;
                *&buf[28] = 2048;
                *&buf[30] = v127;
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
          v130 = [v198 frameLength];
          [v14 outputSampleRate];
          v132 = v131;
          v133 = [v198 format];
          [v133 sampleRate];
          v135 = v134;
          [v14 outputLatency];
          v137 = v136;
          [v14 outputSampleRate];
          v139 = v138;
          [v14 outputSampleRate];
          v141 = v140;

          v220 = ((v132 / v135 * v130) + v137 * v139 + v141 * 0.5);
          v142 = [(AVAudioDeviceTestService *)v8 engine];
          v143 = [v142 inputNode];
          v195 = [v143 inputFormatForBus:0];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = sub_10000BCA8;
          *&buf[32] = sub_10000BCB8;
          v144 = [AVAudioPCMBuffer alloc];
          v238 = [v144 initWithPCMFormat:v195 frameCapacity:*(v218 + 6)];
          [*(*&buf[8] + 40) setFrameLength:0];
          v145 = [(AVAudioDeviceTestService *)v8 inputFilter];
          if (v145)
          {
            v146 = [(AVAudioDeviceTestService *)v8 inputFilter];
            v147 = v146;
          }

          else
          {
            v147 = [(AVAudioDeviceTestService *)v8 engine];
            v146 = [v147 inputNode];
          }

          [(AVAudioDeviceTestService *)v8 setNodeToCaptureData:v146];
          if (!v145)
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

          v150 = [(AVAudioDeviceTestService *)v8 nodeToCaptureData];
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
          [v150 installTapOnBus:0 bufferSize:4096 format:v195 block:v212];

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

          v154 = [(AVAudioDeviceTestService *)v8 player];
          [v154 scheduleBuffer:v198 atTime:0 options:2 completionHandler:&stru_1000205E8];

          v155 = [(AVAudioDeviceTestService *)v8 engine];
          [v155 prepare];

          v156 = [(AVAudioDeviceTestService *)v8 engine];
          v211 = v30;
          LOBYTE(v155) = [v156 startAndReturnError:&v211];
          v157 = v211;

          v158 = v157;
          if ((v155 & 1) == 0)
          {
            if (qword_100025DF0 != -1)
            {
              dispatch_once(&qword_100025DF0, &stru_100020500);
            }

            v187 = *qword_100025DF8;
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              v188 = [v157 localizedDescription];
              v189 = sub_100003D50(-10);
              v190 = [v189 code];
              *v236 = 136315906;
              *&v236[4] = "AVAudioDeviceTestService.mm";
              *&v236[12] = 1024;
              *&v236[14] = 724;
              *&v236[18] = 2112;
              *&v236[20] = v188;
              *&v236[28] = 2048;
              *&v236[30] = v190;
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
            v160 = [(AVAudioDeviceTestService *)v8 engine];
            *v236 = 136315650;
            *&v236[4] = "AVAudioDeviceTestService.mm";
            *&v236[12] = 1024;
            *&v236[14] = 729;
            *&v236[18] = 2112;
            *&v236[20] = v160;
            _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", v236, 0x1Cu);
          }

          v161 = [(AVAudioDeviceTestService *)v8 player];
          [v161 play];

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

          v164 = [(AVAudioDeviceTestService *)v8 nodeToCaptureData];
          [v164 removeTapOnBus:0];

          v165 = [(AVAudioDeviceTestService *)v8 engine];
          v166 = [v165 isRunning];

          if (v166)
          {
            v167 = [(AVAudioDeviceTestService *)v8 player];
            [v167 stop];

            v168 = [(AVAudioDeviceTestService *)v8 engine];
            [v168 stop];
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
              v172 = [v170 code];
              v173 = sub_100003D50(-11);
              v174 = [v173 code];
              *v236 = 136315906;
              *&v236[4] = "AVAudioDeviceTestService.mm";
              *&v236[12] = 1024;
              *&v236[14] = 751;
              *&v236[18] = 2048;
              *&v236[20] = v172;
              *&v236[28] = 2048;
              *&v236[30] = v174;
              _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", v236, 0x26u);
            }
          }

          [(AVAudioDeviceTestService *)v8 cleanUpObservers];
          v204[0] = _NSConcreteStackBlock;
          v204[1] = 3221225472;
          v204[2] = sub_10000FFDC;
          v204[3] = &unk_100020638;
          v209 = buf;
          v175 = v6;
          v205 = v175;
          v206 = v8;
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
        [v6 volume];
        v88 = v87;
        v89 = [v14 category];
        v90 = sub_100003D50(-7);
        v91 = [v90 code];
        *buf = 136316162;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 538;
        *&buf[18] = 2048;
        *&buf[20] = v88;
        *&buf[28] = 2112;
        *&buf[30] = v89;
        *&buf[38] = 2048;
        v238 = v91;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f for category %@ - (%li)", buf, 0x30u);
      }

      v92 = sub_100003D50(-7);
      v203[2](v203, 0, v92);
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
    v50 = [v29 code];
    v51 = sub_100003D50(-11);
    v52 = [v51 code];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 488;
    *&buf[18] = 2048;
    *&buf[20] = v50;
    *&buf[28] = 2048;
    *&buf[30] = v52;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
  }

  if ([v29 code] == 561145203)
  {
    [(AVAudioDeviceTestService *)v8 setTestServiceSupportedOnHardware:0];
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
    v203[2](v203, 0, v54);
  }

  else
  {
    v54 = sub_100003D50(-11);
    v203[2](v203, 0, v54);
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
  objc_sync_exit(v8);
}

- (BOOL)isOutputRouteBluetooth:(id)a3 session:(id)a4
{
  v4 = a4;
  v5 = +[AVSystemController sharedAVSystemController];
  v6 = [v4 category];
  v7 = [v5 routeForCategory:v6];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  return v8;
}

- (void)passExtensionToken:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v8)
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

  [v8 UTF8String];
  [(AVAudioDeviceTestService *)v4 setExtensionHandle:sandbox_extension_consume()];
  if ([(AVAudioDeviceTestService *)v4 extensionHandle]< 0)
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

  objc_sync_exit(v4);
}

- (void)configureDataSources:(id)a3 session:(id)a4
{
  v5 = a3;
  v44 = a4;
  [v44 availableInputs];
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
        v11 = [v10 portType];
        v12 = [v11 isEqualToString:AVAudioSessionPortBuiltInMic];

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
    v15 = [v7 dataSources];
    v16 = [v15 count] > v13;

    if (!v16)
    {
      break;
    }

    v17 = [v7 dataSources];
    v18 = [v17 objectAtIndexedSubscript:v13];

    v19 = v18;
    v20 = [v5 microphone];
    if (v20)
    {
    }

    else
    {
      v21 = [v19 dataSourceID];
      v22 = [v21 intValue] == 1634495520;

      if (v22)
      {
        goto LABEL_31;
      }
    }

    v23 = [v5 microphone];
    v24 = v23 == 0;

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
          v27 = [v5 microphone];
          v28 = [v27 isEqualToString:@"RightBottom"];

          if (v28)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_29;
      }

      v25 = [v5 microphone];
      v26 = [v25 isEqualToString:@"Back"];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_29;
      }

      v25 = [v5 microphone];
      v26 = [v25 isEqualToString:@"Front"];
    }

    else
    {
      v25 = [v5 microphone];
      v26 = [v25 isEqualToString:@"LeftBottom"];
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
      v33 = [v30 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 402;
      v56 = 2048;
      v57 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredDataSource %li", buf, 0x1Cu);
    }
  }

  v46 = v30;
  v34 = [v44 setPreferredInput:v7 error:&v46];
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
      v38 = [v35 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 409;
      v56 = 2048;
      v57 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredInput %li", buf, 0x1Cu);
    }
  }

  if ([v5 outputMode] == 1)
  {
    v39 = 1936747378;
  }

  else
  {
    v39 = 0;
  }

  v45 = v35;
  v40 = [v44 overrideOutputAudioPort:v39 error:&v45];
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
      v43 = [v41 code];
      *buf = 136315650;
      v53 = "AVAudioDeviceTestService.mm";
      v54 = 1024;
      v55 = 417;
      v56 = 2048;
      v57 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideOutputAudioPort %li", buf, 0x1Cu);
    }
  }
}

- (BOOL)setVolume:(id)a3
{
  v3 = a3;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [v3 volume];
    v9 = 136315650;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 353;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume to %.2f", &v9, 0x1Cu);
  }

  v6 = +[AVSystemController sharedAVSystemController];
  [v3 volume];
  v7 = [v6 setActiveCategoryVolumeTo:?];

  return v7;
}

- (BOOL)setVolume:(id)a3 session:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 outputMode])
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v5 volume];
      v9 = v8;
      v10 = [v6 category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 346;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = @"Audio/Video";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    [v5 volume];
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
      [v5 volume];
      v15 = v14;
      v16 = [v6 category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 342;
      v23 = 2048;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = @"PlayAndRecord";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    v11 = +[AVSystemController sharedAVSystemController];
    [v5 volume];
    v12 = [v11 setVolumeTo:@"PlayAndRecord" forCategory:?];
  }

  v17 = v12;

  return v17;
}

- (void)createAudioEngineAndProcessingChain:(id)a3 session:(id)a4 sourceNodeBlock:(id)a5
{
  v127 = a3;
  v128 = a4;
  v126 = a5;
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

  if (v126)
  {
    v10 = [[AVAudioSourceNode alloc] initWithRenderBlock:v126];
    [(AVAudioDeviceTestService *)self setSourceNode:v10];
  }

  v11 = [(AVAudioDeviceTestService *)self sourceNode];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = objc_opt_new();
    [(AVAudioDeviceTestService *)self setPlayer:v13];
  }

  if (!v128 || (+[AVAudioSession sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == v128, v14, v15))
  {
    v22 = 0;
  }

  else
  {
    inData = [v128 opaqueSessionID];
    v16 = [(AVAudioDeviceTestService *)self engine];
    v17 = [v16 outputNode];
    v18 = AudioUnitSetProperty([v17 audioUnit], 0x7E7u, 0, 0, &inData, 4u) == 0;

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
        v24 = [v22 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 215;
        *&buf[18] = 2048;
        v135 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d sharedInstance setActive %li", buf, 0x1Cu);
      }
    }
  }

  v25 = [v127 inputProcessingChain];
  v26 = v25 == 0;

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

    v29 = [(AVAudioDeviceTestService *)self inputFilter];
    v30 = [v29 bands];
    v31 = [v30 objectAtIndexedSubscript:0];
    [v31 setFilterType:5];

    v32 = [(AVAudioDeviceTestService *)self inputFilter];
    v33 = [v32 bands];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setBypass:0];

    v35 = [(AVAudioDeviceTestService *)self inputFilter];
    v36 = [v35 bands];
    v37 = [v36 objectAtIndexedSubscript:0];
    LODWORD(v38) = 1157234688;
    [v37 setFrequency:v38];

    v39 = [(AVAudioDeviceTestService *)self inputFilter];
    v40 = [v39 bands];
    v41 = [v40 objectAtIndexedSubscript:0];
    LODWORD(v42) = 4.0;
    [v41 setBandwidth:v42];
  }

  v43 = [v127 outputProcessingChain];
  v44 = v43 == 0;

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

    v47 = [(AVAudioDeviceTestService *)self outputFilter];
    v48 = [v47 bands];
    v49 = [v48 objectAtIndexedSubscript:0];
    [v49 setFilterType:5];

    v50 = [(AVAudioDeviceTestService *)self outputFilter];
    v51 = [v50 bands];
    v52 = [v51 objectAtIndexedSubscript:0];
    [v52 setBypass:0];

    v53 = [(AVAudioDeviceTestService *)self outputFilter];
    v54 = [v53 bands];
    v55 = [v54 objectAtIndexedSubscript:0];
    LODWORD(v56) = 1157234688;
    [v55 setFrequency:v56];

    v57 = [(AVAudioDeviceTestService *)self outputFilter];
    v58 = [v57 bands];
    v59 = [v58 objectAtIndexedSubscript:0];
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
  v131 = self;
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

  v65 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v66 = v65 == 0;

  if (!v66)
  {
    v67 = [(AVAudioDeviceTestService *)self sourceNode];
    v68 = v67 == 0;

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

      v70 = [(AVAudioDeviceTestService *)self engine];
      v71 = [(AVAudioDeviceTestService *)self player];
      [v70 attachNode:v71];
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

      v70 = [(AVAudioDeviceTestService *)self engine];
      v71 = [(AVAudioDeviceTestService *)self sourceNode];
      [v70 attachNode:v71];
    }

    v73 = [(AVAudioDeviceTestService *)self inputFilter];
    v74 = v73 == 0;

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

      v76 = [(AVAudioDeviceTestService *)self engine];
      v77 = [(AVAudioDeviceTestService *)self inputFilter];
      [v76 attachNode:v77];
    }

    v78 = [(AVAudioDeviceTestService *)self outputFilter];
    v79 = v78 == 0;

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

      v81 = [(AVAudioDeviceTestService *)self engine];
      v82 = [(AVAudioDeviceTestService *)self outputFilter];
      [v81 attachNode:v82];
    }

    v83 = [(AVAudioDeviceTestService *)self engine];
    v84 = [v83 outputNode];
    v85 = [v84 outputFormatForBus:0];
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

    v90 = [(AVAudioDeviceTestService *)self inputFilter];
    v91 = v90 == 0;

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

      v93 = [(AVAudioDeviceTestService *)self engine];
      v94 = [(AVAudioDeviceTestService *)self engine];
      v95 = [v94 inputNode];
      v96 = [(AVAudioDeviceTestService *)self inputFilter];
      [v93 connect:v95 to:v96 format:0];
    }

    v97 = [(AVAudioDeviceTestService *)self sourceNode];
    v98 = v97 == 0;

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

      v100 = [(AVAudioDeviceTestService *)self engine];
      v101 = [(AVAudioDeviceTestService *)self sourceNode];
      v102 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v100 connect:v101 to:v102 format:v125];
    }

    v103 = [(AVAudioDeviceTestService *)self engine];
    v104 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v105 = [(AVAudioDeviceTestService *)self engine];
    v106 = [v105 outputNode];
    v107 = [(AVAudioDeviceTestService *)self engine];
    v108 = [v107 outputNode];
    v109 = [v108 outputFormatForBus:0];
    [v103 connect:v104 to:v106 format:v109];

    v110 = [(AVAudioDeviceTestService *)self outputFilter];
    LOBYTE(v108) = v110 == 0;

    if (v108)
    {
      v120 = [(AVAudioDeviceTestService *)self sourceNode];
      v121 = v120 == 0;

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

      v117 = [(AVAudioDeviceTestService *)self engine];
      v118 = [(AVAudioDeviceTestService *)self player];
      v119 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v117 connect:v118 to:v119 format:v125];
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

      v112 = [(AVAudioDeviceTestService *)self engine];
      v113 = [(AVAudioDeviceTestService *)self outputFilter];
      v114 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [v112 connect:v113 to:v114 format:v125];

      v115 = [(AVAudioDeviceTestService *)self player];
      LOBYTE(v113) = v115 == 0;

      if (v113)
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

      v117 = [(AVAudioDeviceTestService *)self engine];
      v118 = [(AVAudioDeviceTestService *)self player];
      v119 = [(AVAudioDeviceTestService *)self outputFilter];
      [v117 connect:v118 to:v119 format:v125];
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