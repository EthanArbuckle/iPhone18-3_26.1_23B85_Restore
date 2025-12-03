@interface AVCMoments
+ (BOOL)isLocalRecordingEnabled;
+ (id)obtainSandboxConsciousURLFromXPCResult:(id)result;
- (AVCMoments)initWithConfiguration:(id)configuration delegate:(id)delegate dispatchQueue:(id)queue;
- (AVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue;
- (BOOL)avcMediaRecorderRequestDidEndRequest:(id)request withError:(id *)error;
- (BOOL)avcMediaRecorderRequestDidRejectRequest:(id)request withError:(id *)error;
- (BOOL)avcMediaRecorderRequestDidStartRequest:(id)request withError:(id *)error;
- (BOOL)connectWithConfiguration:(id)configuration;
- (BOOL)connectWithStreamToken:(int64_t)token;
- (BOOL)setupDelegate:(id)delegate dispatchQueue:(id)queue;
- (id)description;
- (id)newRequestWithConfiguration:(id)configuration;
- (id)newRequestWithMediaType:(unsigned __int8)type mode:(unsigned __int8)mode requesteeID:(id)d;
- (id)newRequestWithMediaType:(unsigned __int8)type requesteeID:(id)d;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)didEndProcessingRequestHelperWithResult:(id)result;
- (void)didFinishRequestHelperWithResult:(id)result;
- (void)didStartProcessingRequestHelperWithResult:(id)result;
- (void)disconnect;
- (void)registerBlocksForNotifications;
- (void)updateCapabilities:(unsigned int)capabilities;
@end

@implementation AVCMoments

- (AVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v18 = v11;
      v19 = 2080;
      v20 = "[AVCMoments initWithStreamToken:requesterID:delegate:dispatchQueue:]";
      v21 = 1024;
      v22 = 56;
      v23 = 1024;
      tokenCopy = token;
      v25 = 2112;
      dCopy = d;
      v27 = 2112;
      delegateCopy = delegate;
      v29 = 2112;
      queueCopy = queue;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%u, requesterID=%@, delegate=%@, queue=%@", buf, 0x40u);
    }
  }

  v16.receiver = self;
  v16.super_class = AVCMoments;
  v13 = [(AVCMoments *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_streamToken = token;
    v13->_requesterID = [d copy];
    if ([(AVCMoments *)v14 setupDelegate:delegate dispatchQueue:queue])
    {
      if ([(AVCMoments *)v14 connectWithStreamToken:token])
      {
        v14->_isLocalRecordingEnabled = +[AVCMoments isLocalRecordingEnabled];
        return v14;
      }

      [AVCMoments initWithStreamToken:requesterID:delegate:dispatchQueue:];
    }

    else
    {
      [AVCMoments initWithStreamToken:requesterID:delegate:dispatchQueue:];
    }

    return 0;
  }

  return v14;
}

- (AVCMoments)initWithConfiguration:(id)configuration delegate:(id)delegate dispatchQueue:(id)queue
{
  v27 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v16 = v9;
      v17 = 2080;
      v18 = "[AVCMoments initWithConfiguration:delegate:dispatchQueue:]";
      v19 = 1024;
      v20 = 77;
      v21 = 2112;
      configurationCopy = configuration;
      v23 = 2112;
      delegateCopy = delegate;
      v25 = 2112;
      queueCopy = queue;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d configuration=%@, delegate=%@, queue=%@", buf, 0x3Au);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCMoments;
  v11 = [(AVCMoments *)&v14 init];
  v12 = v11;
  if (v11)
  {
    if ([(AVCMoments *)v11 setupDelegate:delegate dispatchQueue:queue])
    {
      if ([(AVCMoments *)v12 connectWithConfiguration:configuration])
      {
        v12->_isLocalRecordingEnabled = 1;
        return v12;
      }

      [AVCMoments initWithConfiguration:delegate:dispatchQueue:];
    }

    else
    {
      [AVCMoments initWithConfiguration:delegate:dispatchQueue:];
    }

    return 0;
  }

  return v12;
}

+ (BOOL)isLocalRecordingEnabled
{
  if (VCFeatureFlagManager_LocalRecordingEnabled())
  {
    return 1;
  }

  return VCDefaults_GetManagedBoolValueForKey(@"enableLocalVideoRecording", 0);
}

