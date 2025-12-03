@interface VCAudioClientManager
+ (id)sharedInstance;
- (BOOL)dispatchedHandleMuteStateChangedHandlerForAudioClient:(id)client enabled:(BOOL)enabled error:(id *)error;
- (VCAudioClientManager)init;
- (id)getAudioClientWithProcessId:(id)id create:(BOOL)create;
- (id)handleDisconnectWithXPCArguments:(id)arguments;
- (id)handleNewClientWithXPCArguments:(id)arguments error:(id *)error;
- (id)handleRegisterMutedTalkerNotificationForAudioClient:(id)client error:(id *)error;
- (id)handleUnregisterMutedTalkerNotificationForAudioClient:(id)client error:(id *)error;
- (void)dealloc;
- (void)dispatchedHandleMuteStateChanged:(BOOL)changed reason:(unsigned __int8)reason;
- (void)handleMutedTalkerNotification:(unsigned int)notification;
- (void)registerBlocksForService;
- (void)registerForMutedTalkerNotfications;
- (void)registerMuteStateChangedHandler;
- (void)secureMicrophoneEngagedNotification;
- (void)unregisterBlocksForService;
- (void)unregisterFromMutedTalkerNotfications;
- (void)unregisterMuteStateChangedHandler;
@end

@implementation VCAudioClientManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[VCAudioClientManager sharedInstance];
  }

  return sharedInstance__vcAudioClientManager;
}

void __38__VCAudioClientManager_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcAudioClientManager)
  {
    sharedInstance__vcAudioClientManager = objc_alloc_init(VCAudioClientManager);
  }
}

- (VCAudioClientManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioClientManager;
  v2 = [(VCAudioClientManager *)&v5 init];
  if (v2)
  {
    v2->_clientList = objc_alloc_init(MEMORY[0x1E695DF90]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(62);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioClientManager.XPCCommandQueue", 0, CustomRootQueue);
    [(VCAudioClientManager *)v2 registerForMutedTalkerNotfications];
    [(VCAudioClientManager *)v2 registerMuteStateChangedHandler];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCAudioClientManager *)self unregisterMuteStateChangedHandler];
  [(VCAudioClientManager *)self unregisterFromMutedTalkerNotfications];
  [(VCAudioClientManager *)self unregisterBlocksForService];
  dispatch_release(self->_xpcCommandQueue);

  v3.receiver = self;
  v3.super_class = VCAudioClientManager;
  [(VCAudioClientManager *)&v3 dealloc];
}

- (id)getAudioClientWithProcessId:(id)id create:(BOOL)create
{
  if (!id)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioClientManager getAudioClientWithProcessId:create:];
      }
    }

    return 0;
  }

  createCopy = create;
  if ([(NSMutableDictionary *)self->_clientList objectForKeyedSubscript:?])
  {
    v7 = 1;
  }

  else
  {
    v7 = !createCopy;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  v8 = -[VCAudioClient initWithProcessId:]([VCAudioClient alloc], "initWithProcessId:", [id intValue]);
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioClientManager getAudioClientWithProcessId:create:];
      }
    }

    return 0;
  }

  v9 = v8;
  [(NSMutableDictionary *)self->_clientList setObject:v8 forKeyedSubscript:id];

LABEL_8:
  clientList = self->_clientList;

  return [(NSMutableDictionary *)clientList objectForKeyedSubscript:id];
}

- (id)handleRegisterMutedTalkerNotificationForAudioClient:(id)client error:(id *)error
{
  if (client)
  {
    [client setIsMutedTalkerNotificationRegistered:{1, error}];
  }

  else if (error)
  {
    *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"Audio client not registered"];
  }

  return 0;
}

- (id)handleUnregisterMutedTalkerNotificationForAudioClient:(id)client error:(id *)error
{
  if (client)
  {
    [client setIsMutedTalkerNotificationRegistered:{0, error}];
  }

  else if (error)
  {
    *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32016 detailCode:0 description:@"Audio client not registered"];
  }

  return 0;
}

- (void)handleMutedTalkerNotification:(unsigned int)notification
{
  v6 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCAudioClientManager_handleMutedTalkerNotification___block_invoke;
  block[3] = &unk_1E85F38B8;
  notificationCopy = notification;
  block[4] = self;
  dispatch_async(xpcCommandQueue, block);
}

