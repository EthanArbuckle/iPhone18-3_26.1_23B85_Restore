@interface APRKStreamRenderer
- (APRKStreamRenderer)initWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller useCALayerForMirroring:(BOOL)mirroring;
- (APRKStreamRendererDelegate)delegate;
- (BOOL)_performStartRecordingWithOutputURL:(id)l;
- (BOOL)_performStopRecording;
- (BOOL)_receiverSupportsMirroring;
- (BOOL)_sampleBufferRepresentsKeyFrame:(opaqueCMSampleBuffer *)frame;
- (BOOL)canRecord;
- (BOOL)isActive;
- (BOOL)isMirroringVideoStreamPaused;
- (BOOL)isP2PWiFi;
- (BOOL)isPaused;
- (BOOL)isProtectedMirroring;
- (BOOL)isRecording;
- (BOOL)isWiredLink;
- (BOOL)processAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)processStopAudioSessionRequestWithSessionID:(unsigned int)d;
- (BOOL)processStopScreenPresentationWithSessionID:(unsigned int)d;
- (BOOL)processStopVideoPlaybackRequestWithSessionID:(unsigned int)d;
- (BOOL)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)startRecordingWithOutputURL:(id)l;
- (BOOL)stopRecording;
- (CGSize)videoFrameSize;
- (id)demoDeviceInfo;
- (id)ensembleInfo;
- (id)sampleBufferDelegate;
- (id)videoQueuePerformanceDictionary;
- (int)_enqueueSampleBufferForRecording:(opaqueCMSampleBuffer *)recording isAudioSBuf:(BOOL)buf;
- (int)_enqueueVideoFrameForRendering:(opaqueCMSampleBuffer *)rendering;
- (signed)_ensureFigVideoQueue;
- (unint64_t)currentVideoPlaybackVersion;
- (unsigned)audioSessionCount;
- (unsigned)currentVideoSessionID;
- (unsigned)screenSessionCount;
- (unsigned)videoSessionCount;
- (void)_cleanupInternalPlayer;
- (void)_cleanupPreviousRecordingIfExisting;
- (void)_ensureInternalPlayerFor:(int)for;
- (void)_performUIControllerActionWithBlock:(id)block;
- (void)_registerForFigVideoQueueNotifications;
- (void)_unregisterForFigVideoQueueNotifications;
- (void)_updateStreamingMode;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)makeNowPlayingRenderer;
- (void)mediaPlayer:(id)player didGenerateFPSSecureStopRecordPayload:(id)payload;
- (void)mediaPlayer:(id)player wantsToPostNotification:(id)notification withPayload:(id)payload;
- (void)mediaPlayer:(id)player wantsToSendUpstreamMessageWithDictionary:(id)dictionary;
- (void)mediaPlayerNeedsTLSInfo:(id)info;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postVideoV1EventWithType:(const char *)type params:(__CFDictionary *)params;
- (void)processHidePasscodePromptRequest;
- (void)processSenderUIEvent:(id)event;
- (void)processShowPasscodePromptRequest:(id)request;
- (void)processStartAudioSessionRequestWithSessionID:(unsigned int)d isScreenAudio:(BOOL)audio;
- (void)processStartScreenPresentationWithSessionID:(unsigned int)d;
- (void)processStartVideoPlaybackRequestWithWithSessionID:(unsigned int)d version:(unint64_t)version;
- (void)setCanRecord:(BOOL)record;
- (void)setDeferLayerRendering:(BOOL)rendering;
- (void)setDemoDeviceInfo:(id)info;
- (void)setEnsembleInfo:(id)info;
- (void)setIsMirroringAudioStreamPaused:(BOOL)paused;
- (void)setIsMirroringVideoStreamPaused:(BOOL)paused;
- (void)setIsP2PWiFi:(BOOL)fi;
- (void)setIsPaused:(BOOL)paused;
- (void)setIsProtectedMirroring:(BOOL)mirroring;
- (void)setIsWiredLink:(BOOL)link;
- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock;
- (void)setSampleBufferDelegate:(id)delegate;
- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address;
- (void)setVideoV1Delegate:(id)delegate withDelegateQueue:(id)queue;
- (void)stop;
- (void)updateDisplayInfo;
@end

@implementation APRKStreamRenderer

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  backingUIControllerWeakRef = self->_backingUIControllerWeakRef;
  if (backingUIControllerWeakRef)
  {
    CFRelease(backingUIControllerWeakRef);
    self->_backingUIControllerWeakRef = 0;
  }

  sessionReceiverAddr = self->_sessionReceiverAddr;
  if (sessionReceiverAddr)
  {
    CFRelease(sessionReceiverAddr);
    self->_sessionReceiverAddr = 0;
  }

  receiverNetworkClock = self->_receiverNetworkClock;
  if (receiverNetworkClock)
  {
    CFRelease(receiverNetworkClock);
    self->_receiverNetworkClock = 0;
  }

  v6.receiver = self;
  v6.super_class = APRKStreamRenderer;
  [(APRKStreamRenderer *)&v6 dealloc];
}

- (void)stop
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__APRKStreamRenderer_stop__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(rendererStateUpdateQueue, block);
}

uint64_t __26__APRKStreamRenderer_stop__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 16) == 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v3 = _LogCategory_Initialize(), v2 = *(v1 + 32), v3))
      {
        LogPrintF();
        v2 = *(v1 + 32);
      }
    }

    *(v2 + 16) = 1;
    v4 = *(v1 + 32);
    if (v4[33])
    {
      CFRelease(v4[33]);
      *(*(v1 + 32) + 264) = 0;
      v4 = *(v1 + 32);
    }

    if (v4[34])
    {
      CFRelease(v4[34]);
      *(*(v1 + 32) + 272) = 0;
      v4 = *(v1 + 32);
    }

    return [(CFTypeRef *)v4 _performUIControllerActionWithBlock:&__block_literal_global_1];
  }

  return result;
}

