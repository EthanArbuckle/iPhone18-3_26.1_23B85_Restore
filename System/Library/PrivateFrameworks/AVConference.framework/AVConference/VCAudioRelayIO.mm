@interface VCAudioRelayIO
- (BOOL)createPacketThreadWithIOBufferDuration:(double)duration name:(id)name error:(id *)error;
- (BOOL)isEqualToRelayIO:(id)o;
- (BOOL)isInitialized;
- (VCAudioRelayIO)init;
- (VCAudioRelayIO)initWithMicContext:(const tagVCAudioRelayIOContext *)context speakerContext:(const tagVCAudioRelayIOContext *)speakerContext;
- (id)copyWithZone:(_NSZone *)zone;
- (void)createAudioBuffers;
- (void)createBuffersForIOContext:(tagVCAudioRelayIOContext *)context;
- (void)dealloc;
- (void)destroyPacketThread;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)initializeFormatContextPointers;
- (void)internalPushAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)printStreamFormats;
- (void)pullAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)setClientFormat:(const tagVCAudioFrameFormat *)format;
- (void)setRemoteCodecInfo:(const _VCRemoteCodecInfo *)info;
@end

@implementation VCAudioRelayIO

- (VCAudioRelayIO)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioRelayIO;
  v2 = [(VCObject *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VCAudioRelayIO *)v2 initializeFormatContextPointers];
  }

  return v3;
}

- (VCAudioRelayIO)initWithMicContext:(const tagVCAudioRelayIOContext *)context speakerContext:(const tagVCAudioRelayIOContext *)speakerContext
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = VCAudioRelayIO;
  v6 = [(VCObject *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v9 = *&context->timeInfo.clientSampleRate;
    v8 = *&context->timeInfo.lastHostTime;
    controllerTimestamp = context->timeInfo.controllerTimestamp;
    *(v6 + 20) = *&context->sampleBuffer;
    v11 = *&context->callback;
    *(v6 + 18) = *&context->clientFormat;
    *(v6 + 19) = v11;
    *(v6 + 46) = controllerTimestamp;
    *(v6 + 21) = v9;
    *(v6 + 22) = v8;
    *(v6 + 40) = 0;
    v13 = *&speakerContext->timeInfo.clientSampleRate;
    v12 = *&speakerContext->timeInfo.lastHostTime;
    v14 = speakerContext->timeInfo.controllerTimestamp;
    *(v6 + 408) = *&speakerContext->sampleBuffer;
    *(v6 + 424) = v13;
    v15 = *&speakerContext->callback;
    *(v6 + 376) = *&speakerContext->clientFormat;
    *(v6 + 392) = v15;
    *(v6 + 57) = v14;
    *(v6 + 440) = v12;
    *(v6 + 51) = 0;
    v17 = *&context->clientFormat->format.mBytesPerPacket;
    v16 = *&context->clientFormat->format.mBitsPerChannel;
    *(v6 + 12) = *&context->clientFormat->format.mSampleRate;
    *(v6 + 13) = v17;
    *(v6 + 14) = v16;
    relayFormat = context->relayFormat;
    v20 = *&relayFormat->format.mBytesPerPacket;
    v19 = *&relayFormat->format.mBitsPerChannel;
    *(v6 + 15) = *&relayFormat->format.mSampleRate;
    *(v6 + 16) = v20;
    *(v6 + 17) = v19;
    [v6 initializeFormatContextPointers];
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VCAudioBufferList_Destroy(&self->_micContext.sampleBuffer);
  VCAudioBufferList_Destroy(&self->_speakerContext.sampleBuffer);
  VCAudioBufferList_Destroy(&self->_micBuffer);
  VCAudioBufferList_Destroy(&self->_speakerBuffer);
  [(VCAudioRelayIO *)self destroyPacketThread];
  [(VCAudioRelayIO *)self closeRecordings];

  objc_storeWeak(&self->_relay, 0);
  v3.receiver = self;
  v3.super_class = VCAudioRelayIO;
  [(VCObject *)&v3 dealloc];
}

- (void)initializeFormatContextPointers
{
  self->_micContext.clientFormat = &self->_clientFormat;
  self->_micContext.relayFormat = &self->_relayFormat;
  self->_speakerContext.clientFormat = &self->_clientFormat;
  self->_speakerContext.relayFormat = &self->_relayFormat;
}

- (BOOL)isInitialized
{
  if ([(VCAudioRelayIO *)self micCallback]&& [(VCAudioRelayIO *)self speakerCallback])
  {
    return 1;
  }

  result = 0;
  self->_remoteCodecInfo.codecType = 0;
  self->_remoteCodecInfo.sampleRate = 24000.0;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VCAudioRelayIO alloc] initWithMicContext:&self->_micContext speakerContext:&self->_speakerContext];
  v5 = v4;
  if (v4)
  {
    [(VCAudioRelayIO *)v4 setUsePacketThread:self->_usePacketThread];
    [(VCAudioRelayIO *)v5 setStartCompletionHandler:self->_startCompletionHandler];
    [(VCAudioRelayIO *)v5 setUpdateRemoteCodecInfoContext:self->_updateRemoteCodecInfoContext];
    [(VCAudioRelayIO *)v5 setUpdateRemoteCodecInfoCallback:self->_updateRemoteCodecInfoCallback];
    [(VCAudioRelayIO *)v5 setRemoteCodecInfo:&self->_remoteCodecInfo];
    [(VCAudioRelayIO *)v5 setRelay:[(VCAudioRelayIO *)self relay]];
    [(VCAudioRelayIO *)v5 setRealtimeCatchUpEnabled:self->_realtimeCatchUpEnabled];
  }

  return v5;
}

