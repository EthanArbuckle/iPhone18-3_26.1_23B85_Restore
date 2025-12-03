@interface VCTransportSessionIDSMultiLink
- (VCTransportSessionIDSMultiLink)initWithCallID:(unsigned int)d requireEncryptionInfo:(BOOL)info reportingAgent:(id)agent notificationQueue:(id)queue isMultiwaySession:(BOOL)session dataPath:(int)path;
- (void)VCIDSSessionInfoSynchronizer:(void *)synchronizer sendVCIDSSessionInfoRequest:(id)request;
- (void)connectionCallback:(id)callback isInitialConnection:(BOOL)connection;
- (void)dealloc;
- (void)didEnableDuplication:(BOOL)duplication activeConnection:(id)connection;
- (void)didLocalNetworkQualityChange:(BOOL)change isLocalNetworkQualityBad:(BOOL)bad isRemoteNetworkQualityBad:(BOOL)qualityBad;
- (void)didMediaQualityDegrade:(BOOL)degrade;
- (void)didUpdatePreferredInterfaceForDuplication:(unsigned __int8)duplication notifyPeer:(BOOL)peer enableDuplication:(BOOL)enableDuplication isMediaUnrecoverableSignal:(BOOL)signal;
- (void)discardConnection:(id)connection;
- (void)flushLinkProbingStatusWithOptions:(id)options;
- (void)handleLinkConnectedWithInfo:(id)info;
- (void)handleLinkDisconnectedWithInfo:(id)info;
- (void)handleProbingResponse:(id)response;
- (void)logSignalStrength;
- (void)optOutAllStreamsForConnection:(id)connection;
- (void)primaryConnectionChanged:(id)changed oldPrimaryConnection:(id)connection activeConnection:(id)activeConnection;
- (void)queryProbingResultsWithOptions:(id)options;
- (void)requestStatsWithOptions:(id)options;
- (void)setDefaultLink:(id)link;
- (void)setOneToOneModeEnabled:(BOOL)enabled isInitiator:(BOOL)initiator;
- (void)setQuickRelayServerProvider:(int)provider;
- (void)setRemoteDeviceVersionIDS;
- (void)setWiFiAssist:(BOOL)assist;
- (void)startActiveProbingWithOptions:(id)options;
- (void)stopActiveProbingWithOptions:(id)options;
@end

@implementation VCTransportSessionIDSMultiLink

- (VCTransportSessionIDSMultiLink)initWithCallID:(unsigned int)d requireEncryptionInfo:(BOOL)info reportingAgent:(id)agent notificationQueue:(id)queue isMultiwaySession:(BOOL)session dataPath:(int)path
{
  sessionCopy = session;
  v10 = *&d;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCTransportSessionIDSMultiLink;
  v11 = [(VCTransportSessionIDS *)&v14 initWithCallID:*&d requireEncryptionInfo:info reportingAgent:agent notificationQueue:queue dataPath:*&path];
  if (v11)
  {
    connectionManager = [[VCConnectionManagerIDS alloc] initWithMultiwayEnabled:sessionCopy];
    v11->super.super._connectionManager = &connectionManager->super;
    if (!sessionCopy)
    {
      [(VCConnectionManager *)connectionManager setupConnectionHealthMonitor];
      connectionManager = v11->super.super._connectionManager;
    }

    [(VCConnectionManager *)connectionManager setReportingAgent:agent];
    [(VCConnectionManager *)v11->super.super._connectionManager setCallID:v10];
    [(VCConnectionManager *)v11->super.super._connectionManager setDelegate:v11];
    [(VCConnectionManager *)v11->super.super._connectionManager setSupportDuplication:[(VCTransportSession *)v11 isHandoverSupported]];
    VTP_RegisterConnectionManagerWithCallID(v11->super.super._connectionManager, [(VCConnectionManager *)v11->super.super._connectionManager callID]);
    if (sessionCopy)
    {
      v11->_sessionInfoSynchronizer = [[VCIDSSessionInfoSynchronizer alloc] initWithDelegate:v11 connectionManager:v11->super.super._connectionManager reportingAgent:agent];
    }
  }

  return v11;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VTP_DeregisterConnectionManagerWithCallID([(VCConnectionManager *)self->super.super._connectionManager callID]);

  v3.receiver = self;
  v3.super_class = VCTransportSessionIDSMultiLink;
  [(VCTransportSessionIDS *)&v3 dealloc];
}

