@interface VCTransportSessionLegacy
- (BOOL)createTCPTunnelForParticipantID:(id)d relayDictionary:(id)dictionary didOriginateRequest:(BOOL)request relayType:(unsigned __int8)type error:(id *)error;
- (BOOL)getConnectionSetupData:(id *)data withOptions:(id)options error:(id *)error;
- (BOOL)handleExchangedKey:(id)key result:(int)result;
- (BOOL)isConnectedAndAllowAdditionalConnection;
- (BOOL)isHandoverSupported;
- (BOOL)startConnectionWithBlob:(id)blob useRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay error:(id *)error;
- (VCTransportSessionLegacy)initWithCallID:(unsigned int)d reportingAgent:(id)agent;
- (double)iceTimeoutInSeconds:(BOOL)seconds;
- (id)connectionData:(char *)data connectionDataSizeInBytes:(int)bytes shouldUseRelay:(BOOL)relay;
- (id)connectionDataUsingRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay nonCellularCandidateTimeout:(double)timeout error:(id *)error;
- (id)createInitiateRelayDictionary;
- (id)createInitiateRelayDictionaryForCall:(unsigned int)call primaryConnection:(tagCONNRESULT *)connection;
- (id)createRelayUpdateDictionary:(id)dictionary;
- (int)flushBasebandQueueForConnection:(id)connection payloadInfoList:(id)list;
- (int)generateConnectionData:(char *)data forCallID:(unsigned int)d connectionDataSize:(int *)size nonCellularCandidateTimeout:(double)timeout;
- (int)registerBasebandNotificationsForConnection:(id)connection;
- (tagIPPORT)IPPortForPrimaryConnectionOnLocalInterface:(SEL)interface;
- (unsigned)connectionTypeForConnectionResult:(tagCONNRESULT *)result;
- (unsigned)transportCallType;
- (void)connectionCallback:(id)callback isInitialConnection:(BOOL)connection;
- (void)connectionResultCallback:(tagCONNRESULT *)callback didReceiveICEPacket:(BOOL)packet didUseRelay:(BOOL)relay secretKey:(id)key skeResult:(int)result;
- (void)createSecondaryRelayDispatchTimer:(float)timer callID:(unsigned int)d callerRequired:(BOOL)required;
- (void)dealloc;
- (void)deleteTCPTunnel;
- (void)deregisterBasebandNotifications;
- (void)destroySecondaryRelayDispatchTimer;
- (void)didEnableDuplication:(BOOL)duplication activeConnection:(id)connection;
- (void)getConnectionDataUsingRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay nonCellularCandidateTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler;
- (void)handleConnectionSetupDataChangeMessageDelivered;
- (void)handleNewCandidates:(id)candidates version:(unsigned __int16)version;
- (void)initiateRelayRequest;
- (void)loopbackSocketTunnel:(id)tunnel receivedData:(id)data from:(tagIPPORT *)from;
- (void)networkStateDidChange;
- (void)notifyDelegateToCancelRelay;
- (void)primaryConnectionChanged:(id)changed oldPrimaryConnection:(id)connection activeConnection:(id)activeConnection;
- (void)processRelayRequestResponse:(id)response didOriginateRequest:(BOOL)request;
- (void)processRelayUpdate:(id)update didOriginateRequest:(BOOL)request;
- (void)processRemoteIPChange:(char *)change dataLength:(int)length remoteCandidateVersion:(unsigned __int16)version;
- (void)processRemoteIPChange:(id)change;
- (void)receivedRealTimeData:(id)data fromParticipantID:(id)d;
- (void)reportNetworkConditionsDegraded;
- (void)resetICETimeoutToLongTimeout;
- (void)resetLoopback;
- (void)setForceRelay;
- (void)setIdentity:(__SecIdentity *)identity;
- (void)setupInitialSecondaryRelayWithCallbackRelayFlag:(BOOL)flag callID:(unsigned int)d connectionId:(int)id;
- (void)setupLoopbackWithConnectionType:(unsigned int)type;
- (void)setupPendingSecondaryRelayWithNewPrimary:(id)primary;
- (void)setupSecondaryRelayForCall:(unsigned int)call callerRequired:(BOOL)required;
- (void)setupTransport;
- (void)start;
- (void)stop;
- (void)stopLoopback;
- (void)stopLoopbackProc:(id)proc;
@end

@implementation VCTransportSessionLegacy

- (VCTransportSessionLegacy)initWithCallID:(unsigned int)d reportingAgent:(id)agent
{
  v5 = *&d;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCTransportSessionLegacy;
  v6 = [(VCTransportSession *)&v14 initWithNotificationQueue:0 reportingAgent:?];
  if (v6)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableRelay", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v6->allowsRelay = AppBooleanValue != 0;
    }

    [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-pre-relay-timeout", "doubleValue"}];
    v9 = v8;
    if (v9 < 3.0)
    {
      v9 = 6.0;
    }

    v6->callerPreEmptiveTimeoutInSecs = v9;
    v10 = objc_alloc_init(GKInterfaceListener);
    v6->_interfaceListener = v10;
    [(GKInterfaceListener *)v10 setInterfaceListenerDelegate:v6];
    v11 = objc_alloc_init(VCConnectionManagerLegacy);
    v6->super._connectionManager = &v11->super;
    [(VCConnectionManager *)v11 setupConnectionHealthMonitor];
    [(VCConnectionManager *)v6->super._connectionManager setReportingAgent:agent];
    [(VCTransport *)v6->transport setReportingAgent:agent];
    [(VCConnectionManager *)v6->super._connectionManager setCallID:v5];
    [(VCConnectionManager *)v6->super._connectionManager setDelegate:v6];
    VTP_RegisterConnectionManagerWithCallID(v6->super._connectionManager, v5);
    v6->_callID = v5;
    v6->super._requiresWiFi = 1;
    v6->_connectionDataTimeoutCondVar = objc_alloc_init(MEMORY[0x1E696AB30]);
    v6->super._useCompressedConnectionData = 1;
    v6->_localU8Version = 1;
    [(VCTransportSessionLegacy *)v6 setupTransport];
  }

  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCTransport *)self->transport stopConnectivityCheckForCallID:self->_callID];
  [(VCTransport *)self->transport discardRelayBindingForCallID:self->_callID];

  VTP_DeregisterConnectionManagerWithCallID(self->_callID);
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = VCTransportSessionLegacy;
  [(VCTransportSession *)&v4 dealloc];
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__VCTransportSessionLegacy_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __33__VCTransportSessionLegacy_start__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 64) startTimingForKey:14];
  [*(*(a1 + 32) + 440) startRoutingChangeListener];
  v2 = *(a1 + 32);
  if (*(v2 + 263))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [*(v2 + 280) updateICERoleForCallID:*(v2 + 288) role:v3 remoteCallID:*(v2 + 292) sessionID:*(v2 + 384)];
  [*(a1 + 32) initiateRelayRequest];
  v6[0] = 0;
  if ([*(a1 + 32) startConnectionWithBlob:objc_msgSend(*(a1 + 32) useRelay:"remoteConnectionData") isInitialRelay:0 error:{0, v6}])
  {
    [*(*(a1 + 32) + 72) start];
    result = [*(a1 + 32) addNetworkAssertionWithInterfaceType:3];
    *(*(a1 + 32) + 267) = 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __33__VCTransportSessionLegacy_start__block_invoke_cold_1(v5, v6);
      }
    }

    return [*(a1 + 32) callEventHandlerWithEvent:7 info:v6[0]];
  }

  return result;
}

- (BOOL)startConnectionWithBlob:(id)blob useRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay error:(id *)error
{
  initialRelayCopy = initialRelay;
  relayCopy = relay;
  v21 = *MEMORY[0x1E69E9840];
  relayCopy2 = relay;
  pointerValue = [self->super._connectionSetupPiggybackBlob pointerValue];
  [(TimingCollection *)self->super._perfTimings stopTimingForKey:12];
  if (!relayCopy || initialRelayCopy)
  {
    if (relayCopy && initialRelayCopy)
    {
      v12 = 10;
    }

    else
    {
      v12 = 0;
    }

    [(TimingCollection *)self->super._perfTimings startTimingForKey:v12];
  }

  if ([+[VCDefaults forceIPv6] sharedInstance]
  {
    [(VCTransport *)self->transport setForceIPv6ForCallID:self->_callID];
  }

  transport = self->transport;
  callID = self->_callID;
  remoteRelayUpdate = [(VCTransportSessionLegacy *)self remoteRelayUpdate];
  [(VCTransportSessionLegacy *)self iceTimeoutInSeconds:relayCopy];
  v16 = [(VCTransport *)transport startConnectionCheckForCallID:callID remoteConnectionDataBlob:blob relayDictionary:remoteRelayUpdate iceTimeout:self->_identity securityIdentity:pointerValue skeState:&relayCopy2 usedRelay:?];
  if (v16 < 0)
  {
    v17 = 207;
    if (relayCopy)
    {
      v17 = 250;
    }

    if (self->_tcpTunnelClient)
    {
      v18 = 251;
    }

    else
    {
      v18 = v17;
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", error, 32002, v18, v16, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m", 230], @"Could not connect", @"connection check returned error");
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionLegacy startConnectionWithBlob:useRelay:isInitialRelay:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCTransportSessionLegacy startConnectionWithBlob:useRelay:isInitialRelay:error:];
      }
    }
  }

  return v16 >= 0;
}

- (void)stop
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCTransport *)self->transport setSKEState:0 forCallID:self->_callID];
  v5.receiver = self;
  v5.super_class = VCTransportSessionLegacy;
  [(VCTransportSession *)&v5 stop];
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__VCTransportSessionLegacy_stop__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __32__VCTransportSessionLegacy_stop__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 267) = 0;
  [*(*(a1 + 32) + 72) stop];
  [*(*(a1 + 32) + 280) registerICEBlockForCallID:*(*(a1 + 32) + 288) connectedBlock:0 newCandidatesBlock:0 newNominationBlock:0 removeIPPortBlock:0];
  [*(*(a1 + 32) + 280) cleanup];
  [*(*(a1 + 32) + 440) stopRoutingChangeListener];
  [*(*(a1 + 32) + 440) setInterfaceListenerDelegate:0];
  [*(a1 + 32) stopLoopback];
  [*(a1 + 32) removeNetworkAssertion];
  v2 = *(a1 + 32);

  return [v2 setDelegate:0];
}

- (void)setForceRelay
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCTransportSessionLegacy setForceRelay]";
      v10 = 1024;
      v11 = 266;
      v12 = 1024;
      v13 = callID;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Force Relay is set for call (%d)", &v6, 0x22u);
    }
  }

  [(VCTransport *)self->transport setForceRelayForCallID:self->_callID];
}

