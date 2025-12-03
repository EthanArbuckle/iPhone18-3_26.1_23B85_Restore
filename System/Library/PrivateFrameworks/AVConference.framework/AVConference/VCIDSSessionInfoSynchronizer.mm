@interface VCIDSSessionInfoSynchronizer
- (VCIDSSessionInfoSynchronizer)initWithDelegate:(id)delegate connectionManager:(id)manager reportingAgent:(id)agent;
- (void)checkVCIDSSessionInfoNeedUpdate:(unsigned __int8)update;
- (void)dealloc;
- (void)deregisterPeriodicTask;
- (void)flushRealTimeReportingStats;
- (void)optInAllStreamsForConnection:(id)connection;
- (void)optInStreamIDsForConnection:(id)connection;
- (void)optInStreamIDsForNewPrimaryConnection:(id)connection oldPrimaryConnection:(id)primaryConnection;
- (void)optOutStreamIDsForNonPrimaryConnection:(id)connection sentOnConnection:(id)onConnection;
- (void)periodicTask:(void *)task;
- (void)registerPeriodicTask;
- (void)resetParticipantGenerationCounter;
- (void)resetPeerSubscribedStreams;
- (void)retryVCIDSSessionInfoSubscribedStreamIDs;
- (void)sendVCIDSSessionInfoSubscribedStreamIDs:(id)ds;
- (void)setDuplicationLinkID:(id)d;
- (void)setPrimaryLinkID:(id)d;
- (void)setVCIDSSessionInfoPublishedStreamIDs:(id)ds;
- (void)setVCIDSSessionInfoSubscribedStreamIDs:(id)ds;
- (void)updateVCIDSSessionInfoResponse:(id)response;
@end

@implementation VCIDSSessionInfoSynchronizer

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  [(VCIDSSessionInfoSynchronizer *)self deregisterPeriodicTask];
  objc_storeWeak(&self->_reportingAgentWeak, 0);

  _Block_release(self->_peerSubscribedStreamCallback);
  _Block_release(self->_peerPublishedStreamCallback);
  _Block_release(self->_errorReponseCallback);

  dispatch_release(self->_stateQueue);
  v3.receiver = self;
  v3.super_class = VCIDSSessionInfoSynchronizer;
  [(VCIDSSessionInfoSynchronizer *)&v3 dealloc];
}

- (void)setVCIDSSessionInfoSubscribedStreamIDs:(id)ds
{
  block[6] = *MEMORY[0x1E69E9840];
  if (ds)
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoSubscribedStreamIDs___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = ds;
    block[5] = self;
    dispatch_async(stateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCIDSSessionInfoSynchronizer setVCIDSSessionInfoSubscribedStreamIDs:];
    }
  }
}

void __71__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoSubscribedStreamIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v2 = *(a1 + 32);
    v3 = v2 ? [objc_msgSend(v2 "description")] : "<nil>";
    asprintf(&__str, "%s", v3);
    if (__str)
    {
      __lasts = 0;
      v4 = strtok_r(__str, "\n", &__lasts);
      v5 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v13 = v6;
            v14 = 2080;
            v15 = "[VCIDSSessionInfoSynchronizer setVCIDSSessionInfoSubscribedStreamIDs:]_block_invoke";
            v16 = 1024;
            v17 = 95;
            v18 = 2080;
            v19 = "streamIDsDictionary=";
            v20 = 2080;
            v21 = v4;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v4 = strtok_r(0, "\n", &__lasts);
      }

      while (v4);
      free(__str);
    }
  }

  if ([*(*(a1 + 40) + 32) isEqualToDictionary:*(a1 + 32)])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCIDSSessionInfoSynchronizer setVCIDSSessionInfoSubscribedStreamIDs:]_block_invoke";
        v16 = 1024;
        v17 = 98;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d subscribedStreamIDs is the same. Don't subscribe again", buf, 0x1Cu);
      }
    }
  }

  else
  {

    *(*(a1 + 40) + 32) = [*(a1 + 32) mutableCopy];
    *(*(a1 + 40) + 168) = 0;
    [*(a1 + 40) sendVCIDSSessionInfoSubscribedStreamIDs:*(a1 + 32)];
  }
}

- (void)retryVCIDSSessionInfoSubscribedStreamIDs
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d streamIDsDictionary is nil", v2, v3, v4, v5, v6);
}

