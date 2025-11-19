@interface AVAudioClient
+ (BOOL)hasActiveAudioSession;
+ (BOOL)isMicrophoneMuted;
+ (BOOL)isMixingVoiceWithMediaEnabled;
+ (BOOL)setInputDevice:(id)a3;
+ (BOOL)setOutputDevice:(id)a3;
+ (id)currentInputDevice;
+ (id)currentOutputDevice;
+ (id)sharedInstance;
+ (int)registerForMutedTalkerNotifications:(id)a3;
+ (int)setMuteStateChangedHandler:(id)a3;
+ (int)unregisterFromMutedTalkerNotifications;
+ (void)registerSecureMicrophoneEngagedHandler:(id)a3;
+ (void)resetAudioSessionOutputPortOverride;
+ (void)setAudioSessionProperties:(id)a3;
+ (void)setFollowSystemInputEnabled:(BOOL)a3;
+ (void)setFollowSystemOutputEnabled:(BOOL)a3;
+ (void)setMicrophoneMuted:(BOOL)a3;
+ (void)setMixingVoiceWithMediaEnabled:(BOOL)a3;
+ (void)startAudioSession;
+ (void)startAudioSessionWithCompletionHandler:(id)a3;
+ (void)stopAudioSession;
- (AVAudioClient)init;
- (AVAudioDevice)currentInputDevice;
- (AVAudioDevice)currentOutputDevice;
- (BOOL)hasActiveAudioSession;
- (BOOL)isMicrophoneMuted;
- (BOOL)isMixingVoiceWithMediaEnabled;
- (BOOL)reregisterClientSideHandlersOverXPC;
- (BOOL)reregisterMuteStateChangedHandlerOverXPC;
- (BOOL)reregisterMutedTalkerNotificationOverXPC;
- (BOOL)setInputDevice:(id)a3;
- (BOOL)setOutputDevice:(id)a3;
- (BOOL)setupXPCConnection;
- (id)changeListener;
- (id)devices;
- (id)initSharedInstance;
- (id)inputDevices;
- (id)outputDevices;
- (id)sendMessageSync:(char *)a3 arguments:(id)a4;
- (int)registerForMutedTalkerNotifications:(id)a3;
- (int)setMuteStateChangedEventHandler:(id)a3;
- (int)unregisterFromMutedTalkerNotifications;
- (void)cleanupMutedTalkerNotificationHandler;
- (void)cleanupSecureMicrophoneEngagedHandler;
- (void)cleanupXPCConnection;
- (void)dealloc;
- (void)dispatchedHandleMuteStateChangedEventWithXPCArguments:(id)a3;
- (void)handleMutedTalkerNotificationWithXPCArguments:(id)a3;
- (void)initSharedInstance;
- (void)registerBlocksForDelegateNotifications;
- (void)registerSecureMicrophoneEngagedHandler:(id)a3;
- (void)resetAudioSessionOutputPortOverride;
- (void)resetXPCConnection;
- (void)sendMessageAsync:(char *)a3 arguments:(id)a4 reply:(id)a5;
- (void)setAudioSessionProperties:(id)a3;
- (void)setChangeListener:(id)a3;
- (void)setFollowSystemInputEnabled:(BOOL)a3;
- (void)setFollowSystemOutputEnabled:(BOOL)a3;
- (void)setMicrophoneMuted:(BOOL)a3;
- (void)setMixingVoiceWithMediaEnabled:(BOOL)a3;
- (void)setMuteStateChangedHandlerInternal:(id)a3;
- (void)setupXPCConnection;
- (void)startAudioSessionWithCompletionHandler:(id)a3;
- (void)stopAudioSession;
- (void)unregisterBlocksForDelegateNotifications;
@end

@implementation AVAudioClient

+ (id)sharedInstance
{
  result = sharedInstance__sharedAudioClient;
  if (!sharedInstance__sharedAudioClient)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!sharedInstance__sharedAudioClient)
    {
      sharedInstance__sharedAudioClient = [[AVAudioClient alloc] initSharedInstance];
    }

    objc_sync_exit(v3);
    return sharedInstance__sharedAudioClient;
  }

  return result;
}

- (id)initSharedInstance
{
  v20 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVAudioClient;
  v2 = [(AVAudioClient *)&v11 init];
  if (v2)
  {
    VRTraceReset();
    v2->_processId = getpid();
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVAudioClient.AudioSessionQueue", 0, CustomRootQueue);
    v2->_clientAudioSessionQueue = v4;
    if (v4)
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-initializeAudioSession");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v13 = v5;
          v14 = 2080;
          v15 = "[AVAudioClient initSharedInstance]";
          v16 = 1024;
          v17 = 88;
          v18 = 2048;
          v19 = v2;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-initializeAudioSession (%p)", buf, 0x26u);
        }
      }

      v7 = objc_alloc_init(MEMORY[0x1E696AB30]);
      v2->_audioSessionRefCondVar = v7;
      if (v7)
      {
        if ([(AVAudioClient *)v2 setupXPCConnection])
        {
          goto LABEL_8;
        }

        [AVAudioClient initSharedInstance];
      }

      else
      {
        [AVAudioClient initSharedInstance];
      }
    }

    else
    {
      [AVAudioClient initSharedInstance];
    }

    v2 = 0;
  }

LABEL_8:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-initSharedInstance");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = "[AVAudioClient initSharedInstance]";
      v16 = 1024;
      v17 = 106;
      v18 = 2048;
      v19 = v2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-initSharedInstance (%p)", buf, 0x26u);
    }
  }

  return v2;
}

- (AVAudioClient)init
{
  v15 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVAudioClient;
  v2 = [(AVAudioClient *)&v6 init];
  if (v2)
  {
    VRTraceReset();
    v2->deviceList = objc_alloc_init(AVAudioDeviceList);
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVAudioClient init]";
      v11 = 1024;
      v12 = 115;
      v13 = 2048;
      v14 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-init (%p)", buf, 0x26u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVAudioClient dealloc]";
      v11 = 1024;
      v12 = 120;
      v13 = 2048;
      v14 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-dealloc (%p)", buf, 0x26u);
    }
  }

  [(AVAudioClient *)self cleanupXPCConnection];

  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  if (clientAudioSessionQueue)
  {
    dispatch_release(clientAudioSessionQueue);
  }

  [(AVAudioClient *)self cleanupSecureMicrophoneEngagedHandler];
  [(AVAudioClient *)self cleanupMutedTalkerNotificationHandler];
  [(AVAudioClient *)self setMuteStateChangedHandlerInternal:0];
  [(AVAudioDeviceList *)self->deviceList setChangeListener:0];

  v6.receiver = self;
  v6.super_class = AVAudioClient;
  [(AVAudioClient *)&v6 dealloc];
}

