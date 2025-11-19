@interface AVCStreamOutput
+ (id)errorWithStreamOutputError:(int64_t)a3;
- (AVCStreamOutput)initWithStreamToken:(int64_t)a3 delegate:(id)a4 queue:(id)a5 error:(id *)a6;
- (BOOL)validateAccess;
- (BOOL)validateAccessWithProcessName:(id)a3 accessControlPlist:(id)a4;
- (int)createReceiverQueue;
- (int)setupRemoteQueueWithSenderQueue:(id)a3;
- (int)setupXPCConnection;
- (void)createReceiverQueue;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)didDegrade:(BOOL)a3;
- (void)didInvalidate;
- (void)didPause:(BOOL)a3;
- (void)didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)didStall:(BOOL)a3;
- (void)didSuspend:(BOOL)a3;
- (void)didUpdateAttachments:(__CFDictionary *)a3;
- (void)registerBlocksForNotification;
- (void)remoteQueueOperationHandlerWithError:(int)a3 operation:(FigRemoteOperation *)a4;
- (void)serviceHandlerDidDegradeWithArguments:(id)a3 error:(id)a4;
- (void)serviceHandlerDidDieWithArguments:(id)a3 error:(id)a4;
- (void)serviceHandlerDidPauseWithArguments:(id)a3 error:(id)a4;
- (void)serviceHandlerDidReceiveFrameWithArguments:(id)a3 error:(id)a4;
- (void)serviceHandlerDidStallWithArguments:(id)a3 error:(id)a4;
- (void)serviceHandlerDidSuspendWithArguments:(id)a3 error:(id)a4;
- (void)setSynchronizationTimeOffset:(float)a3;
- (void)setupDelegateQueue:(id)internalReceiverQueue;
- (void)setupXPCConnection;
- (void)terminateConnection;
- (void)validateAccess;
@end

@implementation AVCStreamOutput

- (AVCStreamOutput)initWithStreamToken:(int64_t)a3 delegate:(id)a4 queue:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v21 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCStreamOutput-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a6)
      {
        v13 = *a6;
      }

      else
      {
        v13 = @"nil";
      }

      *buf = 136316930;
      v23 = v11;
      v24 = 2080;
      v25 = "[AVCStreamOutput initWithStreamToken:delegate:queue:error:]";
      v26 = 1024;
      v27 = 122;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = a3;
      v32 = 2112;
      v33 = a4;
      v34 = 2112;
      v35 = a5;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d @:@ AVCStreamOutput-init (%p) streamToken=%ld, delegate=%@, queue=%@, error=%@", buf, 0x4Eu);
    }
  }

  v20.receiver = self;
  v20.super_class = AVCStreamOutput;
  v14 = [(AVCStreamOutput *)&v20 init];
  if (!v14)
  {
    goto LABEL_15;
  }

  VRTraceReset();
  if ([v14 validateAccess])
  {
    v14[120] = VRTraceGetErrorLogLevelForModule() > 7;
    *(v14 + 4) = a3;
    objc_storeWeak(v14 + 3, a4);
    v14[40] = 1;
    *(v14 + 12) = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v21 = [v14 createReceiverQueue];
    if (v21)
    {
      [AVCStreamOutput initWithStreamToken:delegate:queue:error:];
    }

    else
    {
      [v14 setupDelegateQueue:a5];
      if ([+[VCStreamOutputManager sourceExistsForStreamToken:"sourceExistsForStreamToken:"]
      {
        v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"vcStreamOutputInProcessDelegate", *(v14 + 20), @"vcStreamOutputInProcessDelegateQueue", 0}];
        *(v14 + 14) = [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager allocStreamOutputWithStreamToken:"allocStreamOutputWithStreamToken:clientPid:options:errorCode:" clientPid:*(v14 + 4) options:getpid() errorCode:v15, &v21];

        if (*(v14 + 14))
        {
          [VCRemoteVideoManager_DefaultManager() notifyCachedStateForStreamToken:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];
LABEL_14:
          v16 = MEMORY[0x1E6960C70];
          v17 = *MEMORY[0x1E6960C70];
          *(v14 + 5) = *MEMORY[0x1E6960C70];
          v18 = *(v16 + 16);
          *(v14 + 12) = v18;
          *(v14 + 56) = v17;
          *(v14 + 9) = v18;
          kdebug_trace();
          *(v14 + 17) = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v14];
          goto LABEL_15;
        }

        [AVCStreamOutput initWithStreamToken:? delegate:? queue:? error:?];
      }

      else
      {
        v21 = [v14 setupXPCConnection];
        if (!v21)
        {
          goto LABEL_14;
        }

        [AVCStreamOutput initWithStreamToken:delegate:queue:error:];
      }
    }

