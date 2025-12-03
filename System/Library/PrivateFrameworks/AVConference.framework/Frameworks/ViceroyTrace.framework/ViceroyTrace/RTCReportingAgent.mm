@interface RTCReportingAgent
- (BOOL)checkIfWeeklyIDIsExpired:(id)expired currentWeek:(int64_t)week currentYear:(int64_t)year;
- (BOOL)realtimeEventsEnabled;
- (BOOL)registerPeriodicTaskForModule:(unsigned int)module needToUpdate:(BOOL)update needToReport:(BOOL)report serviceBlock:(id)block;
- (BOOL)setupConfigurationCompletionSemaphore:(id *)semaphore;
- (BOOL)unregisterPeriodTaskForModule:(unsigned int)module;
- (Class)sharedAWDAdaptorClass;
- (RTCReportingAgent)initWithConfig:(id *)config;
- (id)deriveFromParentHierarchyToken:(id)token;
- (id)directoryPathForWeeklyIDCache;
- (id)getUserInfoFromReportingConfiguration:(id *)configuration;
- (id)newAggregatorForClientType:(int)type creationOptions:(id *)options;
- (id)sortedServiceKeys;
- (int)nextUnassignedReportingModuleID;
- (unsigned)reportingCallMethodForClientType:(int)type;
- (unsigned)reportingSegmentMethodForClientType:(int)type;
- (unsigned)reportingSessionMethodForClientType:(int)type;
- (unsigned)reportingSessionTypeForClientType:(int)type;
- (void)blockReportingQueueUntilReportingObjectInitialized;
- (void)collectTelemetryForService:(id)service payload:(id)payload lock:(_opaque_pthread_mutex_t *)lock;
- (void)copyPersistentSettingsCommon:(id)common;
- (void)copyPersistentSettingsMultiway:(id)multiway;
- (void)createSecondAggregatorWithOptions:(id *)options;
- (void)dealloc;
- (void)didSendMessageForReportingClient:(id)client event:(id)event;
- (void)directoryPathForWeeklyIDCache;
- (void)finalizeAggregation:(id)aggregation;
- (void)finishDataStore;
- (void)releasePeriodicQueues;
- (void)releaseReportingObject;
- (void)reportQR:(id)r;
- (void)reportingAgentGetAlgosScores:(double *)scores newAlgosScore:(double *)score;
- (void)reportingSetNetworkActivityReportingEnabled:(BOOL)enabled;
- (void)reportingSetReportCallback:(void *)callback withContext:(void *)context;
- (void)reportingSymptom:(unsigned int)symptom withOptionalDict:(__CFDictionary *)dict;
- (void)sendLastFinalizedEvent;
- (void)sendMessageWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)sendNetworkScoreDictionary:(id)dictionary networkScoreType:(unsigned __int8)type;
- (void)setAndSaveWeeklyID:(id)d currentWeek:(unint64_t)week currentYear:(unint64_t)year cachePath:(id)path;
- (void)setUpAWDAdapter;
- (void)setUpWeeklyRotatingID;
- (void)setupAdaptiveLearningWithParameters:(id)parameters;
- (void)setupPersistentDataStoreFromConfig:(id *)config;
- (void)signalConfigurationCompleted;
- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type;
- (void)stopLogTimer;
- (void)telemetryUpdate:(id)update updateTimeout:(unint64_t)timeout;
- (void)updateSymptomCount:(unsigned int)count;
@end

@implementation RTCReportingAgent

- (int)nextUnassignedReportingModuleID
{
  objc_sync_enter(self);
  nextUnassignedReportingModuleID = self->_nextUnassignedReportingModuleID;
  self->_nextUnassignedReportingModuleID = nextUnassignedReportingModuleID + 1;
  objc_sync_exit(self);
  return nextUnassignedReportingModuleID;
}

- (id)deriveFromParentHierarchyToken:(id)token
{
  v3 = [gRTCReporting_class newHierarchyTokenFromParentToken:token];

  return v3;
}

- (id)getUserInfoFromReportingConfiguration:(id *)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = dictionary;
  if (*&configuration->var7 == 0)
  {
    [RTCReportingAgent getUserInfoFromReportingConfiguration:];
  }

  else
  {
    [dictionary setObject:? forKeyedSubscript:?];
    [v6 setObject:configuration->var8 forKeyedSubscript:sRTCReportingUserInfoServiceName];
    [(RTCReportingAgent *)self setServiceName:configuration->var8];
    reportingUserInfoSetValueCorrection(v6);
    [(RTCReportingAgent *)self setSubSessionId:&unk_284FA5528];
    subSessionId = [(RTCReportingAgent *)self subSessionId];
    [v6 setObject:subSessionId forKeyedSubscript:kVCReportingSubSessionID];
    if (configuration->var11)
    {
      [v6 addEntriesFromDictionary:?];
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR(6u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "[RTCReportingAgent getUserInfoFromReportingConfiguration:]";
      v16 = 1024;
      v17 = 455;
      v18 = 1024;
      v19 = 455;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: Init time userInfo=%@", &v12, 0x2Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (Class)sharedAWDAdaptorClass
{
  if (sharedAWDAdaptorClass_onceToken != -1)
  {
    [RTCReportingAgent sharedAWDAdaptorClass];
  }

  return sharedAWDAdaptorClass_awdAdaptorClass;
}

void __42__RTCReportingAgent_sharedAWDAdaptorClass__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCA8D0]) initWithPath:@"/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/GKSPerformance.framework"];
  sharedAWDAdaptorClass_gksPerformanceClientBundle = v0;
  if (v0)
  {
    if (([v0 isLoaded] & 1) == 0)
    {
      [sharedAWDAdaptorClass_gksPerformanceClientBundle load];
    }

    sharedAWDAdaptorClass_awdAdaptorClass = [sharedAWDAdaptorClass_gksPerformanceClientBundle classNamed:@"AWDAdaptor"];
    if (!sharedAWDAdaptorClass_awdAdaptorClass)
    {
      __42__RTCReportingAgent_sharedAWDAdaptorClass__block_invoke_cold_1();
    }
  }

  else
  {
    __42__RTCReportingAgent_sharedAWDAdaptorClass__block_invoke_cold_2();
  }
}

- (void)setUpAWDAdapter
{
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RTCReportingAgent_setUpAWDAdapter__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(reportingQueue, block);
}

void __36__RTCReportingAgent_setUpAWDAdapter__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 272) = objc_alloc_init([*(a1 + 32) sharedAWDAdaptorClass]);
  if (!*(*(a1 + 32) + 272))
  {
    __36__RTCReportingAgent_setUpAWDAdapter__block_invoke_cold_1();
  }
}

