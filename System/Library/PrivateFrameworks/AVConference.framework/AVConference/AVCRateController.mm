@interface AVCRateController
+ (unsigned)rateControlTrafficTypeForScreen:(BOOL)a3 isPersona:(BOOL)a4;
- (AVCRateControlConfig)configuration;
- (AVCRateController)initWithDelegate:(id)a3 dumpID:(id)a4 isUplink:(BOOL)a5 isForSimulation:(BOOL)a6 useExternalThread:(BOOL)a7 rateSharingGroupToken:(unsigned int)a8;
- (AVCRateController)initWithDelegate:(id)a3 params:(const tagVCRateControlParams *)a4;
- (BOOL)start;
- (BOOL)stop;
- (id)sharingGroupFromToken:(unsigned int)a3;
- (tagAVCRateControlExperimentConfig)rateControlExperimentConfig;
- (tagVCRateControlAlgorithmConfig)algorithmConfig;
- (unsigned)loadDefaultVCRCFeatureFlags:(unsigned int)a3;
- (unsigned)radioAccessTechnologyFromAVConferenceCellTech:(int)a3 isCellular:(BOOL)a4;
- (unsigned)rateControlModeFromAVConferenceOperatingMode:(int)a3;
- (void)accumulateStatsForPeriodicTaskUpdate;
- (void)cleanupNwActivity;
- (void)cleanupSharingGroup;
- (void)completeAndReleaseNwActivity:(id)a3 withReason:(int)a4;
- (void)configure:(AVCRateControlConfig *)a3;
- (void)configureTrafficType:(unsigned __int8)a3 inRateControlConfig:(AVCRateControlConfig *)a4;
- (void)configureWithOperatingMode:(int)a3 isLocalCellular:(BOOL)a4 localCellTech:(int)a5 isRemoteCellular:(BOOL)a6 remoteCellTech:(int)a7 bitrateCapKbps:(unsigned int)a8 trafficType:(unsigned __int8)a9 featureFlags:(unsigned int)a10;
- (void)createBasebandLogDumpFile;
- (void)createNWConnectionLogDumpFile;
- (void)dealloc;
- (void)deregisterForRateSharing;
- (void)getRealTimeStats:(__CFDictionary *)a3;
- (void)getRealTimeStatsForLowLatency:(__CFDictionary *)a3;
- (void)getRealTimeStatsForServerBasedRxOnly:(__CFDictionary *)a3;
- (void)getRealTimeStatsForServerBasedTxOnly:(__CFDictionary *)a3;
- (void)initAndStartTrafficMetricCollector;
- (void)loadParametersFromExperimentManagerForABTesting;
- (void)periodicTask:(void *)a3;
- (void)printRateControllerHealthPrint;
- (void)registerForRateSharing:(unsigned int)a3;
- (void)registerPeriodicTask;
- (void)releaseAllLogDumpFiles;
- (void)releaseLogDumpFile:(void *)a3;
- (void)reportContinuousTierMLRateControllerStatsAfterMLDisengagement;
- (void)resetStatsForPeriodicTaskReport;
- (void)setBtNotificationMonitor;
- (void)setEstimatedBandwidthCap:(unsigned int)a3;
- (void)setMaxTargetBitrate:(unsigned int)a3;
- (void)setMinTargetBitrate:(unsigned int)a3;
- (void)setPaused:(BOOL)a3;
- (void)setShareProfile:(id)a3;
- (void)setTargetBitrateCap:(unsigned int)a3;
- (void)start;
- (void)triggerDeferredDelegateCallbacks;
@end

@implementation AVCRateController

- (AVCRateController)initWithDelegate:(id)a3 dumpID:(id)a4 isUplink:(BOOL)a5 isForSimulation:(BOOL)a6 useExternalThread:(BOOL)a7 rateSharingGroupToken:(unsigned int)a8
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v9 = a4;
  LOBYTE(v10) = a6;
  BYTE1(v10) = a5;
  BYTE8(v11) = a7;
  DWORD2(v13) = a8;
  return [(AVCRateController *)self initWithDelegate:a3 params:&v9];
}

- (AVCRateController)initWithDelegate:(id)a3 params:(const tagVCRateControlParams *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AVCRateController;
  v5 = [(AVCRateController *)&v17 init];
  if (!v5)
  {
    return v5;
  }

  FigCFWeakReferenceStore();
  FigCFWeakReferenceStore();
  v5->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
  v5->_statisticsCollector = [[AVCStatisticsCollector alloc] initForSimulation:a4->var1 useExternalThread:a4->var5];
  v5->_feedbackController = [[AVCRateControlFeedbackController alloc] initWithStatisticsCollector:v5->_statisticsCollector];
  v5->_probingSequenceController = objc_alloc_init(VCRateControlProbingSequenceController);
  v5->_experimentManager = a4->var11;
  [(AVCRateController *)v5 loadParametersFromExperimentManagerForABTesting];
  v5->_isForSimulation = a4->var1;
  v5->_isRateControlDumpFileEnabled = [+[VCDefaults sharedInstance](VCDefaults rateControlDumpEnabled];
  v5->_isBWEDumpFileEnabled = [+[VCDefaults sharedInstance](VCDefaults bandwidthEstimationDumpEnabled];
  v5->_dumpID = [a4->var0 copy];
  v5->_isUplink = a4->var2;
  v5->_useExternalThread = a4->var5;
  v5->_isPeriodicLoggingEnabled = [+[VCDefaults sharedInstance](VCDefaults rateControlLogEnabled];
  *&v5->_forcedTargetBitrate = -1;
  v5->_serverBag = a4->var3;
  v5->_btNotificationMonitorToken = 0;
  v5->_parentNWActivity = a4->var6;
  v5->_registrationLock._os_unfair_lock_opaque = 0;
  v5->_isECNEnabled = 0;
  v5->_rateControlMLModelPath = a4->var10;
  parentNWActivity = v5->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_retain(parentNWActivity);
  }

  pthread_mutex_init(&v5->_mutex, 0);
  v5->_useNWConnectionNotification = _os_feature_enabled_impl();
  var8 = a4->var8;
  if (var8)
  {
    v8 = var8;
LABEL_8:
    v5->_sharingGroup = v8;
    goto LABEL_9;
  }

  if (a4->var9)
  {
    v8 = [(AVCRateController *)v5 sharingGroupFromToken:?];
    goto LABEL_8;
  }

LABEL_9:
  if (_os_feature_enabled_impl())
  {
    v5->_useBTNotificationMonitor = a4->var7;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v5->_reportingQueue = dispatch_queue_create_with_target_V2("com.apple.VideoConference.VCRCReport", 0, CustomRootQueue);
  v5->_weakSelf = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = "disabled";
      if (v5->_isRateControlDumpFileEnabled)
      {
        v13 = "enabled";
      }

      else
      {
        v13 = "disabled";
      }

      isBWEDumpFileEnabled = v5->_isBWEDumpFileEnabled;
      if (v5->_isPeriodicLoggingEnabled)
      {
        v15 = "enabled";
      }

      else
      {
        v15 = "disabled";
      }

      *buf = 136316674;
      if (isBWEDumpFileEnabled)
      {
        v12 = "enabled";
      }

      v19 = v10;
      v20 = 2080;
      v21 = "[AVCRateController initWithDelegate:params:]";
      v22 = 1024;
      v23 = 581;
      v24 = 2048;
      v25 = v5;
      v26 = 2080;
      v27 = v13;
      v28 = 2080;
      v29 = v15;
      v30 = 2080;
      v31 = v12;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d AVCRateController (%p) init with VCRateControl dumpFile %s, VCRateControl logging %s, BWE dumpFile %s.", buf, 0x44u);
    }
  }

  return v5;
}

- (void)loadParametersFromExperimentManagerForABTesting
{
  v26 = *MEMORY[0x1E69E9840];
  *&self->_lowBandwidthOptimizationEnabled = 257;
  experimentManager = self->_experimentManager;
  if (experimentManager)
  {
    v13 = 0;
    if ((VCExperimentManager_GetExperimentGroup(experimentManager, @"enableLowBandwidthOptimization", &v13) & 0x80000000) == 0)
    {
      self->_lowBandwidthOptimizationEnabled = v13 != 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v15 = v4;
          v16 = 2080;
          v17 = "[AVCRateController loadParametersFromExperimentManagerForABTesting]";
          v18 = 1024;
          v19 = 595;
          v20 = 2048;
          v21 = self;
          v22 = 1024;
          v23 = v13;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d VCFeatureExperimentSetting: [%p] Found experiment group. lowBandwidthOptimizationGroup=%d", buf, 0x2Cu);
        }
      }
    }

    v12 = 0;
    if ((VCExperimentManager_GetExperimentGroup(self->_experimentManager, @"alwaysReportNetworkStatistics", &v12) & 0x80000000) == 0)
    {
      self->_isUnconditionalNetworkStatisticsReportingEnabled = v12 != 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v15 = v6;
          v16 = 2080;
          v17 = "[AVCRateController loadParametersFromExperimentManagerForABTesting]";
          v18 = 1024;
          v19 = 601;
          v20 = 2048;
          v21 = self;
          v22 = 1024;
          v23 = v12;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d VCFeatureExperimentSetting: [%p] Found experiment group. shouldAlwaysReportStatisticsGroup=%d", buf, 0x2Cu);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      lowBandwidthOptimizationEnabled = self->_lowBandwidthOptimizationEnabled;
      isUnconditionalNetworkStatisticsReportingEnabled = self->_isUnconditionalNetworkStatisticsReportingEnabled;
      *buf = 136316418;
      v15 = v8;
      v16 = 2080;
      v17 = "[AVCRateController loadParametersFromExperimentManagerForABTesting]";
      v18 = 1024;
      v19 = 604;
      v20 = 2048;
      v21 = self;
      v22 = 1024;
      v23 = lowBandwidthOptimizationEnabled;
      v24 = 1024;
      v25 = isUnconditionalNetworkStatisticsReportingEnabled;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d VCFeatureExperimentSetting: [%p] Feature settings updated. _lowBandwidthOptimizationEnabled=%d _isUnconditionalNetworkStatisticsReportingEnabled=%d", buf, 0x32u);
    }
  }
}