LABEL_15:
    if (!v21)
    {
      return v14;
    }

    goto LABEL_16;
  }

  v21 = -7;
LABEL_16:

  v14 = 0;
  if (a6)
  {
    *a6 = [AVCStreamOutput errorWithStreamOutputError:v21];
  }

  return v14;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCStreamOutput-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[AVCStreamOutput dealloc]";
      v13 = 1024;
      v14 = 174;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d @:@ AVCStreamOutput-dealloc (%p)", buf, 0x26u);
    }
  }

  [(VCStreamOutput *)self->_vcStreamOutput invalidate];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager cleanupStreamOutput:"cleanupStreamOutput:", self->_vcStreamOutput];

  self->_weakSelf = 0;
  objc_storeWeak(&self->_delegate, 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  [(AVCStreamOutput *)self terminateConnection];
  if (self->_receiverQueue)
  {
    VCRemoteImageQueue_Destroy(&self->_receiverQueue);
  }

  attachments = self->_attachments;
  if (attachments)
  {
    CFRelease(attachments);
  }

  internalReceiverQueue = self->_internalReceiverQueue;
  if (internalReceiverQueue)
  {
    dispatch_release(internalReceiverQueue);
    self->_internalReceiverQueue = 0;
  }

  kdebug_trace();
  v8.receiver = self;
  v8.super_class = AVCStreamOutput;
  [(AVCStreamOutput *)&v8 dealloc];
}

- (BOOL)validateAccess
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if (!v3)
  {
    [(AVCStreamOutput *)self validateAccess];
    goto LABEL_19;
  }

  v4 = [MEMORY[0x1E696AAE8] plistForClass:objc_opt_class() withPath:kAVCStreamOutputAccessControlPlist defaultOverride:@"streamOutputAccessControlPlist"];
  if (v4)
  {
    v5 = [(AVCStreamOutput *)self validateAccessWithProcessName:v3 accessControlPlist:v4];
  }

  else
  {
    v5 = VRTraceIsInternalOSInstalled() ^ 1;
  }

  if (!VCDefaults_GetBoolValueForKey([MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", @"allowStreamOutput", v3], v5))
  {
LABEL_19:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v14)
        {
          return v14;
        }

        [AVCStreamOutput validateAccess];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(AVCStreamOutput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v14)
        {
          return v14;
        }

        *buf = 136316418;
        v20 = v16;
        v21 = 2080;
        v22 = "[AVCStreamOutput validateAccess]";
        v23 = 1024;
        v24 = 231;
        v25 = 2112;
        v26 = v15;
        v27 = 2048;
        v28 = self;
        v29 = 2112;
        v30 = v3;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVCStreamOutput [%s] %s:%d %@(%p) Access denied for process=%@", buf, 0x3Au);
      }
    }

    LOBYTE(v14) = 0;
    return v14;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v20 = v7;
    v21 = 2080;
    v22 = "[AVCStreamOutput validateAccess]";
    v23 = 1024;
    v24 = 229;
    v25 = 2112;
    v26 = v3;
    v9 = "AVCStreamOutput [%s] %s:%d Access granted for process=%@";
    v10 = v8;
    v11 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(AVCStreamOutput *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136316418;
    v20 = v12;
    v21 = 2080;
    v22 = "[AVCStreamOutput validateAccess]";
    v23 = 1024;
    v24 = 229;
    v25 = 2112;
    v26 = v6;
    v27 = 2048;
    v28 = self;
    v29 = 2112;
    v30 = v3;
    v9 = "AVCStreamOutput [%s] %s:%d %@(%p) Access granted for process=%@";
    v10 = v13;
    v11 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_17:
  LOBYTE(v14) = 1;
  return v14;
}

- (void)setupDelegateQueue:(id)internalReceiverQueue
{
  if (!internalReceiverQueue)
  {
    internalReceiverQueue = self->_internalReceiverQueue;
  }

  self->_delegateQueue = internalReceiverQueue;
  dispatch_retain(internalReceiverQueue);
}

- (int)createReceiverQueue
{
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
  v4 = dispatch_queue_create_with_target_V2("com.apple.avconference.StreamOutput.internalReceiverQueue", 0, CustomRootQueue);
  self->_internalReceiverQueue = v4;
  if (!v4 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCStreamOutput createReceiverQueue];
    }
  }

  if (self->_internalReceiverQueue)
  {
    return 0;
  }

  else
  {
    return -3;
  }
}