- (void)processRelayRequestResponse:(id)response didOriginateRequest:(BOOL)request
{
  requestCopy = request;
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (response)
      {
        v9 = [objc_msgSend(response "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      relayState = self->relayState;
      *buf = 136316418;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]";
      v18 = 1024;
      v19 = 283;
      v20 = 2080;
      v21 = v9;
      v22 = 1024;
      v23 = relayState;
      v24 = 1024;
      v25 = requestCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay: processRelayRequestResponseDict:%s, %d, %d", buf, 0x32u);
    }
  }

  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke;
  block[3] = &unk_1E85F37C8;
  v13 = requestCopy;
  block[4] = self;
  block[5] = response;
  dispatch_async(stateQueue, block);
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 260))
  {
    v3 = *(v1 + 240);
    if ((v3 > 3 || v3 == 2) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = *(*(a1 + 32) + 240);
        *buf = 136316162;
        v36 = v20;
        v37 = 2080;
        v38 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
        v39 = 1024;
        v40 = 297;
        v41 = 1024;
        *v42 = 297;
        *&v42[4] = 1024;
        *&v42[6] = v22;
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayRequestResponseDict bailing because relayState is %d", buf, 0x28u);
      }
    }

    v34 = 0;
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 40)];
    v7 = *(a1 + 32);
    if (v5 == 1)
    {
      [v7 setLocalRelayRequestResponse:v6];
      v8 = [*(a1 + 32) localRelayRequestResponse];
    }

    else
    {
      [v7 setRemoteRelayRequestResponse:v6];
      v8 = [*(a1 + 32) remoteRelayRequestResponse];
    }

    v11 = v8;
    v12 = [*(a1 + 40) objectForKeyedSubscript:@"GKSRelayRemotePrimaryIdentifier"];
    v13 = 3;
    if (!v12)
    {
      v13 = 1;
    }

    *(*(a1 + 32) + 240) = v13;
    v14 = [v11 objectForKeyedSubscript:@"GKSRelayType"];
    if (v14)
    {
      v15 = [v14 unsignedCharValue];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = "TCP";
          v36 = v16;
          *buf = 136315906;
          v38 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
          v37 = 2080;
          if (!v15)
          {
            v18 = "UDP";
          }

          v39 = 1024;
          v40 = 321;
          v41 = 2080;
          *v42 = v18;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processRelayRequestResponseDict: %s relay.", buf, 0x26u);
        }
      }

      if (v15)
      {
        [*(a1 + 32) deleteTCPTunnel];
        if (([*(a1 + 32) createTCPTunnelForParticipantID:*(*(a1 + 32) + 368) relayDictionary:v11 didOriginateRequest:*(a1 + 48) relayType:v15 error:&v34] & 1) == 0)
        {
          *(*(a1 + 32) + 240) = 6;
          if (objc_opt_class() == *(a1 + 32))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 2)
            {
              VRTraceErrorLogLevelToCSTR();
              if (VRTraceIsOSFaultDisabled())
              {
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_2();
                }
              }

              else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
              {
                __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_1();
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v19 = [*(a1 + 32) performSelector:sel_logPrefix];
            }

            else
            {
              v19 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 2)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
              v25 = *MEMORY[0x1E6986650];
              if (IsOSFaultDisabled)
              {
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v26 = *(a1 + 32);
                  if ([v34 userInfo])
                  {
                    v27 = [objc_msgSend(objc_msgSend(v34 "userInfo")];
                  }

                  else
                  {
                    v27 = "<nil>";
                  }

                  *buf = 136316418;
                  v36 = v23;
                  v37 = 2080;
                  v38 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
                  v39 = 1024;
                  v40 = 337;
                  v41 = 2112;
                  *v42 = v19;
                  *&v42[8] = 2048;
                  v43 = v26;
                  v44 = 2080;
                  v45 = v27;
                  _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to create TCPTunnel: %s", buf, 0x3Au);
                }
              }

              else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
              {
                v28 = *(a1 + 32);
                if ([v34 userInfo])
                {
                  v29 = [objc_msgSend(objc_msgSend(v34 "userInfo")];
                }

                else
                {
                  v29 = "<nil>";
                }

                *buf = 136316418;
                v36 = v23;
                v37 = 2080;
                v38 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
                v39 = 1024;
                v40 = 337;
                v41 = 2112;
                *v42 = v19;
                *&v42[8] = 2048;
                v43 = v28;
                v44 = 2080;
                v45 = v29;
                _os_log_fault_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Unable to create TCPTunnel: %s", buf, 0x3Au);
              }
            }
          }
        }

        return;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_3();
      }
    }

    [*(a1 + 32) resetICETimeoutToLongTimeout];
    reportingLog();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_38;
    v30[3] = &unk_1E85F74C0;
    v32 = *(a1 + 48);
    v33 = v12 != 0;
    v31 = *(a1 + 32);
    [v31 getConnectionDataUsingRelay:1 isInitialRelay:v12 == 0 nonCellularCandidateTimeout:*(v31 + 16) queue:v30 completionHandler:0.0];
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = v9;
      v37 = 2080;
      v38 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
      v39 = 1024;
      v40 = 289;
      v41 = 1024;
      *v42 = 289;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayRequestResponseDict bailing because relay is not allowed.", buf, 0x22u);
    }
  }
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_38(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v5 = &OBJC_IVAR___VCTransportSessionLegacy__localRelayRequestResponse;
    }

    else
    {
      v5 = &OBJC_IVAR___VCTransportSessionLegacy__remoteRelayRequestResponse;
    }

    [*(a1 + 32) setLocalRelayUpdate:{objc_msgSend(v4, "createRelayUpdateDictionary:", *&v4[*v5])}];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_39;
    v15[3] = &unk_1E85F3778;
    v15[4] = v6;
    dispatch_async(v7, v15);
    v8 = 2;
    if (*(a1 + 49))
    {
      v8 = 4;
    }

    *(*(a1 + 32) + 240) = v8;
    if (*(*(a1 + 32) + 328) && [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"GKSRelayConnectionID", "isEqualToData:", objc_msgSend(*(*(a1 + 32) + 328), "objectForKeyedSubscript:", @"GKSRelayConnectionID"}])
    {
      [*(a1 + 32) setRemoteRelayConnectionData:{objc_msgSend(*(*(a1 + 32) + 328), "objectForKeyedSubscript:", @"ClientData"}];
      v16 = 0;
      *(*(a1 + 32) + 240) = 0;
      if (([*(a1 + 32) startConnectionWithBlob:objc_msgSend(*(a1 + 32) useRelay:"remoteRelayConnectionData") isInitialRelay:1 error:{(*(a1 + 49) & 1) == 0, &v16}] & 1) == 0)
      {
        [*(a1 + 32) callEventHandlerWithEvent:7 info:v16];
      }
    }
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_38_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        if ([a3 userInfo])
        {
          v14 = [objc_msgSend(objc_msgSend(a3 "userInfo")];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136316418;
        v18 = v11;
        v19 = 2080;
        v20 = "[VCTransportSessionLegacy processRelayRequestResponse:didOriginateRequest:]_block_invoke";
        v21 = 1024;
        v22 = 353;
        v23 = 2112;
        v24 = v10;
        v25 = 2048;
        v26 = v13;
        v27 = 2080;
        v28 = v14;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unabled to create UDP relay blob: %s", buf, 0x3Au);
      }
    }
  }
}

uint64_t __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_39(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 localRelayUpdate];

  return [v2 transportSession:v3 sendRelayResponse:v4];
}

- (void)processRelayUpdate:(id)update didOriginateRequest:(BOOL)request
{
  requestCopy = request;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (update)
      {
        v9 = [objc_msgSend(update "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      relayState = self->relayState;
      *buf = 136316418;
      v14 = v7;
      v15 = 2080;
      v16 = "[VCTransportSessionLegacy processRelayUpdate:didOriginateRequest:]";
      v17 = 1024;
      v18 = 410;
      v19 = 2080;
      v20 = v9;
      v21 = 1024;
      v22 = requestCopy;
      v23 = 1024;
      v24 = relayState;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay: processRelayUpdateDict:%s, %d, %d", buf, 0x32u);
    }
  }

  stateQueue = self->super._stateQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__VCTransportSessionLegacy_processRelayUpdate_didOriginateRequest___block_invoke;
  v12[3] = &unk_1E85F37F0;
  v12[4] = self;
  v12[5] = update;
  dispatch_async(stateQueue, v12);
}

void __67__VCTransportSessionLegacy_processRelayUpdate_didOriginateRequest___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[260])
  {
    [v2 setRemoteRelayUpdate:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 240);
    if (v3 != 2 && v3 != 4)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(*(a1 + 32) + 240);
          *v26 = 136316162;
          *&v26[4] = v21;
          v27 = 2080;
          v28 = "[VCTransportSessionLegacy processRelayUpdate:didOriginateRequest:]_block_invoke";
          v29 = 1024;
          v30 = 423;
          v31 = 1024;
          *v32 = 423;
          *&v32[4] = 1024;
          *&v32[6] = v23;
          v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayUpdateDict: wait until allocation is finished %d";
          v18 = v22;
          v19 = 40;
          goto LABEL_25;
        }
      }

      return;
    }

    v5 = [*(a1 + 40) objectForKeyedSubscript:@"GKSRelayType"];
    if (v5)
    {
      v6 = [v5 unsignedCharValue];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = "TCP";
          v10 = *(*(a1 + 32) + 240);
          *v26 = 136316162;
          if (!v6)
          {
            v9 = "UDP";
          }

          *&v26[4] = v7;
          v27 = 2080;
          v28 = "[VCTransportSessionLegacy processRelayUpdate:didOriginateRequest:]_block_invoke";
          v29 = 1024;
          v30 = 433;
          v31 = 2080;
          *v32 = v9;
          *&v32[8] = 1024;
          v33 = v10;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processRelayUpdateDict: %s relay, %d", v26, 0x2Cu);
        }
      }

      if (v6)
      {
        if (*(*(a1 + 32) + 240) != 2)
        {
          return;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 40);
            if (v13)
            {
              v14 = [objc_msgSend(v13 "description")];
            }

            else
            {
              v14 = "<nil>";
            }

            *v26 = 136315906;
            *&v26[4] = v11;
            v27 = 2080;
            v28 = "[VCTransportSessionLegacy processRelayUpdate:didOriginateRequest:]_block_invoke";
            v29 = 1024;
            v30 = 440;
            v31 = 2080;
            *v32 = v14;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: relayUpdateDict %s", v26, 0x26u);
          }
        }

        *v26 = 0;
        if ([*(*(a1 + 32) + 400) sendChannelBindingMsgWithDict:*(a1 + 40) error:v26])
        {
          return;
        }

        *(*(a1 + 32) + 240) = 6;
LABEL_37:
        [*(a1 + 32) callEventHandlerWithEvent:7 info:{*v26, *v26}];
        return;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __67__VCTransportSessionLegacy_processRelayUpdate_didOriginateRequest___block_invoke_cold_1();
      }
    }

    if (![*(a1 + 32) localRelayUpdate])
    {
      return;
    }

    if (![objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"GKSRelayConnectionID", "isEqualToData:", objc_msgSend(objc_msgSend(*(a1 + 32), "localRelayUpdate"), "objectForKeyedSubscript:", @"GKSRelayConnectionID"}])
    {
      return;
    }

    [*(a1 + 32) setRemoteRelayConnectionData:{objc_msgSend(objc_msgSend(*(a1 + 32), "remoteRelayUpdate"), "objectForKeyedSubscript:", @"ClientData"}];
    *v26 = 0;
    v24 = *(a1 + 32);
    v25 = *(v24 + 240) == 2;
    *(v24 + 240) = 0;
    if ([*(a1 + 32) startConnectionWithBlob:objc_msgSend(*(a1 + 32) useRelay:"remoteRelayConnectionData") isInitialRelay:1 error:{v25, v26}])
    {
      return;
    }

    goto LABEL_37;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136315906;
      *&v26[4] = v15;
      v27 = 2080;
      v28 = "[VCTransportSessionLegacy processRelayUpdate:didOriginateRequest:]_block_invoke";
      v29 = 1024;
      v30 = 416;
      v31 = 1024;
      *v32 = 416;
      v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayUpdateDict bailing because relay is not allowed.";
      v18 = v16;
      v19 = 34;
LABEL_25:
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v26, v19);
    }
  }
}

