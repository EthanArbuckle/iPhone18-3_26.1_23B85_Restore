@interface VCTransportSessionIDS
+ (int)transportTypeForConnectionType:(int)type;
- (BOOL)isIPv6;
- (VCTransportSessionIDS)initWithCallID:(unsigned int)d requireEncryptionInfo:(BOOL)info reportingAgent:(id)agent notificationQueue:(id)queue dataPath:(int)path;
- (id)connectionSetupPiggybackBlob;
- (id)datagramChannel;
- (int)flushBasebandQueueForConnection:(id)connection payloadInfoList:(id)list;
- (int)getSignalStrengthBars:(int *)bars displayBars:(int *)displayBars maxDisplayBars:(int *)maxDisplayBars;
- (int)networkInterfaceType;
- (int)registerBasebandNotificationsForConnection:(id)connection;
- (unsigned)networkMTU;
- (unsigned)remoteDeviceVersionIDS;
- (void)cleanupDatagramChannel;
- (void)datagramChannelEventLogForInfo:(id)info eventInfo:(id)eventInfo;
- (void)dealloc;
- (void)deregisterBasebandNotifications;
- (void)dispatchedProcessDatagramChannelEventInfo:(id)info;
- (void)handleCellularSoMaskChanged:(id)changed;
- (void)handleChannelInfoReport:(id)report;
- (void)handleDefaultLinkUpdatedWithInfo:(id)info;
- (void)handleEncryptionConfig:(id)config;
- (void)handleIDSEncryptionInfoEvent:(id)event;
- (void)handleIDSMembershipChangeInfoEvent:(id)event;
- (void)handlePathMTUChange:(id)change;
- (void)handleRATChanged:(id)changed;
- (void)handleReportingBlob:(id)blob;
- (void)handleStatResponse:(id)response;
- (void)processDatagramChannelEventInfo:(id)info;
- (void)processSessionBasedServerExperiments:(id)experiments;
- (void)setConnectionSetupPiggybackBlob:(id)blob;
- (void)setConnectionSetupTime;
- (void)setPiggybackBlobPreference;
- (void)start;
- (void)startMKMRecoveryForParticipantIDs:(id)ds;
- (void)stop;
@end

@implementation VCTransportSessionIDS

- (VCTransportSessionIDS)initWithCallID:(unsigned int)d requireEncryptionInfo:(BOOL)info reportingAgent:(id)agent notificationQueue:(id)queue dataPath:(int)path
{
  v24 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCTransportSessionIDS;
  v9 = [(VCTransportSession *)&v15 initWithNotificationQueue:queue reportingAgent:agent];
  v10 = v9;
  if (v9)
  {
    v9->_socket = -1;
    v9->_requireEncryptionInfo = info;
    v9->_dataPath = path;
    v9->_useIDSLinkSuggestionFeatureFlag = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-ids-link-suggestion-enabled" userDefaultKey:@"idsLinkSuggestionEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseIDSLinkSuggestion"];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        useIDSLinkSuggestionFeatureFlag = v10->_useIDSLinkSuggestionFeatureFlag;
        *buf = 136315906;
        v17 = v11;
        v18 = 2080;
        v19 = "[VCTransportSessionIDS initWithCallID:requireEncryptionInfo:reportingAgent:notificationQueue:dataPath:]";
        v20 = 1024;
        v21 = 81;
        v22 = 1024;
        v23 = useIDSLinkSuggestionFeatureFlag;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d useIDSLinkSuggestionFeatureFlag=%d", buf, 0x22u);
      }
    }
  }

  return v10;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  socket = self->_socket;
  if (socket != -1)
  {
    close(socket);
  }

  v4.receiver = self;
  v4.super_class = VCTransportSessionIDS;
  [(VCTransportSession *)&v4 dealloc];
}

- (id)datagramChannel
{
  v2 = self->_datagramChannel;

  return v2;
}

- (BOOL)isIPv6
{
  copyActiveConnection = [(VCTransportSessionIDS *)self copyActiveConnection];
  v3 = VCConnection_ReportingIPVersion(copyActiveConnection) == 3;

  return v3;
}

- (unsigned)networkMTU
{
  copyActiveConnection = [(VCTransportSessionIDS *)self copyActiveConnection];
  connectionMTU = [copyActiveConnection connectionMTU];

  return connectionMTU;
}