- (id)sharingGroupFromToken:(unsigned int)a3
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  LODWORD(v25[0]) = a3;
  v5 = [[VCConnectionLegacy alloc] initWithConnectionResult:v25 type:0];
  self->_connectionWithCallID = &v5->super;
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRateController sharingGroupFromToken:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCRateController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = 136316418;
    v14 = v9;
    v15 = 2080;
    v16 = "[AVCRateController sharingGroupFromToken:]";
    v17 = 1024;
    v18 = 613;
    v19 = 2112;
    v20 = v7;
    v21 = 2048;
    v22 = self;
    v23 = 1024;
    v24 = a3;
    v11 = "AVCRC [%s] %s:%d %@(%p) Cannot create connection with token=%d!";
    goto LABEL_25;
  }

  result = [+[VCRateControllerManager sharedInstance](VCRateControllerManager getRateControllerSharingGroupWithConnection:"getRateControllerSharingGroupWithConnection:usePolicy:" usePolicy:self->_connectionWithCallID, 2];
  if (!result)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRateController sharingGroupFromToken:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [(AVCRateController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = 136316418;
    v14 = v12;
    v15 = 2080;
    v16 = "[AVCRateController sharingGroupFromToken:]";
    v17 = 1024;
    v18 = 615;
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = self;
    v23 = 1024;
    v24 = a3;
    v11 = "AVCRC [%s] %s:%d %@(%p) Cannot resolve sharingGroup with token=%d!";
LABEL_25:
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x36u);
    return 0;
  }

  return result;
}

- (void)completeAndReleaseNwActivity:(id)a3 withReason:(int)a4
{
  nw_activity_complete_with_reason();

  nw_release(a3);
}

- (void)cleanupNwActivity
{
  noServerStatsUplinkNwActivity = self->_noServerStatsUplinkNwActivity;
  if (noServerStatsUplinkNwActivity)
  {
    [(AVCRateController *)self completeAndReleaseNwActivity:noServerStatsUplinkNwActivity withReason:3];
  }

  noServerStatsDownlinkNwActivity = self->_noServerStatsDownlinkNwActivity;
  if (noServerStatsDownlinkNwActivity)
  {
    [(AVCRateController *)self completeAndReleaseNwActivity:noServerStatsDownlinkNwActivity withReason:3];
  }

  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {

    nw_release(parentNWActivity);
  }
}

- (void)cleanupSharingGroup
{
  if (self->_connectionWithCallID)
  {
    sharingGroup = self->_sharingGroup;
    if (sharingGroup && [(VCRateSharingGroup *)sharingGroup isSharingGroupEmpty])
    {
      [+[VCRateControllerManager sharedInstance](VCRateControllerManager cleanupRateControllerSharingGroupWithConnection:"cleanupRateControllerSharingGroupWithConnection:usePolicy:" usePolicy:self->_connectionWithCallID, 2];
    }

    self->_connectionWithCallID = 0;
  }

  self->_sharingGroup = 0;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[AVCRateController dealloc]";
      v12 = 1024;
      v13 = 651;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p)", buf, 0x26u);
    }
  }

  [(AVCRateController *)self releaseAllLogDumpFiles];
  FigCFWeakReferenceStore();
  FigCFWeakReferenceStore();

  [(AVCRateController *)self cleanupSharingGroup];
  [(AVCRateController *)self cleanupNwActivity];
  pthread_mutex_destroy(&self->_mutex);
  reportingQueue = self->_reportingQueue;
  if (reportingQueue)
  {
    dispatch_release(reportingQueue);
  }

  weakSelf = self->_weakSelf;
  if (weakSelf)
  {
    CFRelease(weakSelf);
  }

  v7.receiver = self;
  v7.super_class = AVCRateController;
  [(AVCRateController *)&v7 dealloc];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    VCRateControlAlgorithm_SetPaused(self->_rateControlAlgorithm, a3);
  }
}

- (void)setMaxTargetBitrate:(unsigned int)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_configuration.mode == 12)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      mode = self->_configuration.mode;
      *v15 = 136316162;
      *&v15[4] = v6;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCRateController setMaxTargetBitrate:]";
      *&v15[22] = 1024;
      LODWORD(v16) = 700;
      WORD2(v16) = 1024;
      *(&v16 + 6) = a3;
      WORD5(v16) = 1024;
      HIDWORD(v16) = mode;
      v9 = "AVCRC [%s] %s:%d set maxBitrate=%u with mode=%d";
      v10 = v7;
      v11 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(AVCRateController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = self->_configuration.mode;
      *v15 = 136316674;
      *&v15[4] = v12;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCRateController setMaxTargetBitrate:]";
      *&v15[22] = 1024;
      LODWORD(v16) = 700;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v5;
      HIWORD(v16) = 2048;
      *&v17 = self;
      WORD4(v17) = 1024;
      *(&v17 + 10) = a3;
      HIWORD(v17) = 1024;
      LODWORD(v18) = v14;
      v9 = "AVCRC [%s] %s:%d %@(%p) set maxBitrate=%u with mode=%d";
      v10 = v13;
      v11 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
LABEL_13:
    v16 = 0u;
    v18 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v17 = 0u;
    *&v15[8] = 0u;
    *v15 = 0x100000009;
    LODWORD(v16) = self->_configuration.mode;
    HIDWORD(v16) = a3;
    LODWORD(v18) = 1;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v15);
  }
}

- (void)setMinTargetBitrate:(unsigned int)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_configuration.mode == 12)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      mode = self->_configuration.mode;
      *v15 = 136316162;
      *&v15[4] = v6;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCRateController setMinTargetBitrate:]";
      *&v15[22] = 1024;
      LODWORD(v16) = 714;
      WORD2(v16) = 1024;
      *(&v16 + 6) = a3;
      WORD5(v16) = 1024;
      HIDWORD(v16) = mode;
      v9 = "AVCRC [%s] %s:%d set minBitrate=%u with mode=%d";
      v10 = v7;
      v11 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(AVCRateController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = self->_configuration.mode;
      *v15 = 136316674;
      *&v15[4] = v12;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCRateController setMinTargetBitrate:]";
      *&v15[22] = 1024;
      LODWORD(v16) = 714;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v5;
      HIWORD(v16) = 2048;
      *&v17 = self;
      WORD4(v17) = 1024;
      *(&v17 + 10) = a3;
      HIWORD(v17) = 1024;
      LODWORD(v18) = v14;
      v9 = "AVCRC [%s] %s:%d %@(%p) set minBitrate=%u with mode=%d";
      v10 = v13;
      v11 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
LABEL_13:
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    *&v15[8] = 0u;
    *v15 = 0x100000009;
    LODWORD(v16) = self->_configuration.mode;
    LODWORD(v17) = a3;
    LODWORD(v18) = 2;
    AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v15);
  }
}

+ (unsigned)rateControlTrafficTypeForScreen:(BOOL)a3 isPersona:(BOOL)a4
{
  if (a4)
  {
    return a3 | 2;
  }

  else
  {
    return a3;
  }
}