- (BOOL)isEqualToRelayIO:(id)o
{
  usePacketThread = self->_usePacketThread;
  result = 0;
  if (usePacketThread == [o usePacketThread] && !memcmp(&self->_micContext, objc_msgSend(o, "micContext"), 0x58uLL) && !memcmp(&self->_speakerContext, objc_msgSend(o, "speakerContext"), 0x58uLL))
  {
    updateRemoteCodecInfoCallback = self->_updateRemoteCodecInfoCallback;
    if (updateRemoteCodecInfoCallback == [o updateRemoteCodecInfoCallback])
    {
      updateRemoteCodecInfoContext = self->_updateRemoteCodecInfoContext;
      if (updateRemoteCodecInfoContext == [o updateRemoteCodecInfoContext])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)setRemoteCodecInfo:(const _VCRemoteCodecInfo *)info
{
  if (info)
  {
    codecType = info->codecType;
    sampleRate = info->sampleRate;
  }

  else
  {
    codecType = 0;
    sampleRate = 24000.0;
  }

  p_remoteCodecInfo = &self->_remoteCodecInfo;
  if (self->_remoteCodecInfo.codecType != codecType || self->_remoteCodecInfo.sampleRate != sampleRate)
  {
    p_remoteCodecInfo->codecType = codecType;
    self->_remoteCodecInfo.sampleRate = sampleRate;
    relay = [(VCAudioRelayIO *)self relay];

    [(VCBasebandCodecNotifications *)relay didUpdateBasebandCodec:p_remoteCodecInfo];
  }
}

- (void)createBuffersForIOContext:(tagVCAudioRelayIOContext *)context
{
  v11 = *MEMORY[0x1E69E9840];
  sampleBuffer = context->sampleBuffer;
  p_sampleBuffer = &context->sampleBuffer;
  if (!sampleBuffer)
  {
    clientFormat = context->clientFormat;
    v7 = 2 * clientFormat->samplesPerFrame;
    v8 = *&clientFormat->format.mSampleRate;
    v9 = *&clientFormat->format.mBytesPerPacket;
    *&v10.mBitsPerChannel = *&clientFormat->format.mBitsPerChannel;
    *&v10.mSampleRate = v8;
    *&v10.mBytesPerPacket = v9;
    VCAudioBufferList_Allocate(&v10, v7, p_sampleBuffer);
  }
}

- (void)createAudioBuffers
{
  v8 = *MEMORY[0x1E69E9840];
  [(VCAudioRelayIO *)self createBuffersForIOContext:&self->_micContext];
  [(VCAudioRelayIO *)self createBuffersForIOContext:&self->_speakerContext];
  if (self->_micBuffer)
  {
    VCAudioBufferList_Destroy(&self->_micBuffer);
  }

  samplesPerFrame = self->_relayFormat.samplesPerFrame;
  v4 = *&self->_relayFormat.format.mBytesPerPacket;
  *&v7.mSampleRate = *&self->_relayFormat.format.mSampleRate;
  *&v7.mBytesPerPacket = v4;
  *&v7.mBitsPerChannel = *&self->_relayFormat.format.mBitsPerChannel;
  VCAudioBufferList_Allocate(&v7, samplesPerFrame, &self->_micBuffer);
  if (self->_speakerBuffer)
  {
    VCAudioBufferList_Destroy(&self->_speakerBuffer);
  }

  v5 = self->_relayFormat.samplesPerFrame;
  v6 = *&self->_relayFormat.format.mBytesPerPacket;
  *&v7.mSampleRate = *&self->_relayFormat.format.mSampleRate;
  *&v7.mBytesPerPacket = v6;
  *&v7.mBitsPerChannel = *&self->_relayFormat.format.mBitsPerChannel;
  VCAudioBufferList_Allocate(&v7, v5, &self->_speakerBuffer);
}

- (void)printStreamFormats
{
  VCAudioStructs_PrintFrameFormat("client format: ", &self->_clientFormat);

  VCAudioStructs_PrintFrameFormat("relay format:  ", &self->_relayFormat);
}

- (void)setClientFormat:(const tagVCAudioFrameFormat *)format
{
  [(VCObject *)self lock];
  if (format && !self->_isRunning)
  {
    v6 = *&format->format.mBytesPerPacket;
    v5 = *&format->format.mBitsPerChannel;
    *&self->_clientFormat.format.mSampleRate = *&format->format.mSampleRate;
    *&self->_clientFormat.format.mBytesPerPacket = v6;
    *&self->_clientFormat.format.mBitsPerChannel = v5;
    v7 = *&format->format.mSampleRate;
    v8 = *&format->format.mBitsPerChannel;
    *&self->_relayFormat.format.mBytesPerPacket = *&format->format.mBytesPerPacket;
    *&self->_relayFormat.format.mBitsPerChannel = v8;
    *&self->_relayFormat.format.mSampleRate = v7;
    mSampleRate = format->format.mSampleRate;
    self->_micContext.timeInfo.clientSampleRate = mSampleRate;
    self->_micContext.timeInfo.controllerSampleRate = mSampleRate;
    self->_speakerContext.timeInfo.clientSampleRate = mSampleRate;
    self->_speakerContext.timeInfo.controllerSampleRate = mSampleRate;
  }

  [(VCObject *)self unlock];
}

- (void)internalPushAudioSamples:(opaqueVCAudioBufferList *)samples
{
  p_micContext = &self->_micContext;
  if (self->_micContext.callback)
  {
    Timestamp = VCAudioBufferList_GetTimestamp(samples);
    HostTime = VCAudioBufferList_GetHostTime(samples);
    SampleCount = VCAudioBufferList_GetSampleCount(samples);
    v9 = VCAudioBufferList_GetSampleCount(p_micContext->sampleBuffer);
    if (v9 || (samplesPerFrame = self->_clientFormat.samplesPerFrame, sampleBuffer = samples, SampleCount != samplesPerFrame))
    {
      VCAudioBufferList_Append(p_micContext->sampleBuffer, samples, 0);
      sampleBuffer = p_micContext->sampleBuffer;
    }

    if (VCAudioBufferList_GetSampleCount(sampleBuffer) >= p_micContext->clientFormat->samplesPerFrame)
    {
      v12 = HostTime - v9 / p_micContext->clientFormat->format.mSampleRate;
      v13 = VCAudioStructs_ClientTimestampForControllerTime(&p_micContext->timeInfo.clientSampleRate, Timestamp - v9, v12);
      v14 = VCAudioBufferList_GetSampleCount(sampleBuffer);
      VCAudioBufferList_SetTime(sampleBuffer, v13, v12);
      VCAudioBufferList_SetSampleCount(sampleBuffer, p_micContext->clientFormat->samplesPerFrame);
      (p_micContext->callback)(p_micContext->callbackContext, sampleBuffer);
      VCAudioBufferList_SetSampleCount(sampleBuffer, v14);
      v15 = p_micContext->sampleBuffer;
      if (sampleBuffer == v15)
      {
        VCAudioBufferList_Shift(v15, p_micContext->clientFormat->samplesPerFrame);
      }
    }

    VCAudioBufferList_SetTime(samples, Timestamp, HostTime);
  }
}

- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples
{
  if (self->_packetThread)
  {
    if (!PacketThread_SendSampleBuffer(self->_packetThread, samples) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioRelayIO pushAudioSamples:v4];
      }
    }
  }

  else
  {

    [(VCAudioRelayIO *)self internalPushAudioSamples:samples];
  }
}

