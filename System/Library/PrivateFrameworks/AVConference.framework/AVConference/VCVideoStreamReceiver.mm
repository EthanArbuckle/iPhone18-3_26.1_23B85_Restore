@interface VCVideoStreamReceiver
- (BOOL)canDequeue:(opaqueCMBufferQueue *)dequeue forTimestamp:(unsigned int)timestamp;
- (BOOL)handleRemoteVideoAttributesChange:(__CVBuffer *)change;
- (BOOL)startSynchronization:(id)synchronization;
- (VCVideoStreamReceiver)initWithConfig:(tagVCVideoStreamReceiverConfig *)config;
- (int)createDecodeSession:(opaqueCMFormatDescription *)session;
- (int)decodeFrame:(opaqueCMSampleBuffer *)frame showFrame:(BOOL)showFrame;
- (int)processVideoRTCP;
- (int)processVideoRTP;
- (int)scheduleDecodeForFrameWithBuffer:(VCVideoReceiverSampleBuffer_t *)buffer timestamp:(unsigned int)timestamp hostTime:(double)time showFrame:(BOOL)frame;
- (int)showDecodedFrame:(__CVBuffer *)frame atTime:(id *)time;
- (int)startNetworkReceiveThread;
- (int)startVideo;
- (int)stopNetworkReceiveThread;
- (tagVCVideoPacketBufferConfig)newVideoPacketBufferConfig:(SEL)config;
- (void)dealloc;
- (void)dequeueAndDecodeForTimestamp:(unsigned int)timestamp;
- (void)gatherRealtimeStats:(__CFDictionary *)stats;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleAlarmForTimeStamp:(unsigned int)stamp;
- (void)networkReceivePackets;
- (void)processReceptionReportBlock:(tagRTCP_RRB *)block blockCount:(unsigned int)count arrivalNTPTime:(tagNTP)time;
- (void)processVideoRTP;
- (void)reportVideoStallStatus:(BOOL)status;
- (void)reportingVideoStreamEvent:(unsigned __int16)event;
- (void)rtcpSendIntervalElapsed;
- (void)scheduleDecodeForTimestamp:(unsigned int)timestamp;
- (void)scheduleVideoDecode:(unsigned int)decode;
- (void)setDeferredAssemblyEnabled:(BOOL)enabled;
- (void)setJitterBufferMode:(int)mode;
- (void)setLooseAVSyncEnabled:(BOOL)enabled;
- (void)stopSynchronization;
- (void)stopVideo;
- (void)teardownDecodeSession:(BOOL)session;
- (void)updateSequenceNumber:(unsigned __int16)number;
- (void)updateVideoStallStatus:(BOOL)status;
@end

@implementation VCVideoStreamReceiver

- (VCVideoStreamReceiver)initWithConfig:(tagVCVideoStreamReceiverConfig *)config
{
  v27 = *MEMORY[0x1E69E9840];
  if (!config)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamReceiver initWithConfig:];
      }
    }

    goto LABEL_17;
  }

  var1 = config->var1;
  if (!var1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamReceiver initWithConfig:];
      }
    }

LABEL_17:

    return 0;
  }

  v17.receiver = self;
  v17.super_class = VCVideoStreamReceiver;
  v6 = [(VCVideoReceiverBase *)&v17 initWithDelegate:var1 delegateFunctions:&config->var2];
  v7 = v6;
  if (v6)
  {
    v6->_hRTP = config->var0;
    v6->_receivedFirstPacket = 0;
    v6->_stats = objc_alloc_init(VCMediaStreamStats);
    var3 = config->var3;
    if (var3)
    {
      var3 = CFRetain(var3);
    }

    v7->_reportingAgent = var3;
    v7->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    reportingInheritModuleSpecificInfoFromParent();
    v9 = config->var10;
    v7->_rateAdaptation = v9;
    [(VCVideoStreamRateAdaptation *)v9 setStats:v7->_stats];
    v7->_rtcpContext = config->var8;
    v7->_rtcpPacketsCallback = config->var9;
    v10 = *MEMORY[0x1E695E480];
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    CMBufferQueueCreate(v10, 0, CallbacksForUnsortedSampleBuffers, &v7->_videoQueue);
    pthread_mutex_init(&v7->_decompressionSessionMutex, 0);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v7->_videoStreamReceiverQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoReceiver.videoStreamReceiverQueue", 0, CustomRootQueue);
    v7->_enableReceiveBitstreamDump = [+[VCDefaults sharedInstance](VCDefaults enableRxDecodeYUVDump]!= 0;
    v7->super._rtpTimestampRate = 90000;
    if (config->var7 && (v13 = VCTransportStreamRunLoopVTPCreate(v10, &v7->_runLoop), (v13 & 0x80000000) != 0))
    {
      [(VCVideoStreamReceiver *)v7 initWithConfig:v13, buf];
      return *buf;
    }

    else
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoStreamReceiver-initialized");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v14;
          v19 = 2080;
          v20 = "[VCVideoStreamReceiver initWithConfig:]";
          v21 = 1024;
          v22 = 135;
          v23 = 2048;
          v24 = v7;
          v25 = 2080;
          var11 = config->var11;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVideoStreamReceiver-initialized (%p) %s", buf, 0x30u);
        }
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(VCVideoStreamReceiver *)self stopNetworkReceiveThread];
  [(VCVideoStreamReceiver *)self stopSynchronization];
  [(VCVideoStreamReceiver *)self teardownDecodeSession:0];
  pthread_mutex_destroy(&self->_decompressionSessionMutex);
  videoPacketBuffer = self->_videoPacketBuffer;
  if (videoPacketBuffer)
  {
    VideoPacketBuffer_Destroy(videoPacketBuffer);
    self->_videoPacketBuffer = 0;
  }

  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  videoQueue = self->_videoQueue;
  if (videoQueue)
  {
    CFRelease(videoQueue);
  }

  dispatch_release(self->_videoStreamReceiverQueue);
  reportingCacheModuleSpecificInfo();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRelease(runLoop);
  }

  v8.receiver = self;
  v8.super_class = VCVideoStreamReceiver;
  [(VCVideoReceiverBase *)&v8 dealloc];
}

- (int)startVideo
{
  [(VCVideoStreamReceiver *)self startNetworkReceiveThread];
  reportingRegisterPeriodicTaskWeak();
  return 0;
}

- (void)stopVideo
{
  if (self->_reportingAgent)
  {
    reportingUnregisterPeriodicTask();
  }

  [(VCVideoStreamReceiver *)self stopNetworkReceiveThread];
  [(VCVideoStreamReceiver *)self stopSynchronization];
  [(VCVideoStreamReceiver *)self teardownDecodeSession:1];
  videoPacketBuffer = self->_videoPacketBuffer;
  if (videoPacketBuffer)
  {
    VideoPacketBuffer_Destroy(videoPacketBuffer);
    self->_videoPacketBuffer = 0;
  }
}

- (BOOL)startSynchronization:(id)synchronization
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoStreamReceiver;
  v4 = [(VCVideoReceiverBase *)&v8 startSynchronization:synchronization];
  if (v4)
  {
    v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__VCVideoStreamReceiver_startSynchronization___block_invoke;
    v7[3] = &unk_1E85F6730;
    v7[4] = v5;
    VCMediaStreamSynchronizer_setDestinationAlarmHandler(self->super._mediaStreamSynchronizer, v7);
  }

  return v4;
}

void __46__VCVideoStreamReceiver_startSynchronization___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
    [v5 handleAlarmForTimeStamp:a2];
  }
}

- (void)stopSynchronization
{
  v4 = *MEMORY[0x1E69E9840];
  VCMediaStreamSynchronizer_setDestinationAlarmHandler(self->super._mediaStreamSynchronizer, 0);
  v3.receiver = self;
  v3.super_class = VCVideoStreamReceiver;
  [(VCVideoReceiverBase *)&v3 stopSynchronization];
}

- (int)startNetworkReceiveThread
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  videoStreamReceiverQueue = self->_videoStreamReceiverQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCVideoStreamReceiver_startNetworkReceiveThread__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(videoStreamReceiverQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __50__VCVideoStreamReceiver_startNetworkReceiveThread__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 194) = 0;
  *(*(a1 + 32) + 196) = 0;
  *(*(a1 + 32) + 200) = 0;
  *(*(a1 + 32) + 208) = 0;
  v2 = micro();
  *(*(a1 + 32) + 64) = v2;
  *(*(a1 + 32) + 72) = v2;
  *(*(a1 + 32) + 192) = 0;
  *(*(a1 + 32) + 193) = 0;
  v3 = *(a1 + 32);
  if (!*(v3 + 424))
  {
    *(*(a1 + 32) + 276) = VTP_Socket(2, 1, 6);
    v3 = *(a1 + 32);
    if (*(v3 + 276) == -1)
    {
      *(*(*(a1 + 40) + 8) + 24) = *__error() | 0xC01F0000;
      v3 = *(a1 + 32);
    }
  }

  if (!*(v3 + 264))
  {
    v6[0] = @"com.apple.AVConference.VCVideoReceiver.NetworkReceiveProc";
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], v6, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(*(a1 + 32) + 272) = 1;
    v5 = FigThreadCreate();
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__VCVideoStreamReceiver_startNetworkReceiveThread__block_invoke_cold_1();
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = v5 | 0xA01F0000;
    }
  }
}

