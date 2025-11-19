@interface VCAudioRelayIOController
+ (id)sharedInstanceClientFacing;
+ (id)sharedInstanceNull;
+ (id)sharedInstanceRemoteFacing;
+ (void)initializeStateStrings;
- (BOOL)addClient:(id)a3;
- (BOOL)handleTransitionPrepareToStarting;
- (BOOL)removeClient:(id)a3;
- (BOOL)startRelayIO:(id)a3;
- (BOOL)stateIdleWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5;
- (BOOL)statePrepareWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5;
- (BOOL)stateRunningWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5;
- (BOOL)stateStartingWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5;
- (BOOL)updateStateWithClient:(id)a3;
- (NSString)description;
- (VCAudioRelayIOController)initWithRelayType:(unsigned int)a3 relayIOType:(unsigned int)a4;
- (id)newControllerSettingsWithNewClient:(id)a3;
- (id)newRelayIOWithCompletionHandler:(id)a3;
- (unsigned)channelsPerFrame;
- (unsigned)computeSamplePerFrameWithControllerSampleRate:(unsigned int)a3;
- (void)_cleanupDeadClients;
- (void)addStartingClient:(id)a3 controllerSettings:(id)a4;
- (void)dealloc;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)flushEventQueue:(opaqueCMSimpleQueue *)a3;
- (void)handleTransitionPrepareToStarting;
- (void)loadRelay;
- (void)processEventQueue:(AudioEventQueue_t *)a3 clientList:(id)a4;
- (void)registerClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4;
- (void)removeAllClientsForIO:(_VCAudioIOControllerIOState *)a3;
- (void)resetAudioTimestamps;
- (void)startClient:(id)a3;
- (void)stopClient:(id)a3;
- (void)unregisterClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4;
- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4;
- (void)waitIdleForClient:(id)a3;
@end

@implementation VCAudioRelayIOController

+ (void)initializeStateStrings
{
  if (!_stateStrings)
  {
    _stateStrings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"NOT SET", @"IDLE", @"PREPARE", @"STARTING", @"RUNNING", 0}];
  }
}

+ (id)sharedInstanceRemoteFacing
{
  result = sharedInstanceRemoteFacing__VCAudioRelayIOControllerRemoteFacing;
  if (!sharedInstanceRemoteFacing__VCAudioRelayIOControllerRemoteFacing)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!sharedInstanceRemoteFacing__VCAudioRelayIOControllerRemoteFacing)
    {
      sharedInstanceRemoteFacing__VCAudioRelayIOControllerRemoteFacing = [[VCAudioRelayIOController alloc] initWithRelayType:0 relayIOType:1];
      +[VCAudioRelayIOController initializeStateStrings];
    }

    objc_sync_exit(v3);
    return sharedInstanceRemoteFacing__VCAudioRelayIOControllerRemoteFacing;
  }

  return result;
}

+ (id)sharedInstanceClientFacing
{
  if (sharedInstanceClientFacing_onceToken != -1)
  {
    +[VCAudioRelayIOController sharedInstanceClientFacing];
  }

  return sharedInstanceClientFacing__VCAudioRelayIOControllerClientFacing;
}

void __54__VCAudioRelayIOController_sharedInstanceClientFacing__block_invoke()
{
  if (!sharedInstanceClientFacing__VCAudioRelayIOControllerClientFacing)
  {
    sharedInstanceClientFacing__VCAudioRelayIOControllerClientFacing = [[VCAudioRelayIOController alloc] initWithRelayType:0 relayIOType:0];

    +[VCAudioRelayIOController initializeStateStrings];
  }
}

+ (id)sharedInstanceNull
{
  if (sharedInstanceNull_onceToken != -1)
  {
    +[VCAudioRelayIOController sharedInstanceNull];
  }

  return sharedInstanceNull__VCAudioRelayIOControllerNullRemoteFacing;
}

void __46__VCAudioRelayIOController_sharedInstanceNull__block_invoke()
{
  if (!sharedInstanceNull__VCAudioRelayIOControllerNullRemoteFacing)
  {
    sharedInstanceNull__VCAudioRelayIOControllerNullRemoteFacing = [[VCAudioRelayIOController alloc] initWithRelayType:1 relayIOType:1];

    +[VCAudioRelayIOController initializeStateStrings];
  }
}