- (BOOL)reregisterMutedTalkerNotificationOverXPC
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_mutedTalkerNotificationHandler || (v3 = [-[AVAudioClient sendMessageSync:arguments:](self sendMessageSync:"mutedTalkerRegister" arguments:{0), "objectForKeyedSubscript:", @"ERROR"}]) == 0)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_6;
  }

  v5 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v7)
  {
    processId = self->_processId;
    connectionAttempts = self->_connectionAttempts;
    v11 = 136316418;
    v12 = v5;
    v13 = 2080;
    v14 = "[AVAudioClient reregisterMutedTalkerNotificationOverXPC]";
    v15 = 1024;
    v16 = 160;
    v17 = 1024;
    v18 = processId;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = connectionAttempts;
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to reregister the muted talker notification block. processId=%d error=%@ connectionAttempts=%u", &v11, 0x32u);
LABEL_6:
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)reregisterMuteStateChangedHandlerOverXPC
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_muteStateChangedHandler || (v3 = [-[AVAudioClient sendMessageSync:arguments:](self sendMessageSync:"muteStateChangedHandler" arguments:{&unk_1F579E828), "objectForKeyedSubscript:", @"ERROR"}]) == 0)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_6;
  }

  v5 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v7)
  {
    processId = self->_processId;
    connectionAttempts = self->_connectionAttempts;
    v11 = 136316418;
    v12 = v5;
    v13 = 2080;
    v14 = "[AVAudioClient reregisterMuteStateChangedHandlerOverXPC]";
    v15 = 1024;
    v16 = 184;
    v17 = 1024;
    v18 = processId;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = connectionAttempts;
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to reregister the mute state changed handler block. processId=%d error=%@ connectionAttempts=%u", &v11, 0x32u);
LABEL_6:
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)setupXPCConnection
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AVConferenceXPCClient);
  self->_xpcConnection = v3;
  if (v3)
  {
    [(AVConferenceXPCClient *)v3 setConnectionPersists:1];
    v4 = [(AVConferenceXPCClient *)self->_xpcConnection sendMessageSync:"newClient" arguments:0];
    v5 = [v4 objectForKeyedSubscript:@"ERROR"];
    self->_mixingVoiceWithMediaEnabled = [objc_msgSend(v4 objectForKeyedSubscript:{@"audioClientAudioSessionMixingVoiceWithMedia", "BOOLValue"}];
    if (v5)
    {
      [(AVAudioClient *)self setupXPCConnection];
      return v7;
    }

    else
    {
      [(AVAudioClient *)self registerBlocksForDelegateNotifications];

      return [(AVAudioClient *)self reregisterClientSideHandlersOverXPC];
    }
  }

  else
  {
    [(AVAudioClient *)self setupXPCConnection];
    return v8;
  }
}

- (void)cleanupMutedTalkerNotificationHandler
{
  mutedTalkerNotificationHandler = self->_mutedTalkerNotificationHandler;
  if (mutedTalkerNotificationHandler)
  {
    _Block_release(mutedTalkerNotificationHandler);
    self->_mutedTalkerNotificationHandler = 0;
  }
}

- (void)setMuteStateChangedHandlerInternal:(id)a3
{
  muteStateChangedHandler = self->_muteStateChangedHandler;
  if (muteStateChangedHandler != a3)
  {
    _Block_release(muteStateChangedHandler);
    self->_muteStateChangedHandler = _Block_copy(a3);
  }
}

- (void)cleanupXPCConnection
{
  if (self->_xpcConnection)
  {
    [(AVAudioClient *)self unregisterBlocksForDelegateNotifications];

    self->_xpcConnection = 0;
    *&self->_followSystemInputEnabled = 0;
  }
}

- (id)sendMessageSync:(char *)a3 arguments:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
LABEL_4:

    return [(AVConferenceXPCClient *)xpcConnection sendMessageSync:a3 arguments:a4];
  }

  if ([(AVAudioClient *)self setupXPCConnection])
  {
    xpcConnection = self->_xpcConnection;
    goto LABEL_4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      processId = self->_processId;
      *buf = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = "[AVAudioClient sendMessageSync:arguments:]";
      v18 = 1024;
      v19 = 270;
      v20 = 1024;
      v21 = processId;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d Failed to setup the connection. processId=%d", buf, 0x22u);
    }
  }

  v13 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32002 detailCode:0 description:{@"Failed to setup connection", @"ERROR"}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
}

- (void)sendMessageAsync:(char *)a3 arguments:(id)a4 reply:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
LABEL_4:

    [(AVConferenceXPCClient *)xpcConnection sendMessageAsync:a3 arguments:a4 reply:a5];
    return;
  }

  if ([(AVAudioClient *)self setupXPCConnection])
  {
    xpcConnection = self->_xpcConnection;
    goto LABEL_4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      processId = self->_processId;
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "[AVAudioClient sendMessageAsync:arguments:reply:]";
      v17 = 1024;
      v18 = 278;
      v19 = 1024;
      v20 = processId;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d Failed to setup the connection. processId=%d", &v13, 0x22u);
    }
  }

  if (a5)
  {
    (*(a5 + 2))(a5, 0, [MEMORY[0x1E696ABC0] AVConferenceServiceError:32002 detailCode:0 description:@"Failed to setup connection"]);
  }
}

- (void)startAudioSessionWithCompletionHandler:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVAudioClient_startAudioSessionWithCompletionHandler___block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = self;
  block[5] = a3;
  dispatch_async(clientAudioSessionQueue, block);
}

uint64_t __56__AVAudioClient_startAudioSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-startAudioSessionWithCompletionHandler");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = "New";
      v6 = *(v4 + 84);
      if (*(v4 + 57))
      {
        v5 = "Redundant";
      }

      *buf = 136316418;
      v13 = v2;
      v14 = 2080;
      v15 = "[AVAudioClient startAudioSessionWithCompletionHandler:]_block_invoke";
      v16 = 1024;
      v17 = 293;
      v18 = 2048;
      v19 = v4;
      v20 = 2080;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-startAudioSessionWithCompletionHandler (%p) %s startAudioSession call from client. processId=%d", buf, 0x36u);
    }
  }

  *(*(a1 + 32) + 57) = 1;
  v10 = @"startAudioSession";
  v11 = [MEMORY[0x1E695DFB0] null];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AVAudioClient_startAudioSessionWithCompletionHandler___block_invoke_38;
  v9[3] = &unk_1E85F7CF0;
  return [*(a1 + 32) sendMessageAsync:"audioSession" arguments:v7 reply:v9];
}