void __72__VCIDSSessionInfoSynchronizer_retryVCIDSSessionInfoSubscribedStreamIDs__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 168);
  if (v3 > 9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __72__VCIDSSessionInfoSynchronizer_retryVCIDSSessionInfoSubscribedStreamIDs__block_invoke_cold_1(v8, v2, v9);
      }
    }
  }

  else
  {
    *(v1 + 168) = v3 + 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*v2 + 42);
        v7 = *(*v2 + 4);
        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCIDSSessionInfoSynchronizer retryVCIDSSessionInfoSubscribedStreamIDs]_block_invoke";
        v14 = 1024;
        v15 = 117;
        v16 = 1024;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d retry %d times subscribedStreamIDs equal: %@", &v10, 0x2Cu);
      }
    }

    [*v2 sendVCIDSSessionInfoSubscribedStreamIDs:*(*v2 + 4)];
  }
}

- (void)sendVCIDSSessionInfoSubscribedStreamIDs:(id)ds
{
  v18[4] = *MEMORY[0x1E69E9840];
  v5 = VCConnectionManager_CopyPrimaryConnection(self->_connectionManager);
  if (!v5)
  {
    [VCIDSSessionInfoSynchronizer sendVCIDSSessionInfoSubscribedStreamIDs:];
    return;
  }

  v6 = v5;
  if (VCConnection_IsEndToEndLink(v5))
  {
    [VCIDSSessionInfoSynchronizer sendVCIDSSessionInfoSubscribedStreamIDs:];
    goto LABEL_9;
  }

  v7 = VCConnectionIDS_LinkID(v6);
  v8 = *MEMORY[0x1E69A4A40];
  v17[0] = *MEMORY[0x1E69A4A40];
  v18[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v7];
  v9 = *MEMORY[0x1E69A4A48];
  v17[1] = *MEMORY[0x1E69A4A48];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v7];
  v11 = *MEMORY[0x1E69A4B28];
  v18[1] = v10;
  v18[2] = ds;
  v12 = *MEMORY[0x1E69A4A88];
  v17[2] = v11;
  v17[3] = v12;
  v18[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentParticipantGenerationCounter];
  [-[VCIDSSessionInfoSynchronizer sessionInfoSynchronizerDelegate](self "sessionInfoSynchronizerDelegate")];
  if (![(VCConnectionManager *)self->_connectionManager isDuplicationEnabled])
  {
LABEL_9:
    CFRelease(v6);
    return;
  }

  secondaryConnection = [(VCConnectionManager *)self->_connectionManager secondaryConnection];
  if (!VCConnection_IsEndToEndLink(secondaryConnection))
  {
    v14 = VCConnectionIDS_LinkID(secondaryConnection);
    v15[0] = v8;
    v16[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v14];
    v15[1] = v9;
    v16[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v14];
    v16[2] = ds;
    v15[2] = v11;
    v15[3] = v12;
    v16[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentParticipantGenerationCounter];
    [-[VCIDSSessionInfoSynchronizer sessionInfoSynchronizerDelegate](self "sessionInfoSynchronizerDelegate")];
    goto LABEL_9;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCIDSSessionInfoSynchronizer sendVCIDSSessionInfoSubscribedStreamIDs:];
    }
  }
}

- (void)setVCIDSSessionInfoPublishedStreamIDs:(id)ds
{
  block[6] = *MEMORY[0x1E69E9840];
  if (ds)
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = ds;
    block[5] = self;
    dispatch_async(stateQueue, block);
  }
}

void __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 136315906;
      v15 = v2;
      v16 = 2080;
      v17 = "[VCIDSSessionInfoSynchronizer setVCIDSSessionInfoPublishedStreamIDs:]_block_invoke";
      v18 = 1024;
      v19 = 159;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d set publishedStreamIDs: %@", buf, 0x26u);
    }
  }

  v5 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 40) + 96));
  if (![*(*(a1 + 40) + 24) isEqualToArray:*(a1 + 32)])
  {

    *(*(a1 + 40) + 24) = [*(a1 + 32) mutableCopy];
    if (!v5)
    {
      __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_2();
      return;
    }

    if (VCConnection_IsEndToEndLink(v5))
    {
      __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_1();
    }

    else
    {
      v6 = VCConnectionIDS_LinkID(v5);
      v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v6, *MEMORY[0x1E69A4A40]}];
      v12[1] = *MEMORY[0x1E69A4A48];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v6];
      v8 = *MEMORY[0x1E69A4AD0];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v13[1] = v7;
      v13[2] = v9;
      v11 = *MEMORY[0x1E69A4A88];
      v12[2] = v8;
      v12[3] = v11;
      v13[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v10 + 72)];
      [objc_msgSend(*(a1 + 40) "sessionInfoSynchronizerDelegate")];
    }

    goto LABEL_8;
  }

  if (!__70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_3((a1 + 32), v5))
  {
LABEL_8:
    CFRelease(v5);
  }
}