- (int)setupXPCConnection
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AVConferenceXPCClient);
  self->_connection = v3;
  if (!v3)
  {
    [AVCStreamOutput setupXPCConnection];
    return v10;
  }

  v11 = @"conferenceCallID";
  v12[0] = [MEMORY[0x1E696AD98] numberWithInteger:self->_streamToken];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"streamOutputInitialize" arguments:v4];
  if (!v5 || (v6 = v5, [v5 count] == 1) && objc_msgSend(v6, "objectForKeyedSubscript:", @"ERROR"))
  {
    [(AVCStreamOutput *)&self->_streamToken setupXPCConnection];
    return v10;
  }

  v7 = [v6 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
  if (!v7)
  {
    [AVCStreamOutput setupXPCConnection];
    return v10;
  }

  v8 = [(AVCStreamOutput *)self setupRemoteQueueWithSenderQueue:v7];
  if (v8)
  {
    [(AVCStreamOutput *)v8 setupXPCConnection];
    return v10;
  }

  [(AVCStreamOutput *)self registerBlocksForNotification];
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"streamOutputCachedNotifications" arguments:v4];
  return 0;
}

- (void)remoteQueueOperationHandlerWithError:(int)a3 operation:(FigRemoteOperation *)a4
{
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCStreamOutput remoteQueueOperationHandlerWithError:operation:];
      }
    }
  }

  else if (a4->var0 == 1)
  {
    var0 = a4->var4.var0.var0;

    [(AVCStreamOutput *)self didUpdateAttachments:var0];
  }

  else if (a4->var0 == 3)
  {
    v4 = a4->var4.var0.var0;

    [(AVCStreamOutput *)self didReceiveSampleBuffer:v4];
  }
}

- (int)setupRemoteQueueWithSenderQueue:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AVCStreamOutput_setupRemoteQueueWithSenderQueue___block_invoke;
  v7[3] = &unk_1E85F5340;
  v7[4] = v5;
  VCRemoteImageQueue_CreateReceiverQueue(a3, v7, self->_internalReceiverQueue, &self->_receiverQueue);
  if (self->_receiverQueue)
  {
    return 0;
  }

  [AVCStreamOutput setupRemoteQueueWithSenderQueue:];
  return v8;
}

uint64_t __51__AVCStreamOutput_setupRemoteQueueWithSenderQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];

  return [v5 remoteQueueOperationHandlerWithError:a2 operation:a3];
}

- (void)setSynchronizationTimeOffset:(float)a3
{
  v6 = *MEMORY[0x1E69E9840];
  internalReceiverQueue = self->_internalReceiverQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCStreamOutput_setSynchronizationTimeOffset___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(internalReceiverQueue, block);
}

void __48__AVCStreamOutput_setSynchronizationTimeOffset___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__AVCStreamOutput_setSynchronizationTimeOffset___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = 136316162;
        v9 = v3;
        v10 = 2080;
        v11 = "[AVCStreamOutput setSynchronizationTimeOffset:]_block_invoke";
        v12 = 1024;
        v13 = 318;
        v14 = 2112;
        v15 = v2;
        v16 = 2048;
        v17 = v7;
        _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, "AVCStreamOutput [%s] %s:%d %@(%p) Support for the synchronizationTimeOffset property was discontinued", &v8, 0x30u);
      }
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(v5 + 52) != v6)
  {
    *(v5 + 52) = v6;
  }
}

