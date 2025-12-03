@interface VMRecordingEngine
- (BOOL)configureWithAudioSettings:(id)settings error:(id *)error;
- (BOOL)handleWillTerminate:(id *)terminate;
- (BOOL)sampleRecordingTime:(double *)time;
- (BOOL)startAndReturnError:(id *)error;
- (NSURL)outputFileURL;
- (VMRecordingController)controller;
- (VMRecordingEngine)init;
- (id)inputNode:(id *)node;
- (id)outputFileSettings;
- (void)_handleRecordingError:(id)error;
- (void)_scheduleFirstBuffer;
- (void)_signalOverdubPlaybackHasStarted;
- (void)_startRecording;
- (void)dealloc;
- (void)handleConfigurationChangeNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)reset;
- (void)setController:(id)controller;
- (void)stop;
- (void)stopRecordingAtTime:(double)time completion:(id)completion;
@end

@implementation VMRecordingEngine

- (VMRecordingEngine)init
{
  v11.receiver = self;
  v11.super_class = VMRecordingEngine;
  v2 = [(VMRecordingEngine *)&v11 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;

    v5 = dispatch_group_create();
    stopGroup = v2->_stopGroup;
    v2->_stopGroup = v5;

    v2->_recordingTime = v2->_recordingTimes;
    v7 = objc_opt_new();
    inputBufferQueue = v2->_inputBufferQueue;
    v2->_inputBufferQueue = v7;

    v2->_inputWriteLock._os_unfair_lock_opaque = 0;
    recordingBlock = v2->_recordingBlock;
    v2->_recordingBlock = &stru_10028A4E8;
  }

  return v2;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeObserver:self forKeyPath:@"targetState" context:@"targetState"];
  }

  v5.receiver = self;
  v5.super_class = VMRecordingEngine;
  [(VMRecordingEngine *)&v5 dealloc];
}

- (void)setController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeObserver:self forKeyPath:@"targetState" context:@"targetState"];
  }

  objc_storeWeak(&self->_controller, obj);
  if (obj)
  {
    [obj addObserver:self forKeyPath:@"targetState" options:0 context:@"targetState"];
  }

  sub_1001B5844(&self->super.super.isa);
}

- (BOOL)sampleRecordingTime:(double *)time
{
  startTime = self->_startTime;
  if (startTime)
  {
    selfCopy = self;
    recordingTime = self->_recordingTime;
    hostTime = recordingTime->hostTime;
    frameCount = recordingTime->frameCount;
    v9 = startTime;
    [(AVAudioTime *)v9 sampleRate];
    v11 = frameCount / v10 + selfCopy->_punchInTime;
    LODWORD(selfCopy) = [(VMRecordingEngine *)selfCopy isRunning];

    if (selfCopy)
    {
      [AVAudioTime secondsForHostTime:mach_absolute_time() - hostTime];
      v11 = v11 + v12;
    }

    *time = v11;
  }

  return startTime != 0;
}

