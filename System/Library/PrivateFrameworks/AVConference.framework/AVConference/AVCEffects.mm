@interface AVCEffects
- (AVCEffects)initWithDelegate:(id)delegate;
- (BOOL)enqueueSampleBuffer:(__CVBuffer *)buffer time:(id *)time;
- (BOOL)setupRemoteReceiverQueueWithSenderQueue:(id)queue;
- (void)avcVideoFrameDidRelease:(id)release;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)encodeProcessedVideoFrame:(id)frame;
- (void)registerBlocksForNotifications;
- (void)remoteQueueOperationHandlerWithError:(int)error operation:(FigRemoteOperation *)operation;
- (void)setDelegate:(id)delegate;
- (void)setEffectType:(int)type;
- (void)setMode:(int)mode;
@end

@implementation AVCEffects

- (AVCEffects)initWithDelegate:(id)delegate
{
  v31 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v5;
      v25 = 2080;
      v26 = "[AVCEffects initWithDelegate:]";
      v27 = 1024;
      v28 = 39;
      v29 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d inDelegate=%@", buf, 0x26u);
    }
  }

  v22.receiver = self;
  v22.super_class = AVCEffects;
  v7 = [(AVCEffects *)&v22 init];
  if (!v7)
  {
    goto LABEL_23;
  }

  v7->_connection = objc_alloc_init(AVConferenceXPCClient);
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v7->_avConferenceEffectsQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.effects", 0, CustomRootQueue);
  objc_storeWeak(&v7->_delegate, delegate);
  v9 = [(AVConferenceXPCClient *)v7->_connection sendMessageSync:"vcEffectsInitialize"];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v10;
      v25 = 2080;
      v26 = "[AVCEffects initWithDelegate:]";
      v27 = 1024;
      v28 = 51;
      v29 = 2112;
      delegateCopy = v9;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Results from initialization: %@", buf, 0x26u);
    }
  }

  if ([v9 objectForKeyedSubscript:@"ERROR"])
  {
    [AVCEffects initWithDelegate:v9];
LABEL_23:

    return 0;
  }

  [(AVCEffects *)v7 registerBlocksForNotifications];
  v12 = [v9 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
  if (!v12)
  {
    [AVCEffects initWithDelegate:];
    goto LABEL_23;
  }

  if (![(AVCEffects *)v7 setupRemoteReceiverQueueWithSenderQueue:v12])
  {
    [AVCEffects initWithDelegate:];
    goto LABEL_23;
  }

  pid = xpc_connection_get_pid([(AVConferenceXPCClient *)v7->_connection connection]);
  if (!VCRemoteImageQueue_CreateSenderQueue(pid, &v7->_senderQueue))
  {
    [AVCEffects initWithDelegate:];
    goto LABEL_23;
  }

  QueueXPCObject = VCRemoteImageQueue_CreateQueueXPCObject(v7->_senderQueue);
  if (!QueueXPCObject)
  {
    [AVCEffects initWithDelegate:];
    goto LABEL_23;
  }

  v15 = QueueXPCObject;
  v16 = [(AVConferenceXPCClient *)v7->_connection sendMessageSync:"vcEffectsClientQueue" arguments:0 xpcArguments:QueueXPCObject];
  v17 = [v16 objectForKeyedSubscript:@"ERROR"];
  xpc_release(v15);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v17)
  {
    [(AVCEffects *)ErrorLogLevelForModule initWithDelegate:v16];
    goto LABEL_23;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = v19;
      v25 = 2080;
      v26 = "[AVCEffects initWithDelegate:]";
      v27 = 1024;
      v28 = 78;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully setup the remoteImageQueue", buf, 0x1Cu);
    }
  }

  return v7;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v5;
      v15 = 2080;
      v16 = "[AVCEffects dealloc]";
      v17 = 1024;
      v18 = 91;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Begin", buf, 0x1Cu);
    }
  }

  [(AVCEffects *)self deregisterBlocksForNotifications];
  v7 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcEffectsTerminate"];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v8;
      v15 = 2080;
      v16 = "[AVCEffects dealloc]";
      v17 = 1024;
      v18 = 94;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Results from termination: %@", buf, 0x26u);
    }
  }

  VCRemoteImageQueue_Destroy(&self->_senderQueue);
  VCRemoteImageQueue_Destroy(&self->_receiverQueue);

  objc_storeWeak(&self->_delegate, 0);
  v12.receiver = self;
  v12.super_class = AVCEffects;
  [(AVCEffects *)&v12 dealloc];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v10;
      v15 = 2080;
      v16 = "[AVCEffects dealloc]";
      v17 = 1024;
      v18 = 103;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d End", buf, 0x1Cu);
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCEffects setDelegate:]";
      v11 = 1024;
      v12 = 107;
      v13 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d delegate=%@", &v7, 0x26u);
    }
  }

  objc_storeWeak(&self->_delegate, delegate);
}