- (int)networkInterfaceType
{
  copyActiveConnection = [(VCTransportSessionIDS *)self copyActiveConnection];
  v3 = +[VCTransportSessionIDS transportTypeForConnectionType:](VCTransportSessionIDS, "transportTypeForConnectionType:", [copyActiveConnection localConnectionType]);

  return v3;
}

- (void)processDatagramChannelEventInfo:(id)info
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCTransportSessionIDS_processDatagramChannelEventInfo___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = info;
  dispatch_async(stateQueue, block);
}

- (void)datagramChannelEventLogForInfo:(id)info eventInfo:(id)eventInfo
{
  v29 = *MEMORY[0x1E69E9840];
  unsignedIntValue = [info unsignedIntValue];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (unsignedIntValue == 10)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        intValue = [info intValue];
        v11 = *MEMORY[0x1E69A5000];
        if ([eventInfo objectForKeyedSubscript:*MEMORY[0x1E69A5000]])
        {
          v12 = [objc_msgSend(objc_msgSend(eventInfo objectForKeyedSubscript:{v11), "description"), "UTF8String"}];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136316162;
        v22 = v8;
        v23 = 2080;
        v24 = "[VCTransportSessionIDS datagramChannelEventLogForInfo:eventInfo:]";
        v25 = 1024;
        v26 = 147;
        v27 = 1024;
        *v28 = intValue;
        *&v28[4] = 2080;
        *&v28[6] = v12;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received IDS data channel event=%d with keyIndex=%s", buf, 0x2Cu);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    __str = 0;
    intValue2 = [info intValue];
    v14 = eventInfo ? [objc_msgSend(eventInfo "description")] : "<nil>";
    asprintf(&__str, "Received IDS data channel event=%d with payload=%s", intValue2, v14);
    if (__str)
    {
      __lasts = 0;
      v15 = strtok_r(__str, "\n", &__lasts);
      v16 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v22 = v17;
            v23 = 2080;
            v24 = "[VCTransportSessionIDS datagramChannelEventLogForInfo:eventInfo:]";
            v25 = 1024;
            v26 = 150;
            v27 = 2080;
            *v28 = "[VCTransportSessionIDS datagramChannelEventLogForInfo:eventInfo:]";
            *&v28[8] = 2080;
            *&v28[10] = v15;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v15 = strtok_r(0, "\n", &__lasts);
      }

      while (v15);
      free(__str);
    }
  }
}