- (BOOL)setupDelegate:(id)delegate dispatchQueue:(id)queue
{
  if (!delegate)
  {
    [AVCMoments setupDelegate:dispatchQueue:];
    return v14;
  }

  objc_storeWeak(&self->_delegate, delegate);
  v6 = objc_alloc_init(AVConferenceXPCClient);
  self->_connection = v6;
  if (!v6)
  {
    [AVCMoments setupDelegate:dispatchQueue:];
    return v13;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_requests = v7;
  if (!v7)
  {
    [AVCMoments setupDelegate:dispatchQueue:];
    return v12;
  }

  if (queue)
  {
    self->_delegateQueue = queue;
    dispatch_retain(queue);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v9 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCMoments.delegateQueue", 0, CustomRootQueue);
    self->_delegateQueue = v9;
    if (!v9)
    {
      [AVCMoments setupDelegate:dispatchQueue:];
      return v11;
    }
  }

  [(AVCMoments *)self registerBlocksForNotifications];
  return 1;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(AVCMoments *)self deregisterBlocksForNotifications];
  [(AVCMoments *)self disconnect];

  dispatch_release(self->_delegateQueue);
  objc_storeWeak(&self->_delegate, 0);

  v3.receiver = self;
  v3.super_class = AVCMoments;
  [(AVCMoments *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: streamToken[%ld] capabilities[%X] requesterID[%@]", NSStringFromClass(v4), self->_streamToken, self->_capabilities, self->_requesterID];
}

- (BOOL)connectWithConfiguration:(id)configuration
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v5;
      v17 = 2080;
      v18 = "[AVCMoments connectWithConfiguration:]";
      v19 = 1024;
      v20 = 145;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: connect for local recording", buf, 0x1Cu);
    }
  }

  v23 = @"vcMomentsConfiguration";
  v24[0] = [configuration dictionary];
  v7 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcMediaRecorderInitializeStandalone", [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1]);
  v8 = [v7 objectForKeyedSubscript:@"ERROR"];
  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMoments connectWithConfiguration:];
      }
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__AVCMoments_connectWithConfiguration___block_invoke;
    v14[3] = &unk_1E85F37F0;
    v14[4] = self;
    v14[5] = v7;
    dispatch_async(delegateQueue, v14);
    self->_streamToken = [objc_msgSend(v7 objectForKeyedSubscript:{@"vcMomentsStreamToken", "unsignedIntegerValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = self->_streamToken;
        *buf = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[AVCMoments connectWithConfiguration:]";
        v19 = 1024;
        v20 = 158;
        v21 = 1024;
        v22 = streamToken;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: streamToken=%u", buf, 0x22u);
      }
    }
  }

  return v8 == 0;
}

void __39__AVCMoments_connectWithConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updateCapabilities:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"vcMomentsCapabilities", "intValue")}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 32);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[AVCMoments connectWithConfiguration:]_block_invoke";
      v9 = 1024;
      v10 = 155;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: capabilities=%d", &v5, 0x22u);
    }
  }
}

- (BOOL)connectWithStreamToken:(int64_t)token
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[AVCMoments connectWithStreamToken:]";
      v19 = 1024;
      v20 = 163;
      v21 = 1024;
      tokenCopy2 = token;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: connect for streamToken=%u", buf, 0x22u);
    }
  }

  v25 = @"vcMomentsStreamToken";
  v26[0] = [MEMORY[0x1E696AD98] numberWithInteger:token];
  v7 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcMediaRecorderInitialize", [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1]);
  v8 = [v7 objectForKeyedSubscript:@"ERROR"];
  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_msgSend(v8 "description")];
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[AVCMoments connectWithStreamToken:]";
        v19 = 1024;
        v20 = 168;
        v21 = 1024;
        tokenCopy2 = token;
        v23 = 2080;
        v24 = v11;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCMomentsClient: Failed connection for streamToken=%u error=%s", buf, 0x2Cu);
      }
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__AVCMoments_connectWithStreamToken___block_invoke;
    v14[3] = &unk_1E85F37F0;
    v14[4] = self;
    v14[5] = v7;
    dispatch_async(delegateQueue, v14);
  }

  return v8 == 0;
}

void __37__AVCMoments_connectWithStreamToken___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updateCapabilities:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"vcMomentsCapabilities", "intValue")}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 32);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[AVCMoments connectWithStreamToken:]_block_invoke";
      v9 = 1024;
      v10 = 173;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: capabilities=%d", &v5, 0x22u);
    }
  }
}

- (void)disconnect
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCMoments disconnect]";
      v10 = 1024;
      v11 = 179;
      v12 = 1024;
      v13 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: disconnect for streamToken=%u", &v6, 0x22u);
    }
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaRecorderUninitialize"];
}

- (void)registerBlocksForNotifications
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AVCMoments_registerBlocksForNotifications__block_invoke;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaRecorderDidStartProcessingRequest" block:v8 queue:self->_delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AVCMoments_registerBlocksForNotifications__block_invoke_36;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaRecorderDidEndProcessingRequest" block:v7 queue:self->_delegateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVCMoments_registerBlocksForNotifications__block_invoke_38;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaRecorderDidFinishRequest" block:v6 queue:self->_delegateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVCMoments_registerBlocksForNotifications__block_invoke_40;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaRecorderCapabilitiesDidChange" block:v5 queue:self->_delegateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVCMoments_registerBlocksForNotifications__block_invoke_42;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaRecorderServerDidDisconnect" block:v4 queue:self->_delegateQueue];
}

uint64_t __44__AVCMoments_registerBlocksForNotifications__block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [*(v4 + 32) strong];
      if (result)
      {
        v5 = result;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            if (a2)
            {
              v8 = [objc_msgSend(a2 "description")];
            }

            else
            {
              v8 = "<nil>";
            }

            v9 = 136315906;
            v10 = v6;
            v11 = 2080;
            v12 = "[AVCMoments registerBlocksForNotifications]_block_invoke";
            v13 = 1024;
            v14 = 191;
            v15 = 2080;
            v16 = v8;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: did start processing request from AVCMomentsManager %s", &v9, 0x26u);
          }
        }

        return [v5 didStartProcessingRequestHelperWithResult:a2];
      }
    }
  }

  return result;
}

