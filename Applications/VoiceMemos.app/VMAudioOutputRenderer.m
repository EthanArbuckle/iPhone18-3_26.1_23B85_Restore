@interface VMAudioOutputRenderer
- (BOOL)prepareToRender:(id)a3 inputBlock:(id)a4 error:(id *)a5;
- (BOOL)startAndReturnError:(id *)a3;
- (OpaqueAudioComponentInstance)_createTimeStretch:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4 error:(id *)a5;
- (VMAudioOutputRenderer)initWithQueue:(id)a3;
- (VMAudioOutputRendererDelegate)delegate;
- (double)currentSampleTime;
- (float)rate;
- (id)_createPollingBlock:(id)a3;
- (id)_createQueue:(BOOL)a3;
- (id)_sourceNodeInputBlock;
- (void)_handleAVAudioEngineConfigurationChangeNotification:(id)a3;
- (void)_prepareAudioUnits:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4;
- (void)_prepareRenderChainIfNeeded;
- (void)_resetRenderTimes;
- (void)_resetTimeStretchAudioUnit;
- (void)_tearDownTimeStretch;
- (void)dealloc;
- (void)pause;
- (void)prepare;
- (void)registerNotifications;
- (void)reset;
- (void)sendEmptyQueueSignal;
- (void)setRate:(float)a3;
- (void)startPollingTimer:(double)a3;
- (void)stopPollingTimer;
- (void)unprepare;
@end

@implementation VMAudioOutputRenderer

- (VMAudioOutputRenderer)initWithQueue:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VMAudioOutputRenderer;
  v5 = [(VMAudioOutputRenderer *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    audioEngine = v5->_audioEngine;
    v5->_audioEngine = v6;

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = [(VMAudioOutputRenderer *)v5 _createQueue:1];
    }

    inputPollingQueue = v5->_inputPollingQueue;
    v5->_inputPollingQueue = v8;

    v10 = objc_opt_new();
    mixerNode = v5->_mixerNode;
    v5->_mixerNode = v10;

    v5->_renderLock._os_unfair_lock_opaque = 0;
    [(AVAudioEngine *)v5->_audioEngine attachNode:v5->_mixerNode];
    v5->_timeStretchRate = 1.0;
    v12 = [[VMProcessor alloc] initForRealTime:1];
    enhanceProcessor = v5->_enhanceProcessor;
    v5->_enhanceProcessor = v12;

    v14 = +[VMSignpostInterval audioPlayback];
    audioPlayback = v5->_audioPlayback;
    v5->_audioPlayback = v14;

    [(VMAudioOutputRenderer *)v5 registerNotifications];
  }

  return v5;
}

- (id)_createQueue:(BOOL)a3
{
  if (a3)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  }

  else
  {
    v3 = 0;
  }

  v4 = dispatch_queue_create("VMAudioOutputRenderer.pollingQueue", v3);

  return v4;
}

- (void)dealloc
{
  [(VMAudioOutputRenderer *)self unprepare];
  v3.receiver = self;
  v3.super_class = VMAudioOutputRenderer;
  [(VMAudioOutputRenderer *)&v3 dealloc];
}

- (void)unprepare
{
  if ([(AVAudioEngine *)self->_audioEngine isRunning])
  {
    [(AVAudioEngine *)self->_audioEngine stop];
  }

  if (self->_sourceNode)
  {
    [(AVAudioEngine *)self->_audioEngine detachNode:?];
    sourceNode = self->_sourceNode;
    self->_sourceNode = 0;
  }

  processingFormat = self->_processingFormat;
  self->_processingFormat = 0;

  inputPollingBlock = self->_inputPollingBlock;
  self->_inputPollingBlock = 0;

  v6 = sub_10003FB5C(&self->_ringBuffer);

  [(VMAudioOutputRenderer *)self _tearDownTimeStretch];
}