- (void)dispatchedProcessDatagramChannelEventInfo:(id)info
{
  v44[3] = *MEMORY[0x1E69E9840];
  v5 = [info objectForKeyedSubscript:*MEMORY[0x1E69A4700]];
  if (v5)
  {
    v6 = v5;
    [(VCTransportSessionIDS *)self datagramChannelEventLogForInfo:v5 eventInfo:info];
    unsignedIntValue = [v6 unsignedIntValue];
    switch(unsignedIntValue)
    {
      case 1:
        v8 = [VCDefaults integerValueForKey:@"idsLinkSuggestionKey" defaultValue:0];
        v9 = v8;
        if (self->_linkPreferSuggestionFromDefaults != v8)
        {
          self->_linkPreferSuggestionFromDefaults = v8;
          v10 = [VCDefaults integerValueForKey:@"idsLinkIPPreferenceKey" defaultValue:0];
          v43[0] = *MEMORY[0x1E69A4E00];
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v9];
          v12 = *MEMORY[0x1E69A4DF8];
          v44[0] = v11;
          v44[1] = &unk_1F5799BE8;
          v43[1] = v12;
          v43[2] = @"lipp";
          v44[2] = [MEMORY[0x1E696AD98] numberWithInt:v10];
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              linkPreferSuggestionFromDefaults = self->_linkPreferSuggestionFromDefaults;
              *buf = 136316418;
              v32 = v14;
              v33 = 2080;
              v34 = "[VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:]";
              v35 = 1024;
              v36 = 172;
              v37 = 1024;
              unsignedIntValue2 = linkPreferSuggestionFromDefaults;
              v39 = 1024;
              v40 = 100;
              v41 = 1024;
              v42 = v10;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing link suggestion using defaults. IDSLinkSuggestionKey=%d IDSLinkScoreKey=%d IDSLinkIPPreferenceKey=%d", buf, 0x2Eu);
            }
          }

          [(VCTransportSessionIDS *)self handleLinkPreferSuggestion:v13];
        }

        [(VCTransportSessionIDS *)self handleLinkConnectedWithInfo:info];
        if (!self->_sessionBasedServerExperimentsProcessed)
        {
          [(VCTransportSessionIDS *)self processSessionBasedServerExperiments:info];
          self->_sessionBasedServerExperimentsProcessed = 1;
        }

        [(TimingCollection *)self->super._perfTimings stopTimingForKey:13];
        break;
      case 2:

        [(VCTransportSessionIDS *)self handleLinkDisconnectedWithInfo:info];
        break;
      case 3:
        v24 = [info objectForKeyedSubscript:*MEMORY[0x1E69A4768]];
        if (VCConnectionIDSIsCellularRATType([v24 intValue]))
        {
          -[VCConnectionManager setRealRATType:](self->super._connectionManager, "setRealRATType:", [v24 intValue]);
        }

        localRATTypeOverride = [+[VCDefaults sharedInstance](VCDefaults localRATTypeOverride];
        if (localRATTypeOverride != -1)
        {
          v26 = localRATTypeOverride;
          if (VCConnectionIDSIsCellularRATType(localRATTypeOverride))
          {
            v24 = [MEMORY[0x1E696AD98] numberWithInt:v26];
          }
        }

        [(VCTransportSessionIDS *)self handleRATChanged:v24];
        break;
      case 4:

        [(VCTransportSessionIDS *)self handleDefaultLinkUpdatedWithInfo:info];
        break;
      case 5:
        v22 = [info objectForKeyedSubscript:*MEMORY[0x1E69A4720]];

        [(VCTransportSessionIDS *)self handlePreConnectionDataReceived:v22];
        break;
      case 6:
      case 9:
      case 12:
        goto LABEL_19;
      case 7:
        v21 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46A0]];

        [(VCTransportSessionIDS *)self handleCellularMTUChanged:v21];
        break;
      case 8:
        v20 = [info objectForKeyedSubscript:*MEMORY[0x1E69A4710]];

        [(VCTransportSessionIDS *)self handleChannelInfoReport:v20];
        break;
      case 10:

        [(VCTransportSessionIDS *)self handleIDSEncryptionInfoEvent:info];
        break;
      case 11:
        v27 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46D8]];

        [(VCTransportSessionIDS *)self handleIDSMembershipChangeInfoEvent:v27];
        break;
      case 13:
        v29 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46F8]];

        [(VCTransportSessionIDS *)self handleStatResponse:v29];
        break;
      case 14:

        [(VCTransportSessionIDS *)self handleSessionInfoResponse:info];
        break;
      case 15:
        v23 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46E0]];

        [(VCTransportSessionIDS *)self handleProbingResponse:v23];
        break;
      case 16:
        v28 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46A8]];

        [(VCTransportSessionIDS *)self handleCellularSoMaskChanged:v28];
        break;
      case 17:

        [(VCTransportSessionIDS *)self handleLinkConstrainsChanged:info];
        break;
      case 18:
        v30 = [info mutableCopy];
        [v30 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"transportSessionEventPayloadKey_IsCellular"];
        [(VCTransportSessionIDS *)self handleLinkConstrainsChanged:v30];

        break;
      case 19:

        [(VCTransportSessionIDS *)self handleLinkPreferSuggestion:info];
        break;
      case 20:
        v19 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46E8]];

        [(VCTransportSessionIDS *)self handleReportingBlob:v19];
        break;
      case 21:

        [(VCTransportSessionIDS *)self handleEncryptionConfig:info];
        break;
      case 22:

        [(VCTransportSessionIDS *)self handlePathMTUChange:info];
        break;
      default:
        if (unsignedIntValue == 1001)
        {
          reportingSymptom();
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:];
            }
          }
        }

        else
        {
LABEL_19:
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v32 = v17;
              v33 = 2080;
              v34 = "[VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:]";
              v35 = 1024;
              v36 = 255;
              v37 = 1024;
              unsignedIntValue2 = [v6 unsignedIntValue];
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received unknown IDSDatagramChannelEvent %d", buf, 0x22u);
            }
          }
        }

        break;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:];
    }
  }
}

