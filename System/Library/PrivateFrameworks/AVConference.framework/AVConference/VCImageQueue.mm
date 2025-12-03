@interface VCImageQueue
+ (id)drawingContext;
+ (void)drawingContext;
- (BOOL)createAllocators;
- (BOOL)setUpImageQueueForFigVideoTargetWithTagCollection:(OpaqueCMTagCollection *)collection withDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config;
- (BOOL)setupDataQueueForFigVideoTargetWithTagCollection:(OpaqueCMTagCollection *)collection withDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config;
- (BOOL)setupDefaultImageQueueForFigVideoTargetWithDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config;
- (BOOL)setupQueuesAndDataChannelConfigForFigVideoTarget;
- (BOOL)setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config;
- (NSString)description;
- (VCImageQueue)initWithFrameRate:(unsigned __int8)rate imageQueueProtected:(BOOL)protected vcImageQueueConfig:(const tagVCImageQueueConfig *)config;
- (VCStreamOutput)streamOutput;
- (int64_t)streamToken;
- (unsigned)createCAContextWithSize:(CGRect)size;
- (unsigned)setVideoDestination:(id)destination;
- (void)cleanupCAContextAndCALayer;
- (void)cleanupFigEndpointVideoTargetAndQueues;
- (void)cleanupVideoTargetQueues;
- (void)configureCALayerWithRect:(CGRect)rect name:(id)name;
- (void)createAllocators;
- (void)createAndCopyLatencyStatsDictionary:(const __CFDictionary *)dictionary;
- (void)createAndCopyPerformanceDictionary:(const __CFDictionary *)dictionary;
- (void)createSlotAndConnectCAQueue;
- (void)dealloc;
- (void)getQueueRepresentation:(void *)representation;
- (void)pause;
- (void)releaseAllocators;
- (void)releaseSlot;
- (void)setEndpointID:(id)d;
- (void)setHostTimeTimebaseOnFigDataQueue:(OpaqueFigDataQueue *)queue;
- (void)setHostTimeTimebaseOnFigImageQueue:(OpaqueFigImageQueue *)queue;
- (void)setImageQueueProtected:(BOOL)protected;
- (void)setStreamOutput:(id)output;
- (void)setStreamToken:(int64_t)token;
- (void)setTransformForRemoteVideoOrientationEnabled:(BOOL)enabled;
- (void)setVideoBufferDescription:(id)description;
- (void)setupQueuesAndDataChannelConfigForFigVideoTarget;
- (void)start;
- (void)stop;
@end

@implementation VCImageQueue

+ (id)drawingContext
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = sContext;
  objc_sync_enter(sContext);
  if (!sContext)
  {
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315650;
        *&v21[4] = v4;
        *&v21[12] = 2080;
        *&v21[14] = "+[VCImageQueue drawingContext]";
        *&v21[22] = 1024;
        *v22 = 150;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d drawingContext sContext is not Null", v21, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[VCImageQueue drawingContext];
    }
  }

  [MEMORY[0x1E6979518] synchronize];
  if (([sContext valid] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315650;
        *&v21[4] = v7;
        *&v21[12] = 2080;
        *&v21[14] = "+[VCImageQueue drawingContext]";
        *&v21[22] = 1024;
        *v22 = 153;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d drawingContext sContext is invalid, getting rid of it since it is probably stale", v21, 0x1Cu);
      }
    }

    [MEMORY[0x1E6979518] begin];

    sContext = 0;
    [MEMORY[0x1E6979518] commit];
  }

  if (!sContext)
  {
LABEL_14:
    [MEMORY[0x1E6979518] begin];
    if (CARenderServerIsRunning())
    {
      sContext = [MEMORY[0x1E6979320] localContext];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            +[VCImageQueue drawingContext];
          }

          goto LABEL_28;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136315650;
          *&v21[4] = v9;
          *&v21[12] = 2080;
          *&v21[14] = "+[VCImageQueue drawingContext]";
          *&v21[22] = 1024;
          *v22 = 170;
          v12 = " [%s] %s:%d drawingContext sContext is now [CAContext localContext]";
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v12, v21, 0x1Cu);
        }
      }
    }

    else
    {
      sContext = [MEMORY[0x1E6979320] remoteContext];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v14 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            +[VCImageQueue drawingContext];
          }

          goto LABEL_28;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136315650;
          *&v21[4] = v13;
          *&v21[12] = 2080;
          *&v21[14] = "+[VCImageQueue drawingContext]";
          *&v21[22] = 1024;
          *v22 = 173;
          v12 = " [%s] %s:%d drawingContext sContext is now [CAContext remoteContext]";
          goto LABEL_23;
        }
      }
    }

LABEL_28:
    if (!sContext && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = sContext;
        IsRunning = CARenderServerIsRunning();
        v19 = "remoteContext";
        *v21 = 136316162;
        *&v21[4] = v15;
        *&v21[12] = 2080;
        *&v21[14] = "+[VCImageQueue drawingContext]";
        if (IsRunning)
        {
          v19 = "localContext";
        }

        *&v21[22] = 1024;
        *v22 = 176;
        *&v22[4] = 2048;
        *&v22[6] = v17;
        v23 = 2080;
        v24 = v19;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d drawingContext sContext=%p type=%s", v21, 0x30u);
      }
    }

    [MEMORY[0x1E6979518] commit];
  }

  [MEMORY[0x1E6979518] flush];
  objc_sync_exit(v3);

  return sContext;
}

- (int64_t)streamToken
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__VCImageQueue_streamToken__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setStreamToken:(int64_t)token
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCImageQueue_setStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = token;
  dispatch_async(stateQueue, block);
}

id __31__VCImageQueue_setStreamToken___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 120);
  if (v2 != result)
  {
    VCOverlayManager_unregisterOverlayForToken(result);

    v4 = *(a1 + 40);
    *(*(a1 + 32) + 120) = v4;
    *(*(a1 + 32) + 144) = VCOverlayManager_registerOverlayForToken(v4);
    v5 = *(*(a1 + 32) + 144);

    return v5;
  }

  return result;
}