- (void)stopRecordingAtTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_retainBlock(completionCopy);
  v8 = self->_assetWriter;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000381F0;
  v13[3] = &unk_10028A538;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  v10 = completionCopy;
  v15 = v10;
  v11 = objc_retainBlock(v13);

  if (self->_startTime && (self->_stopTime = time, (stopGroup = self->_stopGroup) != 0))
  {
    dispatch_group_notify(stopGroup, &_dispatch_main_q, v11);
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"targetState")
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    targetState = [WeakRetained targetState];

    if (targetState)
    {
      v9 = targetState == 3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = +[VMAudioService sharedInstance];
      v11 = objc_loadWeakRetained(&self->_controller);
      [v10 stopRecordingWithController:v11 error:0];
    }

    else if (targetState == 2)
    {
      [(VMRecordingEngine *)self startAndReturnError:0];
    }

    v12 = objc_loadWeakRetained(&self->_controller);
    [v12 setCurrentState:targetState];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VMRecordingEngine;
    [(VMRecordingEngine *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)handleConfigurationChangeNotification:(id)notification
{
  if (([(VMRecordingEngine *)self isRunning]& 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038444;
    block[3] = &unk_10028A3B8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)inputNode:(id *)node
{
  v5.receiver = self;
  v5.super_class = VMRecordingEngine;
  inputNode = [(VMRecordingEngine *)&v5 inputNode];

  return inputNode;
}

- (void)_startRecording
{
  recordingBlock = self->_recordingBlock;
  self->_recordingBlock = &stru_10028A598;
}

- (BOOL)configureWithAudioSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v7 = [(VMRecordingEngine *)self inputNode:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 inputFormatForBus:0];
    [v9 sampleRate];
    v11 = v10;
    self->_inputSampleRate = v10;
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[VMRecordingEngine configureWithAudioSettings:error:]";
      v60 = 2048;
      v61 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s -- inputSampleRate = %g Hz", buf, 0x16u);
    }

    if (v11 == 0.0 || ![v9 channelCount])
    {
      if (!error)
      {
        v15 = 0;
LABEL_27:

        goto LABEL_28;
      }

      *error = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:5 userInfo:0];
      WeakRetained = OSLogForCategory();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *error;
        *buf = 136315394;
        v59 = "[VMRecordingEngine configureWithAudioSettings:error:]";
        v60 = 2112;
        v61 = *&v14;
        _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s -- serviceError = %@", buf, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      channelCount = [v9 channelCount];
      v17 = [settingsCopy objectForKeyedSubscript:AVSampleRateKey];
      [v17 doubleValue];
      v19 = v18;
      self->_outputSampleRate = v18;

      v20 = OSLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[VMRecordingEngine configureWithAudioSettings:error:]";
        v60 = 2048;
        v61 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s -- outputSampleRate = %g Hz", buf, 0x16u);
      }

      v21 = [settingsCopy objectForKeyedSubscript:AVNumberOfChannelsKey];
      intValue = [v21 intValue];

      if (v11 != v19 || channelCount != intValue)
      {
        v23 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:intValue channels:v19];
        v24 = [[AVAudioConverter alloc] initFromFormat:v9 toFormat:v23];
        audioConverter = self->_audioConverter;
        self->_audioConverter = v24;

        [(AVAudioConverter *)self->_audioConverter setSampleRateConverterQuality:127];
        v26 = [AVAudioPCMBuffer alloc];
        LODWORD(v27) = vcvtpd_u64_f64(v19 / 10.0);
        v28 = [v26 initWithPCMFormat:v23 frameCapacity:v27];
        conversionBuffer = self->_conversionBuffer;
        self->_conversionBuffer = v28;
      }

      WeakRetained = objc_loadWeakRetained(&self->_controller);
      if ([WeakRetained overdubbing])
      {
        processingFormat = [(RCAssetWriter *)self->_assetWriter processingFormat];
        recordingComposition = [WeakRetained recordingComposition];
        [WeakRetained targetTime];
        v33 = v32;
        [recordingComposition composedDuration];
        if (v33 >= v34)
        {
          recordingComposition2 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:processingFormat frameCapacity:1024];
          [recordingComposition2 setFrameLength:1024];
          v57[0] = recordingComposition2;
          v57[1] = recordingComposition2;
          v39 = [NSArray arrayWithObjects:v57 count:2];
          objectEnumerator = [v39 objectEnumerator];
        }

        else
        {
          recordingComposition2 = [WeakRetained recordingComposition];
          [WeakRetained targetTime];
          v56 = 0;
          objectEnumerator = [recordingComposition2 bufferEnumerator:processingFormat startTime:&v56 error:?];
        }

        if (objectEnumerator)
        {
          v40 = objc_opt_new();
          [(VMRecordingEngine *)self attachNode:v40];
          outputNode = [(VMRecordingEngine *)self outputNode];
          [(VMRecordingEngine *)self connect:v40 to:outputNode format:processingFormat];

          playerNode = self->_playerNode;
          self->_playerNode = v40;
          v43 = v40;

          objc_storeStrong(&self->_playerBuffers, objectEnumerator);
          v44 = objc_opt_new();
          overdubBuffers = self->_overdubBuffers;
          self->_overdubBuffers = v44;

          recordingBlock = self->_recordingBlock;
          self->_recordingBlock = &stru_10028A5E0;
        }
      }

      else
      {
        v37 = +[AVAudioSession sharedInstance];
        [v37 inputLatency];
        self->_inputLatency = v38;

        processingFormat = self->_recordingBlock;
        self->_recordingBlock = &stru_10028A600;
      }

      v47 = v8;
      objc_initWeak(buf, self);
      v51 = _NSConcreteStackBlock;
      v52 = 3221225472;
      v53 = sub_100039274;
      v54 = &unk_10028A628;
      objc_copyWeak(&v55, buf);
      LODWORD(v48) = vcvtpd_u64_f64(v11 / 10.0);
      [v47 installTapOnBus:0 bufferSize:v48 format:v9 block:&v51];
      dispatch_group_enter(self->_stopGroup);
      AudioUnitAddPropertyListener([v47 audioUnit], 0x7D1u, sub_100039300, self);
      v49 = +[NSNotificationCenter defaultCenter];
      [v49 addObserver:self selector:"handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self];

      objc_destroyWeak(&v55);
      objc_destroyWeak(buf);

      v15 = 1;
    }

    goto LABEL_27;
  }

  v15 = 0;