- (RTCReportingAgent)initWithConfig:(id *)config
{
  v63[6] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = RTCReportingAgent;
  v4 = [(RTCReportingAgent *)&v54 init];
  v5 = v4;
  if (v4)
  {
    p_var3 = &config->var3;
    var3 = config->var3;
    if (var3 == -1)
    {
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          v43 = VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [(RTCReportingAgent *)v43 initWithConfig:?];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v42 = [(RTCReportingAgent *)v5 performSelector:sel_logPrefix];
        }

        else
        {
          v42 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          v44 = VRTraceErrorLogLevelToCSTR(3u);
          v45 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            v48 = *p_var3;
            *buf = 136316418;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = "[RTCReportingAgent initWithConfig:]";
            *&buf[22] = 1024;
            *&buf[24] = 493;
            *&buf[28] = 2112;
            *&buf[30] = v42;
            *&buf[38] = 2048;
            *&buf[40] = v5;
            LOWORD(v56) = 1024;
            *(&v56 + 2) = v48;
            _os_log_error_impl(&dword_23D4DF000, v45, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d %@(%p) Invalid reporting client type %d", buf, 0x36u);
          }
        }
      }
    }

    else
    {
      v4->_clientType = var3;
      v8 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D0] bundleForClass:{objc_opt_class()), "infoDictionary"), "objectForKey:", @"CFBundleVersion"}];
      if (!v8)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [RTCReportingAgent initWithConfig:];
          }
        }

        v8 = @"Unknown";
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = v9;
      if (sRTCReportingSessionInfoClientBundleID)
      {
        [v9 setObject:@"com.apple.AVConference" forKeyedSubscript:?];
      }

      if (config->var5)
      {
        v11 = [(RTCReportingAgent *)v5 deriveFromParentHierarchyToken:?];
        if (v11)
        {
          [v10 setObject:v11 forKeyedSubscript:sRTCReportingSessionInfoHierarchyToken];
        }
      }

      realtimeEventsEnabled = [(RTCReportingAgent *)v5 realtimeEventsEnabled];
      v62[0] = sRTCReportingSessionInfoClientType;
      v62[1] = sRTCReportingSessionInfoClientVersion;
      v63[0] = &unk_284FA5540;
      v63[1] = v8;
      v62[2] = sRTCReportingSessionInfoSessionID;
      v63[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:config->var0];
      v63[3] = MEMORY[0x277CBEC28];
      v62[3] = sRTCReportingSessionInfoBatchEvent;
      v62[4] = sRTCReportingSessionInfoRequireUserInfo;
      v63[4] = MEMORY[0x277CBEC38];
      v62[5] = sRTCReportingSessionInfoContainsRealtimeEvents;
      v63[5] = [MEMORY[0x277CCABA8] numberWithBool:realtimeEventsEnabled];
      [v10 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v63, v62, 6)}];
      var1 = config->var1;
      if (var1)
      {
        [v10 setObject:var1 forKeyedSubscript:sRTCReportingSessionInfoSamplingUUIID];
      }

      var2 = config->var2;
      if (var2)
      {
        v5->_conversationTimeBase = [(__CFDate *)var2 copy];
      }

      var9 = config->var9;
      if (var9)
      {
        v5->_osBuild = [(__CFString *)var9 copy];
      }

      var10 = config->var10;
      if (var10)
      {
        v5->_deviceType = [(__CFString *)var10 copy];
      }

      v5->_reportingQueue = dispatch_queue_create("com.apple.VideoConference.reporting", 0);
      v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"/System/Library/PrivateFrameworks/VideoProcessing.framework", @"/System/Library/Frameworks/CoreMedia.framework", @"/System/Library/PrivateFrameworks/GameKitServices.framework", @"/System/Library/PrivateFrameworks/RTCReporting.framework", 0}];
      v18 = [gRTCReporting_class alloc];
      v19 = *&config->var15.audioErasurePercentageThreshold;
      v59 = *&config->var13;
      v60 = v19;
      var16 = config->var16;
      v20 = *&config->var7;
      *&buf[32] = *&config->var5;
      v56 = v20;
      v21 = *&config->var11;
      v57 = *&config->var9;
      v58 = v21;
      v22 = *&config->var2;
      *buf = *&config->var0;
      *&buf[16] = v22;
      v5->_reportingObject = [v18 initWithSessionInfo:v10 userInfo:-[RTCReportingAgent getUserInfoFromReportingConfiguration:](v5 frameworksToCheck:"getUserInfoFromReportingConfiguration:" aggregationBlock:{buf), v17, 0}];

      if (v5->_reportingObject && [(RTCReportingAgent *)v5 setupConfigurationCompletionSemaphore:config])
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
        {
          v23 = VRTraceErrorLogLevelToCSTR(6u);
          v24 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            reportingObject = v5->_reportingObject;
            *buf = 136315906;
            *&buf[4] = v23;
            *&buf[12] = 2080;
            *&buf[14] = "[RTCReportingAgent initWithConfig:]";
            *&buf[22] = 1024;
            *&buf[24] = 549;
            *&buf[28] = 2112;
            *&buf[30] = reportingObject;
            _os_log_impl(&dword_23D4DF000, v24, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Created reportingObject instance=%@", buf, 0x26u);
          }
        }

        v5->_callID = config->var0;
        [(RTCReportingAgent *)v5 setUpWeeklyRotatingID];
        v5->_aggregatorLock._os_unfair_lock_opaque = 0;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v50 = v26;
        var6 = config->var6;
        LOBYTE(v50) = config->var4;
        *(&v50 + 1) = v5->_conversationTimeBase;
        var14 = config->var14;
        deviceUniqueID = v5->_deviceUniqueID;
        v52 = 0xAAAAAAAAAAAAAAAALL;
        v53 = deviceUniqueID;
        LOBYTE(v52) = var14;
        v51 = *&v5->_osBuild;
        v29 = *&config->var15.audioConnectionTimeThreshold;
        v5->_abcSymptomsReportingTelemetryThresholdValues.videoStallPercentageThreshold = config->var15.videoStallPercentageThreshold;
        *&v5->_abcSymptomsReportingTelemetryThresholdValues.audioConnectionTimeThreshold = v29;
        v5->_aggregator = [(RTCReportingAgent *)v5 newAggregatorForClientType:config->var3 creationOptions:&var6];
        v5->_symptomReporter = SymptomReporterCreate(v5->_callID);
        v5->_nwsMetricReporter = objc_alloc_init(MEMORY[0x277D2CA48]);
        v5->_nwsMetricReporterQueue = dispatch_queue_create("com.apple.VideoConference.nwsMetricReporter", 0);
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") > 6)
        {
          v30 = VRTraceErrorLogLevelToCSTR(7u);
          v31 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v30;
            *&buf[12] = 2080;
            *&buf[14] = "[RTCReportingAgent initWithConfig:]";
            *&buf[22] = 1024;
            *&buf[24] = 567;
            _os_log_impl(&dword_23D4DF000, v31, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d RTCReportingAgent: created symptom reporter", buf, 0x1Cu);
          }
        }

        [(RTCReporting *)v5->_reportingObject setMessageSentDelegate:v5];
        v5->_nextUnassignedReportingModuleID = 22;
        v5->_userInfoMap = objc_alloc_init(MEMORY[0x277CBEB38]);
        v32 = config->var6;
        v5->_nwActivity = v32;
        if (v32)
        {
          nw_retain(v32);
        }

        getpid();
        v5->_transaction = FigOSTransactionCreate();
        v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v5->_periodicTaskManagementQueue = dispatch_queue_create("com.apple.VideoConference.PeriodicTaskManagement", v33);
        v34 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
        v5->_periodicTaskTelemetryCollectionQueue = dispatch_queue_create("com.apple.VideoConference.PeriodicTaskTelemetryCollection", v34);
        v5->_periodicServiceRegisteredBlocks = objc_alloc_init(MEMORY[0x277CBEB38]);
        videoStallPercentageThreshold = config->var15.videoStallPercentageThreshold;
        *&v5->_abcSymptomsReportingTelemetryThresholdValues.audioConnectionTimeThreshold = *&config->var15.audioConnectionTimeThreshold;
        v5->_abcSymptomsReportingTelemetryThresholdValues.videoStallPercentageThreshold = videoStallPercentageThreshold;
        *&v5->_audioTotalConnectionTimeRegressedFromTelemetrySymptomReported = 0;
        v36 = *&config->var15.audioErasurePercentageThreshold;
        v59 = *&config->var13;
        v60 = v36;
        var16 = config->var16;
        v37 = *&config->var7;
        *&buf[32] = *&config->var5;
        v56 = v37;
        v38 = *&config->var11;
        v57 = *&config->var9;
        v58 = v38;
        v39 = *&config->var2;
        *buf = *&config->var0;
        *&buf[16] = v39;
        [(RTCReportingAgent *)v5 setupPersistentDataStoreFromConfig:buf];
        if ([(__CFString *)config->var7 isEqualToString:sRTCReportingWiFiCallingClientName])
        {
          [(RTCReportingAgent *)v5 setUpAWDAdapter];
        }

        goto LABEL_33;
      }
    }

    v5 = 0;
    goto LABEL_47;
  }

LABEL_33:
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v40 = VRTraceErrorLogLevelToCSTR(6u);
    v41 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "[RTCReportingAgent initWithConfig:]";
      *&buf[22] = 1024;
      *&buf[24] = 594;
      *&buf[28] = 2112;
      *&buf[30] = v5;
      _os_log_impl(&dword_23D4DF000, v41, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Created RTCReportingAgent instance=%@", buf, 0x26u);
    }
  }

