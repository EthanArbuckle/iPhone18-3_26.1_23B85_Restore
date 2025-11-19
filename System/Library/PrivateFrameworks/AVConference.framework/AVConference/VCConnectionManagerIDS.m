@interface VCConnectionManagerIDS
- (BOOL)addConnectionToConnectionArray:(id)a3;
- (BOOL)canOptOutAllStreamsForConnection:(id)a3;
- (BOOL)isEndToEndLinkAvailable;
- (BOOL)isEndToEndLinkWithCellAvailable:(BOOL)a3;
- (BOOL)shouldAcceptDataFromSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3;
- (BOOL)shouldDropCurrentPrimaryConnectionWithConnectionStats:(id *)a3;
- (BOOL)shouldReplaceConnection:(id)a3 withConnection:(id)a4;
- (BOOL)shouldUpdateServerBasedConnection:(id)a3;
- (VCConnectionManagerIDS)initWithMultiwayEnabled:(BOOL)a3;
- (id)connectionForDuplication;
- (id)getPrimaryConnectionToBeCompared;
- (int)addConnection:(id)a3;
- (int)removeConnection:(id)a3;
- (unsigned)downlinkBitrateCapForConnection:(id)a3;
- (unsigned)getByteCountWithIndex:(unsigned __int8)a3 isOutgoing:(BOOL)a4;
- (unsigned)getPacketCountWithIndex:(unsigned __int8)a3 isOutgoing:(BOOL)a4;
- (unsigned)oneToOneBitrateCapForConnectionWithType:(unsigned int)a3;
- (unsigned)uplinkAudioOnlyBitrateCapOneToOne:(id)a3;
- (unsigned)uplinkBitrateCapForConnection:(id)a3;
- (unsigned)uplinkBitrateCapOneToOne:(id)a3;
- (void)addDuplicationConnectionUpdateTelemetryWithSuggestedLinkTypeCombo:(id)a3 payload:(id)a4;
- (void)applyConstrainWithThreshold:(id)a3 inBandwidth:(unsigned int *)a4 thredshold:(unsigned int)a5;
- (void)dealloc;
- (void)didLinkProbingLockdownEnd;
- (void)didReceiveStatsResponse:(BOOL)a3;
- (void)didUpdateLinkPreferenceOrder:(id)a3;
- (void)flushLinkProbingStatusWithOptions:(id)a3;
- (void)handleSecondaryConnectionRemoved;
- (void)internalUpdateOneToOneBitrateCapsForConnection:(id)a3;
- (void)optOutAllStreamsForNonPrimaryConnections;
- (void)queryProbingResultsWithOptions:(id)a3;
- (void)removeFromConnectionArray:(id)a3;
- (void)reportActiveConnectionOneToOne:(id)a3 isAudioOnly:(BOOL)a4;
- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4;
- (void)reportCurrentPrimaryConnection;
- (void)reportFirstActiveConnectionOneToOne:(id)a3 remoteOSVersion:(id)a4 redState:(BOOL)a5 isAudioOnly:(BOOL)a6;
- (void)reportPathMTU:(id)a3;
- (void)requestStatsWithOptions:(id)a3;
- (void)reselectPrimaryConnection;
- (void)resetPacketCountAndByteCountWithConnection:(id)a3;
- (void)resetParticipantGenerationCounter;
- (void)setOptIntoExistingSubscribedStreams:(BOOL)a3;
- (void)setPreferredLocalInterfaceForDuplication:(unsigned __int8)a3;
- (void)setUpVTable;
- (void)startActiveProbingWithOptions:(id)a3;
- (void)stopActiveProbingWithOptions:(id)a3;
- (void)updateAllBitrateCapsForConnection:(id)a3;
- (void)updateAllBitrateCapsForConnectionInternal:(id)a3;
- (void)updateCellularMTU:(int)a3;
- (void)updateCellularTech:(int)a3 forLocalInterface:(BOOL)a4;
- (void)updateConnectionSelectionPolicyWithPreferE2E:(BOOL)a3;
- (void)updateDuplicationStateWithConnectionOperation:(int)a3 isLocalOnWiFi:(BOOL)a4 isRemoteOnWiFi:(BOOL)a5;
- (void)updateEncryptionConfig:(id)a3;
- (void)updateOneToOneBitrateCapsForConnection:(id)a3;
- (void)updatePathMTU:(unsigned __int16)a3 linkID:(unsigned __int8)a4;
- (void)updateSessionStats:(unsigned __int16)a3;
@end

@implementation VCConnectionManagerIDS

- (void)setUpVTable
{
  self->super._vTable.copyConnection = _VCConnectionManagerIDS_CopyConnection;
  self->super._vTable.updateConnectionForDuplication = _VCConnectionManagerIDS_UpdateConnectionForDuplication;
  self->super._vTable.synchronizeParticipantGenerationCounter = _VCConnectionManagerIDS_SynchronizeParticipantGenerationCounter;
  self->super._vTable.isSourceOnCellularIPv6 = _VCConnectionManagerIDS_IsSourceOnCellularIPv6;
  self->super._vTable.copyPrimaryConnection = _VCConnectionManagerIDS_CopyPrimaryConnection;
  self->super._vTable.setPrimaryConnection = _VCConnectionManagerIDS_SetPrimaryConnection;
  self->super._vTable.updatePacketAndByteCount = _VCConnectionManagerIDS_UpdatePacketAndByteCount;
  self->super._vTable.updatePersistentPacketCounts = _VCConnectionManagerIDS_UpdatePersistentPacketCounts;
  self->super._vTable.addLinkProbingTelemetry = _VCConnectionManagerIDS_AddLinkProbingTelemetry_0;
}

- (VCConnectionManagerIDS)initWithMultiwayEnabled:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCConnectionManagerIDS;
  v4 = [(VCConnectionManager *)&v11 init];
  if (v4)
  {
    v4->super._statsRecorder = objc_alloc_init(VCStatsRecorder);
    v4->_multiwayBitrateArbiter = objc_alloc_init(VCSessionBitrateArbiter);
    v4->_oneToOneBitrateArbiter = [[VCBitrateArbiter alloc] initWithDeviceRole:0 callLogFile:0];
    v4->_isMultiwaySession = a3;
    v4->super._connectionSelector = [[VCConnectionSelector alloc] initWithMultiwayEnabled:v4->_isMultiwaySession];
    v5 = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-core-motion-detection-enabled" userDefaultKey:@"coreMotionDetectionEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseCoreMotionDetection"];
    v4->_enableCoreMotionDetection = v5;
    if (v5)
    {
      v4->super._coreMotionManager = [[VCCoreMotionManager alloc] initWithDelegate:v4];
    }

    v4->super._enableMotionBasedDuplication = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-motion-based-duplication-enabled" userDefaultKey:@"motionBasedDuplicationEnabled" featureFlagDomain:"AVConference" featureFlagName:"EnableMotionBasedDuplication"];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        enableCoreMotionDetection = v4->_enableCoreMotionDetection;
        enableMotionBasedDuplication = v4->super._enableMotionBasedDuplication;
        *buf = 136316162;
        v13 = v6;
        v14 = 2080;
        v15 = "[VCConnectionManagerIDS initWithMultiwayEnabled:]";
        v16 = 1024;
        v17 = 76;
        v18 = 1024;
        v19 = enableCoreMotionDetection;
        v20 = 1024;
        v21 = enableMotionBasedDuplication;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enableCoreMotionDetection=%d enableMotionBasedDuplication=%d", buf, 0x28u);
      }
    }

    v4->super._isRTXSupported = 1;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCConnectionManagerIDS;
  [(VCConnectionManager *)&v3 dealloc];
}

