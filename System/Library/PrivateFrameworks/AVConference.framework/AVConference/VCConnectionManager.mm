@interface VCConnectionManager
- (BOOL)hasSameReportingConfig:(id)a3 oldPrimaryConnection:(id)a4;
- (BOOL)isBetterConnection:(id)a3 asPrimary:(BOOL)a4;
- (BOOL)isBetterPrimaryConnectionAvailable;
- (BOOL)isConnectedOnIPv6ForActiveConnectionWithQuality:(int)a3;
- (BOOL)isConnectedOnRelayForActiveConnectionWithQuality:(int)a3;
- (BOOL)isDuplicationAllowed;
- (BOOL)isDuplicationAllowedForParticipantID:(id)a3 bucketsToSum:(int)a4 threshold:(double)a5;
- (BOOL)isLocalCellularInterfaceUsed;
- (BOOL)isOptimalConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5;
- (VCConnectionManager)init;
- (VCConnectionProtocol)connectionForDuplication;
- (id)getActiveConnectionRegistryAndUpdateDuplicationPossibility;
- (int)connectionCount;
- (int)getCellularMTUForActiveConnectionWithQuality:(int)a3;
- (int)getCellularTechForActiveConnectionWithQuality:(int)a3 forLocalInterface:(BOOL)a4;
- (int)getConnectionSelectionVersionFromFrameworkVersion:(id)a3;
- (int)getConnectionTypeForActiveConnectionWithQuality:(int)a3 forLocalInterface:(BOOL)a4;
- (int)processConnectionHealthFromControlInfo:(void *)a3;
- (int)processRemoteWRMSuggestion:(int)a3 isRemoteDuplicating:(BOOL)a4;
- (int)setConnectionHealthOnControlInfo:(void *)a3;
- (int)setWRMUpdateCallback:(void *)a3 requestNotificationCallback:(void *)a4 withContext:(void *)a5 completionHandler:(id)a6;
- (void)addDistinctConnectionInterfaceToSet:(id)a3 withInterfaceType:(int)a4;
- (void)addMediaHealthStatsHistoryEntryForParticipantID:(id)a3;
- (void)aggregateStallTimeDuration:(id *)a3 idsParticipantID:(id)a4;
- (void)applyLinkFlags:(unsigned __int16)a3 isCellular:(BOOL)a4;
- (void)applyLinkRecommendation;
- (void)applyRemoteLinkFlags:(unsigned __int16)a3 isCellular:(BOOL)a4;
- (void)checkAndUpdatePrimaryConnection;
- (void)checkForCachedWRMNotification;
- (void)checkMediaQualityDegradedForParticipantID:(id)a3;
- (void)checkpointPrimaryConnection:(id)a3;
- (void)configureNWConnectionMonitor:(id)a3;
- (void)connectionHealthDidUpdate:(int)a3 isLocalConnection:(BOOL)a4;
- (void)copyPersistenPacketCounts:(unsigned int *)a3 isOutgoing:(BOOL)a4 size:(int)a5;
- (void)createNewConnectionStatsCollectorCallback;
- (void)createOverlaySource;
- (void)dealloc;
- (void)destroyNWMonitorCellularInternal;
- (void)destroyNWMonitorInternal;
- (void)destroyNWMonitors;
- (void)didChangeWifiAssistAvailable:(BOOL)a3 reason:(unsigned __int8)a4;
- (void)didUpdateMotionActivity:(id)a3;
- (void)disableRemotePreferredInterfaceInference:(BOOL)a3;
- (void)duplicationStateUpdateWithEvent:(id)a3;
- (void)getSentBytes:(int64_t *)a3 receivedBytes:(int64_t *)a4;
- (void)handleReportingSymptom:(unsigned int)a3;
- (void)periodicTask:(void *)a3;
- (void)primaryConnectionChanged:(id)a3 oldPrimaryConnection:(id)a4;
- (void)promoteSecondaryConnectionToPrimary:(id)a3;
- (void)registerStatisticsHandlers;
- (void)releaseAndRemoveConnectionStatsCollectorCallback;
- (void)removeMediaHealthStatsHistoryEntryForParticipantID:(id)a3;
- (void)renewNWMonitor;
- (void)renewNWMonitorCellular;
- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4;
- (void)reportConnectionUpdateWithRespCode:(unsigned __int16)a3;
- (void)reportConnectionUpdateWithResponseCode:(unsigned __int16)a3 delay:(double)a4;
- (void)reportLinkSuggestion;
- (void)reportNoPacketUpdateUsingCurrentTime:(double)a3 lastReceivedPacketTime:(double)a4;
- (void)resetConnectionStatTimers;
- (void)resetMediaHealthStats;
- (void)setConnectionPause:(BOOL)a3 isLocalConnection:(BOOL)a4;
- (void)setConnectionSelectionVersionWithLocalFrameworkVersion:(id)a3 remoteFrameworkVersion:(id)a4;
- (void)setDefaultLinkProbingCapabilityVersionForDeviceRole:(int)a3;
- (void)setDuplicationCallback:(void *)a3 withContext:(void *)a4;
- (void)setDuplicationDownlinkCellBitrateCap:(unsigned int)a3 currentBitrate:(unsigned int)a4;
- (void)setIsOneToOneModeEnabled:(BOOL)a3;
- (void)setIsOneToOneScreenEnabled:(BOOL)a3;
- (void)setIsRemoteMediaQualityDegraded:(BOOL)a3;
- (void)setNWMonitorCellularHandlers;
- (void)setNWMonitorStatisticsHandler;
- (void)setP2pEncryptionExperimentEnabled:(BOOL)a3;
- (void)setPreferRelayOverP2P:(BOOL)a3 reason:(unsigned __int8)a4;
- (void)setPreferRelayOverP2PEnabled:(BOOL)a3;
- (void)setRemoteLinkProbingCapabilityVersion:(unsigned __int8)a3;
- (void)setRemotePreWarmStateEnabled:(BOOL)a3;
- (void)setReportingAgent:(opaqueRTCReporting *)a3;
- (void)setStartConnectionHealthMonitoring:(BOOL)a3;
- (void)setStatisticsCollector:(id)a3;
- (void)setUseMediaDrivenDuplication:(BOOL)a3;
- (void)setupConnectionHealthMonitor;
- (void)setupConnectionHealthMonitorMultiway;
- (void)setupNetworkConditionMonitor;
- (void)start;
- (void)startBrokenNetworkDetection;
- (void)stop;
- (void)unregisterStatisticsHandlers;
- (void)updateConnectionHealthWithVCStatisticsMessage:(tagVCStatisticsMessage *)a3;
- (void)updateConnectionSelectionPolicyWithPreferE2E:(BOOL)a3;
- (void)updateConnectionStatsWithIndicatorNoPacket:(id *)a3;
- (void)updateConnectionStatsWithIndicatorNone:(id *)a3;
- (void)updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:(id *)a3;
- (void)updateConnectionStatsWithIndicatorPrimaryImproved:(id *)a3;
- (void)updateDuplicationStateWithEventType:(unsigned __int8)a3;
- (void)updateLinkPreferSuggestion:(id)a3;
- (void)updateMediaDegradedHistoryWithCurrentAudioErasure:(double)a3 idsParticipantID:(id)a4;
- (void)updateMediaDegradedHistoryWithCurrentVideoStallDuration:(double)a3 idsParticipantID:(id)a4;
- (void)updateMediaDegradedHistoryWithValue:(double)a3 idsParticipantID:(id)a4;
- (void)updateMediaHealthStats:(id *)a3 idsParticipantID:(id)a4;
- (void)updateScreenShareRelaySetting;
- (void)updateWRMDuplicationForHandover;
- (void)updateWithRemoteMediaHealthDuplication:(BOOL)a3;
- (void)useConnectionAsPrimary:(id)a3;
@end

@implementation VCConnectionManager

- (VCConnectionManager)init
{
  v31 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCConnectionManager;
  v2 = [(VCConnectionManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(VCConnectionManager *)v2 setUpVTable];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v3->_delegateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionManager.delegateQueue", 0, CustomRootQueue);
    v3->_callbackQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionManager.callbackQueue", 0, CustomRootQueue);
    v3->_reportingQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionManager.reportingQueue", 0, CustomRootQueue);
    v3->_nwConnectionMonitorQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionManager.nwConnectionMonitorQueue", 0, CustomRootQueue);
    pthread_rwlock_init(&v3->_stateRWlock, 0);
    v3->_localConnectionStats.type = 0;
    v3->_remoteConnectionStats.type = 1;
    v3->_localWRMLinkTypeFromDefaults = -1;
    v3->_allowRequestForWRMNotification = 1;
    v3->_duplicationCallback = VCCMDuplicationCallback;
    v3->_duplicationContext = v3;
    v3->_vcWifiAssist = +[VCWifiAssistManager sharedInstance];
    v3->_wrmHandler = objc_alloc_init(VCWRMHandler);
    v3->_duplicationHandler = objc_alloc_init(VCDuplicationHandler);
    v3->_linkProbingHandler = [[VCLinkProbingHandler alloc] initWithDelegate:v3];
    v3->_noRemoteDuplicationThresholdFast = 4.0;
    v3->_connectionArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_lastDefaultCheckTime = 0.0;
    v3->_localRATTypeOverride = -1;
    v3->_isPrimaryLinkUsable = 1;
    v3->_isDuplicationAllowed = 1;
    v3->_isNWConnectionMonitorEnabled = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-nw-connection-monitor-enabled" userDefaultKey:@"useNWConnectionMonitorForVCCM" featureFlagDomain:"AVConference" featureFlagName:"UseNWConnectionMonitorForVCCM"];
    v3->_isNWConnectionMonitorCellularEnabled = VCDefaults_GetBoolValueForKey(@"enableNWConnectionMonitorCellular", 1);
    v3->_aggregateStallTimeDuration = 0;
    v3->_mediaDegradedHistories = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_mediaDegradedHistoryIndices = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_aggregateStallTimeDuration = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(VCConnectionManager *)v3 addMediaHealthStatsHistoryEntryForParticipantID:&unk_1F5799D08];
    v3->_useMediaDrivenDuplicationFeatureFlag = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-duplication-media-driven-duplication-enabled" userDefaultKey:@"duplicationReductionEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseMediaDrivenDuplication"];
    v3->_isDuplicationAllowedForMediaDegraded = 0;
    v3->_isWRMNotificationPending = 0;
    *&v3->_savedWRMNotification.applicationType = 0u;
    *v3->_savedWRMNotification.linkTypeChangeReasonString = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[16] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[32] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[48] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[64] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[80] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[96] = 0u;
    *&v3->_savedWRMNotification.linkTypeChangeReasonString[112] = 0u;
    *&v3->_savedWRMNotification.linkBandwidthMin = 0u;
    v3->_wrmPendingBitrateCapDelta = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-wrm-pending-bitrate-cap-delta" userDefaultKey:@"wrmPendingBitrateCapDelta" defaultValue:&unk_1F5799D08 isDoubleType:{0), "intValue"}];
    [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"gk-p2p-video-near-degraded-threshold" userDefaultKey:@"videoNearDegradedThreshold" defaultValue:&unk_1F5799D20 isDoubleType:{1), "doubleValue"}];
    v3->_mediaDegradedThreshold = v5;
    v3->_enableNetworkConditionMonitoring = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-network-condition-detection-enabled" userDefaultKey:@"networkConditionDetectionEnabled" featureFlagDomain:"AVConference" featureFlagName:"EnableNetworkConditionMonitoring"];
    v3->_isUserMoving = VCDefaults_GetIntValueForKey(@"forceUserMoving", 0) != 0;
    if (v3->_enableNetworkConditionMonitoring)
    {
      [(VCConnectionManager *)v3 setupNetworkConditionMonitor];
    }

    if ((VTP_GetSendRecvStats(&v3->_initialSentBytes, &v3->_initialReceivedBytes) & 0x80000000) != 0)
    {
      v3->_initialSentBytes = -1;
      v3->_initialReceivedBytes = -1;
    }

    v3->_dropLinkRecommendation = 1;
    v3->_useIDSLinkSuggestionFeatureFlag = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-ids-link-suggestion-enabled" userDefaultKey:@"idsLinkSuggestionEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseIDSLinkSuggestion"];
    *&v3->_sendSuccessCountSinceLastCheck = 0;
    v3->_onTheWireTotalBytesReceivedSinceLastCheck = 0;
    v3->_onTheWireTotalBytesSentSinceLastCheck = 0;
    v3->_shouldForceRelayLinksWhenScreenEnabled = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-force-relay-when-screen-enabled" userDefaultKey:@"forceRelayWhenScreenEnabled" defaultValue:&unk_1F5799D38 isDoubleType:{0), "intValue"}];
    v3->_disallowAlternateConnectionForRTXSupportWhenVideoDegraded = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-disallow-alternate-connection-for-rtx-support-when-video-degraded" userDefaultKey:@"disallowAlternateConnectionForRTXSupportWhenVideoDegraded" defaultValue:&unk_1F5799D38 isDoubleType:{0), "intValue"}] != 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        useIDSLinkSuggestionFeatureFlag = v3->_useIDSLinkSuggestionFeatureFlag;
        enableNetworkConditionMonitoring = v3->_enableNetworkConditionMonitoring;
        shouldForceRelayLinksWhenScreenEnabled = v3->_shouldForceRelayLinksWhenScreenEnabled;
        useMediaDrivenDuplicationFeatureFlag = v3->_useMediaDrivenDuplicationFeatureFlag;
        disallowAlternateConnectionForRTXSupportWhenVideoDegraded = v3->_disallowAlternateConnectionForRTXSupportWhenVideoDegraded;
        *buf = 136316930;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCConnectionManager init]";
        v19 = 1024;
        v20 = 283;
        v21 = 1024;
        v22 = useIDSLinkSuggestionFeatureFlag;
        v23 = 1024;
        v24 = enableNetworkConditionMonitoring;
        v25 = 1024;
        v26 = shouldForceRelayLinksWhenScreenEnabled;
        v27 = 1024;
        v28 = useMediaDrivenDuplicationFeatureFlag;
        v29 = 1024;
        v30 = disallowAlternateConnectionForRTXSupportWhenVideoDegraded;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d useIDSLinkSuggestionFeatureFlag=%d enableNetworkConditionMonitoring=%d shouldForceRelayLinksWhenScreenEnabled=%d, _useMediaDrivenDuplicationFeatureFlag=%d _disallowAlternateConnectionForRTXSupportWhenVideoDegraded=%d", buf, 0x3Au);
      }
    }

    v3->_linkIPPreference = -1;
    v3->_canUseP2PLinks = 1;
    v3->_connectionStatsCollector = objc_alloc_init(VCConnectionStatisticsCollector);
    v3->_mapLinkIDToLinkUUID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v4;
        v18 = 2080;
        v19 = "[VCConnectionManager dealloc]";
        v20 = 1024;
        v21 = 293;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCConnectionManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCConnectionManager dealloc]";
        v20 = 1024;
        v21 = 293;
        v22 = 2112;
        v23 = v3;
        v24 = 2048;
        v25 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCConnectionManager *)self removeMediaHealthStatsHistoryEntryForParticipantID:&unk_1F5799D08];
  VCConnectionManager_UseCellPrimaryInterface(self, 0);
  [(VCConnectionManager *)self destroyNWMonitors];
  pthread_rwlock_destroy(&self->_stateRWlock);
  [(VCConnectionManager *)self invalidateNetworkConditionMonitor];
  dispatch_release(self->_delegateQueue);
  dispatch_release(self->_callbackQueue);
  dispatch_release(self->_reportingQueue);

  [(VCConnectionManager *)self deregisterPeriodicTask];
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  objc_storeWeak(&self->_delegate, 0);

  nwConnectionMonitorQueue = self->_nwConnectionMonitorQueue;
  if (nwConnectionMonitorQueue)
  {
    dispatch_release(nwConnectionMonitorQueue);
  }

  networkConditionMonitor = self->_networkConditionMonitor;
  if (networkConditionMonitor)
  {
    CFRelease(networkConditionMonitor);
    self->_networkConditionMonitor = 0;
  }

  if (self->_overlaySource)
  {
    VCOverlayManager_releaseOverlaySourceWithToken(self->_overlayToken, 2u);
    overlaySource = self->_overlaySource;
    if (overlaySource)
    {
      CFRelease(overlaySource);
      self->_overlaySource = 0;
    }
  }

  v15.receiver = self;
  v15.super_class = VCConnectionManager;
  [(VCConnectionManager *)&v15 dealloc];
}