uint64_t __56__AVAudioClient_startAudioSessionWithCompletionHandler___block_invoke_38(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((!a3 || [a3 code] == 32025 || objc_msgSend(a3, "code") == 32005) && (objc_msgSend(*(*(a1 + 32) + 64), "lock"), *(*(a1 + 32) + 56) = 1, objc_msgSend(*(*(a1 + 32) + 64), "signal"), objc_msgSend(*(*(a1 + 32) + 64), "unlock"), !a3))
  {
    v5 = *(*(a1 + 32) + 56);
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-didStart");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(v8 + 84);
      v12 = 136316930;
      v13 = v6;
      v14 = 2080;
      v15 = "[AVAudioClient startAudioSessionWithCompletionHandler:]_block_invoke";
      v16 = 1024;
      v17 = 314;
      v18 = 2048;
      v19 = v8;
      v20 = 1024;
      v21 = v10;
      v22 = 2048;
      v23 = v9;
      v24 = 1024;
      v25 = v5 & 1;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-didStart (%p), processId=%d, completionHandler=%p, didSucceed=%d, error=%@", &v12, 0x46u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v5 & 1, a3);
  }

  return result;
}

- (void)setAudioSessionProperties:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    clientAudioSessionQueue = self->_clientAudioSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVAudioClient_setAudioSessionProperties___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(clientAudioSessionQueue, block);
  }
}

uint64_t __43__AVAudioClient_setAudioSessionProperties___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setAudioSessionProperties");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 136315906;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVAudioClient setAudioSessionProperties:]_block_invoke";
      v12 = 1024;
      v13 = 331;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setAudioSessionProperties (%p)", buf, 0x26u);
    }
  }

  v6[1] = @"audioClientAudioSessionParams";
  v7[0] = [MEMORY[0x1E695DFB0] null];
  v7[1] = *(a1 + 40);
  return [*(a1 + 32) sendMessageAsync:"audioSession" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", v7, v6, 2), &__block_literal_global_120}];
}

void __43__AVAudioClient_setAudioSessionProperties___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVAudioClient setAudioSessionProperties:]_block_invoke";
      v10 = 1024;
      v11 = 336;
      v12 = 2112;
      v13 = a3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d setAudioSessionProperties failed with error=%@", &v6, 0x26u);
    }
  }
}

- (void)stopAudioSession
{
  v3[5] = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__AVAudioClient_stopAudioSession__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(clientAudioSessionQueue, v3);
}

void __33__AVAudioClient_stopAudioSession__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 57) != 1)
  {
    goto LABEL_5;
  }

  [*(v2 + 64) lock];
  v3 = *(a1 + 32);
  if (*(v3 + 56) & 1) != 0 || (v4 = [*(v3 + 64) waitUntilDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 5.0)}], v3 = *(a1 + 32), (v4))
  {
    *(v3 + 56) = 0;
    [*(*(a1 + 32) + 64) unlock];
LABEL_5:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        if (*(v7 + 57))
        {
          v8 = "New";
        }

        else
        {
          v8 = "Redundant";
        }

        v9 = *(v7 + 84);
        *buf = 136316162;
        v13 = v5;
        v14 = 2080;
        v15 = "[AVAudioClient stopAudioSession]_block_invoke";
        v16 = 1024;
        v17 = 361;
        v18 = 2080;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d %s stopAudioSession call from client. processId=%d", buf, 0x2Cu);
      }
    }

    *(*(a1 + 32) + 57) = 0;
    v11 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 32) sendMessageAsync:"audioSession" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", &v11, &v10, 1), 0}];
    return;
  }

  [*(v3 + 64) unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __33__AVAudioClient_stopAudioSession__block_invoke_cold_1();
    }
  }
}

- (void)resetAudioSessionOutputPortOverride
{
  v3[5] = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__AVAudioClient_resetAudioSessionOutputPortOverride__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(clientAudioSessionQueue, v3);
}

uint64_t __52__AVAudioClient_resetAudioSessionOutputPortOverride__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 84);
      *buf = 136315906;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVAudioClient resetAudioSessionOutputPortOverride]_block_invoke";
      v12 = 1024;
      v13 = 376;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
    }
  }

  v7 = [MEMORY[0x1E695DFB0] null];
  return [*(a1 + 32) sendMessageAsync:"audioSession" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", &v7, &v6, 1), 0}];
}

- (BOOL)hasActiveAudioSession
{
  [(NSCondition *)self->_audioSessionRefCondVar lock];
  audioSessionIsActive = self->_audioSessionIsActive;
  [(NSCondition *)self->_audioSessionRefCondVar unlock];
  return audioSessionIsActive;
}

- (void)setMicrophoneMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVAudioClient_setMicrophoneMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(clientAudioSessionQueue, block);
}

uint64_t __36__AVAudioClient_setMicrophoneMuted___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 84);
      *buf = 136315906;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVAudioClient setMicrophoneMuted:]_block_invoke";
      v12 = 1024;
      v13 = 398;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
    }
  }

  v6[1] = @"audioClientAudioSessionMute";
  v7[0] = [MEMORY[0x1E695DFB0] null];
  v7[1] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  return [*(a1 + 32) sendMessageAsync:"audioSession" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", v7, v6, 2), 0}];
}

- (BOOL)isMicrophoneMuted
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVAudioClient_isMicrophoneMuted__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(clientAudioSessionQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__AVAudioClient_isMicrophoneMuted__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"getMute";
  v4[0] = [MEMORY[0x1E695DFB0] null];
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) sendMessageSync:"audioSession" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)), "objectForKeyedSubscript:", @"audioClientAudioSessionMute", "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMixingVoiceWithMediaEnabled:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      processId = self->_processId;
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVAudioClient setMixingVoiceWithMediaEnabled:]";
      v15 = 1024;
      v16 = 424;
      v17 = 1024;
      v18 = processId;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
    }
  }

  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AVAudioClient_setMixingVoiceWithMediaEnabled___block_invoke;
  v9[3] = &unk_1E85F37A0;
  v9[4] = self;
  v10 = a3;
  dispatch_async(clientAudioSessionQueue, v9);
}