- (int)stopNetworkReceiveThread
{
  v4[5] = *MEMORY[0x1E69E9840];
  videoStreamReceiverQueue = self->_videoStreamReceiverQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__VCVideoStreamReceiver_stopNetworkReceiveThread__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_sync(videoStreamReceiverQueue, v4);
  return 0;
}

void __49__VCVideoStreamReceiver_stopNetworkReceiveThread__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 272) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 424);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v3);
    }
  }

  else
  {
    v5 = *(v2 + 276);
    if (v5 != -1)
    {
      VTP_Close(v5);
      *(*(a1 + 32) + 276) = -1;
    }
  }

  v6 = *(a1 + 32);
  if (*(v6 + 264))
  {
    FigThreadJoin();
    *(*(a1 + 32) + 264) = 0;
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 280);
  if (v7)
  {
    VideoPacketBuffer_Destroy(v7);
    *(*(a1 + 32) + 280) = 0;
  }
}

- (void)networkReceivePackets
{
  v8 = *MEMORY[0x1E69E9840];
  while (self->_runNetworkReceiveThread)
  {
    v7 = 48;
    hRTP = self->_hRTP;
    runLoop = self->_runLoop;
    if (runLoop)
    {
      if ((RTPGetReceiveStatusWithRunLoop(&hRTP, &v7, 1, runLoop) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((RTPGetReceiveStatus(&hRTP, &v7, 1, self->_sRecvReset) & 0x80000000) == 0)
    {
LABEL_4:
      v4 = v7;
      if ((v7 & 0x10) != 0)
      {
        [(VCVideoStreamReceiver *)self processVideoRTP];
        v4 = v7;
      }

      if ((v4 & 0x20) != 0)
      {
        [(VCVideoStreamReceiver *)self processVideoRTCP];
      }

      continue;
    }

    usleep(0x2710u);
  }

  return 0;
}

- (void)updateSequenceNumber:(unsigned __int16)number
{
  v20 = *MEMORY[0x1E69E9840];
  sequenceNumberOutOfOrder = self->_sequenceNumberOutOfOrder;
  if (sequenceNumberOutOfOrder != -1)
  {
    if (sequenceNumberOutOfOrder == number && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lastSequenceNumber = self->_lastSequenceNumber;
        v10 = 136316162;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCVideoStreamReceiver updateSequenceNumber:]";
        v14 = 1024;
        v15 = 372;
        v16 = 1024;
        v17 = sequenceNumberOutOfOrder;
        v18 = 1024;
        v19 = lastSequenceNumber;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Out of order packets[%d,%d]", &v10, 0x28u);
      }
    }

    self->_sequenceNumberOutOfOrder = -1;
  }

  v9 = self->_lastSequenceNumber;
  if ((number - v9) == 2)
  {
    self->_sequenceNumberOutOfOrder = (v9 + 1);
  }

  else if ((number - v9) < 0)
  {
    return;
  }

  self->_lastSequenceNumber = number;
}

- (void)scheduleDecodeForTimestamp:(unsigned int)timestamp
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
  v6 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
  while (1)
  {
    v18 = -1;
    v19 = 0;
    v20 = -1431655936;
    v7 = micro();
    v17 = 0;
    v16 = 1;
    NextFrame = VideoPacketBuffer_GetNextFrame(*(&self->super.super.isa + v5[751]), timestamp, &v18, &v16, &v19, 0, 0, &v20, &v17, 0);
    v9 = v20;
    if ((v20 & 0x80) != 0)
    {
      self->super._remoteVideoOrientation = v20 & 3;
      self->_remoteVideoCamera = (v9 >> 3) & 1;
      self->_remoteVideoMirrored = (v9 & 4) != 0;
    }

    v10 = v18;
    if (v18 != -1)
    {
      break;
    }

LABEL_7:
    if (!NextFrame)
    {
      goto LABEL_18;
    }

LABEL_8:
    if (v17[15])
    {
      [VCVideoStreamReceiver scheduleDecodeForFrameWithBuffer:"scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:" timestamp:0.0 hostTime:? showFrame:?];
      if (v10 == -1)
      {
        [(VCMediaStreamStats *)self->_stats recordDataWithSize:atomic_fetch_and_explicit(&self->_receivedBytes atTime:0, memory_order_relaxed), v7];
      }
    }

    VCVideoReceiverSampleBuffer_Destroy(&v17);
  }

  if (v18)
  {
    RTCPSetSendPLI();
    [(VCVideoStreamReceiver *)self updateVideoStallStatus:1];
    goto LABEL_7;
  }

  v11 = v5;
  v12 = v6;
  ++self->_firSequenceNumber;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      firSequenceNumber = self->_firSequenceNumber;
      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiver scheduleDecodeForTimestamp:]";
      *&buf[22] = 1024;
      *&buf[24] = 419;
      *&buf[28] = 1024;
      *&buf[30] = firSequenceNumber;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending RTCP PSFB FIR(%d)", buf, 0x22u);
    }
  }

  memset(buf, 0, sizeof(buf));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  buf[24] = self->_firSequenceNumber;
  *buf = 64;
  v6 = v12;
  if ((RTPSendControlPacket(*(&self->super.super.isa + v12[738]), buf) & 0x80000000) == 0)
  {
    [(VCVideoStreamReceiver *)self reportingVideoStreamEvent:221];
  }

  v5 = v11;
  if (NextFrame)
  {
    goto LABEL_8;
  }

LABEL_18:
  VCVideoReceiverSampleBuffer_Destroy(&v17);
}

- (void)scheduleVideoDecode:(unsigned int)decode
{
  mostRecentTimestamp = self->_mostRecentTimestamp;
  if (!mostRecentTimestamp || (decode != mostRecentTimestamp ? (v4 = decode - mostRecentTimestamp > 0x7FFFFFFE) : (v4 = 1), !v4))
  {
    self->_mostRecentTimestamp = decode;
    mostRecentTimestamp = decode;
  }

  lastVideoTimestamp = self->_lastVideoTimestamp;
  v6 = mostRecentTimestamp >= lastVideoTimestamp;
  v7 = mostRecentTimestamp - lastVideoTimestamp;
  if (!v6 && v7 <= 0x7FFFFFFE)
  {
    ++self->_videoTimestampWrapCount;
    mostRecentTimestamp = self->_mostRecentTimestamp;
  }

  self->_lastVideoTimestamp = mostRecentTimestamp;
  [(VCVideoStreamReceiver *)self scheduleDecodeForTimestamp:?];
}

- (tagVCVideoPacketBufferConfig)newVideoPacketBufferConfig:(SEL)config
{
  *retstr->var21 = 0u;
  *&retstr->var21[16] = 0u;
  *&retstr->var16.nackThrottlingPlrBuckets[2] = 0u;
  *&retstr->var16.rttForRTxFulfillmentWaitTime = 0u;
  *&retstr->var16.nackThrottlingBitRateLimitingMaxRatio = 0u;
  *&retstr->var16.nackThrottlingFactorBuckets[2] = 0u;
  *&retstr->var13.var1 = 0u;
  *&retstr->var15 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var12.var1 = 0u;
  *&retstr->var4[184] = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var4[152] = 0u;
  *&retstr->var4[168] = 0u;
  *&retstr->var4[120] = 0u;
  *&retstr->var4[136] = 0u;
  *&retstr->var4[88] = 0u;
  *&retstr->var4[104] = 0u;
  *&retstr->var4[56] = 0u;
  *&retstr->var4[72] = 0u;
  *&retstr->var4[24] = 0u;
  *&retstr->var4[40] = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var4[8] = 0u;
  *&retstr->var0 = 0u;
  retstr->var0 = a4->var3;
  retstr->var1 = a4->var4;
  retstr->var2 = 90000;
  strcpy(retstr->var4, "video-stream-receiver");
  *&retstr->var6 = 256;
  retstr->var9 = 0;
  retstr->var10 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-enable-late-frame-recovery" userDefaultKey:@"enableLateVideoFrameRecovery" defaultValue:MEMORY[0x1E695E110] isDoubleType:{0), "BOOLValue"}];
  return snprintf(retstr->var21, 0x1EuLL, "parent=%p", self);
}