- (BOOL)startRecordingWithOutputURL:(id)l
{
  lCopy = l;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [lCopy absoluteString];
    v9 = v8 = self;
    LogPrintF();
  }

  if ([(APRKStreamRenderer *)self canRecord:v8])
  {
    rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__APRKStreamRenderer_startRecordingWithOutputURL___block_invoke;
    block[3] = &unk_278C627D8;
    v12 = &v13;
    block[4] = self;
    v11 = lCopy;
    dispatch_sync(rendererVideoBufferQueue, block);

    v6 = *(v14 + 24);
  }

  else
  {
    v6 = 0;
    *(v14 + 24) = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

uint64_t __50__APRKStreamRenderer_startRecordingWithOutputURL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performStartRecordingWithOutputURL:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)stopRecording
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_stopRecording__block_invoke;
  block[3] = &unk_278C62828;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(rendererVideoBufferQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __35__APRKStreamRenderer_stopRecording__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performStopRecording];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)makeNowPlayingRenderer
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer makeNowPlayingRenderer];
  }

  if (self->_streamRendererMode == 2)
  {

    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_9];
  }
}

uint64_t __44__APRKStreamRenderer_makeNowPlayingRenderer__block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

- (void)updateDisplayInfo
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer updateDisplayInfo];
  }

  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_12];
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__APRKStreamRenderer_isRecording__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canRecord
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__APRKStreamRenderer_canRecord__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(rendererStateUpdateQueue, v6);
  LOBYTE(v3) = 0;
  if (*(v8 + 24) == 1)
  {
    v4 = +[APRKStreamRenderingManager sharedInstance];
    v3 = [v4 optimizeAudioRenderingLatency] ^ 1;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (CGSize)videoFrameSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_23EB0AEAE;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__APRKStreamRenderer_videoFrameSize__block_invoke;
  v7[3] = &unk_278C62828;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(rendererVideoBufferQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __36__APRKStreamRenderer_videoFrameSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 168);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setIsPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__APRKStreamRenderer_setIsPaused___block_invoke;
  v6[3] = &unk_278C62A00;
  v6[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v6);
  self->_isMirroringAudioStreamPaused = paused;
}

- (BOOL)isPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__APRKStreamRenderer_isPaused__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsMirroringVideoStreamPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v4);
}

uint64_t __54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 25) == 1 && (*(result + 40) & 1) == 0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke_cold_1();
    }

    *(*(v1 + 32) + 24) = 1;
    result = [*(v1 + 32) _performUIControllerActionWithBlock:&__block_literal_global_15];
    v2 = *(v1 + 32);
  }

  *(v2 + 25) = *(v1 + 40);
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (BOOL)isMirroringVideoStreamPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__APRKStreamRenderer_isMirroringVideoStreamPaused__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsMirroringAudioStreamPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__APRKStreamRenderer_setIsMirroringAudioStreamPaused___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v4);
}

uint64_t __54__APRKStreamRenderer_setIsMirroringAudioStreamPaused___block_invoke(uint64_t result)
{
  *(*(result + 32) + 26) = *(result + 40);
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (void)setSampleBufferDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer setSampleBufferDelegate:];
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__APRKStreamRenderer_setSampleBufferDelegate___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(rendererVideoBufferQueue, v7);
}

- (void)postVideoV1EventWithType:(const char *)type params:(__CFDictionary *)params
{
  if (type)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      typeCopy = type;
      paramsCopy = params;
      LogPrintF();
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__APRKStreamRenderer_postVideoV1EventWithType_params___block_invoke;
    v9[3] = &__block_descriptor_48_e39_v16__0__OpaqueAPReceiverUIController__8l;
    v9[4] = type;
    v9[5] = params;
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v9, typeCopy, paramsCopy];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer postVideoV1EventWithType:params:];
  }
}

- (void)setVideoV1Delegate:(id)delegate withDelegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = queueCopy;
  if (delegateCopy && queueCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__APRKStreamRenderer_setVideoV1Delegate_withDelegateQueue___block_invoke;
    v9[3] = &unk_278C62A48;
    v10 = delegateCopy;
    v11 = v8;
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v9];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer setVideoV1Delegate:withDelegateQueue:];
  }
}

- (void)setIsWiredLink:(BOOL)link
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__APRKStreamRenderer_setIsWiredLink___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  linkCopy = link;
  dispatch_sync(rendererStateUpdateQueue, block);
}

uint64_t __37__APRKStreamRenderer_setIsWiredLink___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 17) = v1;
  *(*(result + 32) + 19) = v1;
  return result;
}

- (BOOL)isWiredLink
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__APRKStreamRenderer_isWiredLink__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsP2PWiFi:(BOOL)fi
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_setIsP2PWiFi___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  fiCopy = fi;
  dispatch_sync(rendererStateUpdateQueue, block);
}

- (BOOL)isP2PWiFi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__APRKStreamRenderer_isP2PWiFi__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCanRecord:(BOOL)record
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_setCanRecord___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  recordCopy = record;
  dispatch_sync(rendererStateUpdateQueue, block);
}

- (unint64_t)currentVideoPlaybackVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__APRKStreamRenderer_currentVideoPlaybackVersion__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)videoQueuePerformanceDictionary
{
  v6 = 0;
  if (self->_figVideoQueue)
  {
    CMBaseObject = FigVideoQueueGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x277CD6518], *MEMORY[0x277CBECE8], &v6);
      v3 = v6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

- (id)sampleBufferDelegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__APRKStreamRenderer_sampleBufferDelegate__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __42__APRKStreamRenderer_sampleBufferDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (id)ensembleInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__APRKStreamRenderer_ensembleInfo__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)demoDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__APRKStreamRenderer_demoDeviceInfo__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsProtectedMirroring:(BOOL)mirroring
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__APRKStreamRenderer_setIsProtectedMirroring___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  mirroringCopy = mirroring;
  dispatch_sync(rendererStateUpdateQueue, block);
}

uint64_t __46__APRKStreamRenderer_setIsProtectedMirroring___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 28) = v1;
  if (v1 == 1)
  {
    *(*(result + 32) + 19) = 0;
  }

  return result;
}