- (void)reportActiveConnectionOneToOne:(id)a3 isAudioOnly:(BOOL)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 localConnectionType]);
    v7 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 remoteConnectionType]);
  }

  else
  {
    v6 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:1];
    v7 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:0];
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v11[0] = @"localBitrateCap";
  v12[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1000 * v6];
  v11[1] = @"remoteBitrateCap";
  v12[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1000 * v8];
  v11[2] = @"connectionDataMode";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_GetDataMode(a3)];
  v10 = [v9 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  VCConnectionIDS_ReportingSatelliteNetwork(a3, v10);
  reportingGenericEvent();
}

- (void)reportFirstActiveConnectionOneToOne:(id)a3 remoteOSVersion:(id)a4 redState:(BOOL)a5 isAudioOnly:(BOOL)a6
{
  v6 = a5;
  v16[5] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v10 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 localConnectionType]);
    v11 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 remoteConnectionType]);
  }

  else
  {
    v10 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:1];
    v11 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:0];
  }

  v12 = v11;
  v15[0] = @"RedState";
  v16[0] = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v15[1] = @"WAState";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[VCWifiAssistManager wifiAssistState](+[VCWifiAssistManager sharedInstance](VCWifiAssistManager, "sharedInstance"), "wifiAssistState")}];
  v14 = @"unknown";
  if (a4)
  {
    v14 = a4;
  }

  v16[1] = v13;
  v16[2] = v14;
  v15[2] = @"REMBUILD";
  v15[3] = @"localBitrateCap";
  v16[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1000 * v10];
  v15[4] = @"remoteBitrateCap";
  v16[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1000 * v12];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  reportingGenericEvent();
}

- (unsigned)uplinkAudioOnlyBitrateCapOneToOne:(id)a3
{
  v5 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 localConnectionType]);
  v6 = -[VCBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:](self->_oneToOneBitrateArbiter, "maxAllowedAudioOnlyBitrateForConnection:", [a3 remoteConnectionType]);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 40;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  return 1000 * v7;
}

- (unsigned)uplinkBitrateCapOneToOne:(id)a3
{
  v5 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:1];
  v6 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:0];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 100;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  v8 = 1000 * v7;
  v9 = 1000 * -[VCConnectionManagerIDS oneToOneBitrateCapForConnectionWithType:](self, "oneToOneBitrateCapForConnectionWithType:", [a3 type]);
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

- (unsigned)oneToOneBitrateCapForConnectionWithType:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 - 3 > 1)
  {
    return 0;
  }

  v4 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateTCPRelay];
  if (v4)
  {
    v5 = v4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCConnectionManagerIDS oneToOneBitrateCapForConnectionWithType:]";
        v15 = 1024;
        v16 = 151;
        v17 = 1024;
        v18 = v5;
        v8 = " [%s] %s:%d TCP connectionLimitedBitrate=%u";
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x22u);
      }
    }
  }

  else
  {
    v5 = [(VCBitrateArbiter *)self->_oneToOneBitrateArbiter maxAllowedBitrateWifi];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v10;
        v13 = 2080;
        v14 = "[VCConnectionManagerIDS oneToOneBitrateCapForConnectionWithType:]";
        v15 = 1024;
        v16 = 154;
        v17 = 1024;
        v18 = v5;
        v8 = " [%s] %s:%d Use general wifi relay connectionLimitedBitrate=%u for TCP";
        goto LABEL_11;
      }
    }
  }

  return v5;
}

- (void)applyConstrainWithThreshold:(id)a3 inBandwidth:(unsigned int *)a4 thredshold:(unsigned int)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ([(VCConnectionManager *)self shouldLimitMultiwayBandwidthWhenConstrained]&& *a4 > a5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a4;
          v10 = 136316162;
          v11 = v7;
          v12 = 2080;
          v13 = "[VCConnectionManagerIDS applyConstrainWithThreshold:inBandwidth:thredshold:]";
          v14 = 1024;
          v15 = 166;
          v16 = 1024;
          v17 = v9;
          v18 = 1024;
          v19 = a5;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isConstrained, limit from inBandwidth=%u to threshold=%u", &v10, 0x28u);
        }
      }

      *a4 = a5;
    }
  }

  else
  {
    [VCConnectionManagerIDS applyConstrainWithThreshold:? inBandwidth:? thredshold:?];
  }
}

- (unsigned)uplinkBitrateCapForConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v5 = [a3 localConnectionType];
  if (v5 <= 7)
  {
    if (((1 << v5) & 0xB8) != 0)
    {
LABEL_3:
      v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrateWiFiUplink];
LABEL_4:
      v7 = v6;
      v11 = v6;
      goto LABEL_5;
    }

    if (((1 << v5) & 0x44) != 0)
    {
      IsLocalExpensive = VCConnection_IsLocalExpensive(a3);
      multiwayBitrateArbiter = self->_multiwayBitrateArbiter;
      if (IsLocalExpensive)
      {
        v6 = [(VCSessionBitrateArbiter *)multiwayBitrateArbiter maxBitrateExpensiveUplink];
      }

      else
      {
        v6 = [(VCSessionBitrateArbiter *)multiwayBitrateArbiter maxBitrateNonExpensiveUplink];
      }

      goto LABEL_4;
    }

    if (v5 == 1)
    {
      v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrate3GUplink];
      goto LABEL_4;
    }
  }

  if (v5 == -1)
  {
    goto LABEL_3;
  }

  v7 = 0;
  if (!v5)
  {
    v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrate2GUplink];
    goto LABEL_4;
  }

LABEL_5:
  if (VCConnection_IsLocalConstrained(a3))
  {
    [(VCConnectionManagerIDS *)self applyConstrainWithThreshold:a3 inBandwidth:&v11 thredshold:[(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrateExpensiveUplink]];
    return v11;
  }

  return v7;
}