void __48__AVAudioClient_setMixingVoiceWithMediaEnabled___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 80) == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 32) + 80);
        v5 = 136315906;
        v6 = v2;
        v7 = 2080;
        v8 = "[AVAudioClient setMixingVoiceWithMediaEnabled:]_block_invoke";
        v9 = 1024;
        v10 = 432;
        v11 = 1024;
        v12 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d ignoring, isMixingVoiceWithMediaEnabled already set to %d", &v5, 0x22u);
      }
    }
  }

  else
  {
    v13 = @"audioClientAudioSessionMixingVoiceWithMedia";
    v14[0] = [MEMORY[0x1E696AD98] numberWithBool:?];
    [*(a1 + 32) sendMessageSync:"audioSessionVoiceMixing" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
    *(*(a1 + 32) + 80) = *(a1 + 40);
  }
}

- (BOOL)isMixingVoiceWithMediaEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVAudioClient_isMixingVoiceWithMediaEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(clientAudioSessionQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (AVAudioDevice)currentInputDevice
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVAudioClient_currentInputDevice__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(clientAudioSessionQueue, block);
  v3 = v8[5];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __35__AVAudioClient_currentInputDevice__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"getCurrentAudioInputDevice";
  v6[0] = [MEMORY[0x1E695DFB0] null];
  v2 = [*(a1 + 32) sendMessageSync:"audioSession" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
  v3 = [v2 objectForKeyedSubscript:@"audioClientAudioDevice"];
  result = [v3 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  if ((result & 1) == 0)
  {
    result = +[AVAudioDeviceList deviceForUID:](AVAudioDeviceList, "deviceForUID:", [v2 objectForKeyedSubscript:@"audioClientAudioDevice"]);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (AVAudioDevice)currentOutputDevice
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVAudioClient_currentOutputDevice__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(clientAudioSessionQueue, block);
  v3 = v8[5];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __36__AVAudioClient_currentOutputDevice__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"getCurrentAudioOutputDevice";
  v6[0] = [MEMORY[0x1E695DFB0] null];
  v2 = [*(a1 + 32) sendMessageSync:"audioSession" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
  v3 = [v2 objectForKeyedSubscript:@"audioClientAudioDevice"];
  result = [v3 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  if ((result & 1) == 0)
  {
    result = +[AVAudioDeviceList deviceForUID:](AVAudioDeviceList, "deviceForUID:", [v2 objectForKeyedSubscript:@"audioClientAudioDevice"]);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)setInputDevice:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a3 UID])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    clientAudioSessionQueue = self->_clientAudioSessionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__AVAudioClient_setInputDevice___block_invoke;
    v9[3] = &unk_1E85F6638;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = &v10;
    dispatch_async(clientAudioSessionQueue, v9);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(AVAudioClient *)v7 setInputDevice:a3];
      }
    }

    v6 = 0;
  }

  return v6 & 1;
}

void *__32__AVAudioClient_setInputDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 84);
      *buf = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVAudioClient setInputDevice:]_block_invoke";
      v13 = 1024;
      v14 = 502;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
    }
  }

  v7[1] = @"audioClientAudioDevice";
  v8[0] = [MEMORY[0x1E695DFB0] null];
  v8[1] = [*(a1 + 40) UID];
  result = [*(a1 + 32) sendMessageSync:"audioSession" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
  if (result)
  {
    v6 = result;
    result = [result objectForKeyedSubscript:@"ERROR"];
    if (!result)
    {
      result = [v6 objectForKeyedSubscript:@"SERVERDIED"];
      if (!result)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

- (BOOL)setOutputDevice:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a3 UID])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    clientAudioSessionQueue = self->_clientAudioSessionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__AVAudioClient_setOutputDevice___block_invoke;
    v9[3] = &unk_1E85F6638;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = &v10;
    dispatch_async(clientAudioSessionQueue, v9);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(AVAudioClient *)v7 setOutputDevice:a3];
      }
    }

    v6 = 0;
  }

  return v6 & 1;
}

void *__33__AVAudioClient_setOutputDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 84);
      *buf = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVAudioClient setOutputDevice:]_block_invoke";
      v13 = 1024;
      v14 = 528;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
    }
  }

  v7[1] = @"audioClientAudioDevice";
  v8[0] = [MEMORY[0x1E695DFB0] null];
  v8[1] = [*(a1 + 40) UID];
  result = [*(a1 + 32) sendMessageSync:"audioSession" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
  if (result)
  {
    v6 = result;
    result = [result objectForKeyedSubscript:@"ERROR"];
    if (!result)
    {
      result = [v6 objectForKeyedSubscript:@"SERVERDIED"];
      if (!result)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

- (void)setFollowSystemInputEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVAudioClient_setFollowSystemInputEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(clientAudioSessionQueue, block);
}

void __45__AVAudioClient_setFollowSystemInputEnabled___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 81);
  v3 = *(a1 + 40);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2 == v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 81);
        *buf = 136315906;
        v14 = v5;
        v15 = 2080;
        v16 = "[AVAudioClient setFollowSystemInputEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 555;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d ignoring, _followSystemInputEnabled=%d already", buf, 0x22u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 84);
        *buf = 136315906;
        v14 = v8;
        v15 = 2080;
        v16 = "[AVAudioClient setFollowSystemInputEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 550;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 40), @"audioClientFollowSystemInput"}];
    [*(a1 + 32) sendMessageAsync:"audioSessionFollowSystemInput" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", &v12, &v11, 1), 0}];
    *(*(a1 + 32) + 81) = *(a1 + 40);
  }
}

- (void)setFollowSystemOutputEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVAudioClient_setFollowSystemOutputEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(clientAudioSessionQueue, block);
}

void __46__AVAudioClient_setFollowSystemOutputEnabled___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 82);
  v3 = *(a1 + 40);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2 == v3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 82);
        *buf = 136315906;
        v14 = v5;
        v15 = 2080;
        v16 = "[AVAudioClient setFollowSystemOutputEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 578;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d ignoring, _followSystemOutputEnabled=%d already", buf, 0x22u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 84);
        *buf = 136315906;
        v14 = v8;
        v15 = 2080;
        v16 = "[AVAudioClient setFollowSystemOutputEnabled:]_block_invoke";
        v17 = 1024;
        v18 = 573;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d processId=%d", buf, 0x22u);
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 40), @"audioClientFollowSystemOutput"}];
    [*(a1 + 32) sendMessageAsync:"audioSessionFollowSystemOutput" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", &v12, &v11, 1), 0}];
    *(*(a1 + 32) + 82) = *(a1 + 40);
  }
}