- (void)deregisterPeriodicTask
{
  [(VCIDSSessionInfoSynchronizer *)self reportingAgent];

  reportingUnregisterPeriodicTask();
}

- (VCIDSSessionInfoSynchronizer)initWithDelegate:(id)delegate connectionManager:(id)manager reportingAgent:(id)agent
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCIDSSessionInfoSynchronizer;
  v8 = [(VCIDSSessionInfoSynchronizer *)&v11 init];
  if (v8)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v8->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCIDSSessionInfoSynchronizer.stateQueue", 0, CustomRootQueue);
    objc_storeWeak(&v8->_delegate, delegate);
    objc_storeWeak(&v8->_reportingAgentWeak, agent);
    [(VCIDSSessionInfoSynchronizer *)v8 registerPeriodicTask];
    v8->_peerSubscribedStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_peerPublishedStreams = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_publishedStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_subscribedStreams = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_currentParticipantGenerationCounter = 0;
    v8->_primaryLinkID = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
    v8->_duplicationLinkID = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
    v8->_connectionManager = manager;
  }

  return v8;
}

- (void)setPrimaryLinkID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  self->_primaryLinkID = d;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) setPrimaryLinkID:]";
      v10 = 1024;
      v11 = 225;
      v12 = 2112;
      dCopy = d;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d set primaryLinkID: %@", &v6, 0x26u);
    }
  }
}

- (void)setDuplicationLinkID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  self->_duplicationLinkID = d;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) setDuplicationLinkID:]";
      v10 = 1024;
      v11 = 234;
      v12 = 2112;
      dCopy = d;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d set duplicationLinkID: %@", &v6, 0x26u);
    }
  }
}

- (void)resetParticipantGenerationCounter
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentParticipantGenerationCounter = self->_currentParticipantGenerationCounter;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) resetParticipantGenerationCounter]";
      v10 = 1024;
      v11 = 242;
      v12 = 1024;
      v13 = currentParticipantGenerationCounter;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reset participant generation counter from %d to 0", &v6, 0x22u);
    }
  }

  self->_currentParticipantGenerationCounter = 0;
}

- (void)resetPeerSubscribedStreams
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__VCIDSSessionInfoSynchronizer_PrivateMethods__resetPeerSubscribedStreams__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __74__VCIDSSessionInfoSynchronizer_PrivateMethods__resetPeerSubscribedStreams__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 8);
      v16 = 136315906;
      v17 = v2;
      v18 = 2080;
      v19 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) resetPeerSubscribedStreams]_block_invoke";
      v20 = 1024;
      v21 = 248;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reset peer subscribed streams: current subscription=%@", &v16, 0x26u);
    }
  }

  if ([*(*(a1 + 32) + 8) count])
  {
    [*(*(a1 + 32) + 8) removeAllObjects];
    [*(a1 + 32) resetParticipantGenerationCounter];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, [*(v5 + 8) copy]);
      return;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = v8;
          v18 = 2080;
          v19 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) resetPeerSubscribedStreams]_block_invoke";
          v20 = 1024;
          v21 = 255;
          v10 = " [%s] %s:%d peerSubscribedStreamCallback is not set up";
          v11 = v9;
          v12 = 28;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
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

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = 136316162;
          v17 = v13;
          v18 = 2080;
          v19 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) resetPeerSubscribedStreams]_block_invoke";
          v20 = 1024;
          v21 = 255;
          v22 = 2112;
          v23 = v7;
          v24 = 2048;
          v25 = v15;
          v10 = " [%s] %s:%d %@(%p) peerSubscribedStreamCallback is not set up";
          v11 = v14;
          v12 = 48;
          goto LABEL_18;
        }
      }
    }
  }
}