- (void)_tearDownTimeStretch
{
  timeStretchAudiounit = self->_timeStretchAudiounit;
  if (timeStretchAudiounit)
  {
    AudioUnitUninitialize(timeStretchAudiounit);
    AudioComponentInstanceDispose(self->_timeStretchAudiounit);
    self->_timeStretchAudiounit = 0;
  }
}

- (BOOL)prepareToRender:(id)a3 inputBlock:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  [(VMAudioOutputRenderer *)self unprepare];
  v11 = [v9 isStandard];
  if (v11)
  {
    objc_storeStrong(&self->_processingFormat, a3);
    self->_maxBufferFill = 12288;
    v12 = [(VMAudioOutputRenderer *)self _createPollingBlock:v10];
    inputPollingBlock = self->_inputPollingBlock;
    self->_inputPollingBlock = v12;

    sub_100057FF0(&self->_ringBuffer, 2 * self->_maxBufferFill, [v9 channelCount], 0);
  }

  else if (a5)
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"VMAudioOutputRenderer must use deinterleaved float PCM format";
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a5 = [NSError errorWithDomain:RCVoiceMemosErrorDomain code:1 userInfo:v14];
  }

  return v11;
}

- (void)_prepareRenderChainIfNeeded
{
  if (!self->_processingFormat)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"VMAudioOutputRenderer.mm" lineNumber:151 description:@"prepareToRender must be called before _prepareRenderChainIfNeeded"];
  }

  if (!self->_sourceNode)
  {
    v3 = [AVAudioSourceNode alloc];
    processingFormat = self->_processingFormat;
    v5 = [(VMAudioOutputRenderer *)self _sourceNodeInputBlock];
    v6 = [v3 initWithFormat:processingFormat renderBlock:v5];
    sourceNode = self->_sourceNode;
    self->_sourceNode = v6;

    [(AVAudioEngine *)self->_audioEngine attachNode:self->_sourceNode];
    [(AVAudioEngine *)self->_audioEngine connect:self->_sourceNode to:self->_mixerNode format:self->_processingFormat];
    v8 = [(VMAudioOutputRenderer *)self delegate];
    v9 = [v8 audioEngineOutputNodeAccessQueue];

    if (v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058288;
      block[3] = &unk_10028AE58;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    else
    {
      audioEngine = self->_audioEngine;
      mixerNode = self->_mixerNode;
      v12 = [(AVAudioEngine *)audioEngine outputNode];
      [(AVAudioEngine *)audioEngine connect:mixerNode to:v12 format:0];
    }

    [(AVAudioEngine *)self->_audioEngine prepare];
    v13 = [(AVAudioSourceNode *)self->_sourceNode AUAudioUnit];
    v14 = [v13 maximumFramesToRender];

    v15 = [(AVAudioFormat *)self->_processingFormat streamDescription];
    if (v14 <= 0x1000)
    {
      v16 = 4096;
    }

    else
    {
      v16 = v14;
    }

    v17 = *&v15->mSampleRate;
    v18 = *&v15->mBytesPerPacket;
    v22 = *&v15->mBitsPerChannel;
    v21[0] = v17;
    v21[1] = v18;
    [(VMAudioOutputRenderer *)self _prepareAudioUnits:v21 maxFramesPerRender:v16];
  }
}

- (void)_prepareAudioUnits:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4
{
  v4 = *&a4;
  [(VMAudioOutputRenderer *)self _tearDownTimeStretch];
  v7 = *&a3->mBytesPerPacket;
  v14 = *&a3->mSampleRate;
  v15 = v7;
  v16 = *&a3->mBitsPerChannel;
  v13 = 0;
  v8 = [(VMAudioOutputRenderer *)self _createTimeStretch:&v14 maxFramesPerRender:v4 error:&v13];
  v9 = v13;
  self->_timeStretchAudiounit = v8;
  if (!v8)
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001B71F0(v9, v10);
    }
  }

  if (self->_timeStretchRate != 1.0)
  {
    [(VMAudioOutputRenderer *)self setRate:?];
  }

  enhanceProcessor = self->_enhanceProcessor;
  v12 = *&a3->mBytesPerPacket;
  v14 = *&a3->mSampleRate;
  v15 = v12;
  v16 = *&a3->mBitsPerChannel;
  [(VMProcessor *)enhanceProcessor prepareWithFormat:&v14 maxFramesPerRender:v4];
}