- (unsigned)remoteDeviceVersionIDS
{
  v18 = *MEMORY[0x1E69E9840];
  remoteFrameworkVersion = self->super._remoteFrameworkVersion;
  if (remoteFrameworkVersion)
  {
    intValue = [(NSString *)remoteFrameworkVersion intValue];
    if (intValue >= 1700)
    {
      if (intValue >= 0x71D)
      {
        if (intValue < 0x7AD)
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCTransportSessionIDS remoteDeviceVersionIDS]";
        v14 = 1024;
        v15 = 275;
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote device framework version IDS selected '%d'", &v10, 0x22u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "[VCTransportSessionIDS remoteDeviceVersionIDS]";
        v14 = 1024;
        v15 = 277;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote device framework version IDS is unknown", &v10, 0x1Cu);
      }
    }

    return 0;
  }

  return v4;
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__VCTransportSessionIDS_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __30__VCTransportSessionIDS_start__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = +[VCDatagramChannelManager sharedInstance];
  v30 = 0;
  v3 = *(a1 + 32);
  if (!*(v3 + 248) && *(v3 + 240) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __30__VCTransportSessionIDS_start__block_invoke_cold_6();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __30__VCTransportSessionIDS_start__block_invoke_cold_5();
      }
    }

    [GKVoiceChatError getNSError:&v30 code:32002 detailedCode:1101 filePath:0 description:@"Start VCTransportSessionIDS failed" reason:@"Destination/socket not set"];
  }

  else
  {
    v4 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:?];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __30__VCTransportSessionIDS_start__block_invoke_38;
    v28 = &unk_1E85F4AE0;
    v29 = v4;
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __30__VCTransportSessionIDS_start__block_invoke_2;
    v23 = &unk_1E85F6870;
    v24 = v6;
    v7 = *(v5 + 248);
    if (v7)
    {
      *(*(a1 + 32) + 232) = [(VCDatagramChannelManager *)v2 addDatagramChannelWithDestination:v7 eventHandler:&v25 writeCompletionHandler:&v20 dataPath:*(v5 + 260) error:&v30];
      if ([*(*(a1 + 32) + 248) hasPrefix:@"loopback:"])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v32 = v8;
            v33 = 2080;
            v34 = "[VCTransportSessionIDS start]_block_invoke_3";
            v35 = 1024;
            v36 = 331;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: Setting mode at init for VCMockIDSDatagramChannel instead of IDSDatagramChannel", buf, 0x1Cu);
          }
        }

        [*(*(a1 + 32) + 232) setOneToOneModeEnabled:objc_msgSend(objc_msgSend(*(a1 + 32) isInitiator:{"connectionManager"), "isOneToOneModeEnabled"), 0}];
      }
    }

    else
    {
      v10 = *(v5 + 240);
      if (v10 != -1)
      {
        *(*(a1 + 32) + 232) = [(VCDatagramChannelManager *)v2 addDatagramChannelWithDescriptor:v10 eventHandler:&v25 writeCompletionHandler:&v20 error:&v30];
      }
    }

    v11 = *(a1 + 32);
    if (!v11[29])
    {
      return [v11 callEventHandlerWithEvent:7 info:v30];
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(*(a1 + 32), "remoteDeviceVersionIDS")), @"preference-remote-device-version-key"}];
    v13 = *(a1 + 32);
    if (*(v13 + 256) == 1)
    {
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4750]];
      v13 = *(a1 + 32);
    }

    [*(v13 + 232) setChannelPreferences:v12];

    v14 = [*(*(a1 + 32) + 232) start];
    if (v14 < 0)
    {
      v18 = v14;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __30__VCTransportSessionIDS_start__block_invoke_cold_4();
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          __30__VCTransportSessionIDS_start__block_invoke_cold_3();
        }
      }

      [GKVoiceChatError getNSError:&v30 code:32002 detailedCode:1102 returnCode:v18 filePath:0 description:@"Could not start transport session" reason:@"datagramChannel start failed", v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
    }

    else
    {
      [*(*(a1 + 32) + 64) stopTimingForKey:12];
      [*(*(a1 + 32) + 64) startTimingForKey:13];
      [*(a1 + 32) setPiggybackBlobPreference];
      v15 = *(a1 + 32);
      if (v15[60] != -1)
      {
        v15[60] = -1;
        [*(*(a1 + 32) + 232) readyToRead];
        v15 = *(a1 + 32);
      }

      v16 = [v15 onStart];
      if ((v16 & 0x80000000) == 0)
      {
        return [*(a1 + 32) addNetworkAssertionWithInterfaceType:3];
      }

      v19 = v16;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __30__VCTransportSessionIDS_start__block_invoke_cold_2();
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          __30__VCTransportSessionIDS_start__block_invoke_cold_1();
        }
      }

      [GKVoiceChatError getNSError:&v30 code:32002 detailedCode:1103 returnCode:v19 filePath:0 description:@"Could not start transport session" reason:@"onStart failed", v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
    }

    [*(a1 + 32) cleanupDatagramChannel];
  }

  v11 = *(a1 + 32);
  return [v11 callEventHandlerWithEvent:7 info:v30];
}

