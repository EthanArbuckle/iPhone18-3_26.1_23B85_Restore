@interface VCVideoStreamTransmitter
- (BOOL)isKeyFrame:(opaqueCMSampleBuffer *)a3;
- (BOOL)prependSPSPPS:(unint64_t *)a3 dataPointer:(char *)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5;
- (BOOL)setEncodingMode:(int)a3;
- (VCVideoStreamTransmitter)initWithConfig:(id)a3;
- (__CFDictionary)forceKeyFrameProperties;
- (int)transmitEncodedVideoFrame:(char *)a3 size:(unint64_t)a4 timestamp:(unsigned int)a5 hostTime:(double)a6 cameraStatusBits:(unsigned __int8)a7;
- (int)transmitFrameInGroups:(char *)a3 numOfPackets:(int)a4 timestamp:(unsigned int)a5 hostTime:(double)a6 cameraStatusBits:(unsigned __int8)a7;
- (int)transmitVideoPackets:(const char *)a3 packetSizes:(int *)a4 startPacket:(int)a5 packetCount:(int)a6 lastGroup:(int)a7 timestamp:(unsigned int)a8 hostTime:(double)a9 cameraStatusBits:(unsigned __int8)a10 bytesSent:(int *)a11;
- (unsigned)setTemporaryMaximumBitrate:(unsigned int)a3;
- (void)dealloc;
- (void)encodeVideoFrame:(opaqueCMSampleBuffer *)a3;
- (void)gatherRealtimeStats:(__CFDictionary *)a3;
- (void)generateKeyFrameWithFIRType:(int)a3;
- (void)handleActiveConnectionChange:(id)a3;
- (void)handleThermalLevelChange:(int)a3;
- (void)initVideoCompressionWithWidth:(unsigned int)a3 height:(unsigned int)a4 bitrate:(unsigned int)a5 keyFrameIntervalDuration:(unsigned int)a6;
- (void)reportingVideoStreamEvent:(unsigned __int16)a3;
- (void)setFECRedundancyVector:(id *)a3;
- (void)setMediaSuggestion:(VCRateControlMediaSuggestion *)a3;
- (void)setTargetBitrate:(unsigned int)a3;
- (void)startVideo;
- (void)stopVideo;
- (void)transmitEncodedVideoFrame:(opaqueCMSampleBuffer *)a3 cameraStatusBits:(unsigned __int8)a4;
- (void)updateSendStatisticsWithTimestamp:(unsigned int)a3 frameSize:(unsigned int)a4 packetsInFrame:(unsigned int)a5;
- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5;
@end

@implementation VCVideoStreamTransmitter

