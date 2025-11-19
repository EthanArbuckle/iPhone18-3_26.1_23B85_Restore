@interface VCSwitchManager
- (id)description;
- (void)initializeLocalSwitches;
- (void)negotiateSwitchesForIsCaller:(BOOL)a3;
- (void)setRemoteSwitches:(unsigned int)a3 isCaller:(BOOL)a4;
- (void)setupLocalABTestSwitches;
- (void)setupLocalAudioTestGroupSwitches;
- (void)setupLocalDuplicationTestGroupSwitches;
- (void)setupLocalNetworkTestGroupSwitches;
- (void)setupLocalOnOffSwitches;
- (void)setupLocalRateControlTestGroupSwitches;
- (void)setupLocalSwitchesIndividually;
- (void)setupLocalVideoTestGroupSwitches;
- (void)updateDuplicationEnhancementSwitches;
@end

@implementation VCSwitchManager

- (void)initializeLocalSwitches
{
  v16 = *MEMORY[0x1E69E9840];
  if (VCDefaults_GetBoolValueForKey(@"enableDiscreteSwitchSettingsForTesting", 0) || +[GKSConnectivitySettings getAbTestingState]== 1)
  {
    [(VCSwitchManager *)self setupLocalSwitchesIndividually];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[VCSwitchManager initializeLocalSwitches]";
        v12 = 1024;
        v13 = 51;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: Setting individual local switches for the purpose of QA testing", &v8, 0x1Cu);
      }
    }
  }

  else
  {
    self->_localSwitches = +[GKSConnectivitySettings getAbTestMasterLocalSwitches];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        localSwitches = self->_localSwitches;
        v8 = 136315906;
        v9 = v5;
        v10 = 2080;
        v11 = "[VCSwitchManager initializeLocalSwitches]";
        v12 = 1024;
        v13 = 65;
        v14 = 1024;
        v15 = localSwitches;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: Non-seed build - using master local switch: %08X", &v8, 0x22u);
      }
    }

    [(VCSwitchManager *)self updateDuplicationEnhancementSwitches];
  }
}

- (void)setupLocalOnOffSwitches
{
  [(VCSwitchManager *)self setupLocalOnOffSwitchesFromMasterSwitch];
  v3 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:32];
  self->_localSwitches |= 32 * (v3 <= v4);
  v5 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x20000];
  self->_localSwitches |= (v5 <= v6) << 17;
  v7 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x40000];
  self->_localSwitches |= (v7 <= v8) << 18;
  v9 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x80000];
  self->_localSwitches |= (v9 <= v10) << 19;
  v11 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x100000];
  self->_localSwitches |= (v11 <= v12) << 20;
  v13 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x200000];
  self->_localSwitches |= (v13 <= v14) << 21;
  v15 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x800000];
  self->_localSwitches |= (v15 <= v16) << 23;
  v17 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x1000000];
  self->_localSwitches |= (v17 <= v18) << 24;
  v19 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x2000000];
  self->_localSwitches |= (v19 <= v20) << 25;
  v21 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x4000000];
  self->_localSwitches |= (v21 <= v22) << 26;
  v23 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x8000000];
  self->_localSwitches |= (v23 <= v24) << 27;
  v25 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x10000000];
  self->_localSwitches |= (v25 <= v26) << 28;
  v27 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x20000000];
  self->_localSwitches |= (v27 <= v28) << 29;
  v29 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x40000000];
  self->_localSwitches |= (v29 <= v30) << 30;
}

- (void)setupLocalABTestSwitches
{
  [(VCSwitchManager *)self setupLocalAudioTestGroupSwitches];
  [(VCSwitchManager *)self setupLocalVideoTestGroupSwitches];
  [(VCSwitchManager *)self setupLocalNetworkTestGroupSwitches];
  [(VCSwitchManager *)self setupLocalRateControlTestGroupSwitches];

  [(VCSwitchManager *)self setupLocalDuplicationTestGroupSwitches];
}