- (void)createSecondaryRelayDispatchTimer:(float)timer callID:(unsigned int)d callerRequired:(BOOL)required
{
  v10 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__VCTransportSessionLegacy_createSecondaryRelayDispatchTimer_callID_callerRequired___block_invoke;
  v6[3] = &unk_1E85F4180;
  v6[4] = self;
  timerCopy = timer;
  dCopy = d;
  requiredCopy = required;
  dispatch_async(stateQueue, v6);
}

void __84__VCTransportSessionLegacy_createSecondaryRelayDispatchTimer_callID_callerRequired___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) destroySecondaryRelayDispatchTimer];
  *(*(a1 + 32) + 272) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 272);
  if (v2)
  {
    v3 = (*(a1 + 40) * 1000000000.0);
    v4 = dispatch_time(0, v3);
    dispatch_source_set_timer(v2, v4, v3, 0x3B9ACA00uLL);
    v5 = *(a1 + 32);
    v6 = *(v5 + 272);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__VCTransportSessionLegacy_createSecondaryRelayDispatchTimer_callID_callerRequired___block_invoke_2;
    v7[3] = &unk_1E85F4180;
    v8 = *(a1 + 40);
    v7[4] = v5;
    v9 = *(a1 + 44);
    v10 = *(a1 + 48);
    dispatch_source_set_event_handler(v6, v7);
    dispatch_resume(*(*(a1 + 32) + 272));
  }
}

uint64_t __84__VCTransportSessionLegacy_createSecondaryRelayDispatchTimer_callID_callerRequired___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCTransportSessionLegacy createSecondaryRelayDispatchTimer:callID:callerRequired:]_block_invoke_2";
      v10 = 1024;
      v11 = 487;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: secondary relay dispatch timed out after %5.2f sec. Start relay setup", &v6, 0x26u);
    }
  }

  [*(a1 + 32) destroySecondaryRelayDispatchTimer];
  return [*(a1 + 32) setupSecondaryRelayForCall:*(a1 + 44) callerRequired:*(a1 + 48)];
}

- (void)destroySecondaryRelayDispatchTimer
{
  v13 = *MEMORY[0x1E69E9840];
  relaySetupTimer = self->relaySetupTimer;
  if (relaySetupTimer)
  {
    dispatch_source_cancel(relaySetupTimer);
    v4 = self->relaySetupTimer;
    if (v4)
    {
      dispatch_release(v4);
      self->relaySetupTimer = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCTransportSessionLegacy destroySecondaryRelayDispatchTimer]";
        v11 = 1024;
        v12 = 504;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: secondary relay dispatch timer is deleted.", &v7, 0x1Cu);
      }
    }
  }
}

- (void)setupPendingSecondaryRelayWithNewPrimary:(id)primary
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCTransportSessionLegacy_setupPendingSecondaryRelayWithNewPrimary___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = primary;
  dispatch_async(stateQueue, block);
}

uint64_t __69__VCTransportSessionLegacy_setupPendingSecondaryRelayWithNewPrimary___block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 248) >= 1)
  {
    v1 = result;
    result = VCConnection_Priority(*(result + 40));
    if (result == 3 && (*(*(v1 + 32) + 261) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315650;
          v7 = v2;
          v8 = 2080;
          v9 = "[VCTransportSessionLegacy setupPendingSecondaryRelayWithNewPrimary:]_block_invoke";
          v10 = 1024;
          v11 = 511;
          _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: handlePrimaryConnChange, setup initial secondary relay", &v6, 0x1Cu);
        }
      }

      IsRelay = VCConnection_IsRelay(*(v1 + 40));
      v5 = *(v1 + 32);
      if ((IsRelay & 1) == 0)
      {
        [v5 notifyDelegateToCancelRelay];
        [*(*(v1 + 32) + 280) discardRelayBindingForCallID:*(*(v1 + 32) + 288)];
        v5 = *(v1 + 32);
      }

      result = [v5 setupSecondaryRelayForCall:v5[72] callerRequired:1];
      *(*(v1 + 32) + 248) = 0;
      *(*(v1 + 32) + 261) = 1;
    }
  }

  return result;
}

- (void)notifyDelegateToCancelRelay
{
  v24 = *MEMORY[0x1E69E9840];
  relayState = self->relayState;
  v4 = relayState > 4;
  v5 = (1 << relayState) & 0x19;
  if (v4 || v5 == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->relayState;
        *buf = 136315906;
        v17 = v10;
        v18 = 2080;
        v19 = "[VCTransportSessionLegacy notifyDelegateToCancelRelay]";
        v20 = 1024;
        v21 = 541;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d notifyDelegateToCancelRelay: Resetting relay state from %d.", buf, 0x22u);
      }
    }

    self->relayState = 0;
    localRelayRequestResponse = [(VCTransportSessionLegacy *)self localRelayRequestResponse];
    notificationQueue = self->super._notificationQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__VCTransportSessionLegacy_notifyDelegateToCancelRelay__block_invoke;
    v15[3] = &unk_1E85F37F0;
    v15[4] = self;
    v15[5] = localRelayRequestResponse;
    dispatch_async(notificationQueue, v15);
    [(VCTransportSessionLegacy *)self setLocalRelayRequestResponse:0];
    [(VCTransportSessionLegacy *)self setLocalRelayUpdate:0];
    [(VCTransportSessionLegacy *)self setRemoteRelayRequestResponse:0];
    [(VCTransportSessionLegacy *)self setRemoteRelayUpdate:0];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->relayState;
      *buf = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCTransportSessionLegacy notifyDelegateToCancelRelay]";
      v20 = 1024;
      v21 = 537;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d notifyDelegateToCancelRelay: No need, relay state %d.", buf, 0x22u);
    }
  }
}

uint64_t __55__VCTransportSessionLegacy_notifyDelegateToCancelRelay__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 transportSession:v3 cancelRelayRequest:v4];
}

uint64_t __70__VCTransportSessionLegacy_setupSecondaryRelayForCall_callerRequired___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 transportSession:v3 initiateRelayRequest:v4];
}

- (void)setupInitialSecondaryRelayWithCallbackRelayFlag:(BOOL)flag callID:(unsigned int)d connectionId:(int)id
{
  v10 = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__VCTransportSessionLegacy_setupInitialSecondaryRelayWithCallbackRelayFlag_callID_connectionId___block_invoke;
  v6[3] = &unk_1E85F4180;
  v6[4] = self;
  flagCopy = flag;
  idCopy = id;
  dCopy = d;
  dispatch_async(stateQueue, v6);
}

void __96__VCTransportSessionLegacy_setupInitialSecondaryRelayWithCallbackRelayFlag_callID_connectionId___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 72));
  v3 = [v2 connectionResult];
  v4 = v3;
  if (v2 && *(a1 + 40) == *(v3 + 4))
  {
    if (VCConnection_Priority(v2) == 3 && (*(a1 + 48) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 44);
          v30 = 136315906;
          v31 = v5;
          v32 = 2080;
          v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
          v34 = 1024;
          v35 = 592;
          v36 = 1024;
          v37 = v7;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: call (%08X) has optimal P2P primary: cancel preemptive relay", &v30, 0x22u);
        }
      }

      [*(a1 + 32) notifyDelegateToCancelRelay];
      [*(*(a1 + 32) + 280) discardRelayBindingForCallID:*(a1 + 44)];
    }

    v8 = *(a1 + 32);
    if ((v8[261] & 1) != 0 || v8[263] != 1)
    {
      goto LABEL_20;
    }

    if (*(a1 + 48))
    {
      if ([objc_msgSend(v8 "localRelayRequestResponse")])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136315650;
            v31 = v9;
            v32 = 2080;
            v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
            v34 = 1024;
            v35 = 616;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: not initial secondary relay, return, let ProcessRemoteIPChange setup secondary relay", &v30, 0x1Cu);
          }
        }

        goto LABEL_20;
      }

      v23 = VCConnection_Priority(v2);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v23 == 3)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 44);
            v30 = 136315906;
            v31 = v25;
            v32 = 2080;
            v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
            v34 = 1024;
            v35 = 622;
            v36 = 1024;
            v37 = v27;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: call (%08X) has optimal relay primary: setup secondary relay", &v30, 0x22u);
          }
        }

        [*(a1 + 32) setupSecondaryRelayForCall:*(a1 + 44) callerRequired:1];
        *(*(a1 + 32) + 248) = 0;
LABEL_35:
        *(*(a1 + 32) + 261) = 1;
LABEL_20:
        CFRelease(v2);
        return;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 48);
          v30 = 136315906;
          v31 = v28;
          v32 = 2080;
          v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
          v34 = 1024;
          v35 = 627;
          v36 = 1024;
          v37 = v29;
          goto LABEL_39;
        }
      }
    }

    else
    {
      v15 = VCConnection_Priority(v2);
      v16 = VRTraceGetErrorLogLevelForModule();
      if (v15 == 3)
      {
        if (v16 >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 44);
            v30 = 136315906;
            v31 = v17;
            v32 = 2080;
            v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
            v34 = 1024;
            v35 = 605;
            v36 = 1024;
            v37 = v19;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: call (%08X) has optimal P2P primary: setup initial secondary relay", &v30, 0x22u);
          }
        }

        [*(a1 + 32) setupSecondaryRelayForCall:*(a1 + 44) callerRequired:1];
        goto LABEL_35;
      }

      if (v16 >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 48);
          v30 = 136315906;
          v31 = v20;
          v32 = 2080;
          v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
          v34 = 1024;
          v35 = 609;
          v36 = 1024;
          v37 = v22;
LABEL_39:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: add a pending relay count = 1 relayFlag: %d, let handlePrimaryConnChange start initial secondary relay", &v30, 0x22u);
        }
      }
    }

    *(*(a1 + 32) + 248) = 1;
    goto LABEL_20;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(v4 + 4);
      v30 = 136316162;
      v31 = v11;
      v32 = 2080;
      v33 = "[VCTransportSessionLegacy setupInitialSecondaryRelayWithCallbackRelayFlag:callID:connectionId:]_block_invoke";
      v34 = 1024;
      v35 = 587;
      v36 = 1024;
      v37 = v13;
      v38 = 1024;
      v39 = v14;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaCallback: link doesnot match(%d, %d)", &v30, 0x28u);
    }
  }

  if (v2)
  {
    goto LABEL_20;
  }
}

- (void)initiateRelayRequest
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_isCaller && self->allowsRelay)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        callerPreEmptiveTimeoutInSecs = self->callerPreEmptiveTimeoutInSecs;
        *buf = 136315906;
        v10 = v3;
        v11 = 2080;
        v12 = "[VCTransportSessionLegacy initiateRelayRequest]";
        v13 = 1024;
        v14 = 641;
        v15 = 2048;
        v16 = callerPreEmptiveTimeoutInSecs;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initiateRelayRequest: caller start relay in %f seconds", buf, 0x26u);
      }
    }

    v6 = dispatch_time(0, (self->callerPreEmptiveTimeoutInSecs * 1000000000.0));
    stateQueue = self->super._stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCTransportSessionLegacy_initiateRelayRequest__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_after(v6, stateQueue, block);
  }
}