uint64_t __54__VCAudioClientManager_handleMutedTalkerNotification___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"mutedTalkerNotificationType";
  v15[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(*(a1 + 32) + 8) allValues];
  result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 isMutedTalkerNotificationRegistered])
        {
          [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)registerForMutedTalkerNotfications
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v3 = +[VCAudioManager sharedVoiceChatInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__VCAudioClientManager_registerForMutedTalkerNotfications__block_invoke;
  v4[3] = &unk_1E85F3818;
  v4[4] = v2;
  [v3 registerForMutedTalkerNotification:v4];
}

uint64_t __58__VCAudioClientManager_registerForMutedTalkerNotfications__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 handleMutedTalkerNotification:a2];
}

- (void)unregisterFromMutedTalkerNotfications
{
  v2 = +[VCAudioManager sharedVoiceChatInstance];

  [v2 unregisterFromMutedTalkerNotification];
}

- (BOOL)dispatchedHandleMuteStateChangedHandlerForAudioClient:(id)client enabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  if (client)
  {
    if ([client isMutedStateChangeHandlerRegistered] != enabledCopy)
    {
      [client setIsMutedStateChangeHandlerRegistered:enabledCopy];
      return 1;
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = "NO";
      if (enabledCopy)
      {
        v13 = "YES";
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Audio client isMutedStateChangeHandlerRegistered already is enabled=%s", v13];
      v9 = v12;
      v11 = 32000;
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = @"Audio client not registered";
    v11 = 32016;
LABEL_10:
    v14 = [v9 AVConferenceServiceError:v11 detailCode:0 description:v10];
    result = 0;
    *error = v14;
    return result;
  }

  return 0;
}

- (void)dispatchedHandleMuteStateChanged:(BOOL)changed reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  changedCopy = changed;
  v20[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v19[0] = @"muteStateChangedMuteState";
  v19[1] = @"muteStateChangedReason";
  v20[0] = [MEMORY[0x1E696AD98] numberWithBool:changedCopy];
  v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:reasonCopy];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_clientList allValues];
  v9 = [allValues countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isMutedStateChangeHandlerRegistered])
        {
          [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v10);
  }
}

- (void)registerMuteStateChangedHandler
{
  v5 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseAvconferenced())
  {
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [+[VCAudioSession sharedVoiceChatInstance](VCAudioSession sharedVoiceChatInstance];
  }
}

uint64_t __55__VCAudioClientManager_registerMuteStateChangedHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];

  return [v5 dispatchedHandleMuteStateChanged:a2 reason:a3];
}

- (void)unregisterMuteStateChangedHandler
{
  if (VCFeatureFlagManager_UseAvconferenced())
  {
    v2 = +[VCAudioSession sharedVoiceChatInstance];

    [v2 setMuteStateChangedHandler:0 delegateQueue:0];
  }
}

- (id)handleNewClientWithXPCArguments:(id)arguments error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = [arguments objectForKeyedSubscript:@"CLIENTPID"];
  v8 = [arguments objectForKeyedSubscript:@"CONTEXT"];
  if (v8)
  {
    v14 = @"Audio client is already registered";
    if (error)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v9 = [(VCAudioClientManager *)self getAudioClientWithProcessId:v7 create:1];
  if (!v9)
  {
    v14 = @"Failed to allocate client";
    if (error)
    {
LABEL_8:
      *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32029 detailCode:0 description:v14];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = *error;
          *buf = 136316162;
          v22 = v15;
          v23 = 2080;
          v24 = "[VCAudioClientManager handleNewClientWithXPCArguments:error:]";
          v25 = 1024;
          v26 = 243;
          v27 = 2112;
          v28 = v7;
          v29 = 2112;
          v30 = v18;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Connection setup failed for processId=%@ error=%@", buf, 0x30u);
        }
      }
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCAudioClientManager handleNewClientWithXPCArguments:error:]";
      v25 = 1024;
      v26 = 246;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection setup succeeded for processId=%@", buf, 0x26u);
    }
  }

  v13 = 1;
  v8 = v10;
LABEL_12:
  v20[1] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isMixingVoiceWithMediaEnabled", @"CONTEXT", @"audioClientAudioSessionMixingVoiceWithMedia", v8)}];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:2];
  if (!v13)
  {
    return 0;
  }

  return result;
}

- (id)handleDisconnectWithXPCArguments:(id)arguments
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [arguments objectForKeyedSubscript:@"CONTEXT"];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioClientManager handleDisconnectWithXPCArguments:];
      }
    }

    return 0;
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v7;
      v13 = 2080;
      v14 = "[VCAudioClientManager handleDisconnectWithXPCArguments:]";
      v15 = 1024;
      v16 = 265;
      v17 = 1024;
      processId = [v6 processId];
      v19 = 2112;
      argumentsCopy = arguments;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification that client died, tearing down the audio session (client PID=%d), arguments=%@", buf, 0x2Cu);
    }
  }

  *buf = 0;
  [v6 stopWithError:buf];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_clientList, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "processId")}]);
  null = [MEMORY[0x1E695DFB0] null];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&null forKeys:&v10 count:1];
}