- (void)handleProbingResponse:(id)response
{
  if (response)
  {
    connectionManager = self->super.super._connectionManager;

    [(VCConnectionManager *)connectionManager updateProbingResults:?];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionIDSMultiLink handleProbingResponse:];
    }
  }
}

- (void)setQuickRelayServerProvider:(int)provider
{
  connectionManager = self->super.super._connectionManager;
  if (provider == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (provider == 2);
  }

  [(VCConnectionManager *)connectionManager setRelayServerProvider:v4];
}

- (void)setWiFiAssist:(BOOL)assist
{
  assistCopy = assist;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v5;
        v13 = 2080;
        v14 = "[VCTransportSessionIDSMultiLink setWiFiAssist:]";
        v15 = 1024;
        v16 = 167;
        v17 = 1024;
        v18 = assistCopy;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d try to setWiFiAssist = %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(VCTransportSessionIDSMultiLink *)v5 setWiFiAssist:assistCopy, v6];
    }
  }

  stateQueue = self->super.super._stateQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__VCTransportSessionIDSMultiLink_setWiFiAssist___block_invoke;
  v9[3] = &unk_1E85F37A0;
  v9[4] = self;
  v10 = assistCopy;
  dispatch_async(stateQueue, v9);
}

uint64_t __48__VCTransportSessionIDSMultiLink_setWiFiAssist___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 288) != v2)
  {
    v3 = result;
    *(v1 + 288) = v2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(v3 + 32) + 288);
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCTransportSessionIDSMultiLink setWiFiAssist:]_block_invoke";
        v11 = 1024;
        v12 = 171;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isWiFiAssistActive = %d", &v7, 0x22u);
      }
    }

    return [*(*(v3 + 32) + 232) setWiFiAssist:*(*(v3 + 32) + 288)];
  }

  return result;
}

- (void)setDefaultLink:(id)link
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCTransportSessionIDSMultiLink_setDefaultLink___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = link;
  block[5] = self;
  dispatch_async(stateQueue, block);
}

uint64_t __49__VCTransportSessionIDSMultiLink_setDefaultLink___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = VCConnectionIDS_LinkID(*(a1 + 32));
  v18 = *MEMORY[0x1E69A4740];
  v19[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v2];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = VCDatagramChannelIDS_Token(*(*(a1 + 40) + 232));
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCTransportSessionIDSMultiLink setDefaultLink:]_block_invoke";
      v12 = 1024;
      v13 = 181;
      v14 = 1024;
      v15 = v2;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: set default link %d on datagram channel %d", &v8, 0x28u);
    }
  }

  return [*(*(a1 + 40) + 232) setChannelPreferences:v3];
}

- (void)primaryConnectionChanged:(id)changed oldPrimaryConnection:(id)connection activeConnection:(id)activeConnection
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self updateBasebandForConnection:activeConnection];
  [(VCTransportSessionIDSMultiLink *)self setDefaultLink:changed];
  if ([+[VCDefaults forceWiFiAssist] sharedInstance]
  {
    if (!VCConnection_IsLocalOnCellular(activeConnection))
    {
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        datagramChannel = self->super._datagramChannel;
        *buf = 136315906;
        v21 = v9;
        v22 = 2080;
        v23 = "[VCTransportSessionIDSMultiLink primaryConnectionChanged:oldPrimaryConnection:activeConnection:]";
        v24 = 1024;
        v25 = 199;
        v26 = 2048;
        *v27 = datagramChannel;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Force wifi assist active always on cellular channel, _datagramChannel %p", buf, 0x26u);
      }
    }

    v12 = 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        IsLocalOnWiFiOrWired = VCConnection_IsLocalOnWiFiOrWired(changed);
        v16 = self->super._datagramChannel;
        *buf = 136316162;
        v21 = v13;
        v22 = 2080;
        v23 = "[VCTransportSessionIDSMultiLink primaryConnectionChanged:oldPrimaryConnection:activeConnection:]";
        v24 = 1024;
        v25 = 203;
        v26 = 1024;
        *v27 = IsLocalOnWiFiOrWired;
        v27[2] = 2048;
        *&v27[3] = v16;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setWiFiAssist = %d, _datagramChannel %p", buf, 0x2Cu);
      }
    }

    v12 = VCConnection_IsLocalOnWiFiOrWired(activeConnection);
  }

  [(VCTransportSessionIDSMultiLink *)self setWiFiAssist:v12];