- (NSString)description
{
  if (!self->_endpointID)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"VCImageQueue=%p FigImageQueue=%p CAImageQueue=%p slot=%u frameRate=%u imageQueueProtected=%d isLowLatencyEnabled=%d enqueuedFrameCount=%u, transformForRemoteVideoOrientationEnabled=%u", self, self->_figQueue, self->_caQueue, self->_slot, self->_frameRate, self->_imageQueueProtected, self->_isLowLatencyEnabled, self->_enqueuedFrameCount, self->_transformForRemoteVideoOrientationEnabled, v5];
  }

  ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(self, 0);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"VCImageQueue=%p FigEndpointID=%p FigVideoTarget=%p FigImageQueueCh0=%p FigImageQueueCh1=%p frameRate=%u imageQueueProtected=%d isLowLatencyEnabled=%d enqueuedFrameCount=%u, transformForRemoteVideoOrientationEnabled=%u", self, self->_endpointID, self->_videoTarget, ImageQueueAtIndex, _VCImageQueue_GetImageQueueAtIndex(self, 1), self->_frameRate, self->_imageQueueProtected, self->_isLowLatencyEnabled, self->_enqueuedFrameCount, self->_transformForRemoteVideoOrientationEnabled];
}

- (VCImageQueue)initWithFrameRate:(unsigned __int8)rate imageQueueProtected:(BOOL)protected vcImageQueueConfig:(const tagVCImageQueueConfig *)config
{
  protectedCopy = protected;
  rateCopy = rate;
  v67 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = VCImageQueue;
  v8 = [(VCImageQueue *)&v47 init];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCImageQueue-init");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v49 = v11;
      v50 = 2080;
      v51 = "[VCImageQueue initWithFrameRate:imageQueueProtected:vcImageQueueConfig:]";
      v52 = 1024;
      v53 = 268;
      v54 = 2048;
      v55 = v8;
      v56 = 1024;
      *v57 = rateCopy;
      *&v57[4] = 1024;
      *&v57[6] = protectedCopy;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCImageQueue-init (%p) frameRate=%d imageQueueProtected=%d", buf, 0x32u);
    }
  }

  [VCDefaults integerValueForKey:@"caImageQueueCapacity" defaultValue:16];
  v8->_caQueue = CAImageQueueCreate();
  v8->_imageQueueProtected = protectedCopy;
  if (protectedCopy)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v49 = v13;
        v50 = 2080;
        v51 = "[VCImageQueue initWithFrameRate:imageQueueProtected:vcImageQueueConfig:]";
        v52 = 1024;
        v53 = 275;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting kCAImageQueueProtected to CAImageQueue", buf, 0x1Cu);
      }
    }

    CAImageQueueSetFlags();
  }

  CAImageQueueSetFlags();
  v15 = *MEMORY[0x1E695E480];
  FigImageQueueCreateForCoreAnimation();
  pthread_mutex_init(&v8->_enqueueLock, 0);
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v8->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCImageQueue.streamTokenQueue", 0, CustomRootQueue);
  [(VCImageQueue *)v8 setHostTimeTimebaseOnFigImageQueue:v8->_figQueue];
  figQueue = v8->_figQueue;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v18)
  {
    v18(figQueue, 0);
  }

  CAImageQueueSetFlags();
  FigBaseObject = FigImageQueueGetFigBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v20)
  {
    v20(FigBaseObject, *MEMORY[0x1E6971E50], @"None");
  }

  v21 = FigImageQueueGetFigBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {
    v22(v21, *MEMORY[0x1E6971E48], *MEMORY[0x1E695E4D0]);
  }

  [(VCImageQueue *)v8 createAllocators];
  v8->_slot = 0;
  v8->_frameRate = rateCopy;
  v8->_frameCount = 0;
  v23 = MEMORY[0x1E695E9C0];
  v8->_frameCountHistory = CFArrayCreateMutable(v15, 10, MEMORY[0x1E695E9C0]);
  v8->_videoTargetImageQueue = CFArrayCreateMutable(v15, 0, v23);
  if (config && (v8->_isLocalVideo = config->var2, v8->_isExternalCamera = config->var3, var0 = config->var0, v8->_layerHostMode = var0, v8->_cameraFacing = config->var4, var0))
  {
    [(VCImageQueue *)v8 createCAContextWithSize:config->var1.origin.x, config->var1.origin.y, config->var1.size.width, config->var1.size.height];
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    [(VCImageQueue *)v8 createSlotAndConnectCAQueue];
    [MEMORY[0x1E6979518] commit];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCImageQueue-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      caQueue = v8->_caQueue;
      v27 = v8->_figQueue;
      slot = v8->_slot;
      layerHostMode = v8->_layerHostMode;
      isLocalVideo = v8->_isLocalVideo;
      isExternalCamera = v8->_isExternalCamera;
      *buf = 136317442;
      v49 = v25;
      v50 = 2080;
      v51 = "[VCImageQueue initWithFrameRate:imageQueueProtected:vcImageQueueConfig:]";
      v52 = 1024;
      v53 = 322;
      v54 = 2048;
      v55 = v8;
      v56 = 2048;
      *v57 = v27;
      *&v57[8] = 2048;
      v58 = caQueue;
      v59 = 1024;
      v60 = slot;
      v61 = 1024;
      v62 = layerHostMode;
      v63 = 1024;
      v64 = isLocalVideo;
      v65 = 1024;
      v66 = isExternalCamera;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCImageQueue-init VCImageQueue=%p FigImageQueue=%p CAImageQueue=%p, slot=%u, layerHostMode=%d localVideo=%d externalCamera=%d", buf, 0x52u);
    }
  }

  v33 = MEMORY[0x1E69792E8];
  __asm { FMOV            V0.2D, #1.0 }

  v39 = *(MEMORY[0x1E69792E8] + 64);
  v40 = *(MEMORY[0x1E69792E8] + 96);
  v41 = *(MEMORY[0x1E69792E8] + 112);
  *&v8->_transform.m33 = *(MEMORY[0x1E69792E8] + 80);
  *&v8->_transform.m41 = v40;
  *&v8->_transform.m43 = v41;
  v42 = *v33;
  v43 = v33[1];
  v8->_contentsRect.size = _Q0;
  *&v8->_transform.m11 = v42;
  v44 = v33[2];
  v45 = v33[3];
  *&v8->_transform.m13 = v43;
  *&v8->_transform.m21 = v44;
  v8->_contentsRect.origin.x = 0.0;
  v8->_contentsRect.origin.y = 0.0;
  *&v8->_transform.m23 = v45;
  *&v8->_transform.m31 = v39;
  v8->_transformForRemoteVideoOrientationEnabled = 1;
  pthread_cond_init(&v8->_waitForLayoutChangeCondition, 0);
  return v8;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCImageQueue-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCImageQueue dealloc]";
      v17 = 1024;
      v18 = 334;
      v19 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCImageQueue-dealloc (%p)", buf, 0x26u);
    }
  }

  [(VCImageQueue *)self stop];
  caQueue = self->_caQueue;
  if (caQueue)
  {
    CFRelease(caQueue);
    self->_caQueue = 0;
  }

  pthread_cond_destroy(&self->_waitForLayoutChangeCondition);
  figQueue = self->_figQueue;
  if (figQueue)
  {
    CFRelease(figQueue);
    self->_figQueue = 0;
  }

  [(VCImageQueue *)self cleanupFigEndpointVideoTargetAndQueues];
  videoTargetImageQueue = self->_videoTargetImageQueue;
  if (videoTargetImageQueue)
  {
    CFRelease(videoTargetImageQueue);
    self->_videoTargetImageQueue = 0;
  }

  videoBufferDescription = self->_videoBufferDescription;
  if (videoBufferDescription)
  {
    CFRelease(videoBufferDescription);
  }

  pthread_mutex_destroy(&self->_enqueueLock);
  storedAttributes = self->_storedAttributes;
  if (storedAttributes)
  {
    CFRelease(storedAttributes);
    self->_storedAttributes = 0;
  }

  self->_usingRemoteQueue = 0;
  [(VCImageQueue *)self releaseAllocators];
  [MEMORY[0x1E6979518] begin];
  [(VCImageQueue *)self cleanupCAContextAndCALayer];
  [(VCImageQueue *)self releaseSlot];
  [MEMORY[0x1E6979518] commit];
  if (self->_pixelBufferOverlay)
  {
    VCOverlayManager_unregisterOverlayForToken(self->_streamToken);
  }

  frameCountHistory = self->_frameCountHistory;
  if (frameCountHistory)
  {
    CFRelease(frameCountHistory);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v12.receiver = self;
  v12.super_class = VCImageQueue;
  [(VCImageQueue *)&v12 dealloc];
}