- (unsigned)downlinkBitrateCapForConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v5 = [a3 localConnectionType];
  if (v5 <= 7)
  {
    if (((1 << v5) & 0xB8) != 0)
    {
LABEL_3:
      v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrateWiFiDownlink];
LABEL_4:
      v7 = v6;
      v11 = v6;
      goto LABEL_5;
    }

    if (((1 << v5) & 0x44) != 0)
    {
      IsLocalExpensive = VCConnection_IsLocalExpensive(a3);
      multiwayBitrateArbiter = self->_multiwayBitrateArbiter;
      if (IsLocalExpensive)
      {
        v6 = [(VCSessionBitrateArbiter *)multiwayBitrateArbiter maxBitrateExpensiveDownlink];
      }

      else
      {
        v6 = [(VCSessionBitrateArbiter *)multiwayBitrateArbiter maxBitrateNonExpensiveDownlink];
      }

      goto LABEL_4;
    }

    if (v5 == 1)
    {
      v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrate3GDownlink];
      goto LABEL_4;
    }
  }

  if (v5 == -1)
  {
    goto LABEL_3;
  }

  v7 = 0;
  if (!v5)
  {
    v6 = [(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrate2GDownlink];
    goto LABEL_4;
  }

LABEL_5:
  if (VCConnection_IsLocalConstrained(a3))
  {
    [(VCConnectionManagerIDS *)self applyConstrainWithThreshold:a3 inBandwidth:&v11 thredshold:[(VCSessionBitrateArbiter *)self->_multiwayBitrateArbiter maxBitrateExpensiveDownlink]];
    return v11;
  }

  return v7;
}

- (int)addConnection:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCConnectionManagerIDS-addConnection");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v50 = v5;
      v51 = 2080;
      v52 = "[VCConnectionManagerIDS addConnection:]";
      v53 = 1024;
      v54 = 229;
      v55 = 2048;
      v56 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCConnectionManagerIDS-addConnection (%p)", buf, 0x26u);
    }
  }

  if (a3)
  {
    pthread_rwlock_wrlock(&self->super._stateRWlock);
    if ([(VCConnectionManagerIDS *)self addConnectionToConnectionArray:a3])
    {
      [(VCConnectionManagerIDS *)self updateAllBitrateCapsForConnectionInternal:a3];
      [a3 setP2pEncryptionExperimentEnabled:self->super._p2pEncryptionExperimentEnabled];
      v7 = [(VCConnectionManagerIDS *)self lastPrimaryConnectionInUse];
      v8 = !self->_isMultiwaySession || [(VCConnectionManager *)self isOneToOneModeEnabled];
      v10 = [(VCConnectionSelector *)self->super._connectionSelector selectPrimaryAndSecondaryWithConnection:a3 isEndToEnd:v8];
      VCConnectionManager_UpdateConnectionForDuplication(self);
      if ([(VCConnectionManagerIDS *)self shouldUpdateServerBasedConnection:a3])
      {
        [(VCConnectionSelector *)self->super._connectionSelector updateSelectedConnectionsForGroupType:0 connectionAdded:a3];
        if (self->_optIntoExistingSubscribedStreams)
        {
          [(VCConnectionManagerDelegate *)[(VCConnectionManager *)self delegate] optIntoExistingSubscribedStreamsForConnection:a3];
        }

        v11 = [(VCConnectionSelector *)self->super._connectionSelector connectionForGroupType:0 isPrimary:1];
        if (v11)
        {
          -[VCLinkProbingHandler setQRLinkID:](self->super._linkProbingHandler, "setQRLinkID:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(v11)]);
        }
      }

      if (v10)
      {
        isInitialConnectionEstablished = self->super._isInitialConnectionEstablished;
        if (isInitialConnectionEstablished && [(NSMutableArray *)self->super._connectionArray count]== 1 && [(VCConnectionManager *)self isOneToOneModeEnabled])
        {
          delegateQueue = self->super._delegateQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__VCConnectionManagerIDS_addConnection___block_invoke_2;
          block[3] = &unk_1E85F3778;
          block[4] = self;
          dispatch_async(delegateQueue, block);
        }

        v14 = VCConnectionManager_CopyPrimaryConnection(self);
        v15 = VCConnection_Priority(a3);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v18 = "SECONDARY";
            if (v15 == 2)
            {
              v18 = "PRIMARY";
            }

            v42 = v18;
            v41 = [objc_msgSend(a3 "description")];
            if (v14)
            {
              v40 = [objc_msgSend(v14 "description")];
            }

            else
            {
              v40 = "<nil>";
            }

            if ([(VCConnectionManagerIDS *)self secondaryConnection])
            {
              v30 = [objc_msgSend(-[VCConnectionManagerIDS secondaryConnection](self "secondaryConnection")];
            }

            else
            {
              v30 = "<nil>";
            }

            *buf = 136316674;
            v50 = v16;
            v51 = 2080;
            v52 = "[VCConnectionManagerIDS addConnection:]";
            v53 = 1024;
            v54 = 292;
            v55 = 2080;
            v56 = v42;
            v57 = 2080;
            v58 = v41;
            v59 = 2080;
            v60 = v40;
            v61 = 2080;
            v62 = v30;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: add result %s IDS connection %s. Primary: %s, secondary: %s", buf, 0x44u);
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }

        [(VCConnectionManager *)self checkpointPrimaryConnection:a3];
        if (v15 == 2)
        {
          if (v7)
          {
            [(VCConnectionManager *)self primaryConnectionChanged:a3 oldPrimaryConnection:v7];
          }

          else
          {
            [(VCConnectionManager *)self configureNWConnectionMonitor:a3];
            IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
            self->super._isPrimaryLocalUsingCell = IsLocalOnCellular;
            VCConnectionManager_UseCellPrimaryInterface(self, IsLocalOnCellular);
          }
        }

        v32 = self->super._delegateQueue;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __40__VCConnectionManagerIDS_addConnection___block_invoke_51;
        v43[3] = &unk_1E85F37C8;
        v43[4] = self;
        v43[5] = a3;
        v44 = !isInitialConnectionEstablished;
        dispatch_async(v32, v43);
        if (!self->super._isInitialConnectionEstablished)
        {
          self->super._isInitialConnectionEstablished = 1;
        }

        if (self->super._duplicationPending && VCConnectionManager_GetNumberOfConnectionsInternal(self) >= 2)
        {
          VCConnectionManager_SetDuplicationEnabledInternal(self, 1);
        }

        [(VCConnectionManagerIDS *)self reportConnection:a3 isInitialConnection:!isInitialConnectionEstablished];
        [(VCConnectionManager *)self reportConnectionUpdateWithRespCode:0];
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v48 = 0;
          connectionArray = self->super._connectionArray;
          if (connectionArray)
          {
            v34 = [-[NSMutableArray description](connectionArray "description")];
            connectionArray = self->super._connectionArray;
          }

          else
          {
            v34 = "<nil>";
          }

          asprintf(&v48, "HandoverReport: connection array %s has %lu connections", v34, [(NSMutableArray *)connectionArray count]);
          if (v48)
          {
            __lasts = 0;
            v35 = strtok_r(v48, "\n", &__lasts);
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
                  v50 = v37;
                  v51 = 2080;
                  v52 = "[VCConnectionManagerIDS addConnection:]";
                  v53 = 1024;
                  v54 = 326;
                  v55 = 2080;
                  v56 = "";
                  v57 = 2080;
                  v58 = v35;
                  _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v35 = strtok_r(0, "\n", &__lasts);
            }

            while (v35);
            free(v48);
          }
        }

        p_stateRWlock = &self->super._stateRWlock;
        goto LABEL_74;
      }

      VCConnection_SetPriority(a3, -1);

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = [objc_msgSend(a3 "description")];
          *buf = 136315906;
          v50 = v19;
          v51 = 2080;
          v52 = "[VCConnectionManagerIDS addConnection:]";
          v53 = 1024;
          v54 = 267;
          v55 = 2080;
          v56 = v21;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: add result backup IDS connection %s", buf, 0x26u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v48 = 0;
        v22 = self->super._connectionArray;
        if (v22)
        {
          v23 = [-[NSMutableArray description](v22 "description")];
          v22 = self->super._connectionArray;
        }

        else
        {
          v23 = "<nil>";
        }

        asprintf(&v48, "HandoverReport: connection array %s has %lu connections", v23, [(NSMutableArray *)v22 count]);
        if (v48)
        {
          __lasts = 0;
          v24 = strtok_r(v48, "\n", &__lasts);
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
                v50 = v26;
                v51 = 2080;
                v52 = "[VCConnectionManagerIDS addConnection:]";
                v53 = 1024;
                v54 = 268;
                v55 = 2080;
                v56 = "";
                v57 = 2080;
                v58 = v24;
                _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v24 = strtok_r(0, "\n", &__lasts);
          }

          while (v24);
          free(v48);
        }
      }

      if ([(VCConnectionManagerIDS *)self canOptOutAllStreamsForConnection:a3])
      {
        v28 = self->super._delegateQueue;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __40__VCConnectionManagerIDS_addConnection___block_invoke;
        v46[3] = &unk_1E85F37F0;
        v46[4] = self;
        v46[5] = a3;
        dispatch_async(v28, v46);
      }

      [(VCConnectionManager *)self reportConnectionUpdateWithRespCode:0];
    }

    p_stateRWlock = &self->super._stateRWlock;