- (void)checkVCIDSSessionInfoNeedUpdate:(unsigned __int8)update
{
  updateCopy = update;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentParticipantGenerationCounter = self->_currentParticipantGenerationCounter;
      *buf = 136316162;
      v14 = v5;
      v15 = 2080;
      v16 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) checkVCIDSSessionInfoNeedUpdate:]";
      v17 = 1024;
      v18 = 262;
      v19 = 1024;
      v20 = updateCopy;
      v21 = 1024;
      v22 = currentParticipantGenerationCounter;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d participantGenerationCounterLSByte = %d, %d", buf, 0x28u);
    }
  }

  if (LOBYTE(self->_currentParticipantGenerationCounter) != updateCopy)
  {
    v8 = VCConnectionManager_CopyPrimaryConnection(self->_connectionManager);
    if (v8)
    {
      v9 = v8;
      v10 = VCConnectionIDS_LinkID(v8);
      v12[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v10, *MEMORY[0x1E69A4A40]}];
      v11[1] = *MEMORY[0x1E69A4A48];
      v12[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v10];
      v11[2] = *MEMORY[0x1E69A4A88];
      v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentParticipantGenerationCounter];
      [-[VCIDSSessionInfoSynchronizer sessionInfoSynchronizerDelegate](self "sessionInfoSynchronizerDelegate")];
      CFRelease(v9);
    }

    else
    {
      [VCIDSSessionInfoSynchronizer(PrivateMethods) checkVCIDSSessionInfoNeedUpdate:];
    }
  }
}