- (void)registerBlocksForService
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VCAudioClientManager_registerBlocksForService__block_invoke;
  v8[3] = &unk_1E85F5100;
  v8[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__VCAudioClientManager_registerBlocksForService__block_invoke_107;
  v7[3] = &unk_1E85F5100;
  v7[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCAudioClientManager_registerBlocksForService__block_invoke_109;
  v6[3] = &unk_1E85F5100;
  v6[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VCAudioClientManager_registerBlocksForService__block_invoke_111;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

id __48__VCAudioClientManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [objc_msgSend(*(a1 + 32) "strong")];

  return v7;
}

id __48__VCAudioClientManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  if (!v6)
  {
    [a2 objectForKeyedSubscript:@"CLIENTPID"];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCAudioClientManager_registerBlocksForService__block_invoke_2_cold_1();
      }
    }

    return 0;
  }

  v7 = v6;
  if ([a2 objectForKeyedSubscript:@"setMute"])
  {
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"audioClientAudioSessionMute", "BOOLValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = "unmute";
        *buf = 136316162;
        v65 = v9;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v66 = 2080;
        if (v8)
        {
          v11 = "mute";
        }

        v68 = 1024;
        v69 = 303;
        v70 = 2080;
        *v71 = v11;
        *&v71[8] = 2048;
        *&v71[10] = v7;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got Notification to %s for client [%p]", buf, 0x30u);
      }
    }

    [v7 setIsMuted:v8];
    goto LABEL_11;
  }

  if ([a2 objectForKeyedSubscript:@"getMute"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v65 = v13;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 306;
        v70 = 2048;
        *v71 = v7;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to GetMute for client[%p]", buf, 0x26u);
      }
    }

    v62 = @"audioClientAudioSessionMute";
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isMuted")}];
    v15 = MEMORY[0x1E695DF20];
    v16 = &v63;
    v17 = &v62;
LABEL_49:
    v12 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    return v12;
  }

  if ([a2 objectForKeyedSubscript:@"getCurrentAudioInputDevice"])
  {
    if ([v7 inputDevice])
    {
      v18 = [objc_msgSend(v7 "inputDevice")];
    }

    else
    {
      v18 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v20;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 310;
        v70 = 2112;
        *v71 = v18;
        *&v71[8] = 2048;
        *&v71[10] = v7;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to getCurrentAudioInputDevice %@ for client [%p]", buf, 0x30u);
      }
    }

    v60 = @"audioClientAudioDevice";
    if (!v18)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
    }

    v61 = v18;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v61;
    v17 = &v60;
    goto LABEL_49;
  }

  if ([a2 objectForKeyedSubscript:@"getCurrentAudioOutputDevice"])
  {
    if ([v7 outputDevice])
    {
      v19 = [objc_msgSend(v7 "outputDevice")];
    }

    else
    {
      v19 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v30;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 314;
        v70 = 2112;
        *v71 = v19;
        *&v71[8] = 2048;
        *&v71[10] = v7;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to getCurrentAudioOutputDevice %@ for client [%p]", buf, 0x30u);
      }
    }

    v58 = @"audioClientAudioDevice";
    if (!v19)
    {
      v19 = [MEMORY[0x1E695DFB0] null];
    }

    v59 = v19;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v59;
    v17 = &v58;
    goto LABEL_49;
  }

  if ([a2 objectForKeyedSubscript:@"setCurrentAudioInputDevice"])
  {
    v22 = [a2 objectForKeyedSubscript:@"audioClientAudioDevice"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v23;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 318;
        v70 = 2112;
        *v71 = v22;
        *&v71[8] = 2048;
        *&v71[10] = v7;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to setCurrentAudioInputDevice %@ on client [%p]", buf, 0x30u);
      }
    }

    v25 = [AVAudioDeviceList deviceForUID:v22];
    [v7 setInputDevice:v25];

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_11;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v28 = [v7 inputDevice];
    if (v28)
    {
      v28 = [objc_msgSend(v7 "inputDevice")];
    }

    *buf = 136316162;
    v65 = v26;
    v66 = 2080;
    v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
    v68 = 1024;
    v69 = 322;
    v70 = 2112;
    *v71 = v28;
    *&v71[8] = 2048;
    *&v71[10] = v7;
    v29 = " [%s] %s:%d Setting Input Device to [%@] on client [%p]";
    goto LABEL_60;
  }

  if ([a2 objectForKeyedSubscript:@"setCurrentAudioOutputDevice"])
  {
    v32 = [a2 objectForKeyedSubscript:@"audioClientAudioDevice"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v65 = v33;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 325;
        v70 = 2112;
        *v71 = v32;
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to setCurrentAudioOutputDevice %@", buf, 0x26u);
      }
    }

    v35 = [AVAudioDeviceList deviceForUID:v32];
    [v7 setOutputDevice:v35];

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_11;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v37 = [v7 outputDevice];
    if (v37)
    {
      v37 = [objc_msgSend(v7 "outputDevice")];
    }

    *buf = 136316162;
    v65 = v36;
    v66 = 2080;
    v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
    v68 = 1024;
    v69 = 329;
    v70 = 2112;
    *v71 = v37;
    *&v71[8] = 2048;
    *&v71[10] = v7;
    v29 = " [%s] %s:%d Setting Output Device to [%@] on client[%p]";