- (void)setStatisticsCollector:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCConnectionManager_setStatisticsCollector___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(callbackQueue, block);
}

_BYTE *__46__VCConnectionManager_setStatisticsCollector___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unregisterStatisticsHandlers];

  *(*(a1 + 32) + 2944) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[88] == 1)
  {

    return [result registerStatisticsHandlers];
  }

  return result;
}

- (void)registerStatisticsHandlers
{
  v20 = *MEMORY[0x1E69E9840];
  statisticsCollector = self->_statisticsCollector;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__VCConnectionManager_registerStatisticsHandlers__block_invoke;
  v11[3] = &unk_1E85F3998;
  v11[4] = self;
  self->_mediaHealthStatisticsHandlerIndex = [(AVCStatisticsCollector *)statisticsCollector registerStatisticsChangeHandlerWithType:10 handler:v11];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mediaHealthStatisticsHandlerIndex = self->_mediaHealthStatisticsHandlerIndex;
      *buf = 136315906;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCConnectionManager registerStatisticsHandlers]";
      v16 = 1024;
      v17 = 381;
      v18 = 1024;
      v19 = mediaHealthStatisticsHandlerIndex;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Registered MediaHealthStatisticsHandlerIndex=%d", buf, 0x22u);
    }
  }

  v7 = self->_statisticsCollector;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__VCConnectionManager_registerStatisticsHandlers__block_invoke_65;
  v10[3] = &unk_1E85F3998;
  v10[4] = self;
  self->_endToEndConnectionStatisticsHandlerIndex = [(AVCStatisticsCollector *)v7 registerStatisticsChangeHandlerWithType:2 handler:v10];
  v8 = self->_statisticsCollector;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__VCConnectionManager_registerStatisticsHandlers__block_invoke_2;
  v9[3] = &unk_1E85F3998;
  v9[4] = self;
  self->_serverBasedConnectionStatisticsHandlerIndex = [(AVCStatisticsCollector *)v8 registerStatisticsChangeHandlerWithType:5 handler:v9];
}

uint64_t __49__VCConnectionManager_registerStatisticsHandlers__block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 > 6)
  {
    if (v4 == 7)
    {
      v16[0] = 0;
      *&buf[8] = 1;
      *buf = *(a2 + 8);
      *&buf[16] = fmin(*(a2 + 48), 1.0);
      v8 = *(result + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 80)];
      v10 = buf;
    }

    else
    {
      if (v4 != 8)
      {
        return result;
      }

      v13 = 0;
      v12 = 1;
      v11 = *(a2 + 8);
      if (*(a2 + 56) >= 1.0)
      {
        v5 = *(a2 + 56);
      }

      else
      {
        v5 = 0.0;
      }

      v14 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v6;
          *&buf[12] = 2080;
          *&buf[14] = "[VCConnectionManager registerStatisticsHandlers]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v16[0]) = 377;
          WORD2(v16[0]) = 2048;
          *(v16 + 6) = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received video stall update videoStallTimeTotal=%.2f", buf, 0x26u);
        }
      }

      v8 = *(v3 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(a2 + 80), v11, v12, v13, *&v14}];
      v10 = &v11;
    }

    return [v8 updateMediaHealthStats:v10 idsParticipantID:v9];
  }

  else if (v4 == 5)
  {
    if (*(a2 + 45) == 1)
    {
      *(*(result + 32) + 672) = *(a2 + 8);
    }

    else
    {
      *(*(result + 32) + 672) = 0;
    }
  }

  else if (v4 == 6)
  {
    result = *(result + 32);
    if ((*(result + 3180) & 1) == 0 && *(result + 3181) == 1)
    {
      [result updateMediaDegradedHistoryWithCurrentAudioErasure:&unk_1F5799D08 idsParticipantID:*(a2 + 40)];
      result = *(v3 + 32);
    }

    if (*(result + 3181) == 1)
    {
      *(result + 3544) = *(a2 + 80);
    }
  }

  return result;
}

uint64_t __49__VCConnectionManager_registerStatisticsHandlers__block_invoke_65(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return [v2 updateConnectionHealthWithVCStatisticsMessage:v10];
}

uint64_t __49__VCConnectionManager_registerStatisticsHandlers__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return [v2 updateConnectionHealthWithVCStatisticsMessage:v10];
}

- (void)unregisterStatisticsHandlers
{
  [(AVCStatisticsCollector *)self->_statisticsCollector unregisterStatisticsChangeHandlerWithType:10 handlerIndex:self->_mediaHealthStatisticsHandlerIndex];
  [(AVCStatisticsCollector *)self->_statisticsCollector unregisterStatisticsChangeHandlerWithType:2 handlerIndex:self->_endToEndConnectionStatisticsHandlerIndex];
  statisticsCollector = self->_statisticsCollector;
  serverBasedConnectionStatisticsHandlerIndex = self->_serverBasedConnectionStatisticsHandlerIndex;

  [(AVCStatisticsCollector *)statisticsCollector unregisterStatisticsChangeHandlerWithType:5 handlerIndex:serverBasedConnectionStatisticsHandlerIndex];
}

- (void)createNewConnectionStatsCollectorCallback
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__VCConnectionManager_createNewConnectionStatsCollectorCallback__block_invoke;
  v3[3] = &unk_1E85F6BA8;
  v3[4] = self;
  pthread_rwlock_wrlock(&self->_stateRWlock);
  self->_connectionStatsCollectorCallback = _Block_copy(v3);
  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)releaseAndRemoveConnectionStatsCollectorCallback
{
  pthread_rwlock_wrlock(&self->_stateRWlock);
  _Block_release(self->_connectionStatsCollectorCallback);
  self->_connectionStatsCollectorCallback = 0;

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)setupConnectionHealthMonitorMultiway
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isOneToOneModeEnabled || [(VCConnectionManager *)self useMediaDrivenDuplication])
  {
    if (!self->_connectionHealthMonitor)
    {

      [(VCConnectionManager *)self setupConnectionHealthMonitor];
    }
  }

  else if (self->_startConnectionHealthMonitoring)
  {
    [(VCConnectionManager *)self setStartConnectionHealthMonitoring:0];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 136315650;
        *&v10[4] = v3;
        *&v10[12] = 2080;
        *&v10[14] = "[VCConnectionManager setupConnectionHealthMonitorMultiway]";
        *&v10[22] = 1024;
        v11 = 422;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: VCConnectionHealthMonitor stopped", v10, 0x1Cu);
      }
    }

    pthread_rwlock_wrlock(&self->_stateRWlock);
    v5 = VCDuplicationHandler_DuplicationReason(self->_duplicationHandler);
    if (VCDuplicationHandler_IsDuplicationEnabled(self->_duplicationHandler) && (v5 - 1) <= 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = "remote-no-remote";
          *&v10[4] = v6;
          *v10 = 136315906;
          *&v10[14] = "[VCConnectionManager setupConnectionHealthMonitorMultiway]";
          *&v10[12] = 2080;
          if (v5 == 1)
          {
            v8 = "no-remote";
          }

          *&v10[22] = 1024;
          v11 = 426;
          v12 = 2080;
          v13 = v8;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: stop dupe by %s.", v10, 0x26u);
        }
      }

      if (v5 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      [(VCConnectionManager *)self updateDuplicationStateWithEventType:v9, *v10, *&v10[16]];
    }

    pthread_rwlock_unlock(&self->_stateRWlock);
  }
}

- (void)setupConnectionHealthMonitor
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VCConnectionHealthMonitor);
  self->_connectionHealthMonitor = v3;
  [(VCConnectionHealthMonitor *)v3 setDelegate:self];
  [(VCConnectionManager *)self setStartConnectionHealthMonitoring:!self->_isOneToOneModeEnabled];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCConnectionManager setupConnectionHealthMonitor]";
      v10 = 1024;
      v11 = 437;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: VCConnectionHealthMonitor is running", &v6, 0x1Cu);
    }
  }
}

- (void)setPreferRelayOverP2PEnabled:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  self->_preferRelayOverP2PEnabled |= a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      preferRelayOverP2PEnabled = self->_preferRelayOverP2PEnabled;
      dropLinkRecommendation = self->_dropLinkRecommendation;
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCConnectionManager setPreferRelayOverP2PEnabled:]";
      v13 = 1024;
      v14 = 443;
      v15 = 1024;
      v16 = preferRelayOverP2PEnabled;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = dropLinkRecommendation;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: _preferRelayOverP2PEnabled=%d preferRelayOverP2PEnabled=%d _dropLinkRecommendation=%d", &v9, 0x2Eu);
    }
  }

  if (!self->_dropLinkRecommendation)
  {
    [(VCConnectionManager *)self updateConnectionSelectionPolicyWithPreferE2E:self->_isOneToOneModeEnabled];
  }
}

- (void)setPreferRelayOverP2P:(BOOL)a3 reason:(unsigned __int8)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  preferRelayOverP2PReason = self->_preferRelayOverP2PReason;
  v7 = preferRelayOverP2PReason | a4;
  v8 = preferRelayOverP2PReason & ~a4;
  if (a3)
  {
    v8 = v7;
  }

  self->_preferRelayOverP2PReason = v8;
  if (a4 == 4)
  {
    if ((v8 & 3) == 0)
    {
      self->_preferRelayOverP2PEnabled = a3;
    }
  }

  else
  {
    self->_preferRelayOverP2PEnabled |= a3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      preferRelayOverP2PEnabled = self->_preferRelayOverP2PEnabled;
      v12 = self->_preferRelayOverP2PReason;
      dropLinkRecommendation = self->_dropLinkRecommendation;
      v14 = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCConnectionManager setPreferRelayOverP2P:reason:]";
      v18 = 1024;
      v19 = 461;
      v20 = 1024;
      v21 = preferRelayOverP2PEnabled;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = dropLinkRecommendation;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: _preferRelayOverP2PEnabled=%d _preferRelayOverP2PReason=%d _dropLinkRecommendation=%d", &v14, 0x2Eu);
    }
  }

  if (v4 != 2 || !self->_dropLinkRecommendation)
  {
    [(VCConnectionManager *)self checkAndUpdatePrimaryConnection];
  }
}

- (void)setIsOneToOneModeEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  self->_isOneToOneModeEnabled = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      *v8 = 136315906;
      *&v8[4] = v5;
      *&v8[12] = 2080;
      *&v8[14] = "[VCConnectionManager setIsOneToOneModeEnabled:]";
      if (v3)
      {
        v7 = "enabled";
      }

      *&v8[22] = 1024;
      v9 = 472;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d oneToOneMode=%s", v8, 0x26u);
    }
  }

  [(VCConnectionManager *)self setupConnectionHealthMonitorMultiway:*v8];
  [(VCConnectionManager *)self checkAndUpdatePrimaryConnection];
}

- (void)setIsOneToOneScreenEnabled:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  self->_isOneToOneScreenEnabled = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      v9 = v5;
      v8 = 136315906;
      v11 = "[VCConnectionManager setIsOneToOneScreenEnabled:]";
      v10 = 2080;
      if (v3)
      {
        v7 = "enabled";
      }

      v12 = 1024;
      v13 = 479;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d oneToOneScreenEnabled=%s", &v8, 0x26u);
    }
  }

  if (self->_shouldForceRelayLinksWhenScreenEnabled)
  {
    [(VCConnectionSelector *)self->_connectionSelector setCanUseP2PLinks:v3 ^ 1];
    self->_canUseP2PLinks = !v3;
    [(VCConnectionManager *)self setPreferRelayOverP2P:v3 reason:4];
    pthread_rwlock_wrlock(&self->_stateRWlock);
    VCConnectionManager_UpdateConnectionForDuplication(self);
    pthread_rwlock_unlock(&self->_stateRWlock);
  }
}

- (void)setStartConnectionHealthMonitoring:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_startConnectionHealthMonitoring = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCConnectionManager setStartConnectionHealthMonitoring:]";
      v11 = 1024;
      v12 = 492;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: startConnectionHealthMonitoring=%d", &v7, 0x22u);
    }
  }

  [(VCConnectionManager *)self resetConnectionStatTimers];
  [(VCConnectionManager *)self createOverlaySource];
}

- (void)resetConnectionStatTimers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if (self->_startConnectionHealthMonitoring)
  {
    v3 = micro();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCConnectionManager resetConnectionStatTimers]";
      v10 = 1024;
      v11 = 515;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Re-setting connection stat timers to now=%f", &v6, 0x26u);
    }
  }

  self->_localConnectionStats.lastReceivedPacketOnPrimaryTime = v3;
  self->_localConnectionStats.lastReceivedPacketTime = v3;
  self->_remoteConnectionStats.lastReceivedPacketOnPrimaryTime = v3;
  self->_remoteConnectionStats.lastReceivedPacketTime = v3;
}

- (VCConnectionProtocol)connectionForDuplication
{
  v2 = self->_connectionForDuplication;

  return v2;
}

- (void)setUseMediaDrivenDuplication:(BOOL)a3
{
  self->_useMediaDrivenDuplication = a3;
  if ([(VCConnectionManager *)self useMediaDrivenDuplication])
  {
    [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"gk-p2p-media-degraded-threshold" userDefaultKey:@"mediaDegradedThreshold" defaultValue:&unk_1F5799D50 isDoubleType:{1), "doubleValue"}];
    self->_mediaDegradedThreshold = v4;
  }

  [(VCConnectionManager *)self setupConnectionHealthMonitorMultiway];
}