LABEL_12:
  if (VCConnection_IsEndToEndLink(changed))
  {
    if (!self->_oneToOneModeEnabled && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionIDSMultiLink primaryConnectionChanged:oldPrimaryConnection:activeConnection:];
      }
    }
  }

  else
  {
    sessionInfoSynchronizer = self->_sessionInfoSynchronizer;
    if (self->_oneToOneModeEnabled)
    {
      [(VCIDSSessionInfoSynchronizer *)sessionInfoSynchronizer optInAllStreamsForConnection:changed];
    }

    else
    {
      [(VCIDSSessionInfoSynchronizer *)sessionInfoSynchronizer optInStreamIDsForNewPrimaryConnection:changed oldPrimaryConnection:connection];
    }
  }

  v18[0] = @"transportSessionEventInfoNewPrimary";
  v18[1] = @"transportSessionEventInfoOldPrimary";
  v19[0] = changed;
  v19[1] = connection;
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2]);
}

- (void)connectionCallback:(id)callback isInitialConnection:(BOOL)connection
{
  connectionCopy = connection;
  v9[2] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    [(VCTransportSession *)self updateBasebandForConnection:callback];
    [(TimingCollection *)self->super.super._perfTimings stopTimingForKey:26];
    [(VCTransportSessionIDS *)self setConnectionSetupTime];
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer optInStreamIDsForConnection:callback];
  }

  else if (VCConnection_Priority(callback) != 2 && ![(VCConnectionManager *)self->super.super._connectionManager optIntoExistingSubscribedStreams])
  {
    v7 = VCConnectionManager_CopyPrimaryConnection(self->super.super._connectionManager);
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer optOutStreamIDsForNonPrimaryConnection:callback sentOnConnection:v7];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8[0] = @"transportSessionEventInfoNewLink";
  v8[1] = @"transportSessionEventInfoIsFirstLink";
  v9[0] = callback;
  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:connectionCopy];
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
}

- (void)discardConnection:(id)connection
{
  block[6] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    stateQueue = self->super.super._stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCTransportSessionIDSMultiLink_discardConnection___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = connection;
    block[5] = self;
    dispatch_async(stateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionIDSMultiLink discardConnection:];
    }
  }
}

uint64_t __52__VCTransportSessionIDSMultiLink_discardConnection___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = VCConnectionIDS_LinkID(*(a1 + 32));
  v24[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v2];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v22 = *MEMORY[0x1E69A4748];
  v23 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = VCDatagramChannelIDS_Token(*(*(a1 + 40) + 232));
      *buf = 136316162;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCTransportSessionIDSMultiLink discardConnection:]_block_invoke";
      v16 = 1024;
      v17 = 254;
      v18 = 1024;
      v19 = v2;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: discard link %d on datagram channel %d", buf, 0x28u);
    }
  }

  [*(*(a1 + 40) + 232) setChannelPreferences:v4];
  v8 = *(a1 + 32);
  v10 = @"transportSessionEventInfoDisconnectedLink";
  v11 = v8;
  return [*(a1 + 40) callEventHandlerWithEvent:2 info:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
}