uint64_t __44__AVCMoments_registerBlocksForNotifications__block_invoke_36(uint64_t result, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [*(v4 + 32) strong];
      if (result)
      {
        v5 = result;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            if (a2)
            {
              v8 = [objc_msgSend(a2 "description")];
            }

            else
            {
              v8 = "<nil>";
            }

            v9 = 136315906;
            v10 = v6;
            v11 = 2080;
            v12 = "[AVCMoments registerBlocksForNotifications]_block_invoke";
            v13 = 1024;
            v14 = 203;
            v15 = 2080;
            v16 = v8;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: did end processing request from AVCMomentsManager %s", &v9, 0x26u);
          }
        }

        return [v5 didEndProcessingRequestHelperWithResult:a2];
      }
    }
  }

  return result;
}

uint64_t __44__AVCMoments_registerBlocksForNotifications__block_invoke_38(uint64_t result, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [*(v4 + 32) strong];
      if (result)
      {
        v5 = result;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            if (a2)
            {
              v8 = [objc_msgSend(a2 "description")];
            }

            else
            {
              v8 = "<nil>";
            }

            v9 = 136315906;
            v10 = v6;
            v11 = 2080;
            v12 = "[AVCMoments registerBlocksForNotifications]_block_invoke";
            v13 = 1024;
            v14 = 215;
            v15 = 2080;
            v16 = v8;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCMoments: did finish request from AVCMomentsManager %s", &v9, 0x26u);
          }
        }

        return [v5 didFinishRequestHelperWithResult:a2];
      }
    }
  }

  return result;
}

void __44__AVCMoments_registerBlocksForNotifications__block_invoke_40(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      v6 = [a2 objectForKeyedSubscript:@"vcMomentsCapabilities"];
      if (v6)
      {
        v7 = [v6 intValue];

        [v5 updateCapabilities:v7];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = v8;
          v12 = 2080;
          v13 = "[AVCMoments registerBlocksForNotifications]_block_invoke";
          v14 = 1024;
          v15 = 230;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to update capabilities with nil argument", &v10, 0x1Cu);
        }
      }
    }
  }
}

uint64_t __44__AVCMoments_registerBlocksForNotifications__block_invoke_42(uint64_t a1, void *a2)
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
          *&v13[14] = "[AVCMoments registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 246;
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
          *&v13[14] = "[AVCMoments registerBlocksForNotifications]_block_invoke";
          *&v13[22] = 1024;
          LODWORD(v14) = 246;
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

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaRecorderDidStartProcessingRequest"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaRecorderDidEndProcessingRequest"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaRecorderDidFinishRequest"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaRecorderServerDidDisconnect"];
}

- (void)didStartProcessingRequestHelperWithResult:(id)result
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(result objectForKeyedSubscript:{@"vcMomentsRequestMode", "intValue"}];
  v6 = [objc_msgSend(result objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
  v7 = [result objectForKeyedSubscript:@"vcMomentsTransactionID"];
  v8 = [result objectForKeyedSubscript:@"vcMomentsRequesterID"];
  v9 = [result objectForKeyedSubscript:@"vcMomentsRequesteeID"];
  if (v5 == 2)
  {
    v12 = v9;
    v13 = objc_alloc_init(AVCMediaRecorderRequestConfiguration);
    [(AVCMediaRecorderRequestConfiguration *)v13 setMediaType:v6];
    [(AVCMediaRecorderRequestConfiguration *)v13 setRequesteeID:v12];
    [(AVCMediaRecorderRequestConfiguration *)v13 setRequestMode:2];
    *buf = *MEMORY[0x1E6960C70];
    *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    [(AVCMediaRecorderRequestConfiguration *)v13 setMovieFragmentInterval:buf];
    v10 = [[AVCMomentsRequest alloc] initWithConfiguration:v13 requesterID:v8 transactionID:v7];

    [(AVCMomentsRequest *)v10 setDelegate:self];
    [(NSMutableDictionary *)self->_requests setObject:v10 forKeyedSubscript:[(AVCMomentsRequest *)v10 transactionID]];
  }

  else if (v5 == 1)
  {
    v10 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v7];
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  v14 = [result objectForKeyedSubscript:@"vcMomentsError"];
  if (!v14 || (v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0]) == 0)
  {
    v15 = 0;
    ++self->_currentPendingRequestsCount;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v17 = result ? [objc_msgSend(result "description")] : "<nil>";
      asprintf(&__str, "result=%s", v17);
      if (__str)
      {
        v28 = v15;
        __lasts = 0;
        v24 = strtok_r(__str, "\n", &__lasts);
        v25 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v25;
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v26;
              *&buf[12] = 2080;
              *&buf[14] = "[AVCMoments didStartProcessingRequestHelperWithResult:]";
              *&buf[22] = 1024;
              v32 = 298;
              v33 = 2080;
              v34 = "";
              v35 = 2080;
              v36 = v24;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v24 = strtok_r(0, "\n", &__lasts);
        }

        while (v24);
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      uTF8String = [(__CFString *)v16 UTF8String];
      v19 = result ? [objc_msgSend(result "description")] : "<nil>";
      asprintf(&__str, "%s(%p) result=%s", uTF8String, self, v19);
      if (__str)
      {
        v28 = v15;
        __lasts = 0;
        v20 = strtok_r(__str, "\n", &__lasts);
        v21 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *v21;
            if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v22;
              *&buf[12] = 2080;
              *&buf[14] = "[AVCMoments didStartProcessingRequestHelperWithResult:]";
              *&buf[22] = 1024;
              v32 = 298;
              v33 = 2080;
              v34 = "";
              v35 = 2080;
              v36 = v20;
              _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v20 = strtok_r(0, "\n", &__lasts);
        }

        while (v20);
LABEL_34:
        free(__str);
        v15 = v28;
      }
    }
  }

  [self->_delegate moments:self didStartProcessingRequest:v10 error:v15];
}