void __48__VCTransportSessionLegacy_initiateRelayRequest__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 72) connectionCount] < 1)
  {
    v7 = *(a1 + 32);
    if (v7[30] || [v7 remoteRelayUpdate])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(a1 + 32) + 240);
          *buf = 136315906;
          v18 = v8;
          v19 = 2080;
          v20 = "[VCTransportSessionLegacy initiateRelayRequest]_block_invoke";
          v21 = 1024;
          v22 = 650;
          v23 = 1024;
          v24 = v10;
          v4 = " [%s] %s:%d initiateRelayRequest bailing because relay has already started %d";
          v5 = v9;
          v6 = 34;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v11 = *(a1 + 32);
      if (v11[267])
      {
        v12 = [v11 createInitiateRelayDictionary];
        *(*(a1 + 32) + 240) = 1;
        *(*(a1 + 32) + 262) = 1;
        v13 = *(a1 + 32);
        v14 = *(v13 + 24);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __48__VCTransportSessionLegacy_initiateRelayRequest__block_invoke_41;
        v16[3] = &unk_1E85F37F0;
        v16[4] = v13;
        v16[5] = v12;
        dispatch_async(v14, v16);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = v15;
          v19 = 2080;
          v20 = "[VCTransportSessionLegacy initiateRelayRequest]_block_invoke";
          v21 = 1024;
          v22 = 655;
          v4 = " [%s] %s:%d initiateRelayRequest bailing because transportSession has been stopped";
          goto LABEL_5;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v2;
      v19 = 2080;
      v20 = "[VCTransportSessionLegacy initiateRelayRequest]_block_invoke";
      v21 = 1024;
      v22 = 644;
      v4 = " [%s] %s:%d initiateRelayRequest bailing because already connected";
LABEL_5:
      v5 = v3;
      v6 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }
}

uint64_t __48__VCTransportSessionLegacy_initiateRelayRequest__block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 transportSession:v3 initiateRelayRequest:v4];
}

- (int)flushBasebandQueueForConnection:(id)connection payloadInfoList:(id)list
{
  v57 = *MEMORY[0x1E69E9840];
  if (!VCConnection_IsLocalOnCellular(connection))
  {
    return -2144665542;
  }

  selfCopy = self;
  connectionResult = [connection connectionResult];
  v8 = *(connectionResult + 64);
  v9 = *(connectionResult + 184);
  IsIPv6 = VCConnection_IsIPv6(connection);
  if (IsIPv6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v42 = v11;
  if (IsIPv6)
  {
    v12 = 48;
  }

  else
  {
    v12 = 28;
  }

  IsRelay = VCConnection_IsRelay(connection);
  v14 = v12 + 4;
  if (!IsRelay)
  {
    v14 = v12;
  }

  v41 = v14;
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = [list countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v40 = bswap32(v8) >> 16;
    v39 = *v54;
    v38 = bswap32(v9) >> 16;
    v37 = *MEMORY[0x1E6965310];
    v36 = *MEMORY[0x1E6965350];
    v35 = *MEMORY[0x1E6965300];
    v34 = *MEMORY[0x1E6965340];
    v33 = *MEMORY[0x1E6965338];
    v17 = *MEMORY[0x1E6965360];
    v18 = *MEMORY[0x1E6965358];
    v19 = *MEMORY[0x1E6965308];
    obj = list;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v42), v37}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", v40), v36}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", v38), v35}];
        [v22 setObject:objc_msgSend(v21 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushPayloadType", v34}];
        v23 = [objc_msgSend(v21 objectForKeyedSubscript:{@"transportSessionBasebandQueueFlushPayloadTypeFieldOffset", "unsignedCharValue"}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", (v23 + v41)), v33}];
        v24 = [objc_msgSend(v21 objectForKeyedSubscript:{@"transportSessionBasebandQueueFlushTransactionID", "unsignedShortValue"}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", __rev16(v24)), v17}];
        v25 = [objc_msgSend(v21 objectForKeyedSubscript:{@"transportSessionBasebandQueueFlushTimestamp", "unsignedLongValue"}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", bswap32(v25)), v18}];
        v26 = [objc_msgSend(v21 objectForKeyedSubscript:{@"transportSessionBasebandQueueFlushCriterion", "unsignedShortValue"}];
        [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", __rev16(v26)), v19}];
        [v43 addObject:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v16);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v43)
      {
        v29 = [objc_msgSend(v43 "description")];
      }

      else
      {
        v29 = "<nil>";
      }

      *buf = 136315906;
      v45 = v27;
      v46 = 2080;
      v47 = "[VCTransportSessionLegacy flushBasebandQueueForConnection:payloadInfoList:]";
      v48 = 1024;
      v49 = 723;
      v50 = 2080;
      v51 = v29;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Baseband flush dict %s", buf, 0x26u);
    }
  }

  return [(VCTransport *)selfCopy->transport flushBasebandQueue:v43];
}

- (int)registerBasebandNotificationsForConnection:(id)connection
{
  transport = self->transport;
  connectionResult = [connection connectionResult];
  basebandNotificationRegistrationToken = self->super._basebandNotificationRegistrationToken;
  transportCallType = [(VCTransportSessionLegacy *)self transportCallType];

  return [(VCTransport *)transport updateBasebandForConnection:connectionResult notificationRegistrationToken:basebandNotificationRegistrationToken callType:transportCallType];
}

- (void)deregisterBasebandNotifications
{
  transport = self->transport;
  basebandNotificationRegistrationToken = self->super._basebandNotificationRegistrationToken;
  transportCallType = [(VCTransportSessionLegacy *)self transportCallType];

  [(VCTransport *)transport updateBasebandForConnection:0 notificationRegistrationToken:basebandNotificationRegistrationToken callType:transportCallType];
}

- (unsigned)transportCallType
{
  operatingMode = self->_operatingMode;
  if (operatingMode >= 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x100000200010200uLL >> (8 * operatingMode);
  }

  return v3 & 3;
}

- (void)handleConnectionSetupDataChangeMessageDelivered
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__VCTransportSessionLegacy_handleConnectionSetupDataChangeMessageDelivered__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __75__VCTransportSessionLegacy_handleConnectionSetupDataChangeMessageDelivered__block_invoke(uint64_t a1)
{
  [*(a1 + 32) destroySecondaryRelayDispatchTimer];
  v2 = *(a1 + 32);
  v3 = v2[72];

  return [v2 setupSecondaryRelayForCall:v3 callerRequired:0];
}

- (BOOL)isHandoverSupported
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(VCTransport *)self->transport getRemoteICEVersion:self->_callID remoteICEVersion:&v6];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = "NOT ";
      if (v6 > 0x3F1)
      {
        v4 = "";
      }

      *buf = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCTransportSessionLegacy isHandoverSupported]";
      v11 = 1024;
      v12 = 771;
      v13 = 1024;
      v14 = v6;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote ICE Version:%u, handover is %ssupported.", buf, 0x2Cu);
    }
  }

  return v6 > 0x3F1;
}

- (void)networkStateDidChange
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VCTransportSessionLegacy_networkStateDidChange__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __49__VCTransportSessionLegacy_networkStateDidChange__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  reportingLog();
  [*(a1 + 32) callEventHandlerWithEvent:10 info:0];
  v26 = 0;
  v2 = [*(*(a1 + 32) + 280) updateInterfaceList:*(*(a1 + 32) + 288) shouldFilterCellInterface:*(*(a1 + 32) + 9) isUpdateNeeded:&v26];
  if (v2 < 0)
  {
    v13 = v2;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v38 = 136315906;
    *&v38[4] = v14;
    *&v38[12] = 2080;
    *&v38[14] = "[VCTransportSessionLegacy networkStateDidChange]_block_invoke";
    *&v38[22] = 1024;
    *&v38[24] = 794;
    *&v38[28] = 1024;
    *&v38[30] = v13;
    v16 = " [%s] %s:%d networkStateDidChange: Failed updating interface list %x";
    v17 = v38;
    v18 = v15;
    v19 = 34;
LABEL_23:
    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v16, v17, v19);
    return;
  }

  if (v26 && ![*(a1 + 32) localConnectionData])
  {
    [*(*(a1 + 32) + 432) lock];
    [*(*(a1 + 32) + 432) signal];
    [*(*(a1 + 32) + 432) unlock];
    return;
  }

  v3 = *(a1 + 32);
  if (v3[267] != 1)
  {
    return;
  }

  *&v38[46] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v38[32] = v4;
  *v38 = v4;
  *&v38[16] = v4;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v4;
  v36[1] = v4;
  [v3 IPPortForPrimaryConnectionOnLocalInterface:1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = IPPORTToStringWithSize();
      *buf = 136315906;
      *&buf[4] = v5;
      v28 = 2080;
      v29 = "[VCTransportSessionLegacy networkStateDidChange]_block_invoke";
      v30 = 1024;
      v31 = 812;
      v32 = 2080;
      *v33 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d networkStateDidChange: checking for %s.", buf, 0x26u);
    }
  }

  v8 = [*(*(a1 + 32) + 280) ipPortStillExists:v36 requiresWifi:*(*(a1 + 32) + 9)];
  if (!v26)
  {
    v20 = v8;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v23 = *(*(a1 + 32) + 9);
    *buf = 136316418;
    *&buf[4] = v21;
    v28 = 2080;
    v29 = "[VCTransportSessionLegacy networkStateDidChange]_block_invoke";
    v30 = 1024;
    v31 = 819;
    v32 = 1024;
    *v33 = v20;
    *&v33[4] = 1024;
    *&v33[6] = v26;
    v34 = 1024;
    v35 = v23;
    v16 = " [%s] %s:%d networkStateDidChange: no need to collect blob: %d, %d, %d.";
    v17 = buf;
    v18 = v22;
    v19 = 46;
    goto LABEL_23;
  }

  *buf = 0;
  v9 = *(*(a1 + 32) + 288);
  v10 = [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-blob-size-max", "intValue"}];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 201;
  }

  v25 = v11;
  LOBYTE(v24) = 1;
  if (([*(*(a1 + 32) + 280) getConnectionDataForCallID:v9 version:*(*(a1 + 32) + 232) useCompressedData:*(*(a1 + 32) + 10) pConnectionData:buf connectDataSizeInBytes:&v25 relayDictionary:0 interfaceUpdate:0.0 nonCellularCandidateTimeout:v24] & 0x80000000) == 0)
  {
    if (v25)
    {
      v12 = *buf;
      if (*buf)
      {
        goto LABEL_19;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __49__VCTransportSessionLegacy_networkStateDidChange__block_invoke_cold_1();
    }
  }

  v12 = *buf;
  if (*buf)
  {
LABEL_19:
    free(v12);
  }
}

- (void)handleNewCandidates:(id)candidates version:(unsigned __int16)version
{
  v25 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      relayState = self->relayState;
      if (candidates)
      {
        v9 = [objc_msgSend(candidates "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCTransportSessionLegacy handleNewCandidates:version:]";
      v19 = 1024;
      v20 = 859;
      v21 = 1024;
      v22 = relayState;
      v23 = 2080;
      v24 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Relay state: %d, local blob is updated %s", buf, 0x2Cu);
    }
  }

  *buf = 1;
  v10 = [MEMORY[0x1E695DF88] dataWithBytes:buf length:2];
  [v10 appendData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &versionCopy, 2)}];
  [v10 appendData:candidates];
  notificationQueue = self->super._notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCTransportSessionLegacy_handleNewCandidates_version___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = v10;
  dispatch_async(notificationQueue, block);
  LODWORD(v12) = 5.0;
  [(VCTransportSessionLegacy *)self createSecondaryRelayDispatchTimer:self->_callID callID:0 callerRequired:v12];
}

uint64_t __56__VCTransportSessionLegacy_handleNewCandidates_version___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 transportSession:v3 connectionSetupDataDidChange:v4];
}

