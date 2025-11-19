@interface VMRecordingEngine
- (BOOL)configureWithAudioSettings:(id)a3 error:(id *)a4;
- (BOOL)handleWillTerminate:(id *)a3;
- (BOOL)sampleRecordingTime:(double *)a3;
- (BOOL)startAndReturnError:(id *)a3;
- (NSURL)outputFileURL;
- (VMRecordingController)controller;
- (VMRecordingEngine)init;
- (id)inputNode:(id *)a3;
- (id)outputFileSettings;
- (void)_handleRecordingError:(id)a3;
- (void)_scheduleFirstBuffer;
- (void)_signalOverdubPlaybackHasStarted;
- (void)_startRecording;
- (void)dealloc;
- (void)handleConfigurationChangeNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)reset;
- (void)setController:(id)a3;
- (void)stop;
- (void)stopRecordingAtTime:(double)a3 completion:(id)a4;
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

- (void)setController:(id)a3
{
  obj = a3;
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

- (BOOL)sampleRecordingTime:(double *)a3
{
  startTime = self->_startTime;
  if (startTime)
  {
    v5 = self;
    recordingTime = self->_recordingTime;
    hostTime = recordingTime->hostTime;
    frameCount = recordingTime->frameCount;
    v9 = startTime;
    [(AVAudioTime *)v9 sampleRate];
    v11 = frameCount / v10 + v5->_punchInTime;
    LODWORD(v5) = [(VMRecordingEngine *)v5 isRunning];

    if (v5)
    {
      [AVAudioTime secondsForHostTime:mach_absolute_time() - hostTime];
      v11 = v11 + v12;
    }

    *a3 = v11;
  }

  return startTime != 0;
}

- (void)stopRecordingAtTime:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_retainBlock(v6);
  v8 = self->_assetWriter;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000381F0;
  v13[3] = &unk_10028A538;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v11 = objc_retainBlock(v13);

  if (self->_startTime && (self->_stopTime = a3, (stopGroup = self->_stopGroup) != 0))
  {
    dispatch_group_notify(stopGroup, &_dispatch_main_q, v11);
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"targetState")
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8 = [WeakRetained targetState];

    if (v8)
    {
      v9 = v8 == 3;
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

    else if (v8 == 2)
    {
      [(VMRecordingEngine *)self startAndReturnError:0];
    }

    v12 = objc_loadWeakRetained(&self->_controller);
    [v12 setCurrentState:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VMRecordingEngine;
    [(VMRecordingEngine *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)handleConfigurationChangeNotification:(id)a3
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

- (id)inputNode:(id *)a3
{
  v5.receiver = self;
  v5.super_class = VMRecordingEngine;
  v3 = [(VMRecordingEngine *)&v5 inputNode];

  return v3;
}

- (void)_startRecording
{
  recordingBlock = self->_recordingBlock;
  self->_recordingBlock = &stru_10028A598;
}

- (BOOL)configureWithAudioSettings:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VMRecordingEngine *)self inputNode:a4];
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
      if (!a4)
      {
        v15 = 0;
LABEL_27:

        goto LABEL_28;
      }

      *a4 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:5 userInfo:0];
      WeakRetained = OSLogForCategory();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a4;
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
      v16 = [v9 channelCount];
      v17 = [v6 objectForKeyedSubscript:AVSampleRateKey];
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

      v21 = [v6 objectForKeyedSubscript:AVNumberOfChannelsKey];
      v22 = [v21 intValue];

      if (v11 != v19 || v16 != v22)
      {
        v23 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:v22 channels:v19];
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
        v30 = [(RCAssetWriter *)self->_assetWriter processingFormat];
        v31 = [WeakRetained recordingComposition];
        [WeakRetained targetTime];
        v33 = v32;
        [v31 composedDuration];
        if (v33 >= v34)
        {
          v35 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v30 frameCapacity:1024];
          [v35 setFrameLength:1024];
          v57[0] = v35;
          v57[1] = v35;
          v39 = [NSArray arrayWithObjects:v57 count:2];
          v36 = [v39 objectEnumerator];
        }

        else
        {
          v35 = [WeakRetained recordingComposition];
          [WeakRetained targetTime];
          v56 = 0;
          v36 = [v35 bufferEnumerator:v30 startTime:&v56 error:?];
        }

        if (v36)
        {
          v40 = objc_opt_new();
          [(VMRecordingEngine *)self attachNode:v40];
          v41 = [(VMRecordingEngine *)self outputNode];
          [(VMRecordingEngine *)self connect:v40 to:v41 format:v30];

          playerNode = self->_playerNode;
          self->_playerNode = v40;
          v43 = v40;

          objc_storeStrong(&self->_playerBuffers, v36);
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

        v30 = self->_recordingBlock;
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

- (void)_handleRecordingError:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100039408;
  v4[3] = &unk_10028A650;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_signalOverdubPlaybackHasStarted
{
  v3 = [(AVAudioPlayerNode *)self->_playerNode lastRenderTime];
  [v3 sampleRate];
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
  v4 = [(NSEnumerator *)self->_playerBuffers nextObject];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
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
  v2 = [(VMRecordingEngine *)self assetWriter];
  v3 = [v2 url];

  return v3;
}

- (id)outputFileSettings
{
  v2 = [(VMRecordingEngine *)self assetWriter];
  v3 = [v2 settings];

  return v3;
}

- (BOOL)handleWillTerminate:(id *)a3
{
  v4 = [(VMRecordingEngine *)self assetWriter];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 finishWritingWithError:a3];
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

- (BOOL)startAndReturnError:(id *)a3
{
  v9.receiver = self;
  v9.super_class = VMRecordingEngine;
  v4 = [(VMRecordingEngine *)&v9 startAndReturnError:a3];
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