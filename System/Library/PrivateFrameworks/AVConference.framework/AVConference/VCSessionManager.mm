@interface VCSessionManager
+ (id)playbackSynchronizationGroupUUIDWithXPCDictionary:(id)a3;
+ (id)sharedInstance;
+ (void)addNSError:(id)a3 toXPCArgumentDictionary:(id)a4;
- (VCSessionManager)init;
- (id)newParticpantUpdateConfigurationsWithXPCArgs:(id)a3;
- (id)participantConfigFromXPCDictionary:(id)a3;
- (id)sessionForStreamToken:(unsigned int)a3;
- (id)sessionForUUID:(id)a3;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)registerBlocksForService;
- (void)releaseSession:(id)a3;
- (void)setScreenAndCameraMixingEnabled:(BOOL)a3;
- (void)setSharingEnabled:(BOOL)a3;
- (void)vcSession:(id)a3 addParticipantWithID:(id)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)vcSession:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)vcSession:(id)a3 didStopWithError:(id)a4;
- (void)vcSession:(id)a3 downlinkRateAdaptationDidChangeWithInfo:(id)a4;
- (void)vcSession:(id)a3 oneToOneModeEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)vcSession:(id)a3 participantDidStopReacting:(id)a4;
- (void)vcSession:(id)a3 participantID:(id)a4 audioEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)vcSession:(id)a3 participantID:(id)a4 audioPaused:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)vcSession:(id)a3 participantID:(id)a4 didChangeMediaPriority:(unsigned __int8)a5 description:(id)a6;
- (void)vcSession:(id)a3 participantID:(id)a4 didDetectError:(id)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 mediaStateDidChange:(unsigned int)a5 forMediaType:(unsigned int)a6 didSucceed:(BOOL)a7 error:(id)a8;
- (void)vcSession:(id)a3 participantID:(id)a4 mixingDidChangeForMediaType:(unsigned int)a5 mixingMediaType:(unsigned int)a6;
- (void)vcSession:(id)a3 participantID:(id)a4 reactionDidStart:(id)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteAudioEnabledDidChange:(BOOL)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteAudioPausedDidChange:(BOOL)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteMediaStateDidChange:(unsigned int)a5 forMediaType:(unsigned int)a6;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteScreenEnabledDidChange:(BOOL)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteVideoEnabledDidChange:(BOOL)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 remoteVideoPausedDidChange:(BOOL)a5;
- (void)vcSession:(id)a3 participantID:(id)a4 screenEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)vcSession:(id)a3 participantID:(id)a4 videoEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)vcSession:(id)a3 participantID:(id)a4 videoPaused:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)vcSession:(id)a3 removeParticipantWithID:(id)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)vcSession:(id)a3 updateConfiguration:(id)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)vcSession:(id)a3 uplinkRateAdaptationDidChangeWithInfo:(id)a4;
- (void)vcSessionShouldReconnect:(id)a3;
@end

@implementation VCSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[VCSessionManager sharedInstance];
  }

  return sharedInstance__vcSessionManager;
}

void __34__VCSessionManager_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcSessionManager)
  {
    sharedInstance__vcSessionManager = objc_alloc_init(VCSessionManager);
  }
}

+ (void)addNSError:(id)a3 toXPCArgumentDictionary:(id)a4
{
  if (a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    if ([a3 domain])
    {
      [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"domain"), @"ERROR_DOMAIN"}];
    }

    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(a3, "code")), @"ERROR_CODE"}];
    if ([a3 userInfo])
    {
      [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"userInfo"), @"ERROR_USERINFO"}];
    }

    [a4 setObject:v6 forKeyedSubscript:@"vcSessionError"];
  }
}