- (BOOL)setupRemoteReceiverQueueWithSenderQueue:(id)queue
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!queue)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      [AVCEffects setupRemoteReceiverQueueWithSenderQueue:];
    }

LABEL_10:
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__AVCEffects_setupRemoteReceiverQueueWithSenderQueue___block_invoke;
  v8[3] = &unk_1E85F5340;
  v8[4] = v5;
  VCRemoteImageQueue_CreateReceiverQueue(queue, v8, self->_avConferenceEffectsQueue, &self->_receiverQueue);
  if (!self->_receiverQueue)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      [AVCEffects setupRemoteReceiverQueueWithSenderQueue:];
    }

    goto LABEL_10;
  }

  LOBYTE(v6) = 1;
  return v6;
}

void *__54__AVCEffects_setupRemoteReceiverQueueWithSenderQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) strong];
  if (result)
  {

    return [result remoteQueueOperationHandlerWithError:a2 operation:a3];
  }

  return result;
}

- (void)remoteQueueOperationHandlerWithError:(int)error operation:(FigRemoteOperation *)operation
{
  v23 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCEffects remoteQueueOperationHandlerWithError:operation:];
      }
    }
  }

  else if (operation->var0 == 1)
  {
    memset(v18, 170, sizeof(v18));
    FigCFDictionaryGetCMTimeIfPresent();
    Value = CFDictionaryGetValue(operation->var4.var0.var0, @"vcEffectsImageData");
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          lastReceivedPixelBuffer = self->_lastReceivedPixelBuffer;
          *buf = 136315906;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = "[AVCEffects remoteQueueOperationHandlerWithError:operation:]";
          *&buf[22] = 1024;
          v20 = 162;
          v21 = 2048;
          v22 = lastReceivedPixelBuffer;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _lastReceivedPixelBuffer=%p", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(AVCEffects *)v9 remoteQueueOperationHandlerWithError:v10 operation:?];
      }
    }

    if (self->_lastReceivedPixelBuffer)
    {
      v13 = [AVCVideoFrame alloc];
      v14 = self->_lastReceivedPixelBuffer;
      lastReceivedDepthBuffer = self->_lastReceivedDepthBuffer;
      *buf = *v18;
      *&buf[16] = *&v18[16];
      v16 = [(AVCVideoFrame *)v13 initWithPixelBuffer:v14 depthPixelBuffer:lastReceivedDepthBuffer time:buf imageData:Value delegate:0];
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate didCaptureVideoFrame:v16];
      }

      v17 = self->_lastReceivedPixelBuffer;
    }

    else
    {
      v17 = 0;
    }

    CVPixelBufferRelease(v17);
    self->_lastReceivedPixelBuffer = 0;
    CVPixelBufferRelease(self->_lastReceivedDepthBuffer);
    self->_lastReceivedDepthBuffer = 0;
  }

  else if (operation->var0 == 3)
  {
    v6 = self->_lastReceivedPixelBuffer;
    ImageBuffer = CMSampleBufferGetImageBuffer(operation->var4.var0.var0);
    if (v6)
    {
      self->_lastReceivedDepthBuffer = ImageBuffer;
    }

    else
    {
      self->_lastReceivedPixelBuffer = ImageBuffer;
    }

    CVPixelBufferRetain(ImageBuffer);
  }
}