+ (id)obtainSandboxConsciousURLFromXPCResult:(id)result
{
  resultCopy = result;
  if (!result)
  {
    return resultCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return resultCopy;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [VCSandboxedURL deserialize:resultCopy];

  return [v4 consumeToken];
}

- (void)didEndProcessingRequestHelperWithResult:(id)result
{
  v85 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        requests = self->_requests;
        *buf = 136315906;
        v72 = v6;
        v73 = 2080;
        v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
        v75 = 1024;
        v76 = 321;
        v77 = 2112;
        v78 = requests;
        v9 = " [%s] %s:%d AVCMoments current requests %@";
        v10 = v7;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_requests;
        *buf = 136316418;
        v72 = v12;
        v73 = 2080;
        v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
        v75 = 1024;
        v76 = 321;
        v77 = 2112;
        v78 = v5;
        v79 = 2048;
        selfCopy5 = self;
        v81 = 2112;
        v82 = v14;
        v9 = " [%s] %s:%d %@(%p) AVCMoments current requests %@";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  v15 = [result objectForKeyedSubscript:@"vcMomentsStillImageURL"];
  v16 = [AVCMoments obtainSandboxConsciousURLFromXPCResult:v15];
  v17 = v16;
  if (v15 && !v16)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCMoments didEndProcessingRequestHelperWithResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(AVCMoments *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v59 = objc_opt_class();
          Name = class_getName(v59);
          *buf = 136316418;
          v72 = v19;
          v73 = 2080;
          v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
          v75 = 1024;
          v76 = 326;
          v77 = 2112;
          v78 = v18;
          v79 = 2048;
          selfCopy5 = self;
          v81 = 2080;
          v82 = Name;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected class for stillImageURLResult=%s or failure to decode stillImageURL.", buf, 0x3Au);
        }
      }
    }
  }

  v21 = [result objectForKeyedSubscript:@"vcMomentsMovieURL"];
  v22 = [AVCMoments obtainSandboxConsciousURLFromXPCResult:v21];
  v23 = v22;
  if (v21 && !v22)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCMoments didEndProcessingRequestHelperWithResult:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(AVCMoments *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v61 = objc_opt_class();
          v62 = class_getName(v61);
          *buf = 136316418;
          v72 = v25;
          v73 = 2080;
          v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
          v75 = 1024;
          v76 = 332;
          v77 = 2112;
          v78 = v24;
          v79 = 2048;
          selfCopy5 = self;
          v81 = 2080;
          v82 = v62;
          _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected class for movieURLResult=%s or failure to decode movieURL.", buf, 0x3Au);
        }
      }
    }
  }

  v27 = [result objectForKeyedSubscript:@"vcMomentsTransactionID"];
  v28 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v27];
  v29 = [result objectForKeyedSubscript:@"vcMomentsError"];
  if (v29)
  {
    v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:0];
  }

  else
  {
    v30 = 0;
  }

  --self->_currentPendingRequestsCount;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_66;
    }

    __str = 0;
    v66 = v23;
    v67 = v17;
    v65 = v28;
    if (result)
    {
      v32 = [objc_msgSend(result "description")];
    }

    else
    {
      v32 = "<nil>";
    }

    asprintf(&__str, "result=%s", v32);
    if (!__str)
    {
      goto LABEL_65;
    }

    v63 = v30;
    v64 = v27;
    __lasts = 0;
    v39 = strtok_r(__str, "\n", &__lasts);
    v40 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *v40;
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v72 = v41;
          v73 = 2080;
          v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
          v75 = 1024;
          v76 = 340;
          v77 = 2080;
          v78 = "";
          v79 = 2080;
          selfCopy5 = v39;
          _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v39 = strtok_r(0, "\n", &__lasts);
    }

    while (v39);
    goto LABEL_64;
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [(AVCMoments *)self performSelector:sel_logPrefix];
  }

  else
  {
    v31 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    uTF8String = [(__CFString *)v31 UTF8String];
    v66 = v23;
    v67 = v17;
    v65 = v28;
    if (result)
    {
      v34 = [objc_msgSend(result "description")];
    }

    else
    {
      v34 = "<nil>";
    }

    asprintf(&__str, "%s(%p) result=%s", uTF8String, self, v34);
    if (!__str)
    {
      goto LABEL_65;
    }

    v63 = v30;
    v64 = v27;
    __lasts = 0;
    v35 = strtok_r(__str, "\n", &__lasts);
    v36 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *v36;
        if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v72 = v37;
          v73 = 2080;
          v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
          v75 = 1024;
          v76 = 340;
          v77 = 2080;
          v78 = "";
          v79 = 2080;
          selfCopy5 = v35;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v35 = strtok_r(0, "\n", &__lasts);
    }

    while (v35);