- (void)processRemoteIPChange:(char *)change dataLength:(int)length remoteCandidateVersion:(unsigned __int16)version
{
  [(VCTransport *)self->transport processRemoteInterfaceChangeMessageWithLocalCallID:self->_callID remoteCallID:self->_remoteCallID remoteData:change remoteLen:*&length remoteCandidateVersion:version];

  reportingLog();
}

- (void)processRemoteIPChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [change length];
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  [change getBytes:v6 length:v5];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      v10 = 136316162;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCTransportSessionLegacy processRemoteIPChange:]";
      v14 = 1024;
      v15 = 891;
      v16 = 1024;
      v17 = callID;
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: processRemoteIPChange: callID:%u length:%d", &v10, 0x28u);
    }
  }

  if (v5 - 2 >= 0)
  {
    if (*v6 == 1)
    {
      if (v5 - 4 < 0)
      {
        return;
      }

      [(VCTransportSessionLegacy *)self processRemoteIPChange:v6 + 2 dataLength:(v5 - 4) remoteCandidateVersion:v6[1]];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionLegacy processRemoteIPChange:];
      }
    }

    free(v6);
  }
}

- (void)connectionResultCallback:(tagCONNRESULT *)callback didReceiveICEPacket:(BOOL)packet didUseRelay:(BOOL)relay secretKey:(id)key skeResult:(int)result
{
  relayCopy = relay;
  packetCopy = packet;
  v32 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (callback)
      {
        iResultCount = callback->iResultCount;
      }

      else
      {
        iResultCount = -1;
      }

      *buf = 136316930;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionLegacy connectionResultCallback:didReceiveICEPacket:didUseRelay:secretKey:skeResult:]";
      *&buf[22] = 1024;
      *v23 = 929;
      *&v23[4] = 2048;
      *&v23[6] = callback;
      v24 = 1024;
      v25 = packetCopy;
      v26 = 1024;
      v27 = iResultCount;
      v28 = 2048;
      keyCopy = key;
      v30 = 1024;
      resultCopy = result;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectionResultCallback: pConnResult = %p, didReceiveICEPacket = %d resultCount = %d, secretKey = %p, skeResult = %d", buf, 0x42u);
    }
  }

  if (relayCopy)
  {
    v16 = 10;
  }

  else
  {
    v16 = 0;
  }

  [(TimingCollection *)self->super._perfTimings stopTimingForKey:v16];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *v23 = 0;
  if (callback)
  {
    v17 = malloc_type_malloc(0x140uLL, 0x1020040A6FBA1A4uLL);
    v18 = *&buf[8];
    *(*&buf[8] + 24) = v17;
    memcpy(v17, callback, 0x140uLL);
    *(*(v18 + 24) + 304) = 0;
  }

  stateQueue = self->super._stateQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __105__VCTransportSessionLegacy_connectionResultCallback_didReceiveICEPacket_didUseRelay_secretKey_skeResult___block_invoke;
  v20[3] = &unk_1E85F6180;
  v20[4] = self;
  v20[5] = key;
  resultCopy2 = result;
  v20[6] = buf;
  dispatch_async(stateQueue, v20);
  _Block_object_dispose(buf, 8);
}

- (BOOL)handleExchangedKey:(id)key result:(int)result
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!key || result)
  {
    if (result)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTransportSessionLegacy handleExchangedKey:result:];
        }
      }

      v9[0] = 0;
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v9, 32018, result + 700, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m", 982], @"Media Insecure", @"Optimized SKE failed");
      [(VCTransportSession *)self callEventHandlerWithEvent:7 info:v9[0]];
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
    if (!self->_didReceivePiggybackBlob)
    {
      self->_didReceivePiggybackBlob = 1;
      [(VCTransportSession *)self callEventHandlerWithEvent:5 info:key];
    }
  }

  return v7;
}

- (void)primaryConnectionChanged:(id)changed oldPrimaryConnection:(id)connection activeConnection:(id)activeConnection
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      callID = self->_callID;
      *buf = 136315906;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCTransportSessionLegacy primaryConnectionChanged:oldPrimaryConnection:activeConnection:]";
      v19 = 1024;
      v20 = 997;
      v21 = 1024;
      v22 = callID;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: handlePrimaryConnChange dwCallID(%u)", buf, 0x22u);
    }
  }

  [(VCTransportSession *)self updateBasebandForConnection:changed];
  if (VCConnection_IsRelay(connection) && [changed isReplaceOnly])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCTransportSessionLegacy primaryConnectionChanged:oldPrimaryConnection:activeConnection:]";
        v19 = 1024;
        v20 = 1005;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: handlePrimaryConnChange, old primary uses relay, now it is removed, tear relay down", buf, 0x1Cu);
      }
    }

    -[VCTransport discardRelayBindingForCallID:withChannelNumber:](self->transport, "discardRelayBindingForCallID:withChannelNumber:", self->_callID, [connection relayChannelNumber]);
  }

  [(VCTransportSessionLegacy *)self setupPendingSecondaryRelayWithNewPrimary:changed];
  v13[0] = @"transportSessionEventInfoNewPrimary";
  v13[1] = @"transportSessionEventInfoOldPrimary";
  v14[0] = changed;
  v14[1] = connection;
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2]);
}

- (void)connectionCallback:(id)callback isInitialConnection:(BOOL)connection
{
  connectionCopy = connection;
  v19 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    [(VCTransportSession *)self updateBasebandForConnection:callback];
    [(TimingCollection *)self->super._perfTimings stopTimingForKey:14];
    if (self->rtChannel)
    {
      if ((VCConnection_IsRelay(callback) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v14 = v7;
            v15 = 2080;
            v16 = "[VCTransportSessionLegacy connectionCallback:isInitialConnection:]";
            v17 = 1024;
            v18 = 1028;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: P2P established, no need for TCP relay.", buf, 0x1Cu);
          }
        }

        stateQueue = self->super._stateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__VCTransportSessionLegacy_connectionCallback_isInitialConnection___block_invoke;
        block[3] = &unk_1E85F3778;
        block[4] = self;
        dispatch_async(stateQueue, block);
      }
    }
  }

  v11[0] = @"transportSessionEventInfoNewLink";
  v11[1] = @"transportSessionEventInfoIsFirstLink";
  v12[0] = callback;
  v12[1] = [MEMORY[0x1E696AD98] numberWithBool:connectionCopy];
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2]);
}

- (void)didEnableDuplication:(BOOL)duplication activeConnection:(id)connection
{
  duplicationCopy = duplication;
  v8[2] = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self updateBasebandForConnection:connection];
  v7[0] = @"transportSessionEventInfoIsDuplicationEnabled";
  v7[1] = @"transportSessionEventInfoActiveConnection";
  v8[0] = [MEMORY[0x1E696AD98] numberWithBool:duplicationCopy];
  v8[1] = connection;
  -[VCTransportSession callEventHandlerWithEvent:info:](self, "callEventHandlerWithEvent:info:", 4, [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2]);
}

- (BOOL)createTCPTunnelForParticipantID:(id)d relayDictionary:(id)dictionary didOriginateRequest:(BOOL)request relayType:(unsigned __int8)type error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v10 = [[TCPTunnelClient alloc] initWithRelayRequestDictionary:dictionary withCallID:self->_callID relayType:type errorCode:&v22];
  if (v10)
  {
    self->_tcpTunnelClient = v10;
    self->rtChannel = v10;
    [(TCPTunnelClient *)self->_tcpTunnelClient setParticipantID:d];
    tcpTunnelClient = self->_tcpTunnelClient;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke;
    v21[3] = &unk_1E85F74E8;
    v21[4] = self;
    [(TCPTunnelClient *)tcpTunnelClient setAllocationResponseHandler:v21];
    v12 = self->_tcpTunnelClient;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_4;
    v20[3] = &unk_1E85F7510;
    v20[4] = self;
    [(TCPTunnelClient *)v12 setReceiveHandler:v20];
    v13 = self->_tcpTunnelClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_5;
    v19[3] = &unk_1E85F3818;
    v19[4] = self;
    [(TCPTunnelClient *)v13 setBindingResponseHandler:v19];
    v14 = self->_tcpTunnelClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_67;
    v18[3] = &unk_1E85F7538;
    v18[4] = self;
    [(TCPTunnelClient *)v14 setTerminationHandler:v18];
    v15 = self->_tcpTunnelClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_3_70;
    v17[3] = &unk_1E85F3778;
    v17[4] = self;
    [(TCPTunnelClient *)v15 setDestroyHandler:v17];
    [(TimingCollection *)self->super._perfTimings startTimingForKey:9];
    return [(TCPTunnelClient *)self->_tcpTunnelClient sendAllocateMsg:error];
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32002, v22, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m", 1089], @"Creating TCPTunnel Client failed.", @"Error was encountered");
    return 0;
  }
}

void __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_2;
  block[3] = &unk_1E85F37F0;
  block[4] = v2;
  block[5] = a2;
  dispatch_async(v3, block);
}

void __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[30] == 1)
  {
    v2[30] = 2;
    v2 = *(a1 + 32);
  }

  if ([v2 remoteRelayUpdate])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) remoteRelayUpdate])
        {
          v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "remoteRelayUpdate")];
        }

        else
        {
          v5 = "<nil>";
        }

        *buf = 136315906;
        v12 = v3;
        v13 = 2080;
        v14 = "[VCTransportSessionLegacy createTCPTunnelForParticipantID:relayDictionary:didOriginateRequest:relayType:error:]_block_invoke_2";
        v15 = 1024;
        v16 = 1110;
        v17 = 2080;
        v18 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCPTUNNEL: continue with ChannelBinding, %s.", buf, 0x26u);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_62;
    block[3] = &unk_1E85F3778;
    block[4] = *(a1 + 32);
    dispatch_async(global_queue, block);
  }

  [*(a1 + 32) setLocalRelayConnectionData:{objc_msgSend(*(a1 + 32), "localConnectionData")}];
  [*(a1 + 32) setLocalRelayUpdate:{objc_msgSend(*(a1 + 32), "createRelayUpdateDictionary:", *(a1 + 40))}];
  [*(*(a1 + 32) + 64) stopTimingForKey:9];
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_3;
  v9[3] = &unk_1E85F3778;
  v9[4] = v7;
  dispatch_async(v8, v9);
}

uint64_t __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_62(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [*(*(a1 + 32) + 400) sendChannelBindingMsgWithDict:objc_msgSend(*(a1 + 32) error:{"remoteRelayUpdate"), v6}];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_2_63;
    block[3] = &unk_1E85F3778;
    block[4] = v3;
    dispatch_sync(v4, block);
    return [*(a1 + 32) callEventHandlerWithEvent:7 info:v6[0]];
  }

  return result;
}

uint64_t __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 localRelayUpdate];

  return [v2 transportSession:v3 sendRelayResponse:v4];
}

void __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_5(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_6;
  v3[3] = &unk_1E85F3778;
  v3[4] = v1;
  dispatch_async(v2, v3);
}

uint64_t __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_6(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 240) != 5)
  {
    if (*(result + 267))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = 136315650;
          v6 = v3;
          v7 = 2080;
          v8 = "[VCTransportSessionLegacy createTCPTunnelForParticipantID:relayDictionary:didOriginateRequest:relayType:error:]_block_invoke_6";
          v9 = 1024;
          v10 = 1160;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCP Channel is set up, time out ICE right away.", &v5, 0x1Cu);
        }
      }

      [*(*(a1 + 32) + 280) setICETimeout:0.0];
      [*(*(a1 + 32) + 64) stopTimingForKey:0];
      [*(a1 + 32) callEventHandlerWithEvent:6 info:0];
      result = [*(a1 + 32) setupLoopbackWithConnectionType:{objc_msgSend(*(*(a1 + 32) + 400), "connectionType")}];
      *(*(a1 + 32) + 240) = 5;
    }

    else
    {

      return [result deleteTCPTunnel];
    }
  }

  return result;
}