- (void)configure:(AVCRateControlConfig *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mode = a3->mode;
      localRadioAccessTechnology = a3->localRadioAccessTechnology;
      maxBitrate = a3->maxBitrate;
      minBitrate = a3->minBitrate;
      remoteRadioAccessTechnology = a3->remoteRadioAccessTechnology;
      isTrafficBursty = a3->isTrafficBursty;
      featureFlags = a3->featureFlags;
      statisticsCollector = self->_statisticsCollector;
      *v21 = 136317954;
      *&v21[4] = v5;
      *&v21[12] = 2080;
      *&v21[14] = "[AVCRateController configure:]";
      *&v21[22] = 1024;
      *&v21[24] = 736;
      *&v21[28] = 2048;
      *&v21[30] = self;
      *&v21[38] = 1024;
      *&v21[40] = mode;
      *&v21[44] = 1024;
      *&v21[46] = localRadioAccessTechnology;
      *&v21[50] = 1024;
      *&v21[52] = remoteRadioAccessTechnology;
      *&v21[56] = 1024;
      *&v21[58] = minBitrate;
      *&v21[62] = 1024;
      *&v21[64] = maxBitrate;
      *&v21[68] = 1024;
      *&v21[70] = isTrafficBursty;
      *&v21[74] = 1024;
      *&v21[76] = featureFlags;
      *&v21[80] = 2048;
      *&v21[82] = statisticsCollector;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d AVCRateController (%p) configuration with mode=%d, LocalRAT=%d, RemoteRAT=%d, minBitrate=%d, maxBitrate=%d, isTrafficBursty=%d, featureFlags=%X, statisticsCollector=%p", v21, 0x5Au);
    }
  }

  if ((a3->featureFlags & 4) != 0)
  {
    [(VCRateControlMediaController *)self->_mediaController setEnableAggressiveProbingSequence:1];
  }

  [(VCRateControlMediaController *)self->_mediaController setServerBag:self->_serverBag];
  algorithmConfig = a3->algorithmConfig;
  if (algorithmConfig && !self->_didCacheAlgorithmConfig)
  {
    memcpy(&self->_algorithmConfigCache, algorithmConfig, sizeof(self->_algorithmConfigCache));
    self->_didCacheAlgorithmConfig = 1;
  }

  if (!self->_basebandCongestionDetector && a3->localRadioAccessTechnology - 2 <= 4)
  {
    v16 = objc_alloc_init(AVCBasebandCongestionDetector);
    self->_basebandCongestionDetector = v16;
    [(AVCBasebandCongestionDetector *)v16 setStatisticsCollector:self->_statisticsCollector];
    [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector setMediaController:self->_mediaController];
    [(AVCRateController *)self createBasebandLogDumpFile];
    [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector enableBasebandLogDump:self->_logBasebandDump];
    [(VCRateControlMediaController *)self->_mediaController enableBasebandLogDump:self->_logBasebandDump];
    [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector start];
  }

  v17 = a3->mode;
  if (!self->_nwConnectionCongestionDetector)
  {
    if ((v17 & 0xFFFFFFFE) != 8 || (v19 = objc_alloc_init(VCNWConnectionCongestionDetector), self->_nwConnectionCongestionDetector = v19, [(VCNWConnectionCongestionDetector *)v19 setStatisticsCollector:self->_statisticsCollector], [(AVCRateController *)self createNWConnectionLogDumpFile], [(VCNWConnectionCongestionDetector *)self->_nwConnectionCongestionDetector enableNWLogDump:self->_logNWDump], v17 = a3->mode, !self->_nwConnectionCongestionDetector))
    {
      if (v17 == 11)
      {
        v20 = objc_alloc_init(VCNWConnectionCongestionDetectorBaseband);
        self->_nwConnectionCongestionDetector = &v20->super;
        [(VCNWConnectionCongestionDetector *)v20 setStatisticsCollector:self->_statisticsCollector];
        [(AVCRateController *)self createNWConnectionLogDumpFile];
        [(VCNWConnectionCongestionDetector *)self->_nwConnectionCongestionDetector enableNWLogDump:self->_logNWDump];
        v17 = a3->mode;
      }
    }
  }

  if (a3->localRadioAccessTechnology == 1 && v17 - 1 <= 1)
  {
    if (self->_logNWDump)
    {
      goto LABEL_19;
    }

    [(AVCRateController *)self createNWConnectionLogDumpFile];
    v17 = a3->mode;
  }

  if (v17 == 12)
  {
    self->_isDelegateCallbackDeferralEnabled = 1;
    v17 = 12;
  }

LABEL_19:
  memset(&v21[24], 0, 176);
  *&v21[8] = 0u;
  *v21 = 0x100000009;
  *&v21[24] = v17;
  *&v18 = vrev64q_s32(*&a3->localRadioAccessTechnology).u64[0];
  *(&v18 + 1) = *&a3->maxBitrate;
  *&v21[28] = v18;
  *&v21[44] = a3->initialBitrate;
  *&v21[52] = a3->featureFlags;
  *&v21[48] = *&a3->isTrafficBursty;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v21);
}

- (void)triggerDeferredDelegateCallbacks
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self->_isDelegateCallbackDeferralEnabled)
  {
    return;
  }

  if (self->_isTargetBitrateChangedCallbackDeferred)
  {
    self->_isTargetBitrateChangedCallbackDeferred = 0;
    [(AVCRateControllerDelegate *)self->_rateControllerDelegate rateController:self targetBitrateDidChange:self->_targetBitrate rateChangeCounter:self->_rateChangeCounter];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          mode = self->_configuration.mode;
          targetBitrate = self->_targetBitrate;
          rateChangeCounter = self->_rateChangeCounter;
          v33 = 136316418;
          v34 = v4;
          v35 = 2080;
          v36 = "[AVCRateController triggerDeferredDelegateCallbacks]";
          v37 = 1024;
          v38 = 803;
          v39 = 1024;
          *v40 = mode;
          *&v40[4] = 1024;
          *&v40[6] = targetBitrate;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = rateChangeCounter;
          v9 = "AVCRC [%s] %s:%d Deferred targetBitrate changed for mode=%d, targetBitrate=%u, rateChangeCounter=%u";
          v10 = v5;
          v11 = 46;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v33, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(AVCRateController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_configuration.mode;
          v15 = self->_targetBitrate;
          v16 = self->_rateChangeCounter;
          v33 = 136316930;
          v34 = v12;
          v35 = 2080;
          v36 = "[AVCRateController triggerDeferredDelegateCallbacks]";
          v37 = 1024;
          v38 = 803;
          v39 = 2112;
          *v40 = v3;
          *&v40[8] = 2048;
          v41 = self;
          *v42 = 1024;
          *&v42[2] = v14;
          v43 = 1024;
          v44 = v15;
          v45 = 1024;
          v46 = v16;
          v9 = "AVCRC [%s] %s:%d %@(%p) Deferred targetBitrate changed for mode=%d, targetBitrate=%u, rateChangeCounter=%u";
          v10 = v13;
          v11 = 66;
          goto LABEL_13;
        }
      }
    }
  }

  if (!self->_isProbingSequenceRequestCallbackDeferred)
  {
    return;
  }

  self->_isProbingSequenceRequestCallbackDeferred = 0;
  [(AVCRateControllerDelegate *)self->_rateControllerDelegate rateController:self probingSequenceRequestedWithID:self->_probingSequenceID probingSequenceSize:self->_probingSequenceSize];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_configuration.mode;
        v21 = self->_targetBitrate;
        probingSequenceSize = self->_probingSequenceSize;
        probingSequenceID = self->_probingSequenceID;
        v33 = 136316674;
        v34 = v18;
        v35 = 2080;
        v36 = "[AVCRateController triggerDeferredDelegateCallbacks]";
        v37 = 1024;
        v38 = 808;
        v39 = 1024;
        *v40 = v20;
        *&v40[4] = 1024;
        *&v40[6] = v21;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = probingSequenceSize;
        HIWORD(v41) = 1024;
        *v42 = probingSequenceID;
        v24 = "AVCRC [%s] %s:%d Deferred request probing sequence for mode=%d, targetBitrate=%u, probingSequenceSize=%u, probingSequenceID=%u";
        v25 = v19;
        v26 = 52;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, &v33, v26);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(AVCRateController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_configuration.mode;
        v30 = self->_targetBitrate;
        v31 = self->_probingSequenceSize;
        v32 = self->_probingSequenceID;
        v33 = 136317186;
        v34 = v27;
        v35 = 2080;
        v36 = "[AVCRateController triggerDeferredDelegateCallbacks]";
        v37 = 1024;
        v38 = 808;
        v39 = 2112;
        *v40 = v17;
        *&v40[8] = 2048;
        v41 = self;
        *v42 = 1024;
        *&v42[2] = v29;
        v43 = 1024;
        v44 = v30;
        v45 = 1024;
        v46 = v31;
        v47 = 1024;
        v48 = v32;
        v24 = "AVCRC [%s] %s:%d %@(%p) Deferred request probing sequence for mode=%d, targetBitrate=%u, probingSequenceSize=%u, probingSequenceID=%u";
        v25 = v28;
        v26 = 72;
        goto LABEL_25;
      }
    }
  }
}