- (VCVideoStreamTransmitter)initWithConfig:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = VCVideoStreamTransmitter;
  v4 = [(VCVideoStreamTransmitter *)&v25 init];
  if (!v4)
  {
    goto LABEL_24;
  }

  if (!a3)
  {
    [VCVideoStreamTransmitter initWithConfig:];
LABEL_24:

    return 0;
  }

  v4->_videoCodecType = [a3 codecType];
  v4->_videoSource = [a3 videoSource];
  if ([a3 framerate] <= 0x3C && objc_msgSend(a3, "framerate"))
  {
    v4->super._targetFramerate = [a3 framerate];
  }

  v4->super._txMaxBitrate = [a3 txMaxBitrate];
  v4->super._txMinBitrate = [a3 txMinBitrate];
  v4->super._temporaryMaximumBitrate = [a3 txMinBitrate];
  if ([a3 videoResolution] == 27)
  {
    v4->super._encodingWidth = [a3 customWidth];
    v5 = [a3 customHeight];
  }

  else
  {
    +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [a3 videoResolution]);
    v4->super._encodingWidth = v6;
    v5 = v7;
  }

  v4->super._encodingHeight = v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      encodingWidth = v4->super._encodingWidth;
      encodingHeight = v4->super._encodingHeight;
      LODWORD(buf.value) = 136316162;
      *(&buf.value + 4) = v8;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "[VCVideoStreamTransmitter initWithConfig:]";
      HIWORD(buf.epoch) = 1024;
      v27 = 140;
      v28 = 1024;
      v29 = encodingWidth;
      v30 = 1024;
      v31 = encodingHeight;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d encode = %dx%d", &buf, 0x28u);
    }
  }

  v4->_stats = objc_alloc_init(VCMediaStreamStats);
  pthread_mutex_init(&v4->_xMBs, 0);
  v4->_recommendedMTU = [a3 recommendedMTU];
  v4->_statisticsCollector = [a3 statisticsCollector];
  v4->_keyFrameIntervalDuration = [a3 keyFrameInterval];
  v12 = [VCVideoRule alloc];
  v13 = v4->super._encodingWidth;
  v14 = v4->super._encodingHeight;
  *&v15 = [a3 framerate];
  v4->super._videoRule = [(VCVideoRule *)v12 initWithFrameWidth:v13 frameHeight:v14 frameRate:v15];
  v4->_dwRefreshFrameCounter = 0;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v4->_transmitterQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoStreamTransmitter.transmitterQueue", 0, CustomRootQueue);
  v17 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  if (CMBufferQueueCreate(v17, 0, CallbacksForUnsortedSampleBuffers, &v4->_bufferQueue))
  {
    [VCVideoStreamTransmitter initWithConfig:];
    goto LABEL_24;
  }

  PacketAllocator = VTU_CreatePacketAllocator([a3 recommendedMTU], v17, &v4->_videoPacketAllocator);
  if (PacketAllocator)
  {
    [VCVideoStreamTransmitter initWithConfig:?];
    goto LABEL_24;
  }

  v4->_bufferQueueSemaphore = dispatch_semaphore_create(0);
  v20 = VCRealTimeThread_Initialize(18, VCVideoStreamEncoderProc, v4, "com.apple.AVConference.VCVideoStreamTransmitter.encoderThread", 0);
  v4->_encoderThread = v20;
  if (!v20)
  {
    [VCVideoStreamTransmitter initWithConfig:];
    goto LABEL_24;
  }

  [(VCVideoStreamTransmitter *)v4 generateKeyFrameWithFIRType:0];
  v4->_forceDisableBitrateCap = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamDisableBitrateCap];
  reportingAgent = v4->_reportingAgent;
  v22 = [a3 reportingAgent];
  v4->_reportingAgent = v22;
  if (v22)
  {
    CFRetain(v22);
  }

  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  v4->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
  [a3 reportingParentID];
  reportingInheritModuleSpecificInfoFromParent();
  v4->_enableCVO = [a3 enableCVO];
  v4->_cvoExtensionID = [a3 cvoExtensionID];
  v4->super._controlInfoGenerator = VCMediaControlInfoGeneratorCreateWithType(2);
  v4->_videoRTP = *[a3 streamConfigs];
  v4->super._timestamp = 0;
  CMTimeMake(&buf, 0, 90000);
  v23 = *&buf.value;
  v4->super._latestSampleBufferTimestamp.epoch = buf.epoch;
  *&v4->super._latestSampleBufferTimestamp.value = v23;
  v4->_encodingArgPool = VCMemoryPool_CreateTyped(0x1E0uLL, 0x1070040FE648622);
  v4->_tilesPerFrame = [a3 tilesPerFrame];
  v4->super._profileLevel = [a3 profileLevel];
  v4->super._realtimeSPI.enqueueVideoFrame = VCVideoStreamTransmitter_EnqueueVideoFrame;
  v4->super._realtimeSPI.setFECRatio = VCVideoStreamTransmitter_SetFECRatio;
  v4->super._realtimeSPI.setMediaQueueSize = VCVideoStreamTransmitter_SetMediaQueueSize;
  return v4;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_xMBs);

  VCRealTimeThread_Finalize(self->_encoderThread);
  dispatch_release(self->_transmitterQueue);
  dispatch_release(self->_bufferQueueSemaphore);
  bufferQueue = self->_bufferQueue;
  if (bufferQueue)
  {
    CFRelease(bufferQueue);
  }

  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
  }

  free(self->_packetSizes);
  free(self->_packetFlags);

  VCMemoryPool_Destroy(self->_encodingArgPool);
  reportingCacheModuleSpecificInfo();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  controlInfoGenerator = self->super._controlInfoGenerator;
  if (controlInfoGenerator)
  {
    CFRelease(controlInfoGenerator);
  }

  videoPacketAllocator = self->_videoPacketAllocator;
  if (videoPacketAllocator)
  {
    CFRelease(videoPacketAllocator);
  }

  v8.receiver = self;
  v8.super_class = VCVideoStreamTransmitter;
  [(VCVideoTransmitterBase *)&v8 dealloc];
}