LABEL_47:
  v46 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR(6u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v3;
      v16 = 2080;
      v17 = "[RTCReportingAgent dealloc]";
      v18 = 1024;
      v19 = 599;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Releasing RTCReportingAgent instance=%@", buf, 0x26u);
    }
  }

  reportingConfigurationCompleteSemaphore = self->_reportingConfigurationCompleteSemaphore;
  if (reportingConfigurationCompleteSemaphore)
  {
    dispatch_semaphore_signal(reportingConfigurationCompleteSemaphore);
    dispatch_release(self->_reportingConfigurationCompleteSemaphore);
  }

  periodicTimer = self->_periodicTimer;
  if (periodicTimer)
  {
    dispatch_source_cancel(periodicTimer);
    dispatch_release(self->_periodicTimer);
  }

  [(RTCReportingAgent *)self releasePeriodicQueues];
  reportingQueue = self->_reportingQueue;
  if (reportingQueue)
  {
    dispatch_release(reportingQueue);
    self->_reportingQueue = 0;
  }

  SymptomReporterSetCallback(self->_symptomReporter, 0, 0);
  symptomReporter = self->_symptomReporter;
  if (symptomReporter)
  {
    CFRelease(symptomReporter);
  }

  nwsMetricReporterQueue = self->_nwsMetricReporterQueue;
  if (nwsMetricReporterQueue)
  {
    dispatch_release(nwsMetricReporterQueue);
    self->_nwsMetricReporterQueue = 0;
  }

  nwActivity = self->_nwActivity;
  if (nwActivity)
  {
    nw_release(nwActivity);
    self->_nwActivity = 0;
  }

  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
  }

  [(RTCReportingAgent *)self finishDataStore];

  v13.receiver = self;
  v13.super_class = RTCReportingAgent;
  [(RTCReportingAgent *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)directoryPathForWeeklyIDCache
{
  v2 = +[VCDiskUtils getCachesDirectoryPath];
  if (!+[VCDiskUtils createDefaultCacheDirectoryIfNeeded])
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [RTCReportingAgent directoryPathForWeeklyIDCache];
      }
    }

    return 0;
  }

  return v2;
}

- (void)setAndSaveWeeklyID:(id)d currentWeek:(unint64_t)week currentYear:(unint64_t)year cachePath:(id)path
{
  [d setObject:objc_msgSend(objc_msgSend(MEMORY[0x277CCAD70] forKeyedSubscript:{"UUID"), "UUIDString"), @"ReportingWeeklyID"}];
  [d setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInteger:", week), @"ReportingWeeklyIDValidityWeek"}];
  [d setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInteger:", year), @"ReportingWeeklyIDValidityYear"}];
  v11 = 0;
  if (([d writeToURL:path error:&v11] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [RTCReportingAgent setAndSaveWeeklyID:v10 currentWeek:&v11 currentYear:? cachePath:?];
    }
  }
}

- (BOOL)checkIfWeeklyIDIsExpired:(id)expired currentWeek:(int64_t)week currentYear:(int64_t)year
{
  v8 = [objc_msgSend(expired objectForKeyedSubscript:{@"ReportingWeeklyIDValidityWeek", "integerValue"}];
  v9 = [objc_msgSend(expired objectForKeyedSubscript:{@"ReportingWeeklyIDValidityYear", "integerValue"}];
  return v8 != week || v9 != year;
}

- (void)setUpWeeklyRotatingID
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (BOOL)realtimeEventsEnabled
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"enableRealtimeTelemetryReporting", @"com.apple.VideoConference", &keyExistsAndHasValidFormat))
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v3 = 1;
    }

    LOBYTE(IsInternalOSInstalled) = !v3;
  }

  return IsInternalOSInstalled;
}

- (BOOL)setupConfigurationCompletionSemaphore:(id *)semaphore
{
  if (semaphore)
  {
    var13 = semaphore->var13;
    if (var13)
    {
      v5 = var13;
    }

    else
    {
      v5 = dispatch_semaphore_create(0);
    }

    self->_reportingConfigurationCompleteSemaphore = v5;
    if (!v5)
    {
      [RTCReportingAgent setupConfigurationCompletionSemaphore:];
    }
  }

  else
  {
    [RTCReportingAgent setupConfigurationCompletionSemaphore:];
  }

  return self->_reportingConfigurationCompleteSemaphore != 0;
}

- (void)finishDataStore
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = VCPersistentDataStore_Finalize(self->_dataStore);

  self->_dataStore = 0;
  self->_remoteDataProducer = 0;
  self->_vcrcmlTrainingDataProducer = 0;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR(6u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v5;
        v15 = 2080;
        v16 = "[RTCReportingAgent finishDataStore]";
        v17 = 1024;
        v18 = 781;
        v19 = 1024;
        LODWORD(v20) = v3;
        v7 = "ReportingVC [%s] %s:%d VCPersistentDataStore finalized with result=%d";
        v8 = v6;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(RTCReportingAgent *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR(6u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v10;
        v15 = 2080;
        v16 = "[RTCReportingAgent finishDataStore]";
        v17 = 1024;
        v18 = 781;
        v19 = 2112;
        v20 = v4;
        v21 = 2048;
        selfCopy = self;
        v23 = 1024;
        v24 = v3;
        v7 = "ReportingVC [%s] %s:%d %@(%p) VCPersistentDataStore finalized with result=%d";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)blockReportingQueueUntilReportingObjectInitialized
{
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTCReportingAgent_blockReportingQueueUntilReportingObjectInitialized__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(reportingQueue, block);
}

void __71__RTCReportingAgent_blockReportingQueueUntilReportingObjectInitialized__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 80);
  v2 = dispatch_time(0, 5000000000);
  v3 = dispatch_semaphore_wait(v1, v2);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("ReportingVC");
  if (v3)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __71__RTCReportingAgent_blockReportingQueueUntilReportingObjectInitialized__block_invoke_cold_1();
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[RTCReportingAgent blockReportingQueueUntilReportingObjectInitialized]_block_invoke";
      v12 = 1024;
      v13 = 790;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d RTCReporting configuration finished. Unblocking reportingQueue", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)signalConfigurationCompleted
{
  reportingConfigurationCompleteSemaphore = self->_reportingConfigurationCompleteSemaphore;
  if (reportingConfigurationCompleteSemaphore)
  {
    dispatch_semaphore_signal(reportingConfigurationCompleteSemaphore);
  }
}

- (void)releasePeriodicQueues
{
  periodicTaskTelemetryCollectionQueue = self->_periodicTaskTelemetryCollectionQueue;
  if (periodicTaskTelemetryCollectionQueue)
  {
    dispatch_release(periodicTaskTelemetryCollectionQueue);
  }

  periodicTaskManagementQueue = self->_periodicTaskManagementQueue;
  if (periodicTaskManagementQueue)
  {

    dispatch_release(periodicTaskManagementQueue);
  }
}

- (void)reportingAgentGetAlgosScores:(double *)scores newAlgosScore:(double *)score
{
  if (scores && score)
  {
    os_unfair_lock_lock(&self->_aggregatorLock);
    [(VCAlgosStreamingScoreAggregator *)[(VCAggregator *)self->_aggregator algosScoreAggregator] score];
    *scores = v7;
    [(VCAlgosStreamingScoreAggregator *)[(VCAggregator *)self->_aggregator algosScoreAggregator] aggregateScores];
    *score = v8;

    os_unfair_lock_unlock(&self->_aggregatorLock);
  }
}

- (void)sendNetworkScoreDictionary:(id)dictionary networkScoreType:(unsigned __int8)type
{
  typeCopy = type;
  v30[4] = *MEMORY[0x277D85DE8];
  algosScorerForNonDefaultParticipantID = [dictionary algosScorerForNonDefaultParticipantID];
  if ([algosScorerForNonDefaultParticipantID algosScoreDictionary])
  {
    v7 = [objc_msgSend(algosScorerForNonDefaultParticipantID "algosScoreDictionary")];
    v8 = objc_alloc_init(MEMORY[0x277CCA960]);
    [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v9 = [v8 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "now")}];
    if (typeCopy)
    {
      v10 = @"label-periodic";
    }

    else
    {
      v10 = @"label-call";
    }

    v11 = [v7 objectForKey:@"label"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEqualToString:@"no-label"])
    {
      [v7 setValue:v10 forKey:@"label"];
    }

    v12 = objc_opt_new();
    [v12 addEntriesFromDictionary:v7];
    [v12 setObject:@"com.apple.facetime" forKeyedSubscript:@"bundle-id"];
    networkScoreUUIDString = self->_networkScoreUUIDString;
    if (!networkScoreUUIDString)
    {
      networkScoreUUIDString = [objc_msgSend(MEMORY[0x277CCAD70] "UUID")];
      self->_networkScoreUUIDString = networkScoreUUIDString;
    }

    [v12 setObject:networkScoreUUIDString forKeyedSubscript:@"uuid"];
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v29[0] = @"name";
    v29[1] = @"METRIC_DATE";
    v30[0] = @"AVConference_AlgosScore";
    v30[1] = v9;
    v29[2] = @"AVConference_AlgosScore";
    v29[3] = @"BundleID";
    v30[2] = v12;
    v30[3] = @"com.apple.facetime";
    v15 = [v14 initWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v30, v29, 4)}];
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR(7u);
      v17 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = v16;
        v23 = 2080;
        v24 = "[RTCReportingAgent sendNetworkScoreDictionary:networkScoreType:]";
        v25 = 1024;
        v26 = 855;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_23D4DF000, v17, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Sending Network score dictionary=%@", buf, 0x26u);
      }
    }

    nwsMetricReporter = self->_nwsMetricReporter;
    v20 = v15;
    -[NWSMetricReporter sendStreamMetrics:onQueue:](nwsMetricReporter, "sendStreamMetrics:onQueue:", [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1], self->_nwsMetricReporterQueue);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [RTCReportingAgent sendNetworkScoreDictionary:networkScoreType:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)createSecondAggregatorWithOptions:(id *)options
{
  if (!options)
  {
    [RTCReportingAgent createSecondAggregatorWithOptions:];
LABEL_9:
    v4 = v5;
    goto LABEL_5;
  }

  if (!options->var1)
  {
    [RTCReportingAgent createSecondAggregatorWithOptions:];
    goto LABEL_9;
  }

  if (!options->var5)
  {
    [RTCReportingAgent createSecondAggregatorWithOptions:];
    goto LABEL_9;
  }

  v4 = [[VCAggregatorFaceTime alloc] initWithDelegate:self nwParentActivity:options->var0 conversationTimeBase:options->var2];
LABEL_5:
  self->_aggregator2 = &v4->super;
}