- (int)processVideoRTP
{
  v2 = MEMORY[0x1EEE9AC00](self);
  v42 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v37 = 0;
  v36 = 0;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v35 = 0;
  v3 = RTPRecvRTP(*(v2 + 112), &v35);
  if (v3 < 0)
  {
    [(VCVideoStreamReceiver *)v3 processVideoRTP];
LABEL_39:
    v24 = *buf;
    goto LABEL_35;
  }

  v4 = v35;
  if (*(v2 + 301) == 1)
  {
    v5 = VCCVOExtensionUtils_CameraStatusBitsFromCVOExtension(*(v2 + 304), v35[18], *(v35 + 34), &v36);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v5)
    {
      if (ErrorLogLevelForModule < 8)
      {
        goto LABEL_14;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315906;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStreamReceiver processVideoRTP]";
        *&buf[22] = 1024;
        *&buf[24] = 508;
        *&buf[28] = 1024;
        *&buf[30] = v36;
        v10 = " [%s] %s:%d bCameraStatusBits = %x";
        v11 = v8;
        v12 = 34;
        goto LABEL_11;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [VCVideoStreamReceiver processVideoRTP];
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStreamReceiver processVideoRTP]";
        *&buf[22] = 1024;
        *&buf[24] = 510;
        v10 = " [%s] %s:%d Invalid header extension profile or CVO Extension ID";
        v11 = v14;
        v12 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

LABEL_14:
  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v4[20];
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStreamReceiver processVideoRTP]";
        *&buf[22] = 1024;
        *&buf[24] = 514;
        *&buf[28] = 1024;
        *&buf[30] = v18;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processVideoRTP called RTPRecvRTP packet (%d bytes)", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [VCVideoStreamReceiver processVideoRTP];
    }
  }

  if (*(v4 + 3) != 123)
  {
    [(VCVideoStreamReceiver *)v4 + 12 processVideoRTP];
    goto LABEL_39;
  }

  if (!v4[20])
  {
    [(VCVideoStreamReceiver *)v4 processVideoRTP];
    goto LABEL_39;
  }

  atomic_fetch_add_explicit((v2 + 392), *(v4 + 30), memory_order_relaxed);
  *(v2 + 64) = micro();
  __memcpy_chk();
  if (*(v2 + 192) == 1)
  {
    v19 = *(v2 + 280);
  }

  else
  {
    *(v2 + 192) = 1;
    v19 = *(v2 + 280);
    if (!v19)
    {
      memcpy(buf, &unk_1DBD49020, sizeof(buf));
      [v2 newVideoPacketBufferConfig:v4 + 1];
      v19 = VideoPacketBuffer_Create(buf);
      *(v2 + 280) = v19;
    }

    *(v2 + 194) = *(v4 + 10) - 1;
    *(v2 + 196) = -1;
  }

  *&v31[2] = 0xAAAAAAAAAAAAAAAALL;
  v33 = v4 + 1;
  v34 = 0xAAAAAAAAAAAAAA00;
  v26 = xmmword_1DBD45AE0;
  v27 = v4 + 19;
  v28 = 0xAAAAAAAA00000000;
  v29 = 0;
  v30 = v36;
  *v31 = 0;
  v32 = v39;
  VideoPacketBuffer_AddPacket(v19, &v26, 0, 0, 0);
  if (VideoPacketBuffer_SchedulePastIncompleteFrame(*(v2 + 280), *(v4 + 6), &v37, 0, 0, 0))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v37;
      if ((v20 & 1) != 0 && v21 == v37)
      {
        break;
      }

      [v2 scheduleVideoDecode:v37];
      v23 = VideoPacketBuffer_SchedulePastIncompleteFrame(*(v2 + 280), *(v4 + 6), &v37, 0, 0, 0);
      v20 = 1;
      v21 = v22;
    }

    while ((v23 & 1) != 0);
  }

  while (VideoPacketBuffer_ScheduleFutureFrame(*(v2 + 280), *(v4 + 7), *(v4 + 6), &v37, 0, 0, 0, *(v2 + 64)))
  {
    [v2 scheduleVideoDecode:v37];
  }

  [v2 updateSequenceNumber:*(v4 + 10)];
  [*(v2 + 216) updateRTPReceiveWithTimestamp:*(v4 + 6) sampleRate:90000 time:*(v4 + 40) size:*(v4 + 2) > 0 endOfFrame:micro()];
  kdebug_trace();
  v24 = 0;
LABEL_35:
  RTPReleaseRTPPacket(*(v2 + 112), &v35);
  return v24;
}

- (void)rtcpSendIntervalElapsed
{
  v9 = *MEMORY[0x1E69E9840];
  runVideoStreamRateAdaptation = [(VCVideoStreamRateAdaptation *)self->_rateAdaptation runVideoStreamRateAdaptation];
  v4 = 0;
  RTPGetRTCPHasPendingPLI(self->_hRTP, &v4);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if ((RTPSendControlPacket(self->_hRTP, v7) & 0x80000000) == 0 && v4)
  {
    [(VCVideoStreamReceiver *)self reportingVideoStreamEvent:223];
  }

  if (runVideoStreamRateAdaptation)
  {
    v5[0] = 0x1F5718568;
    v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCVideoStreamRateAdaptation operatingBitrate](self->_rateAdaptation, "operatingBitrate")}];
    v5[1] = 0x1F5718548;
    v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCVideoStreamRateAdaptation sendTmmbrBitrate](self->_rateAdaptation, "sendTmmbrBitrate")}];
    v5[2] = 0x1F5718588;
    v6[2] = [MEMORY[0x1E696AD98] numberWithBool:{-[VCVideoStreamRateAdaptation isOperatingAtMaxBitrate](self->_rateAdaptation, "isOperatingAtMaxBitrate")}];
    v5[3] = 0x1F57185A8;
    v6[3] = [MEMORY[0x1E696AD98] numberWithBool:{-[VCVideoStreamRateAdaptation isOperatingAtMinBitrate](self->_rateAdaptation, "isOperatingAtMinBitrate")}];
    -[VCVideoReceiverDelegate vcVideoReceiver:downlinkQualityDidChange:](-[VCVideoReceiverBase delegate](self, "delegate"), "vcVideoReceiver:downlinkQualityDidChange:", self, [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4]);
  }
}

- (void)processReceptionReportBlock:(tagRTCP_RRB *)block blockCount:(unsigned int)count arrivalNTPTime:(tagNTP)time
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ((RTPGetLocalSSRC(self->_hRTP, &v17) & 0x80000000) != 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      v19 = v10;
      v20 = 2080;
      v21 = "[VCVideoStreamReceiver processReceptionReportBlock:blockCount:arrivalNTPTime:]";
      v22 = 1024;
      v23 = 609;
      v12 = " [%s] %s:%d Could not get the local SSRC";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCVideoStreamReceiver processReceptionReportBlock:blockCount:arrivalNTPTime:]";
      v22 = 1024;
      v23 = 609;
      v24 = 2112;
      v25 = v9;
      v26 = 2048;
      selfCopy = self;
      v12 = " [%s] %s:%d %@(%p) Could not get the local SSRC";
      v13 = v16;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    return;
  }

  if (count)
  {
    while (block->var0 != v17)
    {
      ++block;
      if (!--count)
      {
        return;
      }
    }

    [(VCVideoReceiverBase *)self setRoundTripTime:vcvtd_n_f64_u32(RTCPComputeRoundTripTimeMiddle32(block, time.wide), 0x10uLL)];
  }
}

- (int)processVideoRTCP
{
  v88 = *MEMORY[0x1E69E9840];
  bzero(&v86, 0x668uLL);
  v3 = RTPRecvRTCP(self->_hRTP, &v86);
  if ((v3 & 0x80000000) == 0)
  {
    *&v4 = micro();
    *&self->super._lastReceivedVideoRTCPPacketTime = v4;
    if (!v87)
    {
      kdebug_trace();
      goto LABEL_84;
    }

    v5 = *&v4;
    v69 = v3;
    v6 = 0;
    v71 = 0;
    v7 = 0;
    v8 = 2;
    *&v4 = 136316930;
    v68 = v4;
    while (1)
    {
      v9 = *(&v86 + v8);
      v10 = *v9;
      v11 = v10 >> 8;
      if (v10 >> 8 <= 0xC9)
      {
        break;
      }

      if (v10 >> 8 <= 0xCC)
      {
        if (v11 != 202)
        {
          if (v11 == 204)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v16;
                *&buf[12] = 2080;
                *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
                *&buf[22] = 1024;
                *&buf[24] = 728;
                _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received RTCP APP", buf, 0x1Cu);
              }
            }

            if (*(v9 + 2) == 1380144204)
            {
              v78 = -1431655766;
              *&v77 = 0xAAAAAAAAAAAAAAAALL;
              *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v18 = *(v9 + 6);
              v78 = *(v9 + 7);
              v77 = v18;
              memset(v79, 0, sizeof(v79));
              v73 = 0;
              v72 = 16843010;
              VCMediaControlInfoUnserializeWithData(v79, &v77, 0x14uLL, &v72);
              v19 = *&v79[24];
              v20 = RTPUnpackDouble(*&v79[28]);
              rateAdaptation = self->_rateAdaptation;
              *buf = 2;
              *&buf[8] = v5;
              *&buf[16] = 0;
              *&buf[24] = v19;
              *&buf[28] = *&v79[20];
              *&buf[32] = *&v79[2];
              *&buf[40] = *&v79[4];
              *&buf[44] = 0;
              *&buf[60] = 0;
              LODWORD(v75) = 0;
              *&buf[52] = *&v79[10] + *&v79[6];
              DWORD1(v75) = *v79;
              *(&v75 + 1) = 0;
              *v76 = v20;
              memset(v76 + 8, 0, 80);
              *(&v76[5] + 8) = 0u;
              *(&v76[6] + 8) = 0u;
              [(VCVideoStreamRateAdaptation *)rateAdaptation updateRateControlInfoWithStatisticsMessage:buf];
            }

            goto LABEL_77;
          }

          goto LABEL_54;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_77;
        }

        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_77;
        }

        *buf = 136315650;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
        *&buf[22] = 1024;
        *&buf[24] = 665;
        v14 = v36;
        v15 = " [%s] %s:%d Received RTCP SDES";