LABEL_64:
    free(__str);
    v30 = v63;
    v27 = v64;
LABEL_65:
    v23 = v66;
    v17 = v67;
    v28 = v65;
  }

LABEL_66:
  VCMediaRecorderUtil_PrintMediaURL(v23, 6);
  if (objc_opt_respondsToSelector())
  {
    [self->_delegate moments:self didEndProcessingRequest:v28 stillImageURL:v17 movieURL:v23 error:v30];
  }

  if ([v28 hasDirectoryURL])
  {
    [AVCMoments didEndProcessingRequestHelperWithResult:?];
    goto LABEL_91;
  }

  v68 = 0;
  if (v17 && ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_80;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      *buf = 136316162;
      v72 = v44;
      v73 = 2080;
      v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
      v75 = 1024;
      v76 = 351;
      v77 = 2112;
      v78 = v17;
      v79 = 2112;
      selfCopy5 = v68;
      v46 = " [%s] %s:%d Failed to remove stillImage at URL=%@ error=%@";
      v47 = v45;
      v48 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v43 = [(AVCMoments *)self performSelector:sel_logPrefix];
      }

      else
      {
        v43 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_80;
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      *buf = 136316674;
      v72 = v49;
      v73 = 2080;
      v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
      v75 = 1024;
      v76 = 351;
      v77 = 2112;
      v78 = v43;
      v79 = 2048;
      selfCopy5 = self;
      v81 = 2112;
      v82 = v17;
      v83 = 2112;
      v84 = v68;
      v46 = " [%s] %s:%d %@(%p) Failed to remove stillImage at URL=%@ error=%@";
      v47 = v50;
      v48 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
  }

LABEL_80:
  v68 = 0;
  if (!v23 || ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0)
  {
    goto LABEL_91;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_91;
    }

    v52 = VRTraceErrorLogLevelToCSTR();
    v53 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 136316162;
    v72 = v52;
    v73 = 2080;
    v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
    v75 = 1024;
    v76 = 355;
    v77 = 2112;
    v78 = v17;
    v79 = 2112;
    selfCopy5 = v68;
    v54 = " [%s] %s:%d Failed to remove movie at URL=%@ error=%@";
    v55 = v53;
    v56 = 48;
LABEL_95:
    _os_log_error_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_ERROR, v54, buf, v56);
    goto LABEL_91;
  }

  if (objc_opt_respondsToSelector())
  {
    v51 = [(AVCMoments *)self performSelector:sel_logPrefix];
  }

  else
  {
    v51 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v57 = VRTraceErrorLogLevelToCSTR();
    v58 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v72 = v57;
      v73 = 2080;
      v74 = "[AVCMoments didEndProcessingRequestHelperWithResult:]";
      v75 = 1024;
      v76 = 355;
      v77 = 2112;
      v78 = v51;
      v79 = 2048;
      selfCopy5 = self;
      v81 = 2112;
      v82 = v17;
      v83 = 2112;
      v84 = v68;
      v54 = " [%s] %s:%d %@(%p) Failed to remove movie at URL=%@ error=%@";
      v55 = v58;
      v56 = 68;
      goto LABEL_95;
    }
  }

LABEL_91:
  [(NSMutableDictionary *)self->_requests removeObjectForKey:v27];
}