- (VCAudioRelayIOController)initWithRelayType:(unsigned int)a3 relayIOType:(unsigned int)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCAudioRelayIOController;
  v6 = [(VCAudioRelayIOController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_relayType = a3;
    v6->_relayIOType = a4;
    v6->_startingIOClients = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_allClients = objc_alloc_init(MEMORY[0x1E695DF70]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(62);
    v7->_dispatchQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AudioIORelayControllerQueue", 0, CustomRootQueue);
    v9 = *MEMORY[0x1E695E480];
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 100, &v7->_sourceData.eventQueue);
    CMSimpleQueueCreate(v9, 100, &v7->_sinkData.eventQueue);
    VCSingleLinkedListInitialize(&v7->_sourceData.clientIOList, VCAudioIOControllerIOState_CompareControllerEntries);
    v7->_sourceData.clientIOListLock._os_unfair_lock_opaque = 0;
    VCSingleLinkedListInitialize(&v7->_sinkData.clientIOList, VCAudioIOControllerIOState_CompareControllerEntries);
    v7->_sinkData.clientIOListLock._os_unfair_lock_opaque = 0;
    v7->_state = 1;
  }

  return v7;
}

- (NSString)description
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VCAudioRelayIOController;
  v4 = [(VCAudioRelayIOController *)&v10 description];
  v5 = "Unknown";
  v6 = "Null";
  relayType = self->_relayType;
  relayIOType = self->_relayIOType;
  if (relayType != 1)
  {
    v6 = "Unknown";
  }

  if (!relayType)
  {
    v6 = "FaceTime";
  }

  if (relayIOType == 1)
  {
    v5 = "RemoteFacing";
  }

  if (!relayIOType)
  {
    v5 = "ClientFacing";
  }

  return [v3 stringWithFormat:@"{ %@ relayType=%s(%u) relayIOType=%s(%u) }", v4, v6, relayType, v5, relayIOType];
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
  eventQueue = self->_sourceData.eventQueue;
  if (eventQueue)
  {
    CFRelease(eventQueue);
  }

  v4 = self->_sinkData.eventQueue;
  if (v4)
  {
    CFRelease(v4);
  }

  dispatch_release(self->_dispatchQueue);
  v5.receiver = self;
  v5.super_class = VCAudioRelayIOController;
  [(VCAudioRelayIOController *)&v5 dealloc];
}

- (void)loadRelay
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (self->_relayType == 1)
  {
    v4 = &_relayNull;
  }

  else
  {
    v4 = &_relayFaceTime;
  }

  Weak = objc_loadWeak(v4);
  self->_relay = Weak;
  if (Weak)
  {
    v6 = Weak;
  }

  else
  {
    v7 = objc_alloc_init(VCAudioRelay);
    self->_relay = v7;
    objc_storeWeak(v4, v7);
  }

  objc_sync_exit(v3);
}

- (void)removeAllClientsForIO:(_VCAudioIOControllerIOState *)a3
{
  for (i = &a3->clientIOList; ; i = &a3->clientIOList)
  {
    v5 = VCSingleLinkedListPop(i);
    if (!v5)
    {
      break;
    }

    free(v5);
  }
}

- (BOOL)addClient:(id)a3
{
  v5 = [(NSMutableArray *)self->_allClients containsObject:?];
  if ((v5 & 1) == 0)
  {
    [(NSMutableArray *)self->_allClients addObject:a3];
  }

  return v5 ^ 1;
}

- (void)waitIdleForClient:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (([a3 direction] & 2) == 0)
  {
    goto LABEL_17;
  }

  v5 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(*([a3 sinkIO] + 16), v5))
  {
    dispatch_semaphore_signal(*([a3 sinkIO] + 16));
    goto LABEL_17;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316162;
        *&v25[4] = v7;
        *&v25[12] = 2080;
        *&v25[14] = "[VCAudioRelayIOController waitIdleForClient:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 359;
        WORD2(v26) = 2048;
        *(&v26 + 6) = a3;
        HIWORD(v26) = 2048;
        v27 = [a3 sinkIO];
        v9 = " [%s] %s:%d Sink run lock semaphore was not signaled! client=%p sinkIO=%p";
        v10 = v8;
        v11 = 48;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v25, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316674;
        *&v25[4] = v12;
        *&v25[12] = 2080;
        *&v25[14] = "[VCAudioRelayIOController waitIdleForClient:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 359;
        WORD2(v26) = 2112;
        *(&v26 + 6) = v6;
        HIWORD(v26) = 2048;
        v27 = self;
        *v28 = 2048;
        *&v28[2] = a3;
        *&v28[10] = 2048;
        *&v28[12] = [a3 sinkIO];
        v9 = " [%s] %s:%d %@(%p) Sink run lock semaphore was not signaled! client=%p sinkIO=%p";
        v10 = v13;
        v11 = 68;
        goto LABEL_14;
      }
    }
  }

  os_unfair_lock_lock(&self->_sinkData.clientIOListLock);
  _VCAudioRelayIOController_ProcessEventQueue(&self->_sinkData);
  os_unfair_lock_unlock(&self->_sinkData.clientIOListLock);
  if (VRTraceIsInternalOSInstalled())
  {
    [VCAudioRelayIOController terminateWithReason:@"Sink IO timout"];
  }