- (void)startVideo
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCVideoStreamTransmitter startVideo]";
      v11 = 1024;
      v12 = 224;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCVideoStreamTransmitter startVideo", buf, 0x1Cu);
    }
  }

  transmitterQueue = self->_transmitterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCVideoStreamTransmitter_startVideo__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(transmitterQueue, block);
}

uint64_t __38__VCVideoStreamTransmitter_startVideo__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 224) = 0;
  [*(a1 + 32) initVideoCompressionWithWidth:*(*(a1 + 32) + 24) height:*(*(a1 + 32) + 28) bitrate:*(*(a1 + 32) + 52) keyFrameIntervalDuration:*(*(a1 + 32) + 260)];
  VCRealTimeThread_Start(*(*(a1 + 32) + 176));

  return reportingRegisterPeriodicTaskWeak();
}

- (void)stopVideo
{
  v3[5] = *MEMORY[0x1E69E9840];
  transmitterQueue = self->_transmitterQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__VCVideoStreamTransmitter_stopVideo__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(transmitterQueue, v3);
}

intptr_t __37__VCVideoStreamTransmitter_stopVideo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 400))
  {
    reportingUnregisterPeriodicTask();
    v2 = *(a1 + 32);
  }

  VCRealTimeThread_Stop(*(v2 + 176));
  *(*(a1 + 32) + 184) = 1;
  result = dispatch_semaphore_signal(*(*(a1 + 32) + 192));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = (v4 + 416);
    result = *(v4 + 432);
    if (result != 0xFFFFFFFFLL)
    {
      result = (*(*v5 + 8))();
      v5[2] = 0xFFFFFFFFLL;
    }
  }

  return result;
}

- (void)generateKeyFrameWithFIRType:(int)a3
{
  v4 = 0;
  v19 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit(&self->_shouldGenerateKeyFrame, &v4, 1u, memory_order_relaxed, memory_order_relaxed);
  v5 = v4 == 0;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCVideoStreamTransmitter generateKeyFrameWithFIRType:]";
        v15 = 1024;
        v16 = 281;
        v17 = 1024;
        v18 = a3;
        v9 = " [%s] %s:%d key frame requested for next pixel buffer, FIRType %d.";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x22u);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v10;
      v13 = 2080;
      v14 = "[VCVideoStreamTransmitter generateKeyFrameWithFIRType:]";
      v15 = 1024;
      v16 = 283;
      v17 = 1024;
      v18 = a3;
      v9 = " [%s] %s:%d key frame was already requested, FIRType: %d";
      goto LABEL_8;
    }
  }
}

- (unsigned)setTemporaryMaximumBitrate:(unsigned int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  transmitterQueue = self->_transmitterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v7 = a3;
  dispatch_sync(transmitterQueue, block);
  return self->super._temporaryMaximumBitrate;
}

void __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 432) != 0xFFFFFFFFLL)
    {
      v4 = (a1 + 40);
      v3 = *(a1 + 40);
      if (*(v1 + 52) != v3 && *(v1 + 44) >= v3 && *(v1 + 48) <= v3)
      {
        v5 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v7 = Mutable;
          v8 = CFNumberCreate(v5, kCFNumberIntType, v4);
          if (v8)
          {
            v9 = v8;
            CFArrayAppendValue(v7, v8);
            CFRelease(v9);
            v10 = *(a1 + 32);
            if (v10)
            {
              v11 = (v10 + 416);
              v12 = v11[2];
              if (v12 != 0xFFFFFFFFLL)
              {
                (*(*v11 + 24))(v12, v7);
              }
            }

            CFRelease(v7);
            *(*(a1 + 32) + 52) = *(a1 + 40);
          }

          else
          {
            __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke_cold_1();
          }
        }

        else
        {
          __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke_cold_2();
        }
      }
    }
  }
}

- (void)setTargetBitrate:(unsigned int)a3
{
  if (self->super._temporaryMaximumBitrate >= a3 && self->super._txMaxBitrate >= a3 && self->super._txMinBitrate <= a3)
  {
    self->super._targetBitrate = a3;
    [(VCVideoStreamTransmitter *)self setTemporaryMaximumBitrate:?];
  }
}

- (void)setFECRedundancyVector:(id *)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter setFECRedundancyVector:];
    }
  }
}

- (void)setMediaSuggestion:(VCRateControlMediaSuggestion *)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter setMediaSuggestion:];
    }
  }
}