LABEL_74:
    pthread_rwlock_unlock(p_stateRWlock);
    return 0;
  }

  v9 = -2144796671;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManagerIDS addConnection:];
    }
  }

  return v9;
}

uint64_t __40__VCConnectionManagerIDS_addConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 optOutAllStreamsForConnection:v3];
}

uint64_t __40__VCConnectionManagerIDS_addConnection___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];

  return [v1 setRemoteDeviceVersionIDS];
}

uint64_t __40__VCConnectionManagerIDS_addConnection___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 connectionCallback:v3 isInitialConnection:v4];
}

- (void)reselectPrimaryConnection
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 358;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d HandoverReport: no connection available after link is removed!", v1, 0x1Cu);
}

- (void)handleSecondaryConnectionRemoved
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 399;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d HandoverReport: no secondary connection available after link is removed!", v1, 0x1Cu);
}

- (int)removeConnection:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
    pthread_rwlock_wrlock(&self->super._stateRWlock);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    connectionArray = self->super._connectionArray;
    v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(connectionArray);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          if (VCConnection_Equal(v11, a3))
          {
            v12 = v11;
            [(VCConnectionManagerIDS *)self removeFromConnectionArray:v11];
            v13 = VCConnection_Priority(v11);
            if ((v13 & 0xFFFFFFFE) == 2)
            {
              [(VCConnectionManagerIDS *)self handlePrimaryConnectionRemoved];
            }

            else if (v13 <= 1)
            {
              [(VCConnectionManagerIDS *)self handleSecondaryConnectionRemoved];
            }

            goto LABEL_19;
          }
        }

        v8 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    if ([(VCConnectionManagerIDS *)self shouldUpdateServerBasedConnection:a3])
    {
      [(VCConnectionSelector *)self->super._connectionSelector updateSelectedConnectionsForGroupType:0 connectionRemoved:a3 connectionArray:self->super._connectionArray];
      if (self->_optIntoExistingSubscribedStreams)
      {
        [(VCConnectionManagerDelegate *)[(VCConnectionManager *)self delegate] optOutAllStreamsForConnection:a3];
      }

      v15 = [(VCConnectionSelector *)self->super._connectionSelector connectionForGroupType:0 isPrimary:1];
      if (v15)
      {
        -[VCLinkProbingHandler setQRLinkID:](self->super._linkProbingHandler, "setQRLinkID:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnectionIDS_LinkID(v15)]);
      }
    }

    VCConnectionManager_UpdateConnectionForDuplication(self);
    [(VCConnectionManagerIDS *)self resetPacketCountAndByteCountWithConnection:a3];
    [(VCConnectionManager *)self reportConnectionUpdateWithResponseCode:1 delay:2.0];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v16 = self->super._connectionArray;
      if (v16)
      {
        v17 = [-[NSMutableArray description](v16 "description")];
        v16 = self->super._connectionArray;
      }

      else
      {
        v17 = "<nil>";
      }

      asprintf(&__str, "HandoverReport: connection array %s has %lu connections", v17, [(NSMutableArray *)v16 count]);
      if (__str)
      {
        __lasts = 0;
        v18 = strtok_r(__str, "\n", &__lasts);
        v19 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *v19;
            if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v26 = v20;
              v27 = 2080;
              v28 = "[VCConnectionManagerIDS removeConnection:]";
              v29 = 1024;
              v30 = 446;
              v31 = 2080;
              v32 = "";
              v33 = 2080;
              v34 = v18;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v18 = strtok_r(0, "\n", &__lasts);
        }

        while (v18);
        free(__str);
      }
    }

    pthread_rwlock_unlock(&self->super._stateRWlock);

    return 0;
  }

  else
  {
    v14 = -2144796671;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCConnectionManagerIDS removeConnection:];
      }
    }
  }

  return v14;
}

- (void)resetParticipantGenerationCounter
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->super._delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__VCConnectionManagerIDS_resetParticipantGenerationCounter__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

uint64_t __59__VCConnectionManagerIDS_resetParticipantGenerationCounter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];

  return [v1 resetParticipantGenerationCounter];
}

- (void)optOutAllStreamsForNonPrimaryConnections
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_optIntoExistingSubscribedStreams)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = v3;
        v20 = 2080;
        v21 = "[VCConnectionManagerIDS optOutAllStreamsForNonPrimaryConnections]";
        v22 = 1024;
        v23 = 507;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Opting out all streams for non primary connections!", buf, 0x1Cu);
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    connectionArray = self->super._connectionArray;
    v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(connectionArray);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (VCConnection_Priority(v10) != 2)
          {
            delegateQueue = self->super._delegateQueue;
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __66__VCConnectionManagerIDS_optOutAllStreamsForNonPrimaryConnections__block_invoke;
            v12[3] = &unk_1E85F37F0;
            v12[4] = self;
            v12[5] = v10;
            dispatch_async(delegateQueue, v12);
          }
        }

        v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v7);
    }
  }
}

uint64_t __66__VCConnectionManagerIDS_optOutAllStreamsForNonPrimaryConnections__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 optOutAllStreamsForConnection:v3];
}