- (void)didPause:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCStreamOutput didPause:]";
      v15 = 1024;
      v16 = 362;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = streamToken;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput callback: didPause=%d for streamToken=%u", buf, 0x28u);
    }
  }

  kdebug_trace();
  self->_isPaused = v3;
  [(AVCStreamOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__AVCStreamOutput_didPause___block_invoke;
    v9[3] = &unk_1E85F37A0;
    v9[4] = self;
    v10 = v3;
    dispatch_async(delegateQueue, v9);
  }
}

uint64_t __28__AVCStreamOutput_didPause___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 streamOutput:v3 didPause:v4];
}

- (void)didStall:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCStreamOutput didStall:]";
      v15 = 1024;
      v16 = 373;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = streamToken;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput callback: didStall=%d for streamToken=%u", buf, 0x28u);
    }
  }

  kdebug_trace();
  self->_isStalled = v3;
  [(AVCStreamOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__AVCStreamOutput_didStall___block_invoke;
    v9[3] = &unk_1E85F37A0;
    v9[4] = self;
    v10 = v3;
    dispatch_async(delegateQueue, v9);
  }
}

uint64_t __28__AVCStreamOutput_didStall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 streamOutput:v3 didStall:v4];
}

- (void)didDegrade:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCStreamOutput didDegrade:]";
      v15 = 1024;
      v16 = 384;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = streamToken;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput callback: didDegrade=%d for streamToken=%u", buf, 0x28u);
    }
  }

  kdebug_trace();
  self->_isDegraded = v3;
  [(AVCStreamOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__AVCStreamOutput_didDegrade___block_invoke;
    v9[3] = &unk_1E85F37A0;
    v9[4] = self;
    v10 = v3;
    dispatch_async(delegateQueue, v9);
  }
}

uint64_t __30__AVCStreamOutput_didDegrade___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 streamOutput:v3 didDegrade:v4];
}

- (void)didSuspend:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCStreamOutput didSuspend:]";
      v15 = 1024;
      v16 = 395;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = streamToken;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput callback: didSuspend=%d for streamToken=%u", buf, 0x28u);
    }
  }

  kdebug_trace();
  self->_isSuspended = v3;
  [(AVCStreamOutput *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__AVCStreamOutput_didSuspend___block_invoke;
    v9[3] = &unk_1E85F37A0;
    v9[4] = self;
    v10 = v3;
    dispatch_async(delegateQueue, v9);
  }
}

uint64_t __30__AVCStreamOutput_didSuspend___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 streamOutput:v3 didSuspend:v4];
}

- (void)didInvalidate
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      *buf = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[AVCStreamOutput didInvalidate]";
      v13 = 1024;
      v14 = 406;
      v15 = 1024;
      v16 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput callback: didInvalidate for streamToken=%u.", buf, 0x22u);
    }
  }

  self->_isValid = 0;
  v6 = [(VCWeakObjectHolder *)self->_weakSelf strong];
  if (v6)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__AVCStreamOutput_didInvalidate__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = v6;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __32__AVCStreamOutput_didInvalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 streamOutputDidBecomeInvalid:v3];
}