- (BOOL)setEncodingMode:(int)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter setEncodingMode:];
    }
  }

  return 0;
}

- (void)handleThermalLevelChange:(int)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter handleThermalLevelChange:];
    }
  }
}

- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter updateWindowState:isLocal:windowRect:];
    }
  }
}

- (void)initVideoCompressionWithWidth:(unsigned int)a3 height:(unsigned int)a4 bitrate:(unsigned int)a5 keyFrameIntervalDuration:(unsigned int)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v8 = 0u;
  v14 = 0;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v9 = 0u;
  v7[0] = a3;
  v7[1] = a4;
  LODWORD(v10) = a5;
  LODWORD(v8) = a6;
  v15 = encoderFrameCallback;
  v16 = self;
  HIDWORD(v16) = self->_tilesPerFrame;
  *(&v17 + 1) = self->super._profileLevel;
  p_encoder = &self->_encoder;
  VCVideoEncoderVTInitialize(&self->_encoder);
  if (p_encoder->encoderHandle == 0xFFFFFFFFLL)
  {
    (*p_encoder->encoderVTable)(&p_encoder->encoderHandle, v7);
  }
}

- (__CFDictionary)forceKeyFrameProperties
{
  keys[1] = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong_explicit(&self->_shouldGenerateKeyFrame, &v2, 0, memory_order_relaxed, memory_order_relaxed);
  if (v2 != 1)
  {
    return 0;
  }

  ++self->_totalKeyFramesSent;
  keys[0] = *MEMORY[0x1E6983BD8];
  values = *MEMORY[0x1E695E4D0];
  return CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

- (void)encodeVideoFrame:(opaqueCMSampleBuffer *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    v6 = ImageBuffer;
    v7 = [(VCVideoStreamTransmitter *)self forceKeyFrameProperties];
    valuePtr = -1431655766;
    v8 = CMGetAttachment(a3, @"cameraStatusBits", 0);
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
    v9 = VCMemoryPool_Alloc(self->_encodingArgPool);
    *(v9 + 11) = v6;
    *(v9 + 41) = v7;
    CMSampleBufferGetOutputPresentationTimeStamp(&v13, a3);
    *(v9 + 300) = v13;
    v9[336] = valuePtr;
    encoderHandle = self->_encoder.encoderHandle;
    if (encoderHandle == 0xFFFFFFFFLL || ((v11 = (*(self->_encoder.encoderVTable + 4))(encoderHandle, v9), v11 != -2146959339) ? (v12 = v11 == -2146959358) : (v12 = 1), v12))
    {
      VCMemoryPool_Free(self->_encodingArgPool, v9);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamTransmitter encodeVideoFrame:];
    }
  }
}

- (BOOL)prependSPSPPS:(unint64_t *)a3 dataPointer:(char *)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  bufferSize = *a3 + 400;
  buffer = self->_buffer;
  if (self->_bufferSize >= bufferSize)
  {
    bufferSize = self->_bufferSize;
    goto LABEL_7;
  }

  if (buffer)
  {
    free(self->_buffer);
  }

  v11 = malloc_type_malloc(bufferSize, 0x100004077774924uLL);
  self->_buffer = v11;
  if (v11)
  {
    buffer = v11;
    self->_bufferSize = bufferSize;
LABEL_7:
    SPSPPSFromSampleBuffer = VideoUtil_ExtractSPSPPSFromSampleBuffer(a5, buffer, bufferSize);
    memcpy(&self->_buffer[SPSPPSFromSampleBuffer], a4, *a3);
    *a3 += SPSPPSFromSampleBuffer;
    LOBYTE(v13) = 1;
    return v13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      return v13;
    }

    v16 = self->_bufferSize;
    v18 = 136315906;
    v19 = v14;
    v20 = 2080;
    v21 = "[VCVideoStreamTransmitter prependSPSPPS:dataPointer:sampleBuffer:]";
    v22 = 1024;
    v23 = 453;
    v24 = 1024;
    v25 = v16;
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendFrame: Error while allocating %d bytes", &v18, 0x22u);
  }

  LOBYTE(v13) = 0;
  return v13;
}

- (BOOL)isKeyFrame:(opaqueCMSampleBuffer *)a3
{
  BOOLean[1] = *MEMORY[0x1E69E9840];
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  Count = CFArrayGetCount(SampleAttachmentsArray);
  if (Count)
  {
    BOOLean[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x1E6960458], BOOLean))
    {
      LOBYTE(Count) = CFBooleanGetValue(BOOLean[0]) == 0;
    }

    else
    {
      LOBYTE(Count) = 1;
    }
  }

  return Count;
}