- (unsigned)getPacketCountWithIndex:(unsigned __int8)a3 isOutgoing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v7 = &OBJC_IVAR___VCConnectionManagerIDS__receivedPacketCount;
  if (v4)
  {
    v7 = &OBJC_IVAR___VCConnectionManagerIDS__sentPacketCount;
  }

  v8 = *(&self->super.super.isa + 4 * v5 + *v7);
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v8;
}

- (unsigned)getByteCountWithIndex:(unsigned __int8)a3 isOutgoing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v7 = &OBJC_IVAR___VCConnectionManagerIDS__receivedByteCount;
  if (v4)
  {
    v7 = &OBJC_IVAR___VCConnectionManagerIDS__sentByteCount;
  }

  v8 = *(&self->super.super.isa + 4 * v5 + *v7);
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v8;
}

- (id)getPrimaryConnectionToBeCompared
{
  v2 = VCConnectionManager_CopyPrimaryConnection(self);

  return v2;
}

- (void)updateCellularMTU:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionArray = self->super._connectionArray;
  v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(connectionArray);
        }

        [*(*(&v11 + 1) + 8 * i) setConnectionMTU:v3];
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)updateAllBitrateCapsForConnection:(id)a3
{
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  [(VCConnectionManagerIDS *)self updateAllBitrateCapsForConnectionInternal:a3];

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)updateAllBitrateCapsForConnectionInternal:(id)a3
{
  [a3 setUplinkBitrateCap:{-[VCConnectionManagerIDS uplinkBitrateCapForConnection:](self, "uplinkBitrateCapForConnection:")}];
  [a3 setDownlinkBitrateCap:{-[VCConnectionManagerIDS downlinkBitrateCapForConnection:](self, "downlinkBitrateCapForConnection:", a3)}];
  [a3 setUplinkAudioBitrateCapOneToOne:{-[VCConnectionManagerIDS uplinkAudioOnlyBitrateCapOneToOne:](self, "uplinkAudioOnlyBitrateCapOneToOne:", a3)}];
  v5 = [(VCConnectionManagerIDS *)self uplinkBitrateCapOneToOne:a3];

  [a3 setUplinkBitrateCapOneToOne:v5];
}

- (void)updateCellularTech:(int)a3 forLocalInterface:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectionArray = self->super._connectionArray;
  v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(connectionArray);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4)
        {
          VCConnection_SetLocalCellTech(v11);
          [(VCConnectionManagerIDS *)self updateAllBitrateCapsForConnectionInternal:v11];
        }

        else
        {
          VCConnection_SetRemoteCellTech(v11);
          [(VCConnectionManagerIDS *)self internalUpdateOneToOneBitrateCapsForConnection:v11];
        }
      }

      v8 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)updateOneToOneBitrateCapsForConnection:(id)a3
{
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  [(VCConnectionManagerIDS *)self internalUpdateOneToOneBitrateCapsForConnection:a3];

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)internalUpdateOneToOneBitrateCapsForConnection:(id)a3
{
  [a3 setUplinkAudioBitrateCapOneToOne:{-[VCConnectionManagerIDS uplinkAudioOnlyBitrateCapOneToOne:](self, "uplinkAudioOnlyBitrateCapOneToOne:")}];
  v5 = [(VCConnectionManagerIDS *)self uplinkBitrateCapOneToOne:a3];

  [a3 setUplinkBitrateCapOneToOne:v5];
}

- (void)setPreferredLocalInterfaceForDuplication:(unsigned __int8)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  if (self->super._preferredLocalInterfaceForDuplication == v3)
  {

    pthread_rwlock_unlock(&self->super._stateRWlock);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = "Cellular";
        v9 = v5;
        v8 = 136315906;
        v11 = "[VCConnectionManagerIDS setPreferredLocalInterfaceForDuplication:]";
        v10 = 2080;
        if (!v3)
        {
          v7 = "WiFi";
        }

        v12 = 1024;
        v13 = 602;
        v14 = 2080;
        v15 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updated preferred local interface for duplication to %s", &v8, 0x26u);
      }
    }

    self->super._preferredLocalInterfaceForDuplication = v3;
    VCConnectionManager_UpdateConnectionForDuplication(self);
    pthread_rwlock_unlock(&self->super._stateRWlock);
  }
}

- (void)updateSessionStats:(unsigned __int16)a3
{
  v3 = a3;
  v5 = VCConnectionManager_CopyConnectionForQuality(self, 1);
  if (v5)
  {
    v6 = v5;
    v7 = VCConnectionIDS_LinkID(v5);
    [(VCStatsRecorder *)self->super._statsRecorder updateSessionStats:v3 connection:v6 totalPacketSent:[(VCConnectionManagerIDS *)self getPacketCountWithIndex:v7 isOutgoing:1] totalPacketReceived:[(VCConnectionManagerIDS *)self getPacketCountWithIndex:v7 isOutgoing:0]];

    CFRelease(v6);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManagerIDS updateSessionStats:];
    }
  }
}

- (void)updateEncryptionConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  -[VCConnectionManager setGecoVersion:](self, "setGecoVersion:", [a3 objectForKeyedSubscript:*MEMORY[0x1E69A4FF0]]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      gecoVersion = self->super._gecoVersion;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnectionManagerIDS updateEncryptionConfig:]";
      v11 = 1024;
      v12 = 729;
      v13 = 2112;
      v14 = gecoVersion;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reported GECO version=%@", &v7, 0x26u);
    }
  }
}

- (void)reportPathMTU:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->super._enableDuplication)
  {
    v4 = [(VCConnectionManagerIDS *)self connectionForDuplication];
  }

  else
  {
    v4 = VCConnectionManager_CopyPrimaryConnection(self);
  }

  v5 = [v4 pathMTU];
  [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", v5), @"PMTU"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCConnectionManagerIDS reportPathMTU:]";
      v12 = 1024;
      v13 = 738;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reported path MTU=%u", &v8, 0x22u);
    }
  }
}

- (void)addDuplicationConnectionUpdateTelemetryWithSuggestedLinkTypeCombo:(id)a3 payload:(id)a4
{
  if ([(VCConnectionManagerIDS *)self connectionForDuplication])
  {
    v7 = [(VCConnectionManagerIDS *)self connectionForDuplication];

    VCConnectionManager_AddDuplicationSelectionLogicTelemetryForConnection(self, v7, a3, a4);
  }
}

- (void)resetPacketCountAndByteCountWithConnection:(id)a3
{
  v4 = VCConnectionIDS_LinkID(a3);
  self->_sentPacketCount[v4] = 0;
  self->_sentByteCount[v4] = 0;
  self->_receivedPacketCount[v4] = 0;
  self->_receivedByteCount[v4] = 0;
}