void __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_67(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_2_68;
  block[3] = &unk_1E85F37F0;
  block[4] = v2;
  block[5] = a2;
  dispatch_async(v3, block);
}

uint64_t __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_2_68(uint64_t a1)
{
  *(*(a1 + 32) + 240) = 6;
  [*(a1 + 32) resetLoopback];
  result = [*(*(a1 + 32) + 72) connectionCount];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 callEventHandlerWithEvent:7 info:v4];
  }

  return result;
}

void __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_3_70(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __112__VCTransportSessionLegacy_createTCPTunnelForParticipantID_relayDictionary_didOriginateRequest_relayType_error___block_invoke_4_71;
  v3[3] = &unk_1E85F3778;
  v3[4] = v1;
  dispatch_sync(v2, v3);
}

- (void)deleteTCPTunnel
{
  tcpTunnelClient = self->_tcpTunnelClient;
  if (tcpTunnelClient)
  {
    [(TCPTunnelClient *)tcpTunnelClient closeTunnelSocket];

    self->_tcpTunnelClient = 0;
  }

  self->rtChannel = 0;
}

- (void)loopbackSocketTunnel:(id)tunnel receivedData:(id)data from:(tagIPPORT *)from
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCTransportSessionLegacy_loopbackSocketTunnel_receivedData_from___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = data;
  dispatch_sync(stateQueue, block);
}

void __67__VCTransportSessionLegacy_loopbackSocketTunnel_receivedData_from___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 265) == 1)
  {
    v4 = *(v2 + 408);
    [*(*(a1 + 32) + 408) vcArg:*(a1 + 32) sendRealTimeData:*(a1 + 40) toParticipantID:{objc_msgSend(*(*(a1 + 32) + 416), "optionalArg")}];
    v5 = *(*(a1 + 32) + 408);
  }
}

- (void)resetLoopback
{
  v15 = *MEMORY[0x1E69E9840];
  [(VCTransportSessionLegacy *)self deleteTCPTunnel];
  if (self->_useLoopback)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        loopbackConnection = self->_loopbackConnection;
        if (loopbackConnection)
        {
          v6 = [-[VCConnectionProtocol description](loopbackConnection "description")];
        }

        else
        {
          v6 = "<nil>";
        }

        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCTransportSessionLegacy resetLoopback]";
        v11 = 1024;
        v12 = 1240;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Remove loopback connection %s", &v7, 0x26u);
      }
    }

    [(VCConnectionManager *)self->super._connectionManager removeConnection:self->_loopbackConnection];
    self->_useLoopback = 0;
    [(LoopbackSocketTunnel *)self->_tunnel shutdownSocket];

    self->_tunnel = 0;
    self->rtChannel = 0;
  }
}

- (void)setupLoopbackWithConnectionType:(unsigned int)type
{
  v3 = *&type;
  v43 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
      *&buf[22] = 1024;
      *&buf[24] = 1253;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  self->_useLoopback = 1;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[0] = v7;
  v41[1] = v7;
  transport = self->transport;
  callID = self->_callID;
  v26 = 0;
  [(VCTransport *)transport updateInterfaceList:callID shouldFilterCellInterface:self->super._requiresWiFi isUpdateNeeded:&v26];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
      *&buf[22] = 1024;
      *&buf[24] = 1261;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d call [transport getLoopbackIP]...", buf, 0x1Cu);
    }
  }

  [(VCTransport *)self->transport getLoopbackIP:v41];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
      *&buf[22] = 1024;
      *&buf[24] = 1263;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d done [transport getLoopbackIP]...", buf, 0x1Cu);
    }
  }

  IPPORTToStringWithSize();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
      *&buf[22] = 1024;
      *&buf[24] = 1267;
      *&buf[28] = 2080;
      *&buf[30] = &setupLoopbackWithConnectionType__ip;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d vtpIP = %s", buf, 0x26u);
    }
  }

  self->_tunnel = [[LoopbackSocketTunnel alloc] initWithPort:55100 delegate:self error:&v27];
  if (v27)
  {
    [(VCTransportSession *)self callEventHandlerWithEvent:7 info:?];
  }

  else
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v17 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
        *&buf[22] = 1024;
        *&buf[24] = 1275;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d call tunnel setVTPIP...", buf, 0x1Cu);
      }
    }

    [(LoopbackSocketTunnel *)self->_tunnel setVTPIP:v41];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
        *&buf[22] = 1024;
        *&buf[24] = 1277;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d done tunnel setVTPIP...", buf, 0x1Cu);
      }
    }

    [(LoopbackSocketTunnel *)self->_tunnel setOptionalArg:[(VCTransportSessionLegacy *)self remoteParticipantID]];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    memset(buf, 0, sizeof(buf));
    [(LoopbackSocketTunnel *)self->_tunnel getIPPort:v38 + 4];
    [(LoopbackSocketTunnel *)self->_tunnel getIPPort:&v38[5] + 4];
    *&buf[20] = 1;
    DWORD2(v39) = 1;
    [(LoopbackSocketTunnel *)self->_tunnel getVTPIPPort:&buf[28]];
    [(LoopbackSocketTunnel *)self->_tunnel getVTPIPPort:&v38[2] + 12];
    self->_loopbackConnection = [[VCConnectionLegacy alloc] initWithConnectionResult:buf type:v3];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        loopbackConnection = self->_loopbackConnection;
        if (loopbackConnection)
        {
          v25 = [-[VCConnectionProtocol description](loopbackConnection "description")];
        }

        else
        {
          v25 = "<nil>";
        }

        *v28 = 136315906;
        v29 = v22;
        v30 = 2080;
        v31 = "[VCTransportSessionLegacy setupLoopbackWithConnectionType:]";
        v32 = 1024;
        v33 = 1292;
        v34 = 2080;
        v35 = v25;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Add loopback connection %s", v28, 0x26u);
      }
    }

    [(VCConnectionManager *)self->super._connectionManager addConnection:self->_loopbackConnection];
  }
}

- (void)receivedRealTimeData:(id)data fromParticipantID:(id)d
{
  v8[7] = *MEMORY[0x1E69E9840];
  if (self->_useLoopback)
  {
    [(LoopbackSocketTunnel *)self->_tunnel setOptionalArg:d];
    tunnel = self->_tunnel;

    [(LoopbackSocketTunnel *)tunnel sendPacketToVTP:data];
  }

  else
  {
    stateQueue = self->super._stateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__VCTransportSessionLegacy_receivedRealTimeData_fromParticipantID___block_invoke;
    v8[3] = &unk_1E85F3E30;
    v8[4] = self;
    v8[5] = d;
    v8[6] = data;
    dispatch_sync(stateQueue, v8);
  }
}

_BYTE *__67__VCTransportSessionLegacy_receivedRealTimeData_fromParticipantID___block_invoke(id *a1)
{
  result = a1[4];
  if ((result[263] & 1) == 0)
  {
    result = [a1[5] isEqualToString:{objc_msgSend(result, "remoteParticipantID")}];
    if (result)
    {
      v3 = [a1[6] bytes];
      result = memchr(v3, 10, [a1[6] length]);
      if (result)
      {
        result = strnstr(v3, "SIP/", result - v3);
        if (result)
        {
          [a1[4] setupLoopbackWithConnectionType:0];
          [*(a1[4] + 52) sendPacketToVTP:a1[6]];
          v4 = [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
          v5 = *(a1[4] + 72);

          return [v4 addResult:0 forCallID:v5];
        }
      }
    }
  }

  return result;
}

- (void)stopLoopback
{
  if (self->_useLoopback)
  {
    v4 = MEMORY[0x1E696AF00];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:8.0];

    [v4 detachNewThreadSelector:sel_stopLoopbackProc_ toTarget:self withObject:v5];
  }
}

- (void)stopLoopbackProc:(id)proc
{
  block[5] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [MEMORY[0x1E696AF00] sleepUntilDate:proc];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCTransportSessionLegacy_stopLoopbackProc___block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  [(TCPTunnelClient *)self->_tcpTunnelClient unbindChannel];
  v7 = 4;
  while (![(TCPTunnelClient *)self->_tcpTunnelClient isTunnelSocketClosed])
  {
    sleep(1u);
    if (!--v7)
    {
      v8 = self->super._stateQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__VCTransportSessionLegacy_stopLoopbackProc___block_invoke_2;
      v9[3] = &unk_1E85F3778;
      v9[4] = self;
      dispatch_sync(v8, v9);
      break;
    }
  }
}

void __45__VCTransportSessionLegacy_stopLoopbackProc___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) shutdownSocket];

  *(*(a1 + 32) + 416) = 0;
  *(*(a1 + 32) + 408) = 0;
}

- (id)createInitiateRelayDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = -1431655766;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  [(VCTransportSessionLegacy *)self localConnectionData];
  v4 = ICEGetExtIPIndex();
  [v3 setObject:-[VCTransportSessionLegacy localConnectionData](self forKeyedSubscript:{"localConnectionData"), @"GKSRelaySelfBlob"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v4), @"GKSRelaySelfAddrPointer"}];
  if (v4 == -1)
  {
    v5 = 0;
  }

  else
  {
    [(NSData *)[(VCTransportSessionLegacy *)self localConnectionData] getBytes:&v10 range:v4, 4];
    v5 = bswap32(v10);
  }

  v9 = v5;
  [v3 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v9, 4), @"GKSRelaySelfExternalAddr"}];
  [v3 setObject:&unk_1F5799FF0 forKeyedSubscript:@"GKSRelaySelfNatType"];
  [(VCTransportSessionLegacy *)self remoteConnectionData];
  v6 = ICEGetExtIPIndex();
  [v3 setObject:-[VCTransportSessionLegacy remoteConnectionData](self forKeyedSubscript:{"remoteConnectionData"), @"GKSRelayPeerBlob"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v6), @"GKSRelayPeerAddrPointer"}];
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    [(NSData *)[(VCTransportSessionLegacy *)self remoteConnectionData] getBytes:&v10 range:v6, 4];
    v7 = bswap32(v10);
  }

  v9 = v7;
  [v3 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v9, 4), @"GKSRelayPeerExternalAddr"}];
  [v3 setObject:&unk_1F5799FF0 forKeyedSubscript:@"GKSRelayPeerNatType"];
  return v3;
}