LABEL_17:
  if (([a3 direction] & 1) == 0)
  {
    return;
  }

  v14 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(*([a3 sourceIO] + 16), v14))
  {
    dispatch_semaphore_signal(*([a3 sourceIO] + 16));
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_31;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v18 = [a3 sourceIO];
    *v25 = 136316162;
    *&v25[4] = v16;
    *&v25[12] = 2080;
    *&v25[14] = "[VCAudioRelayIOController waitIdleForClient:]";
    *&v25[22] = 1024;
    LODWORD(v26) = 374;
    WORD2(v26) = 2048;
    *(&v26 + 6) = a3;
    HIWORD(v26) = 2048;
    v27 = v18;
    v19 = " [%s] %s:%d Source run lock semaphore was not signaled! client=%p sourceIO=%p";
    v20 = v17;
    v21 = 48;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_31;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v24 = [a3 sourceIO];
    *v25 = 136316674;
    *&v25[4] = v22;
    *&v25[12] = 2080;
    *&v25[14] = "[VCAudioRelayIOController waitIdleForClient:]";
    *&v25[22] = 1024;
    LODWORD(v26) = 374;
    WORD2(v26) = 2112;
    *(&v26 + 6) = v15;
    HIWORD(v26) = 2048;
    v27 = self;
    *v28 = 2048;
    *&v28[2] = a3;
    *&v28[10] = 2048;
    *&v28[12] = v24;
    v19 = " [%s] %s:%d %@(%p) Source run lock semaphore was not signaled! client=%p sourceIO=%p";
    v20 = v23;
    v21 = 68;
  }

  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v25, v21);
LABEL_31:
  os_unfair_lock_lock(&self->_sourceData.clientIOListLock);
  _VCAudioRelayIOController_ProcessEventQueue(&self->_sourceData);
  os_unfair_lock_unlock(&self->_sourceData.clientIOListLock);
  if (VRTraceIsInternalOSInstalled())
  {
    [VCAudioRelayIOController terminateWithReason:@"Source IO timout"];
  }
}

- (BOOL)removeClient:(id)a3
{
  v5 = [(NSMutableArray *)self->_allClients containsObject:?];
  if (v5)
  {
    if (([a3 direction] & 2) != 0)
    {
      -[VCAudioRelayIOController unregisterClientIO:controllerIO:](self, "unregisterClientIO:controllerIO:", [a3 sinkIO], &self->_sinkData);
    }

    if ([a3 direction])
    {
      -[VCAudioRelayIOController unregisterClientIO:controllerIO:](self, "unregisterClientIO:controllerIO:", [a3 sourceIO], &self->_sourceData);
    }

    [(VCAudioRelayIOController *)self waitIdleForClient:a3];
    [(NSMutableArray *)self->_allClients removeObject:a3];
    [(NSMutableArray *)self->_startingIOClients removeObject:a3];
  }

  return v5;
}

- (void)_cleanupDeadClients
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  allClients = self->_allClients;
  v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 136315906;
    v20 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(allClients);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        if (![(__CFString *)v10 delegate])
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v22 = v17;
                v23 = 2080;
                v24 = "[VCAudioRelayIOController _cleanupDeadClients]";
                v25 = 1024;
                v26 = 411;
                v27 = 2048;
                v28 = v10;
                v14 = v18;
                v15 = " [%s] %s:%d Removing dead client (%p)!";
                v16 = 38;
LABEL_19:
                _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v15, buf, v16);
              }
            }
          }

          else
          {
            v11 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v11 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v22 = v12;
                v23 = 2080;
                v24 = "[VCAudioRelayIOController _cleanupDeadClients]";
                v25 = 1024;
                v26 = 411;
                v27 = 2112;
                v28 = v11;
                v29 = 2048;
                v30 = self;
                v31 = 2048;
                v32 = v10;
                v14 = v13;
                v15 = " [%s] %s:%d %@(%p) Removing dead client (%p)!";
                v16 = 58;
                goto LABEL_19;
              }
            }
          }

          [v3 setObject:v10 atIndexedSubscript:{objc_msgSend(v3, "count")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v19 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v34 objects:v33 count:16];
      v7 = v19;
    }

    while (v19);
  }

  [(NSMutableArray *)self->_allClients removeObjectsInArray:v3];
}