- (void)transmitEncodedVideoFrame:(opaqueCMSampleBuffer *)a3 cameraStatusBits:(unsigned __int8)a4
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  v4 = a4;
  dataPointerOut = 0;
  SampleSize = CMSampleBufferGetSampleSize(a3, 0);
  if (SampleSize)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    if (DataBuffer)
    {
      if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, 0, &dataPointerOut) && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v10 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.value) = 136315650;
            *(&buf.value + 4) = v8;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "[VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:]";
            HIWORD(buf.epoch) = 1024;
            v37 = 496;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendFrame: Error: Error getting data buffer", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:];
        }
      }
    }
  }

  v11 = [(VCVideoStreamTransmitter *)self isKeyFrame:a3];
  if (!dataPointerOut)
  {
    [VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:];
    return;
  }

  v12 = v11;
  if (v11 && ![VCVideoStreamTransmitter prependSPSPPS:"prependSPSPPS:dataPointer:sampleBuffer:" dataPointer:&SampleSize sampleBuffer:?])
  {
    [VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:];
    return;
  }

  memset(&v33, 170, sizeof(v33));
  CMSampleBufferGetPresentationTimeStamp(&v33, a3);
  p_latestSampleBufferTimestamp = &self->super._latestSampleBufferTimestamp;
  value = self->super._latestSampleBufferTimestamp.value;
  if (value)
  {
    lhs = v33;
    *&rhs.value = *&p_latestSampleBufferTimestamp->value;
    rhs.epoch = self->super._latestSampleBufferTimestamp.epoch;
    CMTimeSubtract(&buf, &lhs, &rhs);
    value = buf.value;
    v15 = *&buf.timescale;
    epoch = buf.epoch;
  }

  else
  {
    v15 = *&self->super._latestSampleBufferTimestamp.timescale;
    epoch = self->super._latestSampleBufferTimestamp.epoch;
  }

  memset(&v30, 170, sizeof(v30));
  buf.value = value;
  *&buf.timescale = v15;
  buf.epoch = epoch;
  CMTimeConvertScale(&v30, &buf, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  self->super._timestamp += LODWORD(v30.value);
  v17 = *&v33.value;
  *&p_latestSampleBufferTimestamp->value = *&v33.value;
  v18 = v33.epoch;
  self->super._latestSampleBufferTimestamp.epoch = v33.epoch;
  *&buf.value = v17;
  buf.epoch = v18;
  Seconds = CMTimeGetSeconds(&buf);
  if (self->_enableCVO && ((lastCameraStatusBits = self->_lastCameraStatusBits, (lastCameraStatusBits & 0x80u) == 0) ? (v21 = lastCameraStatusBits == v4) : (v21 = 0), v21 ? (v22 = 0) : (v22 = 1), ((v22 | v12) & 1) != 0))
  {
    self->_lastCameraStatusBits = v4;
    if (!v12)
    {
LABEL_26:
      p_dataPointerOut = &dataPointerOut;
      goto LABEL_29;
    }
  }

  else
  {
    v4 = 0;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  p_dataPointerOut = &self->_buffer;
LABEL_29:
  v24 = [(VCVideoStreamTransmitter *)self transmitEncodedVideoFrame:*p_dataPointerOut size:SampleSize timestamp:self->super._timestamp hostTime:v4 cameraStatusBits:Seconds];
  if (v24 < 0)
  {
    v27 = v24;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.value) = 136316418;
        *(&buf.value + 4) = v28;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "[VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:]";
        HIWORD(buf.epoch) = 1024;
        v37 = 536;
        v38 = 1024;
        v39 = v27;
        v40 = 1024;
        v41 = v27;
        v42 = 1024;
        v43 = v12;
        _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d sendFrame: transmitEncodedVideoFrame returned error %d (0x%08x). isKeyFrame=%d", &buf, 0x2Eu);
      }
    }
  }

  else if (v12)
  {
    self->_lastKeyFrameSampleBufferSize = SampleSize;
    [(VCVideoTransmitterBase *)self setLastKeyFrameSentTime:micro()];
    [(VCVideoStreamTransmitter *)self reportingVideoStreamEvent:228];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v25;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "[VCVideoStreamTransmitter transmitEncodedVideoFrame:cameraStatusBits:]";
        HIWORD(buf.epoch) = 1024;
        v37 = 542;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d successfully sent key frame", &buf, 0x1Cu);
      }
    }
  }
}