- (VCSessionManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSessionManager;
  v2 = [(VCSessionManager *)&v5 init];
  if (v2)
  {
    v2->_sessions = objc_alloc_init(MEMORY[0x1E695DF90]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSessionManager.xpcCommandQueue", 0, CustomRootQueue);
    v2->_sessionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSessionManager.sessionQueue", MEMORY[0x1E69E96A8], CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCSessionManager *)self deregisterBlocksForService];

  xpcCommandQueue = self->_xpcCommandQueue;
  if (xpcCommandQueue)
  {
    dispatch_release(xpcCommandQueue);
    self->_xpcCommandQueue = 0;
  }

  sessionQueue = self->_sessionQueue;
  if (sessionQueue)
  {
    dispatch_release(sessionQueue);
    self->_sessionQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = VCSessionManager;
  [(VCSessionManager *)&v5 dealloc];
}

- (id)sessionForUUID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  xpcCommandQueue = self->_xpcCommandQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VCSessionManager_sessionForUUID___block_invoke;
  v6[3] = &unk_1E85F3E08;
  v6[5] = a3;
  v6[6] = &v7;
  v6[4] = self;
  dispatch_sync(xpcCommandQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __35__VCSessionManager_sessionForUUID___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)sessionForStreamToken:(unsigned int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  xpcCommandQueue = self->_xpcCommandQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__VCSessionManager_sessionForStreamToken___block_invoke;
  v6[3] = &unk_1E85F64A0;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(xpcCommandQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __42__VCSessionManager_sessionForStreamToken___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 8) allValues];
  result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        result = [v7 transportSessionID];
        if (v8 == result)
        {
          *(*(*(a1 + 40) + 8) + 40) = v7;
          return result;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)setSharingEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCSessionManager_setSharingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(xpcCommandQueue, block);
}

void __38__VCSessionManager_setSharingEnabled___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 40);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v2 != v3)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 40);
          *buf = 136315906;
          v39 = v14;
          v40 = 2080;
          v41 = "[VCSessionManager setSharingEnabled:]_block_invoke";
          v42 = 1024;
          v43 = 109;
          v44 = 1024;
          LODWORD(v45) = v16;
          v17 = " [%s] %s:%d changing _isSharingEnabled to %d";
          v18 = v15;
          v19 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          *buf = 136316418;
          v39 = v24;
          v40 = 2080;
          v41 = "[VCSessionManager setSharingEnabled:]_block_invoke";
          v42 = 1024;
          v43 = 109;
          v44 = 2112;
          v45 = v7;
          v46 = 2048;
          v47 = v26;
          v48 = 1024;
          v49 = v27;
          v17 = " [%s] %s:%d %@(%p) changing _isSharingEnabled to %d";
          v18 = v25;
          v19 = 54;
          goto LABEL_23;
        }
      }
    }

    *(*(a1 + 32) + 32) = *(a1 + 40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = [*(*(a1 + 32) + 8) allValues];
    v29 = [v28 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v35;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v34 + 1) + 8 * i) setSharingEnabled:*(a1 + 40)];
        }

        v30 = [v28 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v30);
    }

    return;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 136315906;
        v39 = v8;
        v40 = 2080;
        v41 = "[VCSessionManager setSharingEnabled:]_block_invoke";
        v42 = 1024;
        v43 = 116;
        v44 = 1024;
        LODWORD(v45) = v10;
        v11 = " [%s] %s:%d _isSharingEnabled already set to %d";
        v12 = v9;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        *buf = 136316418;
        v39 = v20;
        v40 = 2080;
        v41 = "[VCSessionManager setSharingEnabled:]_block_invoke";
        v42 = 1024;
        v43 = 116;
        v44 = 2112;
        v45 = v6;
        v46 = 2048;
        v47 = v22;
        v48 = 1024;
        v49 = v23;
        v11 = " [%s] %s:%d %@(%p) _isSharingEnabled already set to %d";
        v12 = v21;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setScreenAndCameraMixingEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionManager_setScreenAndCameraMixingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(xpcCommandQueue, block);
}

void __52__VCSessionManager_setScreenAndCameraMixingEnabled___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 33);
  v3 = *(a1 + 40);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v2 != v3)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 40);
          *buf = 136315906;
          v39 = v14;
          v40 = 2080;
          v41 = "[VCSessionManager setScreenAndCameraMixingEnabled:]_block_invoke";
          v42 = 1024;
          v43 = 124;
          v44 = 1024;
          LODWORD(v45) = v16;
          v17 = " [%s] %s:%d changing _screenAndCameraMixingEnabled to %d";
          v18 = v15;
          v19 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          *buf = 136316418;
          v39 = v24;
          v40 = 2080;
          v41 = "[VCSessionManager setScreenAndCameraMixingEnabled:]_block_invoke";
          v42 = 1024;
          v43 = 124;
          v44 = 2112;
          v45 = v7;
          v46 = 2048;
          v47 = v26;
          v48 = 1024;
          v49 = v27;
          v17 = " [%s] %s:%d %@(%p) changing _screenAndCameraMixingEnabled to %d";
          v18 = v25;
          v19 = 54;
          goto LABEL_23;
        }
      }
    }

    *(*(a1 + 32) + 33) = *(a1 + 40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = [*(*(a1 + 32) + 8) allValues];
    v29 = [v28 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v35;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v34 + 1) + 8 * i) setScreenAndCameraMixingEnabled:*(a1 + 40)];
        }

        v30 = [v28 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v30);
    }

    return;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 136315906;
        v39 = v8;
        v40 = 2080;
        v41 = "[VCSessionManager setScreenAndCameraMixingEnabled:]_block_invoke";
        v42 = 1024;
        v43 = 131;
        v44 = 1024;
        LODWORD(v45) = v10;
        v11 = " [%s] %s:%d _screenAndCameraMixingEnabled already set to %d";
        v12 = v9;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        *buf = 136316418;
        v39 = v20;
        v40 = 2080;
        v41 = "[VCSessionManager setScreenAndCameraMixingEnabled:]_block_invoke";
        v42 = 1024;
        v43 = 131;
        v44 = 2112;
        v45 = v6;
        v46 = 2048;
        v47 = v22;
        v48 = 1024;
        v49 = v23;
        v11 = " [%s] %s:%d %@(%p) _screenAndCameraMixingEnabled already set to %d";
        v12 = v21;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)vcSession:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  if (a4)
  {
    kdebug_trace();
  }

  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v6), @"vcSessionStarted", 0}];
  [VCSessionManager addNSError:a5 toXPCArgumentDictionary:v8];
  v9 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v9 sendMessageAsync:"vcSessionDidStart" arguments:v8 context:a3];
}