- (void)didEnableDuplication:(BOOL)duplication activeConnection:(id)connection
{
  duplicationCopy = duplication;
  v25[2] = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self updateBasebandForConnection:connection];
  v24[0] = @"transportSessionEventInfoIsDuplicationEnabled";
  v24[1] = @"transportSessionEventInfoActiveConnection";
  v25[0] = [MEMORY[0x1E696AD98] numberWithBool:duplicationCopy];
  v25[1] = connection;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(connection);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316418;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCTransportSessionIDSMultiLink didEnableDuplication:activeConnection:]";
      v16 = 1024;
      v17 = 268;
      v18 = 1024;
      v19 = duplicationCopy;
      v20 = 1024;
      v21 = IsLocalOnCellular;
      v22 = 1024;
      IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(connection);
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _datagramChannel. isDuplicationEnabled = %d, activeConnection: isLocalOnCellular = %d, isRemoteOnCellular = %d", &v12, 0x2Eu);
    }
  }

  if (![+[VCDefaults forceWiFiAssist] sharedInstance]
  {
    v11 = duplicationCopy & IsLocalOnCellular;
    if (v11)
    {
      goto LABEL_6;
    }

    if (duplicationCopy)
    {
      if (VCConnection_IsEndToEndLink(connection))
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

    if (VCConnection_IsLocalOnWiFiOrWired(connection))
    {
LABEL_6:
      [(VCTransportSessionIDSMultiLink *)self setWiFiAssist:!v11];
    }
  }

  if (VCConnection_IsEndToEndLink(connection))
  {
LABEL_8:
    if (!self->_oneToOneModeEnabled && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionIDSMultiLink didEnableDuplication:activeConnection:];
      }
    }

    goto LABEL_19;
  }

  if (duplicationCopy)
  {
LABEL_18:
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer optInStreamIDsForConnection:connection];
    goto LABEL_19;
  }

  if ([(VCConnectionManager *)self->super.super._connectionManager secondaryConnection]&& ![(VCConnectionManager *)self->super.super._connectionManager optIntoExistingSubscribedStreams])
  {
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer optOutStreamIDsForNonPrimaryConnection:[(VCConnectionManager *)self->super.super._connectionManager secondaryConnection] sentOnConnection:connection];
  }

LABEL_19:
  [(VCTransportSession *)self callEventHandlerWithEvent:4 info:v7];
}

- (void)didUpdatePreferredInterfaceForDuplication:(unsigned __int8)duplication notifyPeer:(BOOL)peer enableDuplication:(BOOL)enableDuplication isMediaUnrecoverableSignal:(BOOL)signal
{
  signalCopy = signal;
  peerCopy = peer;
  duplicationCopy = duplication;
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"transportSessionEventInfoIsDuplicationEnabled";
  v11[0] = [MEMORY[0x1E696AD98] numberWithBool:enableDuplication];
  v10[1] = @"transportSessionEventInfoPreferredInterfaceForDuplication";
  v11[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:duplicationCopy];
  v10[2] = @"transportSessionEventInfoNotifyPeer";
  v11[2] = [MEMORY[0x1E696AD98] numberWithBool:peerCopy];
  v10[3] = @"transportSessionEventInfoIsMediaUnrecoverableSignal";
  v11[3] = [MEMORY[0x1E696AD98] numberWithBool:signalCopy];
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 15, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4]);
}

- (void)didMediaQualityDegrade:(BOOL)degrade
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"transportSessionEventInfoIsMediaQualityDegraded";
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:degrade];
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 19, [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

- (void)didLocalNetworkQualityChange:(BOOL)change isLocalNetworkQualityBad:(BOOL)bad isRemoteNetworkQualityBad:(BOOL)qualityBad
{
  qualityBadCopy = qualityBad;
  badCopy = bad;
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"transportSessionEventInfoDidLocalNetworkConditionChange";
  v9[0] = [MEMORY[0x1E696AD98] numberWithBool:change];
  v8[1] = @"transportSessionEventInfoIsLocalNetworkQualityDegraded";
  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:badCopy];
  v8[2] = @"transportSessionEventInfoIsRemoteNetworkQualityDegraded";
  v9[2] = [MEMORY[0x1E696AD98] numberWithBool:qualityBadCopy];
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 20, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3]);
}