LABEL_60:
    v38 = v27;
    v39 = 48;
LABEL_61:
    _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, v29, buf, v39);
    goto LABEL_11;
  }

  if ([a2 objectForKeyedSubscript:@"setAudioSessionProperties"])
  {
    v40 = [a2 objectForKeyedSubscript:@"audioClientAudioSessionParams"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v41 = v40 ? [objc_msgSend(v40 "description")] : "<nil>";
      asprintf(&__str, "Got notification for setAudioSessionProperties %s on client [%p]", v41, v7);
      if (__str)
      {
        __lasts = 0;
        v46 = strtok_r(__str, "\n", &__lasts);
        v47 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v48 = VRTraceErrorLogLevelToCSTR();
            v49 = *v47;
            if (os_log_type_enabled(*v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v65 = v48;
              v66 = 2080;
              v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
              v68 = 1024;
              v69 = 332;
              v70 = 2080;
              *v71 = "";
              *&v71[8] = 2080;
              *&v71[10] = v46;
              _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v46 = strtok_r(0, "\n", &__lasts);
        }

        while (v46);
        free(__str);
      }
    }

    [v7 setAudioSessionProperties:v40];
    goto LABEL_11;
  }

  if ([a2 objectForKeyedSubscript:@"resetAudioSessionOutputPortOverride"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v65 = v42;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 336;
        v70 = 2048;
        *v71 = v7;
        _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to resetAudioSessionOutputPortOverride for client [%p]", buf, 0x26u);
      }
    }

    [v7 resetAudioSessionOutputPortOverride:a3];
    goto LABEL_11;
  }

  if ([a2 objectForKeyedSubscript:@"startAudioSession"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v44;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 339;
        v70 = 1024;
        *v71 = [v7 processId];
        *&v71[4] = 2048;
        *&v71[6] = v7;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to startAudioSession (client PID=%d) for client [%p]", buf, 0x2Cu);
      }
    }

    [v7 startWithError:a3];
    goto LABEL_11;
  }

  v50 = [a2 objectForKeyedSubscript:@"stopAudioSession"];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v50)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v52;
        v66 = 2080;
        v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v68 = 1024;
        v69 = 342;
        v70 = 1024;
        *v71 = [v7 processId];
        *&v71[4] = 2048;
        *&v71[6] = v7;
        _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to stopAudioSession (client PID=%d) for client [%p]", buf, 0x2Cu);
      }
    }

    [v7 stopWithError:a3];
    goto LABEL_11;
  }

  if (ErrorLogLevelForModule >= 5)
  {
    v54 = VRTraceErrorLogLevelToCSTR();
    v55 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v65 = v54;
      v66 = 2080;
      v67 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
      v68 = 1024;
      v69 = 346;
      v70 = 2112;
      *v71 = a2;
      v29 = " [%s] %s:%d AVConferenceXPCServer for API_AUDIOSESSION_KEY got bad dictionary=%@";
      v38 = v55;
      v39 = 38;
      goto LABEL_61;
    }
  }

LABEL_11:
  v12 = 0;
  return v12;
}

id __48__VCAudioClientManager_registerBlocksForService__block_invoke_107(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
      v13 = 1024;
      v14 = 354;
      v15 = 2112;
      v16 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
      v17 = 2112;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to registerMutedTalkerNotificationBlock for processId=%@ args=%@", &v9, 0x30u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "strong")];
}

id __48__VCAudioClientManager_registerBlocksForService__block_invoke_109(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
      v13 = 1024;
      v14 = 365;
      v15 = 2112;
      v16 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
      v17 = 2112;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to unregisterMutedTalkerNotificationBlock for processId=%@ args=%@", &v9, 0x30u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "strong")];
}