- (int)registerForMutedTalkerNotifications:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    clientAudioSessionQueue = self->_clientAudioSessionQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__AVAudioClient_registerForMutedTalkerNotifications___block_invoke;
    v6[3] = &unk_1E85F3840;
    v6[5] = a3;
    v6[6] = &v7;
    v6[4] = self;
    dispatch_sync(clientAudioSessionQueue, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 1768846960;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVAudioClient registerForMutedTalkerNotifications:];
      }
    }
  }

  return v4;
}

void __53__AVAudioClient_registerForMutedTalkerNotifications___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  if (*(*(a1 + 32) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1634887015;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __53__AVAudioClient_registerForMutedTalkerNotifications___block_invoke_cold_1();
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 24) = _Block_copy(*(a1 + 40));
    v3 = [objc_msgSend(*(a1 + 32) sendMessageSync:"mutedTalkerRegister" arguments:{0), "objectForKeyedSubscript:", @"ERROR"}];
    if (v3)
    {
      v4 = v3;
      [*(a1 + 32) cleanupMutedTalkerNotificationHandler];
      *(*(*(a1 + 48) + 8) + 24) = [v4 code];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *(*v2 + 84);
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[AVAudioClient registerForMutedTalkerNotifications:]_block_invoke";
          v12 = 1024;
          v13 = 628;
          v14 = 1024;
          v15 = v7;
          v16 = 2112;
          v17 = v4;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to register the muted talker notification block. processId=%d error=%@", &v8, 0x2Cu);
        }
      }
    }
  }
}

- (int)unregisterFromMutedTalkerNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVAudioClient_unregisterFromMutedTalkerNotifications__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(clientAudioSessionQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __55__AVAudioClient_unregisterFromMutedTalkerNotifications__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[3])
  {
    v4 = [objc_msgSend(v2 sendMessageSync:"mutedTalkerUnregister" arguments:{0), "objectForKeyedSubscript:", @"ERROR"}];
    [*v3 cleanupMutedTalkerNotificationHandler];
    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v4 code];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *(*v3 + 21);
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[AVAudioClient unregisterFromMutedTalkerNotifications]_block_invoke";
          v12 = 1024;
          v13 = 663;
          v14 = 1024;
          v15 = v7;
          v16 = 2112;
          v17 = v4;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to unregister the muted talker notification block. processId=%d error=%@", &v8, 0x2Cu);
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1752066412;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __55__AVAudioClient_unregisterFromMutedTalkerNotifications__block_invoke_cold_1();
      }
    }
  }
}

- (void)handleMutedTalkerNotificationWithXPCArguments:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"mutedTalkerNotificationType"];
  v5 = v4;
  if (!self->_mutedTalkerNotificationHandler)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    processId = self->_processId;
    v17 = 136316162;
    v18 = v10;
    v19 = 2080;
    v20 = "[AVAudioClient handleMutedTalkerNotificationWithXPCArguments:]";
    v21 = 1024;
    v22 = 674;
    v23 = 1024;
    v24 = processId;
    v25 = 2112;
    v26 = v5;
    v13 = "AVCAudioClient [%s] %s:%d Notification received but handler is not registered processId=%d notificationType=%@";
    goto LABEL_18;
  }

  v6 = [v4 unsignedIntValue];
  if (v6 != 1)
  {
    if (!v6)
    {
      (*(self->_mutedTalkerNotificationHandler + 2))();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315650;
          v18 = v7;
          v19 = 2080;
          v20 = "[AVAudioClient handleMutedTalkerNotificationWithXPCArguments:]";
          v21 = 1024;
          v22 = 680;
          v9 = "AVCAudioClient [%s] %s:%d MutedTalkerNotificationHandler Begin";
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, &v17, 0x1Cu);
          return;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v16 = self->_processId;
    v17 = 136316162;
    v18 = v15;
    v19 = 2080;
    v20 = "[AVAudioClient handleMutedTalkerNotificationWithXPCArguments:]";
    v21 = 1024;
    v22 = 687;
    v23 = 1024;
    v24 = v16;
    v25 = 2112;
    v26 = v5;
    v13 = "AVCAudioClient [%s] %s:%d Unknown notification type. processId=%d notificationType=%@";
LABEL_18:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v13, &v17, 0x2Cu);
    return;
  }

  (*(self->_mutedTalkerNotificationHandler + 2))();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v14;
      v19 = 2080;
      v20 = "[AVAudioClient handleMutedTalkerNotificationWithXPCArguments:]";
      v21 = 1024;
      v22 = 684;
      v9 = "AVCAudioClient [%s] %s:%d MutedTalkerNotificationHandler End";
      goto LABEL_13;
    }
  }
}

- (int)setMuteStateChangedEventHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AVAudioClient_setMuteStateChangedEventHandler___block_invoke;
  v6[3] = &unk_1E85FA220;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = &v7;
  dispatch_sync(clientAudioSessionQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)dispatchedHandleMuteStateChangedEventWithXPCArguments:(id)a3
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_clientAudioSessionQueue);
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"muteStateChangedMuteState", "BOOLValue"}];
  v6 = [a3 objectForKeyedSubscript:@"muteStateChangedReason"];
  v7 = v6;
  if (!self->_muteStateChangedHandler)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    processId = self->_processId;
    v22 = 136316418;
    v23 = v12;
    v24 = 2080;
    v25 = "[AVAudioClient dispatchedHandleMuteStateChangedEventWithXPCArguments:]";
    v26 = 1024;
    v27 = 740;
    v28 = 1024;
    v29 = processId;
    v30 = 1024;
    v31[0] = v5;
    LOWORD(v31[1]) = 2112;
    *(&v31[1] + 2) = v7;
    v15 = "AVCAudioClient [%s] %s:%d Notification received but handler is not registered processId=%d isMuted=%{BOOL}d reason=%@";
    v16 = v13;
    v17 = 50;
    goto LABEL_18;
  }

  v8 = [v6 unsignedCharValue];
  if (v8 != 1)
  {
    if (!v8)
    {
      (*(self->_muteStateChangedHandler + 2))();
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315906;
          v23 = v9;
          v24 = 2080;
          v25 = "[AVAudioClient dispatchedHandleMuteStateChangedEventWithXPCArguments:]";
          v26 = 1024;
          v27 = 746;
          v28 = 1024;
          v29 = v5;
          v11 = "AVCAudioClient [%s] %s:%d Mute State Changed - Client Initiated, isMuted=%{BOOL}d";
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v22, 0x22u);
          return;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = self->_processId;
    v22 = 136316162;
    v23 = v19;
    v24 = 2080;
    v25 = "[AVAudioClient dispatchedHandleMuteStateChangedEventWithXPCArguments:]";
    v26 = 1024;
    v27 = 753;
    v28 = 1024;
    v29 = v21;
    v30 = 2112;
    *v31 = v7;
    v15 = "AVCAudioClient [%s] %s:%d Unknown mute reason type, dropping notification. processId=%d reason=%@";
    v16 = v20;
    v17 = 44;
LABEL_18:
    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, &v22, v17);
    return;
  }

  (*(self->_muteStateChangedHandler + 2))();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = v18;
      v24 = 2080;
      v25 = "[AVAudioClient dispatchedHandleMuteStateChangedEventWithXPCArguments:]";
      v26 = 1024;
      v27 = 750;
      v28 = 1024;
      v29 = v5;
      v11 = "AVCAudioClient [%s] %s:%d Mute State Changed - Hardware Initiated, isMuted=%{BOOL}d";
      goto LABEL_13;
    }
  }
}