- (void)optOutAllStreamsForConnection:(id)connection
{
  if (VCConnection_Priority(connection) != 2)
  {
    v5 = VCConnectionManager_CopyPrimaryConnection(self->super.super._connectionManager);
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer optOutStreamIDsForNonPrimaryConnection:connection sentOnConnection:v5];
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

- (void)setOneToOneModeEnabled:(BOOL)enabled isInitiator:(BOOL)initiator
{
  initiatorCopy = initiator;
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabled";
      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCTransportSessionIDSMultiLink setOneToOneModeEnabled:isInitiator:]";
      if (enabledCopy)
      {
        v9 = "enabled";
      }

      v18 = 1024;
      v19 = 340;
      v20 = 2080;
      v21 = v9;
      v22 = 1024;
      v23 = initiatorCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: oneToOneMode %s for isInitiator: %d", buf, 0x2Cu);
    }
  }

  self->_oneToOneModeEnabled = enabledCopy;
  [(VCConnectionManager *)self->super.super._connectionManager setOptIntoExistingSubscribedStreams:enabledCopy];
  if (self->_oneToOneModeEnabled)
  {
    [(VCIDSSessionInfoSynchronizer *)self->_sessionInfoSynchronizer resetPeerSubscribedStreams];
  }

  stateQueue = self->super.super._stateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__VCTransportSessionIDSMultiLink_setOneToOneModeEnabled_isInitiator___block_invoke;
  v11[3] = &unk_1E85F41F8;
  v11[4] = self;
  v12 = enabledCopy;
  v13 = initiatorCopy;
  dispatch_async(stateQueue, v11);
}

void *__69__VCTransportSessionIDSMultiLink_setOneToOneModeEnabled_isInitiator___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 232) setOneToOneModeEnabled:*(a1 + 40) isInitiator:*(a1 + 41)];
  result = *(*(a1 + 32) + 168);
  if (result)
  {
    result = [result objectForKey:@"qrse_und2"];
    if (result)
    {
      v3 = [objc_msgSend(*(*(a1 + 32) + 168) objectForKeyedSubscript:{@"qrse_und2", "BOOLValue"}];
      v4 = @"transportSessionEventInfoIsUplinkRetransmissionSupported";
      v5[0] = [MEMORY[0x1E696AD98] numberWithBool:v3 ^ 1u];
      return [*(a1 + 32) callEventHandlerWithEvent:21 info:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
    }
  }

  return result;
}

- (void)startActiveProbingWithOptions:(id)options
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VCTransportSessionIDSMultiLink_startActiveProbingWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = options;
  dispatch_async(stateQueue, block);
}

uint64_t __64__VCTransportSessionIDSMultiLink_startActiveProbingWithOptions___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = VCDatagramChannelIDS_Token(*(*(a1 + 32) + 232));
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AB8]];
      v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AB0]];
      v7 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AC8]];
      v9 = 136316674;
      v10 = v2;
      v11 = 2080;
      v12 = "[VCTransportSessionIDSMultiLink startActiveProbingWithOptions:]_block_invoke";
      v13 = 1024;
      v14 = 360;
      v15 = 1024;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Start active probing on datagram channel %d on connections with link IDs: %@ with interval: %@ and timeout: %@", &v9, 0x40u);
    }
  }

  return [*(*(a1 + 32) + 232) startActiveProbingWithOptions:*(a1 + 40)];
}

- (void)stopActiveProbingWithOptions:(id)options
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCTransportSessionIDSMultiLink_stopActiveProbingWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = options;
  dispatch_async(stateQueue, block);
}

uint64_t __63__VCTransportSessionIDSMultiLink_stopActiveProbingWithOptions___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = VCDatagramChannelIDS_Token(*(*(a1 + 32) + 232));
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AB8]];
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCTransportSessionIDSMultiLink stopActiveProbingWithOptions:]_block_invoke";
      v11 = 1024;
      v12 = 367;
      v13 = 1024;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Stop active probing on datagram channel %d on connections with link IDs: %@", &v7, 0x2Cu);
    }
  }

  return [*(*(a1 + 32) + 232) stopActiveProbingWithOptions:*(a1 + 40)];
}

- (void)queryProbingResultsWithOptions:(id)options
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCTransportSessionIDSMultiLink_queryProbingResultsWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = options;
  dispatch_async(stateQueue, block);
}