uint64_t __48__VCAudioClientManager_registerBlocksForService__block_invoke_111(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"muteStateChangedEnableHandler", "BOOLValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
        v14 = 1024;
        v15 = 378;
        v16 = 2112;
        v17 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got notification to enableMuteStateChangedHandler for processId=%@ handlerEnabled=%{BOOL}d", &v10, 0x2Cu);
      }
    }

    [objc_msgSend(*(a1 + 32) "strong")];
  }

  return 0;
}

uint64_t __48__VCAudioClientManager_registerBlocksForService__block_invoke_116(uint64_t a1, void *a2)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"audioClientAudioSessionMixingVoiceWithMedia", "BOOLValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v6;
          v14 = 2080;
          v15 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          v16 = 1024;
          v17 = 397;
          v18 = 1024;
          *v19 = v5;
          v19[2] = 2048;
          *&v19[3] = v4;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got Notification to set mixingVoiceWithMediaEnabled to %d for client [%p]", &v12, 0x2Cu);
        }
      }

      [v4 setMixingVoiceWithMediaEnabled:v5];
      [+[VCSessionManager sharedInstance](VCSessionManager setSharingEnabled:"setSharingEnabled:", v5];
    }

    else
    {
      v8 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v9;
          v14 = 2080;
          v15 = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          v16 = 1024;
          v17 = 393;
          v18 = 2112;
          *v19 = v8;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection is not properly setup for processId=%@", &v12, 0x26u);
        }
      }
    }
  }

  return 0;
}

uint64_t __48__VCAudioClientManager_registerBlocksForService__block_invoke_121(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"audioClientFollowSystemInput", "BOOLValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = "disable";
          *v13 = 136316162;
          *&v13[4] = v6;
          *&v13[14] = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          *&v13[12] = 2080;
          if (v5)
          {
            v8 = "enable";
          }

          *&v13[22] = 1024;
          v14 = 414;
          v15 = 2080;
          v16 = v8;
          v17 = 2048;
          v18 = v4;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got Notification to %s follow system input for client [%p]", v13, 0x30u);
        }
      }

      [v4 setFollowSystemInput:{v5, *v13, *&v13[16]}];
    }

    else
    {
      v9 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 136315906;
          *&v13[4] = v10;
          *&v13[12] = 2080;
          *&v13[14] = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          *&v13[22] = 1024;
          v14 = 410;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection is not properly setup for processId=%@", v13, 0x26u);
        }
      }
    }
  }

  return 0;
}

uint64_t __48__VCAudioClientManager_registerBlocksForService__block_invoke_130(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"audioClientFollowSystemOutput", "BOOLValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = "disable";
          *v13 = 136316162;
          *&v13[4] = v6;
          *&v13[14] = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          *&v13[12] = 2080;
          if (v5)
          {
            v8 = "enable";
          }

          *&v13[22] = 1024;
          v14 = 430;
          v15 = 2080;
          v16 = v8;
          v17 = 2048;
          v18 = v4;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got Notification to %s follow system output for client [%p]", v13, 0x30u);
        }
      }

      [v4 setFollowSystemOutput:{v5, *v13, *&v13[16]}];
    }

    else
    {
      v9 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 136315906;
          *&v13[4] = v10;
          *&v13[12] = 2080;
          *&v13[14] = "[VCAudioClientManager registerBlocksForService]_block_invoke";
          *&v13[22] = 1024;
          v14 = 426;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection is not properly setup for processId=%@", v13, 0x26u);
        }
      }
    }
  }

  return 0;
}

id __48__VCAudioClientManager_registerBlocksForService__block_invoke_137(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"CLIENTDIED"];
  if (result)
  {
    v5 = [objc_msgSend(*(a1 + 32) "strong")];

    return v5;
  }

  return result;
}

- (void)unregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"audioSessionClientDisconnect"];
}

- (void)secureMicrophoneEngagedNotification
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 sendMessageAsync:"vcSecureMicNotification" arguments:0];
}

- (void)getAudioClientWithProcessId:create:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 78;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate VCAudioClient.", v1, 0x1Cu);
}

- (void)getAudioClientWithProcessId:create:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 66;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to retrieve VCAudioClient. Process id was not specified.", v1, 0x1Cu);
}

- (void)handleDisconnectWithXPCArguments:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d No client specified. argument=%@");
}

void __48__VCAudioClientManager_registerBlocksForService__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Connection is not properly setup for processId=%@");
}

@end