- (unsigned)createCAContextWithSize:(CGRect)size
{
  v12[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  if (!self->_caQueue)
  {
    [VCImageQueue createCAContextWithSize:?];
LABEL_16:
    [(VCImageQueue *)self cleanupCAContextAndCALayer];
    [MEMORY[0x1E6979518] commit];
    v9 = 0;
    goto LABEL_10;
  }

  [(VCImageQueue *)self cleanupCAContextAndCALayer];
  if (self->_isLocalVideo)
  {
    v11 = *MEMORY[0x1E69796D0];
    v12[0] = MEMORY[0x1E695E118];
    remoteContext = [MEMORY[0x1E6979320] remoteContextWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }

  else
  {
    remoteContext = [MEMORY[0x1E6979320] remoteContext];
  }

  v5 = remoteContext;
  self->_caContext = v5;
  if (!v5)
  {
    [VCImageQueue createCAContextWithSize:?];
    goto LABEL_16;
  }

  layer = [MEMORY[0x1E6979398] layer];
  self->_caLayer = layer;
  if (!layer)
  {
    [VCImageQueue createCAContextWithSize:?];
    goto LABEL_16;
  }

  [(CAContext *)self->_caContext setLayer:layer];
  createSlot = [(CAContext *)self->_caContext createSlot];
  self->_layerHostSlot = createSlot;
  if (!createSlot)
  {
    [VCImageQueue createCAContextWithSize:?];
    goto LABEL_16;
  }

  [(CAContext *)self->_caContext setObject:self->_caQueue forSlot:createSlot];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VCImageQueueRemoteLayer%p(%d)", self, 0];
  if (!v8)
  {
    [VCImageQueue createCAContextWithSize:?];
    goto LABEL_16;
  }

  v9 = v8;
  [(VCImageQueue *)self createCAContextWithSize:v8, &self->_caContext];
LABEL_10:

  return self->_contextId;
}

- (void)cleanupCAContextAndCALayer
{
  if (self->_layerHostSlot)
  {
    [(CAContext *)self->_caContext deleteSlot:?];
    self->_layerHostSlot = 0;
  }

  caContext = self->_caContext;
  if (caContext)
  {
    [(CAContext *)caContext setLayer:0];
  }

  caLayer = self->_caLayer;
  if (caLayer)
  {
    [(CALayer *)caLayer removeFromSuperlayer];

    self->_caLayer = 0;
  }

  v5 = self->_caContext;
  if (v5)
  {
    [(CAContext *)v5 invalidate];

    self->_caContext = 0;
  }
}

- (void)createSlotAndConnectCAQueue
{
  v3 = +[VCImageQueue drawingContext];
  v4 = v3;
  slot = self->_slot;
  if (!slot)
  {
    slot = [v3 createSlot];
    self->_slot = slot;
  }

  caQueue = self->_caQueue;

  [v4 setObject:caQueue forSlot:slot];
}

- (void)releaseSlot
{
  if (self->_slot)
  {
    [+[VCImageQueue drawingContext](VCImageQueue "drawingContext")];
    self->_slot = 0;
  }
}

- (void)setHostTimeTimebaseOnFigImageQueue:(OpaqueFigImageQueue *)queue
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  timebaseOut[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  if (CMTimebaseCreateWithSourceClock(v3, HostTimeClock, timebaseOut))
  {
    [VCImageQueue setHostTimeTimebaseOnFigImageQueue:];
  }

  else
  {
    if (!timebaseOut[0])
    {
      return;
    }

    timebaseTime = **&MEMORY[0x1E6960CC0];
    v8 = timebaseTime;
    if (CMTimebaseSetRateAndAnchorTime(timebaseOut[0], 1.0, &timebaseTime, &v8))
    {
      [VCImageQueue setHostTimeTimebaseOnFigImageQueue:];
    }

    else
    {
      v5 = timebaseOut[0];
      FigBaseObject = FigImageQueueGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v7 || v7(FigBaseObject, *MEMORY[0x1E6971E40], v5))
      {
        [VCImageQueue setHostTimeTimebaseOnFigImageQueue:];
      }
    }
  }

  if (timebaseOut[0])
  {
    CFRelease(timebaseOut[0]);
  }
}

- (void)setHostTimeTimebaseOnFigDataQueue:(OpaqueFigDataQueue *)queue
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  timebaseOut[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  if (CMTimebaseCreateWithSourceClock(v3, HostTimeClock, timebaseOut))
  {
    [VCImageQueue setHostTimeTimebaseOnFigDataQueue:];
  }

  else if (timebaseOut[0])
  {
    timebaseTime = **&MEMORY[0x1E6960CC0];
    v8 = timebaseTime;
    if (CMTimebaseSetRateAndAnchorTime(timebaseOut[0], 1.0, &timebaseTime, &v8))
    {
      [VCImageQueue setHostTimeTimebaseOnFigDataQueue:];
    }

    else
    {
      v5 = timebaseOut[0];
      CMBaseObject = FigDataQueueGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v7 || v7(CMBaseObject, *MEMORY[0x1E69718E0], v5))
      {
        [VCImageQueue setHostTimeTimebaseOnFigDataQueue:];
      }
    }
  }

  else
  {
    [VCImageQueue setHostTimeTimebaseOnFigDataQueue:];
  }

  if (timebaseOut[0])
  {
    CFRelease(timebaseOut[0]);
  }
}