- (void)setP2pEncryptionExperimentEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_p2pEncryptionExperimentEnabled = a3;
  pthread_rwlock_wrlock(&self->_stateRWlock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionArray = self->_connectionArray;
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

        [*(*(&v11 + 1) + 8 * i) setP2pEncryptionExperimentEnabled:v3];
      }

      v7 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)start
{
  if (!self->_isStarted)
  {
    self->_isStarted = 1;
    [(VCConnectionManager *)self registerStatisticsHandlers];
    [(VCWifiAssistManager *)self->_vcWifiAssist addDelegate:self];
    if (!self->_isOneToOneModeEnabled)
    {
      [(VCConnectionManager *)self resetConnectionStatTimers];
    }

    [(VCConnectionManager *)self disableRemotePreferredInterfaceInference:0];
    [(VCCoreMotionManager *)self->_coreMotionManager startMonitoringMotionActivity];

    [(VCConnectionManager *)self createNewConnectionStatsCollectorCallback];
  }
}

- (void)stop
{
  if (self->_isStarted)
  {
    self->_isStarted = 0;
    [(VCWifiAssistManager *)self->_vcWifiAssist removeDelegate:self];
    VCConnectionManager_UseCellPrimaryInterface(self, 0);
    [(VCConnectionManager *)self unregisterStatisticsHandlers];
    [(VCConnectionStatisticsCollector *)self->_connectionStatsCollector stopPeriodicHistoryUpdate];
    [(VCConnectionManager *)self releaseAndRemoveConnectionStatsCollectorCallback];
    [(VCCoreMotionManager *)self->_coreMotionManager stopMonitoringMotionActivity];

    [(VCConnectionManager *)self destroyNWMonitors];
  }
}

- (void)createOverlaySource
{
  overlayToken = self->_overlayToken;
  if (overlayToken)
  {
    if (!self->_overlaySource)
    {
      self->_overlaySource = VCOverlayManager_createOverlaySourceForToken(overlayToken, 2u);
    }
  }
}

- (void)periodicTask:(void *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (self->_nwMonitor && !self->_ignoreNWConnectionMonitorNotification)
    {
      frequencyBand = self->_lastWiFiNWStatistics.var0.wifi.frequencyBand;
      btCoex = self->_lastWiFiNWStatistics.var0.wifi.btCoex;
      qualityScoreDelayRx = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreDelayRx;
      qualityScoreDelayTx = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreDelayTx;
      qualityScoreLossRx = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreLossRx;
      qualityScoreLossTx = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreLossTx;
      qualityScoreChannel = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreChannel;
      offChannelTimeRatio = self->_lastWiFiNWStatistics.var0.wifi.offChannelTimeRatio;
      maxRadioCoex = self->_lastWiFiNWStatistics.var0.wifi.maxRadioCoex;
      accumulatedOffChannelTime = self->_lastWiFiNWStatistics.var0.wifi.accumulatedOffChannelTime;
      maxSingleOutagePeriod = self->_lastWiFiNWStatistics.var0.wifi.maxSingleOutagePeriod;
      qualityScoreDelayRxAverage = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreDelayRxAverage;
      qualityScoreDelayTxAverage = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreDelayTxAverage;
      qualityScoreLossRxAverage = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreLossRxAverage;
      qualityScoreLossTxAverage = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreLossTxAverage;
      qualityScoreChannelAverage = self->_lastWiFiNWStatistics.var0.wifi.qualityScoreChannelAverage;
      *&v3 = offChannelTimeRatio;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v3), @"NWOffChannel"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", btCoex), @"NWBtCoex"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", frequencyBand), @"NWFreqBand"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", maxRadioCoex), @"NWRadioCoexMax"}];
      v28 = accumulatedOffChannelTime;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", accumulatedOffChannelTime), @"NWOffChannelTime"}];
      v29 = maxSingleOutagePeriod;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", maxSingleOutagePeriod), @"NWOutagePeriodMax"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", qualityScoreDelayRx), @"NWQualityDelayRx"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", qualityScoreDelayTx), @"NWQualityDelayTx"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", qualityScoreLossRx), @"NWQualityLossRx"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", qualityScoreLossTx), @"NWQualityLossTx"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:"), @"NWQualityChannel"}];
      *&v19 = qualityScoreDelayRxAverage;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"NWQualityDelayRxAvg"}];
      *&v20 = qualityScoreDelayTxAverage;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"NWQualityDelayTxAvg"}];
      *&v21 = qualityScoreLossRxAverage;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"NWQualityLossRxAvg"}];
      *&v22 = qualityScoreLossTxAverage;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"NWQualityLossTxAvg"}];
      *&v23 = qualityScoreChannelAverage;
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"NWQualityChannelAvg"}];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          nwMonitorWiFiInterfaceName = self->_nwMonitorWiFiInterfaceName;
          *buf = 136318978;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "[VCConnectionManager periodicTask:]";
          *&buf[22] = 1024;
          *&buf[24] = 659;
          *&buf[28] = 2048;
          *&buf[30] = self;
          v37 = 2112;
          v38 = nwMonitorWiFiInterfaceName;
          v39 = 2048;
          v40 = offChannelTimeRatio;
          v41 = 1024;
          v42 = btCoex;
          v43 = 1024;
          v44 = frequencyBand;
          v45 = 1024;
          v46 = qualityScoreDelayRx;
          v47 = 1024;
          v48 = qualityScoreDelayTx;
          v49 = 1024;
          v50 = qualityScoreLossRx;
          v51 = 1024;
          v52 = qualityScoreLossTx;
          v53 = 1024;
          v54 = qualityScoreChannel;
          v55 = 1024;
          v56 = maxRadioCoex;
          v57 = 2048;
          v58 = v28;
          v59 = 1024;
          v60 = v29;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCConnectionManager [%p] interfaceName=%@ offChannelRatio=%2.3f btCoex=%d frequencyBand=%d qualityScoreDelayRx=%d qualityScoreDelayTx=%d qualityScoreLossRx=%d qualityScoreLossTx=%d qualityScoreChannel=%d maxRadioCoex=0x%X accumulatedOffChannelTime=%lld maxSingleOutagePeriod=%u", buf, 0x7Au);
        }
      }

      VCNWConnectionMonitor_ResetWlanStats(self->_nwMonitor);
    }

    memset(buf, 0, 32);
    VTP_GetReportingStats(buf);
    v33 = *&buf[16] - self->_lastReceivedReportingStats.totalUplinkIngressPackets;
    v35 = *buf - self->_lastReceivedReportingStats.totalDownlinkIngressMediaPackets;
    v34 = *&buf[8] - self->_lastReceivedReportingStats.totalDownlinkEgressMediaPackets;
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", *&buf[24] - self->_lastReceivedReportingStats.totalUplinkEgressPackets), @"VTPUplinkEgressPkts"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", v33), @"VTPUplinkIngressPkts"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", v35), @"VTPDownlinkIngressMediaPkts"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", v34), @"VTPDownlinkEgressMediaPkts"}];
    [(VCConnectionManager *)self reportPathMTU:a3];
    v27 = *buf;
    *&self->_lastReceivedReportingStats.totalUplinkIngressPackets = *&buf[16];
    *&self->_lastReceivedReportingStats.totalDownlinkIngressMediaPackets = v27;
  }
}

- (void)setReportingAgent:(opaqueRTCReporting *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  pthread_rwlock_wrlock(&self->_stateRWlock);
  if (self->_reportingAgent)
  {
    [(VCConnectionManager *)self deregisterPeriodicTask];
    reportingAgent = self->_reportingAgent;
  }

  else
  {
    reportingAgent = 0;
  }

  self->_reportingAgent = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  [(VCConnectionManager *)self registerPeriodicTask];

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)setConnectionSelectionVersionWithLocalFrameworkVersion:(id)a3 remoteFrameworkVersion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(VCConnectionManager *)self getConnectionSelectionVersionFromFrameworkVersion:?];
  v8 = [(VCConnectionManager *)self getConnectionSelectionVersionFromFrameworkVersion:a4];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  self->_connectionSelectionVersion = v9;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      connectionSelectionVersion = self->_connectionSelectionVersion;
      v13 = 136316418;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCConnectionManager setConnectionSelectionVersionWithLocalFrameworkVersion:remoteFrameworkVersion:]";
      v17 = 1024;
      v18 = 699;
      v19 = 1024;
      v20 = connectionSelectionVersion;
      v21 = 2112;
      v22 = a3;
      v23 = 2112;
      v24 = a4;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: setting connection selection version=%d localFrameworkVersion=%@ remoteFrameworkVersion=%@", &v13, 0x36u);
    }
  }

  [(VCConnectionManager *)self updateScreenShareRelaySetting];
  [(VCConnectionManager *)self updateConnectionSelectionPolicyWithPreferE2E:self->_isOneToOneModeEnabled];
  [(VCDuplicationHandler *)self->_duplicationHandler setIsRemotePreAzul:[(VCConnectionManager *)self getConnectionSelectionVersionFromFrameworkVersion:a4]< 3];
  [(VCConnectionManager *)self checkAndUpdatePrimaryConnection];
}

- (void)updateScreenShareRelaySetting
{
  v15 = *MEMORY[0x1E69E9840];
  connectionSelectionVersion = self->_connectionSelectionVersion;
  if (connectionSelectionVersion <= 6)
  {
    self->_shouldForceRelayLinksWhenScreenEnabled = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-force-relay-when-screen-enabled" userDefaultKey:@"forceRelayWhenScreenEnabled" defaultValue:qword_1E85F6C90[connectionSelectionVersion] isDoubleType:{0), "intValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      shouldForceRelayLinksWhenScreenEnabled = self->_shouldForceRelayLinksWhenScreenEnabled;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnectionManager updateScreenShareRelaySetting]";
      v11 = 1024;
      v12 = 720;
      v13 = 1024;
      v14 = shouldForceRelayLinksWhenScreenEnabled;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: shouldForceRelayLinksWhenScreenEnabled=%d", &v7, 0x22u);
    }
  }
}

- (void)checkAndUpdatePrimaryConnection
{
  [(VCConnectionManager *)self updateConnectionSelectionPolicyWithPreferE2E:self->_isOneToOneModeEnabled];
  pthread_rwlock_wrlock(&self->_stateRWlock);
  if ([(VCConnectionManager *)self isBetterPrimaryConnectionAvailable])
  {
    [(VCConnectionManager *)self reselectPrimaryConnection];
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (BOOL)isBetterPrimaryConnectionAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectionArray = self->_connectionArray;
  v4 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(connectionArray);
    }

    v8 = 1;
    if ([(VCConnectionManager *)self isBetterConnection:*(*(&v11 + 1) + 8 * v7) asPrimary:1])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)setDuplicationCallback:(void *)a3 withContext:(void *)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCConnectionManager_setDuplicationCallback_withContext___block_invoke;
  v5[3] = &unk_1E85F4090;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(callbackQueue, v5);
}

void *__58__VCConnectionManager_setDuplicationCallback_withContext___block_invoke(void *result)
{
  *(result[4] + 456) = result[5];
  *(result[4] + 488) = result[6];
  return result;
}

- (void)setConnectionPause:(BOOL)a3 isLocalConnection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v7 = micro();
  pthread_rwlock_wrlock(&self->_stateRWlock);
  v8 = 576;
  if (v4)
  {
    v8 = 528;
  }

  v9 = self + v8;
  if (!v5 && v9[40] == 1)
  {
    v10 = 0.0;
    if (self->_startConnectionHealthMonitoring)
    {
      v10 = v7;
    }

    self->_localConnectionStats.lastReceivedPacketTime = v10;
    self->_localConnectionStats.lastReceivedPacketOnPrimaryTime = v10;
    self->_remoteConnectionStats.lastReceivedPacketTime = v10;
    self->_remoteConnectionStats.lastReceivedPacketOnPrimaryTime = v10;
  }

  v9[40] = v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316162;
      v14 = v11;
      v15 = 2080;
      v16 = "[VCConnectionManager setConnectionPause:isLocalConnection:]";
      v17 = 1024;
      v18 = 759;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d local? %d, audio paused? %d", &v13, 0x28u);
    }
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)copyPersistenPacketCounts:(unsigned int *)a3 isOutgoing:(BOOL)a4 size:(int)a5
{
  if (a5 == 256)
  {
    v5 = a4;
    pthread_rwlock_wrlock(&self->_stateRWlock);
    v8 = 1888;
    if (v5)
    {
      v8 = 864;
    }

    memcpy(a3, self + v8, 0x400uLL);

    pthread_rwlock_unlock(&self->_stateRWlock);
  }

  else
  {
    [VCConnectionManager copyPersistenPacketCounts:isOutgoing:size:];
  }
}

- (int)setWRMUpdateCallback:(void *)a3 requestNotificationCallback:(void *)a4 withContext:(void *)a5 completionHandler:(id)a6
{
  v8[9] = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__VCConnectionManager_setWRMUpdateCallback_requestNotificationCallback_withContext_completionHandler___block_invoke;
  v8[3] = &unk_1E85F6BD0;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v8[4] = self;
  v8[5] = a6;
  dispatch_async(callbackQueue, v8);
  return 0;
}

uint64_t __102__VCConnectionManager_setWRMUpdateCallback_requestNotificationCallback_withContext_completionHandler___block_invoke(void *a1)
{
  *(a1[4] + 712) = a1[6];
  *(a1[4] + 720) = a1[7];
  *(a1[4] + 728) = a1[8];
  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setRemotePreWarmStateEnabled:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_remotePreWarmStateEnabled != a3)
  {
    self->_remotePreWarmStateEnabled = a3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        remotePreWarmStateEnabled = self->_remotePreWarmStateEnabled;
        v7 = "Stop";
        *buf = 136316162;
        if (remotePreWarmStateEnabled)
        {
          v7 = "Start";
        }

        v11 = v4;
        v12 = 2080;
        v13 = "[VCConnectionManager setRemotePreWarmStateEnabled:]";
        v14 = 1024;
        v15 = 1025;
        v16 = 1024;
        v17 = remotePreWarmStateEnabled;
        v18 = 2080;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: set remote pre-warm state to %d. %s active probing on links", buf, 0x2Cu);
      }
    }

    pthread_rwlock_wrlock(&self->_stateRWlock);
    VCConnectionManager_SetActiveLinkProbingEnabled(self, self->_remotePreWarmStateEnabled);
    VCConnectionManager_AlertStateUpdated(self, self->_remotePreWarmStateEnabled, 0);
    pthread_rwlock_unlock(&self->_stateRWlock);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{self->_remotePreWarmStateEnabled, @"WRMRemAlrtUpdate"}];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    reportingGenericEvent();
  }
}

- (void)setIsRemoteMediaQualityDegraded:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_isRemoteMediaQualityDegraded = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isRemoteMediaQualityDegraded = self->_isRemoteMediaQualityDegraded;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCConnectionManager setIsRemoteMediaQualityDegraded:]";
      v11 = 1024;
      v12 = 1037;
      v13 = 1024;
      v14 = isRemoteMediaQualityDegraded;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Set isRemoteMediaQualityDegraded=%d", &v7, 0x22u);
    }
  }

  [(VCConnectionManager *)self checkForCachedWRMNotification];
}