- (unsigned)channelsPerFrame
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allClients = self->_allClients;
  v3 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *v12;
  v6 = 1;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(allClients);
      }

      v8 = *([*(*(&v11 + 1) + 8 * i) clientFormat] + 28);
      if (v8 > v6)
      {
        v6 = v8;
      }
    }

    v4 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v4);
  return v6;
}

- (unsigned)computeSamplePerFrameWithControllerSampleRate:(unsigned int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allClients = self->_allClients;
  v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = *v17;
  v8 = a3;
  v9 = -1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(allClients);
      }

      v11 = [*(*(&v16 + 1) + 8 * i) clientFormat];
      LODWORD(v12) = *(v11 + 40);
      v13 = vcvtad_u64_f64(v8 * v12 / *v11);
      if (v9 >= v13)
      {
        v9 = v13;
      }
    }

    v6 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v16 objects:v15 count:16];
  }

  while (v6);
  return v9;
}

- (id)newControllerSettingsWithNewClient:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a3)
  {
    v5 = [(NSMutableArray *)self->_allClients lastObject];
  }

  v6 = [v5 clientFormat];
  v19 = 0;
  v10 = 0;
  v11 = 0x40D7700000000000;
  v18 = 0;
  v12[1] = 0x296C70636DLL;
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 24000.0;
  }

  *v12 = v7;
  v16 = [(VCAudioRelayIOController *)self channelsPerFrame];
  v17 = 32;
  v14 = 1;
  v15 = 4 * (v16 & 0x7FFFFFF);
  v13 = v15;
  LODWORD(v19) = [(VCAudioRelayIOController *)self computeSamplePerFrameWithControllerSampleRate:v7];
  if (v5)
  {
    LODWORD(v10) = [a3 remoteCodecType];
    [a3 remoteCodecSampleRate];
    v11 = v8;
  }

  return [[VCAudioRelayIOControllerSettings alloc] initWithAudioFormat:v12 remoteCodecInfo:&v10];
}

- (BOOL)startRelayIO:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  relayIOType = self->_relayIOType;
  relay = self->_relay;
  if (relayIOType == 1)
  {
    [(VCAudioRelay *)relay setRemoteIO:a3 withError:v11];
  }

  else
  {
    [(VCAudioRelay *)relay setClientIO:a3 withError:v11];
  }

  v6 = v11[0];
  if (v11[0])
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__VCAudioRelayIOController_startRelayIO___block_invoke;
    v10[3] = &unk_1E85F37F0;
    v10[4] = self;
    v10[5] = v6;
    dispatch_async(global_queue, v10);
  }

  v8 = self->_relay;
  if (self->_relayIOType == 1)
  {
    [(VCAudioRelay *)v8 startRemoteIO];
  }

  else
  {
    [(VCAudioRelay *)v8 startClientIO];
  }

  return v11[0] == 0;
}

uint64_t __41__VCAudioRelayIOController_startRelayIO___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (*(v2 + 12) == 1)
  {
    result = [objc_msgSend(v3 "clientIO")];
    if (!result)
    {
      return result;
    }

    v5 = [*(*(a1 + 32) + 48) clientIO];
  }

  else
  {
    result = [objc_msgSend(v3 "remoteIO")];
    if (!result)
    {
      return result;
    }

    v5 = [*(*(a1 + 32) + 48) remoteIO];
  }

  v6 = *([v5 startCompletionHandler] + 16);

  return v6();
}

- (id)newRelayIOWithCompletionHandler:(id)a3
{
  v5 = objc_alloc_init(VCAudioRelayIO);
  [(VCAudioRelayIO *)v5 setClientFormat:[(VCAudioRelayIOControllerSettings *)self->_currentSettings audioFormat]];
  [(VCAudioRelayIO *)v5 setMicCallback:VCAudioRelayIOController_PushAudioSamples];
  [(VCAudioRelayIO *)v5 setMicCallbackContext:&self->_sinkData];
  [(VCAudioRelayIO *)v5 setSpeakerCallback:VCAudioRelayIOController_PullAudioSamples];
  [(VCAudioRelayIO *)v5 setSpeakerCallbackContext:&self->_sourceData];
  [(VCAudioRelayIO *)v5 setUsePacketThread:1];
  [(VCAudioRelayIO *)v5 setStartCompletionHandler:a3];
  [(VCAudioRelayIO *)v5 setUpdateRemoteCodecInfoContext:self];
  [(VCAudioRelayIO *)v5 setUpdateRemoteCodecInfoCallback:VCAudioRelayIOController_UpdateRemoteCodecInfo];
  return v5;
}