- (BOOL)start
{
  v12[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_mutex);
  if ([(AVCRateController *)self isStarted])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRateController start];
      }
    }

LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v3 = MEMORY[0x1E1289F20](&self->_rateControllerDelegateWeak);
  self->_rateControllerDelegate = v3;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRateController start];
      }
    }

    goto LABEL_21;
  }

  if (self->_reportingAgentWeak && (v4 = MEMORY[0x1E1289F20](&self->_reportingAgentWeak), (self->_reportingAgentStrong = v4) == 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRateController start];
      }
    }

    rateControllerDelegate = self->_rateControllerDelegate;
    if (!rateControllerDelegate)
    {
      goto LABEL_21;
    }

    CFRelease(rateControllerDelegate);
    v8 = 0;
    self->_rateControllerDelegate = 0;
  }

  else
  {
    statisticsCollector = self->_statisticsCollector;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __26__AVCRateController_start__block_invoke;
    v12[3] = &unk_1E85F3970;
    v12[4] = self;
    VCStatisticsCollector_SetProcessCompleteHandler(statisticsCollector, v12);
    v6 = self->_statisticsCollector;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__AVCRateController_start__block_invoke_2;
    v11[3] = &unk_1E85F3998;
    v11[4] = self;
    [(AVCStatisticsCollector *)v6 registerStatisticsChangeHandlerWithType:9 handler:v11];
    _AVCRateController_RegisterStatisticsChangeHandlers(self);
    [(AVCStatisticsCollector *)self->_statisticsCollector start];
    [(AVCRateController *)self registerPeriodicTask];
    [(AVCRateController *)self registerForRateSharing:self->_configuration.mode];
    [(AVCRateController *)self setBtNotificationMonitor];
    mode = self->_configuration.mode;
    if (mode <= 7 && ((1 << mode) & 0x86) != 0 && [(VCRateControlMediaController *)self->_mediaController vcMediaQueue])
    {
      [(AVCRateController *)self initAndStartTrafficMetricCollector];
    }

    [(VCRateControlAlgorithm *)self->_rateControlAlgorithm setIsFirstTimestampArrived:0];
    v8 = 1;
  }

LABEL_22:
  pthread_mutex_unlock(&self->_mutex);
  return v8;
}

uint64_t __26__AVCRateController_start__block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 15 || *a2 == 9)
  {
    return [*(result + 32) triggerDeferredDelegateCallbacks];
  }

  return result;
}

void __26__AVCRateController_start__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 56);
  if ((v2 - 1) > 1)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = vuzp1q_s32(*(a2 + 24), vrev64q_s32(*(a2 + 24)));
    v14 = *(a2 + 40);
    LOWORD(v15) = *(a2 + 48);
    LODWORD(v17) = *(a2 + 52);
    _AVCRateController_ConfigureInternal(*(a1 + 32), v13.i32);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1920);
    if (v4 && *(a2 + 24) == 12)
    {
      if (v2 == 1)
      {
        v5 = *(a2 + 36);
        bzero(&v13, 0x400uLL);
        v18 = 1;
        v6 = 43;
        v7 = &dword_1DBD45728;
        do
        {
          v8 = *v7--;
          --v6;
        }

        while (v8 > v5);
        if (v6 <= 3)
        {
          v6 = 3;
        }

        HIDWORD(v14) = v6;
        VCRateControlAlgorithm_Configure(v4, &v13);
        *(v3 + 84) = v5;
        *(v3 + 1176) = v5;
      }

      else
      {
        v9 = *(a2 + 40);
        bzero(&v13, 0x400uLL);
        v19 = 1;
        v10 = 2;
        v11 = &dword_1DBD4568C;
        do
        {
          v12 = *v11++;
          ++v10;
        }

        while (v12 < v9);
        if (v10 >= 42)
        {
          v10 = 42;
        }

        LODWORD(v15) = v10;
        VCRateControlAlgorithm_Configure(v4, &v13);
        *(v3 + 88) = v9;
        *(v3 + 1180) = v9;
      }
    }
  }
}

- (BOOL)stop
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_mutex);
  v3 = [(AVCRateController *)self isStarted];
  if (v3)
  {
    [(AVCRateController *)self deregisterForRateSharing];
    [(AVCRateController *)self deregisterPeriodicTask];
    rateControllerDelegate = self->_rateControllerDelegate;
    if (rateControllerDelegate)
    {
      CFRelease(rateControllerDelegate);
      self->_rateControllerDelegate = 0;
    }

    reportingAgentStrong = self->_reportingAgentStrong;
    if (reportingAgentStrong)
    {
      CFRelease(reportingAgentStrong);
      self->_reportingAgentStrong = 0;
    }

    [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector stop];
    [(AVCStatisticsCollector *)self->_statisticsCollector stop];
    [(AVCStatisticsCollector *)self->_statisticsCollector unregisterAllStatisticsChangeHandlers];
    VCStatisticsCollector_SetProcessCompleteHandler(self->_statisticsCollector, 0);
    [+[VCBTNotificationMonitor sharedInstance](VCBTNotificationMonitor unregisterBTNotificationHandler:"unregisterBTNotificationHandler:", &self->_btNotificationMonitorToken];
    [(VCRateControlTrafficMetricCollector *)self->_trafficMetricCollector stopVCRateControlTrafficMetricCollector];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVCRateController stop]";
      v13 = 1024;
      v14 = 885;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) rate controller has been stopped", &v9, 0x26u);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
  return v3;
}

- (tagAVCRateControlExperimentConfig)rateControlExperimentConfig
{
  v3 = [(VCRateControlServerBag *)self->_serverBag experimentVersion];
  v4 = [(NSNumber *)[(VCRateControlServerBag *)self->_serverBag experimentGroupIndex] intValue];
  rateControlAlgorithm = self->_rateControlAlgorithm;
  if (!rateControlAlgorithm)
  {
    goto LABEL_9;
  }

  [(VCRateControlAlgorithm *)rateControlAlgorithm config];
  v6 = self->_rateControlAlgorithm;
  if (!v6)
  {
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [(VCRateControlAlgorithm *)v6 reportStatistics];
  v7 = 0;
  if (v12 && !v11)
  {
LABEL_7:
    v8 = self->_rateControlAlgorithm;
    if (v8)
    {
      [(VCRateControlAlgorithm *)v8 reportStatistics];
      v7 = v10;
      goto LABEL_10;
    }

LABEL_9:
    v7 = 0;
  }

LABEL_10:
  v9 = v3 | (v4 << 32);
  result.var0 = v9;
  result.var1 = HIDWORD(v9);
  result.var2 = v7;
  return result;
}

- (tagVCRateControlAlgorithmConfig)algorithmConfig
{
  rateControlAlgorithm = self->_rateControlAlgorithm;
  if (rateControlAlgorithm)
  {
    return [(VCRateControlAlgorithm *)rateControlAlgorithm config];
  }

  bzero(retstr, 0x400uLL);
  return result;
}

- (void)initAndStartTrafficMetricCollector
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = 136315906;
    v12 = v2;
    v13 = 2080;
    OUTLINED_FUNCTION_6();
    v14 = 925;
    v15 = 2048;
    v16 = a1;
    v4 = &dword_1DB56E000;
    v5 = "AVCRC [%s] %s:%d [%p] cannot start Rate controller, because trafficMetricCollector is not allocated";
    v6 = &v11;
    v7 = v3;
    v8 = 38;
LABEL_11:
    _os_log_error_impl(v4, v7, OS_LOG_TYPE_ERROR, v5, v6, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      v13 = v9;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_0();
      v17 = v10;
      v18 = a1;
      OUTLINED_FUNCTION_5_1();
      v8 = 58;
      goto LABEL_11;
    }
  }
}

- (void)periodicTask:(void *)a3
{
  if (a3)
  {
    mode = self->_configuration.mode;
    if (mode - 8 < 2)
    {
      [(AVCRateController *)self getRealTimeStatsForLowLatency:?];
    }

    else if (mode == 5)
    {
      [(AVCRateController *)self getRealTimeStatsForServerBasedRxOnly:?];
    }

    else if (mode == 4)
    {
      [(AVCRateController *)self getRealTimeStatsForServerBasedTxOnly:?];
    }

    else
    {
      [(AVCRateController *)self getRealTimeStats:?];
    }

    [(AVCRateController *)self reportContinuousTierMLRateControllerStatsAfterMLDisengagement];
    [(AVCRateController *)self resetStatsForPeriodicTaskReport];

    [(AVCRateController *)self printRateControllerHealthPrint];
  }

  else
  {

    [(AVCRateController *)self accumulateStatsForPeriodicTaskUpdate];
  }
}