void __30__VCTransportSessionIDS_start__block_invoke_38(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [objc_msgSend(*(a1 + 32) "strong")];

  objc_autoreleasePoolPop(v4);
}

- (void)stop
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCTransportSessionIDS;
  [(VCTransportSession *)&v5 stop];
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VCTransportSessionIDS_stop__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(stateQueue, v4);
}

void __29__VCTransportSessionIDS_stop__block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) onStop];
  [*(a1 + 32) cleanupDatagramChannel];
  [*(a1 + 32) removeNetworkAssertion];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VCTransportSessionIDS_stop__block_invoke_2;
  v4[3] = &unk_1E85F3778;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

- (void)cleanupDatagramChannel
{
  [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager removeDatagramChannel:"removeDatagramChannel:", self->_datagramChannel];

  self->_datagramChannel = 0;
}

- (void)startMKMRecoveryForParticipantIDs:(id)ds
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCTransportSessionIDS startMKMRecoveryForParticipantIDs:]";
      v11 = 1024;
      v12 = 417;
      v13 = 2112;
      dsCopy = ds;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start MKM recovery for pariticipantIDs %@", &v7, 0x26u);
    }
  }

  [(VCDatagramChannelIDS *)self->_datagramChannel startMKMRecoveryForParticipantIDs:ds];
}

- (void)setConnectionSetupPiggybackBlob:(id)blob
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCTransportSessionIDS_setConnectionSetupPiggybackBlob___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = blob;
  dispatch_async(stateQueue, block);
}

void __57__VCTransportSessionIDS_setConnectionSetupPiggybackBlob___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5[29])
  {

    [v5 setPiggybackBlobPreference];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCTransportSessionIDS setConnectionSetupPiggybackBlob:]_block_invoke";
      v13 = 1024;
      v14 = 428;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Caching piggyback blob %p", &v9, 0x26u);
    }
  }
}

- (void)setPiggybackBlobPreference
{
  v20[1] = *MEMORY[0x1E69E9840];
  connectionSetupPiggybackBlob = self->super._connectionSetupPiggybackBlob;
  if (connectionSetupPiggybackBlob)
  {
    v19 = *MEMORY[0x1E69A4758];
    v20[0] = connectionSetupPiggybackBlob;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (VRTraceGetErrorLogLevelForModule() > 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->super._connectionSetupPiggybackBlob;
        v8 = VCDatagramChannelIDS_Token(self->_datagramChannel);
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCTransportSessionIDS setPiggybackBlobPreference]";
        v13 = 1024;
        v14 = 437;
        v15 = 2048;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set piggyback blob %p on datagram channel %d", &v9, 0x2Cu);
      }
    }

    [(VCDatagramChannelIDS *)self->_datagramChannel setChannelPreferences:v4];
  }
}

- (id)connectionSetupPiggybackBlob
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCTransportSessionIDS_connectionSetupPiggybackBlob__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __53__VCTransportSessionIDS_connectionSetupPiggybackBlob__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)handleDefaultLinkUpdatedWithInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46B8]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCTransportSessionIDS handleDefaultLinkUpdatedWithInfo:]";
      v10 = 1024;
      v11 = 470;
      v12 = 1024;
      linkID = [v3 linkID];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: default link updated to %d", &v6, 0x22u);
    }
  }
}