- (BOOL)createAllocators
{
  v37 = *MEMORY[0x1E69E9840];
  v36[0] = xmmword_1DBD478E0;
  v36[1] = xmmword_1DBD494E0;
  v3 = *MEMORY[0x1E695E480];
  v4 = VCAllocatorMultiQueue_Create(*MEMORY[0x1E695E480], "StreamOutputAllocator", 4u, v36, &self->_streamOutputAllocator);
  if (v4)
  {
    v9 = v4;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v8)
        {
          return v8;
        }

        [VCImageQueue createAllocators];
      }

      goto LABEL_48;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      v24 = 136316418;
      v25 = v17;
      v26 = 2080;
      v27 = "[VCImageQueue createAllocators]";
      v28 = 1024;
      v29 = 591;
      v30 = 2112;
      v31 = v10;
      v32 = 2048;
      selfCopy4 = self;
      v34 = 1024;
      v35 = v9;
      v19 = " [%s] %s:%d %@(%p) Failed to create stream input allocator Err=%d";
      goto LABEL_47;
    }
  }

  else
  {
    v5 = VCAllocatorFirstCome_Create(v3, "VCImageQueueDataQueueBlockBufferStructureAllocatorName", &self->_dataBlockBufferStructureAllocator);
    if (v5)
    {
      v11 = v5;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          [VCImageQueue createAllocators];
        }

        goto LABEL_48;
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCImageQueue *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v8)
        {
          return v8;
        }

        v24 = 136316418;
        v25 = v20;
        v26 = 2080;
        v27 = "[VCImageQueue createAllocators]";
        v28 = 1024;
        v29 = 594;
        v30 = 2112;
        v31 = v12;
        v32 = 2048;
        selfCopy4 = self;
        v34 = 1024;
        v35 = v11;
        v19 = " [%s] %s:%d %@(%p) Failed to FigDataQueue block buffer structure allocator Err=%d";
        goto LABEL_47;
      }
    }

    else
    {
      v6 = VCAllocatorFirstCome_Create(v3, "VCImageQueueDataQueueFormatDescriptionAllocatorName", &self->_dataFormatDescriptionAllocator);
      if (v6)
      {
        v13 = v6;
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            [VCImageQueue createAllocators];
          }

          goto LABEL_48;
        }

        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCImageQueue *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          v24 = 136316418;
          v25 = v21;
          v26 = 2080;
          v27 = "[VCImageQueue createAllocators]";
          v28 = 1024;
          v29 = 597;
          v30 = 2112;
          v31 = v14;
          v32 = 2048;
          selfCopy4 = self;
          v34 = 1024;
          v35 = v13;
          v19 = " [%s] %s:%d %@(%p) Failed to FigDataQueue format description allocator Err=%d";
          goto LABEL_47;
        }
      }

      else
      {
        v7 = VCAllocatorFirstCome_Create(v3, "VCImageQueueDataQueueSampleBufferAllocatorName", &self->_dataSampleBufferAllocator);
        if (!v7)
        {
          LOBYTE(v8) = 1;
          return v8;
        }

        v15 = v7;
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v8)
            {
              return v8;
            }

            [VCImageQueue createAllocators];
          }

          goto LABEL_48;
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCImageQueue *)self performSelector:sel_logPrefix];
        }

        else
        {
          v16 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          v24 = 136316418;
          v25 = v22;
          v26 = 2080;
          v27 = "[VCImageQueue createAllocators]";
          v28 = 1024;
          v29 = 600;
          v30 = 2112;
          v31 = v16;
          v32 = 2048;
          selfCopy4 = self;
          v34 = 1024;
          v35 = v15;
          v19 = " [%s] %s:%d %@(%p) Failed to FigDataQueue sample buffer allocator Err=%d";
LABEL_47:
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v19, &v24, 0x36u);
        }
      }
    }
  }

LABEL_48:
  LOBYTE(v8) = 0;
  return v8;
}

- (void)releaseAllocators
{
  streamOutputAllocator = self->_streamOutputAllocator;
  if (streamOutputAllocator)
  {
    CFRelease(streamOutputAllocator);
  }

  dataBlockBufferStructureAllocator = self->_dataBlockBufferStructureAllocator;
  if (dataBlockBufferStructureAllocator)
  {
    CFRelease(dataBlockBufferStructureAllocator);
  }

  dataFormatDescriptionAllocator = self->_dataFormatDescriptionAllocator;
  if (dataFormatDescriptionAllocator)
  {
    CFRelease(dataFormatDescriptionAllocator);
  }

  dataSampleBufferAllocator = self->_dataSampleBufferAllocator;
  if (dataSampleBufferAllocator)
  {

    CFRelease(dataSampleBufferAllocator);
  }
}

- (VCStreamOutput)streamOutput
{
  pthread_mutex_lock(&self->_enqueueLock);
  v3 = self->_streamOutput;
  pthread_mutex_unlock(&self->_enqueueLock);
  return v3;
}