- (void)pullAudioSamples:(opaqueVCAudioBufferList *)samples
{
  p_speakerContext = &self->_speakerContext;
  if (!self->_speakerContext.callback)
  {
    return;
  }

  Timestamp = VCAudioBufferList_GetTimestamp(samples);
  HostTime = VCAudioBufferList_GetHostTime(samples);
  SampleCount = VCAudioBufferList_GetSampleCount(samples);
  v8 = VCAudioBufferList_GetSampleCount(p_speakerContext->sampleBuffer);
  v9 = v8;
  if (SampleCount >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = SampleCount;
  }

  VCAudioBufferList_SetSampleCount(samples, 0);
  if (v10)
  {
    VCAudioBufferList_Append(samples, p_speakerContext->sampleBuffer, 0);
    VCAudioBufferList_Shift(p_speakerContext->sampleBuffer, v10);
    if (SampleCount > v9)
    {
      p_mSampleRate = &p_speakerContext->clientFormat->format.mSampleRate;
LABEL_11:
      sampleBuffer = p_speakerContext->sampleBuffer;
LABEL_12:
      v13 = HostTime + v10 / *p_mSampleRate;
      v14 = VCAudioStructs_ClientTimestampForControllerTime(&p_speakerContext->timeInfo.clientSampleRate, v10 + Timestamp, v13);
      VCAudioBufferList_SetTime(sampleBuffer, v14, v13);
      VCAudioBufferList_SetSampleCount(sampleBuffer, p_speakerContext->clientFormat->samplesPerFrame);
      (p_speakerContext->callback)(p_speakerContext->callbackContext, sampleBuffer);
      v15 = p_speakerContext->sampleBuffer;
      if (sampleBuffer == v15)
      {
        v16 = VCAudioBufferList_Append(samples, v15, 0);
        VCAudioBufferList_Shift(p_speakerContext->sampleBuffer, v16);
      }
    }
  }

  else if (SampleCount)
  {
    p_mSampleRate = &p_speakerContext->clientFormat->format.mSampleRate;
    sampleBuffer = samples;
    if (p_speakerContext->clientFormat->samplesPerFrame == p_speakerContext->relayFormat->samplesPerFrame)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  VCAudioBufferList_SetTime(samples, Timestamp, HostTime);
}

- (BOOL)createPacketThreadWithIOBufferDuration:(double)duration name:(id)name error:(id *)error
{
  v15[5] = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  self->_relayFormat.samplesPerFrame = vcvtad_u64_f64(self->_relayFormat.format.mSampleRate * duration);
  v9 = 1;
  self->_micContext.timeInfo.didHostTimeReferenceChange = 1;
  self->_speakerContext.timeInfo.didHostTimeReferenceChange = 1;
  [(VCAudioRelayIO *)self createAudioBuffers];
  if (!self->_usePacketThread)
  {
    goto LABEL_4;
  }

  SerializedSize = VCAudioBufferList_GetSerializedSize(self->_micBuffer);
  uTF8String = [name UTF8String];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__VCAudioRelayIO_createPacketThreadWithIOBufferDuration_name_error___block_invoke;
  v15[3] = &unk_1E85F5668;
  v15[4] = self;
  v12 = PacketThread_Create(SerializedSize, 0, 0x10u, 19, uTF8String, v15);
  self->_packetThread = v12;
  if (v12)
  {
    PacketThread_ReceiverIsReady(v12);
LABEL_4:
    self->_isRunning = 1;
    goto LABEL_5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioRelayIO createPacketThreadWithIOBufferDuration:v14 name:? error:?];
    }
  }

  [GKVoiceChatError getNSError:error code:32005 detailedCode:0 filePath:0 description:@"createPacketThreadWithIOBufferDuration failed" reason:@"PacketThread_Create failed"];
  v9 = 0;