- (void)resetAudioTimestamps
{
  VCAudioIOControllerIOState_ResetControllerTime(&self->_sinkData.timestampInitialized);

  VCAudioIOControllerIOState_ResetControllerTime(&self->_sourceData.timestampInitialized);
}

- (void)registerClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = VCAudioIOControllerIOState_NewAudioEvent(0, a3);
  v18 = v7;
  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(*(v7[1] + 16), v8))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v20 = v10;
          v21 = 2080;
          v22 = "[VCAudioRelayIOController registerClientIO:controllerIO:]";
          v23 = 1024;
          v24 = 529;
          v25 = 2048;
          v26 = a3;
          v12 = " [%s] %s:%d Wait on run lock semaphore timed out! clientIO=%p";
          v13 = v11;
          v14 = 38;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v20 = v15;
          v21 = 2080;
          v22 = "[VCAudioRelayIOController registerClientIO:controllerIO:]";
          v23 = 1024;
          v24 = 529;
          v25 = 2112;
          v26 = v9;
          v27 = 2048;
          v28 = self;
          v29 = 2048;
          v30 = a3;
          v12 = " [%s] %s:%d %@(%p) Wait on run lock semaphore timed out! clientIO=%p";
          v13 = v16;
          v14 = 58;
          goto LABEL_12;
        }
      }
    }
  }

  if (self->_state == 4)
  {
    if (CMSimpleQueueEnqueue(a4->eventQueue, v7))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioRelayIOController registerClientIO:v17 controllerIO:?];
        }
      }

      VCAudioIOControllerIOState_ReleaseAudioEvent(&v18, 1);
    }
  }

  else
  {
    VCAudioIOControllerIOState_RegisterClientIO(a4, &v18);
  }
}

- (void)unregisterClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6 = VCAudioIOControllerIOState_NewAudioEvent(1, a3);
  v8[0] = v6;
  if (self->_state == 4)
  {
    if (CMSimpleQueueEnqueue(a4->eventQueue, v6))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioRelayIOController unregisterClientIO:v7 controllerIO:?];
        }
      }

      VCAudioIOControllerIOState_ReleaseAudioEvent(v8, 0);
    }
  }

  else
  {
    VCAudioIOControllerIOState_UnregisterClientIO(a4, v8);
  }
}

- (BOOL)stateIdleWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5
{
  *a5 = 1;
  if ([(NSMutableArray *)self->_allClients count:a3])
  {
    [(VCAudioRelayIOController *)self loadRelay];
    *a5 = 2;
  }

  else
  {
    [(VCAudioRelayIOController *)self resetAudioTimestamps];
  }

  return 1;
}

- (BOOL)handleTransitionPrepareToStarting
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(VCAudioRelayIOControllerSettings *)self->_currentSettings audioFormat];
  samplesPerFrame = v3->samplesPerFrame;
  v5 = *&v3->format.mSampleRate;
  v6 = *&v3->format.mBytesPerPacket;
  *&v16.mBitsPerChannel = *&v3->format.mBitsPerChannel;
  *&v16.mSampleRate = v5;
  *&v16.mBytesPerPacket = v6;
  if (!VCAudioBufferList_Allocate(&v16, samplesPerFrame, &self->_sourceData.secondarySampleBuffer))
  {
    [VCAudioRelayIOController handleTransitionPrepareToStarting];
LABEL_23:
    VCAudioDucker_Destroy(&self->_sourceData.audioLimiter);
    VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allClients = self->_allClients;
  v8 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allClients);
        }

        [(VCAudioRelayIOController *)self addStartingClient:*(*(&v18 + 1) + 8 * i) controllerSettings:self->_currentSettings];
      }

      v9 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = VCAudioLimiter_Allocate(v3);
  self->_sourceData.audioLimiter = v12;
  if (!v12)
  {
    [VCAudioRelayIOController handleTransitionPrepareToStarting];
    goto LABEL_23;
  }

  if ((VCAudioLimiter_Start(v12) & 1) == 0)
  {
    [VCAudioRelayIOController handleTransitionPrepareToStarting];
    goto LABEL_23;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__VCAudioRelayIOController_handleTransitionPrepareToStarting__block_invoke;
  v15[3] = &unk_1E85F54F0;
  v15[4] = self;
  v13 = [(VCAudioRelayIOController *)self newRelayIOWithCompletionHandler:v15];
  if (!v13)
  {
    [VCAudioRelayIOController handleTransitionPrepareToStarting];
LABEL_22:

    VCAudioLimiter_Stop(self->_sourceData.audioLimiter);
    goto LABEL_23;
  }

  if (self->_relayIOType == 1)
  {
    [v13 setRemoteCodecInfo:{-[VCAudioRelayIOControllerSettings remoteCodecInfo](self->_currentSettings, "remoteCodecInfo")}];
  }

  if (![(VCAudioRelayIOController *)self startRelayIO:v13])
  {
    [VCAudioRelayIOController handleTransitionPrepareToStarting];
    goto LABEL_22;
  }

  return 1;
}