- (void)registerBlocksForNotifications
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVCEffects_registerBlocksForNotifications__block_invoke;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcEffectsServerDidDisconnect" block:v6 queue:self->_avConferenceEffectsQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVCEffects_registerBlocksForNotifications__block_invoke_34;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcEffectsServerTimeOut" block:v5 queue:self->_avConferenceEffectsQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVCEffects_registerBlocksForNotifications__block_invoke_38;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcEffectsFlushRemoteQueue" block:v4 queue:self->_avConferenceEffectsQueue];
}

uint64_t __44__AVCEffects_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v4 = result;
      [result delegate];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        if (objc_opt_class() == v4)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136315650;
          *&v13[4] = v6;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCEffects registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 194;
          v8 = " [%s] %s:%d received callback for serverDidDisconnect";
          v9 = v7;
          v10 = 28;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v5 = [v4 performSelector:sel_logPrefix];
          }

          else
          {
            v5 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136316162;
          *&v13[4] = v11;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCEffects registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 194;
          WORD2(v14) = 2112;
          *(&v14 + 6) = v5;
          HIWORD(v14) = 2048;
          v15 = v4;
          v8 = " [%s] %s:%d %@(%p) received callback for serverDidDisconnect";
          v9 = v12;
          v10 = 48;
        }

        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
        return [objc_msgSend(v4 delegate];
      }
    }
  }

  return result;
}

uint64_t __44__AVCEffects_registerBlocksForNotifications__block_invoke_34(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v4 = result;
      [result delegate];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        [v4 setMode:0];
        if (objc_opt_class() == v4)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136315650;
          *&v13[4] = v6;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCEffects registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 209;
          v8 = " [%s] %s:%d received callback for serverDidTimeout";
          v9 = v7;
          v10 = 28;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v5 = [v4 performSelector:sel_logPrefix];
          }

          else
          {
            v5 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return [objc_msgSend(v4 delegate];
          }

          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return [objc_msgSend(v4 delegate];
          }

          *v13 = 136316162;
          *&v13[4] = v11;
          *&v13[12] = 2080;
          *&v13[14] = "[AVCEffects registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 209;
          WORD2(v14) = 2112;
          *(&v14 + 6) = v5;
          HIWORD(v14) = 2048;
          v15 = v4;
          v8 = " [%s] %s:%d %@(%p) received callback for serverDidTimeout";
          v9 = v12;
          v10 = 48;
        }

        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
        return [objc_msgSend(v4 delegate];
      }
    }
  }

  return result;
}

void *__44__AVCEffects_registerBlocksForNotifications__block_invoke_38(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {

      return [result flushRemoteQueue];
    }
  }

  return result;
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcEffectsServerDidDisconnect"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcEffectsServerTimeOut"];
}

- (void)avcVideoFrameDidRelease:(id)release
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"vcEffectsFrameTime";
  v4 = MEMORY[0x1E696AD98];
  if (release)
  {
    [release time];
    release = v5;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v9[0] = [v4 numberWithLongLong:{release, v5, v6, v7, v8}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcEffectsClientReleasedVideoFrame", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1]);
}

- (void)setMode:(int)mode
{
  v3 = *&mode;
  v24 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[AVCEffects setMode:]";
      v20 = 1024;
      v21 = 246;
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%d", buf, 0x22u);
    }
  }

  self->_mode = v3;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = [v10 initWithObjectsAndKeys:{v9, @"vcEffectsSetEffectsMode", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->_effectType), @"vcEffectsEffectsType", 0}];
  avConferenceEffectsQueue = self->_avConferenceEffectsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__AVCEffects_setMode___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = v11;
  dispatch_async(avConferenceEffectsQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = "[AVCEffects setMode:]";
      v20 = 1024;
      v21 = 271;
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting the effects mode %d", buf, 0x22u);
    }
  }
}