- (void)vcSession:(id)a3 didStopWithError:(id)a4
{
  kdebug_trace();
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  if (a4)
  {
    [VCSessionManager addNSError:a4 toXPCArgumentDictionary:v6];
  }

  [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"transportMetadata"), @"vcSessionDidStopMetadata"}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionDidStop" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 uplinkRateAdaptationDidChangeWithInfo:(id)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a4, @"vcSessionParameterRateAdaptationInfo", 0}];
  v6 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v6 sendMessageAsync:"vcSessionUplinkRateAdaptationInfoDidChange" arguments:v5 context:a3];
}

- (void)vcSession:(id)a3 downlinkRateAdaptationDidChangeWithInfo:(id)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a4, @"vcSessionParameterRateAdaptationInfo", 0}];
  v6 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v6 sendMessageAsync:"vcSessionDownlinkRateAdaptationInfoDidChange" arguments:v5 context:a3];
}

- (void)vcSession:(id)a3 addParticipantWithID:(id)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v10 = [a3 participantForID:a4];
  [v10 participantVideoToken];
  [v10 idsParticipantID];
  kdebug_trace();
  v11 = [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v12 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v7), @"vcSessionSucceeded", a4, @"vcSessionParticipantID", v11, @"vcSessionParameterStreamTokens", 0}];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
      [v12 setObject:v13 forKeyedSubscript:@"vcSessionSpatialSourceIDs"];
    }
  }

  [VCSessionManager addNSError:a6 toXPCArgumentDictionary:v12];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionAddParticipantDidSuceed" arguments:v12 context:a3];
}

- (void)vcSession:(id)a3 removeParticipantWithID:(id)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionSucceeded", a4, @"vcSessionParticipantID", 0}];
  [VCSessionManager addNSError:a6 toXPCArgumentDictionary:v8];
  v9 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v9 sendMessageAsync:"vcSessionRemoveParticipantDidSucceed" arguments:v8 context:a3];
}

- (void)vcSession:(id)a3 updateConfiguration:(id)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionSucceeded", a4, @"vcSessionConfiguration", 0}];
  [VCSessionManager addNSError:a6 toXPCArgumentDictionary:v8];
  v9 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v9 sendMessageAsync:"vcSessionDidUpdateConfiguration" arguments:v8 context:a3];
}