- (void)didFinishRequestHelperWithResult:(id)result
{
  *(&v57[1] + 6) = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    requests = self->_requests;
    *buf = 136315906;
    v48 = v6;
    v49 = 2080;
    v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
    v51 = 1024;
    v52 = 363;
    v53 = 2112;
    *v54 = requests;
    v9 = " [%s] %s:%d AVCMoments current requests %@";
    v10 = v7;
    v11 = 38;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(AVCMoments *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_requests;
      *buf = 136316418;
      v48 = v12;
      v49 = 2080;
      v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
      v51 = 1024;
      v52 = 363;
      v53 = 2112;
      *v54 = v5;
      *&v54[8] = 2048;
      selfCopy2 = self;
      v56 = 2112;
      v57[0] = v14;
      v9 = " [%s] %s:%d %@(%p) AVCMoments current requests %@";
      v10 = v13;
      v11 = 58;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

LABEL_12:
  v15 = [result objectForKeyedSubscript:@"vcMomentsTransactionID"];
  v16 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v15];
  if ([objc_msgSend(result objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}])
  {
    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCMoments" code:-1 userInfo:0];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v44 = v17;
      if (result)
      {
        v19 = [objc_msgSend(result "description")];
      }

      else
      {
        v19 = "<nil>";
      }

      asprintf(&__str, "result=%s", v19);
      if (!__str)
      {
        goto LABEL_41;
      }

      v41 = v16;
      v42 = v15;
      resultCopy2 = result;
      __lasts = 0;
      v26 = strtok_r(__str, "\n", &__lasts);
      v27 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *v27;
          if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v48 = v28;
            v49 = 2080;
            v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
            v51 = 1024;
            v52 = 371;
            v53 = 2080;
            *v54 = "";
            *&v54[8] = 2080;
            selfCopy2 = v26;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v26 = strtok_r(0, "\n", &__lasts);
      }

      while (v26);
      goto LABEL_40;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      uTF8String = [(__CFString *)v18 UTF8String];
      v44 = v17;
      if (result)
      {
        v21 = [objc_msgSend(result "description")];
      }

      else
      {
        v21 = "<nil>";
      }

      asprintf(&__str, "%s(%p) result=%s", uTF8String, self, v21);
      if (!__str)
      {
        goto LABEL_41;
      }

      v41 = v16;
      v42 = v15;
      resultCopy2 = result;
      __lasts = 0;
      v22 = strtok_r(__str, "\n", &__lasts);
      v23 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v48 = v24;
            v49 = 2080;
            v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
            v51 = 1024;
            v52 = 371;
            v53 = 2080;
            *v54 = "";
            *&v54[8] = 2080;
            selfCopy2 = v22;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v22 = strtok_r(0, "\n", &__lasts);
      }

      while (v22);
LABEL_40:
      free(__str);
      v15 = v42;
      result = resultCopy2;
      v16 = v41;
LABEL_41:
      v17 = v44;
    }
  }

  [self->_delegate moments:self didFinishRequest:v16 error:v17];
  [(NSMutableDictionary *)self->_requests removeObjectForKey:v15];
  if (([objc_msgSend(result objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}] & 0xFE) == 2)
  {
    v30 = self->_currentActiveRequestsCount - 1;
    self->_currentActiveRequestsCount = v30;
    if (v30 == 99999)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_55;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        currentActiveRequestsCount = self->_currentActiveRequestsCount;
        *buf = 136316162;
        v48 = v32;
        v49 = 2080;
        v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
        v51 = 1024;
        v52 = 381;
        v53 = 1024;
        *v54 = 7;
        *&v54[4] = 1024;
        *&v54[6] = currentActiveRequestsCount;
        v35 = " [%s] %s:%d Notify client with new caps %d, currentActiveRequestsCount %d";
        v36 = v33;
        v37 = 40;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v31 = [(AVCMoments *)self performSelector:sel_logPrefix];
        }

        else
        {
          v31 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_55;
        }

        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        v40 = self->_currentActiveRequestsCount;
        *buf = 136316674;
        v48 = v38;
        v49 = 2080;
        v50 = "[AVCMoments didFinishRequestHelperWithResult:]";
        v51 = 1024;
        v52 = 381;
        v53 = 2112;
        *v54 = v31;
        *&v54[8] = 2048;
        selfCopy2 = self;
        v56 = 1024;
        LODWORD(v57[0]) = 7;
        WORD2(v57[0]) = 1024;
        *(v57 + 6) = v40;
        v35 = " [%s] %s:%d %@(%p) Notify client with new caps %d, currentActiveRequestsCount %d";
        v36 = v39;
        v37 = 60;
      }

      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_55:
      [(AVCMoments *)self updateCapabilities:7];
    }
  }
}

- (void)updateCapabilities:(unsigned int)capabilities
{
  dispatch_assert_queue_V2(self->_delegateQueue);
  if (self->_capabilities != capabilities)
  {
    self->_capabilities = capabilities;
    delegate = [(AVCMoments *)self delegate];
    capabilities = self->_capabilities;

    [(AVCMomentsDelegate *)delegate moments:self capabilitiesDidChange:capabilities];
  }
}

- (id)newRequestWithMediaType:(unsigned __int8)type requesteeID:(id)d
{
  typeCopy = type;
  v12 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(AVCMediaRecorderRequestConfiguration);
  [(AVCMediaRecorderRequestConfiguration *)v7 setMediaType:typeCopy];
  [(AVCMediaRecorderRequestConfiguration *)v7 setRequestMode:2];
  [(AVCMediaRecorderRequestConfiguration *)v7 setRequesteeID:d];
  v10 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  [(AVCMediaRecorderRequestConfiguration *)v7 setMovieFragmentInterval:&v10];
  v8 = [(AVCMoments *)self newRequestWithConfiguration:v7];

  return v8;
}

- (id)newRequestWithMediaType:(unsigned __int8)type mode:(unsigned __int8)mode requesteeID:(id)d
{
  modeCopy = mode;
  typeCopy = type;
  v14 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(AVCMediaRecorderRequestConfiguration);
  [(AVCMediaRecorderRequestConfiguration *)v9 setMediaType:typeCopy];
  [(AVCMediaRecorderRequestConfiguration *)v9 setRequestMode:modeCopy];
  [(AVCMediaRecorderRequestConfiguration *)v9 setRequesteeID:d];
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  [(AVCMediaRecorderRequestConfiguration *)v9 setMovieFragmentInterval:&v12];
  v10 = [(AVCMoments *)self newRequestWithConfiguration:v9];

  return v10;
}