- (void)sendEmptyQueueSignal
{
  v3 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000584A8;
  block[3] = &unk_10028AE58;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAVAudioEngineConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
}

- (void)_handleAVAudioEngineConfigurationChangeNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058608;
  block[3] = &unk_10028AE58;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)startAndReturnError:(id *)a3
{
  if (self->_processingFormat)
  {
    v5 = self->_audioPlayback;
    v6 = v5->log;
    v7 = os_signpost_id_generate(v6);
    v5->intervalID = v7;
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VMAudioOutputRenderer.audioPlayback", "", v14, 2u);
    }

    [(VMAudioOutputRenderer *)self _prepareRenderChainIfNeeded];
    if (![(AVAudioEngine *)self->_audioEngine isRunning])
    {
      [(VMAudioOutputRenderer *)self currentSampleTime];
      self->_playbackSampleIndexAtSeek = v10;
      self->_playbackSampleIndexAtStart = v10;
      [(VMAudioOutputRenderer *)self _resetRenderTimes];
      [(VMAudioOutputRenderer *)self _resetTimeStretchAudioUnit];
      if (![(AVAudioEngine *)self->_audioEngine startAndReturnError:a3])
      {
        v12 = 0;
        goto LABEL_12;
      }

      v11 = +[AVAudioSession sharedInstance];
      [v11 IOBufferDuration];
      [(VMAudioOutputRenderer *)self startPollingTimer:?];
    }

    v12 = 1;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v15 = NSLocalizedDescriptionKey;
    v16 = @"VMAudioOutputRenderer - prepareToRender must be called before starting render";
    v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [NSError errorWithDomain:RCVoiceMemosErrorDomain code:1 userInfo:v5];
    *a3 = v12 = 0;
  }

LABEL_12:

  return v12;
}

- (void)_resetRenderTimes
{
  self->_hostTimeAtRenderStart = 0;
  self->_sampleTimeAtRenderStart = 0.0;
  self->_framesOfSilenceOffset = 0;
  *&self->_shouldSignalQueueEmpty = 0;
  os_unfair_lock_lock(&self->_renderLock);
  self->_framesOfSilenceRendered = 0;
  self->_renderSampleTime = 0.0;
  self->_renderRateScalar = 0.0;
  self->_renderHostTime = 0;

  os_unfair_lock_unlock(&self->_renderLock);
}

- (void)_resetTimeStretchAudioUnit
{
  timeStretchAudiounit = self->_timeStretchAudiounit;
  if (timeStretchAudiounit)
  {
    AudioUnitReset(timeStretchAudiounit, 0, 0);
  }
}

- (void)startPollingTimer:(double)a3
{
  if (self->_inputPollingBlock)
  {
    v4 = [[VMDispatchTimer alloc] init:self->_inputPollingQueue leeway:self->_inputPollingBlock queue:a3 block:a3 * 0.5];
    inputPollingTimer = self->_inputPollingTimer;
    self->_inputPollingTimer = v4;
  }
}

- (void)stopPollingTimer
{
  inputPollingTimer = self->_inputPollingTimer;
  self->_inputPollingTimer = 0;
}