- (void)accumulateStatsForPeriodicTaskUpdate
{
  *&self->_sumPLR = vmlaq_f64(*&self->_sumPLR, vdupq_n_s64(0x4059000000000000uLL), *&self->_packetLossPercentage);
  [(VCRateControlAlgorithm *)self->_rateControlAlgorithm worstRecentRoundTripTime];
  LODWORD(v3) = self->_sumWorstRecentRTTInMillisecond;
  self->_sumWorstRecentRTTInMillisecond = (v3 + v4 * 1000.0);
  self->_sumWorstRecentBurstLoss += [(VCRateControlAlgorithm *)self->_rateControlAlgorithm worstRecentBurstLoss];
  targetBitrateTier = self->_targetBitrateTier;
  if (targetBitrateTier)
  {
    targetBitrate = self->_targetBitrate;
    v15 = targetBitrate >= targetBitrateTier;
    v8 = targetBitrate - targetBitrateTier;
    v7 = v8 != 0 && v15;
    targetBitrateTier = v8 / 0x3E8;
    if (!v7)
    {
      targetBitrateTier = 0;
    }
  }

  self->_sumExtraTargetBitrate += targetBitrateTier;
  if (([(VCRateControlAlgorithm *)self->_rateControlAlgorithm isSendBitrateLimited]& 1) == 0)
  {
    v9 = [(AVCStatisticsCollector *)self->_statisticsCollector sharedRemoteEstimatedBandwidth];
    v10 = self->_targetBitrate;
    v11 = v9 - v10;
    if (v10 >= v9)
    {
      v11 = v10 - v9;
    }

    v12 = 1256;
    if (v10 < v9)
    {
      v12 = 1260;
    }

    *(&self->super.isa + v12) += v11 / 0x3E8;
    actualBitrate = self->_actualBitrate;
    v14 = v10 - actualBitrate;
    v15 = actualBitrate >= v10;
    v16 = actualBitrate - v10;
    if (!v15)
    {
      v16 = v14;
    }

    v17 = 1264;
    if (!v15)
    {
      v17 = 1268;
    }

    *(&self->super.isa + v17) += v16 / 0x3E8;
  }

  ++self->_countPeriodicTaskUpdate;
}

- (void)reportContinuousTierMLRateControllerStatsAfterMLDisengagement
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (([(VCRateControlAlgorithm *)self->_rateControlAlgorithm isMLEngaged]& 1) == 0)
  {
    v5[0] = @"VCRCMLD";
    v3 = MEMORY[0x1E696AD98];
    [(VCRateControlAlgorithm *)self->_rateControlAlgorithm activeMLEngagedDuration];
    v6[0] = [v3 numberWithDouble:?];
    v5[1] = @"VCRCMLE";
    v6[1] = [MEMORY[0x1E696AD98] numberWithBool:{-[VCRateControlAlgorithm isMLEngaged](self->_rateControlAlgorithm, "isMLEngaged")}];
    v5[2] = @"VCRCMLRCTBR";
    v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCRateControlAlgorithm targetBitrateAtTimeOfDisengagement](self->_rateControlAlgorithm, "targetBitrateAtTimeOfDisengagement")}];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
    v4 = MEMORY[0x1E1289F20](&self->_reportingAgentWeak);
    reportingGenericEvent();
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

- (void)resetStatsForPeriodicTaskReport
{
  self->_isCongestedForReport = 0;
  *&self->_sumPLR = 0u;
  *&self->_sumOverUtilizedBandwidth = 0u;
  *&self->_sumWorstRecentRTTInMillisecond = 0u;
}

- (void)registerPeriodicTask
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)getRealTimeStatsForServerBasedTxOnly:(__CFDictionary *)a3
{
  countPeriodicTaskUpdate = self->_countPeriodicTaskUpdate;
  if (countPeriodicTaskUpdate)
  {
    v6 = self->_sumPLR / countPeriodicTaskUpdate;
  }

  else
  {
    v6 = 0.0;
  }

  CFDictionaryAddValue(a3, @"ULPLR", [MEMORY[0x1E696AD98] numberWithDouble:v6]);
  CFDictionaryAddValue(a3, @"RTTUL", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roundTripTimeMilliseconds]);
  CFDictionaryAddValue(a3, @"ULTBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"ULSBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actualBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"ULWMBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wifiTxMediaBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"ULWNBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wifiNonAVCTxMediaBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"ULBWE", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVCStatisticsCollector sharedEstimatedBandwidthUncapped](self->_statisticsCollector, "sharedEstimatedBandwidthUncapped") / 0x3E8uLL}]);
  CFDictionaryAddValue(a3, @"ULTBSNT", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalBytesSent]);
  CFDictionaryAddValue(a3, @"ULTPRC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalPacketsReceived]);
  CFDictionaryAddValue(a3, @"ULTPST", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalPacketsSent]);
  CFDictionaryAddValue(a3, @"ULLBA", [MEMORY[0x1E696AD98] numberWithInt:{-[VCRateControlAlgorithm isLossBasedAdaptationOn](self->_rateControlAlgorithm, "isLossBasedAdaptationOn")}]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[AVCBasebandCongestionDetector basebandNotificationType](self->_basebandCongestionDetector, "basebandNotificationType") == 4}];

  CFDictionaryAddValue(a3, @"BBNOTENW", v7);
}

- (void)getRealTimeStatsForServerBasedRxOnly:(__CFDictionary *)a3
{
  CFDictionaryAddValue(a3, @"DLTPRC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalPacketsReceived]);
  countPeriodicTaskUpdate = self->_countPeriodicTaskUpdate;
  if (countPeriodicTaskUpdate)
  {
    v6 = self->_sumPLR / countPeriodicTaskUpdate;
  }

  else
  {
    v6 = 0.0;
  }

  CFDictionaryAddValue(a3, @"DLPLR", [MEMORY[0x1E696AD98] numberWithDouble:v6]);
  CFDictionaryAddValue(a3, @"RTTDL", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roundTripTimeMilliseconds]);
  CFDictionaryAddValue(a3, @"DLTBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"DLRBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actualBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"DLBWE", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVCStatisticsCollector sharedEstimatedBandwidthUncapped](self->_statisticsCollector, "sharedEstimatedBandwidthUncapped") / 0x3E8uLL}]);
  CFDictionaryAddValue(a3, @"DLTBRCVD", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalBytesReceived]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCRateControlAlgorithm isLossBasedAdaptationOn](self->_rateControlAlgorithm, "isLossBasedAdaptationOn")}];

  CFDictionaryAddValue(a3, @"DLLBA", v7);
}

- (void)getRealTimeStatsForLowLatency:(__CFDictionary *)a3
{
  countPeriodicTaskUpdate = self->_countPeriodicTaskUpdate;
  if (countPeriodicTaskUpdate)
  {
    v6 = self->_sumPLR / countPeriodicTaskUpdate;
  }

  else
  {
    v6 = 0.0;
  }

  CFDictionaryAddValue(a3, @"ULPLR", [MEMORY[0x1E696AD98] numberWithDouble:v6]);
  CFDictionaryAddValue(a3, @"RTT", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_roundTripTimeMilliseconds]);
  CFDictionaryAddValue(a3, @"ULTBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetBitrate / 0x3E8uLL]);
  CFDictionaryAddValue(a3, @"ULBWE", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVCStatisticsCollector sharedRemoteEstimatedBandwidth](self->_statisticsCollector, "sharedRemoteEstimatedBandwidth") / 0x3E8uLL}]);
  CFDictionaryAddValue(a3, @"ULBPL", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_burstPacketLoss]);
  nwConnectionCongestionDetector = self->_nwConnectionCongestionDetector;
  if (nwConnectionCongestionDetector)
  {
    CFDictionaryAddValue(a3, @"NWAPD", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCNWConnectionCongestionDetector averagePacketDelayMs](nwConnectionCongestionDetector, "averagePacketDelayMs")}]);
    CFDictionaryAddValue(a3, @"MAWFPD", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCNWConnectionCongestionDetector maxAveragePacketDelayMs](self->_nwConnectionCongestionDetector, "maxAveragePacketDelayMs")}]);
    CFDictionaryAddValue(a3, @"NWATH", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCNWConnectionCongestionDetector averageThroughputBps](self->_nwConnectionCongestionDetector, "averageThroughputBps") / 0x3E8uLL}]);
    CFDictionaryAddValue(a3, @"NWNaC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCNWConnectionCongestionDetector packetDropCount](self->_nwConnectionCongestionDetector, "packetDropCount")}]);
    v8 = self->_nwConnectionCongestionDetector;

    [(VCNWConnectionCongestionDetector *)v8 setMaxAveragePacketDelayMs:0];
  }
}