- (int)transmitEncodedVideoFrame:(char *)a3 size:(unint64_t)a4 timestamp:(unsigned int)a5 hostTime:(double)a6 cameraStatusBits:(unsigned __int8)a7
{
  v7 = a7;
  v8 = *&a5;
  v9 = a4;
  v24[3] = *MEMORY[0x1E69E9840];
  memset(v24, 170, 20);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = 0xAAAAAAAAAAAA000ALL;
  v22 = v13;
  v23[0] = v13;
  v23[1] = v13;
  v21[0] = v24;
  v21[2] = &self->_iSMBCount;
  v21[3] = &self->_xMBs;
  v21[4] = &self->_packetSizes;
  v21[5] = &self->_packetFlags;
  v21[6] = &self->_maxPacketCount;
  *(&v23[0] + 1) = self->_videoPacketAllocator;
  *(&v22 + 7) = 0;
  *&v22 = 0;
  IsIPv6 = RTPGetIsIPv6(self->_videoRTP, v23 + 2);
  if (IsIPv6 < 0)
  {
    v17 = IsIPv6;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStreamTransmitter transmitEncodedVideoFrame:size:timestamp:hostTime:cameraStatusBits:];
      }
    }
  }

  else
  {
    if (BYTE2(v23[0]))
    {
      v15 = 1280;
    }

    else
    {
      v15 = 1450;
    }

    LOWORD(v23[0]) = v15;
    BYTE5(v23[0]) = 0;
    if (self->_recommendedMTU && self->_recommendedMTU < v15)
    {
      LOWORD(v23[0]) = self->_recommendedMTU;
    }

    LOWORD(v23[0]) -= VTU_GetOverhead(0, 0, 0, BYTE2(v23[0]));
    if (self->_forceDisableBitrateCap)
    {
      temporaryMaximumBitrate = self->super._temporaryMaximumBitrate;
    }

    else
    {
      temporaryMaximumBitrate = 164000;
    }

    ptr = 0xAAAAAAAAAAAAAAAALL;
    v18 = VTU_SplitVideoIntoPackets(v21, 123, a3, v9, &ptr, 0, 0, 1, 0, 0, temporaryMaximumBitrate, 0);
    if (v18)
    {
      v17 = [(VCVideoStreamTransmitter *)self transmitFrameInGroups:ptr numOfPackets:v18 timestamp:v8 hostTime:v7 cameraStatusBits:a6];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStreamTransmitter transmitEncodedVideoFrame:size:timestamp:hostTime:cameraStatusBits:];
        }
      }

      v17 = -2147418105;
    }

    if (ptr && ptr != a3)
    {
      CFAllocatorDeallocate(self->_videoPacketAllocator, ptr);
    }
  }

  return v17;
}

- (int)transmitFrameInGroups:(char *)a3 numOfPackets:(int)a4 timestamp:(unsigned int)a5 hostTime:(double)a6 cameraStatusBits:(unsigned __int8)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (a4 < 1)
  {
    v13 = 0;
    v16 = 0;
    v12 = 0;
  }

  else
  {
    v9 = a4;
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    do
    {
      if (v9 == 9)
      {
        v14 = 5;
      }

      else
      {
        v14 = 8;
      }

      if (v9 >= 8)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      v9 -= v15;
      LOBYTE(v19) = a7;
      v16 = [(VCVideoStreamTransmitter *)self transmitVideoPackets:&a3[v13] packetSizes:self->_packetSizes startPacket:v12 packetCount:v15 lastGroup:v9 < 1 timestamp:a5 hostTime:a6 cameraStatusBits:v19 bytesSent:&v23];
      if (v16 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v25 = v20;
          v26 = 2080;
          v27 = "[VCVideoStreamTransmitter transmitFrameInGroups:numOfPackets:timestamp:hostTime:cameraStatusBits:]";
          v28 = 1024;
          v29 = 634;
          v30 = 1024;
          v31 = 634;
          v32 = 2048;
          v33 = v16;
          v34 = 1024;
          v35 = v11;
          v36 = 1024;
          v37 = v15;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStreamTransmitter.m:%d: VideoTransmitter transmitGroup failed (%08lX) for group (%d) #packet (%d)", buf, 0x38u);
        }
      }

      v13 = (v23 + v13);
      v12 = (v15 + v12);
      ++v11;
    }

    while (v9 > 0);
  }

  [(VCMediaStreamStats *)self->_stats recordDataWithSize:v13 atTime:micro()];
  [(VCVideoStreamTransmitter *)self updateSendStatisticsWithTimestamp:a5 frameSize:v13 packetsInFrame:v12];
  return v16;
}