LABEL_39:
        v37 = 28;
        goto LABEL_68;
      }

      if (v11 == 205)
      {
        if ((v10 & 0x1F) == 4)
        {
          v45 = v6;
          v53 = *(v9 + 4);
          v54 = (v53 >> 9) & 0x1FFFF;
          v24 = (v54 << (v53 >> 26));
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v55 = VRTraceErrorLogLevelToCSTR();
            v56 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              *&buf[4] = v55;
              *&buf[12] = 2080;
              *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
              *&buf[22] = 1024;
              *&buf[24] = 711;
              *&buf[28] = 1024;
              *&buf[30] = v54 << (v53 >> 26);
              *&buf[34] = 1024;
              *&buf[36] = (v53 >> 9) & 0x1FFFF;
              *&buf[40] = 1024;
              *&buf[42] = v53 >> 26;
              *&buf[46] = 1024;
              *&buf[48] = v53 & 0x1FF;
              _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received TMMBN:%d, mantissa:%d, exponent:%d, overhead:%d", buf, 0x34u);
            }
          }

          [(VCVideoStreamRateAdaptation *)self->_rateAdaptation receivedTMMBN:(v54 << (v53 >> 26)), v68];
        }

        else
        {
          if ((v10 & 0x1F) != 3)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_77;
            }

            v57 = VRTraceErrorLogLevelToCSTR();
            v58 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_77;
            }

            v59 = *v9 & 0x1F;
            *buf = 136315906;
            *&buf[4] = v57;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
            *&buf[22] = 1024;
            *&buf[24] = 715;
            *&buf[28] = 1024;
            *&buf[30] = v59;
            v14 = v58;
            v15 = " [%s] %s:%d Received unknown RTCP RTPFB:%d";
            goto LABEL_67;
          }

          v24 = v7;
          v45 = v6;
          v75 = 0u;
          memset(v76, 0, 88);
          memset(buf, 0, sizeof(buf));
          v46 = *(v9 + 4);
          v47 = (v46 >> 9) & 0x1FFFF;
          *buf = 16;
          v70 = v47 << (v46 >> 26);
          *&buf[48] = [(VCVideoReceiverDelegate *)[(VCVideoReceiverBase *)self delegate] vcVideoReceiver:self receivedTMMBR:v70];
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v48 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *v79 = v68;
              *&v79[4] = v48;
              *&v79[12] = 2080;
              *&v79[14] = "[VCVideoStreamReceiver processVideoRTCP]";
              *&v79[22] = 1024;
              *&v79[24] = 700;
              *&v79[28] = 1024;
              *&v79[30] = v47 << (v46 >> 26);
              *&v79[34] = 1024;
              *&v79[36] = (v46 >> 9) & 0x1FFFF;
              v80 = 1024;
              v81 = v46 >> 26;
              v82 = 1024;
              v83 = v46 & 0x1FF;
              v84 = 1024;
              v85 = *&buf[48];
              _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received TMMBR:%d, mantissa:%d, exponent:%d, overhead:%d adjusted TMMBN bitrate:%d", v79, 0x3Au);
            }
          }

          RTPSendControlPacket(self->_hRTP, buf);
        }

        v6 = v45;
      }

      else
      {
        if (v11 != 206)
        {
          goto LABEL_54;
        }

        v24 = v7;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *v9 & 0x1F;
            *buf = 136315906;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
            *&buf[22] = 1024;
            *&buf[24] = 669;
            *&buf[28] = 1024;
            *&buf[30] = v27;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received RTCP PSFB:%d", buf, 0x22u);
          }
        }

        v28 = *v9 & 0x1F;
        if (v28 == 4)
        {
          if (VRTraceGetErrorLogLevelForModule() > 6)
          {
            v29 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              lastFIRArrivalTime = self->_lastFIRArrivalTime;
              [(VCVideoReceiverBase *)self roundTripTime];
              *buf = 136316418;
              *&buf[4] = v29;
              *&buf[12] = 2080;
              *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
              *&buf[22] = 1024;
              *&buf[24] = 672;
              *&buf[28] = 2048;
              *&buf[30] = v5;
              *&buf[38] = 2048;
              *&buf[40] = lastFIRArrivalTime;
              *&buf[48] = 2048;
              *&buf[50] = v32;
              _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d currentTime=%.3f, lastFIRArrivalTime=%.3f, dRTT=%.3f", buf, 0x3Au);
            }
          }

          v7 = v24;
          v60 = self->_lastFIRArrivalTime;
          if (v60 == 0.0 || (v61 = v5 - v60, [(VCVideoReceiverBase *)self roundTripTime], v61 >= v62 + v62))
          {
            self->_lastFIRArrivalTime = v5;
            v6 = 1;
LABEL_76:
            v71 = 4;
            goto LABEL_77;
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_76;
          }

          v63 = VRTraceErrorLogLevelToCSTR();
          v64 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v63;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
            *&buf[22] = 1024;
            *&buf[24] = 675;
            _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignoring too many FIR", buf, 0x1Cu);
          }

          v71 = 4;
        }

        else
        {
          v71 = *v9 & 0x1F;
          v6 = ((v28 - 1) < 2) | v6;
        }
      }

      v7 = v24;
LABEL_77:
      v65 = v8++ - 1;
      if (v65 >= v87)
      {
        if (v7)
        {
          kdebug_trace();
          v3 = v69;
          if ((v6 & 1) == 0)
          {
LABEL_84:
            (self->_rtcpPacketsCallback)(self->_rtcpContext, &v86);
            RTCPCleanupPacketList(&v86);
            return v3;
          }
        }

        else
        {
          v3 = v69;
          kdebug_trace();
          if ((v6 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        v66 = MEMORY[0x1E1289F20](&self->super._delegate);
        [v66 vcVideoReceiverRequestKeyFrame:self rtcpPSFBType:v71];

        goto LABEL_84;
      }
    }

    if (v10 >> 8 > 0xC7)
    {
      if (v11 == 200)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v38;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
            *&buf[22] = 1024;
            *&buf[24] = 643;
            _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received RTCP SR", buf, 0x1Cu);
          }
        }

        v40 = *(v9 + 4);
        v41 = NTPToMicro(*(v9 + 3) | (*(v9 + 2) << 32));
        [(VCVideoStreamReceiver *)self processReceptionReportBlock:v9 + 14 blockCount:*v9 & 0x1F arrivalNTPTime:v86];
        if (self->super._mediaStreamSynchronizer)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v42 = VRTraceErrorLogLevelToCSTR();
            v43 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              mediaStreamSynchronizer = self->super._mediaStreamSynchronizer;
              *buf = 136316674;
              *&buf[4] = v42;
              *&buf[12] = 2080;
              *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
              *&buf[22] = 1024;
              *&buf[24] = 654;
              *&buf[28] = 2048;
              *&buf[30] = self;
              *&buf[38] = 2048;
              *&buf[40] = mediaStreamSynchronizer;
              *&buf[48] = 2048;
              *&buf[50] = v41;
              *&buf[58] = 1024;
              *&buf[60] = v40;
              _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoStreamReceiver (%p) updating MediaStreamSynchronizer (%p) with ntpTime=%.6f and rtpTimeStamp=%u", buf, 0x40u);
            }
          }

          VCMediaStreamSynchronizer_updateDestinationNTPTime(self->super._mediaStreamSynchronizer, v40, v41);
        }

        goto LABEL_77;
      }

      if (v11 != 201)
      {
        goto LABEL_54;
      }

      [(VCVideoStreamReceiver *)self processReceptionReportBlock:v9 + 4 blockCount:v10 & 0x1F arrivalNTPTime:v86];
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_77;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
      *&buf[22] = 1024;
      *&buf[24] = 661;
      v14 = v23;
      v15 = " [%s] %s:%d Received RTCP RR";
      goto LABEL_39;
    }

    if (v11 == 192)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_77;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
      *&buf[22] = 1024;
      *&buf[24] = 720;
      v14 = v34;
      v15 = " [%s] %s:%d Received RTCP FIR RFC 2032";
      goto LABEL_39;
    }

    if (v11 == 193)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_77;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
      *&buf[22] = 1024;
      *&buf[24] = 724;
      v14 = v13;
      v15 = " [%s] %s:%d Received RTCP NACK RFC 2032";
      goto LABEL_39;
    }

LABEL_54:
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_77;
    }

    v50 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    v52 = *(v9 + 1);
    *buf = 136315906;
    *&buf[4] = v50;
    *&buf[12] = 2080;
    *&buf[14] = "[VCVideoStreamReceiver processVideoRTCP]";
    *&buf[22] = 1024;
    *&buf[24] = 755;
    *&buf[28] = 1024;
    *&buf[30] = v52;
    v14 = v51;
    v15 = " [%s] %s:%d Received unknown RTCP packet type:%d";