- (void)vcSession:(id)a3 oneToOneModeEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v7 = a4;
  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"vcSessionSucceeded", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v7), @"vcSessionOneOnOneModeEnabled", 0}];
  [VCSessionManager addNSError:a6 toXPCArgumentDictionary:v11];
  v12 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v12 sendMessageAsync:"vcSessionSetOneToOneEnabledDidChange" arguments:v11 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 audioEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [v11 dictionaryWithObjectsAndKeys:{@"vcSessionAudioEnabledDidSucceed", @"vcServiceType", a4, @"vcSessionParticipantID", v12, @"vcSessionParameterAudioEnabled", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a7 toXPCArgumentDictionary:v13];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionAudioEnabledDidSucceed" arguments:v13 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 videoEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [v11 dictionaryWithObjectsAndKeys:{@"vcSessionVideoEnabledDidSucceed", @"vcServiceType", a4, @"vcSessionParticipantID", v12, @"vcSessionParameterVideoEnabled", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a7 toXPCArgumentDictionary:v13];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionVideoEnabledDidSucceed" arguments:v13 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 screenEnabled:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [v11 dictionaryWithObjectsAndKeys:{@"vcSessionScreenEnabledDidSucceed", @"vcServiceType", a4, @"vcSessionParticipantID", v12, @"vcSessionParameterScreenEnabled", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a7 toXPCArgumentDictionary:v13];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionScreenEnabledDidSucceed" arguments:v13 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteAudioEnabledDidChange:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"vcSessionRemoteAudioEnabledDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionParameterAudioEnabled", 0}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionRemoteAudioEnabledDidChange" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteVideoEnabledDidChange:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"vcSessionRemoteVideoEnabledDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionParameterVideoEnabled", 0}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionRemoteVideoEnabledDidChange" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteScreenEnabledDidChange:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"vcSessionRemoteScreenEnabledDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionParameterScreenEnabled", 0}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionRemoteScreenEnabledDidChange" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 audioPaused:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [v11 dictionaryWithObjectsAndKeys:{@"vcSessionAudioPausedDidSucceed", @"vcServiceType", a4, @"vcSessionParticipantID", v12, @"vcSessionParameterAudioPaused", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a7 toXPCArgumentDictionary:v13];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionAudioPausedDidSucceed" arguments:v13 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 videoPaused:(BOOL)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [v11 dictionaryWithObjectsAndKeys:{@"vcSessionVideoPausedDidSucceed", @"vcServiceType", a4, @"vcSessionParticipantID", v12, @"vcSessionParameterVideoPaused", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a7 toXPCArgumentDictionary:v13];
  v14 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v14 sendMessageAsync:"vcSessionVideoPausedDidSucceed" arguments:v13 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteAudioPausedDidChange:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"vcSessionRemoteAudioPausedDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionParameterAudioPaused", 0}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionRemoteAudioPausedDidChange" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteVideoPausedDidChange:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"vcSessionRemoteVideoPausedDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a5), @"vcSessionParameterVideoPaused", 0}];
  v7 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v7 sendMessageAsync:"vcSessionRemoteVideoPausedDidChange" arguments:v6 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 mediaStateDidChange:(unsigned int)a5 forMediaType:(unsigned int)a6 didSucceed:(BOOL)a7 error:(id)a8
{
  v9 = a7;
  v10 = *&a5;
  v13 = MEMORY[0x1E695DF90];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a6];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v16 = [v13 dictionaryWithObjectsAndKeys:{@"vcSessionMediaStateDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", v14, @"vcSessionParameterMediaType", v15, @"vcSessionParameterMediaState", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v9), @"vcSessionSucceeded", 0}];
  [VCSessionManager addNSError:a8 toXPCArgumentDictionary:v16];
  v17 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v17 sendMessageAsync:"vcSessionMediaStateDidChange" arguments:v16 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 remoteMediaStateDidChange:(unsigned int)a5 forMediaType:(unsigned int)a6
{
  v6 = *&a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a6];
  v11 = [v9 dictionaryWithObjectsAndKeys:{@"vcSessionRemoteMediaStateDidChange", @"vcServiceType", a4, @"vcSessionParticipantID", v10, @"vcSessionParameterMediaType", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v6), @"vcSessionParameterMediaState", 0}];
  v12 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v12 sendMessageAsync:"vcSessionRemoteMediaStateDidChange" arguments:v11 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 mixingDidChangeForMediaType:(unsigned int)a5 mixingMediaType:(unsigned int)a6
{
  v6 = *&a6;
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"vcServiceType";
  v8[1] = @"vcSessionParticipantID";
  v9[0] = @"vcSessionRemoteMixingMediaDidChange";
  v9[1] = a4;
  v8[2] = @"vcSessionParameterMediaType";
  v9[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a5];
  v8[3] = @"vcSessionParameterMixingMediaType";
  v9[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcSessionShouldReconnect:(id)a3
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcSessionShouldReconnect" arguments:&unk_1F579E580 context:a3];
}

- (void)vcSession:(id)a3 participantID:(id)a4 didChangeMediaPriority:(unsigned __int8)a5 description:(id)a6
{
  v7 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:@"vcSessionMediaPrioritiesDidChange" forKeyedSubscript:@"vcServiceType"];
  [v10 setObject:a4 forKeyedSubscript:@"vcSessionParticipantID"];
  [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v7), @"vcSessionParameterParticipantMediaPriority"}];
  if (a6)
  {
    [v10 setObject:a6 forKeyedSubscript:@"vcSessionParameterParticipantMediaPriorityString"];
  }

  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcSession:(id)a3 participantID:(id)a4 reactionDidStart:(id)a5
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:@"vcSessionReactionDidStart" forKeyedSubscript:@"vcServiceType"];
  [v8 setObject:a4 forKeyedSubscript:@"vcSessionParticipantID"];
  [v8 setObject:a5 forKeyedSubscript:@"vcSessionParameterReactionType"];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcSession:(id)a3 participantDidStopReacting:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:@"vcSessionReactionDidStopReacting" forKeyedSubscript:@"vcServiceType"];
  [v6 setObject:a4 forKeyedSubscript:@"vcSessionParticipantID"];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcSession:(id)a3 participantID:(id)a4 didDetectError:(id)a5
{
  v7 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a4, @"vcSessionParticipantID", 0}];
  [VCSessionManager addNSError:a5 toXPCArgumentDictionary:v7];
  v8 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v8 sendMessageAsync:"vcSessionDidDetectError" arguments:v7 context:a3];
}