LABEL_5:
  [(VCObject *)self unlock];
  return v9;
}

- (void)destroyPacketThread
{
  packetThread = self->_packetThread;
  if (packetThread)
  {
    PacketThread_Destroy(packetThread);
    self->_packetThread = 0;
  }

  self->_isRunning = 0;
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  updateRemoteCodecInfoCallback = self->_updateRemoteCodecInfoCallback;
  if (updateRemoteCodecInfoCallback)
  {
    updateRemoteCodecInfoContext = self->_updateRemoteCodecInfoContext;

    updateRemoteCodecInfoCallback(updateRemoteCodecInfoContext, codec);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCAudioRelayIO *)v6 didUpdateBasebandCodec:codec, v7];
    }
  }
}

- (void)pushAudioSamples:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 315;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d forwardSamplesFromIO: PacketThread_SendSampleBuffer failed", &v2, 0x1Cu);
}

- (void)createPacketThreadWithIOBufferDuration:(uint64_t)a1 name:error:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 384;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d createPacketThreadWithIOBufferDuration: PacketThread_Create failed", &v2, 0x1Cu);
}

- (void)didUpdateBasebandCodec:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = FourccToCStr(*a2);
  v7 = *(a2 + 8);
  v8 = 136316162;
  v9 = a1;
  v10 = 2080;
  v11 = "[VCAudioRelayIO didUpdateBasebandCodec:]";
  v12 = 1024;
  v13 = 465;
  v14 = 2080;
  v15 = v6;
  v16 = 2048;
  v17 = v7;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Callback function not registered. CodecType[%s] SampleRate[%f]", &v8, 0x30u);
}

@end