- (void)didUpdateAttachments:(__CFDictionary *)a3
{
  attachments = self->_attachments;
  if (attachments)
  {
    CFRelease(attachments);
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_attachments = v6;
}

- (void)didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    memset(&v30, 170, sizeof(v30));
    CMSampleBufferGetPresentationTimeStamp(&v30, a3);
    time = v30;
    CMTimeGetSeconds(&time);
    kdebug_trace();
    if (!self->_printSampleBufferDetailsEnabled)
    {
      goto LABEL_19;
    }

    streamToken = self->_streamToken;
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    if (CMFormatDescriptionGetMediaType(FormatDescription) == 1835365473)
    {
      v44 = -86;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43[2] = v7;
      v43[3] = v7;
      v43[0] = v7;
      v43[1] = v7;
      DataBuffer = CMSampleBufferGetDataBuffer(a3);
      VideoUtil_BlockBufferToString(DataBuffer, v43, 65);
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_19;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          DataLength = CMBlockBufferGetDataLength(DataBuffer);
          LODWORD(time.value) = 136316930;
          *(&time.value + 4) = v9;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "_AVCStreamOutput_PrintSampleBufferDetails";
          HIWORD(time.epoch) = 1024;
          v32 = 82;
          v33 = 2048;
          v34 = self;
          v35 = 1024;
          v36 = streamToken;
          v37 = 2048;
          v38 = DataLength;
          v39 = 2080;
          v40 = v43;
          v41 = 2112;
          v42 = a3;
          v13 = "AVCStreamOutput [%s] %s:%d streamOutput=%p streamToken=%u length=%zu data=%s sampleBuffer=%@";
          v14 = v10;
          v15 = 74;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &time, v15);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v22 = CMBlockBufferGetDataLength(DataBuffer);
      LODWORD(time.value) = 136316930;
      *(&time.value + 4) = v9;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_AVCStreamOutput_PrintSampleBufferDetails";
      HIWORD(time.epoch) = 1024;
      v32 = 82;
      v33 = 2048;
      v34 = self;
      v35 = 1024;
      v36 = streamToken;
      v37 = 2048;
      v38 = v22;
      v39 = 2080;
      v40 = v43;
      v41 = 2112;
      v42 = a3;
      v23 = "AVCStreamOutput [%s] %s:%d streamOutput=%p streamToken=%u length=%zu data=%s sampleBuffer=%@";
      v24 = v10;
      v25 = 74;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_19;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time.value) = 136316418;
          *(&time.value + 4) = v19;
          LOWORD(time.flags) = 2080;
          *(&time.flags + 2) = "_AVCStreamOutput_PrintSampleBufferDetails";
          HIWORD(time.epoch) = 1024;
          v32 = 84;
          v33 = 2048;
          v34 = self;
          v35 = 1024;
          v36 = streamToken;
          v37 = 2112;
          v38 = a3;
          v13 = "AVCStreamOutput [%s] %s:%d streamOutput=%p streamToken=%u sampleBuffer=%@";
          v14 = v20;
          v15 = 54;
          goto LABEL_15;
        }

LABEL_19:
        attachments = self->_attachments;
        if (attachments)
        {
          CMSetAttachments(a3, attachments, 1u);
        }

        CFRetain(a3);
        delegateQueue = self->_delegateQueue;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __42__AVCStreamOutput_didReceiveSampleBuffer___block_invoke;
        v28[3] = &unk_1E85F7FD0;
        v28[4] = self;
        v28[5] = a3;
        v29 = v30;
        dispatch_async(delegateQueue, v28);
        return;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      LODWORD(time.value) = 136316418;
      *(&time.value + 4) = v19;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_AVCStreamOutput_PrintSampleBufferDetails";
      HIWORD(time.epoch) = 1024;
      v32 = 84;
      v33 = 2048;
      v34 = self;
      v35 = 1024;
      v36 = streamToken;
      v37 = 2112;
      v38 = a3;
      v23 = "AVCStreamOutput [%s] %s:%d streamOutput=%p streamToken=%u sampleBuffer=%@";
      v24 = v20;
      v25 = 54;
    }

    _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, v23, &time, v25);
    goto LABEL_19;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_streamToken;
      LODWORD(time.value) = 136316162;
      *(&time.value + 4) = v16;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "[AVCStreamOutput didReceiveSampleBuffer:]";
      HIWORD(time.epoch) = 1024;
      v32 = 424;
      v33 = 2048;
      v34 = self;
      v35 = 1024;
      v36 = v18;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d streamOutput=%p streamToken=%u Received NULL sample buffer", &time, 0x2Cu);
    }
  }
}