- (void)handleRATChanged:(id)changed
{
  changedCopy = changed;
  v14 = *MEMORY[0x1E69E9840];
  if ([changed intValue] == 8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v5;
        v10 = 2080;
        v11 = "[VCTransportSessionIDS handleRATChanged:]";
        v12 = 1024;
        v13 = 481;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got 5G iRAT notification", &v8, 0x1Cu);
      }
    }
  }

  else
  {
    if (-[VCTransportSessionIDS remoteDeviceVersionIDS](self, "remoteDeviceVersionIDS") == 1 && ([changedCopy intValue] == 1009 || objc_msgSend(changedCopy, "intValue") == 1010))
    {
      changedCopy = &unk_1F5799C00;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{VCConnectionIDSCellTechForRATType(objc_msgSend(changedCopy, "intValue"))}];

    [(VCTransportSession *)self callEventHandlerWithEvent:8 info:v7];
  }
}

- (void)handleIDSEncryptionInfoEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316418;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCTransportSessionIDS handleIDSEncryptionInfoEvent:]";
      v11 = 1024;
      v12 = 500;
      v13 = 2048;
      selfCopy = self;
      v15 = 2080;
      v16 = "[VCTransportSessionIDS handleIDSEncryptionInfoEvent:]";
      v17 = 1024;
      v18 = 500;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [(VCTransportSession*)%p %s]:%d IDS channel encryption info", &v7, 0x36u);
    }
  }

  [(VCTransportSession *)self callEventHandlerWithEvent:11 info:event];
}

- (void)handleIDSMembershipChangeInfoEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316418;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCTransportSessionIDS handleIDSMembershipChangeInfoEvent:]";
      v11 = 1024;
      v12 = 506;
      v13 = 2048;
      selfCopy = self;
      v15 = 2080;
      v16 = "[VCTransportSessionIDS handleIDSMembershipChangeInfoEvent:]";
      v17 = 1024;
      v18 = 506;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [(VCTransportSession*)%p %s]:%d IDS channel membership change info", &v7, 0x36u);
    }
  }

  [(VCTransportSession *)self callEventHandlerWithEvent:12 info:event];
}

- (void)handleCellularSoMaskChanged:(id)changed
{
  if (changed)
  {
    unsignedIntValue = [changed unsignedIntValue];
    if ((unsignedIntValue & 4) != 0)
    {
      v5 = &unk_1F5799C18;
    }

    else if ((unsignedIntValue & 8) != 0)
    {
      v5 = &unk_1F5799C30;
    }

    else
    {
      if ((unsignedIntValue & 1) == 0)
      {
        return;
      }

      v5 = &unk_1F5799C00;
    }

    [(VCTransportSessionIDS *)self handleRATChanged:v5];
  }
}

- (void)setConnectionSetupTime
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCTransportSessionIDS_setConnectionSetupTime__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __47__VCTransportSessionIDS_setConnectionSetupTime__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) isValidTimingForKey:26];
  if (result)
  {
    [*(*(a1 + 32) + 64) timingForKey:26];
    v4 = v3;
    [*(*(a1 + 32) + 64) timingForKey:25];
    *&v5 = v4 - v5;
    v6 = *(*(a1 + 32) + 64);
    v7 = *&v5;

    return [v6 setTiming:14 forKey:v7];
  }

  return result;
}

- (void)handleChannelInfoReport:(id)report
{
  v16 = *MEMORY[0x1E69E9840];
  if ([report objectForKeyedSubscript:&unk_1F5799C48])
  {
    v5 = [objc_msgSend(report objectForKeyedSubscript:{&unk_1F5799C48), "integerValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCTransportSessionIDS handleChannelInfoReport:]";
        v12 = 1024;
        v13 = 557;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Callee's accept delay %d milliseconds", &v8, 0x22u);
      }
    }

    [(TimingCollection *)self->super._perfTimings setTiming:25 forKey:v5 / 1000.0];
    [(VCTransportSessionIDS *)self setConnectionSetupTime];
  }

  if ([report objectForKeyedSubscript:&unk_1F5799C60])
  {
    -[VCTransportSessionIDS setQuickRelayServerProvider:](self, "setQuickRelayServerProvider:", [objc_msgSend(report objectForKeyedSubscript:{&unk_1F5799C60), "integerValue"}]);
  }
}