void __22__AVCEffects_setMode___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) sendMessageAsync:"vcEffectsSetMode" arguments:*(a1 + 40) reply:0];

  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = *(v2 + 56);

    VCRemoteImageQueue_ReleaseIOSurfaces(v3);
  }
}

- (void)setEffectType:(int)type
{
  v3 = *&type;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[AVCEffects setEffectType:]";
      v19 = 1024;
      v20 = 277;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d effectType=%d", buf, 0x22u);
    }
  }

  if (self->_effectType == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v7;
        v17 = 2080;
        v18 = "[AVCEffects setEffectType:]";
        v19 = 1024;
        v20 = 279;
        v21 = 1024;
        v22 = v3;
        v9 = " [%s] %s:%d Effect type is already set to %d";
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x22u);
      }
    }
  }

  else
  {
    self->_effectType = v3;
    if (self->_mode)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      v11 = [v10 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3), @"vcEffectsEffectsType", 0}];
      avConferenceEffectsQueue = self->_avConferenceEffectsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__AVCEffects_setEffectType___block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = self;
      block[5] = v11;
      dispatch_async(avConferenceEffectsQueue, block);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v13;
        v17 = 2080;
        v18 = "[AVCEffects setEffectType:]";
        v19 = 1024;
        v20 = 299;
        v21 = 1024;
        v22 = v3;
        v9 = " [%s] %s:%d Setting the effect type to %d";
        goto LABEL_13;
      }
    }
  }
}

void __28__AVCEffects_setEffectType___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) sendMessageAsync:"vcEffectsSetEffectType" arguments:*(a1 + 40) reply:0];
  v2 = *(a1 + 40);
}

- (BOOL)enqueueSampleBuffer:(__CVBuffer *)buffer time:(id *)time
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *time;
  SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(buffer, &v9.var0);
  if (!SampleBufferWithPixelBuffer)
  {
    [AVCEffects enqueueSampleBuffer:? time:?];
    return v9.var0;
  }

  v6 = SampleBufferWithPixelBuffer;
  v7 = VCRemoteImageQueue_EnqueueFrame(self->_senderQueue, SampleBufferWithPixelBuffer);
  CFRelease(v6);
  if (v7)
  {
    [AVCEffects enqueueSampleBuffer:v7 time:&v9];
    return v9.var0;
  }

  return 1;
}

- (void)encodeProcessedVideoFrame:(id)frame
{
  v29 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986640];
  v7 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    v10 = *v7;
    if (*v6 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = v8;
        v23 = 2080;
        v24 = "[AVCEffects encodeProcessedVideoFrame:]";
        v25 = 1024;
        v26 = 319;
        v27 = 2112;
        frameCopy = frame;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoFrame=%@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AVCEffects encodeProcessedVideoFrame:];
    }
  }

  kdebug_trace();
  frameCopy2 = frame;
  avConferenceEffectsQueue = self->_avConferenceEffectsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVCEffects_encodeProcessedVideoFrame___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = frame;
  dispatch_async(avConferenceEffectsQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v7;
    v15 = *v7;
    if (*v6 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (frame)
        {
          [frame time];
          v16 = v19;
        }

        else
        {
          v16 = 0;
        }

        *buf = 136315906;
        v22 = v13;
        v23 = 2080;
        v24 = "[AVCEffects encodeProcessedVideoFrame:]";
        v25 = 1024;
        v26 = 358;
        v27 = 2048;
        frameCopy = v16;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoding processed video frame %lld", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (frame)
      {
        [frame time];
        v17 = v18;
      }

      else
      {
        v17 = 0;
      }

      *buf = 136315906;
      v22 = v13;
      v23 = 2080;
      v24 = "[AVCEffects encodeProcessedVideoFrame:]";
      v25 = 1024;
      v26 = 358;
      v27 = 2048;
      frameCopy = v17;
      _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Encoding processed video frame %lld", buf, 0x26u);
    }
  }
}