- (BOOL)isProtectedMirroring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__APRKStreamRenderer_isProtectedMirroring__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (APRKStreamRenderer)initWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller useCALayerForMirroring:(BOOL)mirroring
{
  dCopy = d;
  nameCopy = name;
  v38.receiver = self;
  v38.super_class = APRKStreamRenderer;
  v13 = [(APRKStreamRenderer *)&v38 init];
  if (v13)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    objc_storeStrong(v13 + 44, d);
    *(v13 + 10) = 0;
    *(v13 + 4) = 0;
    v14 = [nameCopy copy];
    v15 = *(v13 + 45);
    *(v13 + 45) = v14;

    *(v13 + 8) = 0;
    v13[19] = 0;
    v16 = *(v13 + 11);
    *(v13 + 11) = 0;

    v13[20] = mirroring;
    *(v13 + 21) = 0;
    *(v13 + 6) = 0x1000000;
    v13[344] = 1;
    *(v13 + 47) = 0;
    *(v13 + 38) = 0;
    v13[29] = 1;
    *(v13 + 168) = *MEMORY[0x277CBF3A8];
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v18 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererVideoBufferQueue", v17);
    v19 = *(v13 + 17);
    *(v13 + 17) = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v21 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererAudioBufferQueue", v20);
    v22 = *(v13 + 18);
    *(v13 + 18) = v21;

    v23 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererStateUpdateQueue", 0);
    v24 = *(v13 + 19);
    *(v13 + 19) = v23;

    v25 = +[APRKStreamRenderingManager sharedInstance];
    delegateQueue = [v25 delegateQueue];
    v27 = *(v13 + 20);
    *(v13 + 20) = delegateQueue;

    v28 = MEMORY[0x277CC0898];
    v29 = *MEMORY[0x277CC0898];
    *(v13 + 3) = *MEMORY[0x277CC0898];
    v30 = *(v28 + 16);
    *(v13 + 8) = v30;
    *(v13 + 232) = v29;
    *(v13 + 31) = v30;
    if (controller)
    {
      v31 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v13 + 1) = v31;
      if (!v31 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderer initWithUniqueID:clientName:UIController:useCALayerForMirroring:];
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke;
    aBlock[3] = &unk_278C626E8;
    v37 = v13;
    v32 = _Block_copy(aBlock);
    if (pthread_main_np())
    {
      v32[2](v32);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke_2;
      block[3] = &unk_278C62878;
      v35 = v32;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }

  return v13;
}

uint64_t __86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[20] == 1 && [v2 _receiverSupportsMirroring])
  {
    v3 = [MEMORY[0x277CD9ED0] layer];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    [*(*(a1 + 32) + 88) setName:@"APRKStreamRendererMirroringLayer"];
    [*(*(a1 + 32) + 88) setDelegate:?];
  }

  v6 = [MEMORY[0x277CD9ED0] layer];
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  *(v7 + 96) = v6;

  v9 = *(*(a1 + 32) + 96);

  return [v9 setName:@"APRKHUDLayer"];
}

- (unsigned)screenSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__APRKStreamRenderer_screenSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)audioSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__APRKStreamRenderer_audioSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)videoSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__APRKStreamRenderer_videoSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)currentVideoSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__APRKStreamRenderer_currentVideoSessionID__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__APRKStreamRenderer_isActive__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__APRKStreamRenderer_isActive__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[8] || v1[10] || v1[9] != 0;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)setDeferLayerRendering:(BOOL)rendering
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__APRKStreamRenderer_setDeferLayerRendering___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  renderingCopy = rendering;
  dispatch_async(rendererStateUpdateQueue, v4);
}

- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__APRKStreamRenderer_setSessionReceiverAddress___block_invoke;
  v4[3] = &unk_278C62A70;
  v4[4] = self;
  v4[5] = address;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

void __48__APRKStreamRenderer_setSessionReceiverAddress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 264);
  *(v2 + 264) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__APRKStreamRenderer_setReceiverNetworkClock___block_invoke;
  v4[3] = &unk_278C62A70;
  v4[4] = self;
  v4[5] = clock;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

void __46__APRKStreamRenderer_setReceiverNetworkClock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  *(v2 + 272) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setEnsembleInfo:(id)info
{
  infoCopy = info;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__APRKStreamRenderer_setEnsembleInfo___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(rendererStateUpdateQueue, v7);
}

- (void)setDemoDeviceInfo:(id)info
{
  infoCopy = info;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__APRKStreamRenderer_setDemoDeviceInfo___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(rendererStateUpdateQueue, v7);
}

- (void)processShowPasscodePromptRequest:(id)request
{
  requestCopy = request;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(delegateQueue, v7);
}

void __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_1(v2);
    }

    if (IsAppleInternalBuild() && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_2();
    }

    v5 = [*(a1 + 32) delegate];
    [v5 shouldShowPasscodePromptWithString:*(a1 + 40) forRenderer:*(a1 + 32)];
  }
}

- (void)processHidePasscodePromptRequest
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke_cold_1(v1);
    }

    v4 = [*v1 delegate];
    [v4 shouldHidePasscodePromptForRenderer:*v1];
  }
}

- (void)processStartScreenPresentationWithSessionID:(unsigned int)d
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke;
  v4[3] = &unk_278C62940;
  v4[4] = self;
  dCopy = d;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

uint64_t __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v2 = v4;
  if (v4[20] == 1 && [v2 _receiverSupportsMirroring])
  {
    v5 = +[APRKStreamRenderingManager sharedInstance];
    v6 = [v5 shouldForwardLayers];

    if (v6)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_cold_2();
      }
    }

    else
    {
      v7 = *v3;
      v8 = *(*v3 + 17);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = v7;
      dispatch_async(v8, block);
    }
  }

  ++*(*v3 + 8);
  return [*v3 _updateStreamingMode];
}

void __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_3;
  block[3] = &unk_278C626E8;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _ensureFigVideoQueue];
  if (result)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90)
    {
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

- (BOOL)processStopScreenPresentationWithSessionID:(unsigned int)d
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_sync(rendererStateUpdateQueue, block);
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_2;
  v7[3] = &unk_278C626E8;
  v7[4] = self;
  dispatch_sync(rendererVideoBufferQueue, v7);
  [(APRKStreamRenderer *)self _updateStreamingMode];
  return 1;
}

uint64_t __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _unregisterForFigVideoQueueNotifications];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v4 = *(a1 + 32);
  if (v4[28])
  {
    CFRelease(v4[28]);
    *(*(a1 + 32) + 224) = 0;
    v4 = *(a1 + 32);
  }

  return [(CFTypeRef *)v4 _performStopRecording];
}