- (id)createInitiateRelayDictionaryForCall:(unsigned int)call primaryConnection:(tagCONNRESULT *)connection
{
  v55 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (connection->dwCallID != call)
  {
    return 0;
  }

  v5 = *&call;
  memset(v24, 170, sizeof(v24));
  v7 = [(VCTransport *)self->transport getRemoteCIDForDstIPPort:&connection->mbDst callID:*&call];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v7)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionLegacy createInitiateRelayDictionaryForCall:v16 primaryConnection:v17];
      }
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      dwIPv4 = connection->mbSrc.IP.dwIPv4;
      v12 = connection->mbRemote.IP.dwIPv4;
      *buf = 136316162;
      v26 = v9;
      v27 = 2080;
      v28 = "[VCTransportSessionLegacy createInitiateRelayDictionaryForCall:primaryConnection:]";
      v29 = 1024;
      v30 = 1442;
      v31 = 1024;
      v32 = dwIPv4;
      v33 = 1024;
      v34 = v12;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCallSession: preparing for secondary connection, %x, %x", buf, 0x28u);
    }
  }

  [(VCTransport *)self->transport getNextBestCandidate:&v45 callID:v5 isLocal:1 IPPortToExclude:&connection->mbSrc];
  [(VCTransport *)self->transport getNextBestCandidate:&v35 callID:v5 isLocal:0 IPPortToExclude:&connection->mbRemote];
  if (((connection->mbSrc.iFlags ^ DWORD2(v46)) & 4) == 0 && ((connection->mbRemote.iFlags ^ DWORD2(v36)) & 4) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = v13;
        v27 = 2080;
        v28 = "[VCTransportSessionLegacy createInitiateRelayDictionaryForCall:primaryConnection:]";
        v29 = 1024;
        v30 = 1455;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d createInitiateRelayDictionaryForCall: No new candidate for secondary connection", buf, 0x1Cu);
      }
    }

    return 0;
  }

  if ((ICECompressCandidates() & 0x80000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v24[2] length:SHIDWORD(v24[0])];
    free(v24[2]);
  }

  if ((ICECompressCandidates() & 0x80000000) != 0)
  {
    remoteConnectionData = 0;
  }

  else
  {
    remoteConnectionData = [MEMORY[0x1E695DEF0] dataWithBytes:v24[1] length:SLODWORD(v24[0])];
    free(v24[1]);
  }

  v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  if (v15)
  {
    *buf = bswap32(HIDWORD(v47));
    v20 = 1;
    localConnectionData = v15;
  }

  else if (remoteConnectionData)
  {
    *buf = bswap32(HIDWORD(v37));
    v20 = 1;
    localConnectionData = remoteConnectionData;
  }

  else
  {
    localConnectionData = [(VCTransportSessionLegacy *)self localConnectionData];
    *buf = 0;
    v20 = -1;
  }

  [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v20), @"GKSRelaySelfAddrPointer"}];
  [v18 setObject:localConnectionData forKeyedSubscript:@"GKSRelaySelfBlob"];
  [v18 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", buf, 4), @"GKSRelaySelfExternalAddr"}];
  if (remoteConnectionData)
  {
    *buf = bswap32(HIDWORD(v37));
    v22 = 1;
  }

  else if (v15)
  {
    *buf = bswap32(HIDWORD(v47));
    v22 = 1;
    remoteConnectionData = v15;
  }

  else
  {
    remoteConnectionData = [(VCTransportSessionLegacy *)self remoteConnectionData];
    *buf = 0;
    v22 = -1;
  }

  [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v22), @"GKSRelayPeerAddrPointer"}];
  [v18 setObject:remoteConnectionData forKeyedSubscript:@"GKSRelayPeerBlob"];
  [v18 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", buf, 4), @"GKSRelayPeerExternalAddr"}];
  [v18 setObject:&unk_1F5799FF0 forKeyedSubscript:@"GKSRelaySelfNatType"];
  [v18 setObject:&unk_1F5799FF0 forKeyedSubscript:@"GKSRelayPeerNatType"];
  [v18 setObject:v7 forKeyedSubscript:@"GKSRelayRemotePrimaryIdentifier"];
  return v18;
}

- (id)createRelayUpdateDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(dictionary, "objectForKeyedSubscript:", @"GKSRelayType", "intValue")), @"GKSRelayType"}];
  v6 = [dictionary objectForKeyedSubscript:@"GKSRelayConnectionID"];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"GKSRelayConnectionID"];
  }

  v7 = [dictionary objectForKeyedSubscript:@"GKRelayTransactionID"];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"GKRelayTransactionID"];
  }

  v8 = [dictionary objectForKeyedSubscript:@"GKRelayToken"];
  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"GKRelayToken"];
  }

  v9 = [dictionary objectForKeyedSubscript:@"GKSRelayPeerRelayPort"];
  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"GKSRelayPeerRelayPort"];
  }

  v10 = [dictionary objectForKeyedSubscript:@"GKSRelayPeerRelayIP"];
  if (v10)
  {
    [v5 setObject:v10 forKeyedSubscript:@"GKSRelayPeerRelayIP"];
  }

  v11 = [dictionary objectForKeyedSubscript:@"GKSRelaySelfRelayIP"];
  if (v11)
  {
    [v5 setObject:v11 forKeyedSubscript:@"GKSRelaySelfRelayIP"];
  }

  v12 = [dictionary objectForKeyedSubscript:@"GKSRelaySelfRelayPort"];
  if (v12)
  {
    [v5 setObject:v12 forKeyedSubscript:@"GKSRelaySelfRelayPort"];
  }

  v13 = [dictionary objectForKeyedSubscript:@"GKSRelayRemotePrimaryIdentifier"];
  if (v13)
  {
    [v5 setObject:v13 forKeyedSubscript:@"GKSRelayRemotePrimaryIdentifier"];
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v14;
  v29 = v14;
  if (GetIPPortFromDict())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCTransportSessionLegacy *)v15 createRelayUpdateDictionary:dictionary];
      }
    }
  }

  else
  {
    *v21 = -1431655766;
    if ((v28 & 1) == 0)
    {
      *v21 = bswap32(DWORD1(v29));
    }

    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:4];
    [v5 setObject:v16 forKeyedSubscript:{@"GKSRelaySelfRelayNatIP", *v21}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", WORD2(v30)), @"GKSRelaySelfRelayNatPort"}];
  }

  if ([(VCTransportSessionLegacy *)self localRelayConnectionData])
  {
    [v5 setObject:-[VCTransportSessionLegacy localRelayConnectionData](self forKeyedSubscript:{"localRelayConnectionData"), @"ClientData"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v19 = [objc_msgSend(v5 "description")];
      }

      else
      {
        v19 = "<nil>";
      }

      *v21 = 136315906;
      *&v21[4] = v17;
      v22 = 2080;
      v23 = "[VCTransportSessionLegacy createRelayUpdateDictionary:]";
      v24 = 1024;
      v25 = 1588;
      v26 = 2080;
      v27 = v19;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d createRelayUpdateDictionary: dict %s", v21, 0x26u);
    }
  }

  return v5;
}

- (BOOL)getConnectionSetupData:(id *)data withOptions:(id)options error:(id *)error
{
  if (!data)
  {
    return 0;
  }

  [objc_msgSend(options objectForKeyedSubscript:{@"transportSessionLegacyOptionNonCellularCandidateTimeout", "doubleValue"}];
  v8 = [(VCTransportSessionLegacy *)self connectionDataUsingRelay:0 isInitialRelay:0 nonCellularCandidateTimeout:error error:?];
  *data = v8;
  return v8 != 0;
}

- (void)getConnectionDataUsingRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay nonCellularCandidateTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = [handler copy];
  global_queue = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__VCTransportSessionLegacy_getConnectionDataUsingRelay_isInitialRelay_nonCellularCandidateTimeout_queue_completionHandler___block_invoke;
  v14[3] = &unk_1E85F7560;
  relayCopy = relay;
  initialRelayCopy = initialRelay;
  *&v14[7] = timeout;
  v14[4] = self;
  v14[5] = queue;
  v14[6] = v12;
  dispatch_async(global_queue, v14);
}

void __123__VCTransportSessionLegacy_getConnectionDataUsingRelay_isInitialRelay_nonCellularCandidateTimeout_queue_completionHandler___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [*(a1 + 32) connectionDataUsingRelay:*(a1 + 64) isInitialRelay:*(a1 + 65) nonCellularCandidateTimeout:v6 error:*(a1 + 56)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __123__VCTransportSessionLegacy_getConnectionDataUsingRelay_isInitialRelay_nonCellularCandidateTimeout_queue_completionHandler___block_invoke_2;
      block[3] = &unk_1E85F4C78;
      block[6] = v4;
      block[4] = v2;
      block[5] = v6[0];
      dispatch_async(v3, block);
    }
  }
}

- (id)connectionData:(char *)data connectionDataSizeInBytes:(int)bytes shouldUseRelay:(BOOL)relay
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:bytes];
  free(data);
  if (relay)
  {
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
        v16 = v9;
        v17 = 2080;
        v18 = "[VCTransportSessionLegacy connectionData:connectionDataSizeInBytes:shouldUseRelay:]";
        v19 = 1024;
        v20 = 1645;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relayconnectiondata = %s", buf, 0x26u);
      }
    }

    [(VCTransportSessionLegacy *)self setLocalRelayConnectionData:v8];
    perfTimings = self->super._perfTimings;
    v13 = 9;
  }

  else
  {
    [(VCTransportSessionLegacy *)self setLocalConnectionData:v8];
    perfTimings = self->super._perfTimings;
    v13 = 8;
  }

  [(TimingCollection *)perfTimings stopTimingForKey:v13];
  *buf = -1431655766;
  snprintf(buf, 4uLL, "%u", self->_NATType);
  reportingLog();
  return v8;
}

- (id)connectionDataUsingRelay:(BOOL)relay isInitialRelay:(BOOL)initialRelay nonCellularCandidateTimeout:(double)timeout error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  callID = self->_callID;
  if (!relay || initialRelay)
  {
    if (relay && initialRelay)
    {
      v10 = 9;
    }

    else
    {
      v10 = 8;
    }

    [(TimingCollection *)self->super._perfTimings startTimingForKey:v10];
  }

  v27 = 0;
  transport = self->transport;
  v25 = 0;
  [(VCTransport *)transport updateInterfaceList:callID shouldFilterCellInterface:self->super._requiresWiFi isUpdateNeeded:&v25];
  v12 = [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-blob-size-max", "intValue"}];
  v26 = v12;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v13;
      v30 = 2080;
      v31 = "[VCTransportSessionLegacy connectionDataUsingRelay:isInitialRelay:nonCellularCandidateTimeout:error:]";
      v32 = 1024;
      v33 = 1684;
      v34 = 1024;
      v35 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The max blob size allowed = %d", buf, 0x22u);
    }
  }

  if (!v12)
  {
    v26 = 201;
  }

  v15 = [(VCTransportSessionLegacy *)self generateConnectionData:&v27 forCallID:callID connectionDataSize:&v26 nonCellularCandidateTimeout:timeout];
  if (v15 == -2146107370)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = v19;
        v30 = 2080;
        v31 = "[VCTransportSessionLegacy connectionDataUsingRelay:isInitialRelay:nonCellularCandidateTimeout:error:]";
        v32 = 1024;
        v33 = 1714;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICE_E_NOTFOUND was received, using default connection data", buf, 0x1Cu);
      }
    }
  }

  else if (v15)
  {
    v16 = v15;
    reportingLog();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTransportSessionLegacy connectionDataUsingRelay:isInitialRelay:nonCellularCandidateTimeout:error:];
      }
    }

    if ([(NSMutableDictionary *)[(VCTransportSessionLegacy *)self localRelayRequestResponse] count])
    {
      v17 = [(VCTransport *)self->transport detailedErrorCodeForConnectionWithCallID:callID];
      v18 = 32019;
    }

    else
    {
      v18 = 32013;
      v17 = 210;
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", error, v18, v17, v16, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m", 1707], @"No local connection data", @"Check network settings.");
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->transport;
      *buf = 136316418;
      v29 = v21;
      v30 = 2080;
      v31 = "[VCTransportSessionLegacy connectionDataUsingRelay:isInitialRelay:nonCellularCandidateTimeout:error:]";
      v32 = 1024;
      v33 = 1717;
      v34 = 1024;
      v35 = v26;
      v36 = 2048;
      v37 = v27;
      v38 = 2048;
      v39 = v23;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectDataSizeInBytes = %d, connectionData = %p, transport = %p", buf, 0x36u);
    }
  }

  if (v26 && v27)
  {
    return [VCTransportSessionLegacy connectionData:"connectionData:connectionDataSizeInBytes:shouldUseRelay:" connectionDataSizeInBytes:? shouldUseRelay:?];
  }

  reportingLog();
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32013, 211, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m", 1724], @"No local connection data", @"Check network settings.");
  return 0;
}