- (void)setStreamOutput:(id)output
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  streamOutput = self->_streamOutput;
  if (streamOutput)
  {
    v6 = streamOutput == output;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    streamOutput = 0;
    self->_streamOutput = 0;
  }

  if (output)
  {
    streamOutput = output;
    self->_streamOutput = streamOutput;
    storedAttributes = self->_storedAttributes;
    if (storedAttributes)
    {
      pixelBufferOverlay = self->_pixelBufferOverlay;
      if (pixelBufferOverlay)
      {
        v16 = 0xAAAAAAAAAAAAAAAALL;
        v13 = xmmword_1DBD49530;
        v14 = unk_1DBD49540;
        v15 = xmmword_1DBD49550;
        v11 = xmmword_1DBD49510;
        v12 = unk_1DBD49520;
        [(VCPixelBufferOverlay *)pixelBufferOverlay currentDetails];
        *(&v15 + 1) = self->_storedAttributes;
        v9[2] = v13;
        v9[3] = v14;
        v9[4] = v15;
        v10 = v16;
        v9[0] = v11;
        v9[1] = v12;
        [(VCPixelBufferOverlay *)self->_pixelBufferOverlay setCurrentDetails:v9];
        streamOutput = self->_streamOutput;
        storedAttributes = self->_storedAttributes;
      }

      VCStreamOutput_EnqueueAttributes(streamOutput, storedAttributes);
      streamOutput = self->_streamOutput;
    }
  }

  self->_usingRemoteQueue = streamOutput != 0;
  pthread_mutex_unlock(&self->_enqueueLock);
}

- (unsigned)setVideoDestination:(id)destination
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = v6;
          v26 = 2080;
          v27 = "[VCImageQueue setVideoDestination:]";
          v28 = 1024;
          v29 = 688;
          v9 = " [%s] %s:%d ";
          v10 = v7;
          v11 = 28;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCImageQueue setVideoDestination:];
        if (!destination)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCImageQueue *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
LABEL_23:
    if (!destination)
    {
      goto LABEL_14;
    }

LABEL_24:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __36__VCImageQueue_setVideoDestination___block_invoke;
    v23[3] = &unk_1E85F37F0;
    v23[4] = destination;
    v23[5] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
    return 0;
  }

  v12 = VRTraceErrorLogLevelToCSTR();
  v13 = *MEMORY[0x1E6986650];
  v14 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v25 = v12;
      v26 = 2080;
      v27 = "[VCImageQueue setVideoDestination:]";
      v28 = 1024;
      v29 = 688;
      v30 = 2112;
      *v31 = v5;
      *&v31[8] = 2048;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", buf, 0x30u);
      if (!destination)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  *buf = 136316162;
  v25 = v12;
  v26 = 2080;
  v27 = "[VCImageQueue setVideoDestination:]";
  v28 = 1024;
  v29 = 688;
  v30 = 2112;
  *v31 = v5;
  *&v31[8] = 2048;
  selfCopy2 = self;
  v9 = " [%s] %s:%d %@(%p) ";
  v10 = v13;
  v11 = 48;
LABEL_13:
  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
  if (destination)
  {
    goto LABEL_24;
  }

LABEL_14:
  v15 = 104;
  if (self->_layerHostMode)
  {
    v15 = 168;
  }

  v16 = *(&self->super.isa + v15);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      layerHostMode = self->_layerHostMode;
      slot = self->_slot;
      contextId = self->_contextId;
      *buf = 136316418;
      v25 = v17;
      v26 = 2080;
      v27 = "[VCImageQueue setVideoDestination:]";
      v28 = 1024;
      v29 = 699;
      v30 = 1024;
      *v31 = layerHostMode;
      *&v31[4] = 1024;
      *&v31[6] = slot;
      LOWORD(selfCopy2) = 1024;
      *(&selfCopy2 + 2) = contextId;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d layer host mode=%d slot=%u context=%u", buf, 0x2Eu);
    }
  }

  return v16;
}

uint64_t __36__VCImageQueue_setVideoDestination___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 32) setContents:*(*(a1 + 40) + 8)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)getQueueRepresentation:(void *)representation
{
  if (representation)
  {
    *representation = self->_slot;
  }
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v6);
}

- (void)stop
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v6);
}

- (void)pause
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v6);
}

- (void)createAndCopyPerformanceDictionary:(const __CFDictionary *)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  if (!self->_endpointID)
  {
    figQueue = self->_figQueue;
LABEL_5:
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v7)
    {
      v7(figQueue, dictionary);
    }

    goto LABEL_7;
  }

  ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(self, 0);
  if (ImageQueueAtIndex)
  {
    figQueue = ImageQueueAtIndex;
    goto LABEL_5;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCImageQueue createAndCopyPerformanceDictionary:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCImageQueue createAndCopyPerformanceDictionary:]";
        v15 = 1024;
        v16 = 843;
        v17 = 2112;
        v18 = v8;
        v19 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) image queue should not be nil if end point is set", &v11, 0x30u);
      }
    }
  }

LABEL_7:
  pthread_mutex_unlock(&self->_enqueueLock);
}

- (void)createAndCopyLatencyStatsDictionary:(const __CFDictionary *)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  if (!self->_endpointID || _VCImageQueue_GetImageQueueAtIndex(self, 0))
  {
    FigBaseObject = FigImageQueueGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, @"OriginToPresentationLatencyStatistics", *MEMORY[0x1E695E480], dictionary);
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCImageQueue createAndCopyLatencyStatsDictionary:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316162;
        v11 = v8;
        v12 = 2080;
        v13 = "[VCImageQueue createAndCopyLatencyStatsDictionary:]";
        v14 = 1024;
        v15 = 859;
        v16 = 2112;
        v17 = v5;
        v18 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) image queue should not be nil if end point is set", &v10, 0x30u);
      }
    }
  }

  pthread_mutex_unlock(&self->_enqueueLock);
}

- (void)setImageQueueProtected:(BOOL)protected
{
  protectedCopy = protected;
  v18 = *MEMORY[0x1E69E9840];
  self->_imageQueueProtected = protected;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      caQueue = self->_caQueue;
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCImageQueue setImageQueueProtected:]";
      v12 = 1024;
      v13 = 1600;
      v14 = 1024;
      v15 = caQueue;
      v16 = 1024;
      v17 = protectedCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _caQueue=%x, imageQueueProtected=%d", &v8, 0x28u);
    }
  }

  if (self->_caQueue)
  {
    CAImageQueueSetFlags();
  }
}

- (void)cleanupVideoTargetQueues
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 136316162;
    v13 = v9;
    v14 = 2080;
    v15 = "[VCImageQueue cleanupVideoTargetQueues]";
    v16 = 1024;
    v17 = 1644;
    v18 = 2112;
    v19 = v3;
    v20 = 2048;
    selfCopy = self;
    v6 = " [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCImageQueue cleanupVideoTargetQueues]";
      v16 = 1024;
      v17 = 1644;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