void __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_3(uint64_t a1)
{
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  if (CMBaseObject)
  {
    v3 = CMBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

- (void)processStartVideoPlaybackRequestWithWithSessionID:(unsigned int)d version:(unint64_t)version
{
  v5 = *&d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke;
  block[3] = &unk_278C62AB8;
  dCopy = d;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(rendererStateUpdateQueue, block);
  if (*(v18 + 24) == 1)
  {
    [(APRKStreamRenderer *)self processStopVideoPlaybackRequestWithSessionID:self->_currentVideoSessionID];
  }

  v8 = self->_rendererStateUpdateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2;
  v9[3] = &unk_278C62AE0;
  v10 = v5;
  v9[5] = &v13;
  v9[6] = version;
  v9[4] = self;
  dispatch_sync(v8, v9);
  if (*(v14 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _ensureInternalPlayerFor:v5];
  }

  if (self->_receiverNetworkClock)
  {
    [(APRKMediaPlayer *)self->_player setReceiverNetworkClock:?];
  }

  [(APRKStreamRenderer *)self _updateStreamingMode];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 44))
  {
    v1 = result;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2_cold_1();
    }
  }

  *(*(v1 + 32) + 304) = *(v1 + 48);
  ++*(*(v1 + 32) + 36);
  *(*(v1 + 32) + 44) = *(v1 + 56);
  if (*(*(v1 + 32) + 304) == 2)
  {
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)processStopVideoPlaybackRequestWithSessionID:(unsigned int)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__APRKStreamRenderer_processStopVideoPlaybackRequestWithSessionID___block_invoke;
  v7[3] = &unk_278C62B08;
  dCopy = d;
  v7[4] = self;
  v7[5] = &v13;
  v7[6] = &v9;
  dispatch_sync(rendererStateUpdateQueue, v7);
  if (*(v14 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _cleanupInternalPlayer];
  }

  if (*(v10 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _updateStreamingMode];
    v5 = *(v10 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5 & 1;
}

uint64_t __67__APRKStreamRenderer_processStopVideoPlaybackRequestWithSessionID___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 44) == *(result + 56))
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), v2 = v1[4], result))
      {
        result = LogPrintF();
        v2 = v1[4];
      }
    }

    if (*(v2 + 304) == 2)
    {
      *(*(v1[5] + 8) + 24) = 1;
      v2 = v1[4];
    }

    *(v2 + 304) = 0;
    --*(v1[4] + 36);
    *(v1[4] + 44) = 0;
    *(*(v1[6] + 8) + 24) = 1;
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (void)processStartAudioSessionRequestWithSessionID:(unsigned int)d isScreenAudio:(BOOL)audio
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke;
  v5[3] = &unk_278C62B30;
  v5[4] = self;
  dCopy = d;
  audioCopy = audio;
  dispatch_async(rendererStateUpdateQueue, v5);
}

uint64_t __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_cold_1();
  }

  if (*(a1 + 44) == 1)
  {
    v2 = +[APRKStreamRenderingManager sharedInstance];
    v3 = [v2 optimizeAudioRenderingLatency];

    if (v3)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_cold_2();
      }
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 144);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = v4;
      dispatch_sync(v5, block);
    }
  }

  ++*(*(a1 + 32) + 40);
  return [*(a1 + 32) _updateStreamingMode];
}

uint64_t __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 23) = 1;
  v2 = objc_alloc_init(MEMORY[0x277CE6608]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CE6620]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);

  return [v9 addRenderer:v10];
}

- (BOOL)processStopAudioSessionRequestWithSessionID:(unsigned int)d
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke;
  v5[3] = &unk_278C62940;
  v5[4] = self;
  dCopy = d;
  dispatch_async(rendererStateUpdateQueue, v5);
  return 1;
}

uint64_t __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_2;
  block[3] = &unk_278C626E8;
  block[4] = v2;
  dispatch_sync(v3, block);
  --*(*(a1 + 32) + 40);
  return [*(a1 + 32) _updateStreamingMode];
}

void __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  v12 = *MEMORY[0x277CC0898];
  v11 = v12;
  v13 = *(MEMORY[0x277CC0898] + 16);
  v5 = v13;
  [v3 removeRenderer:v4 atTime:&v12 completionHandler:&__block_literal_global_77];
  *(*(a1 + 32) + 23) = 0;
  v6 = *(a1 + 32);
  *(v6 + 48) = v11;
  *(v6 + 64) = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = 0;
}

void __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_3()
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_3_cold_1();
  }
}

- (BOOL)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke;
  block[3] = &unk_278C62B78;
  block[5] = &v7;
  block[6] = buffer;
  block[4] = self;
  dispatch_sync(rendererVideoBufferQueue, block);
  v4 = *(v8 + 6) == 0;
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 videoStreamIsCleared:*(a1 + 40) forRenderer:*(a1 + 32)];
  }
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 videoLayerOrientationDidChangeTo:*(a1 + 40) forRenderer:*(a1 + 32)];
  }
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_5;
  block[3] = &unk_278C626E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 videoLayerSizeDidChangeTo:*(*(a1 + 32) + 168) forRenderer:*(*(a1 + 32) + 176)];
    }
  }
}

uint64_t __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [*(*(a1 + 32) + 88) layoutSublayers];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (BOOL)processAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (buffer)
  {
    CFRetain(buffer);
  }

  rendererAudioBufferQueue = self->_rendererAudioBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processAudioSampleBuffer___block_invoke;
  block[3] = &unk_278C62BA0;
  block[5] = &v9;
  block[6] = buffer;
  block[4] = self;
  dispatch_sync(rendererAudioBufferQueue, block);
  if (buffer)
  {
    CFRelease(buffer);
  }

  v6 = *(v10 + 6) == 0;
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_registerForFigVideoQueueNotifications
{
  if (self->_figVideoQueue)
  {
    if (!self->_figVideoQueueNotifObserver)
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke;
      v10 = &unk_278C62BC8;
      objc_copyWeak(&v11, &location);
      v3 = _Block_copy(&v7);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v5 = [defaultCenter addObserverForName:*MEMORY[0x277CD64E0] object:self->_figVideoQueue queue:0 usingBlock:v3];
      figVideoQueueNotifObserver = self->_figVideoQueueNotifObserver;
      self->_figVideoQueueNotifObserver = v5;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke_cold_1();
  }

  [WeakRetained _performUIControllerActionWithBlock:&__block_literal_global_97];
}