uint64_t __65__VCTransportSessionIDSMultiLink_queryProbingResultsWithOptions___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = VCDatagramChannelIDS_Token(*(*(a1 + 32) + 232));
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AB8]];
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCTransportSessionIDSMultiLink queryProbingResultsWithOptions:]_block_invoke";
      v11 = 1024;
      v12 = 374;
      v13 = 1024;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Query probing results on datagram channel %d on connections with link IDs: %@", &v7, 0x2Cu);
    }
  }

  return [*(*(a1 + 32) + 232) queryProbingResultsWithOptions:*(a1 + 40)];
}

- (void)flushLinkProbingStatusWithOptions:(id)options
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCTransportSessionIDSMultiLink_flushLinkProbingStatusWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = options;
  dispatch_async(stateQueue, block);
}

uint64_t __68__VCTransportSessionIDSMultiLink_flushLinkProbingStatusWithOptions___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = VCDatagramChannelIDS_Token(*(*(a1 + 32) + 232));
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4AB8]];
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCTransportSessionIDSMultiLink flushLinkProbingStatusWithOptions:]_block_invoke";
      v11 = 1024;
      v12 = 381;
      v13 = 1024;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Flush link probing results on datagram channel %d on connections with link IDs: %@", &v7, 0x2Cu);
    }
  }

  return [*(*(a1 + 32) + 232) flushLinkProbingStatusWithOptions:*(a1 + 40)];
}

- (void)setRemoteDeviceVersionIDS
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__VCTransportSessionIDSMultiLink_setRemoteDeviceVersionIDS__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __59__VCTransportSessionIDSMultiLink_setRemoteDeviceVersionIDS__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) remoteDeviceVersionIDS];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCTransportSessionIDSMultiLink setRemoteDeviceVersionIDS]_block_invoke";
      v12 = 1024;
      v13 = 389;
      v14 = 1024;
      v15 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting the remote device version=%d", buf, 0x22u);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v2, *MEMORY[0x1E69A4760]}];
  return [*(*(a1 + 32) + 232) setChannelPreferences:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
}

- (void)requestStatsWithOptions:(id)options
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCTransportSessionIDSMultiLink_requestStatsWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = options;
  dispatch_async(stateQueue, block);
}

uint64_t __58__VCTransportSessionIDSMultiLink_requestStatsWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = VCDatagramChannelIDS_Token(*(*(a1 + 32) + 232));
      v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4A40]];
      v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A4B10]];
      v8 = 136316418;
      v9 = v2;
      v10 = 2080;
      v11 = "[VCTransportSessionIDSMultiLink requestStatsWithOptions:]_block_invoke";
      v12 = 1024;
      v13 = 397;
      v14 = 1024;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Request stats for datagram channel=%d on connection with link ID=%@ statsID=%@", &v8, 0x36u);
    }
  }

  return [*(*(a1 + 32) + 232) requestStatsWithOptions:*(a1 + 40)];
}

- (void)logSignalStrength
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  [(VCTransportSessionIDS *)self getSignalStrengthBars:&v5 + 4 displayBars:&v5 maxDisplayBars:&v4];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCTransportSessionIDSMultiLink logSignalStrength]";
      v10 = 1024;
      v11 = 409;
      v12 = 1024;
      v13 = HIDWORD(v5);
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SignalStrength bars=%d displayBars=%d maxDisplayBars=%d", buf, 0x2Eu);
    }
  }
}

- (void)VCIDSSessionInfoSynchronizer:(void *)synchronizer sendVCIDSSessionInfoRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  if (synchronizer && request)
  {
    stateQueue = self->super.super._stateQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__VCTransportSessionIDSMultiLink_VCIDSSessionInfoSynchronizer_sendVCIDSSessionInfoRequest___block_invoke;
    v9[3] = &unk_1E85F37F0;
    v9[4] = self;
    v9[5] = request;
    dispatch_async(stateQueue, v9);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCTransportSessionIDSMultiLink VCIDSSessionInfoSynchronizer:sendVCIDSSessionInfoRequest:]";
      v14 = 1024;
      v15 = 417;
      v16 = 2048;
      synchronizerCopy = synchronizer;
      v18 = 2048;
      requestCopy = request;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d synchronizer = %p, request = %p", buf, 0x30u);
    }
  }
}