void __42__AVCStreamOutput_didReceiveSampleBuffer___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(*(a1 + 40));
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v27.value = *(a1 + 48);
  v27.epoch = *(a1 + 64);
  ++*(v5 + 104);
  if (MediaType == 1835365473)
  {
    if (*(v5 + 92))
    {
      DataBuffer = CMSampleBufferGetDataBuffer(v4);
      memset(&time, 170, sizeof(time));
      lhs = v27;
      rhs = *(v5 + 80);
      CMTimeSubtract(&time, &lhs, &rhs);
      v7 = time.value / time.timescale;
      v8 = CMBlockBufferGetDataLength(DataBuffer) * 8.0 / v7;
      VCUtil_ExponentialMovingAverage((v5 + 108), v8, 10.0);
    }

    *(v5 + 80) = *&v27.value;
    *(v5 + 96) = v27.epoch;
  }

  v9 = *(a1 + 32);
  v28 = *(a1 + 48);
  v29 = *(a1 + 64);
  if ((*(v9 + 68) & 1) == 0)
  {
    v10 = *(a1 + 48);
    *(v9 + 72) = *(a1 + 64);
    *(v9 + 56) = v10;
    goto LABEL_17;
  }

  memset(&lhs, 170, sizeof(lhs));
  time = *(a1 + 48);
  rhs = *(v9 + 56);
  CMTimeSubtract(&lhs, &time, &rhs);
  if (lhs.value / lhs.timescale > 5.0)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (MediaType == 1835365473)
    {
      if (ErrorLogLevelForModule < 6)
      {
        goto LABEL_16;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v14 = *(v9 + 32);
      v15 = FourccToCStr(1835365473);
      v16 = *(v9 + 108);
      LODWORD(time.value) = 136316674;
      v17 = *(v9 + 104);
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_AVCStreamOutput_DisplayHealthInfo";
      HIWORD(time.epoch) = 1024;
      v33 = 334;
      v34 = 1024;
      v35 = v14;
      v36 = 2080;
      v37 = v15;
      v38 = 2048;
      v39 = (v16 / 1000.0);
      v40 = 1024;
      v41 = v17;
      v18 = "AVCStreamOutput [%s] %s:%d @=@ Health: AVCStreamOutput StreamToken=%u mediaType=%s estimatedDataRate=%0.2fkbps sampleBufferCount=%d";
      v19 = v13;
      v20 = 60;
    }

    else
    {
      if (ErrorLogLevelForModule < 6)
      {
        goto LABEL_16;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v23 = *(v9 + 32);
      v24 = FourccToCStr(MediaType);
      v25 = *(v9 + 104);
      LODWORD(time.value) = 136316418;
      *(&time.value + 4) = v21;
      LOWORD(time.flags) = 2080;
      *(&time.flags + 2) = "_AVCStreamOutput_DisplayHealthInfo";
      HIWORD(time.epoch) = 1024;
      v33 = 336;
      v34 = 1024;
      v35 = v23;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      LODWORD(v39) = v25;
      v18 = "AVCStreamOutput [%s] %s:%d @=@ Health: AVCStreamOutput StreamToken=%u mediaType=%s sampleBufferCount=%d";
      v19 = v22;
      v20 = 50;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &time, v20);
LABEL_16:
    *(v9 + 56) = v28;
    *(v9 + 72) = v29;
    *(v9 + 104) = 0;
  }

LABEL_17:
  time = *(a1 + 48);
  CMTimeGetSeconds(&time);
  kdebug_trace();
  [objc_msgSend(*(a1 + 32) "delegate")];
  v26 = *(a1 + 40);
  if (v26)
  {
    CFRelease(v26);
  }
}

- (void)serviceHandlerDidDieWithArguments:(id)a3 error:(id)a4
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCStreamOutput serviceHandlerDidDieWithArguments:error:];
    }
  }

  delegateQueue = self->_delegateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__AVCStreamOutput_serviceHandlerDidDieWithArguments_error___block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = self;
  dispatch_async(delegateQueue, v6);
}

uint64_t __59__AVCStreamOutput_serviceHandlerDidDieWithArguments_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 streamOutputServerDidDie:v3];
}

- (void)serviceHandlerDidPauseWithArguments:(id)a3 error:(id)a4
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"conferenceVideoPause", a4), "BOOLValue"}];

  [(AVCStreamOutput *)self didPause:v5];
}

- (void)serviceHandlerDidStallWithArguments:(id)a3 error:(id)a4
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"conferenceIsRemoteMediaStalled", a4), "BOOLValue"}];

  [(AVCStreamOutput *)self didStall:v5];
}

- (void)serviceHandlerDidDegradeWithArguments:(id)a3 error:(id)a4
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"conferenceIsVideoDegraded", a4), "BOOLValue"}];

  [(AVCStreamOutput *)self didDegrade:v5];
}

- (void)serviceHandlerDidSuspendWithArguments:(id)a3 error:(id)a4
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"conferenceIsVideoSuspended", a4), "BOOLValue"}];

  [(AVCStreamOutput *)self didSuspend:v5];
}