LABEL_12:
  videoTargetDataQueue = self->_videoTargetDataQueue;
  if (videoTargetDataQueue)
  {
    CFRelease(videoTargetDataQueue);
    self->_videoTargetDataQueue = 0;
  }

  CFArrayRemoveAllValues(self->_videoTargetImageQueue);
}

- (BOOL)setUpImageQueueForFigVideoTargetWithTagCollection:(OpaqueCMTagCollection *)collection withDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config
{
  v45 = *MEMORY[0x1E69E9840];
  numberOfTagsCopied = 0;
  tagBuffer = *MEMORY[0x1E6960630];
  value = 0;
  TagsWithCategory = CMTagCollectionGetTagsWithCategory(collection, kCMTagCategory_ChannelID, &tagBuffer, 1, &numberOfTagsCopied);
  if (TagsWithCategory)
  {
    v13 = TagsWithCategory;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
        }
      }

      goto LABEL_43;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v32 = v22;
        v33 = 2080;
        v34 = "[VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:]";
        v35 = 1024;
        v36 = 1656;
        v37 = 2112;
        v38 = v14;
        v39 = 2048;
        selfCopy3 = self;
        v41 = 1024;
        LODWORD(v42) = v13;
        v19 = " [%s] %s:%d %@(%p) Failed to get channel ID tag. result=%d";
        v20 = v23;
        v21 = 54;
LABEL_45:
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      }
    }
  }

  else
  {
    if (tagBuffer.value < 2)
    {
      videoTarget = self->_videoTarget;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v7 || v7(videoTarget, 0, &value))
      {
        [VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
        v11 = buf[0];
        goto LABEL_10;
      }

      FigBaseObject = FigImageQueueGetFigBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(FigBaseObject, *MEMORY[0x1E6971E48], *MEMORY[0x1E695E4D0]);
      }

      [(VCImageQueue *)self setHostTimeTimebaseOnFigImageQueue:value];
      v10 = FigDataChannelConfigurationAddFigImageQueue();
      if (!v10 && value)
      {
        CFArrayAppendValue(self->_videoTargetImageQueue, value);
        v11 = 1;
        goto LABEL_10;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_43;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 136316162;
        v32 = v17;
        v33 = 2080;
        v34 = "[VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:]";
        v35 = 1024;
        v36 = 1667;
        v37 = 2048;
        v38 = value;
        v39 = 1024;
        LODWORD(selfCopy3) = v10;
        v19 = " [%s] %s:%d Failed to add image queue=-%p to config error=%d";
        v20 = v18;
        v21 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCImageQueue *)self performSelector:sel_logPrefix];
        }

        else
        {
          v16 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_43;
        }

        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 136316674;
        v32 = v26;
        v33 = 2080;
        v34 = "[VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:]";
        v35 = 1024;
        v36 = 1667;
        v37 = 2112;
        v38 = v16;
        v39 = 2048;
        selfCopy3 = self;
        v41 = 2048;
        v42 = value;
        v43 = 1024;
        v44 = v10;
        v19 = " [%s] %s:%d %@(%p) Failed to add image queue=-%p to config error=%d";
        v20 = v27;
        v21 = 64;
      }

      goto LABEL_45;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
        }
      }

      goto LABEL_43;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v32 = v24;
        v33 = 2080;
        v34 = "[VCImageQueue setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:]";
        v35 = 1024;
        v36 = 1657;
        v37 = 2112;
        v38 = v15;
        v39 = 2048;
        selfCopy3 = self;
        v41 = 2048;
        v42 = tagBuffer.value;
        v19 = " [%s] %s:%d %@(%p) Unsupported channel ID in the video channel description, value=%llu";
        v20 = v25;
        v21 = 58;
        goto LABEL_45;
      }
    }
  }

LABEL_43:
  v11 = 0;
LABEL_10:
  if (value)
  {
    CFRelease(value);
  }

  return v11;
}

- (BOOL)setupDataQueueForFigVideoTargetWithTagCollection:(OpaqueCMTagCollection *)collection withDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&v11, 170, sizeof(v11));
  CMTimeMake(&v11, 100, 1000);
  memset(&v10, 170, sizeof(v10));
  CMTimeMake(&v10, 0, 1000);
  videoTarget = self->_videoTarget;
  v9 = v11;
  v8 = v10;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6 || (v13 = v9, v12 = v8, v6(videoTarget, 0, &v13, &v12, &self->_videoTargetDataQueue)))
  {
    [VCImageQueue setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
  }

  else if (self->_videoTargetDataQueue)
  {
    [(VCImageQueue *)self setHostTimeTimebaseOnFigDataQueue:?];
    if (!FigDataChannelConfigurationAddFigDataQueue())
    {
      return 1;
    }

    [VCImageQueue setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
  }

  else
  {
    [VCImageQueue setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:];
  }

  return v13.value;
}

- (BOOL)setupDefaultImageQueueForFigVideoTargetWithDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config
{
  FigTagMakeWithSInt64Value();
  FigTagCollectionCreate();
  return [(VCImageQueue *)self setUpImageQueueForFigVideoTargetWithTagCollection:0 withDataChannelConfig:config];
}

- (BOOL)setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:(OpaqueFigDataChannelConfiguration *)config
{
  v31 = *MEMORY[0x1E69E9840];
  videoBufferDescription = self->_videoBufferDescription;
  if (videoBufferDescription)
  {
    if (CFArrayGetCount(self->_videoBufferDescription) >= 1)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E6960640];
      v8 = *(MEMORY[0x1E6960640] + 8);
      v9 = *MEMORY[0x1E6960638];
      v10 = *(MEMORY[0x1E6960638] + 8);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(videoBufferDescription, v6);
        *&v32.category = v7;
        v32.value = v8;
        if (CMTagCollectionContainsTag(ValueAtIndex, v32))
        {
          [(VCImageQueue *)self setUpImageQueueForFigVideoTargetWithTagCollection:ValueAtIndex withDataChannelConfig:config];
        }

        else
        {
          *&v33.category = v9;
          v33.value = v10;
          if (CMTagCollectionContainsTag(ValueAtIndex, v33))
          {
            [(VCImageQueue *)self setupDataQueueForFigVideoTargetWithTagCollection:ValueAtIndex withDataChannelConfig:config];
          }

          else
          {
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_8;
              }

              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_8;
              }

              *buf = 136315650;
              v22 = v17;
              v23 = 2080;
              v24 = "[VCImageQueue setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:]";
              v25 = 1024;
              v26 = 1721;
              v14 = v18;
              v15 = " [%s] %s:%d Unsupported media type in video buffer description";
              v16 = 28;
            }

            else
            {
              v12 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v12 = [(VCImageQueue *)self performSelector:sel_logPrefix];
              }

              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_8;
              }

              v20 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_8;
              }

              *buf = 136316162;
              v22 = v20;
              v23 = 2080;
              v24 = "[VCImageQueue setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:]";
              v25 = 1024;
              v26 = 1721;
              v27 = 2112;
              v28 = v12;
              v29 = 2048;
              selfCopy = self;
              v14 = v13;
              v15 = " [%s] %s:%d %@(%p) Unsupported media type in video buffer description";
              v16 = 48;
            }

            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v15, buf, v16);
          }
        }