- (void)updateVCIDSSessionInfoResponse:(id)response
{
  v59 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v48 = v5;
      v49 = 2080;
      v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
      v51 = 1024;
      v52 = 279;
      v53 = 2112;
      responseCopy = response;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d eventInfo=%@", buf, 0x26u);
    }
  }

  v7 = *MEMORY[0x1E69A46C8];
  if ([response objectForKey:*MEMORY[0x1E69A46C8]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v36 = [response objectForKeyedSubscript:v7];
        *buf = 136315906;
        v48 = v8;
        v49 = 2080;
        v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
        v51 = 1024;
        v52 = 282;
        v53 = 2112;
        responseCopy = v36;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d eventInfo has IDSDataChannelError, ERROR = %@", buf, 0x26u);
      }
    }

    v10 = [objc_msgSend(response objectForKeyedSubscript:{v7), "code"}];
    if ((v10 - 2) < 2 || v10 == 8)
    {
      [(VCIDSSessionInfoSynchronizer *)self reportingAgent];
      reportingSymptom();
    }

    else if (v10 == 7)
    {
      errorReponseCallback = self->_errorReponseCallback;
      if (errorReponseCallback)
      {
        errorReponseCallback[2](errorReponseCallback, 7);
      }
    }

    ++self->_countResponseFailure;
    return;
  }

  v12 = self->_errorReponseCallback;
  if (v12)
  {
    v12[2](v12, 0);
  }

  v13 = [response objectForKeyedSubscript:*MEMORY[0x1E69A46F0]];
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x1E69A4B00];
    if ([v13 objectForKey:*MEMORY[0x1E69A4B00]])
    {
      self->_sessionInfoRequestBytesUsed = [objc_msgSend(v14 objectForKeyedSubscript:{v15), "intValue"}];
    }

    v16 = *MEMORY[0x1E69A4B08];
    if ([v14 objectForKey:*MEMORY[0x1E69A4B08]])
    {
      self->_sessionInfoResponseBytesUsed = [objc_msgSend(v14 objectForKeyedSubscript:{v16), "intValue"}];
    }

    v17 = [objc_msgSend(v14 objectForKeyedSubscript:{*MEMORY[0x1E69A4A88]), "intValue"}];
    v18 = v17;
    if (v17 == self->_currentParticipantGenerationCounter)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return;
        }

        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136315906;
        v48 = v27;
        v49 = 2080;
        v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
        v51 = 1024;
        v52 = 320;
        v53 = 1024;
        LODWORD(responseCopy) = v18;
        v29 = " [%s] %s:%d Getting duplicated participantGenerationCounter=%u";
        v30 = v28;
        v31 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [(VCIDSSessionInfoSynchronizer *)self performSelector:sel_logPrefix];
        }

        else
        {
          v19 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136316418;
        v48 = v32;
        v49 = 2080;
        v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
        v51 = 1024;
        v52 = 320;
        v53 = 2112;
        responseCopy = v19;
        v55 = 2048;
        selfCopy3 = self;
        v57 = 1024;
        LODWORD(v58) = v18;
        v29 = " [%s] %s:%d %@(%p) Getting duplicated participantGenerationCounter=%u";
        v30 = v33;
        v31 = 54;
      }

      goto LABEL_66;
    }

    self->_currentParticipantGenerationCounter = v17;
    v21 = *MEMORY[0x1E69A4AA0];
    if ([v14 objectForKey:*MEMORY[0x1E69A4AA0]])
    {
      v22 = [v14 objectForKeyedSubscript:v21];
      stateQueue = self->_stateQueue;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __79__VCIDSSessionInfoSynchronizer_PrivateMethods__updateVCIDSSessionInfoResponse___block_invoke;
      v46[3] = &unk_1E85F37F0;
      v46[4] = self;
      v46[5] = v22;
      dispatch_async(stateQueue, v46);
    }

    v24 = *MEMORY[0x1E69A4A98];
    if ([v14 objectForKey:*MEMORY[0x1E69A4A98]])
    {
      v25 = [v14 objectForKeyedSubscript:v24];
      if (([(NSMutableDictionary *)self->_peerPublishedStreams isEqualToDictionary:v25]& 1) != 0)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return;
          }

          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 136315906;
          v48 = v37;
          v49 = 2080;
          v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
          v51 = 1024;
          v52 = 354;
          v53 = 2112;
          responseCopy = v25;
          v29 = " [%s] %s:%d Ignoring identical peerPublishedStreams=%@";
          v30 = v38;
          v31 = 38;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v26 = [(VCIDSSessionInfoSynchronizer *)self performSelector:sel_logPrefix];
          }

          else
          {
            v26 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return;
          }

          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 136316418;
          v48 = v40;
          v49 = 2080;
          v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
          v51 = 1024;
          v52 = 354;
          v53 = 2112;
          responseCopy = v26;
          v55 = 2048;
          selfCopy3 = self;
          v57 = 2112;
          v58 = v25;
          v29 = " [%s] %s:%d %@(%p) Ignoring identical peerPublishedStreams=%@";
          v30 = v41;
          v31 = 58;
        }
      }

      else
      {

        v34 = [v25 mutableCopy];
        self->_peerPublishedStreams = v34;
        peerPublishedStreamCallback = self->_peerPublishedStreamCallback;
        if (peerPublishedStreamCallback)
        {
          peerPublishedStreamCallback[2](peerPublishedStreamCallback, v34);
          return;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            return;
          }

          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 136315650;
          v48 = v42;
          v49 = 2080;
          v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
          v51 = 1024;
          v52 = 351;
          v29 = " [%s] %s:%d peerPublishedStreamCallback is not set up";
          v30 = v43;
          v31 = 28;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v39 = [(VCIDSSessionInfoSynchronizer *)self performSelector:sel_logPrefix];
          }

          else
          {
            v39 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            return;
          }

          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 136316162;
          v48 = v44;
          v49 = 2080;
          v50 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]";
          v51 = 1024;
          v52 = 351;
          v53 = 2112;
          responseCopy = v39;
          v55 = 2048;
          selfCopy3 = self;
          v29 = " [%s] %s:%d %@(%p) peerPublishedStreamCallback is not set up";
          v30 = v45;
          v31 = 48;
        }
      }

LABEL_66:
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:];
    }
  }
}

void __79__VCIDSSessionInfoSynchronizer_PrivateMethods__updateVCIDSSessionInfoResponse___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 8) isEqualToArray:*(a1 + 40)])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          v21 = 136315906;
          v22 = v5;
          v23 = 2080;
          v24 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]_block_invoke";
          v25 = 1024;
          v26 = 338;
          v27 = 2112;
          v28 = v7;
          v8 = " [%s] %s:%d Ignoring identical peerSubscribedStreams=%@";
          v9 = v6;
          v10 = 38;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v21, v10);
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

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v21 = 136316418;
          v22 = v12;
          v23 = 2080;
          v24 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]_block_invoke";
          v25 = 1024;
          v26 = 338;
          v27 = 2112;
          v28 = v2;
          v29 = 2048;
          v30 = v14;
          v31 = 2112;
          v32 = v15;
          v8 = " [%s] %s:%d %@(%p) Ignoring identical peerSubscribedStreams=%@";
          v9 = v13;
          v10 = 58;
          goto LABEL_26;
        }
      }
    }
  }

  else
  {

    *(*(a1 + 32) + 8) = [*(a1 + 40) mutableCopy];
    v3 = *(*(a1 + 32) + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }

    else if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315650;
          v22 = v16;
          v23 = 2080;
          v24 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]_block_invoke";
          v25 = 1024;
          v26 = 335;
          v8 = " [%s] %s:%d peerSubscribedStreamCallback is not set up";
          v9 = v17;
          v10 = 28;
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          v21 = 136316162;
          v22 = v18;
          v23 = 2080;
          v24 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) updateVCIDSSessionInfoResponse:]_block_invoke";
          v25 = 1024;
          v26 = 335;
          v27 = 2112;
          v28 = v11;
          v29 = 2048;
          v30 = v20;
          v8 = " [%s] %s:%d %@(%p) peerSubscribedStreamCallback is not set up";
          v9 = v19;
          v10 = 48;
          goto LABEL_26;
        }
      }
    }
  }
}

