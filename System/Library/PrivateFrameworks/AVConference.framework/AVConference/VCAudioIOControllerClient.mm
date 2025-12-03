@interface VCAudioIOControllerClient
- (VCAudioIOControllerClient)initWithDelegate:(id)delegate audioSessionId:(unsigned int)id channelIndex:(unsigned int)index sourceContext:(void *)context sourceProcess:(void *)process sinkContext:(void *)sinkContext sinkProcess:(void *)sinkProcess clientPid:(int)self0 isPrewarmingClient:(BOOL)self1 spatialToken:(unint64_t)self2 isVoiceActivityEnabled:(BOOL)self3 isMediaPriorityEnabled:(BOOL)self4;
- (VoiceIOFarEndVersionInfo)farEndVersionInfo;
- (id)description;
- (void)dealloc;
- (void)setChannelIndex:(unsigned int)index;
- (void)setClientFormat:(const tagVCAudioFrameFormat *)format;
- (void)setControllerFormat:(const tagVCAudioFrameFormat *)format;
- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)info;
- (void)setRemoteCodecType:(unsigned int)type sampleRate:(double)rate;
@end

@implementation VCAudioIOControllerClient

- (VCAudioIOControllerClient)initWithDelegate:(id)delegate audioSessionId:(unsigned int)id channelIndex:(unsigned int)index sourceContext:(void *)context sourceProcess:(void *)process sinkContext:(void *)sinkContext sinkProcess:(void *)sinkProcess clientPid:(int)self0 isPrewarmingClient:(BOOL)self1 spatialToken:(unint64_t)self2 isVoiceActivityEnabled:(BOOL)self3 isMediaPriorityEnabled:(BOOL)self4
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VCAudioIOControllerClient;
  v20 = [(VCAudioIOControllerClient *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_clientPid = pid;
    objc_storeWeak(&v20->_delegate, delegate);
    v21->_sourceIO.processSamplesContext = context;
    v21->_sourceIO.processSamples = process;
    v21->_sourceIO.runLock = dispatch_semaphore_create(1);
    v21->_sourceIO.audioSessionId = id;
    v21->_sourceIO.channelIndex = index;
    v21->_sinkIO.processSamplesContext = sinkContext;
    v21->_sinkIO.processSamples = sinkProcess;
    v21->_sinkIO.runLock = dispatch_semaphore_create(1);
    v21->_sinkIO.audioSessionId = id;
    v21->_sinkIO.channelIndex = index;
    v21->_sinkIO.isVoiceActivityEnabled = enabled;
    v21->_sinkIO.isMediaPriorityEnabled = priorityEnabled;
    v21->_remoteCodecSampleRate = 24000.0;
    v21->_remoteCodecType = 0;
    v21->_audioSessionId = id;
    v21->_isPrewarmingClient = client;
    v21->_channelIndex = index;
    v21->_spatialToken = token;
  }

  return v21;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_sourceIO.runLock);
  dispatch_release(self->_sinkIO.runLock);
  VCAudioBufferList_Destroy(&self->_sourceIO.controllerAudioBuffer);

  v3.receiver = self;
  v3.super_class = VCAudioIOControllerClient;
  [(VCAudioIOControllerClient *)&v3 dealloc];
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  *__str = v3;
  v9 = v3;
  v4 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VCAudioIOControllerClient;
  v5 = [(VCAudioIOControllerClient *)&v7 description];
  return [v4 stringWithFormat:@"{ %@ clientFormat=%s operatingMode=%d deviceRole=%d audioRecording=%d, direction=%d, isPrewarmingClient=%d, sinkIO=%p, sourceIO=%p }", v5, FormatToCStr(&self->_clientFormat, __str, 0x40uLL), self->_operatingMode, self->_deviceRole, self->_allowAudioRecording, self->_direction, self->_isPrewarmingClient, &self->_sinkIO, &self->_sourceIO];
}

- (void)setChannelIndex:(unsigned int)index
{
  self->_sourceIO.channelIndex = index;
  self->_sinkIO.channelIndex = index;
  self->_channelIndex = index;
}

- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)info
{
  *self->_farEndVersionInfo.farEndHwModel = *info->farEndHwModel;
  v3 = *&info->farEndHwModel[16];
  v4 = *&info->farEndHwModel[32];
  v5 = *&info->farEndHwModel[48];
  *self->_farEndVersionInfo.farEndOSVersion = *info->farEndOSVersion;
  *&self->_farEndVersionInfo.farEndHwModel[48] = v5;
  *&self->_farEndVersionInfo.farEndHwModel[32] = v4;
  *&self->_farEndVersionInfo.farEndHwModel[16] = v3;
  v6 = *&info->farEndOSVersion[16];
  v7 = *&info->farEndOSVersion[32];
  v8 = *&info->farEndOSVersion[48];
  self->_farEndVersionInfo.farEndAUVersion = info->farEndAUVersion;
  *&self->_farEndVersionInfo.farEndOSVersion[48] = v8;
  *&self->_farEndVersionInfo.farEndOSVersion[32] = v7;
  *&self->_farEndVersionInfo.farEndOSVersion[16] = v6;
  self->_isRemoteVersionInfoValid = 1;
}

- (void)setRemoteCodecType:(unsigned int)type sampleRate:(double)rate
{
  self->_remoteCodecType = type;
  self->_remoteCodecSampleRate = rate;
  self->_isRemoteCodecInfoValid = 1;
}

- (void)setClientFormat:(const tagVCAudioFrameFormat *)format
{
  v3 = *&format->format.mSampleRate;
  v4 = *&format->format.mBitsPerChannel;
  *&self->_clientFormat.format.mBytesPerPacket = *&format->format.mBytesPerPacket;
  *&self->_clientFormat.format.mBitsPerChannel = v4;
  *&self->_clientFormat.format.mSampleRate = v3;
}

- (void)setControllerFormat:(const tagVCAudioFrameFormat *)format
{
  v4 = *&format->format.mSampleRate;
  v5 = *&format->format.mBitsPerChannel;
  *&self->_controllerFormat.format.mBytesPerPacket = *&format->format.mBytesPerPacket;
  *&self->_controllerFormat.format.mBitsPerChannel = v5;
  *&self->_controllerFormat.format.mSampleRate = v4;
  VCAudioBufferList_Destroy(&self->_sourceIO.controllerAudioBuffer);

  VCAudioBufferList_AllocateFrame(&self->_controllerFormat, &self->_sourceIO.controllerAudioBuffer);
}

- (VoiceIOFarEndVersionInfo)farEndVersionInfo
{
  v3 = *&self[1].farEndOSVersion[32];
  v4 = *&self[1].farEndOSVersion[48];
  retstr->farEndAUVersion = *&self[2].farEndHwModel[12];
  v5 = *&self[1].farEndHwModel[32];
  v6 = *self[1].farEndOSVersion;
  *&retstr->farEndHwModel[32] = *&self[1].farEndHwModel[48];
  *&retstr->farEndHwModel[48] = v6;
  *retstr->farEndOSVersion = *&self[1].farEndOSVersion[16];
  *&retstr->farEndOSVersion[16] = v3;
  *retstr->farEndHwModel = *&self[1].farEndHwModel[16];
  *&retstr->farEndHwModel[16] = v5;
  v7 = *&self[1].farEndAUVersion;
  *&retstr->farEndOSVersion[32] = v4;
  *&retstr->farEndOSVersion[48] = v7;
  return self;
}

@end