- (id)newRequestWithConfiguration:(id)configuration
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        v28 = 2080;
        v29 = "[AVCMoments newRequestWithConfiguration:]";
        v30 = 1024;
        v31 = 427;
        v32 = 2112;
        configurationCopy = configuration;
        v8 = " [%s] %s:%d configuration=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v11;
        v28 = 2080;
        v29 = "[AVCMoments newRequestWithConfiguration:]";
        v30 = 1024;
        v31 = 427;
        v32 = 2112;
        configurationCopy = v5;
        v34 = 2048;
        selfCopy3 = self;
        v36 = 2112;
        configurationCopy2 = configuration;
        v8 = " [%s] %s:%d %@(%p) configuration=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  if ([configuration requestMode] != 1 || self->_isLocalRecordingEnabled)
  {
    v13 = [configuration mediaType] & 0xFE;
    if (v13 == 2 && self->_currentActiveRequestsCount > 99999)
    {
      [(AVCMoments *)self newRequestWithConfiguration:buf];
    }

    else
    {
      v14 = [[AVCMomentsRequest alloc] initWithConfiguration:configuration requesterID:self->_requesterID];
      if (v14)
      {
        v15 = v14;
        [(AVCMomentsRequest *)v14 setDelegate:self];
        [(NSMutableDictionary *)self->_requests setObject:v15 forKeyedSubscript:[(AVCMomentsRequest *)v15 transactionID]];
        currentActiveRequestsCount = self->_currentActiveRequestsCount;
        if (v13 == 2)
        {
          self->_currentActiveRequestsCount = ++currentActiveRequestsCount;
        }

        if (currentActiveRequestsCount == 100000)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [AVCMoments newRequestWithConfiguration:];
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v17 = [(AVCMoments *)self performSelector:sel_logPrefix];
            }

            else
            {
              v17 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                *&buf[4] = v18;
                v28 = 2080;
                v29 = "[AVCMoments newRequestWithConfiguration:]";
                v30 = 1024;
                v31 = 450;
                v32 = 2112;
                configurationCopy = v17;
                v34 = 2048;
                selfCopy3 = self;
                v36 = 1024;
                LODWORD(configurationCopy2) = 1;
                _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Notify client reached max request capabilities %d", buf, 0x36u);
              }
            }
          }

          delegateQueue = self->_delegateQueue;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __42__AVCMoments_newRequestWithConfiguration___block_invoke;
          v25[3] = &unk_1E85F38B8;
          v25[4] = self;
          v26 = 1;
          dispatch_async(delegateQueue, v25);
        }

        return v15;
      }

      [(AVCMoments *)self newRequestWithConfiguration:buf];
    }

    return *buf;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMoments newRequestWithConfiguration:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v23;
        v28 = 2080;
        v29 = "[AVCMoments newRequestWithConfiguration:]";
        v30 = 1024;
        v31 = 430;
        v32 = 2112;
        configurationCopy = v22;
        v34 = 2048;
        selfCopy3 = self;
        v36 = 1024;
        LODWORD(configurationCopy2) = 1;
        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) mode=%d is not supported", buf, 0x36u);
      }
    }
  }

  return 0;
}

- (BOOL)avcMediaRecorderRequestDidStartRequest:(id)request withError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (request)
        {
          v10 = [objc_msgSend(request "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        *v23 = 136315906;
        *&v23[4] = v8;
        *&v23[12] = 2080;
        *&v23[14] = "[AVCMoments avcMediaRecorderRequestDidStartRequest:withError:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 462;
        WORD2(v24) = 2080;
        *(&v24 + 6) = v10;
        v14 = " [%s] %s:%d AVCMoments: avcMomentsRequestDidStartRequest %s";
        v15 = v9;
        v16 = 38;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (request)
        {
          v13 = [objc_msgSend(request "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        *v23 = 136316418;
        *&v23[4] = v11;
        *&v23[12] = 2080;
        *&v23[14] = "[AVCMoments avcMediaRecorderRequestDidStartRequest:withError:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 462;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v7;
        HIWORD(v24) = 2048;
        selfCopy2 = self;
        LOWORD(v26) = 2080;
        *(&v26 + 2) = v13;
        v14 = " [%s] %s:%d %@(%p) AVCMoments: avcMomentsRequestDidStartRequest %s";
        v15 = v12;
        v16 = 58;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v23, v16);
      }
    }
  }

  v17 = [request validateWithError:{error, *v23, *&v23[16], v24, selfCopy2, v26}];
  if (v17)
  {
    -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcMediaRecorderStartRequest", [request serialize]);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMoments avcMediaRecorderRequestDidStartRequest:withError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (*error)
        {
          v22 = [objc_msgSend(*error "description")];
        }

        else
        {
          v22 = "<nil>";
        }

        *v23 = 136316418;
        *&v23[4] = v19;
        *&v23[12] = 2080;
        *&v23[14] = "[AVCMoments avcMediaRecorderRequestDidStartRequest:withError:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 465;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v18;
        HIWORD(v24) = 2048;
        selfCopy2 = self;
        LOWORD(v26) = 2080;
        *(&v26 + 2) = v22;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) failed validation with error %s", v23, 0x3Au);
      }
    }
  }

  return v17;
}