- (void)copyPersistentSettingsCommon:(id)common
{
  [common setReportingClientExperimentSettings:*&self->_persistentSettings.experimentSettings.networkConditionMonitoringClientExperimentEnabled | (self->_persistentSettings.experimentSettings.detectInactiveAudioFramesAACELD << 16)];
  [common setPortraitModeStatus:self->_persistentSettings.portraitModeStatus];
  [common setCenterStageStatus:self->_persistentSettings.centerStageStatus];
  [common setStudioLightStatus:self->_persistentSettings.studioLightStatus];
  [common setReactionsStatus:self->_persistentSettings.reactionsStatus];
  [common setEyeContactStatus:self->_persistentSettings.eyeContactStatus];
  [common setMlEnhanceStatus:self->_persistentSettings.mlEnhanceStatus];
  [common setBackgroundReplacementStatus:self->_persistentSettings.backgroundReplacementStatus];
  alwaysfullbleedUserPreferenceStatus = self->_persistentSettings.alwaysfullbleedUserPreferenceStatus;

  [common setAlwaysFullBleedUserPreferenceStatus:alwaysfullbleedUserPreferenceStatus];
}

- (void)copyPersistentSettingsMultiway:(id)multiway
{
  [(RTCReportingAgent *)self copyPersistentSettingsCommon:?];

  [multiway processPersistentSettings:&self->_persistentSettings];
}

- (id)newAggregatorForClientType:(int)type creationOptions:(id *)options
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (options)
  {
    switch(type)
    {
      case -1:
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [RTCReportingAgent newAggregatorForClientType:creationOptions:];
          }
        }

        goto LABEL_30;
      case 0:
        v18 = [[VCAggregatorFaceTime alloc] initWithDelegate:self nwParentActivity:options->var0 conversationTimeBase:options->var2];
        [(RTCReportingAgent *)self copyPersistentSettingsCommon:v18];
        goto LABEL_32;
      case 1:
        v21 = VCAggregatorAudioStream;
        goto LABEL_20;
      case 2:
        v9 = VCAggregatorHomeKitAudio;
        goto LABEL_22;
      case 3:
        v9 = VCAggregatorHomeKitVideo;
        goto LABEL_22;
      case 4:
      case 6:
        v10 = [VCAggregator alloc];
        var0 = options->var0;
        var2 = options->var2;
        v13 = *MEMORY[0x277D85DE8];

        return [(VCAggregator *)v10 initWithDelegate:self nwParentActivity:var0 conversationTimeBase:var2];
      case 5:
        v18 = [[VCAggregatorMultiway alloc] initWithDelegate:self creationOptions:options];
        [(RTCReportingAgent *)self copyPersistentSettingsMultiway:v18];
        [(RTCReportingAgent *)self createSecondAggregatorWithOptions:options];
        goto LABEL_32;
      case 7:
        v9 = VCAggregatorVideoMessaging;
        goto LABEL_22;
      case 8:
        v33 = @"ReportLowLatencyInterfaceStatistics";
        v34[0] = MEMORY[0x277CBEC38];
        v18 = -[VCAggregatorSecondDisplay initWithDelegate:withMode:options:]([VCAggregatorSecondDisplay alloc], "initWithDelegate:withMode:options:", self, 1, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1]);
        goto LABEL_32;
      case 9:
      case 10:
      case 16:
      case 24:
      case 26:
        v6 = [VCAggregatorAirPlay alloc];
        v7 = *MEMORY[0x277D85DE8];

        return [(VCAggregatorAirPlay *)v6 initWithDelegate:self options:0];
      case 11:
      case 17:
        v14 = [VCAggregatorAudioStream alloc];
        v15 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 1;
        goto LABEL_39;
      case 12:
        v9 = VCAggregatorAnsweringMachine;
        goto LABEL_22;
      case 13:
        v21 = VCAggregatorSecondDisplay;
LABEL_20:
        v14 = [v21 alloc];
        v22 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 2;
        goto LABEL_39;
      case 14:
        v19 = VCAggregatorAudioStream;
        goto LABEL_34;
      case 15:
        v19 = VCAggregatorSecondDisplay;
LABEL_34:
        v14 = [v19 alloc];
        v27 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 3;
        goto LABEL_39;
      case 18:
        v20 = VCAggregatorAudioStream;
        goto LABEL_26;
      case 19:
        v20 = VCAggregatorSecondDisplay;
LABEL_26:
        v14 = [v20 alloc];
        v25 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 4;
        goto LABEL_39;
      case 20:
        v14 = [VCAggregatorAudioStream alloc];
        v28 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 5;
        goto LABEL_39;
      case 21:
      case 27:
        v9 = VCAggregatorRecordingAndTranscriptionService;
LABEL_22:
        v23 = [v9 alloc];
        v24 = *MEMORY[0x277D85DE8];

        return [v23 initWithDelegate:self];
      case 22:
        v14 = [VCAggregatorAudioStream alloc];
        v30 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 7;
        goto LABEL_39;
      case 23:
        v14 = [VCAggregatorAudioStream alloc];
        v31 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 8;
        goto LABEL_39;
      case 25:
        v14 = [VCAggregatorAudioStream alloc];
        v29 = *MEMORY[0x277D85DE8];
        selfCopy8 = self;
        v17 = 9;
LABEL_39:

        return [(VCAggregatorAudioStream *)v14 initWithDelegate:selfCopy8 withMode:v17];
      default:
LABEL_30:
        v18 = 0;
        goto LABEL_32;
    }
  }

  [RTCReportingAgent newAggregatorForClientType:creationOptions:];
  v18 = v32;
LABEL_32:
  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)sendLastFinalizedEvent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RTCReportingAgent_sendLastFinalizedEvent__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  if (self->_onceSendFinalizedEventToken != -1)
  {
    dispatch_once(&self->_onceSendFinalizedEventToken, block);
  }
}

void __43__RTCReportingAgent_sendLastFinalizedEvent__block_invoke(uint64_t a1)
{
  v1 = 0;
  if (([*(a1 + 32) sendMessageWithCategory:366 type:0 payload:0 error:&v1] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      __43__RTCReportingAgent_sendLastFinalizedEvent__block_invoke_cold_1();
    }
  }
}

- (void)finalizeAggregation:(id)aggregation
{
  v16 = *MEMORY[0x277D85DE8];
  if (aggregation)
  {
    onceAggregatedReportsToken = [aggregation onceAggregatedReportsToken];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__RTCReportingAgent_finalizeAggregation___block_invoke;
    v9[3] = &unk_278BD4D48;
    v9[4] = self;
    v9[5] = aggregation;
    if (*onceAggregatedReportsToken != -1)
    {
      dispatch_once(onceAggregatedReportsToken, v9);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR(6u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "[RTCReportingAgent finalizeAggregation:]";
      v14 = 1024;
      v15 = 1053;
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d finalizeAggregation: aggregater is nil!", buf, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __41__RTCReportingAgent_finalizeAggregation___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clientType];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR(6u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) clientType];
      v9 = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[RTCReportingAgent finalizeAggregation:]_block_invoke";
      v13 = 1024;
      v14 = 1028;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d finalizeAggregation: generating and sending aggregated reports for reportingClientType=%d", &v9, 0x22u);
    }
  }

  if (v2 == 5)
  {
    v6 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 0;
    }

    else
    {
      v2 = 5;
    }
  }

  [*(a1 + 40) flushCurrentSegment];
  [*(a1 + 40) finalizeSession];
  [*(a1 + 32) reportSegment:objc_msgSend(*(a1 + 40) withMessageType:"aggregatedSegmentReport:" clientType:{0), objc_msgSend(*(a1 + 40), "messageTypeForSegmentReportWithDirection:", 0), v2}];
  [*(a1 + 32) reportSegment:objc_msgSend(*(a1 + 40) withMessageType:"aggregatedSegmentReport:" clientType:{1), objc_msgSend(*(a1 + 40), "messageTypeForSegmentReportWithDirection:", 1), v2}];
  [*(a1 + 32) reportSegment:objc_msgSend(*(a1 + 40) withMessageType:"aggregatedSegmentReport:" clientType:{2), objc_msgSend(*(a1 + 40), "messageTypeForSegmentReportWithDirection:", 2), v2}];
  [*(a1 + 32) reportQR:{objc_msgSend(*(a1 + 40), "aggregatedSegmentQRReport")}];
  [*(a1 + 40) saveCallSegmentHistory];
  [*(a1 + 32) sendAggregatedCallReport:*(a1 + 40) clientType:v2];
  result = [*(a1 + 40) isOneToOneMode];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) sendAggregatedSessionReport:*(a1 + 40) clientType:v2];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendMessageWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTCReportingAgent_sendMessageWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  typeCopy = type;
  block[4] = self;
  block[5] = payload;
  dispatch_async(reportingQueue, block);
}

void __58__RTCReportingAgent_sendMessageWithCategory_type_payload___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR(7u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v5 code];
      *buf = 136315906;
      v7 = v1;
      v8 = 2080;
      v9 = "[RTCReportingAgent sendMessageWithCategory:type:payload:]_block_invoke";
      v10 = 1024;
      v11 = 1066;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d error code=%d.", buf, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)sortedServiceKeys
{
  allKeys = [(NSMutableDictionary *)self->_periodicServiceRegisteredBlocks allKeys];

  return [allKeys sortedArrayUsingComparator:&__block_literal_global_230];
}

uint64_t __38__RTCReportingAgent_sortedServiceKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)collectTelemetryForService:(id)service payload:(id)payload lock:(_opaque_pthread_mutex_t *)lock
{
  v23 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    [RTCReportingAgent collectTelemetryForService:payload:lock:];
    goto LABEL_22;
  }

  if (!payload)
  {
    [RTCReportingAgent collectTelemetryForService:payload:lock:];
    goto LABEL_22;
  }

  if (!lock)
  {
    [RTCReportingAgent collectTelemetryForService:payload:lock:];
    goto LABEL_22;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v8)
  {
    [RTCReportingAgent collectTelemetryForService:payload:lock:];
    goto LABEL_22;
  }

  v9 = v8;
  block = [service block];
  (*(block + 16))(block, v9);
  pthread_mutex_lock(lock);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11;
  v13 = *v19;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v18 + 1) + 8 * i);
      [v9 objectForKeyedSubscript:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([payload objectForKeyedSubscript:v15])
        {
          [objc_msgSend(payload objectForKeyedSubscript:{v15), "addEntriesFromDictionary:", objc_msgSend(v9, "objectForKeyedSubscript:", v15)}];
          continue;
        }
      }

      else
      {
        [v9 objectForKeyedSubscript:v15];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [v9 objectForKeyedSubscript:v15];
          goto LABEL_18;
        }

        if ([payload objectForKeyedSubscript:v15])
        {
          [objc_msgSend(payload objectForKeyedSubscript:{v15), "addObjectsFromArray:", objc_msgSend(v9, "objectForKeyedSubscript:", v15)}];
          continue;
        }
      }

      v16 = [objc_msgSend(v9 objectForKeyedSubscript:{v15), "mutableCopy"}];
LABEL_18:
      [payload setObject:v16 forKeyedSubscript:v15];
    }

    v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v12);
LABEL_21:
  pthread_mutex_unlock(lock);

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
}

void __75__RTCReportingAgent_reportPeriodicTelemetryWithCategory_type_payload_lock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) sendMessageWithDictionary:*(a1 + 40) error:0];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
  {
    v1 = VRTraceErrorLogLevelToCSTR(8u);
    v2 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v1;
        v6 = 2080;
        v7 = "[RTCReportingAgent reportPeriodicTelemetryWithCategory:type:payload:lock:]_block_invoke";
        v8 = 1024;
        v9 = 1114;
        _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Sent realtime periodic event", &v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __75__RTCReportingAgent_reportPeriodicTelemetryWithCategory_type_payload_lock___block_invoke_cold_1();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

intptr_t __67__RTCReportingAgent_telemetryReport_type_sortedKeys_updateTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) collectTelemetryForService:*(a1 + 40) payload:*(a1 + 48) lock:*(*(a1 + 64) + 8) + 32];
  v2 = *(a1 + 56);

  return dispatch_semaphore_signal(v2);
}

- (void)telemetryUpdate:(id)update updateTimeout:(unint64_t)timeout
{
  v34 = *MEMORY[0x277D85DE8];
  if ([update count])
  {
    group = dispatch_group_create();
    if (group)
    {
      v7 = dispatch_semaphore_create(4);
      if (v7)
      {
        v8 = v7;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [update countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          v12 = 95000000000 * timeout / 0x64;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(update);
              }

              v14 = [(NSMutableDictionary *)self->_periodicServiceRegisteredBlocks objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
              if ([v14 needToUpdate])
              {
                v15 = dispatch_time(0, v12);
                if (dispatch_semaphore_wait(v8, v15))
                {
                  [RTCReportingAgent telemetryUpdate:updateTimeout:];
                  goto LABEL_21;
                }

                periodicTaskTelemetryCollectionQueue = self->_periodicTaskTelemetryCollectionQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __51__RTCReportingAgent_telemetryUpdate_updateTimeout___block_invoke;
                block[3] = &unk_278BD4D48;
                block[4] = v14;
                block[5] = v8;
                dispatch_group_async(group, periodicTaskTelemetryCollectionQueue, block);
              }
            }

            v10 = [update countByEnumeratingWithState:&v23 objects:v33 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v12 = 95000000000 * timeout / 0x64;
        }

        v17 = dispatch_time(0, v12);
        if (dispatch_group_wait(group, v17))
        {
          if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
          {
            v18 = VRTraceErrorLogLevelToCSTR(5u);
            v19 = gVRTraceOSLog;
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v28 = v18;
              v29 = 2080;
              v30 = "[RTCReportingAgent telemetryUpdate:updateTimeout:]";
              v31 = 1024;
              v32 = 1183;
              _os_log_impl(&dword_23D4DF000, v19, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Timeout occurred during Periodic Task", buf, 0x1Cu);
            }
          }
        }

LABEL_21:
        dispatch_release(group);
        dispatch_release(v8);
      }

      else
      {
        [RTCReportingAgent telemetryUpdate:? updateTimeout:?];
      }
    }

    else
    {
      [RTCReportingAgent telemetryUpdate:updateTimeout:];
    }
  }

  else
  {
    [RTCReportingAgent telemetryUpdate:updateTimeout:];
  }

  v20 = *MEMORY[0x277D85DE8];
}

