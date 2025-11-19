@interface VCVideoReceiverBase
- (BOOL)startSynchronization:(id)a3;
- (VCVideoReceiverBase)initWithDelegate:(id)a3 delegateFunctions:(const tagVCVideoReceiverDelegateRealtimeInstanceVTable *)a4;
- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)delegateFunctions;
- (void)dealloc;
- (void)stopSynchronization;
@end

@implementation VCVideoReceiverBase

- (VCVideoReceiverBase)initWithDelegate:(id)a3 delegateFunctions:(const tagVCVideoReceiverDelegateRealtimeInstanceVTable *)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCVideoReceiverBase;
  result = [(VCVideoReceiverBase *)&v7 init];
  if (result)
  {
    result->_rtpTimestampRate = 90000;
    result->_delegate = a3;
    result->_vTable.setExternalOutputLatency = _VCVideoReceiverRealtime_SetExternalOutputLatency;
    if (a4)
    {
      result->_delegateFunctions = *a4;
    }
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_mediaStreamSynchronizer = 0;
  self->_syncSource = 0;
  v3.receiver = self;
  v3.super_class = VCVideoReceiverBase;
  [(VCVideoReceiverBase *)&v3 dealloc];
}

- (BOOL)startSynchronization:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [(VCVideoReceiverBase *)self setSyncSource:?];
  v5 = [a3 getSyncSourceSampleRate];
  mediaStreamSynchronizer = self->_mediaStreamSynchronizer;
  if (mediaStreamSynchronizer && [(VCMediaStreamSynchronizer *)mediaStreamSynchronizer sourceSampleRate]== v5)
  {
    VCMediaStreamSynchronizer_resetDestinationState(self->_mediaStreamSynchronizer);
    VCMediaStreamSyncSourceDelegate_resetSourceState(self->_mediaStreamSynchronizer);
  }

  else
  {
    [(VCVideoReceiverBase *)self setSynchronizer:0];

    v7 = [[VCMediaStreamSynchronizer alloc] initWithSourceSampleRate:v5 destinationSampleRate:self->_rtpTimestampRate];
    self->_mediaStreamSynchronizer = v7;
    if (!v7)
    {
      return v7;
    }

    [(VCVideoReceiverBase *)self setSynchronizer:v7];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_mediaStreamSynchronizer;
      v12 = 136316418;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCVideoReceiverBase startSynchronization:]";
      v16 = 1024;
      v17 = 98;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = self;
      v22 = 2048;
      v23 = [(VCVideoReceiverBase *)self syncSource];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting syncSourceDelegate (%p) for VideoReceiver (%p) for syncSource (%p)", &v12, 0x3Au);
    }
  }

  [a3 addSyncSourceDelegate:self->_mediaStreamSynchronizer];
  LOBYTE(v7) = 1;
  return v7;
}

- (void)stopSynchronization
{
  [(VCMediaStreamSyncSource *)[(VCVideoReceiverBase *)self syncSource] removeSyncSourceDelegate:self->_mediaStreamSynchronizer];

  [(VCVideoReceiverBase *)self setSyncSource:0];
}

- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)delegateFunctions
{
  didReceiveRemoteFrame = self->_delegateFunctions.didReceiveRemoteFrame;
  didReceiveSampleBuffer = self->_delegateFunctions.didReceiveSampleBuffer;
  result.didReceiveRemoteFrame = didReceiveRemoteFrame;
  result.didReceiveSampleBuffer = didReceiveSampleBuffer;
  return result;
}

@end