- (double)currentSampleTime
{
  os_unfair_lock_lock(&self->_renderLock);
  renderHostTime = self->_renderHostTime;
  renderSampleTime = self->_renderSampleTime;
  renderRateScalar = self->_renderRateScalar;
  framesOfSilenceOffset = self->_framesOfSilenceOffset;
  os_unfair_lock_unlock(&self->_renderLock);
  if (!renderHostTime || renderRateScalar == 0.0)
  {
    return self->_playbackSampleIndexAtSeek;
  }

  v7 = mach_absolute_time();
  if (qword_1002D7020 != -1)
  {
    sub_1001B727C();
  }

  v8 = *&qword_1002D7018 * (v7 - renderHostTime);
  v9 = renderSampleTime - self->_sampleTimeAtRenderStart + self->_playbackSampleIndexAtStart - framesOfSilenceOffset;
  [(AVAudioFormat *)self->_processingFormat sampleRate];
  result = v9 + v8 * v10 / renderRateScalar;
  if (result <= self->_playbackSampleIndexAtSeek)
  {
    return self->_playbackSampleIndexAtSeek;
  }

  return result;
}

- (void)reset
{
  [(VMAudioOutputRenderer *)self pause];
  v3 = atomic_load(&self->_ringBuffer.mFill);

  sub_100040168(&self->_ringBuffer, v3);
}

- (void)pause
{
  [(VMAudioOutputRenderer *)self currentSampleTime];
  self->_playbackSampleIndexAtSeek = v3;
  [(AVAudioEngine *)self->_audioEngine pause];
  [(VMAudioOutputRenderer *)self stopPollingTimer];

  [(VMAudioOutputRenderer *)self _resetRenderTimes];
}

- (void)prepare
{
  v2 = objc_retainBlock(self->_inputPollingBlock);
  if (v2)
  {
    v2[2]();
  }
}

- (id)_createPollingBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100058C7C;
  v8[3] = &unk_10028AE80;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_sourceNodeInputBlock
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058DFC;
  v4[3] = &unk_10028AEA8;
  v4[4] = self;
  v4[5] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (void)setRate:(float)a3
{
  self->_timeStretchRate = a3;
  timeStretchAudiounit = self->_timeStretchAudiounit;
  if (timeStretchAudiounit)
  {
    AudioUnitSetParameter(timeStretchAudiounit, 0, 0, 0, a3, 0);
  }
}

- (float)rate
{
  result = self->_timeStretchRate;
  outValue = result;
  timeStretchAudiounit = self->_timeStretchAudiounit;
  if (timeStretchAudiounit)
  {
    AudioUnitGetParameter(timeStretchAudiounit, 0, 0, 0, &outValue);
    return outValue;
  }

  return result;
}

- (OpaqueAudioComponentInstance)_createTimeStretch:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4 error:(id *)a5
{
  v22 = 0;
  inData[0] = sub_100058FE8;
  inData[1] = self;
  v8 = sub_100095AC4(0x61756663u, 0x6970746Fu, &v22);
  v9 = sub_1000959C0(v8, a5);
  result = v22;
  if (v9)
  {
    v11 = sub_100095EFC(v22, a4);
    if (sub_1000959C0(v11, a5) && (v12 = *&a3->mBytesPerPacket, v18 = *&a3->mSampleRate, v19 = v12, v20 = *&a3->mBitsPerChannel, v13 = sub_100095B14(v22, &v18, 1), sub_1000959C0(v13, a5)) && (v14 = *&a3->mBytesPerPacket, v18 = *&a3->mSampleRate, v19 = v14, v20 = *&a3->mBitsPerChannel, v15 = sub_100095B14(v22, &v18, 0), sub_1000959C0(v15, a5)) && (v16 = AudioUnitSetProperty(v22, 0x17u, 1u, 0, inData, 0x10u), sub_1000959C0(v16, a5)) && (v17 = AudioUnitInitialize(v22), sub_1000959C0(v17, a5)))
    {
      return v22;
    }

    else
    {
      AudioComponentInstanceDispose(v22);
      return 0;
    }
  }

  return result;
}

- (VMAudioOutputRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end