LABEL_67:
    v37 = 34;
LABEL_68:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v37);
    goto LABEL_77;
  }

  return v3;
}

- (int)scheduleDecodeForFrameWithBuffer:(VCVideoReceiverSampleBuffer_t *)buffer timestamp:(unsigned int)timestamp hostTime:(double)time showFrame:(BOOL)frame
{
  frameCopy = frame;
  v33 = *MEMORY[0x1E69E9840];
  var0 = buffer->var6.var0;
  if (var0)
  {
    formatDescription = self->_formatDescription;
    if (formatDescription)
    {
      CFRelease(formatDescription);
      self->_formatDescription = 0;
    }

    var1 = buffer->var6.var1;
    v14 = buffer->var7.var1;
    var2 = buffer->var7.var2;
    parameterSetPointers.duration.value = buffer->var6.var2;
    *&parameterSetPointers.duration.timescale = var2;
    parameterSetSizes.value = var1;
    *&parameterSetSizes.timescale = v14;
    formatDescriptionOut.value = 0;
    if (CMVideoFormatDescriptionCreateFromH264ParameterSets(*MEMORY[0x1E695E480], 2uLL, &parameterSetPointers, &parameterSetSizes, 4, &formatDescriptionOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStreamReceiver scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:];
        }
      }
    }

    value = formatDescriptionOut.value;
    self->_formatDescription = formatDescriptionOut.value;
    if (!value)
    {
      [VCVideoStreamReceiver scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:];
      return parameterSetPointers.duration.value;
    }
  }

  v30 = **&MEMORY[0x1E6960CF0];
  v29 = *(MEMORY[0x1E6960CF0] + 48);
  if (self->super._mediaStreamSynchronizer)
  {
    v16 = *(MEMORY[0x1E6960CF0] + 24);
    v17 = *(MEMORY[0x1E6960CF0] + 32);
    epoch = *(MEMORY[0x1E6960CF0] + 40);
    CMTimeMake(&v29, timestamp, 1);
  }

  else
  {
    memset(&parameterSetPointers, 170, 24);
    CMTimeMake(&parameterSetPointers.duration, timestamp, 90000);
    p_lastFrameTime = &self->_lastFrameTime;
    if (self->_receivedFirstRemoteFrame)
    {
      memset(&parameterSetSizes, 170, sizeof(parameterSetSizes));
      formatDescriptionOut = parameterSetPointers.duration;
      *&rhs.value = *&p_lastFrameTime->value;
      rhs.epoch = self->_lastFrameTime.epoch;
      CMTimeSubtract(&parameterSetSizes, &formatDescriptionOut, &rhs);
      rhs = self->_lastDisplayTime;
      v26 = parameterSetSizes;
      CMTimeAdd(&formatDescriptionOut, &rhs, &v26);
      v17 = *&formatDescriptionOut.timescale;
      v16 = formatDescriptionOut.value;
      epoch = formatDescriptionOut.epoch;
    }

    else
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&parameterSetSizes, HostTimeClock);
      v16 = parameterSetSizes.value;
      v17 = *&parameterSetSizes.timescale;
      epoch = parameterSetSizes.epoch;
    }

    self->_lastDisplayTime.value = v16;
    *&self->_lastDisplayTime.timescale = v17;
    self->_lastDisplayTime.epoch = epoch;
    *&p_lastFrameTime->value = *&parameterSetPointers.duration.value;
    self->_lastFrameTime.epoch = parameterSetPointers.duration.epoch;
    v29 = **&MEMORY[0x1E6960C70];
    CMTimeMake(&v30, 1, 1);
  }

  v21 = self->_formatDescription;
  v22 = buffer->var2;
  parameterSetPointers.duration = v30;
  parameterSetPointers.presentationTimeStamp.value = v16;
  *&parameterSetPointers.presentationTimeStamp.timescale = v17;
  parameterSetPointers.presentationTimeStamp.epoch = epoch;
  parameterSetPointers.decodeTimeStamp = v29;
  v23 = VideoUtil_CreateSampleFromBuffer(v22, &parameterSetPointers, v21);
  if (!v23)
  {
    [VCVideoStreamReceiver scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:];
    return parameterSetPointers.duration.value;
  }

  v24 = v23;
  if (var0)
  {
    self->_lastKeyFrameSampleBufferSize = CMBlockBufferGetDataLength(buffer->var2);
    [(VCVideoStreamReceiver *)self reportingVideoStreamEvent:229];
    [(VCVideoStreamReceiver *)self updateVideoStallStatus:0];
  }

  if (self->super._mediaStreamSynchronizer)
  {
    if (CMBufferQueueEnqueue(self->_videoQueue, v24))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStreamReceiver scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:];
        }
      }
    }

    else
    {
      VCMediaStreamSynchronizer_scheduleDestinationPlaybackWithRTPTimestamp(self->super._mediaStreamSynchronizer, timestamp);
    }
  }

  else
  {
    [(VCVideoStreamReceiver *)self decodeFrame:v24 showFrame:frameCopy];
  }

  CFRelease(v24);
  return 0;
}

- (void)reportVideoStallStatus:(BOOL)status
{
  statusCopy = status;
  v9 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    valuePtr = statusCopy;
    v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v6, @"VCSPVideoDegraded", v7);
    CFRelease(v7);
    reportingGenericEvent();
    CFRelease(v6);
  }

  else
  {
    [VCVideoStreamReceiver reportVideoStallStatus:];
  }
}

- (void)updateVideoStallStatus:(BOOL)status
{
  statusCopy = status;
  v6 = micro();
  videoStallStartTime = self->_videoStallStartTime;
  if (!statusCopy)
  {
    if (videoStallStartTime <= 0.0)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v8 = ((v6 - videoStallStartTime) * 1000.0 + 0.5);
    atomic_fetch_add_explicit(&self->_videoStallDurationMillis, v8, memory_order_relaxed);
    v6 = 0.0;
LABEL_6:
    self->_videoStallStartTime = v6;
    [(VCVideoStreamReceiver *)self reportVideoStallStatus:statusCopy, v5];
    v5 = v8;
    goto LABEL_8;
  }

  v8 = 0;
  v5 = 0;
  if (videoStallStartTime == 0.0)
  {
    goto LABEL_6;
  }

LABEL_8:
  rateAdaptation = self->_rateAdaptation;

  [(VCVideoStreamRateAdaptation *)rateAdaptation updateVideoStall:statusCopy withStallDuration:v5, v6];
}