- (void)cleanupSecureMicrophoneEngagedHandler
{
  secureMicrophoneEngagedHandler = self->_secureMicrophoneEngagedHandler;
  if (secureMicrophoneEngagedHandler)
  {
    _Block_release(secureMicrophoneEngagedHandler);
    self->_secureMicrophoneEngagedHandler = 0;
  }
}

- (void)registerSecureMicrophoneEngagedHandler:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  clientAudioSessionQueue = self->_clientAudioSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVAudioClient_registerSecureMicrophoneEngagedHandler___block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(clientAudioSessionQueue, block);
}

void *__56__AVAudioClient_registerSecureMicrophoneEngagedHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupSecureMicrophoneEngagedHandler];
  result = *(a1 + 40);
  if (result)
  {
    result = _Block_copy(result);
    *(*(a1 + 32) + 48) = result;
  }

  return result;
}

- (void)resetXPCConnection
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_clientAudioSessionQueue);
  [(AVAudioClient *)self cleanupXPCConnection];
  if ([(AVAudioClient *)self shouldSetUpXPCConnection])
  {
    v3 = self->_connectionAttempts + 1;
    self->_connectionAttempts = v3;
    if (v3 + v3 > 10.0)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 2.0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        connectionAttempts = self->_connectionAttempts;
        *buf = 136316162;
        v12 = v5;
        v13 = 2080;
        v14 = "[AVAudioClient resetXPCConnection]";
        v15 = 1024;
        v16 = 796;
        v17 = 2048;
        v18 = v4;
        v19 = 1024;
        v20 = connectionAttempts;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d Retrying connection to server with delayInSeconds=%g connectionAttempts=%u", buf, 0x2Cu);
      }
    }

    v8 = dispatch_time(0, (v4 * 1000000000.0));
    current_queue = dispatch_get_current_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__AVAudioClient_resetXPCConnection__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_after(v8, current_queue, block);
  }
}

uint64_t __35__AVAudioClient_resetXPCConnection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setupXPCConnection];
  if (result)
  {
    *(*(a1 + 32) + 16) = 0;
  }

  return result;
}

- (void)registerBlocksForDelegateNotifications
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_xpcConnection registerBlockForService:"mutedTalkerNotification" block:v7 queue:self->_clientAudioSessionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_2;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_xpcConnection registerBlockForService:"muteStateChangedEvent" block:v6 queue:self->_clientAudioSessionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_3;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = self;
  [+[AVConferenceXPCClient AVConferenceXPCClientSingleton](AVConferenceXPCClient "AVConferenceXPCClientSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_107;
  v4[3] = &unk_1E85F81C0;
  v4[4] = self;
  v4[5] = v3;
  [(AVConferenceXPCClient *)self->_xpcConnection registerBlockForService:"audioSessionServerDied" block:v4 queue:self->_clientAudioSessionQueue];
}

uint64_t __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    v5 = [*(a1 + 32) strong];

    return [v5 handleMutedTalkerNotificationWithXPCArguments:a2];
  }

  return result;
}

uint64_t __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    v5 = [*(a1 + 32) strong];

    return [v5 dispatchedHandleMuteStateChangedEventWithXPCArguments:a2];
  }

  return result;
}

uint64_t __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "[AVAudioClient registerBlocksForDelegateNotifications]_block_invoke_3";
        v10 = 1024;
        v11 = 830;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d AVAudioClient-Secure-Mic-Notification!!", &v6, 0x1Cu);
      }
    }

    result = *(*(a1 + 32) + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __55__AVAudioClient_registerBlocksForDelegateNotifications__block_invoke_107(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 84);
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[AVAudioClient registerBlocksForDelegateNotifications]_block_invoke";
        v11 = 1024;
        v12 = 841;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d Server died. Attempt reconnect. processId=%d", &v7, 0x22u);
      }
    }

    return [objc_msgSend(*(a1 + 40) "strong")];
  }

  return result;
}

- (void)unregisterBlocksForDelegateNotifications
{
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"audioSessionServerDied"];
  [+[AVConferenceXPCClient AVConferenceXPCClientSingleton](AVConferenceXPCClient "AVConferenceXPCClientSingleton")];
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"muteStateChangedEvent"];
  xpcConnection = self->_xpcConnection;

  [(AVConferenceXPCClient *)xpcConnection deregisterFromService:"mutedTalkerNotification"];
}

+ (void)startAudioSessionWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient startAudioSessionWithCompletionHandler:]";
      v11 = 1024;
      v12 = 861;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-start (%p)", &v7, 0x26u);
    }
  }

  [(AVAudioClient *)v4 startAudioSessionWithCompletionHandler:a3];
}

+ (void)startAudioSession
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-startAudioSession");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "+[AVAudioClient startAudioSession]";
      v9 = 1024;
      v10 = 867;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-startAudioSession (%p)", &v5, 0x26u);
    }
  }

  MEMORY[0x1E128B590](&dword_1DB56E000, "+[AVAudioClient startAudioSession]");
  [(AVAudioClient *)v2 startAudioSessionWithCompletionHandler:0];
}

+ (void)setAudioSessionProperties:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setAudioSessionProperties");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient setAudioSessionProperties:]";
      v11 = 1024;
      v12 = 874;
      v13 = 2048;
      v14 = v4;
      v15 = 2112;
      v16 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setAudioSessionProperties (%p) audioParams=%@", &v7, 0x30u);
    }
  }

  [(AVAudioClient *)v4 setAudioSessionProperties:a3];
}