void __61__VCAudioRelayIOController_handleTransitionPrepareToStarting__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VCAudioRelayIOController_handleTransitionPrepareToStarting__block_invoke_2;
  v5[3] = &unk_1E85F37C8;
  v6 = a2;
  v5[4] = v3;
  v5[5] = a3;
  dispatch_async(v4, v5);
}

uint64_t __61__VCAudioRelayIOController_handleTransitionPrepareToStarting__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 16) = 4;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(*(a1 + 32) + 40);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [objc_msgSend(*(*(&v9 + 1) + 8 * i) "delegate")];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) flushEventQueue:*(*(a1 + 32) + 344)];
    [*(a1 + 32) flushEventQueue:*(*(a1 + 32) + 136)];
    [*(a1 + 32) removeAllClientsForIO:*(a1 + 32) + 56];
    [*(a1 + 32) removeAllClientsForIO:*(a1 + 32) + 264];
    [*(*(a1 + 32) + 40) removeAllObjects];
    [*(*(a1 + 32) + 32) removeAllObjects];
  }

  return [*(a1 + 32) updateStateWithClient:0];
}

- (BOOL)statePrepareWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5
{
  if (![(NSMutableArray *)self->_allClients count:a3])
  {
    [(VCAudioRelayIOController *)self unloadRelay];
    v8 = 1;
    goto LABEL_5;
  }

  self->_currentSettings = a3;
  if ([(VCAudioRelayIOController *)self handleTransitionPrepareToStarting])
  {
    v8 = 3;
LABEL_5:
    *a5 = v8;
    return 1;
  }

  return 0;
}

- (void)addStartingClient:(id)a3 controllerSettings:(id)a4
{
  if (a3 && ([(NSMutableArray *)self->_startingIOClients containsObject:?]& 1) == 0)
  {
    [objc_msgSend(a3 "delegate")];
    if ([a3 direction])
    {
      -[VCAudioRelayIOController registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [a3 sourceIO], &self->_sourceData);
    }

    if (([a3 direction] & 2) != 0)
    {
      -[VCAudioRelayIOController registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [a3 sinkIO], &self->_sinkData);
    }

    [(NSMutableArray *)self->_startingIOClients addObject:a3];
  }

  if (self->_relayIOType == 1)
  {
    v7 = [(VCAudioRelayIOControllerSettings *)self->_currentSettings remoteCodecInfo];
    v8 = [(VCAudioRelay *)self->_relay remoteIO];

    [(VCAudioRelayIO *)v8 setRemoteCodecInfo:v7];
  }
}

- (BOOL)stateStartingWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  *a5 = 3;
  if (!memcmp(-[VCAudioRelayIOControllerSettings audioFormat](self->_currentSettings, "audioFormat"), [a3 audioFormat], 0x28uLL) && -[NSMutableArray count](self->_allClients, "count"))
  {
    [(VCAudioRelayIOController *)self addStartingClient:a4 controllerSettings:a3];
  }

  else
  {
    relay = self->_relay;
    if (self->_relayIOType == 1)
    {
      [(VCAudioRelay *)relay stopRemoteIO];
    }

    else
    {
      [(VCAudioRelay *)relay stopClientIO];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_relayIOType == 0;
        v14 = 136315906;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCAudioRelayIOController stateStartingWithControllerSettings:client:newState:]";
        v18 = 1024;
        v19 = 695;
        v20 = 1024;
        v21 = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client facing:%d relay stopped", &v14, 0x22u);
      }
    }

    [(VCAudioRelayIOController *)self flushEventQueue:self->_sourceData.eventQueue];
    [(VCAudioRelayIOController *)self flushEventQueue:self->_sinkData.eventQueue];
    [(VCAudioRelayIOController *)self removeAllClientsForIO:&self->_sinkData];
    [(VCAudioRelayIOController *)self removeAllClientsForIO:&self->_sourceData];
    [(NSMutableArray *)self->_startingIOClients removeAllObjects];
    VCAudioLimiter_Stop(self->_sourceData.audioLimiter);
    VCAudioDucker_Destroy(&self->_sourceData.audioLimiter);
    VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
    *a5 = 2;
  }

  return 1;
}