- (void)getRealTimeStats:(__CFDictionary *)a3
{
  v5 = *MEMORY[0x1E695E480];
  countPeriodicTaskUpdate = self->_countPeriodicTaskUpdate;
  if (countPeriodicTaskUpdate)
  {
    countPeriodicTaskUpdate = (self->_sumPLR / countPeriodicTaskUpdate);
  }

  v7 = CFStringCreateWithFormat(v5, 0, @"%u", countPeriodicTaskUpdate);
  CFDictionaryAddValue(a3, @"PLR", v7);
  CFRelease(v7);
  v8 = self->_countPeriodicTaskUpdate;
  if (v8)
  {
    v8 = (self->_sumPLRVideo / v8);
  }

  v9 = CFStringCreateWithFormat(v5, 0, @"%u", v8);
  CFDictionaryAddValue(a3, @"VPLR", v9);
  CFRelease(v9);
  v10 = CFStringCreateWithFormat(v5, 0, @"%u", self->_roundTripTimeMilliseconds);
  CFDictionaryAddValue(a3, @"RTT", v10);
  CFRelease(v10);
  v11 = CFStringCreateWithFormat(v5, 0, @"%u", self->_targetBitrate / 0x3E8uLL);
  CFDictionaryAddValue(a3, @"TTxR", v11);
  CFRelease(v11);
  v12 = CFStringCreateWithFormat(v5, 0, @"%u", self->_actualBitrate / 0x3E8uLL);
  CFDictionaryAddValue(a3, @"ULSBR", v12);
  CFRelease(v12);
  v13 = CFStringCreateWithFormat(v5, 0, @"%u", [(AVCStatisticsCollector *)self->_statisticsCollector sharedEstimatedBandwidthUncapped]/ 0x3E8uLL);
  CFDictionaryAddValue(a3, @"DBE", v13);
  CFRelease(v13);
  v14 = CFStringCreateWithFormat(v5, 0, @"%u", [(AVCStatisticsCollector *)self->_statisticsCollector sharedRemoteEstimatedBandwidth]/ 0x3E8uLL);
  CFDictionaryAddValue(a3, @"UBE", v14);
  CFRelease(v14);
  v15 = self->_countPeriodicTaskUpdate;
  if (v15)
  {
    v16 = self->_sumWorstRecentRTTInMillisecond / v15;
  }

  else
  {
    v16 = 0;
  }

  CFDictionaryAddValue(a3, @"WRRTT", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16]);
  v17 = self->_countPeriodicTaskUpdate;
  if (v17)
  {
    v18 = self->_sumWorstRecentBurstLoss / v17;
  }

  else
  {
    v18 = 0;
  }

  CFDictionaryAddValue(a3, @"WRBPL", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18]);
  v19 = self->_countPeriodicTaskUpdate;
  if (v19)
  {
    v20 = self->_sumOverShootSendBitrate / v19;
  }

  else
  {
    v20 = 0;
  }

  CFDictionaryAddValue(a3, @"OVSBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20]);
  v21 = self->_countPeriodicTaskUpdate;
  if (v21)
  {
    v22 = self->_sumUnderShootSendBitrate / v21;
  }

  else
  {
    v22 = 0;
  }

  CFDictionaryAddValue(a3, @"UNSBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22]);
  v23 = self->_countPeriodicTaskUpdate;
  if (v23)
  {
    v24 = self->_sumOverUtilizedBandwidth / v23;
  }

  else
  {
    v24 = 0;
  }

  CFDictionaryAddValue(a3, @"OVBWE", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24]);
  v25 = self->_countPeriodicTaskUpdate;
  if (v25)
  {
    v26 = self->_sumUnderUtilizedBandwidth / v25;
  }

  else
  {
    v26 = 0;
  }

  CFDictionaryAddValue(a3, @"UNBWE", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26]);
  v27 = self->_countPeriodicTaskUpdate;
  if (v27)
  {
    v28 = self->_sumExtraTargetBitrate / v27;
  }

  else
  {
    v28 = 0;
  }

  CFDictionaryAddValue(a3, @"AExTR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v28]);
  v29 = [(AVCStatisticsCollector *)self->_statisticsCollector sharedEstimatedBandwidth];
  lastReportedBandwidthEstimation = self->_lastReportedBandwidthEstimation;
  if (lastReportedBandwidthEstimation && v29 && lastReportedBandwidthEstimation / v29 > 2.0 && lastReportedBandwidthEstimation - v29 >= 0x2EF)
  {
    ++self->_totalSuddenBandwidthDropCount;
  }

  self->_lastReportedBandwidthEstimation = v29;
  v31 = CFStringCreateWithFormat(v5, 0, @"%u", self->_totalSuddenBandwidthDropCount);
  CFDictionaryAddValue(a3, @"SBWD", v31);
  CFRelease(v31);
  if ([(VCRateControlAlgorithm *)self->_rateControlAlgorithm didMBLRampDown])
  {
    ++self->_totalMBLRampDownCount;
  }

  [(VCRateControlAlgorithm *)self->_rateControlAlgorithm setDidMBLRampDown:0];
  v32 = CFStringCreateWithFormat(v5, 0, @"%u", self->_totalMBLRampDownCount);
  CFDictionaryAddValue(a3, @"RDMBL", v32);
  CFRelease(v32);
  [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector basebandExpectedQueuingDelay];
  v34 = CFStringCreateWithFormat(v5, 0, @"%u", (v33 * 1000.0));
  CFDictionaryAddValue(a3, @"BbD", v34);
  CFRelease(v34);
  v35 = CFStringCreateWithFormat(v5, 0, @"%u", [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector basebandQueueDepth]);
  CFDictionaryAddValue(a3, @"BbQ", v35);
  CFRelease(v35);
  v36 = CFStringCreateWithFormat(v5, 0, @"%5.1f", [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector basebandAverageBitrate]/ 1000.0);
  CFDictionaryAddValue(a3, @"BbTx", v36);
  CFRelease(v36);
  v37 = CFStringCreateWithFormat(v5, 0, @"%5.1f", [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector basebandTxBitrate]/ 1000.0);
  CFDictionaryAddValue(a3, @"InTxR", v37);
  CFRelease(v37);
  v38 = [(VCRateControlMediaController *)self->_mediaController basebandFlushedVideoCount];
  v39 = [(VCRateControlMediaController *)self->_mediaController basebandFlushedAudioCount];
  v40 = CFStringCreateWithFormat(v5, 0, @"%u", v38 - self->_lastReportFlushedVideoPacketCount);
  CFDictionaryAddValue(a3, @"VPF", v40);
  CFRelease(v40);
  v41 = CFStringCreateWithFormat(v5, 0, @"%u", v39 - self->_lastReportFlushedAudioPacketCount);
  CFDictionaryAddValue(a3, @"APF", v41);
  CFRelease(v41);
  v42 = [(VCRateControlMediaController *)self->_mediaController basebandDropAudioCount];
  v43 = [(VCRateControlMediaController *)self->_mediaController basebandDropVideoCount];
  v44 = CFStringCreateWithFormat(v5, 0, @"%u", v42 - self->_lastReportBasebandDropAudioPacketCount);
  CFDictionaryAddValue(a3, @"APBBD", v44);
  CFRelease(v44);
  v45 = CFStringCreateWithFormat(v5, 0, @"%u", v43 - self->_lastReportBasebandDropVideoPacketCount);
  CFDictionaryAddValue(a3, @"VPBBD", v45);
  CFRelease(v45);
  v46 = CFStringCreateWithFormat(v5, 0, @"%u", [(AVCBasebandCongestionDetector *)self->_basebandCongestionDetector basebandNotificationType]== 4);
  CFDictionaryAddValue(a3, @"BBNOTENW", v46);
  CFRelease(v46);
  v47 = CFStringCreateWithFormat(v5, 0, @"%u", self->_remotePacketReceivedAudio);
  CFDictionaryAddValue(a3, @"APRR", v47);
  CFRelease(v47);
  v48 = CFStringCreateWithFormat(v5, 0, @"%u", self->_remoteECT1ReceiveCount);
  CFDictionaryAddValue(a3, @"ECT1Cnt", v48);
  CFRelease(v48);
  v49 = CFStringCreateWithFormat(v5, 0, @"%u", self->_remoteCEReceiveCount);
  CFDictionaryAddValue(a3, @"CECnt", v49);
  CFRelease(v49);
  v50 = CFStringCreateWithFormat(v5, 0, @"%u", self->_isCongestedForReport);
  CFDictionaryAddValue(a3, @"NWCng", v50);
  CFRelease(v50);
  if ([(VCRateControlAlgorithm *)self->_rateControlAlgorithm bytesInFlightState]!= -1)
  {
    v51 = CFStringCreateWithFormat(v5, 0, @"%u", [(VCRateControlAlgorithm *)self->_rateControlAlgorithm bytesInFlightState]== 0);
    CFDictionaryAddValue(a3, @"BIFCng", v51);
    CFRelease(v51);
  }

  v52 = CFStringCreateWithFormat(v5, 0, @"%u", [(VCRateControlAlgorithm *)self->_rateControlAlgorithm isLossBasedAdaptationOn]);
  CFDictionaryAddValue(a3, @"ULLBA", v52);
  CFRelease(v52);
  if (VCMediaControlInfo_IsLossStatsEnabled([(AVCStatisticsCollector *)self->_statisticsCollector mediaControlInfoFECFeedbackVersion]))
  {
    remotePacketReceivedVideo = 0;
  }

  else
  {
    remotePacketReceivedVideo = self->_remotePacketReceivedVideo;
  }

  v54 = CFStringCreateWithFormat(v5, 0, @"%u", remotePacketReceivedVideo);
  CFDictionaryAddValue(a3, @"VPRR", v54);
  CFRelease(v54);
  self->_lastReportFlushedVideoPacketCount = v38;
  self->_lastReportFlushedAudioPacketCount = v39;
  self->_lastReportBasebandDropAudioPacketCount = v42;
  self->_lastReportBasebandDropVideoPacketCount = v43;
}