- (void)registerBlocksForService
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__VCSessionManager_registerBlocksForService__block_invoke;
  v8[3] = &unk_1E85F5CE8;
  v8[4] = v3;
  v8[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__VCSessionManager_registerBlocksForService__block_invoke_195;
  v7[3] = &unk_1E85F5100;
  v7[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__VCSessionManager_registerBlocksForService__block_invoke_2;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VCSessionManager_registerBlocksForService__block_invoke_5;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__VCSessionManager_registerBlocksForService__block_invoke_2_284;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

void *__44__VCSessionManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = -[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]([VCSession alloc], "initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:", [a2 objectForKeyedSubscript:@"vcSessionIDSDestination"], objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionConfiguration"), objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantData"), v4, objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"CLIENTPID"), "intValue"), 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [(VCSession *)v6 setSharingEnabled:*(*(a1 + 40) + 32)];
  [(VCSession *)v7 setScreenAndCameraMixingEnabled:*(*(a1 + 40) + 33)];
  v8 = [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [objc_msgSend(v4 "sessions")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = "[VCSessionManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 348;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionInitializeBlock allocated new VCSession[%p]", buf, 0x26u);
    }
  }

  v14[0] = v7;
  v14[1] = [(VCSession *)v7 uuid:@"CONTEXT"];
  v14[2] = MEMORY[0x1E695E118];
  v13[2] = @"vcSessionSucceeded";
  v13[3] = @"vcSessionParticipantID";
  v14[3] = [(VCSessionParticipant *)[(VCSession *)v7 localParticipant] uuid];
  v13[4] = @"vcSessionParticipantData";
  v14[4] = [(VCSessionParticipant *)[(VCSession *)v7 localParticipant] opaqueData];
  v13[5] = @"vcSessionToken";
  v14[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCSession transportSessionID](v7, "transportSessionID")}];
  v13[6] = @"vcSessionCapabilities";
  v13[7] = @"vcSessionParameterStreamTokens";
  v14[6] = [(VCSession *)v7 capabilities];
  v14[7] = v8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];
  v11 = v5;

  return v5;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_195(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCSessionManager registerBlocksForService]_block_invoke";
        v14 = 1024;
        v15 = 381;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionTerminateBlock releasing old VCSession[%p]", buf, 0x26u);
      }
    }

    [v6 stopWithError:0];
    [v3 releaseSession:v6];
  }

  return v4;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_198(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantIDs"];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removeParticipant:*(*(&v11 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionLocalParticipantConfig"];
    [v4 setPlaybackSynchronizationGroupUUID:{+[VCSessionManager playbackSynchronizationGroupUUIDWithXPCDictionary:](VCSessionManager, "playbackSynchronizationGroupUUIDWithXPCDictionary:", v5)}];
    [objc_msgSend(v4 "localParticipant")];
    [v4 start];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionError"];
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v4 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v4, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
    }

    [v3 stopWithError:v4];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_4(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "updateConfiguration:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionConfiguration"}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_5(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantConfigs"];
    v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}];
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = [objc_msgSend(*(a1 + 32) "strong")];
          [v12 setProcessId:v5];
          [v7 addObject:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v4 countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v9);
    }

    [v6 addParticipantConfigurations:v7];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v4)
        {
          v15 = [objc_msgSend(v4 "description")];
        }

        else
        {
          v15 = "<nil>";
        }

        v17 = 136316162;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCSessionManager registerBlocksForService]_block_invoke_5";
        v21 = 1024;
        v22 = 465;
        v23 = 2080;
        v24 = v15;
        v25 = 2048;
        v26 = v6;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d adding new VCSessionParticipant(s) with config(s):%s to VCSession[%p]", &v17, 0x30u);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_222(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "participantForID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID", "setMuted:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParameterMute", "BOOLValue")}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_2_229(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
    v6 = [a2 objectForKeyedSubscript:@"vcSessionParameterParticipantScreenControlEnabled"];
    v7 = [v4 participantForID:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setScreenControlEnabled:{objc_msgSend(v6, "BOOLValue")}];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[VCSessionManager registerBlocksForService]_block_invoke_2";
          v16 = 1024;
          v17 = 493;
          v18 = 2048;
          v19 = v7;
          v20 = 1024;
          v21 = [v6 BOOLValue];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d changing VCSessionParticipant[%p] screenControlEnabled to %d", &v12, 0x2Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCSessionManager registerBlocksForService]_block_invoke";
        v16 = 1024;
        v17 = 495;
        v18 = 2048;
        v19 = v7;
        v20 = 1024;
        v21 = [v6 BOOLValue];
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d cannot set VCSessionParticipant[%p] screenControlEnabled to %d on a local participant", &v12, 0x2Cu);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_236(uint64_t a1, void *a2, void *a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "participantForID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterVolume", "floatValue"}];
    v6 = [v5 setVolume:?];
    if (a3)
    {
      if ((v6 & 1) == 0)
      {
        *a3 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 11, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionManager.m", 512]);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_2_249(uint64_t a1, void *a2, void *a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "participantForID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionParameterAudioPosition", "floatValue"}];
    v6 = [v5 setAudioPosition:?];
    if (a3)
    {
      if ((v6 & 1) == 0)
      {
        *a3 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionManager.m", 530]);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_3_256(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionParameterAudioEnabled"];
    v6 = [v3 participantForID:v4];
    [v6 setAudioEnabled:{objc_msgSend(v5, "BOOLValue")}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCSessionManager registerBlocksForService]_block_invoke_3";
        v14 = 1024;
        v15 = 546;
        v16 = 2048;
        v17 = v6;
        v18 = 1024;
        v19 = [v5 BOOLValue];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d changing VCSessionParticipant[%p] audioEnabled to %d", &v10, 0x2Cu);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_260(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionParameterVideoEnabled"];
    if ([v3 oneToOneModeEnabled])
    {
      if ([v5 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v6 = [v3 isUsingPersonaCamera];
      }

      [v3 updateOneToOneRateControllerForVideoEnabled:v6];
    }

    v7 = [v3 participantForID:v4];
    [v7 setVideoEnabled:{objc_msgSend(v5, "BOOLValue")}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSessionManager registerBlocksForService]_block_invoke";
        v15 = 1024;
        v16 = 563;
        v17 = 2048;
        v18 = v7;
        v19 = 1024;
        v20 = [v5 BOOLValue];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d changing VCSessionParticipant[%p] videoEnabled to %d", &v11, 0x2Cu);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_264(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionParameterScreenEnabled"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCSessionManager registerBlocksForService]_block_invoke";
        v19 = 1024;
        v20 = 575;
        v21 = 2048;
        v22 = v3;
        v23 = 1024;
        v24 = [v5 BOOLValue];
        v25 = 1024;
        v26 = [v3 oneToOneModeEnabled];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Session=%p Setting screenEnabled=%{BOOL}d oneToOneModeEnabled=%{BOOL}d", &v15, 0x32u);
      }
    }

    if ([v3 oneToOneModeEnabled])
    {
      [v3 updateOneToOneRateControllerForVideoEnabled:objc_msgSend(v3 screenEnabled:{"isOneToOneUsingVideo"), objc_msgSend(v5, "BOOLValue")}];
    }

    v10 = [v3 participantForID:v4];
    [v10 setScreenEnabled:{objc_msgSend(v5, "BOOLValue")}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 BOOLValue];
        v15 = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCSessionManager registerBlocksForService]_block_invoke";
        v19 = 1024;
        v20 = 581;
        v21 = 2048;
        v22 = v10;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d changing VCSessionParticipant[%p] screenEnabled to %d", &v15, 0x2Cu);
      }
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_268(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "participantForID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID", "setAudioPaused:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParameterAudioPaused", "BOOLValue")}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_2_272(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "participantForID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID", "setVideoPaused:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParameterVideoPaused", "BOOLValue")}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_3_276(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
    v5 = [a2 objectForKeyedSubscript:@"vcSessionParameterMediaType"];
    v6 = [a2 objectForKeyedSubscript:@"vcSessionParameterMediaState"];
    v7 = [v3 participantForID:v4];
    [v7 setMediaState:objc_msgSend(v6 forMediaType:{"unsignedIntValue"), objc_msgSend(v5, "unsignedIntValue")}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316418;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSessionManager registerBlocksForService]_block_invoke_3";
        v15 = 1024;
        v16 = 622;
        v17 = 2048;
        v18 = v7;
        v19 = 1024;
        v20 = [v5 unsignedIntValue];
        v21 = 1024;
        v22 = [v6 unsignedIntValue];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d changing VCSessionParticipant=%p mediaType=%d to state=%d", &v11, 0x32u);
      }
    }

    if ([v3 oneToOneModeEnabled])
    {
      [v3 updateOneToOneRateControllerForVideoEnabled:{objc_msgSend(v3, "isOneToOneUsingVideo")}];
    }
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_280(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "setOneToOneModeEnabled:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionOneOnOneModeEnabled", "BOOLValue")}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_2_284(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [*(a1 + 32) newParticpantUpdateConfigurationsWithXPCArgs:a2];
    [v4 updateParticipantConfigurations:v5 sessionPresentationInfo:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionPresentationInfo"}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_3_289(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "setPlaybackSynchronizationGroupUUID:", +[VCSessionManager playbackSynchronizationGroupUUIDWithXPCDictionary:](VCSessionManager, "playbackSynchronizationGroupUUIDWithXPCDictionary:", a2)}];
  }

  return 0;
}