- (void)setupLocalSwitchesIndividually
{
  self->_localSwitches = 0;
  v3 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:1];
  self->_localSwitches |= v3 <= v4;
  v5 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:2];
  self->_localSwitches |= 2 * (v5 <= v6);
  v7 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:4];
  self->_localSwitches |= 4 * (v7 <= v8);
  v9 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:8];
  self->_localSwitches |= 8 * (v9 <= v10);
  v11 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:16];
  self->_localSwitches |= 16 * (v11 <= v12);
  v13 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:32];
  self->_localSwitches |= 32 * (v13 <= v14);
  v15 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:64];
  self->_localSwitches |= (v15 <= v16) << 6;
  v17 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:128];
  self->_localSwitches |= (v17 <= v18) << 7;
  v19 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:256];
  self->_localSwitches |= (v19 <= v20) << 8;
  v21 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:512];
  self->_localSwitches |= (v21 <= v22) << 9;
  v23 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:1024];
  self->_localSwitches |= (v23 <= v24) << 10;
  v25 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:2048];
  self->_localSwitches |= (v25 <= v26) << 11;
  v27 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:4096];
  self->_localSwitches |= (v27 <= v28) << 12;
  v29 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x2000];
  self->_localSwitches |= (v29 <= v30) << 13;
  v31 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x4000];
  self->_localSwitches |= (v31 <= v32) << 14;
  v33 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x8000];
  self->_localSwitches |= (v33 <= v34) << 15;
  v35 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x10000];
  self->_localSwitches |= (v35 <= v36) << 16;
  v37 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x20000];
  self->_localSwitches |= (v37 <= v38) << 17;
  v39 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x40000];
  self->_localSwitches |= (v39 <= v40) << 18;
  v41 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x80000];
  self->_localSwitches |= (v41 <= v42) << 19;
  v43 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x100000];
  self->_localSwitches |= (v43 <= v44) << 20;
  v45 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x200000];
  self->_localSwitches |= (v45 <= v46) << 21;
  v47 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x400000];
  self->_localSwitches |= (v47 <= v48) << 22;
  v49 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x800000];
  self->_localSwitches |= (v49 <= v50) << 23;
  v51 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x1000000];
  self->_localSwitches |= (v51 <= v52) << 24;
  v53 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x2000000];
  self->_localSwitches |= (v53 <= v54) << 25;
  v55 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x4000000];
  self->_localSwitches |= (v55 <= v56) << 26;
  v57 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x8000000];
  self->_localSwitches |= (v57 <= v58) << 27;
  v59 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x10000000];
  self->_localSwitches |= (v59 <= v60) << 28;
  v61 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x20000000];
  self->_localSwitches |= (v61 <= v62) << 29;
  v63 = arc4random() / 4294967300.0;
  [GKSConnectivitySettings getThresholdForSwitch:0x40000000];
  self->_localSwitches |= (v63 <= v64) << 30;
}

- (void)setupLocalAudioTestGroupSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getTestGroupPermutations:](GKSConnectivitySettings getTestGroupPermutations:{0), "componentsSeparatedByString:", @", "}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))), "unsignedIntValue"}];
    self->_localSwitches |= (2 * (v4 & 1)) | ((v4 & 2) << 13) | ((v4 & 2) << 14);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSwitchManager setupLocalAudioTestGroupSwitches]";
        v11 = 1024;
        v12 = 163;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: selectedAudioTestGroupPermutation: %08X", &v7, 0x22u);
      }
    }
  }
}

- (void)setupLocalVideoTestGroupSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getTestGroupPermutations:](GKSConnectivitySettings getTestGroupPermutations:{1), "componentsSeparatedByString:", @", "}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))), "unsignedIntValue"}];
    self->_localSwitches |= (4 * (v4 & 7)) | (v4 << 6) & 0x200;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSwitchManager setupLocalVideoTestGroupSwitches]";
        v11 = 1024;
        v12 = 179;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: selectedVideoTestGroupPermutation: %08X", &v7, 0x22u);
      }
    }
  }
}

- (void)setupLocalNetworkTestGroupSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getTestGroupPermutations:](GKSConnectivitySettings getTestGroupPermutations:{2), "componentsSeparatedByString:", @", "}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))), "unsignedIntValue"}];
    self->_localSwitches |= v4 & 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSwitchManager setupLocalNetworkTestGroupSwitches]";
        v11 = 1024;
        v12 = 192;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: selectedNetworkTestGroupPermutation: %08X", &v7, 0x22u);
      }
    }
  }
}

- (void)setupLocalRateControlTestGroupSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getTestGroupPermutations:](GKSConnectivitySettings getTestGroupPermutations:{3), "componentsSeparatedByString:", @", "}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))), "unsignedIntValue"}];
    self->_localSwitches |= (v4 & 1) << 10;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSwitchManager setupLocalRateControlTestGroupSwitches]";
        v11 = 1024;
        v12 = 205;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: selectedRateControlTestGroupPermutation: %08X", &v7, 0x22u);
      }
    }
  }
}

- (void)setupLocalDuplicationTestGroupSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getTestGroupPermutations:](GKSConnectivitySettings getTestGroupPermutations:{4), "componentsSeparatedByString:", @", "}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v3, "count"))), "unsignedIntValue"}];
    self->_localSwitches |= ((v4 & 7) << 6) | (v4 << 13) & 0x10000;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSwitchManager setupLocalDuplicationTestGroupSwitches]";
        v11 = 1024;
        v12 = 221;
        v13 = 1024;
        v14 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: selectedDuplicationTestGroupPermutation: %08X", &v7, 0x22u);
      }
    }
  }
}

- (void)updateDuplicationEnhancementSwitches
{
  v15 = *MEMORY[0x1E69E9840];
  localSwitches = self->_localSwitches;
  if ((localSwitches & 0x2000000) == 0)
  {
    self->_localSwitches = localSwitches & 0xFDFEFF7F;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_localSwitches;
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCSwitchManager updateDuplicationEnhancementSwitches]";
      v11 = 1024;
      v12 = 236;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SwitchManager: updateDuplicationEnhancementSwitches updates local switches to: %08X", &v7, 0x22u);
    }
  }
}

- (void)negotiateSwitchesForIsCaller:(BOOL)a3
{
  localSwitches = self->_localSwitches;
  if (!a3)
  {
    localSwitches = self->_remoteSwitches;
  }

  self->_negotiatedSwitches = [(VCSwitchManager *)self applyNegotiationRulesUsingLocalSwitches:self->_localSwitches negotiatedSwitches:localSwitches];
}

- (void)setRemoteSwitches:(unsigned int)a3 isCaller:(BOOL)a4
{
  v4 = a4;
  localSwitches = *&a3;
  if (v4)
  {
    localSwitches = self->_localSwitches;
  }

  self->_remoteSwitches = [(VCSwitchManager *)self applyNegotiationRulesUsingLocalSwitches:*&a3 negotiatedSwitches:localSwitches];
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  negotiatedSwitches = self->_negotiatedSwitches;
  return [v7 stringWithFormat:@"%@[%p] LocalSwitches[%08X] RemoteSwitches[%08X] NegotiatedSwitches[%08X] preferRelayOverP2P[%d] alwaysOnAudioRedundancy[%d] highFec[%d] lowFpsVideo[%d] vplrFec[%d] fastMediaDuplication[%d] iRATRtp[%d] preWarmCell[%d] duplicateImportantPkts[%d] allowBurstyLossRampDown[%d] hevcWifiTiers[%d] viewpointCorrection[%d] heifHevcLivePhotos[%d] wifiLowTierRedundancy[%d] cellularLowTierRedundancy[%d] iRATMetrics[%d] fecHeaderV1[%d] updatedAFRCHeader[%d] secureMessaging[%d] disableSIP[%d] wifiAssistDuplication[%d] wifiAssistBudgetStatus[%d] wifiAssistStatusBar[%d] lowNetworkMode[%d] duplicationEnhancement[%d] videoJB[%d] iRATDuplication[%d], wrmRSSIThreshold[%d] mediaDrivenDuplication[%d] UseVideoJitterForVideoPlayoutEnabled[%d] UseRTTForFIRThrottlingEnabled[%d]", v4, self, self->_localSwitches, self->_remoteSwitches, negotiatedSwitches, negotiatedSwitches & 1, (negotiatedSwitches >> 1) & 1, (negotiatedSwitches >> 2) & 1, (negotiatedSwitches >> 3) & 1, (negotiatedSwitches >> 4) & 1, (negotiatedSwitches >> 6) & 1, (negotiatedSwitches >> 7) & 1, (negotiatedSwitches >> 8) & 1, (negotiatedSwitches >> 9) & 1, (negotiatedSwitches >> 10) & 1, (negotiatedSwitches >> 11) & 1, (negotiatedSwitches >> 12) & 1, (negotiatedSwitches >> 13) & 1, (negotiatedSwitches >> 14) & 1, (negotiatedSwitches >> 15) & 1, HIWORD(negotiatedSwitches) & 1, (negotiatedSwitches >> 17) & 1, (negotiatedSwitches >> 18) & 1, (negotiatedSwitches >> 19) & 1, (negotiatedSwitches >> 20) & 1, (negotiatedSwitches >> 21) & 1, (negotiatedSwitches >> 22) & 1, (negotiatedSwitches >> 23) & 1, HIBYTE(negotiatedSwitches) & 1, (negotiatedSwitches >> 25) & 1, (negotiatedSwitches >> 26) & 1, (negotiatedSwitches >> 27) & 1, (negotiatedSwitches >> 28) & 1, (negotiatedSwitches >> 29) & 1, (negotiatedSwitches >> 5) & 1, (negotiatedSwitches >> 30) & 1];
}

@end