- (BOOL)isDuplicationAllowed
{
  v3 = self->_isDuplicationAllowedForMediaDegraded || self->_isRemoteMediaQualityDegraded;
  downlinkTargetBitrate = self->_downlinkTargetBitrate;
  v5 = self->_wrmPendingBitrateCapDelta + self->_downlinkTargetCellBitrateCap;
  if ([(VCConnectionManager *)self useMediaDrivenDuplication])
  {
    isOneToOneModeEnabled = v3 && downlinkTargetBitrate <= v5;
  }

  else
  {
    isOneToOneModeEnabled = self->_isOneToOneModeEnabled;
    if (!v3 && isOneToOneModeEnabled)
    {
      v8 = [(VCWRMHandler *)self->_wrmHandler isRemoteDuplicating];
      self->_isDuplicationAllowed = v8;
      if (v8)
      {
        return 1;
      }

      return self->_isUserMoving;
    }

    if (downlinkTargetBitrate <= v5)
    {
      isOneToOneModeEnabled = 1;
    }
  }

  self->_isDuplicationAllowed = isOneToOneModeEnabled;
  if (!isOneToOneModeEnabled)
  {
    return self->_isUserMoving;
  }

  return 1;
}

- (void)setDuplicationDownlinkCellBitrateCap:(unsigned int)a3 currentBitrate:(unsigned int)a4
{
  self->_downlinkTargetCellBitrateCap = a3;
  self->_downlinkTargetBitrate = a4;
  [(VCConnectionManager *)self checkForCachedWRMNotification];
}

- (void)checkForCachedWRMNotification
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isWRMNotificationPending = self->_isWRMNotificationPending;
      v6 = [(VCConnectionManager *)self isDuplicationAllowed];
      isUserMoving = self->_isUserMoving;
      v17 = 136316418;
      v18 = v3;
      v19 = 2080;
      v20 = "[VCConnectionManager checkForCachedWRMNotification]";
      v21 = 1024;
      v22 = 1138;
      v23 = 1024;
      v24 = isWRMNotificationPending;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = isUserMoving;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Checking for cached WRM notification _isWRMNotificationPending=%d isDuplicationAllowed=%d _isUserMoving=%d", &v17, 0x2Eu);
    }
  }

  if ([(VCConnectionManager *)self isDuplicationAllowed]&& self->_isWRMNotificationPending)
  {
    self->_isWRMNotificationPending = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        linkTypeSuggestion = self->_savedWRMNotification.linkTypeSuggestion;
        isDuplicationAllowedForMediaDegraded = self->_isDuplicationAllowedForMediaDegraded;
        isRemoteMediaQualityDegraded = self->_isRemoteMediaQualityDegraded;
        downlinkTargetBitrate = self->_downlinkTargetBitrate;
        downlinkTargetCellBitrateCap = self->_downlinkTargetCellBitrateCap;
        wrmPendingBitrateCapDelta = self->_wrmPendingBitrateCapDelta;
        v16 = self->_isUserMoving;
        v17 = 136317442;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCConnectionManager checkForCachedWRMNotification]";
        v21 = 1024;
        v22 = 1143;
        v23 = 1024;
        v24 = linkTypeSuggestion;
        v25 = 1024;
        v26 = isDuplicationAllowedForMediaDegraded;
        v27 = 1024;
        v28 = isRemoteMediaQualityDegraded;
        v29 = 1024;
        v30 = downlinkTargetBitrate;
        v31 = 1024;
        v32 = downlinkTargetCellBitrateCap;
        v33 = 1024;
        v34 = wrmPendingBitrateCapDelta;
        v35 = 1024;
        v36 = v16;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Processing iRAT notification (cached) WRM suggestion=%d isDuplicationAllowedForMediaDegraded=%d isRemoteMediaQualityDegraded=%d currentTargetBitrate=%d cellBitrateCap=%d bitrateCapDelta=%d isUserMoving=%d", &v17, 0x46u);
      }
    }

    VCConnectionManager_ProcessWRMNotification(self, &self->_savedWRMNotification.applicationType);
  }
}

- (int)processRemoteWRMSuggestion:(int)a3 isRemoteDuplicating:(BOOL)a4
{
  v4 = a4;
  v7 = [VCWRMHandler processRemoteWRMSuggestion:"processRemoteWRMSuggestion:isRemoteDuplicating:" isRemoteDuplicating:?];
  if (!v7)
  {
    return -2144796671;
  }

  if (v7 == 3)
  {
    pthread_rwlock_wrlock(&self->_stateRWlock);
    v8 = [(VCWRMHandler *)self->_wrmHandler remoteWRMLinkTypeSuggestion];
    v9 = 0x10000;
    if (!v4)
    {
      v9 = 0;
    }

    v10 = v9 | ((a3 != 0) << 40);
    v11 = 6;
    if (v8 == 1)
    {
      v11 = 7;
    }

    if (VCDuplicationHandler_HandleDuplicationStateUpdateEvent(self->_duplicationHandler, v10 | v11, 0))
    {
      VCConnectionManager_SetDuplicationEnabledInternal(self, [(VCConnectionManager *)self isDuplicationEnabled]);
    }

    pthread_rwlock_unlock(&self->_stateRWlock);
  }

  return 0;
}

- (int)connectionCount
{
  pthread_rwlock_rdlock(&self->_stateRWlock);
  NumberOfConnectionsInternal = VCConnectionManager_GetNumberOfConnectionsInternal(self);
  pthread_rwlock_unlock(&self->_stateRWlock);
  return NumberOfConnectionsInternal;
}

- (void)getSentBytes:(int64_t *)a3 receivedBytes:(int64_t *)a4
{
  if (a3 && a4)
  {
    if ((self->_initialSentBytes & 0x8000000000000000) == 0 && !VTP_GetSendRecvStats(a3, a4))
    {
      *a3 -= self->_initialSentBytes;
      *a4 -= self->_initialReceivedBytes;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManager getSentBytes:receivedBytes:];
    }
  }
}

- (int)getConnectionTypeForActiveConnectionWithQuality:(int)a3 forLocalInterface:(BOOL)a4
{
  v4 = a4;
  v5 = VCConnectionManager_CopyConnectionForQuality(self, a3);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if (v4)
  {
    v7 = [v5 localConnectionType];
  }

  else
  {
    v7 = [v5 remoteConnectionType];
  }

  v8 = v7;
  CFRelease(v6);
  return v8;
}

- (int)getCellularTechForActiveConnectionWithQuality:(int)a3 forLocalInterface:(BOOL)a4
{
  v4 = a4;
  v5 = VCConnectionManager_CopyConnectionForQuality(self, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (v4)
  {
    v7 = VCConnection_LocalCellTech(v5);
  }

  else
  {
    v7 = VCConnection_RemoteCellTech(v5);
  }

  v8 = v7;
  CFRelease(v6);
  return v8;
}

- (int)getCellularMTUForActiveConnectionWithQuality:(int)a3
{
  v3 = VCConnectionManager_CopyConnectionForQuality(self, a3);
  v4 = [v3 connectionMTU];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (BOOL)isConnectedOnIPv6ForActiveConnectionWithQuality:(int)a3
{
  v3 = VCConnectionManager_CopyConnectionForQuality(self, a3);
  IsIPv6 = VCConnection_IsIPv6(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return IsIPv6;
}

- (BOOL)isConnectedOnRelayForActiveConnectionWithQuality:(int)a3
{
  v3 = VCConnectionManager_CopyConnectionForQuality(self, a3);
  IsRelay = VCConnection_IsRelay(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return IsRelay;
}

- (void)addMediaHealthStatsHistoryEntryForParticipantID:(id)a3
{
  if ([(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:?])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCConnectionManager addMediaHealthStatsHistoryEntryForParticipantID:];
      }
    }
  }

  else
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaDegradedHistories, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F579D068], a3);
    [(NSMutableDictionary *)self->_mediaDegradedHistoryIndices setObject:&unk_1F5799D08 forKeyedSubscript:a3];
    aggregateStallTimeDuration = self->_aggregateStallTimeDuration;

    [(NSMutableDictionary *)aggregateStallTimeDuration setObject:&unk_1F579E430 forKeyedSubscript:a3];
  }
}

- (void)removeMediaHealthStatsHistoryEntryForParticipantID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:?])
  {
    [(NSMutableDictionary *)self->_mediaDegradedHistories removeObjectForKey:a3];
    [(NSMutableDictionary *)self->_mediaDegradedHistoryIndices removeObjectForKey:a3];
    aggregateStallTimeDuration = self->_aggregateStallTimeDuration;

    [(NSMutableDictionary *)aggregateStallTimeDuration removeObjectForKey:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCConnectionManager removeMediaHealthStatsHistoryEntryForParticipantID:]";
        v13 = 1024;
        v14 = 1499;
        v15 = 2112;
        v16 = a3;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d idsParticipantID %@ is not yet added to mediaDegradedHistories!", &v9, 0x26u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCConnectionManager removeMediaHealthStatsHistoryEntryForParticipantID:];
    }
  }
}

- (void)duplicationStateUpdateWithEvent:(id)a3
{
  v3 = *&a3.var8;
  v4 = *&a3.var0;
  v11 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->_stateRWlock);
  updated = VCDuplicationHandler_HandleDuplicationStateUpdateEvent(self->_duplicationHandler, v4, v3);
  if (updated)
  {
    VCConnectionManager_SetDuplicationEnabledInternal(self, [(VCConnectionManager *)self isDuplicationEnabled]);
    if ((updated & 0x100) != 0)
    {
      v7 = [(VCConnectionManager *)self isDuplicationEnabled];
      delegateQueue = self->_delegateQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__VCConnectionManager_duplicationStateUpdateWithEvent___block_invoke;
      v9[3] = &unk_1E85F4180;
      v9[4] = self;
      v9[5] = updated;
      v10 = v7;
      dispatch_async(delegateQueue, v9);
    }
  }

  VCConnectionManager_UpdateConnectionForDuplication(self);
  pthread_rwlock_unlock(&self->_stateRWlock);
}

uint64_t __55__VCConnectionManager_duplicationStateUpdateWithEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) preferredLocalInterfaceForDuplication];
  v4 = *(a1 + 41);
  v5 = *(a1 + 48);

  return [v2 didUpdatePreferredInterfaceForDuplication:v3 notifyPeer:v4 enableDuplication:v5 isMediaUnrecoverableSignal:1];
}

- (void)aggregateStallTimeDuration:(id *)a3 idsParticipantID:(id)a4
{
  if (a3->var3 <= 0.0)
  {
    aggregateStallTimeDuration = self->_aggregateStallTimeDuration;
    v6 = &unk_1F579E430;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    aggregateStallTimeDuration = self->_aggregateStallTimeDuration;
  }

  [(NSMutableDictionary *)aggregateStallTimeDuration setObject:v6 forKeyedSubscript:a4];
}

- (void)checkMediaQualityDegradedForParticipantID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_aggregateStallTimeDuration objectForKeyedSubscript:{a3), "doubleValue"}];
      mediaDegradedThreshold = self->_mediaDegradedThreshold;
      *buf = 136316162;
      v15 = v5;
      v16 = 2080;
      v17 = "[VCConnectionManager checkMediaQualityDegradedForParticipantID:]";
      v18 = 1024;
      v19 = 1532;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = mediaDegradedThreshold;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Aggregated stall time duration=%.2f Media degraded threshold=%.2f", buf, 0x30u);
    }
  }

  [-[NSMutableDictionary objectForKeyedSubscript:](self->_aggregateStallTimeDuration objectForKeyedSubscript:{a3), "doubleValue"}];
  if (v9 <= self->_mediaDegradedThreshold)
  {
    if (self->_isDuplicationAllowedForMediaDegraded)
    {
      self->_isDuplicationAllowedForMediaDegraded = 0;
      delegateQueue = self->_delegateQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__VCConnectionManager_checkMediaQualityDegradedForParticipantID___block_invoke_2;
      v12[3] = &unk_1E85F3778;
      v12[4] = self;
      dispatch_async(delegateQueue, v12);
    }
  }

  else
  {
    if (!self->_isDuplicationAllowedForMediaDegraded)
    {
      v10 = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__VCConnectionManager_checkMediaQualityDegradedForParticipantID___block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(v10, block);
    }

    self->_isDuplicationAllowedForMediaDegraded = 1;
    [(VCConnectionManager *)self checkForCachedWRMNotification];
  }
}

uint64_t __65__VCConnectionManager_checkMediaQualityDegradedForParticipantID___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];

  return [v1 didMediaQualityDegrade:1];
}

uint64_t __65__VCConnectionManager_checkMediaQualityDegradedForParticipantID___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];

  return [v1 didMediaQualityDegrade:0];
}

- (void)updateMediaHealthStats:(id *)a3 idsParticipantID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:a4])
  {
    if ([(VCConnectionManager *)self useMediaDrivenDuplication])
    {
      if (self->_resetMediaHealthStats)
      {
        [(VCConnectionManager *)self resetMediaHealthStats];
        self->_resetMediaHealthStats = 0;
      }

      var1 = a3->var1;
      self->_isVideoExpected = var1;
      if (var1)
      {
        [(VCConnectionManager *)self updateMediaDegradedHistoryWithCurrentVideoStallDuration:a4 idsParticipantID:a3->var2];
        [(VCConnectionManager *)self aggregateStallTimeDuration:a3 idsParticipantID:a4];
      }

      if (self->_isOneToOneModeEnabled)
      {
        lastTransitionToFECTime = self->_lastTransitionToFECTime;
        if (lastTransitionToFECTime == 0.0 || a3->var0 - lastTransitionToFECTime <= self->_mediaDegradedThreshold || ([-[NSMutableDictionary objectForKeyedSubscript:](self->_aggregateStallTimeDuration objectForKeyedSubscript:{a4), "doubleValue"}], v9 <= self->_mediaDegradedThreshold))
        {
          if (a3->var1)
          {
            if (a3->var3 != 0.0)
            {
              return;
            }
          }

          else if (!self->_isPrimaryLinkUsable)
          {
            return;
          }

          v10 = self;
          v11 = 15;
        }

        else
        {
          v10 = self;
          v11 = 14;
        }

        [(VCConnectionManager *)v10 duplicationStateUpdateWithEvent:v11, 0];
      }
    }

    else if (self->_isOneToOneModeEnabled)
    {
      [(VCConnectionManager *)self aggregateStallTimeDuration:a3 idsParticipantID:a4];

      [(VCConnectionManager *)self checkMediaQualityDegradedForParticipantID:a4];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v12;
        v16 = 2080;
        v17 = "[VCConnectionManager updateMediaHealthStats:idsParticipantID:]";
        v18 = 1024;
        v19 = 1560;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Ignoring media health stats update", &v14, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManager updateMediaHealthStats:idsParticipantID:];
    }
  }
}

- (void)updateMediaDegradedHistoryWithValue:(double)a3 idsParticipantID:(id)a4
{
  if (a3 >= 0.0)
  {
    v8 = ([-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaDegradedHistoryIndices "objectForKeyedSubscript:"intValue"")] + 1) % 5;
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaDegradedHistoryIndices, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v8], a4);
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v10 = [(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:a4];

    [v10 setObject:v9 atIndexedSubscript:v8];
  }
}