intptr_t __51__RTCReportingAgent_telemetryUpdate_updateTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  (*(v2 + 16))(v2, 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type
{
  periodicTaskManagementQueue = self->_periodicTaskManagementQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke;
  block[3] = &unk_278BD5008;
  block[4] = self;
  categoryCopy = category;
  typeCopy = type;
  intervalCopy = interval;
  multiplierCopy = multiplier;
  dispatch_async(periodicTaskManagementQueue, block);
}

void __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1();
  }

  else
  {
    *(*(a1 + 32) + 56) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v1 + 40));
    v3 = *(a1 + 32);
    if (*(v3 + 56))
    {
      *(v3 + 72) = 0;
      v4 = 1000000000 * *(a1 + 40);
      v5 = *(*(a1 + 32) + 56);
      v6 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(v5, v6, v4, 0x5F5E100uLL);
      v7 = *(a1 + 32);
      v8 = *(v7 + 56);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_233;
      handler[3] = &unk_278BD4FE0;
      v9 = *(a1 + 48);
      v16 = *(a1 + 44);
      v17 = v9;
      handler[4] = v7;
      handler[5] = v4;
      dispatch_source_set_event_handler(v8, handler);
      dispatch_resume(*(*(a1 + 32) + 56));
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR(7u);
        v11 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 40);
          v13 = *(a1 + 44);
          *buf = 136316162;
          v19 = v10;
          v20 = 2080;
          v21 = "[RTCReportingAgent startLogTimerWithInterval:reportingMultiplier:category:type:]_block_invoke_2";
          v22 = 1024;
          v23 = 1232;
          v24 = 1024;
          v25 = v12;
          v26 = 1024;
          v27 = v13;
          _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Periodic timer started with interval=%d, multiplier=%d", buf, 0x28u);
        }
      }
    }

    else
    {
      __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_2();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *__81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_233(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7])
  {
    return [result periodicTaskRunner:*(a1 + 52) type:*(a1 + 54) intervalMultiplier:*(a1 + 48) updateTimeout:*(a1 + 40)];
  }

  return result;
}

- (void)stopLogTimer
{
  periodicTaskManagementQueue = self->_periodicTaskManagementQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RTCReportingAgent_stopLogTimer__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_sync(periodicTaskManagementQueue, block);
}

void __33__RTCReportingAgent_stopLogTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("ReportingVC");
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR(7u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v4;
        v11 = 2080;
        v12 = "[RTCReportingAgent stopLogTimer]_block_invoke";
        v13 = 1024;
        v14 = 1242;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Periodic timer stopped", &v9, 0x1Cu);
      }
    }

    dispatch_source_cancel(*(*(a1 + 32) + 56));
    dispatch_release(*(*(a1 + 32) + 56));
    *(*(a1 + 32) + 56) = 0;
    [*(*(a1 + 32) + 64) removeAllObjects];
    *(*(a1 + 32) + 72) = 0;
  }

  else if (ErrorLogLevelForModule >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR(5u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "[RTCReportingAgent stopLogTimer]_block_invoke";
      v13 = 1024;
      v14 = 1249;
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Periodic timer is not running", &v9, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerPeriodicTaskForModule:(unsigned int)module needToUpdate:(BOOL)update needToReport:(BOOL)report serviceBlock:(id)block
{
  if (block)
  {
    periodicTaskManagementQueue = self->_periodicTaskManagementQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__RTCReportingAgent_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke;
    block[3] = &unk_278BD5030;
    updateCopy = update;
    reportCopy = report;
    block[4] = self;
    block[5] = block;
    moduleCopy = module;
    dispatch_async(periodicTaskManagementQueue, block);
  }

  else
  {
    [RTCReportingAgent registerPeriodicTaskForModule:needToUpdate:needToReport:serviceBlock:];
  }

  return block != 0;
}

void __90__RTCReportingAgent_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [[VCReportingUpdateAndReportServices alloc] initWithServiceBlock:*(a1 + 40) needToUpdate:*(a1 + 52) needToReport:*(a1 + 53)];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(a1 + 48)), "description")}];
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR(7u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = @" no";
        if (*(a1 + 52))
        {
          v8 = @"yes";
        }

        else
        {
          v8 = @" no";
        }

        if (*(a1 + 53))
        {
          v7 = @"yes";
        }

        v10 = 136316418;
        v11 = v4;
        v12 = 2080;
        v13 = "[RTCReportingAgent registerPeriodicTaskForModule:needToUpdate:needToReport:serviceBlock:]_block_invoke";
        v14 = 1024;
        v15 = 1264;
        v16 = 1024;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Registered periodic task for moduleID=%d, update=%@, reporting=%@", &v10, 0x36u);
      }
    }
  }

  else
  {
    __90__RTCReportingAgent_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke_cold_1();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)unregisterPeriodTaskForModule:(unsigned int)module
{
  periodicTaskManagementQueue = self->_periodicTaskManagementQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__RTCReportingAgent_unregisterPeriodTaskForModule___block_invoke;
  v5[3] = &unk_278BD4D98;
  v5[4] = self;
  moduleCopy = module;
  dispatch_sync(periodicTaskManagementQueue, v5);
  return 1;
}

void __51__RTCReportingAgent_unregisterPeriodTaskForModule___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 64) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(a1 + 40)), "description")}])
  {
    [*(*(a1 + 32) + 64) setObject:0 forKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(a1 + 40)), "description")}];
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v2;
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[RTCReportingAgent unregisterPeriodTaskForModule:]_block_invoke";
        v11 = 1024;
        v12 = 1279;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d moduleID=%d removed", &v7, 0x22u);
      }
    }
  }

  else
  {
    __51__RTCReportingAgent_unregisterPeriodTaskForModule___block_invoke_cold_1(v2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupAdaptiveLearningWithParameters:(id)parameters
{
  reportingQueue = self->_reportingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__RTCReportingAgent_setupAdaptiveLearningWithParameters___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = parameters;
  dispatch_async(reportingQueue, v4);
}

- (void)reportingSetNetworkActivityReportingEnabled:(BOOL)enabled
{
  reportingQueue = self->_reportingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__RTCReportingAgent_reportingSetNetworkActivityReportingEnabled___block_invoke;
  v4[3] = &unk_278BD4D20;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(reportingQueue, v4);
}

uint64_t __65__RTCReportingAgent_reportingSetNetworkActivityReportingEnabled___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 96))
  {
    return [*(*(result + 32) + 96) setNWActivityReportingEnabled:*(result + 40)];
  }

  return result;
}

- (unsigned)reportingSegmentMethodForClientType:(int)type
{
  if (type <= 15)
  {
    if (type == 5)
    {
      return 74;
    }

    if (type != 9 && type != 10)
    {
      return 70;
    }

    return 78;
  }

  if (type == 16)
  {
    return 78;
  }

  if (type != 23)
  {
    if (type != 24)
    {
      return 70;
    }

    return 78;
  }

  return 79;
}