uint64_t __62__VCTransportSessionIDS_processSessionBasedServerExperiments___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];

  *(*(a1 + 32) + 168) = [objc_msgSend(*(a1 + 40) "qrExperiments")];
  result = [*(*(a1 + 32) + 168) objectForKey:@"qrse_und2"];
  if (result)
  {
    v3 = [objc_msgSend(*(*(a1 + 32) + 168) objectForKeyedSubscript:{@"qrse_und2", "BOOLValue"}];
    v4 = @"transportSessionEventInfoIsUplinkRetransmissionSupported";
    v5[0] = [MEMORY[0x1E696AD98] numberWithBool:v3 ^ 1u];
    [*(a1 + 32) callEventHandlerWithEvent:21 info:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
    return [*(*(a1 + 32) + 72) setIsUplinkRetransmissionSupported:v3 ^ 1u];
  }

  return result;
}

- (void)handleReportingBlob:(id)blob
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = @"IDSCB";
    v16[0] = blob;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    reportingGenericEvent();
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v4;
          v9 = 2080;
          v10 = "[VCTransportSessionIDS handleReportingBlob:]";
          v11 = 1024;
          v12 = 607;
          v13 = 2112;
          blobCopy = blob;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received IDS reportingBlob=%@", &v7, 0x26u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [VCTransportSessionIDS handleReportingBlob:];
      }
    }
  }

  else
  {
    [VCTransportSessionIDS handleReportingBlob:];
  }
}

- (void)handleStatResponse:(id)response
{
  if (response)
  {
    connectionManager = self->super._connectionManager;

    [(VCConnectionManager *)connectionManager updateStatResponseResult:?];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCTransportSessionIDS handleStatResponse:];
    }
  }
}

- (void)handleEncryptionConfig:(id)config
{
  if (config)
  {
    connectionManager = self->super._connectionManager;

    [(VCConnectionManager *)connectionManager updateEncryptionConfig:?];
  }

  else
  {
    [VCTransportSessionIDS handleEncryptionConfig:];
  }
}

- (void)handlePathMTUChange:(id)change
{
  v5 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E69A4A40]), "unsignedCharValue"}];
  v6 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E69A4718]), "unsignedIntValue"}];
  connectionManager = self->super._connectionManager;

  [(VCConnectionManager *)connectionManager updatePathMTU:v6 linkID:v5];
}

+ (int)transportTypeForConnectionType:(int)type
{
  if (type > 7)
  {
    return 0;
  }

  else
  {
    return dword_1DBD491B0[type];
  }
}

- (int)getSignalStrengthBars:(int *)bars displayBars:(int *)displayBars maxDisplayBars:(int *)maxDisplayBars
{
  if (VCCTServiceMonitor_GetSignalStrength())
  {
    return -2144665596;
  }

  else
  {
    return 0;
  }
}