- (BOOL)shouldReplaceConnection:(id)a3 withConnection:(id)a4
{
  IsRelay = VCConnection_IsRelay(a4);
  if (IsRelay != VCConnection_IsRelay(a3) || (IsRelay = VCConnection_IsIPv6(a4), IsRelay != VCConnection_IsIPv6(a3)))
  {
    LOBYTE(v8) = IsRelay ^ 1;
    return v8;
  }

  connectionSelectionVersion = self->super._connectionSelectionVersion;
  if ((connectionSelectionVersion - 3) < 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      [VCConnectionManagerIDS shouldReplaceConnection:withConnection:];
    }

    goto LABEL_11;
  }

  if (connectionSelectionVersion != 2)
  {
LABEL_11:
    LOBYTE(v8) = 0;
    return v8;
  }

  LOBYTE(v8) = [objc_msgSend(objc_msgSend(a3 "connectionUUID")] == 1;
  return v8;
}

- (void)updatePathMTU:(unsigned __int16)a3 linkID:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectionArray = self->super._connectionArray;
  v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(connectionArray);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (VCConnectionIDS_LinkID(v11) == v4)
        {
          [v11 setPathMTU:v5];
          return;
        }
      }

      v8 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }
}

- (BOOL)addConnectionToConnectionArray:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  connectionArray = self->super._connectionArray;
  v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(connectionArray);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        if (!VCConnectionIDS_LinkID(v10))
        {
          v11 = VCConnectionManager_CopyPrimaryConnection(self);
          if (VCConnection_Equal(v11, v10))
          {
            VCConnectionManager_SetPrimaryConnection(self);
          }

          else if (VCConnection_Equal([(VCConnectionManagerIDS *)self secondaryConnection], v10))
          {
            [(VCConnectionManagerIDS *)self setSecondaryConnection:0];
          }

          if (v11)
          {
            CFRelease(v11);
          }

          [(VCConnectionManagerIDS *)self removeFromConnectionArray:v10];
          goto LABEL_17;
        }
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = self->super._connectionArray;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v45 objects:v44 count:16, 336];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_49;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v46;
LABEL_19:
  v17 = 0;
  while (1)
  {
    if (*v46 != v16)
    {
      objc_enumerationMutation(v12);
    }

    v18 = *(*(&v45 + 1) + 8 * v17);
    if (VCConnection_Equal(a3, v18))
    {
      return 0;
    }

    if (self->_isMultiwaySession)
    {
      goto LABEL_31;
    }

    v19 = self->super._duplicationEnhancementEnabled ? [a3 isOnSameInterfacesAndQRSessionWithConnection:v18] : VCConnection_IsOnSameInterfacesWithConnection(a3);
    v20 = v19;
    if (![(VCConnectionManagerIDS *)self shouldKeepAllConnections])
    {
      if (v20)
      {
        break;
      }
    }

    if ([a3 compare:v18 isPrimary:1 selectionPolicy:{-[VCConnectionManagerIDS getConnectionSelectionPolicy](self, "getConnectionSelectionPolicy")}] != 1)
    {
      ++v15;
    }

LABEL_31:
    if (v14 == ++v17)
    {
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v14)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }
  }

  v21 = [(VCConnectionManagerIDS *)self shouldReplaceConnection:v18 withConnection:a3];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v21)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v28 = [objc_msgSend(a3 "description")];
        }

        else
        {
          v28 = "<nil>";
        }

        *buf = 136315906;
        v37 = v26;
        v38 = 2080;
        v39 = "[VCConnectionManagerIDS addConnectionToConnectionArray:]";
        v40 = 1024;
        v41 = 931;
        v42 = 2080;
        v43 = v28;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: new connection %s is not added, stop keep alive", buf, 0x26u);
      }
    }

    [(VCConnectionManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(VCConnectionManagerDelegate *)[(VCConnectionManager *)self delegate] discardConnection:a3];
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v18)
      {
        v25 = [objc_msgSend(v18 "description")];
      }

      else
      {
        v25 = "<nil>";
      }

      *buf = 136315906;
      v37 = v23;
      v38 = 2080;
      v39 = "[VCConnectionManagerIDS addConnectionToConnectionArray:]";
      v40 = 1024;
      v41 = 937;
      v42 = 2080;
      v43 = v25;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: connection %s is replaced, stop keep alive", buf, 0x26u);
    }
  }

  [(VCConnectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(VCConnectionManagerDelegate *)[(VCConnectionManager *)self delegate] discardConnection:v18];
  }

  [(VCConnectionManagerIDS *)self removeFromConnectionArray:v18];
LABEL_49:
  v29 = VCConnectionIDS_LinkID(a3);
  v30 = [objc_msgSend(a3 "connectionUUID")];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._mapLinkIDToLinkUUID, "setObject:forKeyedSubscript:", v30, [MEMORY[0x1E696AD98] numberWithUnsignedChar:v29]);

  [*(&self->super.super.isa + v34) insertObject:a3 atIndex:v15];
  if (VCConnectionManager_IsDuplicationConnectionCandidate(self, a3))
  {
    if ([(VCLinkProbingHandler *)self->super._linkProbingHandler isLinkProbingActive])
    {
      linkProbingHandler = self->super._linkProbingHandler;
      v35 = [MEMORY[0x1E696AD98] numberWithInt:VCConnection_ConnectionID(a3)];
      -[VCLinkProbingHandler startActiveProbingOnLinks:](linkProbingHandler, "startActiveProbingOnLinks:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1]);
    }

    else if ((VCConnectionManager_AreAllLinkProbingTriggersInactive(self) & 1) == 0)
    {
      VCConnectionManager_SetActiveLinkProbingEnabled(self, 1);
    }
  }

  IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a3);
  [(VCConnectionManagerIDS *)self updateDuplicationStateWithConnectionOperation:0 isLocalOnWiFi:IsLocalOnWiFi isRemoteOnWiFi:VCConnection_IsRemoteOnWiFi(a3)];
  return 1;
}

- (void)removeFromConnectionArray:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(VCLinkProbingHandler *)self->super._linkProbingHandler isLinkProbingActive])
  {
    linkProbingHandler = self->super._linkProbingHandler;
    v7[0] = [MEMORY[0x1E696AD98] numberWithInt:VCConnection_ConnectionID(a3)];
    -[VCLinkProbingHandler stopActiveProbingOnLinks:resetStats:](linkProbingHandler, "stopActiveProbingOnLinks:resetStats:", [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1], 1);
  }

  IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a3);
  [(VCConnectionManagerIDS *)self updateDuplicationStateWithConnectionOperation:1 isLocalOnWiFi:IsLocalOnWiFi isRemoteOnWiFi:VCConnection_IsRemoteOnWiFi(a3)];
  [(NSMutableArray *)self->super._connectionArray removeObject:a3];
}

- (void)updateDuplicationStateWithConnectionOperation:(int)a3 isLocalOnWiFi:(BOOL)a4 isRemoteOnWiFi:(BOOL)a5
{
  v6 = 0x100000000;
  if (!a4)
  {
    v6 = 0;
  }

  v7 = v6 | a3;
  v8 = 0x10000000000;
  if (!a5)
  {
    v8 = 0;
  }

  if (VCDuplicationHandler_HandleDuplicationStateUpdateEvent(self->super._duplicationHandler, 13, v7 | v8))
  {
    v9 = [(VCConnectionManager *)self isDuplicationEnabled];

    VCConnectionManager_SetDuplicationEnabledInternal(self, v9);
  }
}

- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  IsEndToEndLink = VCConnection_IsEndToEndLink(a3);
  if (![(VCConnectionManager *)self isOneToOneModeEnabled]|| IsEndToEndLink)
  {
    v8 = VCConnection_Priority(a3);
    if (self->super._reportingAgent)
    {
      v27 = v8 & 0xFFFFFFFE;
      if (VCConnection_IsRelay(a3))
      {
        v9 = "relay";
      }

      else
      {
        v9 = "p2p";
      }

      v10 = VCConnectionManager_ConnectionInterfaceType(a3, 1);
      v11 = VCConnectionManager_ConnectionInterfaceType(a3, 0);
      if (v4)
      {
        relayServerProvider = self->super._relayServerProvider;
        v13 = "QRSUN";
        if (relayServerProvider == 2)
        {
          v13 = "QRSAP";
        }

        if (relayServerProvider == 1)
        {
          v14 = "QRSAK";
        }

        else
        {
          v14 = v13;
        }
      }

      else
      {
        v14 = "";
      }

      [a3 sharedDigestKey];
      reportingSetDigestKey();
      v17 = [a3 relaySessionToken];
      EyeContactEnabledBoolValue = VCDefaults_Prod_GetEyeContactEnabledBoolValue(1);
      v29[0] = @"ConnectionType";
      v30[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      v30[1] = &stru_1F570E008;
      v29[1] = @"LocalCandidate";
      v29[2] = @"RemoteCandidate";
      v30[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
      v29[3] = @"LocalInterfaceType";
      v30[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      v29[4] = @"RemoteInterfaceType";
      v30[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      v29[5] = @"relayServer";
      v30[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
      v29[6] = @"relayType";
      v30[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "type")}];
      v29[7] = @"VPN";
      v19 = [a3 isVPN];
      v20 = &unk_1F579A980;
      if (v19)
      {
        v20 = &unk_1F579A968;
      }

      v21 = @"Unknown";
      if (v17)
      {
        v21 = v17;
      }

      v30[7] = v20;
      v30[8] = v21;
      v29[8] = @"IDSToken";
      v29[9] = @"VPCENABLED";
      v30[9] = [MEMORY[0x1E696AD98] numberWithBool:EyeContactEnabledBoolValue];
      v29[10] = @"EndToEnd";
      if (IsEndToEndLink)
      {
        v22 = "1";
      }

      else
      {
        v22 = "0";
      }

      v30[10] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
      v29[11] = @"QuicPod";
      v30[11] = [MEMORY[0x1E696AD98] numberWithBool:VCConnectionIDS_IsQUICPod(a3)];
      v29[12] = @"Rpsd";
      v30[12] = [VCConnectionIDS VCConnectionIDS_RPS:a3];
      v29[13] = @"Cpsd";
      v30[13] = [VCConnectionIDS VCConnectionIDS_CDBPS:a3];
      v29[14] = @"ConnProtocolType";
      v30[14] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "linkConnectionType")}];
      v29[15] = @"MaxMTU";
      v30[15] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "maxConnectionMTU")}];
      v29[16] = @"sliceStatus";
      v30[16] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_ReportingSliceStatus(a3)];
      v29[17] = @"RemoteSliceStatus";
      v30[17] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_ReportingSliceStatus(a3)];
      v23 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:{18), "mutableCopy"}];
      v24 = VCConnectionManager_CopySuggestedLinkTypeCombo(self);
      if (v24)
      {
        v25 = v24;
        [v23 setObject:v24 forKeyedSubscript:@"SLTS"];
        CFRelease(v25);
      }

      if (v27 == 2)
      {
        VCConnectionManager_AddTelemetryForPacketHistoryInternal(self, v23);
        [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", VCConnectionIDS_IsP2PEncryptionSupported(a3)), @"p2pTLE"}];
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_ABT", @"QuicPod"];
      [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->super._gftTLEEnabled), v26}];
      [v23 setObject:self->super._gecoVersion forKeyedSubscript:@"GECO_ABT"];
      VCConnectionManager_AddTelemetryForConnection(self, a3, v23);
      VCConnection_ReportingQRServerConfig(a3);
      VCConnectionIDS_ReportingSatelliteNetwork(a3, v23);
      reportingGenericEvent();

      v28.receiver = self;
      v28.super_class = VCConnectionManagerIDS;
      [(VCConnectionManager *)&v28 reportConnection:a3 isInitialConnection:v4];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = v15;
        v33 = 2080;
        v34 = "[VCConnectionManagerIDS reportConnection:isInitialConnection:]";
        v35 = 1024;
        v36 = 1034;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d reportConnection: reportingAgent is nil, can not report connections", buf, 0x1Cu);
      }
    }
  }
}

- (void)reportCurrentPrimaryConnection
{
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  [(VCConnectionManagerIDS *)self reportConnection:VCConnectionManager_CopyPrimaryConnection(self) isInitialConnection:1];

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (BOOL)shouldDropCurrentPrimaryConnectionWithConnectionStats:(id *)a3
{
  if ((self->super._connectionSelectionVersion - 1) < 2)
  {
    return 0;
  }

  if (self->super._localConnectionStats.isConnectionPaused)
  {
    return 0;
  }

  if (self->super._remoteConnectionStats.isConnectionPaused)
  {
    return 0;
  }

  v5 = VCConnectionManager_CopyPrimaryConnection(self);
  if (![v5 isVPN])
  {
    return 0;
  }

  pthread_rwlock_rdlock(&self->super._stateRWlock);
  if ([(NSMutableArray *)self->super._connectionArray count]>= 2 && ((v6 = [(NSMutableArray *)self->super._connectionArray objectAtIndex:1], IsEndToEndLink = VCConnection_IsEndToEndLink(v6), [(VCConnectionManager *)self isOneToOneModeEnabled]) && (IsEndToEndLink & 1) != 0 || (([(VCConnectionManager *)self isOneToOneModeEnabled]| IsEndToEndLink) & 1) == 0))
  {
    if (self->super._connectionSelectionVersion == 3)
    {
      v10 = [v5 isOnSameInterfacesAndQRSessionWithConnection:v6];
      pthread_rwlock_unlock(&self->super._stateRWlock);
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v11 = VCConnection_IsOnSameInterfacesWithConnection(v5);
      pthread_rwlock_unlock(&self->super._stateRWlock);
      if (!v11)
      {
        return 0;
      }
    }

    if (a3->var4 > 5.0)
    {
      return !self->super._enableDuplication;
    }
  }

  else
  {
    pthread_rwlock_unlock(&self->super._stateRWlock);
  }

  return 0;
}

- (BOOL)shouldUpdateServerBasedConnection:(id)a3
{
  if (self->_isMultiwaySession)
  {
    return VCConnection_IsEndToEndLink(a3) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canOptOutAllStreamsForConnection:(id)a3
{
  if (self->_isMultiwaySession && !self->_optIntoExistingSubscribedStreams)
  {
    return VCConnection_IsEndToEndLink(a3) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)startActiveProbingWithOptions:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCConnectionManager *)self delegate])
  {
    delegateQueue = self->super._delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__VCConnectionManagerIDS_startActiveProbingWithOptions___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __56__VCConnectionManagerIDS_startActiveProbingWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 startActiveProbingWithOptions:v3];
}