- (BOOL)isDuplicationAllowedForParticipantID:(id)a3 bucketsToSum:(int)a4 threshold:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if ((a4 - 6) > 0xFFFFFFFA)
  {
    v9 = a4;
  }

  else
  {
    v9 = 5;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136316162;
        v18 = v10;
        v19 = 2080;
        v20 = "[VCConnectionManager isDuplicationAllowedForParticipantID:bucketsToSum:threshold:]";
        v21 = 1024;
        v22 = 1610;
        v23 = 1024;
        v24 = a4;
        v25 = 1024;
        v26 = 5;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid bucketsToSum %d, defaulting to %d", &v17, 0x28u);
      }
    }
  }

  v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaDegradedHistoryIndices objectForKeyedSubscript:{a3), "intValue"}] % 5;
  v13 = v9 + 1;
  v14 = 0.0;
  do
  {
    [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_mediaDegradedHistories objectForKeyedSubscript:{a3), "objectAtIndexedSubscript:", v12), "doubleValue"}];
    v14 = v14 + v15;
    v12 = (v12 + 4) % 5u;
    --v13;
  }

  while (v13 > 1);
  return v14 / v9 * 100.0 > a5;
}

- (void)updateMediaDegradedHistoryWithCurrentVideoStallDuration:(double)a3 idsParticipantID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  [(VCConnectionManager *)self updateMediaDegradedHistoryWithValue:a4 idsParticipantID:a3];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(NSMutableDictionary *)self->_mediaDegradedHistories allKeys];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (([v11 isEqual:&unk_1F5799D08] & 1) == 0)
        {
          v9 &= [(VCConnectionManager *)self isDuplicationAllowedForParticipantID:v11 bucketsToSum:4 threshold:50.0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if (self->_isDuplicationAllowedForMediaDegraded != (v9 & 1) && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = "not allowed";
      *&v15[4] = v12;
      *v15 = 136315906;
      *&v15[14] = "[VCConnectionManager updateMediaDegradedHistoryWithCurrentVideoStallDuration:idsParticipantID:]";
      *&v15[12] = 2080;
      if (v9)
      {
        v14 = "allowed";
      }

      *&v15[22] = 1024;
      v16 = 1642;
      v17 = 2080;
      v18 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Per media criteria, duplication is %s!", v15, 0x26u);
    }
  }

  self->_isDuplicationAllowedForMediaDegraded = v9 & 1;
  [(VCConnectionManager *)self checkForCachedWRMNotification:*v15];
}

- (void)updateMediaDegradedHistoryWithCurrentAudioErasure:(double)a3 idsParticipantID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:?])
  {
    [(VCConnectionManager *)self updateMediaDegradedHistoryWithValue:a4 idsParticipantID:a3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(NSMutableDictionary *)self->_mediaDegradedHistories allKeys];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v11 &= [(VCConnectionManager *)self isDuplicationAllowedForParticipantID:*(*(&v21 + 1) + 8 * i) bucketsToSum:4 threshold:50.0];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1;
    }

    if (self->_isDuplicationAllowedForMediaDegraded != v11 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = "not allowed";
        *&v16[4] = v13;
        *v16 = 136315906;
        *&v16[14] = "[VCConnectionManager updateMediaDegradedHistoryWithCurrentAudioErasure:idsParticipantID:]";
        *&v16[12] = 2080;
        if (v11)
        {
          v15 = "allowed";
        }

        *&v16[22] = 1024;
        v17 = 1661;
        v18 = 2080;
        v19 = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Per media criteria, duplication is %s!", v16, 0x26u);
      }
    }

    self->_isDuplicationAllowedForMediaDegraded = v11;
    [(VCConnectionManager *)self checkForCachedWRMNotification:*v16];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionManager updateMediaDegradedHistoryWithCurrentAudioErasure:idsParticipantID:];
    }
  }
}

- (void)updateWithRemoteMediaHealthDuplication:(BOOL)a3
{
  if (a3)
  {
    v3 = 65552;
  }

  else
  {
    v3 = 16;
  }

  [(VCConnectionManager *)self duplicationStateUpdateWithEvent:v3, 0xAAAA000000000000];
}

- (void)resetMediaHealthStats
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableDictionary *)self->_mediaDegradedHistories allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_mediaDegradedHistories objectForKeyedSubscript:v8];
        if ([v9 count])
        {
          v10 = 0;
          v11 = 1;
          do
          {
            [v9 setObject:&unk_1F579E430 atIndexedSubscript:v10];
            v10 = v11;
          }

          while ([v9 count] > v11++);
        }

        [(NSMutableDictionary *)self->_aggregateStallTimeDuration setObject:&unk_1F579E430 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)addDistinctConnectionInterfaceToSet:(id)a3 withInterfaceType:(int)a4
{
  v4 = &unk_1F5799D68;
  if (a4 != 87 && a4 != 69)
  {
    if (a4 != 67)
    {
      return;
    }

    v4 = &unk_1F5799D80;
  }

  [a3 addObject:v4];
}

- (id)getActiveConnectionRegistryAndUpdateDuplicationPossibility
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = [MEMORY[0x1E695DFA8] set];
  v22 = [MEMORY[0x1E695DFA8] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_connectionArray;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        if (self->_isOneToOneModeEnabled)
        {
          if (!VCConnection_IsEndToEndLink(*(*(&v31 + 1) + 8 * i)))
          {
            continue;
          }

          if (self->_isOneToOneModeEnabled)
          {
            goto LABEL_10;
          }
        }

        if ((VCConnection_IsEndToEndLink(v8) & 1) == 0)
        {
LABEL_10:
          v9 = VCConnection_ReportingConnectionInterface(v8, 1);
          v10 = VCConnection_ReportingConnectionInterface(v8, 0);
          v11 = MEMORY[0x1E696AEC0];
          v12 = VCConnection_ReportingIPVersion(v8);
          v13 = [v11 stringWithFormat:@"%c%c%d%c", v9, v10, v12, VCConnection_ReportingConnectionType(v8)];
          if ([v3 objectForKeyedSubscript:v13])
          {
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v3, "objectForKeyedSubscript:", v13), "unsignedIntValue") + 1}];
            v15 = v3;
          }

          else
          {
            v15 = v3;
            v14 = &unk_1F5799D38;
          }

          [v15 setObject:v14 forKeyedSubscript:v13];
          [(VCConnectionManager *)self addDistinctConnectionInterfaceToSet:v23 withInterfaceType:v9];
          [(VCConnectionManager *)self addDistinctConnectionInterfaceToSet:v22 withInterfaceType:v10];
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v5);
  }

  self->_multipleInterfacesAvailable = 0;
  if ([(VCConnectionManager *)self localOrRemoteHasMultipleInterfaceAvailable:v23 remoteInterface:v22])
  {
    self->_multipleInterfacesAvailable = 1;
  }

  v16 = [MEMORY[0x1E696AD60] string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v3);
        }

        [v16 appendFormat:@"%@:%@, ", *(*(&v26 + 1) + 8 * j), objc_msgSend(v3, "objectForKeyedSubscript:", *(*(&v26 + 1) + 8 * j))];
      }

      v18 = [v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v18);
  }

  if ([v16 length])
  {
    [v16 deleteCharactersInRange:{objc_msgSend(v16, "length") - 1, 1}];
  }

  return v16;
}

- (void)configureNWConnectionMonitor:(id)a3
{
  if (self->_isNWConnectionMonitorEnabled)
  {
    if (VCConnection_IsLocalOnWiFi(a3))
    {
      self->_ignoreNWConnectionMonitorNotification = 0;
      v5 = [a3 localInterfaceName];
      if (v5)
      {
        v6 = v5;
        if (![(NSString *)self->_nwMonitorWiFiInterfaceName isEqualToString:v5])
        {

          self->_nwMonitorWiFiInterfaceName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v6];

          [(VCConnectionManager *)self renewNWMonitor];
        }
      }
    }

    else if (VCConnection_IsLocalOnCellular(a3) && self->_isNWConnectionMonitorCellularEnabled)
    {
      self->_ignoreNWConnectionMonitorNotification = 0;
      v7 = [a3 localInterfaceName];
      if (v7)
      {
        v8 = v7;
        if (![(NSString *)self->_nwMonitorCellularInterfaceName isEqualToString:v7])
        {

          self->_nwMonitorCellularInterfaceName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v8];

          [(VCConnectionManager *)self renewNWMonitorCellular];
        }
      }
    }

    else
    {
      self->_ignoreNWConnectionMonitorNotification = 1;
    }
  }
}

- (void)setupNetworkConditionMonitor
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)startBrokenNetworkDetection
{
  v14 = *MEMORY[0x1E69E9840];
  [(VCLinkProbingHandler *)self->_linkProbingHandler startActiveProbingQRLink];
  self->_brokenBackhaulDetectionStarted = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      brokenBackhaulDetectionStarted = self->_brokenBackhaulDetectionStarted;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCConnectionManager startBrokenNetworkDetection]";
      v10 = 1024;
      v11 = 1913;
      v12 = 1024;
      v13 = brokenBackhaulDetectionStarted;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCM: _brokenBackhaulDetectionStarted=%d ", &v6, 0x22u);
    }
  }
}

uint64_t __VCConnectionManager_DidUpdateNetworkCondition_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 41);
      v6 = *(a1 + 42);
      v8 = 136316418;
      v9 = v2;
      v10 = 2080;
      v11 = "VCConnectionManager_DidUpdateNetworkCondition_block_invoke";
      v12 = 1024;
      v13 = 1924;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCM: Received network condition monitor update: isLocalNetworkQualityBad=%d isRemoteNetworkQualityBad=%d didLocalNetworkQualityChange=%d", &v8, 0x2Eu);
    }
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(*(a1 + 32) + 440) didLocalNetworkQualityChange:*(a1 + 42) isLocalNetworkQualityBad:*(a1 + 40) isRemoteNetworkQualityBad:*(a1 + 41)];
  }

  return result;
}

- (void)didUpdateMotionActivity:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->_stateRWlock);
  enableMotionBasedDuplication = self->_enableMotionBasedDuplication;
  isUserMoving = self->_isUserMoving;
  v7 = self->_coreMotionManager;
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    v9 = CFRetain(reportingAgent);
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
  if (enableMotionBasedDuplication)
  {
    IntValueForKey = VCDefaults_GetIntValueForKey(@"forceUserMoving", 0);
    v11 = [(VCCoreMotionManager *)v7 getMotionActivityValueForMotionActivity:a3]!= 2 && IntValueForKey == 0;
    v12 = !v11;
    if (isUserMoving != v12)
    {
      pthread_rwlock_wrlock(&self->_stateRWlock);
      [(VCDuplicationHandler *)self->_duplicationHandler setIsUserMoving:v12];
      self->_isUserMoving = v12;
      pthread_rwlock_unlock(&self->_stateRWlock);
      if (v12)
      {
        [(VCConnectionManager *)self checkForCachedWRMNotification];
      }
    }
  }

  v13[0] = @"CMActivityValue";
  v13[1] = @"CMActivityConfidence";
  v14[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[VCCoreMotionManager getMotionActivityValueForMotionActivity:](v7, "getMotionActivityValueForMotionActivity:", a3)}];
  v14[1] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "confidence")}];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  reportingGenericEvent();

  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)checkpointPrimaryConnection:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
    IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(a3);
    IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a3);
    IsRemoteOnWiFi = VCConnection_IsRemoteOnWiFi(a3);
    IsRelay = VCConnection_IsRelay(a3);
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCConnectionManager-primaryConnectionChanged");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = VCConnection_Priority(a3);
        v13 = "secondary";
        if (v12 == 2)
        {
          v13 = "primary";
        }

        v23 = v13;
        v14 = "wired";
        if (IsLocalOnWiFi)
        {
          v15 = "wifi";
        }

        else
        {
          v15 = "wired";
        }

        if (IsLocalOnCellular)
        {
          v15 = "cellular";
        }

        if (IsRemoteOnWiFi)
        {
          v14 = "wifi";
        }

        if (IsRemoteOnCellular)
        {
          v14 = "cellular";
        }

        v21 = v14;
        v22 = v15;
        v16 = [a3 uplinkBitrateCap];
        v17 = [a3 downlinkBitrateCap];
        callID = self->_callID;
        if (IsRelay)
        {
          v19 = "Relay";
        }

        else
        {
          v19 = "P2P";
        }

        if (VCConnection_IsIPv6(a3))
        {
          v20 = "IPV6";
        }

        else
        {
          v20 = "IPV4";
        }

        *buf = 136318210;
        v25 = v10;
        v26 = 2080;
        v27 = "[VCConnectionManager checkpointPrimaryConnection:]";
        v28 = 1024;
        v29 = 1987;
        v30 = 2080;
        v31 = v23;
        v32 = 2080;
        v33 = v22;
        v34 = 2080;
        v35 = v21;
        v36 = 1024;
        v37 = v16;
        v38 = 1024;
        v39 = v17;
        v40 = 1024;
        v41 = callID;
        v42 = 2080;
        v43 = v19;
        v44 = 2080;
        v45 = v20;
        v46 = 1024;
        v47 = [a3 isVirtualRelayLink];
        v48 = 2112;
        v49 = [a3 connectionUUID];
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCConnectionManager-primaryConnectionChanged type=%s, localInterface=%s, remoteInterface=%s, uplinkBitrateCap=%u, downlinkBitrateCap=%u, callID=%u, connectionType=%s, addressType=%s, isVirtualRelay=%d, linkUUID=%@", buf, 0x70u);
      }
    }

    if (self->_overlaySource)
    {
      if (VCConnection_Priority(a3) == 2)
      {
        VCConnectionManager_SetOverlayLinkDetails(self, a3, 0, 0);
      }
    }
  }

  else
  {
    [VCConnectionManager checkpointPrimaryConnection:];
  }
}

- (BOOL)hasSameReportingConfig:(id)a3 oldPrimaryConnection:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = VCConnectionManager_ConnectionInterfaceType(a3, 1);
  v8 = VCConnectionManager_ConnectionInterfaceType(a3, 0);
  v9 = VCConnectionManager_ConnectionInterfaceType(a4, 1);
  v10 = VCConnectionManager_ConnectionInterfaceType(a4, 0);
  IsRelay = VCConnection_IsRelay(a3);
  v12 = VCConnection_IsRelay(a4);
  if (v7)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (self->_isOneToOneModeEnabled)
  {
    if (!v8)
    {
      LOBYTE(v14) = 1;
    }

    if ((v14 & 1) == 0 && v10)
    {
      v15 = v12;
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      v17 = [v16 isEqualToString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)}];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v19 = [v18 isEqualToString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v10)}] & (IsRelay ^ v15 ^ 1);
      if (v17)
      {
        LOBYTE(v20) = v19;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      return v20;
    }