- (BOOL)avcMediaRecorderRequestDidEndRequest:(id)request withError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (request)
        {
          v10 = [objc_msgSend(request "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        *v22 = 136315906;
        *&v22[4] = v8;
        *&v22[12] = 2080;
        *&v22[14] = "[AVCMoments avcMediaRecorderRequestDidEndRequest:withError:]";
        *&v22[22] = 1024;
        LODWORD(v23) = 475;
        WORD2(v23) = 2080;
        *(&v23 + 6) = v10;
        v14 = " [%s] %s:%d AVCMoments: avcMomentsRequestDidEndRequest %s";
        v15 = v9;
        v16 = 38;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (request)
        {
          v13 = [objc_msgSend(request "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        *v22 = 136316418;
        *&v22[4] = v11;
        *&v22[12] = 2080;
        *&v22[14] = "[AVCMoments avcMediaRecorderRequestDidEndRequest:withError:]";
        *&v22[22] = 1024;
        LODWORD(v23) = 475;
        WORD2(v23) = 2112;
        *(&v23 + 6) = v7;
        HIWORD(v23) = 2048;
        selfCopy2 = self;
        LOWORD(v25) = 2080;
        *(&v25 + 2) = v13;
        v14 = " [%s] %s:%d %@(%p) AVCMoments: avcMomentsRequestDidEndRequest %s";
        v15 = v12;
        v16 = 58;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v22, v16);
      }
    }
  }

  v17 = [request validateWithError:{error, *v22, *&v22[16], v23, selfCopy2, v25}];
  if (v17)
  {
    if ([request mediaType] == 2 || objc_msgSend(request, "mediaType") == 4 || objc_msgSend(request, "mediaType") == 5)
    {
      -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcMediaRecorderEndRequest", [request serialize]);
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMoments avcMediaRecorderRequestDidEndRequest:withError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v22 = 136316162;
        *&v22[4] = v19;
        *&v22[12] = 2080;
        *&v22[14] = "[AVCMoments avcMediaRecorderRequestDidEndRequest:withError:]";
        *&v22[22] = 1024;
        LODWORD(v23) = 477;
        WORD2(v23) = 2112;
        *(&v23 + 6) = v18;
        HIWORD(v23) = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) failed validation", v22, 0x30u);
      }
    }
  }

  return v17;
}

- (BOOL)avcMediaRecorderRequestDidRejectRequest:(id)request withError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [request validateWithError:error];
  if (v6)
  {
    -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcMediaRecorderRejectRequest", [request serialize]);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMoments avcMediaRecorderRequestDidRejectRequest:withError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCMoments *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[AVCMoments avcMediaRecorderRequestDidRejectRequest:withError:]";
        v15 = 1024;
        v16 = 490;
        v17 = 2112;
        v18 = v7;
        v19 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) failed validation", &v11, 0x30u);
      }
    }
  }

  return v6;
}

- (void)initWithStreamToken:requesterID:delegate:dispatchQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to set up delegate with streamToken=%u", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithStreamToken:requesterID:delegate:dispatchQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to connect to moments server with streamToken=%u", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:delegate:dispatchQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithConfiguration:delegate:dispatchQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupDelegate:dispatchQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDelegate:dispatchQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDelegate:dispatchQueue:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDelegate:dispatchQueue:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)connectWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)didEndProcessingRequestHelperWithResult:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v0 = objc_opt_class();
  class_getName(v0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)didEndProcessingRequestHelperWithResult:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v0 = objc_opt_class();
  class_getName(v0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)didEndProcessingRequestHelperWithResult:(void *)a1 .cold.3(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v11 = 348;
        v4 = " [%s] %s:%d Skipping removing files since a client directoryURL is present.";
        v5 = v3;
        v6 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v4, &v9, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v7;
        OUTLINED_FUNCTION_0();
        v11 = 348;
        v12 = 2112;
        v13 = v2;
        v14 = 2048;
        v15 = a1;
        v4 = " [%s] %s:%d %@(%p) Skipping removing files since a client directoryURL is present.";
        v5 = v8;
        v6 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)newRequestWithConfiguration:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[AVCMoments newRequestWithConfiguration:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d mode=%d is not supported", v3, 0x22u);
}

- (void)newRequestWithConfiguration:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[AVCMoments newRequestWithConfiguration:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  v5 = 1;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Notify client reached max request capabilities %d", v2, 0x22u);
}

- (void)newRequestWithConfiguration:(void *)a1 .cold.3(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)newRequestWithConfiguration:(void *)a1 .cold.4(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)avcMediaRecorderRequestDidStartRequest:withError:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  if (*v0)
  {
    [objc_msgSend(*v0 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)avcMediaRecorderRequestDidEndRequest:withError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 477;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed validation", v1, 0x1Cu);
}

- (void)avcMediaRecorderRequestDidRejectRequest:withError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 490;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed validation", v1, 0x1Cu);
}

@end