void __62__RTCReportingAgent_reportSegment_withMessageType_clientType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR(7u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v5 code];
      *buf = 136315906;
      v7 = v1;
      v8 = 2080;
      v9 = "[RTCReportingAgent reportSegment:withMessageType:clientType:]_block_invoke";
      v10 = 1024;
      v11 = 1386;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d report: error code %d.", buf, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)reportQR:(id)r
{
  if ([r count])
  {
    if (![r objectForKeyedSubscript:@"QRATKN"])
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [RTCReportingAgent reportQR:];
        }
      }

      reportingSymptom(self, 17, 0);
    }

    reportingQueue = self->_reportingQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__RTCReportingAgent_reportQR___block_invoke;
    v6[3] = &unk_278BD4D48;
    v6[4] = self;
    v6[5] = r;
    dispatch_async(reportingQueue, v6);
  }
}

void __30__RTCReportingAgent_reportQR___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (([*(a1 + 32) sendMessageWithCategory:72 type:0 payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR(7u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v5 code];
      *buf = 136315906;
      v7 = v1;
      v8 = 2080;
      v9 = "[RTCReportingAgent reportQR:]_block_invoke";
      v10 = 1024;
      v11 = 1404;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d sendQRReport: error code %d.", buf, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessageForReportingClient:(id)client event:(id)event
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = [objc_msgSend(event objectForKeyedSubscript:{VCRTCReportingMessageParametersCategoryString), "unsignedIntValue"}];
  v7 = [objc_msgSend(event objectForKeyedSubscript:{VCRTCReportingMessageParametersTypeString), "unsignedIntValue"}];
  v8 = [event objectForKeyedSubscript:VCRTCReportingMessageParametersPayloadString];
  if (v6 <= 0xB3u)
  {
    if (v6 != 33 && v6 != 130)
    {
      goto LABEL_9;
    }
  }

  else if (v6 != 180 && v6 != 348 && v6 != 240)
  {
    goto LABEL_9;
  }

  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTCReportingAgent_didSendMessageForReportingClient_event___block_invoke;
  block[3] = &unk_278BD48B8;
  v18 = v6;
  v19 = v7;
  block[4] = self;
  block[5] = v8;
  dispatch_async(reportingQueue, block);
LABEL_9:
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
  {
    __str = 0;
    v10 = v8 ? [objc_msgSend(v8 "description")] : "<nil>";
    asprintf(&__str, "category=%d, type=%d\n%s", v6, v7, v10);
    if (__str)
    {
      __lasts = 0;
      v11 = strtok_r(__str, "\n", &__lasts);
      do
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
        {
          v12 = VRTraceErrorLogLevelToCSTR(8u);
          v13 = gVRTraceOSLog;
          if (gVRTraceLogDebugAsInfo == 1)
          {
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v21 = v12;
              v22 = 2080;
              v23 = "[RTCReportingAgent didSendMessageForReportingClient:event:]";
              v24 = 1024;
              v25 = 1442;
              v26 = 2080;
              v27 = "DidSend ReportingMessage";
              v28 = 2080;
              v29 = v11;
              _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            v21 = v12;
            v22 = 2080;
            v23 = "[RTCReportingAgent didSendMessageForReportingClient:event:]";
            v24 = 1024;
            v25 = 1442;
            v26 = 2080;
            v27 = "DidSend ReportingMessage";
            v28 = 2080;
            v29 = v11;
            _os_log_debug_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEBUG, "ReportingVC [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v11 = strtok_r(0, "\n", &__lasts);
      }

      while (v11);
      free(__str);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __60__RTCReportingAgent_didSendMessageForReportingClient_event___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendMessageToAWDAdaptorWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 40)];
  [objc_msgSend(*(a1 + 32) "aggregator")];
  v2 = [*(a1 + 32) aggregator2];
  v3 = *(a1 + 48);
  v4 = *(a1 + 50);
  v5 = *(a1 + 40);

  return [v2 processEventWithCategory:v3 type:v4 payload:v5];
}

- (void)releaseReportingObject
{
  reportingConfigurationCompleteSemaphore = self->_reportingConfigurationCompleteSemaphore;
  if (reportingConfigurationCompleteSemaphore)
  {
    dispatch_semaphore_signal(reportingConfigurationCompleteSemaphore);
  }

  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RTCReportingAgent_releaseReportingObject__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(reportingQueue, block);
}

void __43__RTCReportingAgent_releaseReportingObject__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR(6u);
    v3 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[RTCReportingAgent releaseReportingObject]_block_invoke";
      v10 = 1024;
      v11 = 1468;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Releasing reportingObject instance=%@", &v6, 0x26u);
    }
  }

  *(*(a1 + 32) + 16) = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (unsigned)reportingCallMethodForClientType:(int)type
{
  result = -1;
  if (type <= 6)
  {
    if (type == 5)
    {
      v4 = 75;
    }

    else
    {
      v4 = -1;
    }

    if (type == 1)
    {
      v5 = 77;
    }

    else
    {
      v5 = v4;
    }

    if (type)
    {
      return v5;
    }

    else
    {
      return 71;
    }
  }

  if (type > 20)
  {
    if (type != 21 && type != 27)
    {
      return result;
    }

    return 73;
  }

  if (type == 7)
  {
    return 97;
  }

  if (type == 12)
  {
    return 73;
  }

  return result;
}

void __57__RTCReportingAgent_sendAggregatedCallReport_clientType___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  if (*(a1 + 32))
  {
    [v2 addEntriesFromDictionary:?];
  }

  [v3 addEntriesFromDictionary:*(a1 + 40)];
  if (([*(a1 + 48) sendMessageWithCategory:*(a1 + 56) type:0 payload:v3 error:&v8] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v8 code];
      *buf = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "[RTCReportingAgent sendAggregatedCallReport:clientType:]_block_invoke";
      v13 = 1024;
      v14 = 1521;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d sendAggregatedCallReport: error code %d.", buf, 0x22u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unsigned)reportingSessionMethodForClientType:(int)type
{
  if (type > 0x19)
  {
    return -1;
  }

  else
  {
    return word_23D59ABF8[type];
  }
}

- (unsigned)reportingSessionTypeForClientType:(int)type
{
  result = 0;
  if (type <= 0x18 && ((1 << type) & 0x1DDE700) != 0)
  {
    return [(VCAggregator *)self->_aggregator direction:v3];
  }

  return result;
}

void __60__RTCReportingAgent_sendAggregatedSessionReport_clientType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 52) payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR(7u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v5 code];
      *buf = 136315906;
      v7 = v1;
      v8 = 2080;
      v9 = "[RTCReportingAgent sendAggregatedSessionReport:clientType:]_block_invoke";
      v10 = 1024;
      v11 = 1601;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d sendAggregatedSessionReport: error code %d.", buf, 0x22u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateSymptomCount:(unsigned int)count
{
  reportingQueue = self->_reportingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__RTCReportingAgent_updateSymptomCount___block_invoke;
  v4[3] = &unk_278BD4D98;
  v4[4] = self;
  countCopy = count;
  dispatch_async(reportingQueue, v4);
}

- (void)reportingSymptom:(unsigned int)symptom withOptionalDict:(__CFDictionary *)dict
{
  v4 = 2 * (symptom == 3);
  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke;
  block[3] = &unk_278BD5080;
  symptomCopy = symptom;
  if (symptom == 2)
  {
    v4 = 1;
  }

  block[4] = self;
  block[5] = dict;
  v8 = v4;
  dispatch_async(reportingQueue, block);
}

void __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    if (VCSymptomReporter_IsABCEnabled(v2))
    {
      SymptomReporterReportSymptom(*(*(a1 + 32) + 24), *(a1 + 48), *(a1 + 40));
      if (*(a1 + 52))
      {
        *v7 = 0;
        v3 = *(a1 + 40);
        if (([*(a1 + 32) sendMessageWithCategory:61 type:0 payload:? error:?] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke_cold_1();
          }
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR(6u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 136315650;
        *&v7[4] = v4;
        v8 = 2080;
        v9 = "[RTCReportingAgent reportingSymptom:withOptionalDict:]_block_invoke";
        v10 = 1024;
        v11 = 1620;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d ReportingVC: ABC symptom reporting is disabled!", v7, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke_cold_2();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportingSetReportCallback:(void *)callback withContext:(void *)context
{
  if (context)
  {
    CFRetain(context);
  }

  reportingQueue = self->_reportingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTCReportingAgent_reportingSetReportCallback_withContext___block_invoke;
  block[3] = &unk_278BD4FE0;
  block[4] = self;
  block[5] = callback;
  block[6] = context;
  dispatch_async(reportingQueue, block);
}

void __60__RTCReportingAgent_reportingSetReportCallback_withContext___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (v2)
  {
    SymptomReporterSetCallback(v2, a1[5], a1[6]);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setupPersistentDataStoreFromConfig:(id *)config
{
  v66 = *MEMORY[0x277D85DE8];
  if (!config->var16.var0 && !config->var16.var1)
  {
    goto LABEL_8;
  }

  v7 = [[VCPersistentDataStore alloc] initWithIdentifier:config->var1];
  self->_dataStore = v7;
  if (!v7)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_29())
      {
        v3 = OUTLINED_FUNCTION_43_0();
      }

      else
      {
        v3 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        v52 = OUTLINED_FUNCTION_22();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }
      }

      goto LABEL_8;
    }

    if (VRTraceGetErrorLogLevelForModule("ReportingVC") < 3)
    {
      goto LABEL_8;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    v51 = OUTLINED_FUNCTION_23();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_9_2();
    v54 = 747;
LABEL_32:
    OUTLINED_FUNCTION_24();
LABEL_42:
    _os_log_error_impl(v43, v44, v45, v46, v47, v48);
    goto LABEL_8;
  }

  if (config->var16.var0)
  {
    v8 = [[VCRemoteDataCollectionDumpProducer alloc] initWithDataStore:self->_dataStore];
    self->_remoteDataProducer = v8;
    if (!v8)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") < 3)
        {
          goto LABEL_6;
        }

        VRTraceErrorLogLevelToCSTR(3u);
        v35 = OUTLINED_FUNCTION_23();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_9_2();
        v54 = 752;
        OUTLINED_FUNCTION_24();
      }

      else
      {
        if (OUTLINED_FUNCTION_29())
        {
          v3 = OUTLINED_FUNCTION_43_0();
        }

        else
        {
          v3 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("ReportingVC") < 3)
        {
          goto LABEL_6;
        }

        VRTraceErrorLogLevelToCSTR(3u);
        v49 = OUTLINED_FUNCTION_22();
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_35_0();
      }

      _os_log_error_impl(v36, v37, v38, v39, v40, v41);
    }
  }

LABEL_6:
  if (!config->var16.var1)
  {
    goto LABEL_8;
  }

  v9 = [[VCRateControlMachineLearningLocalTrainingDataProducer alloc] initWithDataStore:self->_dataStore recipeID:config->var16.var2];
  self->_vcrcmlTrainingDataProducer = v9;
  if (v9)
  {
    goto LABEL_8;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") < 3)
    {
      goto LABEL_8;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    v42 = OUTLINED_FUNCTION_23();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_9_2();
    v54 = 759;
    goto LABEL_32;
  }

  if (OUTLINED_FUNCTION_29())
  {
    v3 = OUTLINED_FUNCTION_43_0();
  }

  else
  {
    v3 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v50 = OUTLINED_FUNCTION_22();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_41:
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_35_0();
      goto LABEL_42;
    }
  }

LABEL_8:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
    {
      VRTraceErrorLogLevelToCSTR(6u);
      v11 = OUTLINED_FUNCTION_23();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        var1 = config->var1;
        var0 = config->var16.var0;
        self->_dataStore;
        v14 = config->var16.var1;
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_25_0();
        v55 = v15;
        v56 = v16;
        v57 = 2112;
        selfCopy = v17;
        v59 = v18;
        *v60 = v19;
        *&v60[4] = v18;
        *&v60[6] = v20;
        v21 = "ReportingVC [%s] %s:%d VCPersistentDataStore %s with identifier=%@ isRemoteDataCollectionDumpEnabled=%d isRateControlLocalTrainingDataCollectionEnabled=%d";
        v22 = v3;
        v23 = 60;
LABEL_18:
        _os_log_impl(&dword_23D4DF000, v22, OS_LOG_TYPE_DEFAULT, v21, v53, v23);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_29())
    {
      v10 = OUTLINED_FUNCTION_43_0();
    }

    else
    {
      v10 = &stru_284F80940;
    }

    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
    {
      VRTraceErrorLogLevelToCSTR(6u);
      v24 = OUTLINED_FUNCTION_22();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = config->var1;
        v26 = config->var16.var0;
        self->_dataStore;
        v27 = config->var16.var1;
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_25_0();
        v55 = 2112;
        v56 = v10;
        v57 = 2048;
        selfCopy = self;
        v59 = v28;
        *v60 = v29;
        *&v60[8] = 2112;
        v61 = v30;
        v62 = v31;
        v63 = v32;
        v64 = v31;
        v65 = v33;
        v21 = "ReportingVC [%s] %s:%d %@(%p) VCPersistentDataStore %s with identifier=%@ isRemoteDataCollectionDumpEnabled=%d isRateControlLocalTrainingDataCollectionEnabled=%d";
        v22 = v4;
        v23 = 80;
        goto LABEL_18;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)getUserInfoFromReportingConfiguration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __42__RTCReportingAgent_sharedAWDAdaptorClass__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __42__RTCReportingAgent_sharedAWDAdaptorClass__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __36__RTCReportingAgent_setUpAWDAdapter__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(uint64_t)a1 .cold.2(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directoryPathForWeeklyIDCache
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAndSaveWeeklyID:(uint64_t)a1 currentWeek:(uint64_t *)a2 currentYear:cachePath:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupConfigurationCompletionSemaphore:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)setupConfigurationCompletionSemaphore:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __71__RTCReportingAgent_blockReportingQueueUntilReportingObjectInitialized__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendNetworkScoreDictionary:networkScoreType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createSecondAggregatorWithOptions:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    VRTraceErrorLogLevelToCSTR(6u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)createSecondAggregatorWithOptions:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
  {
    VRTraceErrorLogLevelToCSTR(6u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)createSecondAggregatorWithOptions:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)newAggregatorForClientType:creationOptions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)newAggregatorForClientType:creationOptions:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v0 = *MEMORY[0x277D85DE8];
}