- (int)transmitVideoPackets:(const char *)a3 packetSizes:(int *)a4 startPacket:(int)a5 packetCount:(int)a6 lastGroup:(int)a7 timestamp:(unsigned int)a8 hostTime:(double)a9 cameraStatusBits:(unsigned __int8)a10 bytesSent:(int *)a11
{
  v29[1] = *MEMORY[0x1E69E9840];
  *a11 = 0;
  if (a6 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = -2147418092;
  v24 = 4 * (a6 - 1);
  v23 = 4 * a6;
  v15 = &a4[a5];
  while (1)
  {
    ControlInfo = 0;
    v17 = v15[v13 / 4];
    v18 = a7 && v24 == v13;
    v19 = v18;
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    if ((a10 & 0x80) != 0 && self->_enableCVO && v19)
    {
      VCCVOExtensionUtils_FillCVOExtension(a10, self->_cvoExtensionID, v29);
      controlInfoGenerator = self->super._controlInfoGenerator;
      if (controlInfoGenerator)
      {
        ControlInfo = VCMediaControlInfoGeneratorCreateControlInfo(controlInfoGenerator);
        VCMediaControlInfoSetInfo(ControlInfo, 9, v29, 8);
      }

      else
      {
        ControlInfo = 0;
      }
    }

    v28 = 0;
    v21 = RTPSendH264Packet(self->_videoRTP, 123, 1u, v19, a8, &a3[*a11], v17, &v28, a9, 0, 0, v13 == 0, 0, a10, 0, 0, 0, self->_dwRefreshFrameCounter, ControlInfo, 0, 0, 0, 0);
    if (v21 == -2147418092)
    {
      break;
    }

    *a11 += v15[v13 / 4];
    v13 += 4;
    if (v23 == v13)
    {
      return v21;
    }
  }

  [(VCVideoStreamTransmitter *)self generateKeyFrameWithFIRType:0];
  return v14;
}

- (void)updateSendStatisticsWithTimestamp:(unsigned int)a3 frameSize:(unsigned int)a4 packetsInFrame:(unsigned int)a5
{
  v26 = *MEMORY[0x1E69E9840];
  self->_totalBytesSent += a4;
  self->_totalPacketsSent += a5;
  v25 = 0;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v7 = micro();
  totalBytesSent = self->_totalBytesSent;
  totalPacketsSent = self->_totalPacketsSent;
  statisticsCollector = self->_statisticsCollector;
  v11[0] = 6;
  *&v11[1] = v7;
  v11[2] = 0;
  v12 = a3 >> 8;
  v13 = totalPacketsSent;
  v14 = totalBytesSent;
  VCRateControlSetStatistics(statisticsCollector, v11);
}

- (void)gatherRealtimeStats:(__CFDictionary *)a3
{
  v37 = *MEMORY[0x1E69E9840];
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
        v10 = [(VCMediaStreamStats *)self->_stats bitrateKbps];
        *buf = 136316162;
        v28 = v6;
        v29 = 2080;
        v30 = "[VCVideoStreamTransmitter gatherRealtimeStats:]";
        v31 = 1024;
        v32 = 717;
        v33 = 2048;
        v34 = v9;
        v35 = 1024;
        v36 = v10;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoStreamStats - Tx - framerate:%f, bitrate:%dkbps", buf, 0x2Cu);
      }
    }
  }

  self->_reportingLastUpdateTime = v5;
  if (v4)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%u", [(VCMediaStreamStats *)self->_stats maxFrameDurationMillis]);
    CFDictionaryAddValue(v4, @"VCVSTxMaxFrameDuration", v12);
    CFRelease(v12);
    [(VCMediaStreamStats *)self->_stats setMaxFrameDurationMillis:0];
    v13 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats getBitrateKbpsSinceTime:self->_reportingIntervalStartTime]);
    CFDictionaryAddValue(v4, @"VCVSTxAvgBitrate", v13);
    CFRelease(v13);
    v14 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats maxBitrateKbps]);
    CFDictionaryAddValue(v4, @"VCVSTxMaxBitrate", v14);
    CFRelease(v14);
    [(VCMediaStreamStats *)self->_stats setMaxBitrateKbps:0];
    v15 = CFStringCreateWithFormat(v11, 0, @"%u", [(VCMediaStreamStats *)self->_stats minBitrateKbps]);
    CFDictionaryAddValue(v4, @"VCVSTxMinBitrate", v15);
    CFRelease(v15);
    [(VCMediaStreamStats *)self->_stats setMinBitrateKbps:0xFFFFFFFFLL];
    [(VCMediaStreamStats *)self->_stats getFramerateSinceTime:self->_reportingIntervalStartTime];
    v17 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v16);
    CFDictionaryAddValue(v4, @"VCVSTxAvgFramerate", v17);
    CFRelease(v17);
    [(VCMediaStreamStats *)self->_stats maxFramerate];
    v19 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v18);
    CFDictionaryAddValue(v4, @"VCVSTxMaxFramerate", v19);
    CFRelease(v19);
    [(VCMediaStreamStats *)self->_stats setMaxFramerate:0.0];
    [(VCMediaStreamStats *)self->_stats minFramerate];
    v21 = CFStringCreateWithFormat(v11, 0, @"%5.2f", v20);
    CFDictionaryAddValue(v4, @"VCVSTxMinFramerate", v21);
    CFRelease(v21);
    [(VCMediaStreamStats *)self->_stats setMinFramerate:1.79769313e308];
    v22 = CFStringCreateWithFormat(v11, 0, @"%d", self->_totalKeyFramesSent);
    CFDictionaryAddValue(v4, @"VCVSTxKeyFramesSent", v22);
    CFRelease(v22);
    self->_reportingIntervalStartTime = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v25 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [-[__CFDictionary description](v4 "description")];
          *buf = 136315906;
          v28 = v23;
          v29 = 2080;
          v30 = "[VCVideoStreamTransmitter gatherRealtimeStats:]";
          v31 = 1024;
          v32 = 762;
          v33 = 2080;
          v34 = v26;
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Tx RTCReporting:%s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [(VCVideoStreamTransmitter *)v23 gatherRealtimeStats:v4];
      }
    }
  }
}