- (void)serviceHandlerDidReceiveFrameWithArguments:(id)a3 error:(id)a4
{
  if (a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCStreamOutput serviceHandlerDidReceiveFrameWithArguments:error:];
      }
    }
  }

  else
  {
    v5 = VCStreamInputUtil_DecodeSampleBuffer([a3 objectForKeyedSubscript:@"USERXPCARGUMENTS"]);
    if (v5)
    {
      v6 = v5;
      [(AVCStreamOutput *)self didReceiveSampleBuffer:v5];

      CFRelease(v6);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCStreamOutput serviceHandlerDidReceiveFrameWithArguments:error:];
      }
    }
  }
}

- (void)registerBlocksForNotification
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"conferenceDidServerDie" block:v9 queue:self->_internalReceiverQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_72;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"streamOutputDidRemoteVideoPause" block:v8 queue:self->_internalReceiverQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_74;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"streamOutputDidRemoteMediaStall" block:v7 queue:self->_internalReceiverQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_76;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"streamOutputDidVideoDegrade" block:v6 queue:self->_internalReceiverQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_78;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"streamOutputDidVideoSuspend" block:v5 queue:self->_internalReceiverQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_80;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"streamOutputDidReleaseRemoteVideoQueue" block:v4 queue:self->_internalReceiverQueue];
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v6 = [*(a1 + 32) strong];
    if (v6)
    {

      [v6 serviceHandlerDidDieWithArguments:a2 error:a3];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_cold_1();
      }
    }
  }
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_72(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {

      [v5 serviceHandlerDidPauseWithArguments:a2 error:0];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCStreamOutput registerBlocksForNotification]_block_invoke";
        v12 = 1024;
        v13 = 522;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput: strongSelf == nil", &v8, 0x1Cu);
      }
    }
  }
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_74(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {

      [v5 serviceHandlerDidStallWithArguments:a2 error:0];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCStreamOutput registerBlocksForNotification]_block_invoke";
        v12 = 1024;
        v13 = 534;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput: strongSelf == nil", &v8, 0x1Cu);
      }
    }
  }
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_76(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {

      [v5 serviceHandlerDidDegradeWithArguments:a2 error:0];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCStreamOutput registerBlocksForNotification]_block_invoke";
        v12 = 1024;
        v13 = 546;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput: strongSelf == nil", &v8, 0x1Cu);
      }
    }
  }
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_78(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {

      [v5 serviceHandlerDidSuspendWithArguments:a2 error:0];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCStreamOutput registerBlocksForNotification]_block_invoke";
        v12 = 1024;
        v13 = 558;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput: strongSelf == nil", &v8, 0x1Cu);
      }
    }
  }
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_80(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {

      [v5 serviceHandlerDidReleaseOutputQueueWithArguments:a2 error:0];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCStreamOutput registerBlocksForNotification]_block_invoke";
        v12 = 1024;
        v13 = 570;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCStreamOutput [%s] %s:%d AVCStreamOutput: strongSelf == nil", &v8, 0x1Cu);
      }
    }
  }
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"conferenceDidServerDie"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"streamOutputDidReleaseRemoteVideoQueue"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"streamOutputDidVideoSuspend"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"streamOutputDidVideoDegrade"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"streamOutputDidRemoteMediaStall"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"streamOutputDidRemoteVideoPause"];
}

- (void)terminateConnection
{
  if (self->_connection)
  {
    [(AVCStreamOutput *)self deregisterBlocksForNotifications];
    dispatch_sync(self->_internalReceiverQueue, &__block_literal_global_64);
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"streamOutputTerminate"];

    self->_connection = 0;
  }
}

+ (id)errorWithStreamOutputError:(int64_t)a3
{
  if (a3 < 0xFFFFFFFFFFFFFFF9)
  {
    v6 = 0;
    v5 = 32000;
  }

  else
  {
    v4 = 8 * a3 + 56;
    v5 = *(&unk_1DBD49E38 + v4);
    v6 = *(off_1E85F7FF0 + v4);
  }

  return [MEMORY[0x1E696ABC0] AVConferenceServiceError:v5 detailCode:a3 description:v6];
}