- (int)flushBasebandQueueForConnection:(id)connection payloadInfoList:(id)list
{
  v44 = *MEMORY[0x1E69E9840];
  if (!VCConnection_IsLocalOnCellular(connection))
  {
    return -2144665542;
  }

  selfCopy = self;
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(list, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [list countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = *v41;
    v24 = *MEMORY[0x1E69A4AE8];
    v23 = *MEMORY[0x1E69A4AE0];
    v9 = *MEMORY[0x1E69A4AF8];
    v10 = *MEMORY[0x1E69A4AF0];
    v11 = *MEMORY[0x1E69A4AD8];
    obj = list;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
        [v14 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushPayloadType", v24}];
        [v14 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushPayloadTypeFieldOffset", v23}];
        [v14 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushTransactionID", v9}];
        [v14 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushTimestamp", v10}];
        [v14 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", @"transportSessionBasebandQueueFlushCriterion", v11}];
        [v26 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v8);
  }

  v37 = *MEMORY[0x1E69A4728];
  v35[0] = *MEMORY[0x1E69A4A40];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(connection)];
  v35[1] = *MEMORY[0x1E69A4730];
  v36[0] = v15;
  v36[1] = v26;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [(VCDatagramChannelIDS *)selfCopy->_datagramChannel setChannelPreferences:v16];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (v16)
    {
      v20 = [objc_msgSend(v16 "description")];
    }

    else
    {
      v20 = "<nil>";
    }

    *buf = 136315906;
    v28 = v17;
    v29 = 2080;
    v30 = "[VCTransportSessionIDS flushBasebandQueueForConnection:payloadInfoList:]";
    v31 = 1024;
    v32 = 688;
    v33 = 2080;
    v34 = v20;
    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Baseband flush preference %s", buf, 0x26u);
  }

  return 0;
}

- (int)registerBasebandNotificationsForConnection:(id)connection
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69A4738];
  v5 = *MEMORY[0x1E69A4690];
  v9[0] = &unk_1F5799C78;
  v6 = *MEMORY[0x1E69A4698];
  v8[0] = v5;
  v8[1] = v6;
  v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._basebandNotificationRegistrationToken];
  v8[2] = *MEMORY[0x1E69A4A40];
  v9[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(connection)];
  v11[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  -[VCDatagramChannelIDS setChannelPreferences:](self->_datagramChannel, "setChannelPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  return 0;
}

- (void)deregisterBasebandNotifications
{
  v9[1] = *MEMORY[0x1E69E9840];
  registeredConnection = self->super._registeredConnection;
  v8 = *MEMORY[0x1E69A4738];
  v4 = *MEMORY[0x1E69A4690];
  v7[0] = &unk_1F5799C90;
  v5 = *MEMORY[0x1E69A4698];
  v6[0] = v4;
  v6[1] = v5;
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._basebandNotificationRegistrationToken];
  v6[2] = *MEMORY[0x1E69A4A40];
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(registeredConnection)];
  v9[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  -[VCDatagramChannelIDS setChannelPreferences:](self->_datagramChannel, "setChannelPreferences:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1]);
}

void __30__VCTransportSessionIDS_start__block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E6986650];
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315906;
        v11 = v6;
        v12 = 2080;
        v13 = "_VCTransportSessionIDS_writeCompletionHandler";
        v14 = 1024;
        v15 = 284;
        v16 = 2112;
        v17 = a2;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCTransportSessionIDS: failed to send data with error=%@", &v10, 0x26u);
      }
    }
  }

  else
  {
    VTP_IncrementTotalBytesSent(a3);
  }

  if (v4)
  {
    VCConnectionManager_UpdatePacketSendStatus(v4, a2 == 0);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v8 = *v5;
    v9 = *v5;
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_20();
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished sending %zd bytes with error=%@", &v10, 0x30u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_20();
      _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Finished sending %zd bytes with error=%@", &v10, 0x30u);
    }
  }
}

- (void)processSessionBasedServerExperiments:(id)experiments
{
  v13 = *MEMORY[0x1E69E9840];
  if (!experiments)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_18_6();
    v12 = 578;
    v9 = " [%s] %s:%d Empty connection info passed";
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
    return;
  }

  v4 = [experiments objectForKeyedSubscript:*MEMORY[0x1E69A46B0]];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_18_6();
    v12 = 581;
    v9 = " [%s] %s:%d Empty link context list passed";
    goto LABEL_16;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  if (v5)
  {
    v6 = v5;
    if ([v5 qrExperiments])
    {
      stateQueue = self->super._stateQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__VCTransportSessionIDS_processSessionBasedServerExperiments___block_invoke;
      v10[3] = &unk_1E85F37F0;
      v10[4] = self;
      v10[5] = v6;
      dispatch_async(stateQueue, v10);
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_18_6();
      v12 = 584;
      v9 = " [%s] %s:%d Empty link context passed";
      goto LABEL_16;
    }
  }
}

- (void)dispatchedProcessDatagramChannelEventInfo:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:]";
  v4 = 1024;
  v5 = 211;
  v6 = v0;
  v7 = "[VCTransportSessionIDS dispatchedProcessDatagramChannelEventInfo:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s, IDSDataChannelEventUsageError", v2, 0x26u);
}

- (void)dispatchedProcessDatagramChannelEventInfo:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d IDS eventHandler called without event type", v2, v3, v4, v5, v6);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x22u);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x22u);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x22u);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 303;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d IDS destination not set", v1, 0x1Cu);
}

void __30__VCTransportSessionIDS_start__block_invoke_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d IDS destination not set", v2, v3, v4, v5, v6);
}

- (void)handleReportingBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d IDS reporting blob must be a dictionary", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)handleReportingBlob:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

- (void)handleStatResponse:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Stat response received is invalid", v2, v3, v4, v5, v6);
}

- (void)handleEncryptionConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d eventInfo must not be nil", v2, v3, v4, v5, 2u);
    }
  }
}

@end