- (BOOL)stateRunningWithControllerSettings:(id)a3 client:(id)a4 newState:(unsigned int *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  *a5 = 4;
  if (!memcmp(-[VCAudioRelayIOControllerSettings audioFormat](self->_currentSettings, "audioFormat"), [a3 audioFormat], 0x28uLL) && -[NSMutableArray count](self->_allClients, "count"))
  {
    [(VCAudioRelayIOController *)self addStartingClient:a4 controllerSettings:a3];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    startingIOClients = self->_startingIOClients;
    v10 = [(NSMutableArray *)startingIOClients countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(startingIOClients);
          }

          [objc_msgSend(*(*(&v16 + 1) + 8 * i) "delegate")];
        }

        v11 = [(NSMutableArray *)startingIOClients countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->_startingIOClients removeAllObjects];
  }

  else
  {
    *a5 = 3;
  }

  return 1;
}

- (BOOL)updateStateWithClient:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v42 = 0;
  [(VCAudioRelayIOController *)self _cleanupDeadClients];
  v41 = a3;
  v5 = [(VCAudioRelayIOController *)self newControllerSettingsWithNewClient:a3];
  v40 = v5;
  do
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [_stateStrings objectAtIndexedSubscript:self->_state];
          state = self->_state;
          *buf = 136316418;
          v44 = v14;
          v45 = 2080;
          v46 = "[VCAudioRelayIOController updateStateWithClient:]";
          v47 = 1024;
          v48 = 748;
          v49 = 2112;
          v50 = self;
          v51 = 2112;
          v52 = v16;
          v53 = 1024;
          *v54 = state;
          v11 = v15;
          v12 = " [%s] %s:%d %@ Process state: %@ (%d)";
          v13 = 54;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v6 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = [_stateStrings objectAtIndexedSubscript:self->_state];
          v10 = self->_state;
          *buf = 136316930;
          v44 = v7;
          v45 = 2080;
          v46 = "[VCAudioRelayIOController updateStateWithClient:]";
          v47 = 1024;
          v48 = 748;
          v49 = 2112;
          v50 = v6;
          v51 = 2048;
          v52 = self;
          v53 = 2112;
          *v54 = self;
          *&v54[8] = 2112;
          *&v54[10] = v9;
          *&v54[18] = 1024;
          v55 = v10;
          v11 = v8;
          v12 = " [%s] %s:%d %@(%p) %@ Process state: %@ (%d)";
          v13 = 74;
LABEL_11:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
        }
      }
    }

    v18 = self->_state;
    v19 = 1;
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v20 = [(VCAudioRelayIOController *)self stateStartingWithControllerSettings:v5 client:v41 newState:&v42];
      }

      else
      {
        if (v18 != 4)
        {
          goto LABEL_22;
        }

        v20 = [(VCAudioRelayIOController *)self stateRunningWithControllerSettings:v5 client:v41 newState:&v42];
      }
    }

    else if (v18 == 1)
    {
      v20 = [(VCAudioRelayIOController *)self stateIdleWithControllerSettings:v5 client:v41 newState:&v42];
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_22;
      }

      v20 = [(VCAudioRelayIOController *)self statePrepareWithControllerSettings:v5 client:v41 newState:&v42];
    }

    v19 = v20;
LABEL_22:
    v21 = v42;
    v22 = self->_state;
    v23 = v42;
    if (v42 == v22)
    {
      goto LABEL_34;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_33;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v35 = [_stateStrings objectAtIndexedSubscript:self->_state];
      v39 = self->_state;
      v36 = [_stateStrings objectAtIndexedSubscript:v42];
      *buf = 136316930;
      v44 = v33;
      v45 = 2080;
      v46 = "[VCAudioRelayIOController updateStateWithClient:]";
      v47 = 1024;
      v48 = 767;
      v49 = 2112;
      v50 = self;
      v51 = 2112;
      v52 = v35;
      v53 = 1024;
      *v54 = v39;
      *&v54[4] = 2112;
      *&v54[6] = v36;
      *&v54[14] = 1024;
      *&v54[16] = v42;
      v30 = v34;
      v31 = " [%s] %s:%d %@ State change: %@ (%d) -> %@ (%d)";
      v32 = 70;
    }

    else
    {
      v24 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioRelayIOController *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_33;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v27 = [_stateStrings objectAtIndexedSubscript:self->_state];
      v28 = self->_state;
      v29 = [_stateStrings objectAtIndexedSubscript:v42];
      *buf = 136317442;
      v44 = v25;
      v45 = 2080;
      v46 = "[VCAudioRelayIOController updateStateWithClient:]";
      v47 = 1024;
      v48 = 767;
      v49 = 2112;
      v50 = v24;
      v51 = 2048;
      v52 = self;
      v53 = 2112;
      *v54 = self;
      *&v54[8] = 2112;
      *&v54[10] = v27;
      *&v54[18] = 1024;
      v55 = v28;
      v5 = v40;
      v56 = 2112;
      v57 = v29;
      v58 = 1024;
      v59 = v42;
      v30 = v26;
      v31 = " [%s] %s:%d %@(%p) %@ State change: %@ (%d) -> %@ (%d)";
      v32 = 90;
    }

    _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