- (int)createDecodeSession:(opaqueCMFormatDescription *)session
{
  v85[4] = *MEMORY[0x1E69E9840];
  v71 = decoderFrameCallback;
  selfCopy = self;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    [(VCVideoStreamReceiver *)self createDecodeSession:v85, buf];
    goto LABEL_88;
  }

  v4 = Mutable;
  v8 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
  valuePtr = 22;
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (!v9)
  {
LABEL_88:
    [(VCVideoStreamReceiver *)self createDecodeSession:v85, buf];
    goto LABEL_89;
  }

  v3 = v9;
  v10 = CFDictionaryCreateMutable(v6, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = v10;
    v12 = VCFeatureFlagManager_UseOutOfProcessVideoDecoding();
    v13 = objc_opt_class();
    if (v12)
    {
      if (v13 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_22;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315906;
        v74 = v17;
        v75 = 2080;
        v76 = "[VCVideoStreamReceiver createDecodeSession:]";
        v77 = 1024;
        v78 = 952;
        v79 = 2112;
        v80 = v3;
        v19 = " [%s] %s:%d Adding kVTDecompressionSessionOption_FigThreadPriorityOfClientThread=%@ to decompressionSessionOptions";
        v20 = v18;
        v21 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_22;
        }

        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136316418;
        v74 = v28;
        v75 = 2080;
        v76 = "[VCVideoStreamReceiver createDecodeSession:]";
        v77 = 1024;
        v78 = 952;
        v79 = 2112;
        v80 = v14;
        v81 = 2048;
        selfCopy5 = self;
        v83 = 2112;
        v84 = v3;
        v19 = " [%s] %s:%d %@(%p) Adding kVTDecompressionSessionOption_FigThreadPriorityOfClientThread=%@ to decompressionSessionOptions";
        v20 = v29;
        v21 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_22:
      CFDictionarySetValue(v11, *MEMORY[0x1E6983A88], v3);
      goto LABEL_29;
    }

    v15 = MEMORY[0x1E6983A78];
    if (v13 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v24 = *v15;
      *buf = 136315906;
      v74 = v22;
      v75 = 2080;
      v76 = "[VCVideoStreamReceiver createDecodeSession:]";
      v77 = 1024;
      v78 = 955;
      v79 = 2112;
      v80 = v24;
      v25 = " [%s] %s:%d Adding kVTDecompressionSessionOption_AllowClientProcessDecode=%@ to decompressionSessionOptions";
      v26 = v23;
      v27 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v32 = *v15;
      *buf = 136316418;
      v74 = v30;
      v75 = 2080;
      v76 = "[VCVideoStreamReceiver createDecodeSession:]";
      v77 = 1024;
      v78 = 955;
      v79 = 2112;
      v80 = v16;
      v81 = 2048;
      selfCopy5 = self;
      v83 = 2112;
      v84 = v32;
      v25 = " [%s] %s:%d %@(%p) Adding kVTDecompressionSessionOption_AllowClientProcessDecode=%@ to decompressionSessionOptions";
      v26 = v31;
      v27 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
LABEL_28:
    CFDictionaryAddValue(v11, *v15, v8);
LABEL_29:
    v68 = v11;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v85[0] = 0;
        asprintf(v85, "%s", "<nil>");
        if (v85[0])
        {
          v64 = v3;
          v66 = v4;
          __lasts = 0;
          v34 = strtok_r(v85[0], "\n", &__lasts);
          v35 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *v35;
              if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v74 = v36;
                v75 = 2080;
                v76 = "[VCVideoStreamReceiver createDecodeSession:]";
                v77 = 1024;
                v78 = 960;
                v79 = 2080;
                v80 = "decoderSpecification:";
                v81 = 2080;
                selfCopy5 = v34;
                _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v34 = strtok_r(0, "\n", &__lasts);
          }

          while (v34);
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v33 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
      }

      else
      {
        v33 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v85[0] = 0;
        asprintf(v85, "%s(%p) %s", [(__CFString *)v33 UTF8String], self, "<nil>");
        if (v85[0])
        {
          v64 = v3;
          v66 = v4;
          __lasts = 0;
          v38 = strtok_r(v85[0], "\n", &__lasts);
          v39 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v40 = VRTraceErrorLogLevelToCSTR();
              v41 = *v39;
              if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v74 = v40;
                v75 = 2080;
                v76 = "[VCVideoStreamReceiver createDecodeSession:]";
                v77 = 1024;
                v78 = 960;
                v79 = 2080;
                v80 = "decoderSpecification:";
                v81 = 2080;
                selfCopy5 = v38;
                _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v38 = strtok_r(0, "\n", &__lasts);
          }

          while (v38);
LABEL_48:
          free(v85[0]);
          v3 = v64;
          v4 = v66;
        }
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v85[0] = 0;
        asprintf(v85, "%s", [-[__CFDictionary description](v11 "description")]);
        if (v85[0])
        {
          v65 = v3;
          v67 = v4;
          __lasts = 0;
          v43 = strtok_r(v85[0], "\n", &__lasts);
          v44 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v45 = VRTraceErrorLogLevelToCSTR();
              v46 = *v44;
              if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v74 = v45;
                v75 = 2080;
                v76 = "[VCVideoStreamReceiver createDecodeSession:]";
                v77 = 1024;
                v78 = 961;
                v79 = 2080;
                v80 = "decompressionSessionOptions:";
                v81 = 2080;
                selfCopy5 = v43;
                _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v43 = strtok_r(0, "\n", &__lasts);
          }

          while (v43);
          goto LABEL_68;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v42 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
      }

      else
      {
        v42 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v85[0] = 0;
        asprintf(v85, "%s(%p) %s", -[__CFString UTF8String](v42, "UTF8String"), self, [-[__CFDictionary description](v11 "description")]);
        if (v85[0])
        {
          v65 = v3;
          v67 = v4;
          __lasts = 0;
          v47 = strtok_r(v85[0], "\n", &__lasts);
          v48 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v49 = VRTraceErrorLogLevelToCSTR();
              v50 = *v48;
              if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v74 = v49;
                v75 = 2080;
                v76 = "[VCVideoStreamReceiver createDecodeSession:]";
                v77 = 1024;
                v78 = 961;
                v79 = 2080;
                v80 = "decompressionSessionOptions:";
                v81 = 2080;
                selfCopy5 = v47;
                _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v47 = strtok_r(0, "\n", &__lasts);
          }

          while (v47);
LABEL_68:
          free(v85[0]);
          v3 = v65;
          v4 = v67;
        }
      }
    }

    v51 = VTDecompressionSessionCreateWithOptions();
    if (v51 || !self->_decompressionSession)
    {
      [VCVideoStreamReceiver createDecodeSession:];
      goto LABEL_84;
    }

    if (!VCFeatureFlagManager_UseOutOfProcessVideoDecoding())
    {
LABEL_84:
      CFRelease(v3);
      goto LABEL_85;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_83;
      }

      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      *buf = 136315906;
      v74 = v53;
      v75 = 2080;
      v76 = "[VCVideoStreamReceiver createDecodeSession:]";
      v77 = 1024;
      v78 = 966;
      v79 = 2112;
      v80 = v3;
      v55 = " [%s] %s:%d Setting figThreadPriority=%@ as kVTDecompressionPropertyKey_FigThreadPriorityOfConsistentThreadCallingDecodeFrame";
      v56 = v54;
      v57 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v52 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
      }

      else
      {
        v52 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_83;
      }

      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      *buf = 136316418;
      v74 = v58;
      v75 = 2080;
      v76 = "[VCVideoStreamReceiver createDecodeSession:]";
      v77 = 1024;
      v78 = 966;
      v79 = 2112;
      v80 = v52;
      v81 = 2048;
      selfCopy5 = self;
      v83 = 2112;
      v84 = v3;
      v55 = " [%s] %s:%d %@(%p) Setting figThreadPriority=%@ as kVTDecompressionPropertyKey_FigThreadPriorityOfConsistentThreadCallingDecodeFrame";
      v56 = v59;
      v57 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
LABEL_83:
    VTSessionSetProperty(self->_decompressionSession, *MEMORY[0x1E6983940], v3);
    v11 = v68;
    goto LABEL_84;
  }

LABEL_89:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamReceiver createDecodeSession:];
      }
    }

    v51 = 0;
    v11 = v3;
  }

  else
  {
    v11 = v3;
    if (objc_opt_respondsToSelector())
    {
      v61 = [(VCVideoStreamReceiver *)self performSelector:sel_logPrefix];
    }

    else
    {
      v61 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v62 = VRTraceErrorLogLevelToCSTR();
      v63 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v74 = v62;
        v75 = 2080;
        v76 = "[VCVideoStreamReceiver createDecodeSession:]";
        v77 = 1024;
        v78 = 950;
        v79 = 2112;
        v80 = v61;
        v81 = 2048;
        selfCopy5 = self;
        _os_log_error_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create decompressionSessionOptions", buf, 0x30u);
      }
    }

    v51 = 0;
  }

LABEL_85:
  CFRelease(v11);
  CFRelease(v4);
  return v51;
}

- (void)teardownDecodeSession:(BOOL)session
{
  sessionCopy = session;
  pthread_mutex_lock(&self->_decompressionSessionMutex);
  decompressionSession = self->_decompressionSession;
  if (decompressionSession)
  {
    if (sessionCopy)
    {
      VTDecompressionSessionWaitForAsynchronousFrames(decompressionSession);
      decompressionSession = self->_decompressionSession;
    }

    VTDecompressionSessionInvalidate(decompressionSession);
    v6 = self->_decompressionSession;
    if (v6)
    {
      CFRelease(v6);
      self->_decompressionSession = 0;
    }
  }

  pthread_mutex_unlock(&self->_decompressionSessionMutex);
}

- (int)decodeFrame:(opaqueCMSampleBuffer *)frame showFrame:(BOOL)showFrame
{
  showFrameCopy = showFrame;
  v21 = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(frame);
  decompressionSession = self->_decompressionSession;
  if (!decompressionSession)
  {
    goto LABEL_18;
  }

  if (!VTDecompressionSessionCanAcceptFormatDescription(decompressionSession, FormatDescription))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCVideoStreamReceiver decodeFrame:showFrame:]";
        v19 = 1024;
        v20 = 1004;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resetting VTDecompressionSession due to format change", buf, 0x1Cu);
      }
    }

    [(VCVideoStreamReceiver *)self teardownDecodeSession:1];
  }

  v11 = self->_decompressionSession;
  if (!v11)
  {
LABEL_18:
    if ([(VCVideoStreamReceiver *)self createDecodeSession:FormatDescription])
    {
      [VCVideoStreamReceiver decodeFrame:showFrame:];
      return *buf;
    }

    v11 = self->_decompressionSession;
  }

  if (showFrameCopy)
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  infoFlagsOut = -1431655766;
  VTDecompressionSessionDecodeFrame(v11, frame, v12, 0, &infoFlagsOut);
  return 0;
}