- (void)setShareProfile:(id)a3
{
  v4 = [a3 rateSharingCount];
  rateControlAlgorithm = self->_rateControlAlgorithm;

  [(VCRateControlAlgorithm *)rateControlAlgorithm setRateSharingCount:v4];
}

- (void)configureTrafficType:(unsigned __int8)a3 inRateControlConfig:(AVCRateControlConfig *)a4
{
  if (a3)
  {
    a4->isTrafficBursty = 1;
  }

  if ((a3 & 2) != 0)
  {
    a4->isTrafficSpatial = 1;
  }

  mode = self->_configuration.mode;
  v5 = mode > 7;
  v6 = (1 << mode) & 0x86;
  if (!v5 && v6 != 0)
  {
    [(VCRateControlMediaController *)self->_mediaController setTrafficType:?];
  }
}

- (void)configureWithOperatingMode:(int)a3 isLocalCellular:(BOOL)a4 localCellTech:(int)a5 isRemoteCellular:(BOOL)a6 remoteCellTech:(int)a7 bitrateCapKbps:(unsigned int)a8 trafficType:(unsigned __int8)a9 featureFlags:(unsigned int)a10
{
  v11 = *&a7;
  v12 = a6;
  v13 = *&a5;
  v14 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v18 = 0u;
  LODWORD(v17) = [(AVCRateController *)self rateControlModeFromAVConferenceOperatingMode:*&a3];
  DWORD1(v17) = [(AVCRateController *)self radioAccessTechnologyFromAVConferenceCellTech:v13 isCellular:v14];
  DWORD2(v17) = [(AVCRateController *)self radioAccessTechnologyFromAVConferenceCellTech:v11 isCellular:v12];
  HIDWORD(v17) = 1000 * a8;
  LODWORD(v18) = 0;
  [(AVCRateController *)self configureTrafficType:a9 inRateControlConfig:&v17];
  DWORD2(v19) = [(AVCRateController *)self loadDefaultVCRCFeatureFlags:a10];
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  [(AVCRateController *)self configure:v16];
}

- (void)setTargetBitrateCap:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      targetBitrateCap = self->_targetBitrateCap;
      *v10 = 136316418;
      *&v10[4] = v5;
      *v11 = 2080;
      *&v11[2] = "[AVCRateController setTargetBitrateCap:]";
      *&v11[10] = 1024;
      *&v11[12] = 1244;
      *&v11[16] = 2048;
      *&v11[18] = self;
      *&v11[26] = 1024;
      *&v11[28] = targetBitrateCap;
      *&v11[32] = 1024;
      *&v11[34] = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) AVCRateController target bitrate cap %d -> %d", v10, 0x32u);
    }
  }

  self->_targetBitrateCap = a3;
  *v10 = *&self->_configuration.mode;
  remoteRadioAccessTechnology = self->_configuration.remoteRadioAccessTechnology;
  v9 = *&self->_configuration.algorithmConfig;
  *&v11[4] = *&self->_configuration.minBitrate;
  *&v11[20] = v9;
  *&v10[8] = remoteRadioAccessTechnology;
  *v11 = a3;
  [(AVCRateController *)self configure:v10];
}

- (void)setEstimatedBandwidthCap:(unsigned int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((self->_configuration.mode & 0xFFFFFFFE) == 4)
    {
      v5 = &dword_1DBD4569C;
      v6 = 6;
      do
      {
        v7 = *v5++;
        ++v6;
      }

      while (v7 < a3);
    }

    else
    {
      v6 = -1;
      v9 = vcRateControlTierBitrates;
      do
      {
        v10 = *v9++;
        ++v6;
      }

      while (v10 < a3);
    }

    if (v6 >= 31)
    {
      v11 = 31;
    }

    else
    {
      v11 = v6;
    }

    if (v6 >= 0x1E)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    v8 = vcRateControlTierBitrates[v12];
  }

  else
  {
    v8 = 0;
  }

  self->_estimatedBandwidthCap = v8;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      estimatedBandwidthCap = self->_estimatedBandwidthCap;
      v16 = 136316418;
      v17 = v13;
      v18 = 2080;
      v19 = "[AVCRateController setEstimatedBandwidthCap:]";
      v20 = 1024;
      v21 = 1271;
      v22 = 2048;
      v23 = self;
      v24 = 1024;
      v25 = a3;
      v26 = 1024;
      v27 = estimatedBandwidthCap;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) AVCRateController bandwidth estimation cap %d -> %d", &v16, 0x32u);
    }
  }

  [(AVCStatisticsCollector *)self->_statisticsCollector setEstimatedBandwidthCap:self->_estimatedBandwidthCap];
}

- (void)registerForRateSharing:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_registrationLock);
  if ((a3 & 0xFFFFFFFB) != 8 || self->_isRegisteredForRateSharing)
  {
  }

  else
  {
    sharingGroup = self->_sharingGroup;
    if (sharingGroup)
    {
      v6 = [(VCRateSharingGroup *)sharingGroup registerRateSharingClient:self forInterfaceType:0];
      self->_rateSharingClientID = v6;
      VCRateControlProbingSequenceController_SetRateSharingClientID(self->_probingSequenceController, v6);
      self->_isRegisteredForRateSharing = self->_rateSharingClientID != -1;
    }

    else
    {
      [AVCRateController registerForRateSharing:];
    }
  }

  os_unfair_lock_unlock(&self->_registrationLock);
}

- (void)deregisterForRateSharing
{
  os_unfair_lock_lock(&self->_registrationLock);
  if (self->_isRegisteredForRateSharing)
  {
    [(VCRateSharingGroup *)self->_sharingGroup deregisterRateSharingClient:self];
    self->_isRegisteredForRateSharing = 0;
  }

  os_unfair_lock_unlock(&self->_registrationLock);
}

- (unsigned)loadDefaultVCRCFeatureFlags:(unsigned int)a3
{
  if (VCDefaults_GetBoolValueForKey(@"disableBasebandAdaptation", 0))
  {
    v4 = 701;
  }

  else
  {
    v4 = 189;
  }

  v5 = v4 | a3;
  if (VCDefaults_GetBoolValueForKey(@"enableRampDownSuppression", 0))
  {
    v5 |= 0x400u;
  }

  if (VCDefaults_GetBoolValueForKey(@"enableBlockRampUpInBluetoothCoex", 0))
  {
    v5 |= 0x800u;
  }

  if (VCDefaults_GetBoolValueForKey(@"enableRampDownToActualSendBitrate", 0))
  {
    v5 |= 0x1000u;
  }

  if (VCDefaults_GetBoolValueForKey(@"enableRampDownUsingPLRThreshold", 1))
  {
    v5 |= 0x2000u;
  }

  if (VCDefaults_GetBoolValueForKey(@"enableNWConnectionMonitorCellular", 1))
  {
    return v5;
  }

  else
  {
    return v5 | 0x200;
  }
}

- (void)setBtNotificationMonitor
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_11;
    }
  }
}

void __45__AVCRateController_setBtNotificationMonitor__block_invoke(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  [objc_msgSend(*(a1 + 32) "strong")];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) strong];
      v7 = *a2;
      v8 = a2[1];
      v9 = 136316418;
      v10 = v4;
      v11 = 2080;
      v12 = "[AVCRateController setBtNotificationMonitor]_block_invoke";
      v13 = 1024;
      v14 = 1347;
      v15 = 2048;
      v16 = v6;
      v17 = 2080;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] Pause rate controller for 5 seconds, BT device %s state=%d while WLAN's on 2.4GHz", &v9, 0x36u);
    }
  }
}