LABEL_28:

  return v15;
}

- (void)_handleRecordingError:(id)error
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100039408;
  v4[3] = &unk_10028A650;
  v4[4] = self;
  errorCopy = error;
  v3 = errorCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_signalOverdubPlaybackHasStarted
{
  lastRenderTime = [(AVAudioPlayerNode *)self->_playerNode lastRenderTime];
  [lastRenderTime sampleRate];
  v4 = [AVAudioTime timeWithSampleTime:0 atRate:?];
  v5 = [(AVAudioPlayerNode *)self->_playerNode nodeTimeForPlayerTime:v4];
  v6 = +[AVAudioSession sharedInstance];
  [v6 inputLatency];
  v8 = v7;
  self->_inputLatency = v7;
  [v6 outputLatency];
  v10 = v9;
  os_unfair_lock_lock(&self->_inputWriteLock);
  v11 = [v5 rc_adjustedBySeconds:v8 + v10];
  playerStartTime = self->_playerStartTime;
  self->_playerStartTime = v11;

  os_unfair_lock_unlock(&self->_inputWriteLock);
  v13 = OSLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B6B60();
  }

  v14 = OSLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B6BD8();
  }

  v15 = OSLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B6C50();
  }
}

- (void)_scheduleFirstBuffer
{
  v3 = self->_playerNode;
  nextObject = [(NSEnumerator *)self->_playerBuffers nextObject];
  v5 = nextObject;
  if (v3)
  {
    v6 = nextObject == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000397BC;
    v10 = &unk_10028A678;
    objc_copyWeak(&v11, &location);
    [(AVAudioPlayerNode *)v3 scheduleBuffer:v5 completionCallbackType:1 completionHandler:&v7];
    -[AVAudioPlayerNode prepareWithFrameCount:](v3, "prepareWithFrameCount:", [v5 frameLength]);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (NSURL)outputFileURL
{
  assetWriter = [(VMRecordingEngine *)self assetWriter];
  v3 = [assetWriter url];

  return v3;
}

- (id)outputFileSettings
{
  assetWriter = [(VMRecordingEngine *)self assetWriter];
  settings = [assetWriter settings];

  return settings;
}

- (BOOL)handleWillTerminate:(id *)terminate
{
  assetWriter = [(VMRecordingEngine *)self assetWriter];
  v5 = assetWriter;
  if (assetWriter)
  {
    v6 = [assetWriter finishWritingWithError:terminate];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (VMRecordingController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (BOOL)startAndReturnError:(id *)error
{
  v9.receiver = self;
  v9.super_class = VMRecordingEngine;
  v4 = [(VMRecordingEngine *)&v9 startAndReturnError:error];
  if (v4)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[VMRecordingEngine startAndReturnError:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Recording engine started", buf, 0xCu);
    }

    playerNode = self->_playerNode;
    if (playerNode)
    {
      v7 = playerNode;
      [(VMRecordingEngine *)self _scheduleFirstBuffer];
      sub_100039808(&self->super.super.isa);
    }
  }

  sub_1001B5844(&self->super.super.isa);
  return v4;
}

- (void)pause
{
  v3.receiver = self;
  v3.super_class = VMRecordingEngine;
  [(VMRecordingEngine *)&v3 pause];
  sub_1001B5844(&self->super.super.isa);
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VMRecordingEngine;
  [(VMRecordingEngine *)&v3 reset];
  sub_1001B5844(&self->super.super.isa);
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = VMRecordingEngine;
  [(VMRecordingEngine *)&v3 stop];
  sub_1001B5844(&self->super.super.isa);
}

@end