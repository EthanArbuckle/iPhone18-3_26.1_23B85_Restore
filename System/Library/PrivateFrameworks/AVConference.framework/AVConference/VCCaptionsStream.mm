@interface VCCaptionsStream
- (VCCaptionsStream)init;
- (VCCaptionsStream)initWithTransportSessionID:(unsigned int)d idsParticipantID:(unint64_t)iD ssrc:(unsigned int)ssrc streamToken:(int64_t)token;
- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)videoReceiverDelegateFunctions;
- (void)dealloc;
- (void)didReceiveCaptions:(id)captions;
- (void)onStartWithCompletionHandler:(id)handler;
- (void)onStopWithCompletionHandler:(id)handler;
- (void)registerCaptionsEventDelegate:(id)delegate;
@end

@implementation VCCaptionsStream

- (VCCaptionsStream)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCCaptionsStream;
  v2 = [(VCVideoStream *)&v4 init];
  if (v2)
  {
    *&v2->super._isListeningForThermalEvents = [[VCCaptionsReceiver alloc] initWithDelegate:v2];
  }

  return v2;
}

- (VCCaptionsStream)initWithTransportSessionID:(unsigned int)d idsParticipantID:(unint64_t)iD ssrc:(unsigned int)ssrc streamToken:(int64_t)token
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCCaptionsStream;
  v6 = [(VCVideoStream *)&v8 initWithTransportSessionID:*&d idsParticipantID:iD ssrc:*&ssrc streamToken:token];
  if (v6)
  {
    *&v6->super._isListeningForThermalEvents = [[VCCaptionsReceiver alloc] initWithDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_captionsReceiver, 0);

  v3.receiver = self;
  v3.super_class = VCCaptionsStream;
  [(VCVideoStream *)&v3 dealloc];
}

- (void)onStartWithCompletionHandler:(id)handler
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCCaptionsStream;
  [(VCVideoStream *)&v4 onStartWithCompletionHandler:handler];
  [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
}

- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)videoReceiverDelegateFunctions
{
  v2 = _VCCaptionsStream_DidReceiveSampleBuffer;
  v3 = 0;
  result.didReceiveRemoteFrame = v3;
  result.didReceiveSampleBuffer = v2;
  return result;
}

- (void)onStopWithCompletionHandler:(id)handler
{
  v6 = *MEMORY[0x1E69E9840];
  [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
  v5.receiver = self;
  v5.super_class = VCCaptionsStream;
  [(VCVideoStream *)&v5 onStopWithCompletionHandler:handler];
}

- (void)didReceiveCaptions:(id)captions
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCCaptionsStream didReceiveCaptions:]";
        v19 = 1024;
        v20 = 81;
        v8 = " [%s] %s:%d Received remote captions transcription!";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCCaptionsStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCCaptionsStream didReceiveCaptions:]";
        v19 = 1024;
        v20 = 81;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        selfCopy = self;
        v8 = " [%s] %s:%d %@(%p) Received remote captions transcription!";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__VCCaptionsStream_didReceiveCaptions___block_invoke;
  v14[3] = &unk_1E85F37F0;
  v14[4] = self;
  v14[5] = captions;
  dispatch_async(global_queue, v14);
}

uint64_t __39__VCCaptionsStream_didReceiveCaptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[160];
  v4 = [v2 streamToken];
  v5 = *(a1 + 40);

  return [v3 streamToken:v4 didUpdateCaptions:v5];
}

- (void)registerCaptionsEventDelegate:(id)delegate
{
  if ([delegate conformsToProtocol:&unk_1F57B5080])
  {

    objc_storeWeak(&self->_captionsReceiver, delegate);
  }
}

@end