- (BOOL)canDequeue:(opaqueCMBufferQueue *)dequeue forTimestamp:(unsigned int)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v13.value) = 136316162;
        *(&v13.value + 4) = v6;
        LOWORD(v13.flags) = 2080;
        *(&v13.flags + 2) = "[VCVideoStreamReceiver canDequeue:forTimestamp:]";
        HIWORD(v13.epoch) = 1024;
        v14 = 1023;
        v15 = 1024;
        timestampCopy2 = timestamp;
        v17 = 2048;
        BufferCount = CMBufferQueueGetBufferCount(dequeue);
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d timestamp:%08X count:%ld", &v13, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v13.value) = 136316162;
      *(&v13.value + 4) = v6;
      LOWORD(v13.flags) = 2080;
      *(&v13.flags + 2) = "[VCVideoStreamReceiver canDequeue:forTimestamp:]";
      HIWORD(v13.epoch) = 1024;
      v14 = 1023;
      v15 = 1024;
      timestampCopy2 = timestamp;
      v17 = 2048;
      BufferCount = CMBufferQueueGetBufferCount(dequeue);
      _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d timestamp:%08X count:%ld", &v13, 0x2Cu);
    }
  }

  if (CMBufferQueueIsEmpty(dequeue))
  {
LABEL_8:
    LOBYTE(v9) = 0;
    return v9;
  }

  Head = CMBufferQueueGetHead(dequeue);
  memset(&v13, 170, sizeof(v13));
  CMSampleBufferGetDecodeTimeStamp(&v13, Head);
  if ((v13.flags & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCVideoStreamReceiver canDequeue:forTimestamp:];
    }

    goto LABEL_8;
  }

  LOBYTE(v9) = LODWORD(v13.value) == timestamp || LODWORD(v13.value) - timestamp > 0x7FFFFFFE;
  return v9;
}

- (void)dequeueAndDecodeForTimestamp:(unsigned int)timestamp
{
  v3 = *&timestamp;
  v13 = *MEMORY[0x1E69E9840];
  v5 = CMBufferQueueDequeueAndRetain(self->_videoQueue);
  if (v5)
  {
    v6 = v5;
    v7 = [(VCVideoStreamReceiver *)self canDequeue:self->_videoQueue forTimestamp:v3];
    v8 = *(MEMORY[0x1E6960CF0] + 48);
    *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&sampleTimingArray.decodeTimeStamp.value = v8;
    sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
    v9 = *(MEMORY[0x1E6960CF0] + 16);
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CF0];
    *&sampleTimingArray.duration.epoch = v9;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&sampleTimingArray.presentationTimeStamp, HostTimeClock);
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    CMTimeMake(&v11, 1, 1);
    sampleTimingArray.duration = v11;
    v11.value = 0;
    CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], v6, 1, &sampleTimingArray, &v11);
    CFRelease(v6);
    if (v11.value)
    {
      [(VCVideoStreamReceiver *)self decodeFrame:v11.value showFrame:!v7];
      CFRelease(v11.value);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamReceiver dequeueAndDecodeForTimestamp:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamReceiver dequeueAndDecodeForTimestamp:];
    }
  }
}

- (void)handleAlarmForTimeStamp:(unsigned int)stamp
{
  v3 = *&stamp;
  if ([(VCVideoStreamReceiver *)self canDequeue:self->_videoQueue forTimestamp:*&stamp])
  {
    do
    {
      [(VCVideoStreamReceiver *)self dequeueAndDecodeForTimestamp:v3];
    }

    while ([(VCVideoStreamReceiver *)self canDequeue:self->_videoQueue forTimestamp:v3]);
  }
}

- (BOOL)handleRemoteVideoAttributesChange:(__CVBuffer *)change
{
  v5 = objc_alloc_init(VideoAttributes);
  [(VideoAttributes *)v5 setOrientation:self->super._remoteVideoOrientation];
  [(VideoAttributes *)v5 setCamera:self->_remoteVideoCamera];
  [(VideoAttributes *)v5 setVideoMirrored:self->_remoteVideoMirrored];
  Width = CVPixelBufferGetWidth(change);
  [(VideoAttributes *)v5 setRatio:Width, CVPixelBufferGetHeight(change)];
  [self->_remoteVideoAttributes scaleFactor];
  [(VideoAttributes *)v5 setScaleFactor:?];
  remoteVideoAttributes = self->_remoteVideoAttributes;
  if (remoteVideoAttributes)
  {
    if (VCVideoAttributes_IsEqual(remoteVideoAttributes, v5))
    {

      return 0;
    }
  }

  self->_remoteVideoAttributes = v5;
  return 1;
}

- (int)showDecodedFrame:(__CVBuffer *)frame atTime:(id *)time
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(VCVideoStreamReceiver *)self handleRemoteVideoAttributesChange:?])
  {
    [(VCVideoStreamReceiver *)self reportingVideoStreamEvent:211];
    remoteVideoAttributes = self->_remoteVideoAttributes;
  }

  else
  {
    remoteVideoAttributes = 0;
  }

  delegate = self->super._delegate;
  receivedFirstRemoteFrame = self->_receivedFirstRemoteFrame;
  didReceiveRemoteFrame = self->super._delegateFunctions.didReceiveRemoteFrame;
  v12 = *&time->var0;
  var3 = time->var3;
  didReceiveRemoteFrame(delegate, frame, &v12, remoteVideoAttributes, 0, !receivedFirstRemoteFrame);
  if (!self->_receivedFirstRemoteFrame)
  {
    self->_receivedFirstRemoteFrame = 1;
  }

  if (self->_enableReceiveBitstreamDump)
  {
    DumpFrameYuvWithTimestamp(1, frame, time->var0);
  }

  return 0;
}

- (void)gatherRealtimeStats:(__CFDictionary *)stats
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = selectDestinationForRTMetrics();
  v5 = micro();
  if (self->_reportingIntervalStartTime == 0.0)
  {
    self->_reportingIntervalStartTime = v5;
  }

  if (self->_reportingLastUpdateTime > 0.0)
  {
    [(VCMediaStreamStats *)self->_stats updateMinMaxSinceTime:?];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(VCMediaStreamStats *)self->_stats framerate];
        v9 = v8;
        bitrateKbps = [(VCMediaStreamStats *)self->_stats bitrateKbps];
        *buf = 136316418;
        v42 = v6;
        v43 = 2080;
        v44 = "[VCVideoStreamReceiver gatherRealtimeStats:]";
        v45 = 1024;
        v46 = 1149;
        v47 = 2048;
        selfCopy = self;
        v49 = 2048;
        v50 = v9;
        v51 = 1024;
        v52 = bitrateKbps;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VideoStreamReceiver [%p] videoRxFrameRate=%f, videoRxBitrate=%d kbps", buf, 0x36u);
      }
    }
  }

  self->_reportingLastUpdateTime = v5;
  if (v4)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", [(VCVideoStreamRateAdaptation *)self->_rateAdaptation sendTmmbrBitrate]);
    CFDictionaryAddValue(v4, @"VCVSTMMB", v12);
    CFRelease(v12);
    v13 = CFStringCreateWithFormat(v11, 0, @"%d", [(VCVideoStreamRateAdaptation *)self->_rateAdaptation operatingBitrate]);
    CFDictionaryAddValue(v4, @"VCVSRxOperatingBitrate", v13);
    CFRelease(v13);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation packetLossPercentage];
    v15 = CFStringCreateWithFormat(v11, 0, @"%.5f", v14);
    CFDictionaryAddValue(v4, @"VCVSRxPacketLossPercentage", v15);
    CFRelease(v15);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation roundTripTime];
    v17 = CFStringCreateWithFormat(v11, 0, @"%.5f", v16);
    CFDictionaryAddValue(v4, @"VCVSRxRoundTripTime", v17);
    CFRelease(v17);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation maxOWRD];
    v19 = CFStringCreateWithFormat(v11, 0, @"%.5f", v18);
    CFDictionaryAddValue(v4, @"VCVSRxMaxOWRD", v19);
    CFRelease(v19);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation setMaxOWRD:0.0];
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation nowrd];
    v21 = CFStringCreateWithFormat(v11, 0, @"%.5f", v20);
    CFDictionaryAddValue(v4, @"VCVSRxNOWRD", v21);
    CFRelease(v21);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation nowrdShort];
    v23 = CFStringCreateWithFormat(v11, 0, @"%.5f", v22);
    CFDictionaryAddValue(v4, @"VCVSRxNOWRDSHORT", v23);
    CFRelease(v23);
    [(VCVideoStreamRateAdaptation *)self->_rateAdaptation nowrdAcc];
    v25 = CFStringCreateWithFormat(v11, 0, @"%.5f", v24);
    CFDictionaryAddValue(v4, @"VCVSRxNOWRDACC", v25);
    CFRelease(v25);
    v26 = CFStringCreateWithFormat(v11, 0, @"%u", atomic_fetch_and_explicit(&self->_videoStallDurationMillis, 0, memory_order_relaxed));
    CFDictionaryAddValue(v4, @"VCVSRxVideoStallDuration", v26);
    CFRelease(v26);
    v27 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats maxFrameDurationMillis]);
    CFDictionaryAddValue(v4, @"VCVSRxMaxFrameDuration", v27);
    CFRelease(v27);
    [(VCMediaStreamStats *)self->_stats setMaxFrameDurationMillis:0];
    v28 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats getBitrateKbpsSinceTime:self->_reportingIntervalStartTime]);
    CFDictionaryAddValue(v4, @"VCVSRxAvgBitrate", v28);
    CFRelease(v28);
    v29 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats maxBitrateKbps]);
    CFDictionaryAddValue(v4, @"VCVSRxMaxBitrate", v29);
    CFRelease(v29);
    [(VCMediaStreamStats *)self->_stats setMaxBitrateKbps:0];
    v30 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats minBitrateKbps]);
    CFDictionaryAddValue(v4, @"VCVSRxMinBitrate", v30);
    CFRelease(v30);
    [(VCMediaStreamStats *)self->_stats setMinBitrateKbps:0xFFFFFFFFLL];
    [(VCMediaStreamStats *)self->_stats getFramerateSinceTime:self->_reportingIntervalStartTime];
    v32 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v31);
    CFDictionaryAddValue(v4, @"VCVSRxAvgFramerate", v32);
    CFRelease(v32);
    [(VCMediaStreamStats *)self->_stats maxFramerate];
    v34 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v33);
    CFDictionaryAddValue(v4, @"VCVSRxMaxFramerate", v34);
    CFRelease(v34);
    [(VCMediaStreamStats *)self->_stats setMaxFramerate:0.0];
    [(VCMediaStreamStats *)self->_stats minFramerate];
    v36 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v35);
    CFDictionaryAddValue(v4, @"VCVSRxMinFramerate", v36);
    CFRelease(v36);
    [(VCMediaStreamStats *)self->_stats setMinFramerate:1.79769313e308];
    self->_reportingIntervalStartTime = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      v39 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [-[__CFDictionary description](v4 "description")];
          *buf = 136315906;
          v42 = v37;
          v43 = 2080;
          v44 = "[VCVideoStreamReceiver gatherRealtimeStats:]";
          v45 = 1024;
          v46 = 1228;
          v47 = 2080;
          selfCopy = v40;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rx RTCReporting:%s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [(VCVideoStreamReceiver *)v37 gatherRealtimeStats:v4, v38];
      }
    }
  }
}