+ (void)stopAudioSession
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "+[AVAudioClient stopAudioSession]";
      v9 = 1024;
      v10 = 880;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-stop (%p)", &v5, 0x26u);
    }
  }

  [(AVAudioClient *)v2 stopAudioSession];
}

+ (void)resetAudioSessionOutputPortOverride
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-resetAudioSessionOutputPortOverride");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "+[AVAudioClient resetAudioSessionOutputPortOverride]";
      v9 = 1024;
      v10 = 886;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-resetAudioSessionOutputPortOverride (%p)", &v5, 0x26u);
    }
  }

  [(AVAudioClient *)v2 resetAudioSessionOutputPortOverride];
}

+ (BOOL)hasActiveAudioSession
{
  v2 = +[AVAudioClient sharedInstance];

  return [(AVAudioClient *)v2 hasActiveAudioSession];
}

+ (void)setMicrophoneMuted:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setMicrophoneMuted");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient setMicrophoneMuted:]";
      v11 = 1024;
      v12 = 897;
      v13 = 2048;
      v14 = v4;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setMicrophoneMuted (%p) isMuted=%d", &v7, 0x2Cu);
    }
  }

  [(AVAudioClient *)v4 setMicrophoneMuted:v3];
}

+ (BOOL)isMicrophoneMuted
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-isMicrophoneMuted");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVAudioClient isMicrophoneMuted]";
      v10 = 1024;
      v11 = 903;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-isMicrophoneMuted (%p)", &v6, 0x26u);
    }
  }

  return [(AVAudioClient *)v2 isMicrophoneMuted];
}

+ (void)setMixingVoiceWithMediaEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setMixingVoiceWithMediaEnabled");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient setMixingVoiceWithMediaEnabled:]";
      v11 = 1024;
      v12 = 909;
      v13 = 2048;
      v14 = v4;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setMixingVoiceWithMediaEnabled (%p) isMixingVoiceWithMediaEnabled=%d", &v7, 0x2Cu);
    }
  }

  [(AVAudioClient *)v4 setMixingVoiceWithMediaEnabled:v3];
}

+ (BOOL)isMixingVoiceWithMediaEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-isMixingVoiceWithMediaEnabled");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVAudioClient isMixingVoiceWithMediaEnabled]";
      v10 = 1024;
      v11 = 915;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-isMixingVoiceWithMediaEnabled (%p)", &v6, 0x26u);
    }
  }

  return [(AVAudioClient *)v2 isMixingVoiceWithMediaEnabled];
}

+ (id)currentInputDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-currentInputDevice");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVAudioClient currentInputDevice]";
      v10 = 1024;
      v11 = 929;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-currentInputDevice (%p)", &v6, 0x26u);
    }
  }

  return [(AVAudioClient *)v2 currentInputDevice];
}

+ (id)currentOutputDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-currentOutputDevice");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVAudioClient currentOutputDevice]";
      v10 = 1024;
      v11 = 935;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-currentOutputDevice (%p)", &v6, 0x26u);
    }
  }

  return [(AVAudioClient *)v2 currentOutputDevice];
}

+ (BOOL)setInputDevice:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setInputDevice");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "+[AVAudioClient setInputDevice:]";
      v12 = 1024;
      v13 = 941;
      v14 = 2048;
      v15 = v4;
      v16 = 2112;
      v17 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setInputDevice (%p) inputDevice=%@", &v8, 0x30u);
    }
  }

  return [(AVAudioClient *)v4 setInputDevice:a3];
}

+ (BOOL)setOutputDevice:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setOutputDevice");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "+[AVAudioClient setOutputDevice:]";
      v12 = 1024;
      v13 = 947;
      v14 = 2048;
      v15 = v4;
      v16 = 2112;
      v17 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setOutputDevice (%p) outputDevice=%@", &v8, 0x30u);
    }
  }

  return [(AVAudioClient *)v4 setOutputDevice:a3];
}

+ (void)setFollowSystemInputEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setFollowSystemInputEnabled");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient setFollowSystemInputEnabled:]";
      v11 = 1024;
      v12 = 953;
      v13 = 2048;
      v14 = v4;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setFollowSystemInputEnabled (%p) enabled=%d", &v7, 0x2Cu);
    }
  }

  [(AVAudioClient *)v4 setFollowSystemInputEnabled:v3];
}

+ (void)setFollowSystemOutputEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setFollowSystemOutputEnabled");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient setFollowSystemOutputEnabled:]";
      v11 = 1024;
      v12 = 959;
      v13 = 2048;
      v14 = v4;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setFollowSystemOutputEnabled (%p) enabled=%d", &v7, 0x2Cu);
    }
  }

  [(AVAudioClient *)v4 setFollowSystemOutputEnabled:v3];
}

+ (int)registerForMutedTalkerNotifications:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-registerForMutedTalkerNotifications");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "+[AVAudioClient registerForMutedTalkerNotifications:]";
      v12 = 1024;
      v13 = 968;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-registerForMutedTalkerNotifications (%p)", &v8, 0x26u);
    }
  }

  return [(AVAudioClient *)v4 registerForMutedTalkerNotifications:a3];
}

+ (int)unregisterFromMutedTalkerNotifications
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-unregisterFromMutedTalkerNotifications");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[AVAudioClient unregisterFromMutedTalkerNotifications]";
      v10 = 1024;
      v11 = 978;
      v12 = 2048;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-unregisterFromMutedTalkerNotifications (%p)", &v6, 0x26u);
    }
  }

  return [(AVAudioClient *)v2 unregisterFromMutedTalkerNotifications];
}

+ (int)setMuteStateChangedHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setMuteStateChangedHandler");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "+[AVAudioClient setMuteStateChangedHandler:]";
      v12 = 1024;
      v13 = 988;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setMuteStateChangedHandler (%p) handler=%p", &v8, 0x30u);
    }
  }

  return [(AVAudioClient *)v4 setMuteStateChangedEventHandler:a3];
}

+ (void)registerSecureMicrophoneEngagedHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[AVAudioClient sharedInstance];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-registerSecureMicrophoneEngagedHandler");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "+[AVAudioClient registerSecureMicrophoneEngagedHandler:]";
      v11 = 1024;
      v12 = 995;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-registerSecureMicrophoneEngagedHandler (%p)", &v7, 0x26u);
    }
  }

  [(AVAudioClient *)v4 registerSecureMicrophoneEngagedHandler:a3];
}