- (BOOL)validateAccessWithProcessName:(id)a3 accessControlPlist:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_36;
  }

  v5 = [a4 objectForKeyedSubscript:kAVCStreamOutputProcessAllowEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_36:
        LOBYTE(v14) = 0;
        return v14;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      LODWORD(v14) = OUTLINED_FUNCTION_34();
      if (!v14)
      {
        return v14;
      }

      *buf = 136315650;
      v61 = v40;
      OUTLINED_FUNCTION_4_25();
      OUTLINED_FUNCTION_16_0();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v39 = [(AVCStreamOutput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_36;
      }

      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      LODWORD(v14) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v14)
      {
        return v14;
      }

      *buf = 136316162;
      v61 = v47;
      OUTLINED_FUNCTION_4_25();
      v63 = 2112;
      v64 = v39;
      v65 = 2048;
      v66 = self;
      v41 = &dword_1DB56E000;
      v44 = "AVCStreamOutput [%s] %s:%d %@(%p) Failed to retrieve the allow process name list";
      v45 = buf;
      v42 = v48;
      v43 = OS_LOG_TYPE_ERROR;
      v46 = 48;
    }

    _os_log_error_impl(v41, v42, v43, v44, v45, v46);
    goto LABEL_36;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v14 = OUTLINED_FUNCTION_2_9(isKindOfClass, v7, v8, v9, v10, v11, v12, v13, v50, v52, v53, v55, v56, a3);
  if (!v14)
  {
    return v14;
  }

  v16 = v14;
  v17 = &selRef_isLatencySensitiveModeEnabled;
  v18 = *v70;
  *&v15 = 136315906;
  v51 = v15;
  *&v15 = 136316418;
  v54 = v15;
  do
  {
    v19 = 0;
    v20 = v17[456];
    do
    {
      if (*v70 != v18)
      {
        objc_enumerationMutation(v5);
      }

      v21 = *(*(&v69 + 1) + 8 * v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ErrorLogLevelForModule = [v59 isEqualToString:v21];
        if (ErrorLogLevelForModule)
        {
          LOBYTE(v14) = 1;
          return v14;
        }
      }

      else if (objc_opt_class() == self)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (ErrorLogLevelForModule)
          {
            *buf = v51;
            v61 = v37;
            v62 = 2080;
            OUTLINED_FUNCTION_3_30();
            v64 = v21;
            v34 = v38;
            v35 = "AVCStreamOutput [%s] %s:%d Unexpected type process name entry=%@. Skipping ...";
            v36 = 38;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v30 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v30 = [(AVCStreamOutput *)self performSelector:v20];
        }

        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (ErrorLogLevelForModule)
          {
            *buf = v54;
            v61 = v31;
            v62 = 2080;
            OUTLINED_FUNCTION_3_30();
            v64 = v30;
            v65 = 2048;
            v66 = self;
            v67 = v33;
            v68 = v21;
            v34 = v32;
            v35 = "AVCStreamOutput [%s] %s:%d %@(%p) Unexpected type process name entry=%@. Skipping ...";
            v36 = 58;
LABEL_22:
            _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
          }
        }
      }

      ++v19;
    }

    while (v16 != v19);
    v14 = OUTLINED_FUNCTION_2_9(ErrorLogLevelForModule, v23, v24, v25, v26, v27, v28, v29, v51, *(&v51 + 1), v54, *(&v54 + 1), v57, v59);
    v16 = v14;
    v17 = &selRef_isLatencySensitiveModeEnabled;
  }

  while (v14);
  return v14;
}

- (void)initWithStreamToken:delegate:queue:error:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithStreamToken:delegate:queue:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithStreamToken:(uint64_t *)a1 delegate:queue:error:.cold.3(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      v4 = *a1;
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[AVCStreamOutput initWithStreamToken:delegate:queue:error:]";
      v9 = 1024;
      v10 = 145;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "AVCStreamOutput [%s] %s:%d Failed to allocate the VCStreamOutput for streamToken=%u", &v5, 0x22u);
    }
  }
}

- (void)validateAccess
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)createReceiverQueue
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupXPCConnection
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_6_28(-5);
}

- (void)remoteQueueOperationHandlerWithError:operation:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupRemoteQueueWithSenderQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_6_28(-2);
}

void __48__AVCStreamOutput_setSynchronizationTimeOffset___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)serviceHandlerDidDieWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)serviceHandlerDidReceiveFrameWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)serviceHandlerDidReceiveFrameWithArguments:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __48__AVCStreamOutput_registerBlocksForNotification__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end