- (void)reportingVideoStreamEvent:(unsigned __int16)a3
{
  v3 = a3;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3 == 228)
  {
    v7 = CFStringCreateWithFormat(v5, 0, @"%zu", self->_lastKeyFrameSampleBufferSize);
    CFDictionaryAddValue(Mutable, @"VCVSKeyFrameSize", v7);
    CFRelease(v7);
  }

  reportingVideoStreamEvent();

  CFRelease(Mutable);
}

- (void)handleActiveConnectionChange:(id)a3
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
      v8 = "[VCVideoStreamTransmitter handleActiveConnectionChange:]";
      v9 = 1024;
      v10 = 785;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Handling active connection change is not implemented for VCVST", &v5, 0x1Cu);
    }
  }
}

- (void)initWithConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithConfig:(int)a1 .cold.2(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v7 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video packet allocator: %d", &v4, 0x22u);
    }
  }
}

- (void)initWithConfig:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)initWithConfig:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __55__VCVideoStreamTransmitter_setTemporaryMaximumBitrate___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setFECRedundancyVector:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

- (void)setMediaSuggestion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

- (void)setEncodingMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

- (void)handleThermalLevelChange:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

- (void)updateWindowState:isLocal:windowRect:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

- (void)encodeVideoFrame:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get image buffer", v2, v3, v4, v5, v6);
}

- (void)transmitEncodedVideoFrame:cameraStatusBits:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 496;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d sendFrame: Error: Error getting data buffer", v1, 0x1Cu);
}

- (void)transmitEncodedVideoFrame:cameraStatusBits:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }
}

- (void)transmitEncodedVideoFrame:cameraStatusBits:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }
}

- (void)transmitEncodedVideoFrame:size:timestamp:hostTime:cameraStatusBits:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VTU_SplitVideoIntoPackets returned 0", v2, v3, v4, v5, v6);
}

- (void)transmitEncodedVideoFrame:size:timestamp:hostTime:cameraStatusBits:.cold.2()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d RTPGetIsIPv6 failed %d", v3, v4, v5, v6);
}

- (void)gatherRealtimeStats:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
}

@end