- (void)optInStreamIDsForConnection:(id)connection
{
  block[6] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__VCIDSSessionInfoSynchronizer_PrivateMethods__optInStreamIDsForConnection___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = connection;
    dispatch_async(stateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCIDSSessionInfoSynchronizer(PrivateMethods) optInStreamIDsForConnection:];
    }
  }
}

uint64_t __76__VCIDSSessionInfoSynchronizer_PrivateMethods__optInStreamIDsForConnection___block_invoke(uint64_t a1)
{
  v21[4] = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 32) count];
  if (result)
  {
    v3 = VCConnectionIDS_LinkID(*(a1 + 40));
    v20[0] = *MEMORY[0x1E69A4A40];
    v21[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v3];
    v20[1] = *MEMORY[0x1E69A4A48];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v3];
    v5 = *MEMORY[0x1E69A4B28];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v21[1] = v4;
    v21[2] = v7;
    v8 = *MEMORY[0x1E69A4A88];
    v20[2] = v5;
    v20[3] = v8;
    v21[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v6 + 72)];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) optInStreamIDsForConnection:]_block_invoke";
        v16 = 1024;
        v17 = 373;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Opt in for connection, request = %@", &v12, 0x26u);
      }
    }

    return [objc_msgSend(*(a1 + 32) "sessionInfoSynchronizerDelegate")];
  }

  return result;
}

- (void)optInAllStreamsForConnection:(id)connection
{
  if (connection)
  {
    [(VCIDSSessionInfoSynchronizer *)self optInStreamIDsForConnection:?];
  }
}

- (void)optInStreamIDsForNewPrimaryConnection:(id)connection oldPrimaryConnection:(id)primaryConnection
{
  [(VCIDSSessionInfoSynchronizer *)self optInStreamIDsForConnection:?];
  if (primaryConnection != connection)
  {

    [(VCIDSSessionInfoSynchronizer *)self optOutStreamIDsForNonPrimaryConnection:primaryConnection sentOnConnection:connection];
  }
}

- (void)optOutStreamIDsForNonPrimaryConnection:(id)connection sentOnConnection:(id)onConnection
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (connection && onConnection)
  {
    v19[0] = *MEMORY[0x1E69A4A40];
    v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(onConnection)];
    v19[1] = *MEMORY[0x1E69A4A48];
    v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(connection)];
    v19[2] = *MEMORY[0x1E69A4B28];
    v17 = *MEMORY[0x1E69A4A10];
    v18 = *MEMORY[0x1E69A4A60];
    v20[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v19[3] = *MEMORY[0x1E69A4A88];
    v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentParticipantGenerationCounter];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCIDSSessionInfoSynchronizer(PrivateMethods) optOutStreamIDsForNonPrimaryConnection:sentOnConnection:]";
        v13 = 1024;
        v14 = 405;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Opt out for non primary connection, request = %@", &v9, 0x26u);
      }
    }

    [-[VCIDSSessionInfoSynchronizer sessionInfoSynchronizerDelegate](self "sessionInfoSynchronizerDelegate")];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCIDSSessionInfoSynchronizer(PrivateMethods) optOutStreamIDsForNonPrimaryConnection:sentOnConnection:];
    }
  }
}