- (void)reportingVideoStreamEvent:(unsigned __int16)event
{
  eventCopy = event;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  switch(eventCopy)
  {
    case 229:
      v11 = CFStringCreateWithFormat(v5, 0, @"%zu", self->_lastKeyFrameSampleBufferSize);
      v12 = @"VCVSKeyFrameSize";
      break;
    case 223:
      [(VCVideoStreamRateAdaptation *)self->_rateAdaptation packetLossPercentage];
      v11 = CFStringCreateWithFormat(v5, 0, @"%.5f", v13);
      v12 = @"VCVSRxPacketLossPercentage";
      break;
    case 211:
      [self->_remoteVideoAttributes ratio];
      v8 = CFStringCreateWithFormat(v5, 0, @"%f", v7);
      CFDictionaryAddValue(Mutable, @"VCVSRxVideoWidth", v8);
      CFRelease(v8);
      [self->_remoteVideoAttributes ratio];
      v10 = CFStringCreateWithFormat(v5, 0, @"%f", v9);
      CFDictionaryAddValue(Mutable, @"VCVSRxVideoHeight", v10);
      CFRelease(v10);
      v11 = CFStringCreateWithFormat(v5, 0, @"%u", [self->_remoteVideoAttributes orientation]);
      v12 = @"VCVSRxVideoOrientation";
      break;
    default:
      goto LABEL_8;
  }

  CFDictionaryAddValue(Mutable, v12, v11);
  CFRelease(v11);
LABEL_8:
  reportingVideoStreamEvent();

  CFRelease(Mutable);
}

- (void)handleActiveConnectionChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStreamReceiver handleActiveConnectionChange:]";
      v9 = 1024;
      v10 = 1269;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Handling active connection change is not implemented for VCVSR", &v5, 0x1Cu);
    }
  }
}

- (void)setJitterBufferMode:(int)mode
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStreamReceiver setJitterBufferMode:]";
      v9 = 1024;
      v10 = 1275;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Handling setting the jitter buffer mode is not implemented for VCVSR", &v5, 0x1Cu);
    }
  }
}

- (void)setDeferredAssemblyEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStreamReceiver setDeferredAssemblyEnabled:]";
      v9 = 1024;
      v10 = 1279;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Handling setting deferred assembly at runtime is not implemented for VCVSR", &v5, 0x1Cu);
    }
  }
}

- (void)setLooseAVSyncEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStreamReceiver setLooseAVSyncEnabled:]";
      v9 = 1024;
      v10 = 1283;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Handling setting loose av sync at runtime is not implemented for VCVSR", &v5, 0x1Cu);
    }
  }
}

- (void)initWithConfig:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x22u);
    }
  }

  *a3 = 0;
}

- (void)initWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d no delegate specified!", v2, v3, v4, v5, v6);
}

- (void)initWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d no config specified!", v2, v3, v4, v5, v6);
}

void __50__VCVideoStreamReceiver_startNetworkReceiveThread__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Network receive thread create failed (%d)", v2, v3, v4, v5);
}

- (void)processVideoRTP
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_1();
      _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x1Cu);
    }
  }

  *a2 = self;
}

- (void)scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMVideoFormatDescriptionCreateFromH264ParameterSets failed (%d)", v2, v3, v4, v5);
}

- (void)scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_11_7();
}

- (void)scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBufferQueueEnqueue failed %d", v2, v3, v4, v5);
}

- (void)scheduleDecodeForFrameWithBuffer:timestamp:hostTime:showFrame:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_11_7();
}

- (void)reportVideoStallStatus:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 859;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create reporting event dictionary", &v2, 0x1Cu);
    }
  }
}

- (void)createDecodeSession:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x32u);
    }
  }
}

- (void)createDecodeSession:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create decompressionSessionOptions", v2, v3, v4, v5, v6);
}

- (void)createDecodeSession:(uint64_t)a3 .cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_class() == a1)
  {
    VRTraceGetErrorLogLevelForModule();
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    OUTLINED_FUNCTION_28();
    *a2 = 136315650;
    *(a2 + 4) = v7;
    *(a2 + 12) = 2080;
    *(a2 + 14) = "[VCVideoStreamReceiver createDecodeSession:]";
    *(a2 + 22) = 1024;
    *(a2 + 24) = 947;
    v9 = " [%s] %s:%d Failed to create figThreadPriorityNumber";
    v10 = v8;
    v11 = a2;
    v12 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    VRTraceGetErrorLogLevelForModule();
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    *a3 = 136316162;
    *(a3 + 4) = v13;
    *(a3 + 12) = 2080;
    *(a3 + 14) = "[VCVideoStreamReceiver createDecodeSession:]";
    *(a3 + 22) = 1024;
    *(a3 + 24) = 947;
    *(a3 + 28) = 2112;
    *(a3 + 30) = v6;
    *(a3 + 38) = 2048;
    *(a3 + 40) = a1;
    v9 = " [%s] %s:%d %@(%p) Failed to create figThreadPriorityNumber";
    v10 = v14;
    v11 = a3;
    v12 = 48;
  }

  _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, v11, v12);
  __break(1u);
}

- (void)createDecodeSession:(uint64_t)a3 .cold.4(void *a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_class() == a1)
  {
    VRTraceGetErrorLogLevelForModule();
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    OUTLINED_FUNCTION_28();
    *a2 = 136315650;
    *(a2 + 4) = v7;
    *(a2 + 12) = 2080;
    *(a2 + 14) = "[VCVideoStreamReceiver createDecodeSession:]";
    *(a2 + 22) = 1024;
    *(a2 + 24) = 942;
    v9 = " [%s] %s:%d Failed to create pixelBufferAttributes";
    v10 = v8;
    v11 = a2;
    v12 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    VRTraceGetErrorLogLevelForModule();
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    *a3 = 136316162;
    *(a3 + 4) = v13;
    *(a3 + 12) = 2080;
    *(a3 + 14) = "[VCVideoStreamReceiver createDecodeSession:]";
    *(a3 + 22) = 1024;
    *(a3 + 24) = 942;
    *(a3 + 28) = 2112;
    *(a3 + 30) = v6;
    *(a3 + 38) = 2048;
    *(a3 + 40) = a1;
    v9 = " [%s] %s:%d %@(%p) Failed to create pixelBufferAttributes";
    v10 = v14;
    v11 = a3;
    v12 = 48;
  }

  _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, v11, v12);
  __break(1u);
}

- (void)decodeFrame:showFrame:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x28u);
    }
  }

  OUTLINED_FUNCTION_11_7();
}

- (void)canDequeue:forTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMSampleBufferGetDecodeTimeStamp is invalid timestamp:%u", v2, v3, v4, v5);
}

- (void)dequeueAndDecodeForTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMSampleBufferCreateCopyWithNewTiming failed %d", v2, v3, v4, v5);
}

- (void)dequeueAndDecodeForTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBufferQueueDequeueAndRetain returned null!", v2, v3, v4, v5, v6);
}

- (void)gatherRealtimeStats:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a2 "description")];
  v7 = 136315906;
  v8 = a1;
  v9 = 2080;
  OUTLINED_FUNCTION_7();
  v10 = 1228;
  v11 = v5;
  v12 = v6;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Rx RTCReporting:%s", &v7, 0x26u);
}

@end