- (unsigned)rateControlModeFromAVConferenceOperatingMode:(int)a3
{
  result = 2;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return 1;
    }

    if (a3 != 2)
    {
      return 0;
    }
  }

  else if (a3 != 7)
  {
    if (a3 != 6)
    {
      return a3 == 4;
    }

    if (self->_isUplink)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

- (unsigned)radioAccessTechnologyFromAVConferenceCellTech:(int)a3 isCellular:(BOOL)a4
{
  if (!a4)
  {
    return 1;
  }

  if ((a3 - 1) > 8)
  {
    return 0;
  }

  return dword_1DBD45790[a3 - 1];
}

- (void)createBasebandLogDumpFile
{
  if (self->_isRateControlDumpFileEnabled)
  {
    v17 = v3;
    v18 = v2;
    mode = self->_configuration.mode;
    v8 = "VCRateControl";
    if (mode == 5)
    {
      v8 = "VCRC-DL";
    }

    if (mode == 4)
    {
      v9 = "VCRC-UL";
    }

    else
    {
      v9 = v8;
    }

    v10 = VRLogfileAlloc(0, [(NSString *)self->_dumpID UTF8String:v17], v9, ".bbdump", "com.apple.VideoConference.VCRClogBB", 9);
    self->_logBasebandDump = v10;

    VRLogfilePrintSync(v10, "STime\t\tV-R-A-F-T\tQD\tQD2\tXmitB\tLTxTS\tIBR\tIBR_OLD\tABRS\tABRL\tBDS\tBDCD\tNBDCD\tND\tTR\tAF\n", v11, v12, v13, v14, v15, v16, v19);
  }
}

- (void)createNWConnectionLogDumpFile
{
  if (self->_isRateControlDumpFileEnabled)
  {
    v4 = VRLogfileAlloc(0, [(NSString *)self->_dumpID UTF8String], "VCRateControl", ".nwdump", "com.apple.VideoConference.VCRClogNW", 9);
    self->_logNWDump = v4;

    VRLogfilePrintSync(v4, "STime\taTime\tTxTS\tVersion\tDirection\tTech\tByteCount\tQSize1\tQSize2\tDelay\tThroughput\tTxRate\tRateTrend\tFrequentScans\n", v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)releaseAllLogDumpFiles
{
  [(AVCRateController *)self releaseLogDumpFile:&self->_logDump];
  [(AVCRateController *)self releaseLogDumpFile:&self->_logFeedbackDump];
  [(AVCRateController *)self releaseLogDumpFile:&self->_logBasebandDump];
  [(AVCRateController *)self releaseLogDumpFile:&self->_logNWDump];

  [(AVCRateController *)self releaseLogDumpFile:&self->_logBWEDump];
}

- (void)releaseLogDumpFile:(void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[6] = v4;
    v11[7] = v4;
    v11[4] = v4;
    v11[5] = v4;
    v11[2] = v4;
    v11[3] = v4;
    v11[0] = v4;
    v11[1] = v4;
    micro();
    VRLogfileGetTimestamp(v11, 0x80u);
    VRLogfilePrintSync(*a3, "%s\t%8.3f\tEndOfFile\n", v5, v6, v7, v8, v9, v10, v11);
    VRLogfileFree(a3);
    *a3 = 0;
  }
}

- (void)printRateControllerHealthPrint
{
  v60 = *MEMORY[0x1E69E9840];
  if ([(AVCRateController *)self isStarted])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mode = self->_configuration.mode;
        v6 = self->_targetBitrate / 0x3E8;
        v7 = self->_configuration.maxBitrate / 0x3E8;
        v8 = self->_actualBitrate / 0x3E8;
        v9 = [(AVCStatisticsCollector *)self->_statisticsCollector sharedRemoteEstimatedBandwidth]/ 0x3E8;
        v10 = [(AVCStatisticsCollector *)self->_statisticsCollector sharedEstimatedBandwidth]/ 0x3E8;
        roundTripTimeMilliseconds = self->_roundTripTimeMilliseconds;
        owrd = self->_owrd;
        v13 = self->_configuration.mode;
        v14 = "Uplink PLR=";
        if (v13 == 5)
        {
          v14 = "Downlink PLR=";
        }

        v15 = "APLR=";
        if (v13 != 1)
        {
          v15 = v14;
        }

        packetLossPercentage = self->_packetLossPercentage;
        if (v13 == 1)
        {
          v17 = "VPLR=";
        }

        else
        {
          v17 = "";
        }

        packetLossPercentageVideo = self->_packetLossPercentageVideo;
        remoteECT1ReceiveCount = self->_remoteECT1ReceiveCount;
        remoteCEReceiveCount = self->_remoteCEReceiveCount;
        targetBitrateTier = self->_targetBitrateTier;
        if (targetBitrateTier)
        {
          targetBitrateTier = self->_targetBitrate - targetBitrateTier;
        }

        v22 = 136319746;
        v23 = v3;
        v24 = 2080;
        v25 = "[AVCRateController printRateControllerHealthPrint]";
        v26 = 1024;
        v27 = 3525;
        v28 = 2048;
        v29 = self;
        v30 = 1024;
        v31 = mode;
        v32 = 1024;
        v33 = v6;
        v34 = 1024;
        v35 = v7;
        v36 = 1024;
        v37 = v8;
        v38 = 1024;
        v39 = v9;
        v40 = 1024;
        v41 = v10;
        v42 = 1024;
        v43 = roundTripTimeMilliseconds;
        v44 = 1024;
        v45 = owrd;
        v46 = 2080;
        v47 = v15;
        v48 = 2048;
        v49 = packetLossPercentage;
        v50 = 2080;
        v51 = v17;
        v52 = 2048;
        v53 = packetLossPercentageVideo;
        v54 = 1024;
        v55 = remoteECT1ReceiveCount;
        v56 = 1024;
        v57 = remoteCEReceiveCount;
        v58 = 1024;
        v59 = targetBitrateTier;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d @=@ Health: VCRC (%p) mode=%d, targetBitrate=%u kbps, bitrateCap=%u kbps, actualBitrate=%u kbps, RemoteBWE=%u kbps, LocalBWE=%u kbps, RTT=%u ms, OWRD=%u ms, %s%.2f%%, %s%.2f%%, ect1Count=%u, ceCount=%u, extraTargetBitrate=%u", &v22, 0x90u);
      }
    }
  }
}

- (AVCRateControlConfig)configuration
{
  v3 = *&self[1].featureFlags;
  *&retstr->mode = *&self[1].isTrafficBursty;
  *&retstr->minBitrate = v3;
  *&retstr->algorithmConfig = *&self[2].remoteRadioAccessTechnology;
  return self;
}

void ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_4(uint64_t a1, int *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*a2 == 14)
  {
    _AVCRateController_DoRateControl(v3, a2);

    _AVCRateController_NotifyTargetBitrateChange(v3);
  }

  else if (objc_opt_class() == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_4_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = *a2;
        v8 = 136316418;
        v9 = v5;
        v10 = 2080;
        v11 = "_AVCRateController_DoRateControlWithLocalRCEvent";
        v12 = 1024;
        v13 = 3053;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = v3;
        v18 = 1024;
        v19 = v7;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d %@(%p) Wrong statistics type=%d", &v8, 0x36u);
      }
    }
  }
}

void ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 10)
  {
    if (*a2 == 16)
    {
      v3 = *(a1 + 32);

      _AVCRateController_DoRateControl(v3, a2);
    }

    else
    {
      ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10_cold_2();
    }
  }

  else
  {
    ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10_cold_1(a2, v2);
  }
}

void ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = [*(v2 + 1920) targetBitrate];
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = 100 * v4 / v5;
    }

    else
    {
      v6 = -1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;

    CFRelease(v3);
  }
}

void ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke_2(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = [*(v2 + 1920) targetBitrate];
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = 100 * v4 / v5;
    }

    else
    {
      v6 = -1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;

    CFRelease(v3);
  }
}

void ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke_3(uint64_t a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = 100 * [*(v2 + 1920) targetBitrate] / *(a1 + 64);
    v4 = *(a1 + 68);
    v5 = *(a1 + 40);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(v5 + 8) + 24);
    v9[0] = @"CongestionIndex";
    v10[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    v9[1] = @"BWETTxRRatio5";
    v10[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v9[2] = @"BWETTxRRatio15";
    v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    v9[3] = @"BWETTxRRatio30";
    v10[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
    reportingGenericEvent();
    CFRelease(v3);
  }
}

- (void)sharingGroupFromToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)sharingGroupFromToken:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)start
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)registerForRateSharing:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136316162;
      v6 = v3;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      v7 = 2048;
      v8 = a2;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Add/Remove=%d attempted in wrong rate controller=%p", &v5, 0x2Cu);
    }
  }
}

void ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

@end