uint64_t __44__VCSessionManager_registerBlocksForService__block_invoke_4_293(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "updatePlaybackSynchronizationGroupMembership:forParticipant:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParameterIsPlaybackSyncGroupMember", "BOOLValue"), objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionParticipantID"}];
  }

  return 0;
}

- (void)deregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcSessionSetMediaState"];
}

+ (id)playbackSynchronizationGroupUUIDWithXPCDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"vcSessionParameterIsPlaybackSyncGroupUUID"];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)participantConfigFromXPCDictionary:(id)a3
{
  v4 = objc_alloc_init(VCSessionParticipantConfig);
  -[VCSessionParticipantConfig setIdsParticipantID:](v4, "setIdsParticipantID:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionIDSParticipantID", "unsignedLongLongValue"}]);
  -[VCSessionParticipantConfig setUuid:](v4, "setUuid:", [a3 objectForKeyedSubscript:@"vcSessionParticipantID"]);
  -[VCSessionParticipantConfig setParticipantData:](v4, "setParticipantData:", [a3 objectForKeyedSubscript:@"vcSessionParticipantData"]);
  -[VCSessionParticipantConfig setAudioEnabled:](v4, "setAudioEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterAudioEnabled", "BOOLValue"}]);
  -[VCSessionParticipantConfig setVideoEnabled:](v4, "setVideoEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterVideoEnabled", "BOOLValue"}]);
  -[VCSessionParticipantConfig setScreenEnabled:](v4, "setScreenEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterScreenEnabled", "BOOLValue"}]);
  -[VCSessionParticipantConfig setScreenControlEnabled:](v4, "setScreenControlEnabled:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterParticipantScreenControlEnabled", "BOOLValue"}]);
  -[VCSessionParticipantConfig setAudioMuted:](v4, "setAudioMuted:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterMute", "BOOLValue"}]);
  [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterVolume", "floatValue"}];
  [(VCSessionParticipantConfig *)v4 setVolume:?];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterAudioPosition", "floatValue"}];
  [(VCSessionParticipantConfig *)v4 setAudioPosition:?];
  -[VCSessionParticipantConfig setAudioPaused:](v4, "setAudioPaused:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterAudioPaused", "BOOLValue"}]);
  -[VCSessionParticipantConfig setVideoPaused:](v4, "setVideoPaused:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterVideoPaused", "BOOLValue"}]);
  -[VCSessionParticipantConfig setVideoQuality:](v4, "setVideoQuality:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterVideoQuality", "unsignedIntegerValue"}]);
  -[VCSessionParticipantConfig setVisibilityIndex:](v4, "setVisibilityIndex:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterVisibilityIndex", "unsignedIntegerValue"}]);
  -[VCSessionParticipantConfig setProminenceIndex:](v4, "setProminenceIndex:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterProminenceIndex", "unsignedIntegerValue"}]);
  -[VCSessionParticipantConfig setPositionalInfo:](v4, "setPositionalInfo:", [a3 objectForKeyedSubscript:@"vcSessionPositionalInfo"]);
  -[VCSessionParticipantConfig setMediaStates:](v4, "setMediaStates:", +[AVCSessionParticipant unarchiveMediaStatesWithData:](AVCSessionParticipant, "unarchiveMediaStatesWithData:", [a3 objectForKeyedSubscript:@"vcSessionParameterMediaStates"]));
  -[VCSessionParticipantConfig setIsPlaybackSynchronizationGroupMember:](v4, "setIsPlaybackSynchronizationGroupMember:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcSessionParameterIsPlaybackSyncGroupMember", "BOOLValue"}]);
  return v4;
}