- (void)_unregisterForFigVideoQueueNotifications
{
  if (self->_figVideoQueueNotifObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_figVideoQueueNotifObserver];

    figVideoQueueNotifObserver = self->_figVideoQueueNotifObserver;
    self->_figVideoQueueNotifObserver = 0;
  }
}

- (void)_ensureInternalPlayerFor:(int)for
{
  if (!self->_player)
  {
    v5 = [[APRKMediaPlayer alloc] initWithP2PWiFiSupport:self->_isP2PWiFiSession isInterstitialPlayer:0 playerSessionID:*&for];
    player = self->_player;
    self->_player = v5;

    [(APRKMediaPlayer *)self->_player addObserver:self forKeyPath:@"currentItemMetadata" options:1 context:APRKMediaPlayerContext];
    [(APRKMediaPlayer *)self->_player setMessagingDelegate:self];
    v7 = self->_player;
    sessionReceiverAddr = self->_sessionReceiverAddr;

    [(APRKMediaPlayer *)v7 setSessionReceiverAddress:sessionReceiverAddr];
  }
}

- (void)_cleanupInternalPlayer
{
  v3 = self->_player;
  player = self->_player;
  self->_player = 0;

  [(APRKMediaPlayer *)v3 removeObserver:self forKeyPath:@"currentItemMetadata"];
  [(APRKMediaPlayer *)v3 setMessagingDelegate:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__APRKStreamRenderer__cleanupInternalPlayer__block_invoke;
  v6[3] = &unk_278C626E8;
  v7 = v3;
  v5 = v3;
  [(APRKMediaPlayer *)v5 stopWithCompletionBlock:v6];
}

- (int)_enqueueSampleBufferForRecording:(opaqueCMSampleBuffer *)recording isAudioSBuf:(BOOL)buf
{
  if (recording)
  {
    CFRetain(recording);
  }

  if (!buf)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(recording);
    Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
    v9 = Dimensions;
    v10 = HIDWORD(Dimensions);
    if (*&self->_lastVideoSampleBufferSize == Dimensions)
    {
      recorderNeedsKeyFrame = self->_recorderNeedsKeyFrame;
      self->_lastVideoSampleBufferSize = Dimensions;
      if (!recorderNeedsKeyFrame)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        v20 = v9;
        v21 = v10;
        width = self->_presentationVideoSize.width;
        v19 = width;
        LogPrintF();
      }

      [(APRKStreamRenderer *)self _performStopRecording:width];
      self->_recorderNeedsKeyFrame = 1;
      self->_lastVideoSampleBufferSize.width = v9;
      self->_lastVideoSampleBufferSize.height = v10;
    }

    self->_recorderNeedsKeyFrame = ![(APRKStreamRenderer *)self _sampleBufferRepresentsKeyFrame:recording];
  }

LABEL_13:
  if (!self->_recorder && !self->_recorderNeedsKeyFrame)
  {
    dispatch_source_cancel(self->_recorderKeyFrameTimer);
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderer _enqueueSampleBufferForRecording:isAudioSBuf:];
    }

    v12 = objc_alloc_init(APRKStreamRecorder);
    recorder = self->_recorder;
    self->_recorder = v12;

    v14 = [(APRKStreamRecorder *)self->_recorder startRecordingAtURL:self->_currentRecordingURL];
    if (v14)
    {
      v16 = v14;
      [(APRKStreamRenderer *)v14 _enqueueSampleBufferForRecording:v22 isAudioSBuf:?];
      if (!recording)
      {
        return v16;
      }

      goto LABEL_24;
    }
  }

  if (!self->_recorderNeedsKeyFrame)
  {
    v15 = self->_recorder;
    if (buf)
    {
      [(APRKStreamRecorder *)v15 recordAudioSampleBuffer:recording];
    }

    else
    {
      [(APRKStreamRecorder *)v15 recordVideoSampleBuffer:recording];
    }
  }

  v16 = 0;
  if (recording)
  {
LABEL_24:
    CFRelease(recording);
  }

  return v16;
}

void __67__APRKStreamRenderer__enqueueSampleBufferForRecording_isAudioSBuf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 recordingSessionDidFailForRenderer:*(a1 + 32)];
  }
}

- (BOOL)_sampleBufferRepresentsKeyFrame:(opaqueCMSampleBuffer *)frame
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(frame, 0);
  if (!SampleAttachmentsArray)
  {
    return 1;
  }

  v4 = SampleAttachmentsArray;
  Count = CFArrayGetCount(SampleAttachmentsArray);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    CFArrayGetValueAtIndex(v4, v7);
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      break;
    }
  }

  while (v6 != v7++);
  return 1;
}

- (BOOL)_performStartRecordingWithOutputURL:(id)l
{
  lCopy = l;
  if (self->_recorder)
  {
    [(APRKStreamRenderer *)self _performStopRecording];
  }

  currentRecordingURL = self->_currentRecordingURL;
  self->_currentRecordingURL = lCopy;
  v6 = lCopy;

  self->_recorderNeedsKeyFrame = 1;
  self->_shouldRecordFrames = 1;
  [(APRKStreamRenderer *)self _cleanupPreviousRecordingIfExisting];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer _performStartRecordingWithOutputURL:];
  }

  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_116];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_rendererVideoBufferQueue);
  recorderKeyFrameTimer = self->_recorderKeyFrameTimer;
  self->_recorderKeyFrameTimer = v7;

  v9 = self->_recorderKeyFrameTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2;
  handler[3] = &unk_278C626E8;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  v10 = self->_recorderKeyFrameTimer;
  v11 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  dispatch_resume(self->_recorderKeyFrameTimer);
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_119];

  return 1;
}

void __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 288) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2_cold_1();
    }

    [*(a1 + 32) _performStopRecording];
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_3;
    block[3] = &unk_278C626E8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 recordingSessionDidFailForRenderer:*(a1 + 32)];
  }
}

- (BOOL)_performStopRecording
{
  if (self->_recorder)
  {
    dispatch_source_cancel(self->_recorderKeyFrameTimer);
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_122];
    currentRecordingURL = self->_currentRecordingURL;
    self->_currentRecordingURL = 0;

    self->_recorderNeedsKeyFrame = 0;
    self->_shouldRecordFrames = 0;
    finalizeRecording = [(APRKStreamRecorder *)self->_recorder finalizeRecording];
    recorder = self->_recorder;
    self->_recorder = 0;

    return !finalizeRecording;
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderer _performStopRecording];
    }

    return 1;
  }
}