- (void)setChangeListener:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  [(AVAudioDeviceList *)[(AVAudioClient *)self deviceList] setChangeListener:a3];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioClient-setChangeListener");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVAudioClient setChangeListener:]";
      v10 = 1024;
      v11 = 1001;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d @:@ AVAudioClient-setChangeListener (%p)", &v6, 0x26u);
    }
  }
}

- (id)changeListener
{
  v2 = [(AVAudioClient *)self deviceList];

  return [(AVAudioDeviceList *)v2 changeListener];
}

- (id)devices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(AVAudioDeviceList *)[(AVAudioClient *)self deviceList] devices];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return v3;
  }

  __str = 0;
  if (self)
  {
    v4 = [-[AVAudioClient description](self "description")];
    if (v3)
    {
LABEL_4:
      v5 = [objc_msgSend(v3 "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = "<nil>";
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v5 = "<nil>";
LABEL_7:
  asprintf(&__str, "self=%s devices=%s", v4, v5);
  if (__str)
  {
    __lasts = 0;
    v6 = strtok_r(__str, "\n", &__lasts);
    v7 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVAudioClient devices]";
          v17 = 1024;
          v18 = 1010;
          v19 = 2080;
          v20 = "AVAudioClient-devices";
          v21 = 2080;
          v22 = v6;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v6 = strtok_r(0, "\n", &__lasts);
    }

    while (v6);
    free(__str);
  }

  return v3;
}

- (id)inputDevices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(AVAudioDeviceList *)[(AVAudioClient *)self deviceList] inputDevices];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return v3;
  }

  __str = 0;
  if (self)
  {
    v4 = [-[AVAudioClient description](self "description")];
    if (v3)
    {
LABEL_4:
      v5 = [objc_msgSend(v3 "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = "<nil>";
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v5 = "<nil>";
LABEL_7:
  asprintf(&__str, "self=%s inputDevices=%s", v4, v5);
  if (__str)
  {
    __lasts = 0;
    v6 = strtok_r(__str, "\n", &__lasts);
    v7 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVAudioClient inputDevices]";
          v17 = 1024;
          v18 = 1016;
          v19 = 2080;
          v20 = "AVAudioClient-inputDevices";
          v21 = 2080;
          v22 = v6;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v6 = strtok_r(0, "\n", &__lasts);
    }

    while (v6);
    free(__str);
  }

  return v3;
}

- (id)outputDevices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(AVAudioDeviceList *)[(AVAudioClient *)self deviceList] outputDevices];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return v3;
  }

  __str = 0;
  if (self)
  {
    v4 = [-[AVAudioClient description](self "description")];
    if (v3)
    {
LABEL_4:
      v5 = [objc_msgSend(v3 "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = "<nil>";
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v5 = "<nil>";
LABEL_7:
  asprintf(&__str, "self=%s outputDevices=%s", v4, v5);
  if (__str)
  {
    __lasts = 0;
    v6 = strtok_r(__str, "\n", &__lasts);
    v7 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "[AVAudioClient outputDevices]";
          v17 = 1024;
          v18 = 1022;
          v19 = 2080;
          v20 = "AVAudioClient-outputDevices";
          v21 = 2080;
          v22 = v6;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCAudioClient [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v6 = strtok_r(0, "\n", &__lasts);
    }

    while (v6);
    free(__str);
  }

  return v3;
}

- (BOOL)reregisterClientSideHandlersOverXPC
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(AVAudioClient *)self reregisterMutedTalkerNotificationOverXPC])
  {
    v3 = [(AVAudioClient *)self reregisterMuteStateChangedHandlerOverXPC];
  }

  else
  {
    v3 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_6();
        v17 = 209;
        v18 = v6;
        LODWORD(v19) = v3;
        v7 = "AVCAudioClient [%s] %s:%d Registering block handlers, status=%{BOOL}d";
        v8 = v5;
        v9 = 34;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(AVAudioClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316418;
        v15 = v10;
        v16 = 2080;
        OUTLINED_FUNCTION_6();
        v17 = 209;
        v18 = 2112;
        v19 = v4;
        v20 = 2048;
        v21 = self;
        v22 = v12;
        v23 = v3;
        v7 = "AVCAudioClient [%s] %s:%d %@(%p) Registering block handlers, status=%{BOOL}d";
        v8 = v11;
        v9 = 54;
        goto LABEL_13;
      }
    }
  }

  return v3;
}

void __49__AVAudioClient_setMuteStateChangedEventHandler___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v3 != v2 && (v5 & 1) == 0)
  {
    v24 = @"muteStateChangedEnableHandler";
    v25[0] = [MEMORY[0x1E696AD98] numberWithBool:v2 != 0];
    v6 = [objc_msgSend(*(a1 + 32) sendMessageSync:"muteStateChangedHandler" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, &v24, 1)), "objectForKeyedSubscript:", @"ERROR"}];
    if (v6)
    {
      v7 = v6;
      *(*(*(a1 + 48) + 8) + 24) = [v6 code];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 40);
          v11 = *(*(a1 + 32) + 84);
          v12 = 136316418;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVAudioClient setMuteStateChangedEventHandler:]_block_invoke";
          v16 = 1024;
          v17 = 717;
          v18 = 1024;
          v19 = v11;
          v20 = 2112;
          v21 = v10;
          v22 = 2112;
          v23 = v7;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to set the muted state changed handler block. processId=%d handler=%@ error=%@", &v12, 0x36u);
        }
      }
    }
  }

  if (!v2 || !*(*(*(a1 + 48) + 8) + 24))
  {
    [*(a1 + 32) setMuteStateChangedHandlerInternal:*(a1 + 40)];
  }
}

- (void)initSharedInstance
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)setupXPCConnection
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v3;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Failed to initialize the XPC connect. processId=%d", &v5, 0x22u);
    }
  }

  *a2 = 0;
}

void __33__AVAudioClient_stopAudioSession__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 352;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Timed out after waiting for audioSessionRef for 5 secs", v1, 0x1Cu);
}

- (void)setInputDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 UID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)setOutputDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 UID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)registerForMutedTalkerNotifications:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 599;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCAudioClient [%s] %s:%d Invalid handler", v1, 0x1Cu);
}

void __53__AVAudioClient_registerForMutedTalkerNotifications___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "AVCAudioClient [%s] %s:%d Muted talker handler is already registered. processId=%d", v2, v3, v4, v5);
}

void __55__AVAudioClient_unregisterFromMutedTalkerNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "AVCAudioClient [%s] %s:%d Muted talker handler is not registered. processId=%d", v2, v3, v4, v5);
}

@end