void __40__AVCEffects_encodeProcessedVideoFrame___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pixelBuffer];
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 time];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if ([v2 enqueueSampleBuffer:v3 time:&v12])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 time];
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    FigCFDictionarySetCMTime();
    [*(a1 + 40) renderProcessTime];
    v8 = v7;
    [*(a1 + 40) renderProcessTime];
    if (v8 <= 0.0)
    {
      if (v9 < 0.0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __40__AVCEffects_encodeProcessedVideoFrame___block_invoke_cold_1();
        }
      }
    }

    else
    {
      FigCFDictionarySetFloat();
    }

    if ([*(a1 + 40) imageData])
    {
      v10 = CFDataCreate(0, [objc_msgSend(*(a1 + 40) "imageData")], objc_msgSend(objc_msgSend(*(a1 + 40), "imageData"), "length"));
      FigCFDictionarySetValue();
      VCRemoteImageQueue_EnqueueAttributes(*(*(a1 + 32) + 56), Mutable);
      CFRelease(v10);
    }

    else
    {
      VCRemoteImageQueue_EnqueueAttributes(*(*(a1 + 32) + 56), Mutable);
    }

    CFRelease(Mutable);

    v11 = *(a1 + 32);
    if (!*(v11 + 32))
    {
      VCRemoteImageQueue_ReleaseIOSurfaces(*(v11 + 56));
    }
  }

  else
  {
  }
}

- (void)initWithDelegate:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 objectForKeyedSubscript:@"ERROR"];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

- (void)initWithDelegate:.cold.2()
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

- (void)initWithDelegate:.cold.3()
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

- (void)initWithDelegate:(int)a1 .cold.4(int a1, void *a2)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a2 objectForKeyedSubscript:@"ERROR"];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }
}

- (void)initWithDelegate:.cold.5()
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

- (void)initWithDelegate:.cold.6()
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

- (void)setupRemoteReceiverQueueWithSenderQueue:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 131;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error making the receiver queue", v2);
}

- (void)setupRemoteReceiverQueueWithSenderQueue:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 117;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d xpcSenderQueue was null, cannot make the remote queue", v2);
}

- (void)remoteQueueOperationHandlerWithError:operation:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_6();
  v6 = 143;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error received from the remote Queue %d", v4, 0x22u);
}

- (void)remoteQueueOperationHandlerWithError:(NSObject *)a3 operation:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[AVCEffects remoteQueueOperationHandlerWithError:operation:]";
  LODWORD(v4) = 162;
  WORD2(v4) = 2048;
  *(&v4 + 6) = *(a2 + 64);
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, a2, a3, " [%s] %s:%d _lastReceivedPixelBuffer=%p", *v3, *&v3[8], "[AVCEffects remoteQueueOperationHandlerWithError:operation:]" >> 16, v4);
}

- (void)enqueueSampleBuffer:(int)a1 time:(_BYTE *)a2 .cold.1(int a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 311;
      v11 = v6;
      v12 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue video frame with error=%d", &v7, 0x22u);
    }
  }

  *a2 = 0;
}

- (void)enqueueSampleBuffer:(_BYTE *)a1 time:.cold.2(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v5 = 307;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to create sample buffer", v4);
    }
  }

  *a1 = 0;
}

- (void)encodeProcessedVideoFrame:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d videoFrame=%@");
}

void __40__AVCEffects_encodeProcessedVideoFrame___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 337;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Frame Render time is negative", v2);
}

@end