- (void)_cleanupPreviousRecordingIfExisting
{
  v10 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_currentRecordingURL path];
  v5 = [defaultManager fileExistsAtPath:path isDirectory:&v10];

  v6 = 0;
  if ((v10 & 1) == 0)
  {
    if (v5)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path2 = [(NSURL *)self->_currentRecordingURL path];
      v9 = 0;
      [defaultManager2 removeItemAtPath:path2 error:&v9];
      v6 = v9;

      if (v6)
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKStreamRenderer _cleanupPreviousRecordingIfExisting];
        }
      }
    }
  }
}

- (void)_updateStreamingMode
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__APRKStreamRenderer__updateStreamingMode__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(rendererStateUpdateQueue, block);
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 36))
  {
    v3 = 4;
  }

  else if (*(v2 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (*(v2 + 40) != 0);
  }

  v4 = *(v2 + 376);
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v4 != v3)
  {
    *(*(a1 + 32) + 376) = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2;
    block[3] = &unk_278C62A70;
    block[4] = v5;
    block[5] = v3;
    dispatch_async(v6, block);
  }
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 didChangeStreamRendererModeTo:*(a1 + 40) forRenderer:*(a1 + 32)];
  }
}

- (BOOL)_receiverSupportsMirroring
{
  v2 = +[APRKStreamRenderingManager sharedInstance];
  supportedModesMask = [v2 supportedModesMask];

  return supportedModesMask & 1;
}

- (void)_performUIControllerActionWithBlock:(id)block
{
  blockCopy = block;
  if (self->_backingUIControllerWeakRef)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (blockCopy)
      {
        blockCopy[2]();
      }

      CFRelease(v5);
    }

    else
    {
      [APRKStreamRenderer _performUIControllerActionWithBlock:];
    }
  }

  else
  {
    [APRKStreamRenderer _performUIControllerActionWithBlock:];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (VideoRenderingLayerContext == context)
  {
    if (![pathCopy isEqualToString:@"bounds"])
    {
      goto LABEL_8;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v17[3] = &unk_278C626E8;
    v17[4] = self;
    delegateQueue = MEMORY[0x277D85CD0];
    v14 = v17;
LABEL_7:
    dispatch_async(delegateQueue, v14);
    goto LABEL_8;
  }

  if (APRKMediaPlayerContext == context)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    block[3] = &unk_278C626E8;
    block[4] = self;
    v14 = block;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = APRKStreamRenderer;
  [(APRKStreamRenderer *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_8:
}

void __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 368));
    v4 = [*(*(a1 + 32) + 112) currentItemMetadata];
    [v5 didUpdateMetadata:v4 forRenderer:*(a1 + 32)];
  }
}

- (void)mediaPlayer:(id)player wantsToSendUpstreamMessageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__APRKStreamRenderer_mediaPlayer_wantsToSendUpstreamMessageWithDictionary___block_invoke;
  v7[3] = &unk_278C62BF0;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v7];
}

- (void)mediaPlayer:(id)player didGenerateFPSSecureStopRecordPayload:(id)payload
{
  payloadCopy = payload;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__APRKStreamRenderer_mediaPlayer_didGenerateFPSSecureStopRecordPayload___block_invoke;
  v7[3] = &unk_278C62BF0;
  v8 = payloadCopy;
  v6 = payloadCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v7];
}

- (void)mediaPlayerNeedsTLSInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__APRKStreamRenderer_mediaPlayerNeedsTLSInfo___block_invoke;
  v6[3] = &unk_278C62BF0;
  v7 = infoCopy;
  v5 = infoCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v6];
}

void __46__APRKStreamRenderer_mediaPlayerNeedsTLSInfo___block_invoke(uint64_t a1)
{
  v2 = UIControllerCopyTLSInfo();
  [*(a1 + 32) processTLSInfoDictionary:v2];
}

- (void)mediaPlayer:(id)player wantsToPostNotification:(id)notification withPayload:(id)payload
{
  notificationCopy = notification;
  payloadCopy = payload;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__APRKStreamRenderer_mediaPlayer_wantsToPostNotification_withPayload___block_invoke;
  v11[3] = &unk_278C62A48;
  v12 = notificationCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = notificationCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v11];
}

uint64_t __70__APRKStreamRenderer_mediaPlayer_wantsToPostNotification_withPayload___block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

- (void)processSenderUIEvent:(id)event
{
  eventCopy = event;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__APRKStreamRenderer_processSenderUIEvent___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(delegateQueue, v7);
}