LABEL_19:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        return v20;
      }

      v25 = "NO";
      isOneToOneModeEnabled = self->_isOneToOneModeEnabled;
      v31 = 136316930;
      v32 = v23;
      if (v7)
      {
        v27 = "NO";
      }

      else
      {
        v27 = "YES";
      }

      v34 = "[VCConnectionManager hasSameReportingConfig:oldPrimaryConnection:]";
      v36 = 2012;
      if (v9)
      {
        v28 = "NO";
      }

      else
      {
        v28 = "YES";
      }

      v33 = 2080;
      if (v8)
      {
        v29 = "NO";
      }

      else
      {
        v29 = "YES";
      }

      v35 = 1024;
      v37 = 1024;
      if (!v10)
      {
        v25 = "YES";
      }

      v38 = isOneToOneModeEnabled;
      v39 = 2080;
      v40 = v27;
      v41 = 2080;
      v42 = v28;
      v43 = 2080;
      v44 = v29;
      v45 = 2080;
      v46 = v25;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d All values do not exist isOneToOne=%d newLocalInterfaceMissing=%s oldlocalInterfaceMissing=%s newRemoteInterfaceMissing=%s oldRemoteInterfaceMissing=%s", &v31, 0x4Au);
    }

    LOBYTE(v20) = 0;
    return v20;
  }

  if (v14)
  {
    goto LABEL_19;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];

  LOBYTE(v20) = [v21 isEqualToString:v22];
  return v20;
}

- (void)primaryConnectionChanged:(id)a3 oldPrimaryConnection:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
  VCConnectionManager_UseCellPrimaryInterface(self, IsLocalOnCellular);
  [(VCConnectionManager *)self updateWRMDuplicationForHandover];
  v8 = VCConnection_IsLocalOnCellular(a3);
  _VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue(self, v8);
  if (![(VCConnectionManager *)self hasSameReportingConfig:a3 oldPrimaryConnection:a4])
  {
    *&self->_mediaCellularTxBytes = 0u;
    *&self->_mediaWifiTxBytes = 0u;
    *&self->_signalingExcessiveCellularTxBytes = 0u;
    *&self->_budgetConsumingCellularTxBytes = 0u;
    *&self->_mediaExcessiveCellularTxBytes = 0u;
  }

  [(VCConnectionManager *)self configureNWConnectionMonitor:a3];
  if (VCConnection_IsLocalOnCellular(a3) && ![(VCDuplicationHandler *)self->_duplicationHandler allowDuplication])
  {
    [(VCDuplicationHandler *)self->_duplicationHandler setAllowDuplication:1];
  }

  [(VCConnectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = _VCConnectionManager_CopyConnectionForQualityInternal(self, 1);
    delegateQueue = self->_delegateQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__VCConnectionManager_primaryConnectionChanged_oldPrimaryConnection___block_invoke;
    v14[3] = &unk_1E85F3B00;
    v14[4] = self;
    v14[5] = a3;
    v14[6] = a4;
    v14[7] = v9;
    dispatch_async(delegateQueue, v14);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCConnectionManager primaryConnectionChanged:oldPrimaryConnection:]";
        v19 = 1024;
        v20 = 2049;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnectionManager: Delegate didn't implement primaryConnectionChanged", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [VCConnectionManager primaryConnectionChanged:oldPrimaryConnection:];
    }
  }
}

void __69__VCConnectionManager_primaryConnectionChanged_oldPrimaryConnection___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  v2 = *(*(a1 + 32) + 824);
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(*(a1 + 56));
  VCNetworkConditionMonitor_SetIsLocalActiveOnCellular(v2, IsLocalOnCellular);
  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)renewNWMonitor
{
  v3[5] = *MEMORY[0x1E69E9840];
  nwConnectionMonitorQueue = self->_nwConnectionMonitorQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__VCConnectionManager_renewNWMonitor__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(nwConnectionMonitorQueue, v3);
}

uint64_t __37__VCConnectionManager_renewNWMonitor__block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:*(a1 + 32)];
  [*(a1 + 32) destroyNWMonitorInternal];
  v3 = [*(*(a1 + 32) + 2960) UTF8String];
  v4 = [*(*(a1 + 32) + 2960) length];
  v5 = *(*(a1 + 32) + 808);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__VCConnectionManager_renewNWMonitor__block_invoke_2;
  v7[3] = &unk_1E85F3778;
  v7[4] = v2;
  result = VCNWConnectionMonitor_CreateWithInterfaceName(v3, v4, 0, v5, v7);
  *(*(a1 + 32) + 784) = result;
  return result;
}

uint64_t __37__VCConnectionManager_renewNWMonitor__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 setNWMonitorStatisticsHandler];
}

- (void)setNWMonitorStatisticsHandler
{
  dispatch_assert_queue_V2(self->_nwConnectionMonitorQueue);
  nwMonitor = self->_nwMonitor;
  nwConnectionMonitorQueue = self->_nwConnectionMonitorQueue;

  VCNWConnectionMonitor_SetStatisticsHandler(nwMonitor, nwConnectionMonitorQueue, self, _VCConnectionManagerNWConnectionStatisticsCallback);
}

- (void)renewNWMonitorCellular
{
  v3[5] = *MEMORY[0x1E69E9840];
  nwConnectionMonitorQueue = self->_nwConnectionMonitorQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__VCConnectionManager_renewNWMonitorCellular__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(nwConnectionMonitorQueue, v3);
}

uint64_t __45__VCConnectionManager_renewNWMonitorCellular__block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:*(a1 + 32)];
  [*(a1 + 32) destroyNWMonitorCellularInternal];
  v3 = [*(*(a1 + 32) + 2968) UTF8String];
  v4 = [*(*(a1 + 32) + 2968) length];
  v5 = *(*(a1 + 32) + 808);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__VCConnectionManager_renewNWMonitorCellular__block_invoke_2;
  v7[3] = &unk_1E85F3778;
  v7[4] = v2;
  result = VCNWConnectionMonitor_CreateWithInterfaceName(v3, v4, 0, v5, v7);
  *(*(a1 + 32) + 792) = result;
  return result;
}

uint64_t __45__VCConnectionManager_renewNWMonitorCellular__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 setNWMonitorCellularHandlers];
}

- (void)setNWMonitorCellularHandlers
{
  dispatch_assert_queue_V2(self->_nwConnectionMonitorQueue);
  nwMonitorCellular = self->_nwMonitorCellular;
  v4 = VTP_NWConnectionQueue();
  VCNWConnectionMonitor_SetStatisticsHandler(nwMonitorCellular, v4, self, _VCConnectionManagerNWConnectionStatisticsCallback);
  v5 = self->_nwMonitorCellular;
  v6 = VTP_NWConnectionQueue();

  VCNWConnectionMonitor_SetPacketEventHandler(v5, v6, self, _VCConnectionManagerNWConnectionPacketEventCallback);
}

- (void)destroyNWMonitors
{
  v3[5] = *MEMORY[0x1E69E9840];
  if (self->_nwMonitor || self->_nwMonitorCellular)
  {
    nwConnectionMonitorQueue = self->_nwConnectionMonitorQueue;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __40__VCConnectionManager_destroyNWMonitors__block_invoke;
    v3[3] = &unk_1E85F3778;
    v3[4] = self;
    dispatch_sync(nwConnectionMonitorQueue, v3);
  }
}

uint64_t __40__VCConnectionManager_destroyNWMonitors__block_invoke(uint64_t a1)
{
  [*(a1 + 32) destroyNWMonitorInternal];
  v2 = *(a1 + 32);

  return [v2 destroyNWMonitorCellularInternal];
}

- (void)destroyNWMonitorInternal
{
  dispatch_assert_queue_V2(self->_nwConnectionMonitorQueue);
  nwMonitor = self->_nwMonitor;
  if (nwMonitor)
  {
    VCNWConnectionMonitor_Destroy(nwMonitor);
    self->_nwMonitor = 0;
  }
}

- (void)destroyNWMonitorCellularInternal
{
  dispatch_assert_queue_V2(self->_nwConnectionMonitorQueue);
  nwMonitorCellular = self->_nwMonitorCellular;
  if (nwMonitorCellular)
  {
    VCNWConnectionMonitor_Destroy(nwMonitorCellular);
    self->_nwMonitorCellular = 0;
  }
}

- (void)disableRemotePreferredInterfaceInference:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  self->_disableRemoteInterfaceInference = a3;
  if (self->_duplicateImportantPktsEnabled && (self->_connectionSelectionVersion - 2) <= 4)
  {
    self->_disableRemoteInterfaceInference = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCConnectionManager disableRemotePreferredInterfaceInference:]";
        v9 = 1024;
        v10 = 2130;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: force to disable remote preferred interface inference", &v5, 0x1Cu);
      }
    }
  }
}

- (int)getConnectionSelectionVersionFromFrameworkVersion:(id)a3
{
  if ([a3 compare:@"1476"] == -1)
  {
    return 1;
  }

  if ([a3 compare:@"1651"] == -1)
  {
    return 2;
  }

  if ([a3 compare:@"1885"] == -1)
  {
    return 3;
  }

  if ([a3 compare:@"2005"] == -1)
  {
    return 4;
  }

  if ([a3 compare:@"2045"] == -1)
  {
    return 5;
  }

  return 6;
}

- (void)promoteSecondaryConnectionToPrimary:(id)a3
{
  VCConnection_SetPriority(a3, 2);
  [(VCConnectionManager *)self useConnectionAsPrimary:a3];

  [(VCConnectionManager *)self setSecondaryConnection:0];
}

- (BOOL)isBetterConnection:(id)a3 asPrimary:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v7 = [(VCConnectionManager *)self getPrimaryConnectionToBeCompared];
  }

  else
  {
    v7 = [(VCConnectionManager *)self getSecondaryConnectionToBeCompared];
  }

  v8 = v7;
  return (VCConnection_Equal(a3, v7) & 1) == 0 && [a3 compare:v8 isPrimary:v4 selectionPolicy:{-[VCConnectionManager getConnectionSelectionPolicy](self, "getConnectionSelectionPolicy")}] == 1;
}

- (BOOL)isOptimalConnection:(id)a3 asPrimary:(BOOL)a4 interfaceMask:(int)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a3);
    v8 = ((v5 & 4) == 0) ^ VCConnection_IsRemoteOnWiFi(a3);
    if ((IsLocalOnWiFi ^ v5))
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v12 = [objc_msgSend(a3 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v17 = "is not";
        v21 = 136316162;
        v22 = v10;
        v24 = "[VCConnectionManager isOptimalConnection:asPrimary:interfaceMask:]";
        v23 = 2080;
        if (v9)
        {
          v17 = "is";
        }

        v25 = 1024;
        v26 = 2186;
        v27 = 2080;
        v28 = v12;
        v29 = 2080;
        v30 = v17;
        v18 = " [%s] %s:%d HandoverReport: connection %s %s optimal primary connection";
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v18, &v21, 0x30u);
      }
    }
  }

  else
  {
    IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
    v14 = ((v5 & 8) == 0) ^ VCConnection_IsRemoteOnCellular(a3);
    if (((v5 & 2) == 0) == IsLocalOnCellular)
    {
      v9 = 0;
    }

    else
    {
      v9 = v14;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v16 = [objc_msgSend(a3 "description")];
        }

        else
        {
          v16 = "<nil>";
        }

        v19 = "is not";
        v21 = 136316162;
        v22 = v15;
        v24 = "[VCConnectionManager isOptimalConnection:asPrimary:interfaceMask:]";
        v23 = 2080;
        if (v9)
        {
          v19 = "is";
        }

        v25 = 1024;
        v26 = 2195;
        v27 = 2080;
        v28 = v16;
        v29 = 2080;
        v30 = v19;
        v18 = " [%s] %s:%d HandoverReport: connection %s %s optimal secondary connection";
        goto LABEL_24;
      }
    }
  }

  return v9;
}

- (void)updateWRMDuplicationForHandover
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = micro();
  isPrimaryLocalUsingCell = self->_isPrimaryLocalUsingCell;
  v5 = VCConnectionManager_CopyPrimaryConnection(self);
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(v5);
  self->_isPrimaryLocalUsingCell = IsLocalOnCellular;
  if (v5)
  {
    CFRelease(v5);
    v7 = self->_isPrimaryLocalUsingCell;
  }

  else
  {
    v7 = IsLocalOnCellular;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1DBF04739;
  v22 = 0;
  if (self->_isAudioOnly)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v20 = v8;
  v21 = isPrimaryLocalUsingCell ^ 1;
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  LODWORD(v22) = v9;
  [(VCWRMHandler *)self->_wrmHandler localLinkTypeSuggestionChangeTime];
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    [(VCWRMHandler *)self->_wrmHandler localLinkTypeSuggestionChangeTime];
    v11 = ((v3 - v12) * 1000.0);
  }

  *(v17 + 11) = v11;
  if (isPrimaryLocalUsingCell != v7 && self->_wrmStatusUpdateCallback)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__VCConnectionManager_updateWRMDuplicationForHandover__block_invoke;
    block[3] = &unk_1E85F3868;
    block[4] = self;
    block[5] = &v16;
    dispatch_async(callbackQueue, block);
  }

  _VCConnectionManager_ProcessDuplicationStateUpdateEvent(self, 10, 0, isPrimaryLocalUsingCell != v7, 0, 0, 0);
  if (![(VCConnectionManager *)self isDuplicationAllowed])
  {
    v14 = VCConnectionManager_CopyPrimaryConnection(self);
    if (VCConnection_IsLocalOnWiFi(v14) && self->_savedWRMNotification.applicationType && ![(VCWRMHandler *)self->_wrmHandler localWRMLinkTypeSuggestion])
    {
      self->_isWRMNotificationPending = 1;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else if (!v14)
    {
      goto LABEL_23;
    }

    CFRelease(v14);
    goto LABEL_23;
  }

  _VCConnectionManager_ProcessDuplicationStateUpdateEvent(self, (([(VCWRMHandler *)self->_wrmHandler remoteWRMLinkTypeSuggestion]!= 0) << 40) | (([(VCWRMHandler *)self->_wrmHandler localWRMLinkTypeSuggestion]!= 0) << 32) | (self->_isPrimaryLocalUsingCell << 24) | 0xB, 0, isPrimaryLocalUsingCell != v7, 0, 1, 0);
LABEL_23:
  _Block_object_dispose(&v16, 8);
}

- (BOOL)isLocalCellularInterfaceUsed
{
  pthread_rwlock_rdlock(&self->_stateRWlock);
  v3 = VCConnectionManager_CopyPrimaryConnection(self);
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v5 = VCConnection_IsLocalOnCellular([(VCConnectionManager *)self secondaryConnection]) | IsLocalOnCellular;
  pthread_rwlock_unlock(&self->_stateRWlock);
  return v5 & 1;
}

- (void)reportConnection:(id)a3 isInitialConnection:(BOOL)a4
{
  [a3 type];
  reportingConnectionType();

  [(VCConnectionManager *)self reportLinkSuggestion];
}