LABEL_8:
        ++v6;
      }

      while (v6 < CFArrayGetCount(videoBufferDescription));
    }
  }

  else
  {
    [VCImageQueue setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:?];
  }

  return videoBufferDescription != 0;
}

- (BOOL)setupQueuesAndDataChannelConfigForFigVideoTarget
{
  if (FigDataChannelConfigurationCreate())
  {
    [VCImageQueue setupQueuesAndDataChannelConfigForFigVideoTarget];
  }

  else
  {
    [VCImageQueue setupQueuesAndDataChannelConfigForFigVideoTarget];
  }

  return v3;
}

- (void)setEndpointID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  [(VCImageQueue *)self cleanupFigEndpointVideoTargetAndQueues];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"InstanceType", @"Local");
    if (FigVideoTargetCreateWithVideoReceiverEndpointID())
    {
      [VCImageQueue setEndpointID:];
    }

    else if (self->_videoTarget)
    {
      if ([(VCImageQueue *)self setupQueuesAndDataChannelConfigForFigVideoTarget])
      {
        self->_endpointID = d;
        v7 = 1;
LABEL_6:
        CFRelease(v6);
        goto LABEL_7;
      }

      [VCImageQueue setEndpointID:];
    }

    else
    {
      [VCImageQueue setEndpointID:];
    }

    [(VCImageQueue *)self cleanupFigEndpointVideoTargetAndQueues];
    v7 = 0;
    goto LABEL_6;
  }

  [VCImageQueue setEndpointID:?];
  v7 = 0;
LABEL_7:
  ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(self, 0);
  v9 = _VCImageQueue_GetImageQueueAtIndex(self, 1);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoTarget = self->_videoTarget;
        videoTargetDataQueue = self->_videoTargetDataQueue;
        v22 = 136316930;
        v23 = v11;
        v24 = 2080;
        v25 = "[VCImageQueue setEndpointID:]";
        v26 = 1024;
        v27 = 1778;
        v28 = 1024;
        *v29 = v7;
        *&v29[4] = 2048;
        *&v29[6] = videoTarget;
        *&v29[14] = 2048;
        *&v29[16] = ImageQueueAtIndex;
        v30 = 2048;
        v31 = v9;
        v32 = 2048;
        v33 = videoTargetDataQueue;
        v15 = " [%s] %s:%d success=%d, _videoTarget=%p, _videoTargetImageQueueCh0=%p _videoTargetImageQueueCh1=%p _videoTargetDataQueue=%p";
        v16 = v12;
        v17 = 74;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v22, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCImageQueue *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_videoTarget;
        v21 = self->_videoTargetDataQueue;
        v22 = 136317442;
        v23 = v18;
        v24 = 2080;
        v25 = "[VCImageQueue setEndpointID:]";
        v26 = 1024;
        v27 = 1778;
        v28 = 2112;
        *v29 = v10;
        *&v29[8] = 2048;
        *&v29[10] = self;
        *&v29[18] = 1024;
        *&v29[20] = v7;
        v30 = 2048;
        v31 = v20;
        v32 = 2048;
        v33 = ImageQueueAtIndex;
        v34 = 2048;
        v35 = v9;
        v36 = 2048;
        v37 = v21;
        v15 = " [%s] %s:%d %@(%p) success=%d, _videoTarget=%p, _videoTargetImageQueueCh0=%p _videoTargetImageQueueCh1=%p _videoTargetDataQueue=%p";
        v16 = v19;
        v17 = 94;
        goto LABEL_17;
      }
    }
  }

  pthread_mutex_unlock(&self->_enqueueLock);
}

void ___VCImageQueue_setFenceWithCompletionHandler_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v7 = 136316674;
        v8 = v2;
        v9 = 2080;
        v10 = "_VCImageQueue_setFenceWithCompletionHandler_block_invoke";
        v11 = 1024;
        v12 = 410;
        v13 = 1024;
        v14 = 410;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = v5;
        v19 = 2048;
        v20 = [v5 context];
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: fence=%p for layer=%p and context=%p resolved successfully", &v7, 0x40u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___VCImageQueue_setFenceWithCompletionHandler_block_invoke_cold_1(v2, a1);
    }
  }
}

- (void)setTransformForRemoteVideoOrientationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  if (self->_transformForRemoteVideoOrientationEnabled != enabledCopy)
  {
    self->_transformForRemoteVideoOrientationEnabled = enabledCopy;
    if (enabledCopy)
    {
      v6 = OUTLINED_FUNCTION_40_6();
      _VCImageQueue_applyLayerTransforms(v6, v7);
    }

    else if (self->_caLayer)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      caLayer = self->_caLayer;
      memcpy(__dst, MEMORY[0x1E69792E8], sizeof(__dst));
      [(CALayer *)caLayer setTransform:__dst];
      [MEMORY[0x1E6979518] commit];
    }
  }

  pthread_mutex_unlock(&self->_enqueueLock);
}

- (void)configureCALayerWithRect:(CGRect)rect name:(id)name
{
  OUTLINED_FUNCTION_50_0();
  v6 = v5;
  [*(v5 + 184) setContents:*(v5 + 8)];
  OUTLINED_FUNCTION_16_12();
  _VCImageQueue_configureCALayerBounds(v7, 0);
  if (*(v6 + 456))
  {
    v8 = MEMORY[0x1E6979DF0];
  }

  else
  {
    v8 = MEMORY[0x1E6979DE8];
  }

  [*(v6 + 184) setContentsGravity:*v8];
  [*(v6 + 184) setName:name];
  [*(v6 + 184) setAllowsHitTesting:0];
  [*(v6 + 184) setInheritsTiming:0];
  v9 = *(v6 + 184);

  [v9 setAllowsDisplayCompositing:1];
}