void __43__RTCReportingAgent_sendLastFinalizedEvent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectTelemetryForService:payload:lock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)collectTelemetryForService:payload:lock:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)collectTelemetryForService:payload:lock:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)collectTelemetryForService:payload:lock:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reportPeriodicTelemetryWithCategory:type:payload:lock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reportPeriodicTelemetryWithCategory:type:payload:lock:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __75__RTCReportingAgent_reportPeriodicTelemetryWithCategory_type_payload_lock___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d Sent realtime periodic event", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)telemetryReport:type:sortedKeys:updateTimeout:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)telemetryReport:type:sortedKeys:updateTimeout:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)telemetryReport:type:sortedKeys:updateTimeout:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)telemetryUpdate:updateTimeout:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)telemetryUpdate:(NSObject *)a1 updateTimeout:.cold.2(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  dispatch_release(a1);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)telemetryUpdate:updateTimeout:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)telemetryUpdate:updateTimeout:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)periodicTaskRunner:type:intervalMultiplier:updateTimeout:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d Started Periodic Task", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)periodicTaskRunner:type:intervalMultiplier:updateTimeout:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d Finished Periodic Task update for all registered modules", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)periodicTaskRunner:type:intervalMultiplier:updateTimeout:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d Finished Periodic Task telemetry collection for all registered modules.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __81__RTCReportingAgent_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)registerPeriodicTaskForModule:needToUpdate:needToReport:serviceBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __90__RTCReportingAgent_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __51__RTCReportingAgent_unregisterPeriodTaskForModule___block_invoke_cold_1(unsigned int *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      v2 = *a1;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportQR:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__RTCReportingAgent_reportingSymptom_withOptionalDict___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end