void __43__APRKStreamRenderer_processSenderUIEvent___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __43__APRKStreamRenderer_processSenderUIEvent___block_invoke_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 handleSenderUIEvent:*(a1 + 40) forRenderer:*(a1 + 32)];
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  if (self->_presentationVideoSize.width != *MEMORY[0x277CBF3A8] || self->_presentationVideoSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v46 = v7;
    v47 = v6;
    v48 = v5;
    v49 = v3;
    v50 = v4;
    v15 = MEMORY[0x277CD9FF0];
    layerCopy = layer;
    [v15 begin];
    v17 = 1;
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [layerCopy bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    width = self->_presentationVideoSize.width;
    currentTransform = self->_currentTransform;
    if (currentTransform == 7 || currentTransform == 4)
    {
      v17 = 0;
      height = self->_presentationVideoSize.height;
    }

    else
    {
      height = self->_presentationVideoSize.width;
      width = self->_presentationVideoSize.height;
    }

    v51.origin.x = v19;
    v51.origin.y = v21;
    v51.size.width = v23;
    v51.size.height = v25;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = v19;
    v52.origin.y = v21;
    v52.size.width = v23;
    v52.size.height = v25;
    MidY = CGRectGetMidY(v52);
    memset(&v40, 0, sizeof(v40));
    CATransform3DMakeTranslation(&v40, (v23 - height) * 0.5, (v25 - width) * 0.5, 0.0);
    v29 = fmax(v23 / height, v25 / width);
    v30 = fmin(v23 / height, v25 / width);
    memset(&v39.m21, 0, 96);
    if (!v17)
    {
      v30 = v29;
    }

    memset(&v39, 0, 32);
    CATransform3DMakeScale(&v39, v30, v30, 1.0);
    memset(&v38, 0, sizeof(v38));
    a = v40;
    b = v39;
    CATransform3DConcat(&v38, &a, &b);
    mirroringLayer = [(APRKStreamRenderer *)self mirroringLayer];
    a = v38;
    [mirroringLayer setSublayerTransform:&a];

    mirroringLayer2 = [(APRKStreamRenderer *)self mirroringLayer];
    [mirroringLayer2 setPosition:{MidX, MidY}];

    mirroringLayer3 = [(APRKStreamRenderer *)self mirroringLayer];
    [mirroringLayer3 setBounds:{v19, v21, v23, v25}];

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (APRKStreamRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke(uint64_t a1)
{
  valuePtr[0] = 0;
  v2 = *(a1 + 48);
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
LABEL_61:
    APSLogErrorAt();
    goto LABEL_49;
  }

  CFRetain(v2);
  v3 = *(a1 + 32);
  CMSampleBufferGetOutputPresentationTimeStamp(&v49, *(a1 + 48));
  *(v3 + 232) = v49;
  if (*(*(a1 + 32) + 25))
  {
    goto LABEL_49;
  }

  v4 = *MEMORY[0x277CBED28];
  v5 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC06D8], 0);
  v6 = v4 == v5;
  v7 = *(a1 + 32);
  if (*(v7 + 27) != v6)
  {
    *(v7 + 27) = v6;
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_2;
    block[3] = &unk_278C62A00;
    block[4] = v8;
    v48 = v4 == v5;
    dispatch_async(v9, block);
  }

  if (v4 == v5)
  {
    v24 = *MEMORY[0x277CBF3A8];
    v25 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_26;
  }

  v10 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC1AB8], 0);
  if (!v10 || (v11 = v10, v12 = CFGetTypeID(v10), v12 != CFDictionaryGetTypeID()) || !CGRectMakeWithDictionaryRepresentation(v11, (*(a1 + 32) + 192)) || (v13 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC1AC0], 0)) == 0 || (v14 = v13, v15 = CFGetTypeID(v13), v15 != CFNumberGetTypeID()))
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_61;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr);
  FormatDescription = CMSampleBufferGetFormatDescription(*(a1 + 48));
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v18 = Dimensions;
  v19 = HIDWORD(Dimensions);
  v20 = valuePtr[0];
  v21 = *(a1 + 32);
  if (valuePtr[0] != *(v21 + 260) || *(v21 + 29) == 1)
  {
    *(v21 + 29) = 0;
    *(*(a1 + 32) + 260) = v20;
    v22 = *(a1 + 32);
    v23 = *(v22 + 160);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_3;
    v45[3] = &unk_278C62940;
    v45[4] = v22;
    v46 = v20;
    dispatch_async(v23, v45);
    v21 = *(a1 + 32);
  }

  v24 = v18;
  v25 = v19;
  if (*(v21 + 344) == 1)
  {
    *(v21 + 256) = valuePtr[0];
    v26 = [*(a1 + 32) _isRotatedTransform:*(*(a1 + 32) + 256)];
    if (v26)
    {
      v27 = v19;
    }

    else
    {
      v27 = v18;
    }

    if (v26)
    {
      v25 = v18;
    }

    v21 = *(a1 + 32);
    v24 = v27;
  }

  v28 = *(v21 + 224);
  *(v21 + 224) = FormatDescription;
  if (FormatDescription)
  {
    CFRetain(FormatDescription);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_26:
  v29 = *(a1 + 32);
  if (*(v29 + 24) == 1)
  {
    if (![v29 _sampleBufferRepresentsKeyFrame:*(a1 + 48)])
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_1();
      }

      goto LABEL_38;
    }

    *(*(a1 + 32) + 24) = 0;
    v29 = *(a1 + 32);
  }

  if (*(v29 + 88) && (*(v29 + 21) & 1) == 0)
  {
    [v29 _enqueueVideoFrameForRendering:*(a1 + 48)];
    OUTLINED_FUNCTION_2_0();
    *(v31 + 24) = v30;
    v29 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v29 + 320));
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    v34 = objc_loadWeakRetained((*(a1 + 32) + 320));
    [v34 renderer:*(a1 + 32) didOutputVideoSampleBuffer:*(a1 + 48)];
  }

LABEL_38:
  v35 = *(a1 + 32);
  if (v4 != v5 && (*(v35 + 22) & 1) != 0)
  {
    [v35 _enqueueSampleBufferForRecording:*(a1 + 48) isAudioSBuf:0];
    v35 = *(a1 + 32);
  }

  if (v24 != *(v35 + 168) || v25 != *(v35 + 176))
  {
    *(v35 + 168) = v24;
    *(v35 + 176) = v25;
    v37 = *(*(a1 + 32) + 128);
    if (v37)
    {
      v38 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v38)
      {
        v38(v37, 1);
      }
    }

    v39 = *(a1 + 32);
    v40 = *(v39 + 160);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_4;
    v43[3] = &unk_278C62A00;
    v43[4] = v39;
    v44 = v6;
    dispatch_async(v40, v43);
  }

LABEL_49:
  OUTLINED_FUNCTION_2_0();
  if (!*(v41 + 24) || gLogCategory_AirPlayReceiverKit > 90)
  {
    goto LABEL_54;
  }

  if (gLogCategory_AirPlayReceiverKit != -1)
  {
    goto LABEL_52;
  }

  if (_LogCategory_Initialize())
  {
    OUTLINED_FUNCTION_2_0();
LABEL_52:
    LogPrintF();
  }

LABEL_54:
  v42 = *(a1 + 48);
  if (v42)
  {
    CFRelease(v42);
  }
}