- (int)generateConnectionData:(char *)data forCallID:(unsigned int)d connectionDataSize:(int *)size nonCellularCandidateTimeout:(double)timeout
{
  v8 = *&d;
  v27 = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:10.0];
  [(NSCondition *)self->_connectionDataTimeoutCondVar lock];
  LOBYTE(v17) = 0;
  v11 = [(VCTransport *)self->transport getConnectionDataForCallID:v8 version:self->_localU8Version useCompressedData:self->super._useCompressedConnectionData pConnectionData:data connectDataSizeInBytes:size relayDictionary:[(VCTransportSessionLegacy *)self localRelayRequestResponse] interfaceUpdate:timeout nonCellularCandidateTimeout:v17];
  v19 = -2146107370;
  if (v11 == -2146107370)
  {
    while (1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = v12;
          v23 = 2080;
          v24 = "[VCTransportSessionLegacy generateConnectionData:forCallID:connectionDataSize:nonCellularCandidateTimeout:]";
          v25 = 1024;
          v26 = 1757;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIPGetConnectionData failed, retrying", buf, 0x1Cu);
        }
      }

      if (![(NSCondition *)self->_connectionDataTimeoutCondVar waitUntilDate:v20])
      {
        break;
      }

      LOBYTE(v18) = 0;
      v11 = [(VCTransport *)self->transport getConnectionDataForCallID:v8 version:self->_localU8Version useCompressedData:self->super._useCompressedConnectionData pConnectionData:data connectDataSizeInBytes:size relayDictionary:[(VCTransportSessionLegacy *)self localRelayRequestResponse] interfaceUpdate:timeout nonCellularCandidateTimeout:v18];
      if (v11 != -2146107370)
      {
        goto LABEL_7;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v15;
        v23 = 2080;
        v24 = "[VCTransportSessionLegacy generateConnectionData:forCallID:connectionDataSize:nonCellularCandidateTimeout:]";
        v25 = 1024;
        v26 = 1770;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCallSession generateConnectionData: timed out", buf, 0x1Cu);
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v11;
  }

  [(NSCondition *)self->_connectionDataTimeoutCondVar unlock];

  return v19;
}

- (void)setupTransport
{
  v8[5] = *MEMORY[0x1E69E9840];
  transport = self->transport;
  if (!transport)
  {
    transport = +[VCTransport sharedInstance];
    self->transport = transport;
  }

  callID = self->_callID;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__VCTransportSessionLegacy_setupTransport__block_invoke;
  v8[3] = &unk_1E85F7588;
  v8[4] = self;
  v6[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__VCTransportSessionLegacy_setupTransport__block_invoke_2;
  v7[3] = &unk_1E85F75B0;
  v7[4] = self;
  v5[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__VCTransportSessionLegacy_setupTransport__block_invoke_3;
  v6[3] = &unk_1E85F75D8;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__VCTransportSessionLegacy_setupTransport__block_invoke_4;
  v5[3] = &unk_1E85F7600;
  [(VCTransport *)transport registerICEBlockForCallID:callID connectedBlock:v8 newCandidatesBlock:v7 newNominationBlock:v6 removeIPPortBlock:v5];
}

uint64_t __42__VCTransportSessionLegacy_setupTransport__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [*(a1 + 32) connectionManager];

  return [v13 shouldNominateCandidatePair:a2 interfaceMask:a3 nominated:a4 demote:a5 connectionPriority:a6 replaceOnly:a7];
}

uint64_t __42__VCTransportSessionLegacy_setupTransport__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) connectionManager];

  return [v5 removeConnectionWithIPPort:a2 isLocalInterface:a3];
}

- (void)resetICETimeoutToLongTimeout
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (double)iceTimeoutInSeconds:(BOOL)seconds
{
  if (self->allowsRelay)
  {
    result = 60.0;
    if (self->_isCaller && !seconds)
    {
      if (GKSConnectivitySettings_GetICETimeout() <= 0.0)
      {
        return 60.0;
      }

      else
      {

        return GKSConnectivitySettings_GetICETimeout();
      }
    }
  }

  else
  {
    result = 1.0;
    if (!self->_tcpTunnelClient)
    {
      return 15.0;
    }
  }

  return result;
}

- (unsigned)connectionTypeForConnectionResult:(tagCONNRESULT *)result
{
  if (!result)
  {
    return 0;
  }

  if (result->bIfRelay)
  {
    if (self->requestedTimeoutRelay)
    {
      return 5;
    }

    else
    {
      return 2;
    }
  }

  else if (result->bIfUpgrade)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isConnectedAndAllowAdditionalConnection
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCount = [(VCConnectionManager *)self->super._connectionManager connectionCount];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCTransportSessionLegacy isConnectedAndAllowAdditionalConnection]";
      v10 = 1024;
      v11 = 1891;
      v12 = 1024;
      v13 = connectionCount;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d number of connection is %d", &v6, 0x22u);
    }
  }

  return (connectionCount - 1) < 2;
}

- (void)reportNetworkConditionsDegraded
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v3 = v2;
  v4 = v2;
  if (self)
  {
    [(VCTransportSessionLegacy *)self IPPortForPrimaryConnectionOnLocalInterface:1, v3, v4, v5, v6];
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
  }

  VTP_SetNetworkLogLevel(&v3, 6);
}

- (void)setIdentity:(__SecIdentity *)identity
{
  if (identity)
  {
    v4 = CFRetain(identity);
  }

  else
  {
    v4 = 0;
  }

  self->_identity = v4;
}

- (void)setupSecondaryRelayForCall:(unsigned int)call callerRequired:(BOOL)required
{
  requiredCopy = required;
  v5 = *&call;
  v25 = *MEMORY[0x1E69E9840];
  v7 = VCConnectionManager_CopyPrimaryConnection(self->super._connectionManager);
  if (v7)
  {
    v8 = v7;
    if (!requiredCopy || self->_isCaller)
    {
      if (self->relayState || ![(VCTransportSessionLegacy *)self isConnectedAndAllowAdditionalConnection])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            relayState = self->relayState;
            *buf = 136315906;
            v18 = v13;
            v19 = 2080;
            v20 = "[VCTransportSessionLegacy setupSecondaryRelayForCall:callerRequired:]";
            v21 = 1024;
            v22 = 575;
            v23 = 1024;
            v24 = relayState;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: setupSecondaryRelay fail, relayState %d", buf, 0x22u);
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v18 = v9;
            v19 = 2080;
            v20 = "[VCTransportSessionLegacy setupSecondaryRelayForCall:callerRequired:]";
            v21 = 1024;
            v22 = 565;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: setupSecondaryRelayForCall", buf, 0x1Cu);
          }
        }

        v11 = -[VCTransportSessionLegacy createInitiateRelayDictionaryForCall:primaryConnection:](self, "createInitiateRelayDictionaryForCall:primaryConnection:", v5, [v8 connectionResult]);
        if (v11)
        {
          self->relayState = 3;
          notificationQueue = self->super._notificationQueue;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __70__VCTransportSessionLegacy_setupSecondaryRelayForCall_callerRequired___block_invoke;
          v16[3] = &unk_1E85F37F0;
          v16[4] = self;
          v16[5] = v11;
          dispatch_async(notificationQueue, v16);
        }
      }
    }

    CFRelease(v8);
  }
}

void __105__VCTransportSessionLegacy_connectionResultCallback_didReceiveICEPacket_didUseRelay_secretKey_skeResult___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) handleExchangedKey:*(a1 + 40) result:*(a1 + 56)])
  {
    OUTLINED_FUNCTION_9_18();
    v3 = *(v2 + 24);
    if (v3)
    {
      *(*(a1 + 32) + 256) = (vcvtd_n_f64_u32(*(v3 + 268), 0x10uLL) * 1000.0);
      OUTLINED_FUNCTION_9_18();
      *(*(a1 + 32) + 266) = *(*(v4 + 24) + 8) == 0;
      v5 = [VCConnectionLegacy alloc];
      OUTLINED_FUNCTION_9_18();
      v7 = -[VCConnectionLegacy initWithConnectionResult:type:](v5, "initWithConnectionResult:type:", *(v6 + 24), [*(a1 + 32) connectionTypeForConnectionResult:*(v6 + 24)]);
      [*(*(a1 + 32) + 72) addConnection:v7];
    }
  }

  OUTLINED_FUNCTION_9_18();
  v9 = *(v8 + 24);

  free(v9);
}

- (tagIPPORT)IPPortForPrimaryConnectionOnLocalInterface:(SEL)interface
{
  v4 = a4;
  *&retstr->IP.abIPv6[12] = 0;
  *&retstr->iFlags = 0u;
  *&retstr->szIfName[12] = 0u;
  result = VCConnectionManager_CopyPrimaryConnection(self->super._connectionManager);
  if (result)
  {
    v7 = result;
    if ([(tagIPPORT *)result connectionResult])
    {
      connectionResult = [(tagIPPORT *)v7 connectionResult];
      v9 = 148;
      if (v4)
      {
        v9 = 28;
      }

      v10 = connectionResult + v9;
      v11 = *(v10 + 16);
      *&retstr->iFlags = *v10;
      *&retstr->szIfName[12] = v11;
      *&retstr->IP.abIPv6[12] = *(v10 + 32);
    }

    CFRelease(v7);
  }

  return result;
}

void __33__VCTransportSessionLegacy_start__block_invoke_cold_1(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)startConnectionWithBlob:useRelay:isInitialRelay:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_fault_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_FAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: VCCallSession: StartConnectionCheck failed(%X)", v4, 0x28u);
}

- (void)startConnectionWithBlob:useRelay:isInitialRelay:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_22();
  v6 = *MEMORY[0x1E69E9840];
  if ([*v2 userInfo])
  {
    [objc_msgSend(objc_msgSend(*v1 "userInfo")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  v5 = v3;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Unable to create TCPTunnel: %s", v4, 0x26u);
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_22();
  if ([*v1 userInfo])
  {
    [objc_msgSend(objc_msgSend(*v0 "userInfo")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_cold_3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayRequestResponseDict: can't find relay type info in the dictionary", v2, 0x22u);
}

void __76__VCTransportSessionLegacy_processRelayRequestResponse_didOriginateRequest___block_invoke_38_cold_1()
{
  OUTLINED_FUNCTION_8_22();
  if ([v1 userInfo])
  {
    [objc_msgSend(objc_msgSend(v0 "userInfo")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __67__VCTransportSessionLegacy_processRelayUpdate_didOriginateRequest___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTransportSessionLegacy.m:%d: processRelayUpdateDict: can't find relay type info in the dictionary", v2, 0x22u);
}

void __49__VCTransportSessionLegacy_networkStateDidChange__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processRemoteIPChange:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)handleExchangedKey:result:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)createInitiateRelayDictionaryForCall:(uint64_t)a1 primaryConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCTransportSessionLegacy createInitiateRelayDictionaryForCall:primaryConnection:]";
  v6 = 1024;
  v7 = 1438;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Didn't find valid remote candidate ID, cannot create relay dictionary", &v2, 0x1Cu);
}

- (void)createRelayUpdateDictionary:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "description")];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

- (void)connectionDataUsingRelay:isInitialRelay:nonCellularCandidateTimeout:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end