- (void)periodicTask:(void *)task
{
  v5 = micro();
  v6 = v5 - self->_lastUpdateTimestamp;
  self->_lastUpdateTimestamp = v5;
  sessionInfoRequestBytesUsed = self->_sessionInfoRequestBytesUsed;
  v8 = sessionInfoRequestBytesUsed - self->_lastProcessedBytesSent;
  self->_lastProcessedBytesSent = sessionInfoRequestBytesUsed;
  if (v6 == 0.0)
  {
    v12 = 0;
    self->_maxSentRate = 0;
  }

  else
  {
    minSentRate = self->_minSentRate;
    maxSentRate = self->_maxSentRate;
    v11 = v8 / v6;
    if (v11 > maxSentRate)
    {
      maxSentRate = v8 / v6;
    }

    self->_maxSentRate = maxSentRate;
    if (v11 > minSentRate)
    {
      v11 = minSentRate;
    }

    v12 = v11;
  }

  self->_bytesSentToReport += v8;
  sessionInfoResponseBytesUsed = self->_sessionInfoResponseBytesUsed;
  v14 = sessionInfoResponseBytesUsed - self->_lastProcessedBytesReceived;
  self->_minSentRate = v12;
  self->_lastProcessedBytesReceived = sessionInfoResponseBytesUsed;
  if (v6 == 0.0)
  {
    v19 = 0;
    self->_maxReceivedRate = 0;
  }

  else
  {
    maxReceivedRate = self->_maxReceivedRate;
    minReceivedRate = self->_minReceivedRate;
    v17 = v14 / v6;
    if (v17 <= maxReceivedRate)
    {
      v18 = maxReceivedRate;
    }

    else
    {
      v18 = v14 / v6;
    }

    self->_maxReceivedRate = v18;
    if (v17 > minReceivedRate)
    {
      v17 = minReceivedRate;
    }

    v19 = v17;
  }

  self->_minReceivedRate = v19;
  self->_bytesReceivedToReport += v14;
  if (task)
  {
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"SIMinBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxSentRate), @"SIMaxBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_bytesSentToReport), @"SIRawBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_minReceivedRate), @"SIMinBytesReceived"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxReceivedRate), @"SIMaxBytesReceived"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_bytesReceivedToReport), @"SIRawBytesReceived"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_countResponseFailure), @"SyncIDSFailure"}];

    [(VCIDSSessionInfoSynchronizer *)self flushRealTimeReportingStats];
  }
}

- (void)registerPeriodicTask
{
  [(VCIDSSessionInfoSynchronizer *)self reportingAgent];

  reportingRegisterPeriodicTaskWeak();
}

- (void)flushRealTimeReportingStats
{
  self->_minSentRate = 0x7FFFFFFF;
  self->_minReceivedRate = 0x7FFFFFFF;
  *&self->_bytesSentToReport = 0;
  *&self->_bytesReceivedToReport = 0;
}

- (void)setVCIDSSessionInfoSubscribedStreamIDs:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d streamIDsDictionary is nil", v2, v3, v4, v5, v6);
}

void __72__VCIDSSessionInfoSynchronizer_retryVCIDSSessionInfoSubscribedStreamIDs__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 168);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCIDSSessionInfoSynchronizer retryVCIDSSessionInfoSubscribedStreamIDs]_block_invoke";
  v8 = 1024;
  v9 = 120;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Hit the retry limit=%d for subscribedStreamIDs", &v4, 0x22u);
}

- (void)sendVCIDSSessionInfoSubscribedStreamIDs:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Secondary connection is end-to-end when subscribing to streams.", v2, v3, v4, v5, v6);
}

- (void)sendVCIDSSessionInfoSubscribedStreamIDs:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Primary connection is end-to-end when subscribing to streams.", v2, v3, v4, v5, v6);
    }
  }
}

- (void)sendVCIDSSessionInfoSubscribedStreamIDs:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d primary connection is nil", v2, v3, v4, v5, v6);
    }
  }
}

void __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Primary connection is end-to-end when publishing streams.", v2, v3, v4, v5, v6);
    }
  }
}

void __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d primary connection is nil", v2, v3, v4, v5, v6);
    }
  }
}

BOOL __70__VCIDSSessionInfoSynchronizer_setVCIDSSessionInfoPublishedStreamIDs___block_invoke_cold_3(uint64_t *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a1;
      v8 = 136315906;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCIDSSessionInfoSynchronizer setVCIDSSessionInfoPublishedStreamIDs:]_block_invoke";
      v12 = 1024;
      v13 = 162;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d publishedStreamIDs equal: %@", &v8, 0x26u);
    }
  }

  return a2 == 0;
}

@end