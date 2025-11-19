@interface VCAudioIOControllerClient
- (VCAudioIOControllerClient)initWithDelegate:(id)a3 audioSessionId:(unsigned int)a4 channelIndex:(unsigned int)a5 sourceContext:(void *)a6 sourceProcess:(void *)a7 sinkContext:(void *)a8 sinkProcess:(void *)a9 clientPid:(int)a10 isPrewarmingClient:(BOOL)a11 spatialToken:(unint64_t)a12 isVoiceActivityEnabled:(BOOL)a13 isMediaPriorityEnabled:(BOOL)a14;
- (VoiceIOFarEndVersionInfo)farEndVersionInfo;
- (id)description;
- (void)dealloc;
- (void)setChannelIndex:(unsigned int)a3;
- (void)setClientFormat:(const tagVCAudioFrameFormat *)a3;
- (void)setControllerFormat:(const tagVCAudioFrameFormat *)a3;
- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a3;
- (void)setRemoteCodecType:(unsigned int)a3 sampleRate:(double)a4;
@end

@implementation VCAudioIOControllerClient

- (VCAudioIOControllerClient)initWithDelegate:(id)a3 audioSessionId:(unsigned int)a4 channelIndex:(unsigned int)a5 sourceContext:(void *)a6 sourceProcess:(void *)a7 sinkContext:(void *)a8 sinkProcess:(void *)a9 clientPid:(int)a10 isPrewarmingClient:(BOOL)a11 spatialToken:(unint64_t)a12 isVoiceActivityEnabled:(BOOL)a13 isMediaPriorityEnabled:(BOOL)a14
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VCAudioIOControllerClient;
  v20 = [(VCAudioIOControllerClient *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_clientPid = a10;
    objc_storeWeak(&v20->_delegate, a3);
    v21->_sourceIO.processSamplesContext = a6;
    v21->_sourceIO.processSamples = a7;
    v21->_sourceIO.runLock = dispatch_semaphore_create(1);
    v21->_sourceIO.audioSessionId = a4;
    v21->_sourceIO.channelIndex = a5;
    v21->_sinkIO.processSamplesContext = a8;
    v21->_sinkIO.processSamples = a9;
    v21->_sinkIO.runLock = dispatch_semaphore_create(1);
    v21->_sinkIO.audioSessionId = a4;
    v21->_sinkIO.channelIndex = a5;
    v21->_sinkIO.isVoiceActivityEnabled = a13;
    v21->_sinkIO.isMediaPriorityEnabled = a14;
    v21->_remoteCodecSampleRate = 24000.0;
    v21->_remoteCodecType = 0;
    v21->_audioSessionId = a4;
    v21->_isPrewarmingClient = a11;
    v21->_channelIndex = a5;
    v21->_spatialToken = a12;
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

- (void)setChannelIndex:(unsigned int)a3
{
  self->_sourceIO.channelIndex = a3;
  self->_sinkIO.channelIndex = a3;
  self->_channelIndex = a3;
}

- (void)setFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a3
{
  *self->_farEndVersionInfo.farEndHwModel = *a3->farEndHwModel;
  v3 = *&a3->farEndHwModel[16];
  v4 = *&a3->farEndHwModel[32];
  v5 = *&a3->farEndHwModel[48];
  *self->_farEndVersionInfo.farEndOSVersion = *a3->farEndOSVersion;
  *&self->_farEndVersionInfo.farEndHwModel[48] = v5;
  *&self->_farEndVersionInfo.farEndHwModel[32] = v4;
  *&self->_farEndVersionInfo.farEndHwModel[16] = v3;
  v6 = *&a3->farEndOSVersion[16];
  v7 = *&a3->farEndOSVersion[32];
  v8 = *&a3->farEndOSVersion[48];
  self->_farEndVersionInfo.farEndAUVersion = a3->farEndAUVersion;
  *&self->_farEndVersionInfo.farEndOSVersion[48] = v8;
  *&self->_farEndVersionInfo.farEndOSVersion[32] = v7;
  *&self->_farEndVersionInfo.farEndOSVersion[16] = v6;
  self->_isRemoteVersionInfoValid = 1;
}

- (void)setRemoteCodecType:(unsigned int)a3 sampleRate:(double)a4
{
  self->_remoteCodecType = a3;
  self->_remoteCodecSampleRate = a4;
  self->_isRemoteCodecInfoValid = 1;
}

- (void)setClientFormat:(const tagVCAudioFrameFormat *)a3
{
  v3 = *&a3->format.mSampleRate;
  v4 = *&a3->format.mBitsPerChannel;
  *&self->_clientFormat.format.mBytesPerPacket = *&a3->format.mBytesPerPacket;
  *&self->_clientFormat.format.mBitsPerChannel = v4;
  *&self->_clientFormat.format.mSampleRate = v3;
}

- (void)setControllerFormat:(const tagVCAudioFrameFormat *)a3
{
  v4 = *&a3->format.mSampleRate;
  v5 = *&a3->format.mBitsPerChannel;
  *&self->_controllerFormat.format.mBytesPerPacket = *&a3->format.mBytesPerPacket;
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