- (void)stopActiveProbingWithOptions:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCConnectionManager *)self delegate])
  {
    delegateQueue = self->super._delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__VCConnectionManagerIDS_stopActiveProbingWithOptions___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __55__VCConnectionManagerIDS_stopActiveProbingWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 stopActiveProbingWithOptions:v3];
}

- (void)queryProbingResultsWithOptions:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCConnectionManager *)self delegate])
  {
    delegateQueue = self->super._delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__VCConnectionManagerIDS_queryProbingResultsWithOptions___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __57__VCConnectionManagerIDS_queryProbingResultsWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 queryProbingResultsWithOptions:v3];
}

- (void)flushLinkProbingStatusWithOptions:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCConnectionManager *)self delegate])
  {
    delegateQueue = self->super._delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VCConnectionManagerIDS_flushLinkProbingStatusWithOptions___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __60__VCConnectionManagerIDS_flushLinkProbingStatusWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 flushLinkProbingStatusWithOptions:v3];
}

- (void)didUpdateLinkPreferenceOrder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCConnectionManagerIDS didUpdateLinkPreferenceOrder:]";
      v11 = 1024;
      v12 = 1199;
      v13 = 2112;
      v14 = [objc_msgSend(a3 valueForKey:{@"description", "componentsJoinedByString:", @", "}];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Updated link preference order: %@", &v7, 0x26u);
    }
  }

  [(VCConnectionSelector *)self->super._connectionSelector setLinkPreferenceOrder:a3];
  VCConnectionManager_UpdateConnectionForDuplication(self);
  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (void)didLinkProbingLockdownEnd
{
  if ((VCConnectionManager_AreAllLinkProbingTriggersInactive(self) & 1) == 0)
  {

    VCConnectionManager_SetActiveLinkProbingEnabled(self, 1);
  }
}

- (void)requestStatsWithOptions:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->super._delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCConnectionManagerIDS_requestStatsWithOptions___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(delegateQueue, block);
}

uint64_t __50__VCConnectionManagerIDS_requestStatsWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 requestStatsWithOptions:v3];
}

- (void)didReceiveStatsResponse:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  callbackQueue = self->super._callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCConnectionManagerIDS_didReceiveStatsResponse___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __50__VCConnectionManagerIDS_didReceiveStatsResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  VCConnectionManager_UpdateNetworkOutageStatus(v2, v3);
}

- (void)updateConnectionSelectionPolicyWithPreferE2E:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->super._stateRWlock);
  v5[0] = self->super._preferRelayOverP2PEnabled;
  v5[1] = 0;
  v5[2] = [(VCConnectionManagerIDS *)self shouldKeepAllConnections];
  v5[3] = self->_isMultiwaySession;
  v5[4] = a3;
  v5[5] = [(VCConnectionManagerIDS *)self shouldPreferWiredConnections];
  [(VCConnectionSelector *)self->super._connectionSelector updateConnectionSelectionPolicy:v5];
  pthread_rwlock_unlock(&self->super._stateRWlock);
}

- (id)connectionForDuplication
{
  v2 = VCConnectionSelector_CopyConnectionForDuplication(self->super._connectionSelector);

  return v2;
}

- (void)setOptIntoExistingSubscribedStreams:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  self->_optIntoExistingSubscribedStreams = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectionArray = self->super._connectionArray;
  v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(connectionArray);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ((VCConnection_IsEndToEndLink(v10) & 1) == 0)
        {
          v11 = v10;
          delegateQueue = self->super._delegateQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __62__VCConnectionManagerIDS_setOptIntoExistingSubscribedStreams___block_invoke;
          block[3] = &unk_1E85F37F0;
          block[4] = v10;
          block[5] = self;
          dispatch_async(delegateQueue, block);
        }
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->super._stateRWlock);
}

void __62__VCConnectionManagerIDS_setOptIntoExistingSubscribedStreams___block_invoke(uint64_t a1)
{
  v2 = VCConnection_Priority(*(a1 + 32));
  v3 = *(a1 + 40);
  if ((*(v3 + 7706) & 1) != 0 || v2 == 2)
  {
    if (!*(v3 + 7706))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 || (IsDuplicationEnabled = VCDuplicationHandler_IsDuplicationEnabled(*(v3 + 632)), v3 = *(a1 + 40), !IsDuplicationEnabled))
  {
    [objc_msgSend(v3 "delegate")];
    goto LABEL_10;
  }

  if (*(v3 + 7706))
  {
LABEL_8:
    [objc_msgSend(v3 "delegate")];
  }

LABEL_10:
  v5 = *(a1 + 32);
}

- (BOOL)isEndToEndLinkAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionArray = self->super._connectionArray;
  v4 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(connectionArray);
        }

        if (VCConnection_IsEndToEndLink(*(*(&v11 + 1) + 8 * i)))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v8;
}

- (BOOL)isEndToEndLinkWithCellAvailable:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectionArray = self->super._connectionArray;
  v6 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(connectionArray);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (VCConnection_IsEndToEndLink(v10) && (v3 && (VCConnection_IsLocalOnCellular(v10) & 1) != 0 || (VCConnection_IsRemoteOnCellular(v10) & 1) != 0))
        {
          v11 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:
  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v11;
}

uint64_t ___VCConnectionManagerIDS_SynchronizeParticipantGenerationCounter_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 updateParticipantGenerationCounter:v3];
}

void ___VCConnectionManagerIDS_UpdateConnectionForDuplication_block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  if (*(a1 + 57) != 4)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) addDuplicationConnectionUpdateTelemetryWithSuggestedLinkTypeCombo:*(a1 + 48) payload:?];
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    VCConnectionManager_AddLinkProbingTelemetry(*(a1 + 32));
    reportingGenericEvent();
  }
}

- (BOOL)shouldAcceptDataFromSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3
{
  pthread_rwlock_rdlock(&self->super._stateRWlock);
  v5 = VCConnectionManager_CopyPrimaryConnection(self);
  if (v5)
  {
    v6 = v5;
    v7 = VCConnectionIDS_MatchesChannelTokenWithSourceDestinationInfo(v5, a3);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  pthread_rwlock_unlock(&self->super._stateRWlock);
  return v7;
}

- (void)applyConstrainWithThreshold:(void *)a1 inBandwidth:thredshold:.cold.1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v3;
        OUTLINED_FUNCTION_0();
        v12 = 164;
        v5 = " [%s] %s:%d inBandwidth is null";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
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

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        OUTLINED_FUNCTION_0();
        v12 = 164;
        v13 = 2112;
        v14 = v2;
        v15 = 2048;
        v16 = a1;
        v5 = " [%s] %s:%d %@(%p) inBandwidth is null";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)addConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)removeConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateSessionStats:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)shouldReplaceConnection:withConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end