- (void)reportConnectionUpdateWithRespCode:(unsigned __int16)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[1] = @"DuplicationMultiLinkAvailable";
  v5[0] = [(VCConnectionManager *)self getActiveConnectionRegistryAndUpdateDuplicationPossibility];
  v4[0] = @"ACAS";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_multipleInterfacesAvailable];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  reportingGenericEvent();
}

- (void)reportConnectionUpdateWithResponseCode:(unsigned __int16)a3 delay:(double)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCConnectionManager_reportConnectionUpdateWithResponseCode_delay___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  v9 = a3;
  dispatch_after(v6, reportingQueue, block);
}

uint64_t __68__VCConnectionManager_reportConnectionUpdateWithResponseCode_delay___block_invoke(uint64_t a1)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 104));
  [*(a1 + 32) reportConnectionUpdateWithRespCode:*(a1 + 40)];
  v2 = (*(a1 + 32) + 104);

  return pthread_rwlock_unlock(v2);
}

- (void)setDefaultLinkProbingCapabilityVersionForDeviceRole:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 || (v4 = arc4random() / 4294967300.0, [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-feature-threshold" userDefaultKey:@"linkProbingFeatureThreshold" defaultValue:&unk_1F579E490 isDoubleType:{1), "doubleValue"}], v4 > v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-capability-version" userDefaultKey:@"linkProbingCapabilityVersion" defaultValue:&unk_1F5799D98 isDoubleType:{0), "unsignedIntValue"}];
  }

  self->_linkProbingCapabilityVersion = v6;
  [(VCLinkProbingHandler *)self->_linkProbingHandler setLinkProbingCapabilityVersion:v6];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      linkProbingCapabilityVersion = self->_linkProbingCapabilityVersion;
      v10 = 136315906;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCConnectionManager setDefaultLinkProbingCapabilityVersionForDeviceRole:]";
      v14 = 1024;
      v15 = 2561;
      v16 = 1024;
      v17 = linkProbingCapabilityVersion;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Link probing capability version on local: %d", &v10, 0x22u);
    }
  }
}

- (void)setRemoteLinkProbingCapabilityVersion:(unsigned __int8)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  self->_remoteLinkProbingCapabilityVersion = a3;
  v16[0] = @"lnkPrbVers";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_linkProbingCapabilityVersion];
  v16[1] = @"remLnkPrbVers";
  v17[0] = v4;
  v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_remoteLinkProbingCapabilityVersion];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  reportingGenericEvent();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remoteLinkProbingCapabilityVersion = self->_remoteLinkProbingCapabilityVersion;
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCConnectionManager setRemoteLinkProbingCapabilityVersion:]";
      v12 = 1024;
      v13 = 2570;
      v14 = 1024;
      v15 = remoteLinkProbingCapabilityVersion;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Link probing capability version on remote: %d", &v8, 0x22u);
    }
  }
}

- (int)setConnectionHealthOnControlInfo:(void *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_startConnectionHealthMonitoring && self->_supportDuplication)
  {
    v5 = [(VCConnectionHealthMonitor *)self->_connectionHealthMonitor generateStatsBlob];
    if (v5)
    {
      VCMediaControlInfoSetInfo(a3, 2, &v5, 4);
    }
  }

  return 0;
}

- (int)processConnectionHealthFromControlInfo:(void *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_startConnectionHealthMonitoring || !self->_supportDuplication)
  {
    return 0;
  }

  result = VCMediaControlInfoHasInfo(a3, 2);
  if (result)
  {
    [(VCConnectionManager *)a3 processConnectionHealthFromControlInfo:&v6];
    return v6;
  }

  return result;
}

- (void)useConnectionAsPrimary:(id)a3
{
  VCConnectionManager_SetPrimaryConnection(self);

  [(VCConnectionManager *)self setLastPrimaryConnectionInUse:a3];
}

- (void)updateDuplicationStateWithEventType:(unsigned __int8)a3
{
  if (VCDuplicationHandler_HandleDuplicationStateUpdateEvent(self->_duplicationHandler, a3, 0))
  {
    v4 = [(VCConnectionManager *)self isDuplicationEnabled];

    VCConnectionManager_SetDuplicationEnabledInternal(self, v4);
  }
}

- (void)reportNoPacketUpdateUsingCurrentTime:(double)a3 lastReceivedPacketTime:(double)a4
{
  if (self->_isOneToOneModeEnabled && (a4 != 0.0 || self->_startConnectionHealthMonitoring))
  {
    v5 = a3 - a4;
    v6 = v5 > 1.0;
    if (v5 <= 1.0)
    {
      if (self->_previousNoRemoteInProgress)
      {
LABEL_8:
        reportingNoRemoteChanged();
      }
    }

    else if (!self->_previousNoRemoteInProgress)
    {
      goto LABEL_8;
    }

    self->_previousNoRemoteInProgress = v6;
  }
}

- (void)connectionHealthDidUpdate:(int)a3 isLocalConnection:(BOOL)a4
{
  v4 = 576;
  if (a4)
  {
    v4 = 528;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(VCConnectionManager *)self updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:self + v4];
    }

    else if (a3 == 3)
    {
      [(VCConnectionManager *)self updateConnectionStatsWithIndicatorPrimaryImproved:self + v4];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      [(VCConnectionManager *)self updateConnectionStatsWithIndicatorNoPacket:self + v4];
    }
  }

  else
  {
    [(VCConnectionManager *)self updateConnectionStatsWithIndicatorNone:self + v4];
  }
}

- (void)updateConnectionStatsWithIndicatorNoPacket:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self->_localConnectionStats.isConnectionPaused && !self->_remoteConnectionStats.isConnectionPaused)
  {
    var6 = a3->var6;
    v6 = micro();
    noRemoteDuplicationThresholdFast = 4.0;
    if ([(VCWifiAssistManager *)self->_vcWifiAssist isAvailable]&& self->_fastMediaDuplicationEnabled)
    {
      noRemoteDuplicationThresholdFast = self->_noRemoteDuplicationThresholdFast;
    }

    if (a3->var0 == 0.0 && !self->_startConnectionHealthMonitoring)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 136315906;
          *&v26[4] = v24;
          *&v26[12] = 2080;
          *&v26[14] = "[VCConnectionManager updateConnectionStatsWithIndicatorNoPacket:]";
          *&v26[22] = 1024;
          v27 = 2846;
          v28 = 1024;
          LODWORD(v29) = var6 == 0;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LastReceivedPacketTime has not been set isLocalConnection=%d", v26, 0x22u);
        }
      }
    }

    else
    {
      a3->var4 = v6 - a3->var0;
      if (!var6)
      {
        [(VCConnectionManager *)self reportNoPacketUpdateUsingCurrentTime:v6 lastReceivedPacketTime:?];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          var4 = a3->var4;
          v11 = self->_noRemoteDuplicationThresholdFast;
          *v26 = 136316418;
          *&v26[4] = v8;
          *&v26[12] = 2080;
          *&v26[14] = "[VCConnectionManager updateConnectionStatsWithIndicatorNoPacket:]";
          *&v26[22] = 1024;
          v27 = 2855;
          v28 = 2048;
          v29 = noRemoteDuplicationThresholdFast;
          v30 = 2048;
          v31 = var4;
          v32 = 2048;
          v33 = v11;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using noPacketThreshold=%.2f noPacketInterval:%.2f noRemoteDuplicationThresholdFast:%.2f", v26, 0x3Au);
        }
      }

      v12 = a3->var4;
      if (var6)
      {
        self->_remoteNoRemotePacketInterval = v12;
        if (a3->var0 != 0.0 && v6 - a3->var2 > 1.0)
        {
          VTP_NotifyRemoteNoRemotePacket(self->_callID, v12);
          a3->var2 = v6;
        }
      }

      else
      {
        self->_noRemotePacketInterval = v12;
      }

      pthread_rwlock_wrlock(&self->_stateRWlock);
      if (VCDuplicationHandler_DuplicationReason(self->_duplicationHandler) || a3->var4 <= noRemoteDuplicationThresholdFast || a3->var0 == 0.0)
      {
        pthread_rwlock_unlock(&self->_stateRWlock);
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = "remote-no-remote";
            v16 = a3->var4;
            *v26 = 136316162;
            if (!var6)
            {
              v15 = "no-remote";
            }

            *&v26[4] = v13;
            *&v26[12] = 2080;
            *&v26[14] = "[VCConnectionManager updateConnectionStatsWithIndicatorNoPacket:]";
            *&v26[22] = 1024;
            v27 = 2875;
            v28 = 2080;
            v29 = *&v15;
            v30 = 2048;
            v31 = v16;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive and cache internal suggestion to duplication, %s packets for %.6f seconds.", v26, 0x30u);
          }
        }

        [(VCConnectionManager *)self updateDuplicationStateWithEventType:2 * (var6 != 0), *v26];
        VCConnectionManager_UpdateConnectionForDuplication(self);
        pthread_rwlock_unlock(&self->_stateRWlock);
        if (self->_startConnectionHealthMonitoring)
        {
          [(VCConnectionHealthMonitor *)self->_connectionHealthMonitor resetConnectionStats:var6 == 0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = "remote-no-remote";
            *v26 = 136315906;
            *&v26[4] = v17;
            *&v26[12] = 2080;
            *&v26[14] = "[VCConnectionManager updateConnectionStatsWithIndicatorNoPacket:]";
            if (!var6)
            {
              v19 = "no-remote";
            }

            *&v26[22] = 1024;
            v27 = 2886;
            v28 = 2080;
            v29 = *&v19;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: start dupe by %s.", v26, 0x26u);
          }
        }
      }

      if ([(VCConnectionManager *)self shouldDropCurrentPrimaryConnectionWithConnectionStats:a3, *v26, *&v26[16]])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v22 = a3->var4;
            *v26 = 136315906;
            *&v26[4] = v20;
            *&v26[12] = 2080;
            *&v26[14] = "[VCConnectionManager updateConnectionStatsWithIndicatorNoPacket:]";
            *&v26[22] = 1024;
            v27 = 2892;
            v28 = 2048;
            v29 = v22;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Drop and re-select the next candidate as primary connection, since no packet flowing for %f seconds", v26, 0x26u);
          }
        }

        v23 = VCConnectionManager_CopyPrimaryConnection(self);
        [(VCConnectionManager *)self removeConnection:v23];
        if (v23)
        {
          CFRelease(v23);
        }
      }
    }
  }
}

- (void)updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = micro();
  var6 = a3->var6;
  startConnectionHealthMonitoring = self->_startConnectionHealthMonitoring;
  if (startConnectionHealthMonitoring)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  a3->var0 = v8;
  if (v8 != 0.0 || startConnectionHealthMonitoring)
  {
    if (!var6)
    {
      self->_isPrimaryLinkUsable = 0;
      [(VCConnectionManager *)self reportNoPacketUpdateUsingCurrentTime:v5 lastReceivedPacketTime:?];
    }

    var1 = a3->var1;
    if (var1 == 0.0 && !self->_startConnectionHealthMonitoring)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v22 = v18;
          v23 = 2080;
          v24 = "[VCConnectionManager updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:]";
          v25 = 1024;
          v26 = 2912;
          v27 = 1024;
          LODWORD(v28) = var6 == 0;
          v11 = " [%s] %s:%d LastReceivedPacketOnPrimaryTime has not been set isLocalConnection=%d";
          goto LABEL_9;
        }
      }
    }

    else
    {
      v13 = v5 - var1;
      if (v13 > a3->var3)
      {
        a3->var3 = v13;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v16 = "remote";
            *buf = 136316162;
            v22 = v14;
            v23 = 2080;
            v24 = "[VCConnectionManager updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:]";
            if (!var6)
            {
              v16 = "local";
            }

            v25 = 1024;
            v26 = 2918;
            v27 = 2080;
            v28 = v16;
            v29 = 2048;
            v30 = v13;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: %s primary connection has no packet (could already have been received over secondary). Max interval: %f", buf, 0x30u);
          }
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__VCConnectionManager_updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket___block_invoke;
        block[3] = &unk_1E85F4180;
        block[4] = self;
        v20 = var6 == 0;
        *&block[5] = v13;
        dispatch_async(delegateQueue, block);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v9;
      v23 = 2080;
      v24 = "[VCConnectionManager updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket:]";
      v25 = 1024;
      v26 = 2904;
      v27 = 1024;
      LODWORD(v28) = var6 == 0;
      v11 = " [%s] %s:%d LastReceivedPacketTime has not been set isLocalConnection=%d";
LABEL_9:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x22u);
    }
  }
}

uint64_t __77__VCConnectionManager_updateConnectionStatsWithIndicatorOnlyPrimaryNoPacket___block_invoke(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 40)), "stringValue"), "cString"}];

  return reportingLog();
}

- (void)updateConnectionStatsWithIndicatorNone:(id *)a3
{
  v5 = micro();
  v6 = 0.0;
  if (self->_startConnectionHealthMonitoring)
  {
    v6 = v5;
  }

  a3->var0 = v6;
  a3->var1 = v6;

  [VCConnectionManager reportNoPacketUpdateUsingCurrentTime:"reportNoPacketUpdateUsingCurrentTime:lastReceivedPacketTime:" lastReceivedPacketTime:?];
}

- (void)updateConnectionStatsWithIndicatorPrimaryImproved:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = micro();
  var6 = a3->var6;
  if (!self->_startConnectionHealthMonitoring)
  {
    v5 = 0.0;
  }

  a3->var0 = v5;
  a3->var1 = v5;
  if (var6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
    self->_isPrimaryLinkUsable = 1;
  }

  pthread_rwlock_wrlock(&self->_stateRWlock);
  if (VCDuplicationHandler_DuplicationReason(self->_duplicationHandler) == v7)
  {
    if (var6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    [(VCConnectionManager *)self updateDuplicationStateWithEventType:v8];
    VCConnectionManager_UpdateConnectionForDuplication(self);
    pthread_rwlock_unlock(&self->_stateRWlock);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = "remote-no-remote";
        v12 = 136315906;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCConnectionManager updateConnectionStatsWithIndicatorPrimaryImproved:]";
        if (!var6)
        {
          v11 = "no-remote";
        }

        v16 = 1024;
        v17 = 2955;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: stop dupe by %s.", &v12, 0x26u);
      }
    }
  }

  else
  {

    pthread_rwlock_unlock(&self->_stateRWlock);
  }
}