void __47__APRKStreamRenderer_processAudioSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 23) == 1 && (*(v2 + 26) & 1) == 0)
  {
    if ((*(v2 + 60) & 1) == 0)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&v14, *(a1 + 48));
      *(v2 + 48) = v14;
      v3 = *(*(a1 + 32) + 72);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v14, HostTimeClock);
      LODWORD(v5) = 1.0;
      [v3 setRate:&v14 time:v5];
      v2 = *(a1 + 32);
    }

    v6 = [*(v2 + 80) isReadyForMoreMediaData];
    v7 = *(*(a1 + 32) + 80);
    if (v6)
    {
      [v7 enqueueSampleBuffer:*(a1 + 48)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained((*(a1 + 32) + 320));
        [v10 renderer:*(a1 + 32) didOutputAudioSampleBuffer:*(a1 + 48)];
      }

      v11 = *(a1 + 32);
      if (v11[22] == 1)
      {
        [v11 _enqueueSampleBufferForRecording:*(a1 + 48) isAudioSBuf:1];
      }
    }

    else if ([v7 status] == 2)
    {
      OUTLINED_FUNCTION_2_0();
      *(v13 + 24) = -6762;
      OUTLINED_FUNCTION_2_0();
      APSLogErrorAt();
    }
  }

  OUTLINED_FUNCTION_2_0();
  if (*(v12 + 24) && gLogCategory_AirPlayReceiverKit <= 90)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
LABEL_15:
      OUTLINED_FUNCTION_8();
      return;
    }

    if (OUTLINED_FUNCTION_7_0())
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_15;
    }
  }
}

- (signed)_ensureFigVideoQueue
{
  cf = 0;
  timebaseOut = 0;
  p_figVideoQueue = &self->_figVideoQueue;
  if (self->_figVideoQueue)
  {
    v18 = 0;
  }

  else
  {
    v4 = FigVideoQueueCreate();
    if (v4)
    {
      v18 = v4;
    }

    else
    {
      [(APRKStreamRenderer *)self _registerForFigVideoQueueNotifications];
      HostTimeClock = CMClockGetHostTimeClock();
      v6 = CMTimebaseCreateWithSourceClock(0, HostTimeClock, &timebaseOut);
      if (v6)
      {
        v18 = v6;
      }

      else
      {
        v7 = CMTimebaseSetRate(timebaseOut, 1.0);
        if (v7)
        {
          v18 = v7;
        }

        else
        {
          v8 = timebaseOut;
          v9 = CMClockGetHostTimeClock();
          CMClockGetTime(&time, v9);
          v10 = CMTimebaseSetTime(v8, &time);
          if (v10)
          {
            v18 = v10;
          }

          else
          {
            OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
            if (OnlyTimebase)
            {
              v18 = OnlyTimebase;
            }

            else
            {
              CMBaseObject = FigVideoQueueGetCMBaseObject();
              v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v13)
              {
                v14 = v13(CMBaseObject, *MEMORY[0x277CD64E8], *MEMORY[0x277CBED10]);
                if (v14)
                {
                  v18 = v14;
                }

                else
                {
                  v15 = FigVideoQueueSetProperty(*p_figVideoQueue, *MEMORY[0x277CD64F0], cf);
                  if (v15)
                  {
                    v18 = v15;
                  }

                  else
                  {
                    v16 = FigVideoQueueSetProperty(self->_figVideoQueue, *MEMORY[0x277CD6508], self->_mirroringLayer);
                    if (v16)
                    {
                      v18 = v16;
                    }

                    else
                    {
                      v17 = FigVideoQueueSetProperty(*p_figVideoQueue, *MEMORY[0x277CD6510], *MEMORY[0x277CBED28]);
                      if (v17)
                      {
                        v18 = v17;
                      }

                      else
                      {
                        v18 = FigVideoQueueStart(*p_figVideoQueue);
                        if (!v18)
                        {
                          goto LABEL_16;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v18 = -12782;
              }
            }
          }
        }
      }
    }

    APSLogErrorAt();
  }

LABEL_16:
  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0()))
  {
    OUTLINED_FUNCTION_8();
  }

  return v18;
}

- (int)_enqueueVideoFrameForRendering:(opaqueCMSampleBuffer *)rendering
{
  renderingCopy = rendering;
  if (!rendering)
  {
    if (!self->_figVideoQueue)
    {
      goto LABEL_22;
    }

    formatDesc = self->_formatDesc;
    if (!formatDesc)
    {
      goto LABEL_22;
    }

    sampleTimingArray.presentationTimeStamp = self->_lastPTS;
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
    *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
    sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
    v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, formatDesc, 0, 1, &sampleTimingArray, 0, 0, &renderingCopy);
    if (v7)
    {
      v14 = v7;
LABEL_12:
      APSLogErrorAt();
      goto LABEL_13;
    }

    figVideoQueue = self->_figVideoQueue;
    renderingCopy2 = renderingCopy;
LABEL_8:
    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    transform = self->_transform;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      v14 = v13(figVideoQueue, renderingCopy2, transform, x, y, width, height, x, y, width, height);
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = -12782;
    }

    goto LABEL_12;
  }

  renderingCopy2 = rendering;
  CFRetain(rendering);
  figVideoQueue = self->_figVideoQueue;
  if (figVideoQueue)
  {
    goto LABEL_8;
  }

LABEL_22:
  v14 = 0;
LABEL_13:
  if (renderingCopy)
  {
    CFRelease(renderingCopy);
  }

  if (v14)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0()))
    {
      OUTLINED_FUNCTION_8();
    }

    self->_isMirroringVideoStreamPaused = 1;
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:&__block_literal_global_107];
  }

  return v14;
}

void __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
}

void __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
}

- (void)_enqueueSampleBufferForRecording:(void *)a3 isAudioSBuf:.cold.2(uint64_t a1, void *a2, void *a3)
{
  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0()))
  {
    v7 = a1;
    OUTLINED_FUNCTION_8();
  }

  [a2 _performStopRecording];
  v6 = a2[20];
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __67__APRKStreamRenderer__enqueueSampleBufferForRecording_isAudioSBuf___block_invoke;
  a3[3] = &unk_278C626E8;
  a3[4] = a2;
  dispatch_async(v6, a3);
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2_cold_1(id *a1)
{
  v1 = [*a1 delegate];
  OUTLINED_FUNCTION_7();
}

- (uint64_t)_performUIControllerActionWithBlock:.cold.1()
{
  if (gLogCategory_AirPlayReceiverKit <= 60)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_performUIControllerActionWithBlock:.cold.2()
{
  if (gLogCategory_AirPlayReceiverKit <= 60)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  OUTLINED_FUNCTION_7();
}

void __43__APRKStreamRenderer_processSenderUIEvent___block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  LogPrintF();
}

@end