- (void)setVideoBufferDescription:(id)description
{
  v51 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      v38 = "[VCImageQueue setVideoBufferDescription:]";
      v39 = 1024;
      v40 = 1607;
      v41 = 2112;
      *v42 = description;
      OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v7, v8, " [%s] %s:%d videoBufferDescription=%@", v9, v10, v11, v12, v36);
    }
  }

  pthread_mutex_lock(&self->_enqueueLock);
  videoBufferDescription = self->_videoBufferDescription;
  if (videoBufferDescription)
  {
    CFRelease(videoBufferDescription);
  }

  self->_videoBufferDescription = description;
  if (self->_endpointID)
  {
    [(VCImageQueue *)self cleanupVideoTargetQueues];
    setupQueuesAndDataChannelConfigForFigVideoTarget = [(VCImageQueue *)self setupQueuesAndDataChannelConfigForFigVideoTarget];
    if (!setupQueuesAndDataChannelConfigForFigVideoTarget)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_31())
        {
          OUTLINED_FUNCTION_7_4();
          v38 = "[VCImageQueue setVideoBufferDescription:]";
          v39 = 1024;
          OUTLINED_FUNCTION_3_8();
          *&v42[4] = 2112;
          *&v42[6] = description;
          OUTLINED_FUNCTION_17_0();
          _os_log_error_impl(v31, v32, v33, v34, v35, 0x2Cu);
        }
      }

      [(VCImageQueue *)self cleanupVideoTargetQueues];
    }

    ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(self, 0);
    v16 = _VCImageQueue_GetImageQueueAtIndex(self, 1);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136316930;
          v37 = v18;
          OUTLINED_FUNCTION_35_4();
          v41 = v20;
          *v42 = setupQueuesAndDataChannelConfigForFigVideoTarget;
          *&v42[4] = 2048;
          *&v42[6] = v21;
          *&v42[14] = 2048;
          *&v42[16] = ImageQueueAtIndex;
          v43 = 2048;
          v44 = v16;
          v45 = 2048;
          v46 = v22;
          v23 = " [%s] %s:%d endpoint updated with success=%d, _videoTarget=%p, _videoTargetImageQueueCh0=%p _videoTargetImageQueueCh1=%p _videoTargetDataQueue=%p";
          v24 = v19;
          v25 = 74;
LABEL_22:
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, &v36, v25);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCImageQueue *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136317442;
          v37 = v26;
          OUTLINED_FUNCTION_35_4();
          v41 = 2112;
          *v42 = v17;
          *&v42[8] = 2048;
          *&v42[10] = self;
          *&v42[18] = v28;
          *&v42[20] = setupQueuesAndDataChannelConfigForFigVideoTarget;
          v43 = 2048;
          v44 = v29;
          v45 = 2048;
          v46 = ImageQueueAtIndex;
          v47 = 2048;
          v48 = v16;
          v49 = 2048;
          v50 = v30;
          v23 = " [%s] %s:%d %@(%p) endpoint updated with success=%d, _videoTarget=%p, _videoTargetImageQueueCh0=%p _videoTargetImageQueueCh1=%p _videoTargetDataQueue=%p";
          v24 = v27;
          v25 = 94;
          goto LABEL_22;
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_enqueueLock);
}

- (void)cleanupFigEndpointVideoTargetAndQueues
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E6986650];
  if (v3 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v6;
        OUTLINED_FUNCTION_19_8();
        v23 = 1629;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v5 = OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v22 = v11;
        OUTLINED_FUNCTION_19_8();
        v23 = 1629;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        selfCopy = self;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  endpointID = self->_endpointID;
  if (endpointID)
  {
    CFRelease(endpointID);
    self->_endpointID = 0;
  }

  if (self->_videoTarget)
  {
    if (!FigDataChannelConfigurationCreate())
    {
      videoTarget = self->_videoTarget;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v15 && !v15(videoTarget, 0))
      {
        goto LABEL_20;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_20;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v4;
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_20;
      }

      *buf = 136316162;
      v22 = v16;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_42_2();
      v19 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: Failed transition to empty image queue config error=%d";
      goto LABEL_24;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v17 = *v4;
      if (OUTLINED_FUNCTION_40())
      {
        *buf = 136316162;
        v22 = v20;
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_42_2();
        v19 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: Failed create empty image queue config error=%d";
LABEL_24:
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x28u);
      }
    }
  }

LABEL_20:
  v18 = self->_videoTarget;
  if (v18)
  {
    CFRelease(v18);
    self->_videoTarget = 0;
  }

  [(VCImageQueue *)self cleanupVideoTargetQueues];
}

+ (void)drawingContext
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d drawingContext sContext is now [CAContext localContext]", v2, v3, v4, v5, v6);
}

- (uint64_t)createCAContextWithSize:(id *)a3 .cold.1(uint64_t a1, uint64_t a2, id *a3)
{
  [a1 configureCALayerWithRect:a2 name:?];
  *(a1 + 168) = [*a3 contextId];
  _VCImageQueue_signalWaitForLayoutChangeCondition(a1);
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  result = [MEMORY[0x1E6979518] synchronize];
  *(a1 + 465) = 1;
  return result;
}

- (void)createCAContextWithSize:(uint64_t)a1 .cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)createCAContextWithSize:(uint64_t)a1 .cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)createCAContextWithSize:(uint64_t)a1 .cold.4(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)createCAContextWithSize:(uint64_t)a1 .cold.5(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)createCAContextWithSize:(uint64_t)a1 .cold.6(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setHostTimeTimebaseOnFigImageQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigImageQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigImageQueue:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigDataQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigDataQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigDataQueue:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setHostTimeTimebaseOnFigDataQueue:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)createAllocators
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setVideoDestination:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v6);
}

- (void)createAndCopyPerformanceDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAndCopyLatencyStatsDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpImageQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDataQueueForFigVideoTargetWithTagCollection:withDataChannelConfig:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupQueuesForFigVideoTargetUsingBufferDescriptionWithDataChannelConfig:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setupQueuesAndDataChannelConfigForFigVideoTarget
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setEndpointID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setEndpointID:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)setEndpointID:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (uint64_t)setEndpointID:(void *)a1 .cold.4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  return [a1 cleanupFigEndpointVideoTargetAndQueues];
}

void ___VCImageQueue_setFenceWithCompletionHandler_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  [*(a2 + 40) context];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x40u);
}

@end