- (void)updateConnectionHealthWithVCStatisticsMessage:(tagVCStatisticsMessage *)a3
{
  v11[5] = *MEMORY[0x1E69E9840];
  connectionHealthMonitor = self->_connectionHealthMonitor;
  if (connectionHealthMonitor && self->_startConnectionHealthMonitoring)
  {
    if (a3->type == 5)
    {
      if (a3->var0.baseband.expectedQueuingDelay != 0.0)
      {
        v7 = VCConnectionManager_CopyPrimaryConnection(self);
        v8 = self->_connectionHealthMonitor;
        linkID = a3->var0.serverStats.linkID;
        v10 = VCConnection_ConnectionID(v7) == linkID;
        VCConnectionHealthMonitor_ReceiveServerStats(v8, v10);
        if (v7)
        {

          CFRelease(v7);
        }
      }
    }

    else if (a3->type == 2)
    {
      VCConnectionHealthMonitor_ReceivePacket(connectionHealthMonitor, a3->var0.feedback.connectionStats.isReceivedOnPrimary, a3->var0.feedback.connectionStats.sequenceNumber, a3->var0.feedback.connectionStats.isDuplicatePacket);
      if (a3->var0.feedback.connectionStats.connectionStatsBuffer)
      {
        [(VCConnectionHealthMonitor *)self->_connectionHealthMonitor processPeerStatsBlob:?];
      }

      self->_lastReceivedFeedbackTime = a3->arrivalTime;
      if (self->_networkConditionMonitor)
      {
        callbackQueue = self->_callbackQueue;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69__VCConnectionManager_updateConnectionHealthWithVCStatisticsMessage___block_invoke;
        v11[3] = &unk_1E85F3778;
        v11[4] = self;
        dispatch_async(callbackQueue, v11);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCConnectionManager updateConnectionHealthWithVCStatisticsMessage:];
      }
    }
  }
}

- (void)updateLinkPreferSuggestion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKeyedSubscript:@"lipp"])
  {
    self->_linkIPPreference = [objc_msgSend(a3 objectForKeyedSubscript:{@"lipp", "intValue"}];
  }

  v5 = *MEMORY[0x1E69A4E00];
  if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69A4E00]])
  {
    v6 = *MEMORY[0x1E69A4DF8];
    if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69A4DF8]])
    {
      self->_linkPreferSuggestion = [objc_msgSend(a3 objectForKeyedSubscript:{v5), "intValue"}];
      self->_linkConfidenceScore = [objc_msgSend(a3 objectForKeyedSubscript:{v6), "intValue"}];
      self->_reportLinkPreferSuggestion = 1;
      if (self->_useIDSLinkSuggestionFeatureFlag)
      {
        if (self->_linkPreferSuggestion == 1)
        {
          [(VCConnectionManager *)self setPreferRelayOverP2P:1 reason:2];
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315650;
          v16 = v7;
          v17 = 2080;
          v18 = "[VCConnectionManager updateLinkPreferSuggestion:]";
          v19 = 1024;
          v20 = 3069;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IDS Link recommendation ignored", &v15, 0x1Cu);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      reportLinkPreferSuggestion = self->_reportLinkPreferSuggestion;
      linkPreferSuggestion = self->_linkPreferSuggestion;
      linkConfidenceScore = self->_linkConfidenceScore;
      linkIPPreference = self->_linkIPPreference;
      v15 = 136316674;
      v16 = v9;
      v17 = 2080;
      v18 = "[VCConnectionManager updateLinkPreferSuggestion:]";
      v19 = 1024;
      v20 = 3077;
      v21 = 1024;
      v22 = reportLinkPreferSuggestion;
      v23 = 1024;
      v24 = linkPreferSuggestion;
      v25 = 1024;
      v26 = linkConfidenceScore;
      v27 = 1024;
      v28 = linkIPPreference;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: reportLinkPreferSuggestion=%d linkPreferSuggestion=%d linkConfidenceScore=%d linkIPPreference=%d", &v15, 0x34u);
    }
  }
}

- (void)applyLinkRecommendation
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_isOneToOneModeEnabled)
  {
    self->_dropLinkRecommendation = 0;
    [(VCConnectionManager *)self updateConnectionSelectionPolicyWithPreferE2E:1];
    pthread_rwlock_wrlock(&self->_stateRWlock);
    v3 = VCConnectionManager_CopyPrimaryConnection(self);
    IsRelay = VCConnection_IsRelay(v3);
    if (v3)
    {
      CFRelease(v3);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCConnectionManager applyLinkRecommendation]";
        v11 = 1024;
        v12 = 3090;
        v13 = 1024;
        v14 = IsRelay;
        v15 = 1024;
        v16 = [(VCConnectionManager *)self preferRelayOverP2PEnabled];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Check if primary connection needs to be updated - isCurrentPrimaryUsingRelay=%d isPreferRelayOverP2PEnabled=%d", &v7, 0x28u);
      }
    }

    if ((IsRelay & 1) == 0)
    {
      if ([(VCConnectionManager *)self preferRelayOverP2PEnabled])
      {
        [(VCConnectionManager *)self reselectPrimaryConnection];
        VCConnectionManager_UpdateConnectionForDuplication(self);
      }
    }

    [(VCConnectionManager *)self reportLinkSuggestion];
    pthread_rwlock_unlock(&self->_stateRWlock);
  }
}

- (void)reportLinkSuggestion
{
  v9[3] = *MEMORY[0x1E69E9840];
  self->_linkPreferDecision = 0;
  if (self->_linkPreferSuggestion == 1)
  {
    v3 = VCConnectionManager_CopyPrimaryConnection(self);
    v4 = VCConnection_IsRelay(v3) ? 1 : 2;
    self->_linkPreferDecision = v4;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_reportLinkPreferSuggestion)
  {
    v8[0] = @"LnkSug";
    v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_linkPreferSuggestion];
    v8[1] = @"LnkScr";
    v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_linkConfidenceScore];
    v8[2] = @"LnkDec";
    v9[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_linkPreferDecision];
    [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 3)}];
  }

  if (self->_linkIPPreference != 255)
  {
    v6 = @"LnkIp";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [v5 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
  }

  if ([v5 count])
  {
    reportingGenericEvent();
  }
}

- (void)applyLinkFlags:(unsigned __int16)a3 isCellular:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v31 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->_stateRWlock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v9 = @"WiFi";
      v22 = v7;
      v23 = 2080;
      v24 = "[VCConnectionManager applyLinkFlags:isCellular:]";
      v25 = 1024;
      if (v4)
      {
        v9 = @"Cellular";
      }

      v26 = 3134;
      v27 = 1024;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Applying link flags='%08x' for %@", buf, 0x2Cu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectionArray = self->_connectionArray;
  v11 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(connectionArray);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (VCConnection_IsLocalOnCellular(v15) == v4)
        {
          [v15 setLinkFlags:v5];
          [(VCConnectionManager *)self updateAllBitrateCapsForConnectionInternal:v15];
        }
      }

      v12 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)applyRemoteLinkFlags:(unsigned __int16)a3 isCellular:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v31 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock(&self->_stateRWlock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v9 = @"WiFi";
      v22 = v7;
      v23 = 2080;
      v24 = "[VCConnectionManager applyRemoteLinkFlags:isCellular:]";
      v25 = 1024;
      if (v4)
      {
        v9 = @"Cellular";
      }

      v26 = 3146;
      v27 = 1024;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Applying remote link flags='%08x' for %@", buf, 0x2Cu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectionArray = self->_connectionArray;
  v11 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(connectionArray);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (VCConnection_IsLocalOnCellular(v15) == v4 || VCConnection_IsRemoteOnCellular(v15) == v4)
        {
          [v15 setRemoteLinkFlags:v5];
          [(VCConnectionManager *)self updateAllBitrateCapsForConnectionInternal:v15];
        }
      }

      v12 = [(NSMutableArray *)connectionArray countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)updateConnectionSelectionPolicyWithPreferE2E:(BOOL)a3
{
  v28 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock(&self->_stateRWlock);
  self->_connectionSelectionPolicy.preferRelayOverP2P = self->_preferRelayOverP2PEnabled;
  *&self->_connectionSelectionPolicy.preferIPv6OverIPv4 = 0;
  self->_connectionSelectionPolicy.e2eCriteriaEnabled = 0;
  self->_connectionSelectionPolicy.preferE2E = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      preferRelayOverP2P = self->_connectionSelectionPolicy.preferRelayOverP2P;
      preferIPv6OverIPv4 = self->_connectionSelectionPolicy.preferIPv6OverIPv4;
      preferNonVPN = self->_connectionSelectionPolicy.preferNonVPN;
      e2eCriteriaEnabled = self->_connectionSelectionPolicy.e2eCriteriaEnabled;
      preferE2E = self->_connectionSelectionPolicy.preferE2E;
      v12 = 136316930;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCConnectionManager updateConnectionSelectionPolicyWithPreferE2E:]";
      v16 = 1024;
      v17 = 3190;
      v18 = 1024;
      v19 = preferRelayOverP2P;
      v20 = 1024;
      v21 = preferIPv6OverIPv4;
      v22 = 1024;
      v23 = preferNonVPN;
      v24 = 1024;
      v25 = e2eCriteriaEnabled;
      v26 = 1024;
      v27 = preferE2E;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectionSelectionPolicy updated: preferRelayOverP2P[%d] preferIPv6OverIPv4[%d] preferNonVPN[%d] e2eCriteriaEnabled[%d] preferE2E[%d]", &v12, 0x3Au);
    }
  }

  pthread_rwlock_unlock(&self->_stateRWlock);
}

- (void)didChangeWifiAssistAvailable:(BOOL)a3 reason:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      *buf = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCConnectionManager didChangeWifiAssistAvailable:reason:]";
      if (v5)
      {
        v8 = "YES";
      }

      v16 = 1024;
      v17 = 3201;
      v18 = 2080;
      v19 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update WifiAssist Available = %s", buf, 0x26u);
    }
  }

  v9 = MEMORY[0x1E695DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v4, @"WAStateChangeReason"}];
  [v9 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
  reportingGenericEvent();
}

- (void)handleReportingSymptom:(unsigned int)a3
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_idsParticipantID]);
  reportingSymptom();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void ___VCConnectionManager_SetDuplicationEnabledInternal_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  [objc_msgSend(*(a1 + 32) "delegate")];
  v2 = MEMORY[0x1E695DF90];
  v8[0] = @"Reason";
  v3 = MEMORY[0x1E696AEC0];
  v4 = VCDuplicationHandler_DuplicationReason(*(*(a1 + 32) + 632));
  if (v4 > 7)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1E85F6CC8[v4];
  }

  v9[0] = [v3 stringWithUTF8String:v5];
  v8[1] = @"DuplicationType";
  v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCDuplicationHandler_DuplicationReasonForReporting(*(*(a1 + 32) + 632))];
  v8[2] = @"sliceStatus";
  v9[2] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_ReportingSliceStatus(*(a1 + 40))];
  v8[3] = @"RemoteSliceStatus";
  v9[3] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_ReportingSliceStatus(*(a1 + 40))];
  v6 = [v2 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 4)}];
  VCConnectionManager_AddDuplicationSelectionLogicTelemetryForConnection(*(a1 + 32), *(a1 + 40), *(a1 + 48), v6);
  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  VCConnectionManager_AddTelemetryForPacketHistory(*(a1 + 32), v6);
  VCConnectionManager_AddTelemetryForConnection(*(a1 + 32), *(a1 + 40), v6);
  VCConnectionManager_AddLinkProbingTelemetry(*(a1 + 32));
  VCConnection_ReportingQRServerConfig(*(a1 + 40));
  reportingGenericEvent();
  VCNetworkConditionMonitor_SetIsLocalActiveOnCellular(*(*(a1 + 32) + 824), *(a1 + 57));
  VCConnectionManager_SetOverlayLinkDetails(*(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 56));
  CFRelease(*(a1 + 40));
}

uint64_t ___VCConnectionManager_ProcessDuplicationStateUpdateEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 456) && *(a1 + 41) == 1)
  {
    [result setPreferredLocalInterfaceForDuplication:*(a1 + 48) != 1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 456);
    v5 = *(v3 + 488);
    if (*(a1 + 60))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 61);
    }

    v4(v5, v6 & 1, *(a1 + 48), *(a1 + 41));
    v7 = *(a1 + 32);
    v8 = *(v7 + 448);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCConnectionManager_ProcessDuplicationStateUpdateEvent_block_invoke_2;
    block[3] = &unk_1E85F6C48;
    v9 = *(a1 + 40);
    block[4] = v7;
    block[5] = v9;
    v18 = *(a1 + 60);
    dispatch_async(v8, block);
    result = *(a1 + 32);
  }

  v10 = *(result + 712);
  if (v10)
  {
    if (*(result + 680))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = *(a1 + 52);
    v15[0] = v11;
    v15[1] = v12;
    v13 = *(a1 + 44);
    v15[2] = v13;
    v16 = 0;
    if (*(a1 + 62) == 1)
    {
      if (!v13)
      {
        return v10(*(result + 728), v15);
      }

      if (v13 != 2)
      {
        v14 = 0;
        goto LABEL_20;
      }
    }

    else if (*(a1 + 62) || !v13 || (*(a1 + 63) & 1) == 0)
    {
      return result;
    }

    v14 = *(a1 + 56);
LABEL_20:
    v16 = v14;
    return v10(*(result + 728), v15);
  }

  return result;
}

uint64_t ___VCConnectionManager_ProcessDuplicationStateUpdateEvent_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) preferredLocalInterfaceForDuplication];
  v4 = *(a1 + 41);
  if (*(a1 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 49);
  }

  return [v2 didUpdatePreferredInterfaceForDuplication:v3 notifyPeer:v4 enableDuplication:v5 & 1 isMediaUnrecoverableSignal:0];
}

uint64_t ___VCConnectionManager_RequestWRMNotification_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 720);
  if (v2)
  {
    return v2(*(v1 + 728));
  }

  return result;
}

void ___VCConnectionManager_GetAndLogSignalStrength_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v5 = 0;
    v4 = 0;
    if (![*(*(a1 + 32) + 440) getSignalStrengthBars:&v5 + 4 displayBars:&v5 maxDisplayBars:&v4])
    {
      VCNetworkConditionMonitor_SetCellSignalStrengthBars(*(*(a1 + 32) + 824), v5, v4);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v7 = v2;
          v8 = 2080;
          v9 = "_VCConnectionManager_GetAndLogSignalStrength_block_invoke";
          v10 = 1024;
          v11 = 2504;
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
  }
}

- (void)copyPersistenPacketCounts:isOutgoing:size:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)getSentBytes:receivedBytes:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid parameters", v2, v3, v4, v5, v6);
}

- (void)addMediaHealthStatsHistoryEntryForParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)removeMediaHealthStatsHistoryEntryForParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d idsParticipantID %@ is not yet added to mediaDegradedHistories!");
}

- (void)updateMediaHealthStats:idsParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateMediaDegradedHistoryWithCurrentAudioErasure:idsParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)checkpointPrimaryConnection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }
}

- (void)primaryConnectionChanged:oldPrimaryConnection:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2049;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnectionManager: Delegate didn't implement primaryConnectionChanged", v1, 0x1Cu);
}

- (uint64_t)processConnectionHealthFromControlInfo:(_DWORD *)a3 .cold.1(void *a1, uint64_t a2, _DWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = -1431655766;
  result = VCMediaControlInfoGetInfo(a1, 2, &v6, 4, 0);
  *a3 = result;
  if ((result & 0x80000000) == 0)
  {
    return [*(a2 + 520) processPeerStatsBlob:v6];
  }

  return result;
}

- (void)updateConnectionHealthWithVCStatisticsMessage:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Wrong type of statistics message received by VCConnectionManager", v2, v3, v4, v5, v6);
}

@end