- (void)handleLinkConnectedWithInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46B0]];
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_3_42();
    v8 = [v7 countByEnumeratingWithState:v6 objects:? count:?];
    if (v8)
    {
      v10 = v8;
      v11 = *v34;
      *&v9 = 136315906;
      v22 = v9;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(v33 + 8 * i);
          if (!VCConnectionIDSIsKnownRATType([v13 RATType]) || !VCConnectionIDSIsKnownRATType(objc_msgSend(v13, "remoteRATType")))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                rATType = [v13 RATType];
                remoteRATType = [v13 remoteRATType];
                *buf = 136316162;
                v24 = v18;
                v25 = 2080;
                v26 = "[VCTransportSessionIDSMultiLink handleLinkConnectedWithInfo:]";
                v27 = 1024;
                v28 = 99;
                v29 = 1024;
                LODWORD(v30[0]) = rATType;
                WORD2(v30[0]) = 1024;
                *(v30 + 6) = remoteRATType;
                _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d Discarding link with unknown RAT local %d remote %d", buf, 0x28u);
              }
            }

            return;
          }

          if (VCConnectionIDSIsCellularRATType([v13 RATType]))
          {
            -[VCConnectionManager setRealRATType:](self->super.super._connectionManager, "setRealRATType:", [v13 RATType]);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v13)
              {
                v16 = [objc_msgSend(v13 "description")];
              }

              else
              {
                v16 = "<nil>";
              }

              *buf = v22;
              v24 = v14;
              v25 = 2080;
              v26 = "[VCTransportSessionIDSMultiLink handleLinkConnectedWithInfo:]";
              v27 = 1024;
              v28 = 104;
              v29 = 2080;
              v30[0] = v16;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: new link established with link context %s", buf, 0x26u);
            }
          }

          v17 = [[VCConnectionIDS alloc] initWithLinkContext:v13 dataChannelToken:VCDatagramChannelIDS_Token(self->super._datagramChannel)];
          [(VCConnectionManager *)self->super.super._connectionManager addConnection:v17];
        }

        v10 = [v5 countByEnumeratingWithState:v32 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)handleLinkDisconnectedWithInfo:(id)info
{
  v26 = *MEMORY[0x1E69E9840];
  obj = [info objectForKeyedSubscript:*MEMORY[0x1E69A46C0]];
  if (obj)
  {
    v4 = [obj countByEnumeratingWithState:OUTLINED_FUNCTION_3_42() objects:? count:?];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(v24 + 8 * i);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v8)
              {
                v11 = [objc_msgSend(v8 "description")];
              }

              else
              {
                v11 = "<nil>";
              }

              *buf = 136315906;
              v15 = v9;
              v16 = 2080;
              v17 = "[VCTransportSessionIDSMultiLink handleLinkDisconnectedWithInfo:]";
              v18 = 1024;
              v19 = 122;
              v20 = 2080;
              v21 = v11;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: link %s disconnected", buf, 0x26u);
            }
          }

          v12 = [[VCConnectionIDS alloc] initWithLinkContext:v8 dataChannelToken:VCDatagramChannelIDS_Token(self->super._datagramChannel)];
          [(VCConnectionManager *)self->super.super._connectionManager removeConnection:v12];
        }

        v5 = [obj countByEnumeratingWithState:v23 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

- (void)handleProbingResponse:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Probing response received is invalid", v2, v3, v4, v5, v6);
}

- (void)setWiFiAssist:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCTransportSessionIDSMultiLink setWiFiAssist:]";
  v7 = 1024;
  v8 = 167;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d try to setWiFiAssist = %d", &v3, 0x22u);
}

- (void)primaryConnectionChanged:oldPrimaryConnection:activeConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Primary connection changed to an end-to-end connection in GFT", v2, v3, v4, v5, v6);
}

- (void)discardConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d got a nil connection, return", v2, v3, v4, v5, v6);
}

- (void)didEnableDuplication:activeConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Active connection is end-to-end when updating duplication state", v2, v3, v4, v5, v6);
}

@end