- (void)releaseSession:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCSessionManager_releaseSession___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = a3;
  block[5] = self;
  dispatch_async(sessionQueue, block);
}

void __35__VCSessionManager_releaseSession___block_invoke(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) startDeallocTimer];
  v2 = [*(a1 + 32) uuid];
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCSessionManager_releaseSession___block_invoke_2;
  block[3] = &unk_1E85F37F0;
  block[4] = v3;
  block[5] = v2;
  dispatch_async(v4, block);
}

uint64_t __35__VCSessionManager_releaseSession___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessions];
  v3 = *(a1 + 40);

  return [v2 setObject:0 forKeyedSubscript:v3];
}

- (id)newParticpantUpdateConfigurationsWithXPCArgs:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"vcSessionParameterParticipantConfiguration"];
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  if (!v35)
  {
    [VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:?];
    return v35;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v48;
    *&v6 = 136315650;
    v34 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"vcSessionParticipantID", v34}];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 objectForKeyedSubscript:@"vcParticipantUpdateConfig"];
          if (v13)
          {
            v14 = [VCSessionParticipantUpdateConfig unserializeCache:v13];
            if (v14)
            {
              [v35 setObject:v14 forKeyedSubscript:v12];
              continue;
            }

            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v31 = VRTraceErrorLogLevelToCSTR();
                v32 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = v34;
                  v37 = v31;
                  v38 = 2080;
                  v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
                  v40 = 1024;
                  v41 = 766;
                  v18 = v32;
                  v19 = " [%s] %s:%d Failed to rebuild the participant update config";
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v23 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v23 = [(VCSessionManager *)self performSelector:sel_logPrefix];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v24 = VRTraceErrorLogLevelToCSTR();
                v25 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v37 = v24;
                  v38 = 2080;
                  v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
                  v40 = 1024;
                  v41 = 766;
                  v42 = 2112;
                  v43 = v23;
                  v44 = 2048;
                  v45 = self;
                  v18 = v25;
                  v19 = " [%s] %s:%d %@(%p) Failed to rebuild the participant update config";
LABEL_29:
                  v26 = 48;
LABEL_40:
                  _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v19, buf, v26);
                  continue;
                }
              }
            }
          }

          else if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v29 = VRTraceErrorLogLevelToCSTR();
              v30 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = v34;
                v37 = v29;
                v38 = 2080;
                v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
                v40 = 1024;
                v41 = 761;
                v18 = v30;
                v19 = " [%s] %s:%d Participant ID update config data is missing";
                goto LABEL_39;
              }
            }
          }

          else
          {
            v20 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v20 = [(VCSessionManager *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v37 = v21;
                v38 = 2080;
                v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
                v40 = 1024;
                v41 = 761;
                v42 = 2112;
                v43 = v20;
                v44 = 2048;
                v45 = self;
                v18 = v22;
                v19 = " [%s] %s:%d %@(%p) Participant ID update config data is missing";
                goto LABEL_29;
              }
            }
          }
        }

        else if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v37 = v27;
              v38 = 2080;
              v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
              v40 = 1024;
              v41 = 756;
              v18 = v28;
              v19 = " [%s] %s:%d Participant ID not provided";
LABEL_39:
              v26 = 28;
              goto LABEL_40;
            }
          }
        }

        else
        {
          v15 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v15 = [(VCSessionManager *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v37 = v16;
              v38 = 2080;
              v39 = "[VCSessionManager newParticpantUpdateConfigurationsWithXPCArgs:]";
              v40 = 1024;
              v41 = 756;
              v42 = 2112;
              v43 = v15;
              v44 = 2048;
              v45 = self;
              v18 = v17;
              v19 = " [%s] %s:%d %@(%p) Participant ID not provided";
              goto LABEL_29;
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v47 objects:v46 count:16];
    }

    while (v7);
  }

  return v35;
}

- (void)newParticpantUpdateConfigurationsWithXPCArgs:(void *)a1 .cold.1(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0_8();
    v5 = " [%s] %s:%d Failed to allocate the update configuration dictionary";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0_8();
      v12 = 2112;
      v13 = v2;
      v14 = 2048;
      v15 = a1;
      v5 = " [%s] %s:%d %@(%p) Failed to allocate the update configuration dictionary";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

@end