LABEL_33:
    v23 = v42;
LABEL_34:
    self->_state = v23;
  }

  while (v21 != v22 && v19);

  return v19;
}

- (void)processEventQueue:(AudioEventQueue_t *)a3 clientList:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v6 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v6 = micro();
  }

  v7 = VCAudioEventQueue_Dequeue(a3, &v17);
  for (i = 0; v7; ++i)
  {
    v16 = v18;
    if (v18)
    {
      if (v17 == 2)
      {
        [a4 removeObject:v18];
        goto LABEL_9;
      }

      if (v17 == 1)
      {
        [a4 addObject:v18];
LABEL_9:
      }
    }

    LODWORD(v17) = 0;
    v18 = 0;
    v7 = VCAudioEventQueue_Dequeue(a3, &v17);
  }

  LogProfileTimeOverLimit(v6, v7, v8, v9, v10, v11, v12, v13, v14, "[VCAudioRelayIOController processEventQueue:clientList:]");
}

- (void)flushEventQueue:(opaqueCMSimpleQueue *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v4 = micro();
  }

  v5 = objc_opt_new();
  v6 = CMSimpleQueueDequeue(a3);
  v18[0] = v6;
  for (i = 0; v6; v18[0] = v6)
  {
    v8 = [MEMORY[0x1E696B098] valueWithPointer:v6[1]];
    v9 = [v5 containsObject:v8];
    if ((v9 & 1) == 0)
    {
      [v5 addObject:v8];
    }

    VCAudioIOControllerIOState_ReleaseAudioEvent(v18, v9 ^ 1);
    ++i;
    v6 = CMSimpleQueueDequeue(a3);
  }

  LogProfileTimeOverLimit(v4, v10, v11, v12, v13, v14, v15, v16, v17, "[VCAudioRelayIOController flushEventQueue:]");
}

- (void)startClient:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__VCAudioRelayIOController_startClient___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(dispatchQueue, block);
  }
}

uint64_t __40__VCAudioRelayIOController_startClient___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) addClient:*(a1 + 40)])
  {
    result = [*(a1 + 32) updateStateWithClient:*(a1 + 40)];
    if (result)
    {
      return result;
    }

    [*(a1 + 32) removeClient:*(a1 + 40)];
    [*(a1 + 32) updateStateWithClient:0];
  }

  v3 = [*(a1 + 40) delegate];

  return [v3 didStart:0 error:0];
}

- (void)stopClient:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__VCAudioRelayIOController_stopClient___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(dispatchQueue, block);
  }
}

uint64_t __39__VCAudioRelayIOController_stopClient___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) removeClient:*(a1 + 40)] & 1) == 0)
  {
    [objc_msgSend(*(a1 + 40) "delegate")];
  }

  v2 = [*(a1 + 32) updateStateWithClient:0];
  v3 = [*(a1 + 40) delegate];

  return [v3 didStop:v2 error:0];
}

- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4
{
  [a3 setDirection:a4->var0];
  [a3 setSpatialAudioDisabled:a4->var1];
  [a3 setIsVoiceActivityEnabled:a4->var2];
  var3 = a4->var3;

  [a3 setIsMediaPriorityEnabled:var3];
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  codecType = a3->codecType;
  sampleRate = a3->sampleRate;
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCAudioRelayIOController_didUpdateBasebandCodec___block_invoke;
  v6[3] = &unk_1E85F4090;
  v6[4] = self;
  v7 = codecType;
  v8 = *(&a3->codecType + 1);
  v9 = sampleRate;
  dispatch_async(dispatchQueue, v6);
}

uint64_t __51__VCAudioRelayIOController_didUpdateBasebandCodec___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v6++) "delegate")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)registerClientIO:(uint64_t)a1 controllerIO:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 534;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d CMSimpleQueueEnqueue Full", &v2, 0x1Cu);
}

- (void)unregisterClientIO:(uint64_t)a1 controllerIO:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 549;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d CMSimpleQueueEnqueue Full", &v2, 0x1Cu);
}

- (void)handleTransitionPrepareToStarting
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioRelayIOController.m:%d: Failed to create the audio limiter", v2, v3, v4, v5, v6);
    }
  }
}

@end