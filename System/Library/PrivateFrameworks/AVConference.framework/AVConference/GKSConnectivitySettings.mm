@interface GKSConnectivitySettings
+ (BOOL)isFeatureDisabledByExceptionKey:(id)a3;
+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 exceptionKey:(id)a4 userDefaultKey:(__CFString *)a5 featureFlagDomain:(char *)a6 featureFlagName:(char *)a7;
+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 featureFlagDomain:(char *)a5 featureFlagName:(char *)a6;
+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 featureFlagDomain:(char *)a5 featureFlagName:(char *)a6 normalizedRandom:(double)a7;
+ (BOOL)supportiRATRecommendation;
+ (BOOL)supportsEVSCodec;
+ (BOOL)supportsHEVCEncoding;
+ (BOOL)supportsRedAudio;
+ (double)getAdaptiveLearningA;
+ (double)getAdaptiveLearningB;
+ (double)getAdjustmentFactorA;
+ (double)getAdjustmentFactorB;
+ (double)getAdjustmentFactorC;
+ (double)getLongTermValueWeightA;
+ (double)getLongTermValueWeightB;
+ (double)getLongTermValueWeightC;
+ (double)getNoRemoteDuplicationThresholdFast;
+ (double)getRemoteMediaStallTimeout;
+ (double)getShortTermValueWeightA;
+ (double)getShortTermValueWeightB;
+ (double)getShortTermValueWeightC;
+ (double)getThresholdForSwitch:(unsigned int)a3;
+ (id)getAddressForService:(id)a3;
+ (id)getAllSettings;
+ (id)getClientOption:(id)a3;
+ (id)getStorebagValueForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 defaultValue:(id)a5 isDoubleType:(BOOL)a6;
+ (id)getStorebagValueStorebagKey:(id)a3 defaultValue:(id)a4;
+ (id)getTestGroupPermutations:(unsigned __int8)a3;
+ (id)getVCRCSeverBagConfigWithKey:(id)a3;
+ (int)getAdaptiveLearningState;
+ (int)getDecryptionMKMRecoveryInterval;
+ (int)getDecryptionTimeoutInterval;
+ (int)getKeepAliveTimeoutFromCarrierBundle;
+ (int)getLongTermHistoryLength;
+ (int)getNATTypeFromCarrierBundle;
+ (int)getNewSessionJoiningInterval;
+ (int)getRateControllerType;
+ (int)getShortTermHistoryLength;
+ (int)getWRMRSSIThresholdValue:(int)a3;
+ (tagIPPORT)getCachedIPPort;
+ (tagIPPORT)getIPPortForService:(id)a3;
+ (unsigned)getAbTestMasterLocalSwitches;
+ (unsigned)getAbTestingState;
+ (void)clearAllSettingsWithRefreshIntervalInSeconds:(int)a3;
+ (void)getAdaptiveLearningState;
+ (void)setAddress:(id)a3 forService:(id)a4;
+ (void)setClientOptions:(id)a3;
+ (void)setServerAddresses:(id)a3;
- (void)dealloc;
@end

@implementation GKSConnectivitySettings

+ (void)setAddress:(id)a3 forService:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings setAddress:forService:]";
      v13 = 1024;
      v14 = 477;
      v15 = 2112;
      v16 = a4;
      v17 = 2112;
      v18 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings: %@ => %@", &v9, 0x30u);
    }
  }

  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v8 = g_Settings;
  if (!g_Settings)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    g_Settings = v8;
  }

  [v8 setObject:a3 forKeyedSubscript:a4];
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

+ (void)setServerAddresses:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v4;
      v13 = 2080;
      v14 = "+[GKSConnectivitySettings setServerAddresses:]";
      v15 = 1024;
      v16 = 500;
      v17 = 2112;
      v18 = a3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings: set server: %@", &v11, 0x26u);
    }
  }

  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  if (!g_Settings)
  {
    g_Settings = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [CFPreferencesCopyAppValue(@"specialAllocForHeapInspection" @"com.apple.VideoConference")];
    g_bSpecialAllocForHeapInspection = v6;
    if (v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v7;
          v13 = 2080;
          v14 = "+[GKSConnectivitySettings setServerAddresses:]";
          v15 = 1024;
          v16 = 508;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  **** GKSConnectivitySettings:setServerAddresses: Special Allocation For Heap Inspection has been enabled.", &v11, 0x1Cu);
        }
      }
    }
  }

  v9 = g_cacheClearTime;
  if (*&g_cacheClearTime == 0.0)
  {
    *&v9 = micro();
    g_cacheClearTime = v9;
  }

  if (g_bSpecialAllocForHeapInspection)
  {
    v10 = [a3 copyGKSDeep];
    [g_Settings addEntriesFromDictionary:v10];
  }

  else
  {
    [g_Settings addEntriesFromDictionary:{a3, *&v9}];
  }

  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

+ (void)setClientOptions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "+[GKSConnectivitySettings setClientOptions:]";
      v11 = 1024;
      v12 = 537;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings: set client: %@", &v7, 0x26u);
    }
  }

  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v6 = g_Settings;
  if (!g_Settings)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    g_Settings = v6;
  }

  [v6 addEntriesFromDictionary:a3];
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

+ (id)getClientOption:(id)a3
{
  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v4 = [g_Settings objectForKeyedSubscript:a3];
  if (!v4)
  {
    if ([a3 compare:@"staticnattypefromcarrierbundle"])
    {
      if ([a3 compare:@"keepalivetimeoutfromcarrierbundle"])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v5 = MEMORY[0x1E696AD98];
      v6 = +[GKSConnectivitySettings getKeepAliveTimeoutFromCarrierBundle];
    }

    else
    {
      v5 = MEMORY[0x1E696AD98];
      v6 = +[GKSConnectivitySettings getNATTypeFromCarrierBundle];
    }

    v4 = [v5 numberWithInt:v6];
    [g_Settings setObject:v4 forKeyedSubscript:a3];
  }

LABEL_8:
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  return v4;
}

+ (id)getAddressForService:(id)a3
{
  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v4 = [g_Settings objectForKeyedSubscript:a3];
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  return v4;
}

+ (tagIPPORT)getCachedIPPort
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
  if (!v2)
  {
    return v2;
  }

  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  if (g_cachedCommNATServer)
  {
    if (*g_cachedCommNATServer)
    {
      if (*(g_cachedCommNATServer + 20) != *MEMORY[0x1E69E99B8] || *(g_cachedCommNATServer + 28) != *(MEMORY[0x1E69E99B8] + 8))
      {
        goto LABEL_5;
      }
    }

    else if (*(g_cachedCommNATServer + 20))
    {
LABEL_5:
      v3 = *g_cachedCommNATServer;
      v4 = *(g_cachedCommNATServer + 16);
      *&v2->IP.abIPv6[12] = *(g_cachedCommNATServer + 32);
      *&v2->iFlags = v3;
      *&v2->szIfName[12] = v4;
      pthread_mutex_unlock(&g_xGKSConnectivitySettings);
LABEL_15:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          dwIPv4 = v2->IP.dwIPv4;
          wPort = v2->wPort;
          v16 = 136316162;
          v17 = v9;
          v18 = 2080;
          v19 = "+[GKSConnectivitySettings getCachedIPPort]";
          v20 = 1024;
          v21 = 610;
          v22 = 1024;
          v23 = dwIPv4;
          v24 = 1024;
          v25 = wPort;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getCachedIPPort: %08X:%u", &v16, 0x28u);
        }
      }

      return v2;
    }
  }

  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_6);
  free(v2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = v7;
      v18 = 2080;
      v19 = "+[GKSConnectivitySettings getCachedIPPort]";
      v20 = 1024;
      v21 = 601;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings: prepare to enter getIPPortForService", &v16, 0x1Cu);
    }
  }

  v2 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main0"];
  if (v2)
  {
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = v13;
      v18 = 2080;
      v19 = "+[GKSConnectivitySettings getCachedIPPort]";
      v20 = 1024;
      v21 = 612;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getCachedIPPort failed", &v16, 0x1Cu);
    }
  }

  return 0;
}

void __42__GKSConnectivitySettings_getCachedIPPort__block_invoke()
{
  v0 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main0-name"];
  if (v0)
  {

    free(v0);
  }
}

+ (tagIPPORT)getIPPortForService:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_43;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    if (a3)
    {
      v22 = [objc_msgSend(a3 "description")];
    }

    else
    {
      v22 = "<nil>";
    }

    *v36 = 136315906;
    *&v36[4] = v20;
    *&v36[12] = 2080;
    *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
    *&v36[22] = 1024;
    LODWORD(v37) = 623;
    WORD2(v37) = 2080;
    *(&v37 + 6) = v22;
    v32 = " [%s] %s:%d GKSConnSettings getIPPortForService: %s == 00";
LABEL_42:
    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v32, v36, 0x26u);
    goto LABEL_43;
  }

  v6 = v5;
  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v7 = [g_Settings objectForKeyedSubscript:a3];
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  if (!v7)
  {
    free(v6);
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_43;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    if (a3)
    {
      v24 = [objc_msgSend(a3 "description")];
    }

    else
    {
      v24 = "<nil>";
    }

    *v36 = 136315906;
    *&v36[4] = v23;
    *&v36[12] = 2080;
    *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
    *&v36[22] = 1024;
    LODWORD(v37) = 633;
    WORD2(v37) = 2080;
    *(&v37 + 6) = v24;
    v32 = " [%s] %s:%d GKSConnSettings getIPPortForService: %s == nil";
    goto LABEL_42;
  }

  v8 = strdup([v7 UTF8String]);

  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 136315906;
        *&v36[4] = v9;
        *&v36[12] = 2080;
        *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
        *&v36[22] = 1024;
        LODWORD(v37) = 640;
        WORD2(v37) = 2080;
        *(&v37 + 6) = v8;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getIPPortForService: GKS setting for get SNATMAP IP: %s", v36, 0x26u);
      }
    }

    v11 = strchr(v8, 58);
    if (!v11)
    {
      goto LABEL_30;
    }

    *v11 = 0;
    v12 = v11 + 1;
    atoi(v11 + 1);
    if (MakeIPPORTWithHostnameIPv4Only())
    {
      if ([a3 isEqualToString:@"gk-commnat-main0-name"])
      {
        pthread_mutex_lock(&g_xGKSConnectivitySettings);
        v13 = g_cachedCommNATServer;
        if (g_cachedCommNATServer || (v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL), (g_cachedCommNATServer = v13) != 0))
        {
          v14 = *&v6->iFlags;
          v15 = *&v6->szIfName[12];
          v13[4] = *&v6->IP.abIPv6[12];
          *v13 = v14;
          *(v13 + 1) = v15;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              dwIPv4 = v6->IP.dwIPv4;
              wPort = v6->wPort;
              *v36 = 136316162;
              *&v36[4] = v16;
              *&v36[12] = 2080;
              *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
              *&v36[22] = 1024;
              LODWORD(v37) = 667;
              WORD2(v37) = 1024;
              *(&v37 + 6) = dwIPv4;
              WORD5(v37) = 1024;
              HIDWORD(v37) = wPort;
              _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getIPPortForService: cached %08X:%u", v36, 0x28u);
            }
          }
        }

        pthread_mutex_unlock(&g_xGKSConnectivitySettings);
      }

      goto LABEL_30;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 136315906;
        *&v36[4] = v25;
        *&v36[12] = 2080;
        *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
        *&v36[22] = 1024;
        LODWORD(v37) = 645;
        WORD2(v37) = 2080;
        *(&v37 + 6) = v8;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getIPPortForService: %s failed to resolve", v36, 0x26u);
      }
    }

    v27 = inet_addr(v8);
    v28 = strtol(v12, 0, 10);
    if (v27 != -1 && v28)
    {
      v6->IP.dwIPv4 = bswap32(v27);
      v6->wPort = v28;
LABEL_30:
      free(v8);
      goto LABEL_31;
    }

    free(v6);
    free(v8);
LABEL_43:
    v6 = 0;
    goto LABEL_44;
  }

LABEL_31:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v31 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v31 = "<nil>";
      }

      v33 = v6->IP.dwIPv4;
      v34 = v6->wPort;
      *v36 = 136316418;
      *&v36[4] = v29;
      *&v36[12] = 2080;
      *&v36[14] = "+[GKSConnectivitySettings getIPPortForService:]";
      *&v36[22] = 1024;
      LODWORD(v37) = 674;
      WORD2(v37) = 2080;
      *(&v37 + 6) = v31;
      HIWORD(v37) = 1024;
      v38 = v33;
      v39 = 1024;
      v40 = v34;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKSConnSettings getIPPortForService: %s == %08X:%u", v36, 0x32u);
    }
  }

LABEL_44:
  [v4 drain];
  return v6;
}

+ (id)getAllSettings
{
  pthread_mutex_lock(&g_xGKSConnectivitySettings);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:g_Settings];
  pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  return v2;
}

+ (void)clearAllSettingsWithRefreshIntervalInSeconds:(int)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = micro();
  v5 = a3;
  v6 = *&g_cacheClearTime + a3;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4 <= v6)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316418;
        v13 = v10;
        v14 = 2080;
        v15 = "+[GKSConnectivitySettings clearAllSettingsWithRefreshIntervalInSeconds:]";
        v16 = 1024;
        v17 = 696;
        v18 = 1024;
        v19 = (*&g_cacheClearTime + v5 - v4);
        v20 = 2048;
        v21 = g_cacheClearTime;
        v22 = 2048;
        v23 = v4;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not yet to clear the locally cached serverbag settings. Still %d seconds left [cacheClearTime: %f, now %f]", &v12, 0x36u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316418;
        v13 = v8;
        v14 = 2080;
        v15 = "+[GKSConnectivitySettings clearAllSettingsWithRefreshIntervalInSeconds:]";
        v16 = 1024;
        v17 = 690;
        v18 = 1024;
        v19 = a3;
        v20 = 2048;
        v21 = g_cacheClearTime;
        v22 = 2048;
        v23 = v4;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clear the locally cached serverbag settings with interval %d seconds [cacheClearTime: %f, now %f]", &v12, 0x36u);
      }
    }

    pthread_mutex_lock(&g_xGKSConnectivitySettings);
    [g_Settings removeAllObjects];
    g_cacheClearTime = *&v4;
    pthread_mutex_unlock(&g_xGKSConnectivitySettings);
  }
}

+ (int)getNATTypeFromCarrierBundle
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (VCCarrierBundle_QueryCarrierBundleValueForKey(@"StaticNATType", &v8))
  {
    v2 = [v8 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v10 = v3;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getNATTypeFromCarrierBundle]";
        v13 = 1024;
        v14 = 712;
        v15 = 1024;
        v16 = v2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Read key 'StaticNATType' from carrier bundle: 0x%08x", buf, 0x22u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getNATTypeFromCarrierBundle]";
        v13 = 1024;
        v14 = 714;
        v15 = 1024;
        v16 = 0;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No key 'StaticNATType' in carrier bundle: using default (0x%08x)", buf, 0x22u);
      }
    }

    return 0;
  }

  return v2;
}

+ (int)getKeepAliveTimeoutFromCarrierBundle
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (VCCarrierBundle_QueryCarrierBundleValueForKey(@"ConnectivityKeepAliveTimeout", &v10))
  {
    v2 = [v10 intValue];
    if (v2 <= 5)
    {
      v3 = 5;
    }

    else
    {
      v3 = v2;
    }

    if (v3 >= 120)
    {
      v4 = 120;
    }

    else
    {
      v4 = v3;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v5;
        v13 = 2080;
        v14 = "+[GKSConnectivitySettings getKeepAliveTimeoutFromCarrierBundle]";
        v15 = 1024;
        v16 = 736;
        v17 = 1024;
        v18 = v4;
        v7 = " [%s] %s:%d Read key 'ConnectivityKeepAliveTimeout' from carrier bundle: %d";
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x22u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 30;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v4 = 30;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "+[GKSConnectivitySettings getKeepAliveTimeoutFromCarrierBundle]";
      v15 = 1024;
      v16 = 738;
      v17 = 1024;
      v18 = 30;
      v7 = " [%s] %s:%d No key 'ConnectivityKeepAliveTimeout' in carrier bundle: using default (%d)";
      goto LABEL_14;
    }
  }

  return v4;
}

+ (BOOL)supportsHEVCEncoding
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsHEVCEncoding]";
        v14 = 1024;
        v15 = 754;
        v16 = 2080;
        v17 = [objc_msgSend(v3 "description")];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d value %s", &v10, 0x26u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsHEVCEncoding]";
        v14 = 1024;
        v15 = 756;
        v16 = 2080;
        v17 = [@"vc-enable-hevc-v2" UTF8String];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s is not present!", &v10, 0x26u);
      }
    }

    return 0;
  }

  return v4;
}

+ (BOOL)supportsEVSCodec
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsEVSCodec]";
        v14 = 1024;
        v15 = 773;
        v16 = 2080;
        v17 = [objc_msgSend(v3 "description")];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d value %s", &v10, 0x26u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsEVSCodec]";
        v14 = 1024;
        v15 = 775;
        v16 = 2080;
        v17 = [@"vc-enable-evs-audio-codec" UTF8String];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s is not present!", &v10, 0x26u);
      }
    }

    return 1;
  }

  return v4;
}

+ (BOOL)supportsRedAudio
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsRedAudio]";
        v14 = 1024;
        v15 = 792;
        v16 = 2080;
        v17 = [objc_msgSend(v3 "description")];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d value %s", &v10, 0x26u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportsRedAudio]";
        v14 = 1024;
        v15 = 794;
        v16 = 2080;
        v17 = [@"vc-enable-red-audio" UTF8String];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s is not present!", &v10, 0x26u);
      }
    }

    return 1;
  }

  return v4;
}

+ (BOOL)supportiRATRecommendation
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 BOOLValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = "NOT ";
        v10 = 136315906;
        if (v3)
        {
          v6 = "";
        }

        v11 = v4;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportiRATRecommendation]";
        v14 = 1024;
        v15 = 809;
        v16 = 2080;
        v17 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d storebag shows we do %s support iRAT recommendation", &v10, 0x26u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings supportiRATRecommendation]";
        v14 = 1024;
        v15 = 811;
        v16 = 2080;
        v17 = [@"vc-enable-irat-recommendation" UTF8String];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d storebag does not have %s, enable iRAT recommendation support by default", &v10, 0x26u);
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (int)getRateControllerType
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getRateControllerType]";
        v13 = 1024;
        v14 = 825;
        v15 = 1024;
        LODWORD(v16) = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d storebag shows we should use rate controller type %d", &v9, 0x22u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getRateControllerType]";
        v13 = 1024;
        v14 = 827;
        v15 = 2080;
        v16 = [@"vc-rate-controller-type" UTF8String];
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d storebag does not have %s, select both rate controller type by default", &v9, 0x26u);
      }
    }

    return 1;
  }

  return v3;
}

+ (int)getDecryptionTimeoutInterval
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getDecryptionTimeoutInterval]";
        v13 = 1024;
        v14 = 841;
        v15 = 2112;
        v16 = @"vc-decryption-timeout-interval";
        v17 = 1024;
        v18 = v3;
        v6 = " [%s] %s:%d storebag value for '%@' is '%d'";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x2Cu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 30;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v3 = 30;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings getDecryptionTimeoutInterval]";
      v13 = 1024;
      v14 = 843;
      v15 = 2112;
      v16 = @"vc-decryption-timeout-interval";
      v17 = 1024;
      v18 = 30;
      v6 = " [%s] %s:%d storebag does not have '%@', default value '%d' selected";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (int)getDecryptionMKMRecoveryInterval
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getDecryptionMKMRecoveryInterval]";
        v13 = 1024;
        v14 = 857;
        v15 = 2112;
        v16 = @"vc-decryption-mkm-recovery-interval";
        v17 = 1024;
        v18 = v3;
        v6 = " [%s] %s:%d storebag value for '%@' is '%d'";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x2Cu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 10;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v3 = 10;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings getDecryptionMKMRecoveryInterval]";
      v13 = 1024;
      v14 = 859;
      v15 = 2112;
      v16 = @"vc-decryption-mkm-recovery-interval";
      v17 = 1024;
      v18 = 10;
      v6 = " [%s] %s:%d storebag does not have '%@', default value '%d' selected";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (int)getNewSessionJoiningInterval
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getNewSessionJoiningInterval]";
        v13 = 1024;
        v14 = 873;
        v15 = 2112;
        v16 = @"vc-new-session-joining-interval";
        v17 = 1024;
        v18 = v3;
        v6 = " [%s] %s:%d storebag value for '%@' is '%d'";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x2Cu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 120;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v3 = 120;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings getNewSessionJoiningInterval]";
      v13 = 1024;
      v14 = 875;
      v15 = 2112;
      v16 = @"vc-new-session-joining-interval";
      v17 = 1024;
      v18 = 120;
      v6 = " [%s] %s:%d storebag does not have %@, default value '%d' selected";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (int)getAdaptiveLearningState
{
  v32 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"useAdaptiveLearningForFaceTime", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v21 = v4;
          v22 = 2080;
          v23 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v24 = 1024;
          v25 = 892;
          v26 = 2080;
          v27 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v28 = 1024;
          LODWORD(v29) = v3;
          v7 = " [%s] %s:%d %s: Read key 'useAdaptiveLearningForFaceTime' from user defaults: %d";
          v8 = v5;
          v9 = 44;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        +[GKSConnectivitySettings getAdaptiveLearningState];
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v21 = v10;
          v22 = 2080;
          v23 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v24 = 1024;
          v25 = 894;
          v26 = 2080;
          v27 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: No key 'useAdaptiveLearningForFaceTime' in user defaults. Trying to find it in the storebag", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[GKSConnectivitySettings getAdaptiveLearningState];
      }
    }

    v13 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
    if (v13)
    {
      v3 = [v13 intValue];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = v14;
          v22 = 2080;
          v23 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v24 = 1024;
          v25 = 898;
          v26 = 2080;
          v27 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v28 = 2112;
          v29 = @"vc-adaptive-learning-enabled";
          v30 = 1024;
          v31 = v3;
          v7 = " [%s] %s:%d %s: found storebag value '%@'=%d";
          v8 = v15;
          v9 = 54;
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = v16;
          v22 = 2080;
          v23 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v24 = 1024;
          v25 = 900;
          v26 = 2080;
          v27 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
          v28 = 2112;
          v29 = @"vc-adaptive-learning-enabled";
          v30 = 1024;
          v31 = 0;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: storebag does not have %@, using defaul value %D", buf, 0x36u);
        }
      }

      return 0;
    }
  }

  return v3;
}

+ (int)getShortTermHistoryLength
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316418;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getShortTermHistoryLength]";
        v13 = 1024;
        v14 = 917;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getShortTermHistoryLength]";
        v17 = 2112;
        v18 = @"vc-short-term-history-length";
        v19 = 1024;
        v20 = v3;
        v6 = " [%s] %s:%d %s: found storebag value '%@'=%d";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x36u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 5;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v3 = 5;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316418;
      v10 = v7;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings getShortTermHistoryLength]";
      v13 = 1024;
      v14 = 919;
      v15 = 2080;
      v16 = "+[GKSConnectivitySettings getShortTermHistoryLength]";
      v17 = 2112;
      v18 = @"vc-short-term-history-length";
      v19 = 1024;
      v20 = 5;
      v6 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %d";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (int)getLongTermHistoryLength
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = [v2 intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316418;
        v10 = v4;
        v11 = 2080;
        v12 = "+[GKSConnectivitySettings getLongTermHistoryLength]";
        v13 = 1024;
        v14 = 935;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getLongTermHistoryLength]";
        v17 = 2112;
        v18 = @"vc-long-term-history-length";
        v19 = 1024;
        v20 = v3;
        v6 = " [%s] %s:%d %s: found storebag value '%@'=%d";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x36u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 30;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v3 = 30;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316418;
      v10 = v7;
      v11 = 2080;
      v12 = "+[GKSConnectivitySettings getLongTermHistoryLength]";
      v13 = 1024;
      v14 = 937;
      v15 = 2080;
      v16 = "+[GKSConnectivitySettings getLongTermHistoryLength]";
      v17 = 2112;
      v18 = @"vc-long-term-history-length";
      v19 = 1024;
      v20 = 30;
      v6 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %d";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (double)getAdaptiveLearningA
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdaptiveLearningA]";
        v14 = 1024;
        v15 = 953;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdaptiveLearningA]";
        v18 = 2112;
        v19 = @"vc-adaptive-learning-A";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdaptiveLearningA]";
        v14 = 1024;
        v15 = 955;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdaptiveLearningA]";
        v18 = 2112;
        v19 = @"vc-adaptive-learning-A";
        v20 = 2048;
        v21 = 0x3FD999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getAdjustmentFactorA
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorA]";
        v14 = 1024;
        v15 = 971;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorA]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-A";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.25;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorA]";
        v14 = 1024;
        v15 = 973;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorA]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-A";
        v20 = 2048;
        v21 = 0x3FD0000000000000;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getShortTermValueWeightA
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightA]";
        v14 = 1024;
        v15 = 989;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightA]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-A";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightA]";
        v14 = 1024;
        v15 = 991;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightA]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-A";
        v20 = 2048;
        v21 = 0x3FD999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getLongTermValueWeightA
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightA]";
        v14 = 1024;
        v15 = 1007;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightA]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-A";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightA]";
        v14 = 1024;
        v15 = 1009;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightA]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-A";
        v20 = 2048;
        v21 = 0x3FB999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getAdaptiveLearningB
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdaptiveLearningB]";
        v14 = 1024;
        v15 = 1025;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdaptiveLearningB]";
        v18 = 2112;
        v19 = @"vc-adaptive-learning-B";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdaptiveLearningB]";
        v14 = 1024;
        v15 = 1027;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdaptiveLearningB]";
        v18 = 2112;
        v19 = @"vc-adaptive-learning-B";
        v20 = 2048;
        v21 = 0x3FD999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getAdjustmentFactorB
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorB]";
        v14 = 1024;
        v15 = 1043;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorB]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-B";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.25;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorB]";
        v14 = 1024;
        v15 = 1045;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorB]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-B";
        v20 = 2048;
        v21 = 0x3FD0000000000000;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getShortTermValueWeightB
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightB]";
        v14 = 1024;
        v15 = 1061;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightB]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-B";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.5;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightB]";
        v14 = 1024;
        v15 = 1063;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightB]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-B";
        v20 = 2048;
        v21 = 0x3FE0000000000000;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getLongTermValueWeightB
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightB]";
        v14 = 1024;
        v15 = 1079;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightB]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-B";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightB]";
        v14 = 1024;
        v15 = 1081;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightB]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-B";
        v20 = 2048;
        v21 = 0x3FC999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getAdjustmentFactorC
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorC]";
        v14 = 1024;
        v15 = 1097;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorC]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-C";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.25;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAdjustmentFactorC]";
        v14 = 1024;
        v15 = 1099;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getAdjustmentFactorC]";
        v18 = 2112;
        v19 = @"vc-adjustment-factor-C";
        v20 = 2048;
        v21 = 0x3FD0000000000000;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getShortTermValueWeightC
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightC]";
        v14 = 1024;
        v15 = 1115;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightC]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-C";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getShortTermValueWeightC]";
        v14 = 1024;
        v15 = 1117;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getShortTermValueWeightC]";
        v18 = 2112;
        v19 = @"vc-short-term-value-weight-C";
        v20 = 2048;
        v21 = 0x3FD999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (double)getLongTermValueWeightC
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightC]";
        v14 = 1024;
        v15 = 1133;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightC]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-C";
        v20 = 2048;
        v21 = *&v4;
        v7 = " [%s] %s:%d %s: found storebag value '%@'=%f";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x3Au);
      }
    }
  }

  else
  {
    v4 = 0.1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getLongTermValueWeightC]";
        v14 = 1024;
        v15 = 1135;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getLongTermValueWeightC]";
        v18 = 2112;
        v19 = @"vc-long-term-value-weight-C";
        v20 = 2048;
        v21 = 0x3FB999999999999ALL;
        v7 = " [%s] %s:%d %s: storebag does not have %@, using defaul value %f";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (int)getWRMRSSIThresholdValue:(int)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 componentsSeparatedByString:{@", "}];
    if ([v6 count])
    {
      a3 = [objc_msgSend(v6 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v6, "count"))), "intValue"}];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v7;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getWRMRSSIThresholdValue:]";
        v17 = 1024;
        v18 = 1153;
        v19 = 2112;
        v20 = @"vc-wrm-rssi-threshold-distribution";
        v21 = 2112;
        *v22 = v5;
        *&v22[8] = 1024;
        *&v22[10] = a3;
        v9 = " [%s] %s:%d Found storebag value '%@'=%@, using threshold value %d";
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x36u);
      }
    }
  }

  else
  {
    v10 = [CFSTR(""-80 -80];
    if ([v10 count])
    {
      a3 = [objc_msgSend(v10 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v10, "count"))), "intValue"}];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getWRMRSSIThresholdValue:]";
        v17 = 1024;
        v18 = 1159;
        v19 = 2112;
        v20 = @"vc-wrm-rssi-threshold-distribution";
        v21 = 1024;
        *v22 = a3;
        *&v22[4] = 2112;
        *&v22[6] = v10;
        v9 = " [%s] %s:%d Storebag does not have %@, using threshold value %d from default distribution %@";
        goto LABEL_12;
      }
    }
  }

  return a3;
}

+ (double)getThresholdForSwitch:(unsigned int)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = NAN;
  if (a3 < 0x8000)
  {
    if (a3 <= 127)
    {
      if (a3 <= 7)
      {
        if (a3 == 1)
        {
          v31 = @"vc-prefer-relay-over-p2p-threshold";
          v30 = @"preferRelayOverP2PThreshold";
          v22 = 0.1;
        }

        else
        {
          v3 = 1.0;
          v63 = @"highFecEnableThreshold";
          if (a3 == 4)
          {
            v5 = 0.0;
          }

          else
          {
            v63 = 0xAAAAAAAAAAAAAAAALL;
          }

          if (a3 == 4)
          {
            v4 = @"vc-high-fec-enable-threshold";
          }

          if (a3 == 2)
          {
            v22 = 1.0;
          }

          else
          {
            v22 = v5;
          }

          if (a3 == 2)
          {
            v30 = @"alwaysOnAudioRedundancyEnableThreshold";
          }

          else
          {
            v30 = v63;
          }

          if (a3 == 2)
          {
            v31 = @"vc-always-on-audio-redundancy-enable-threshold";
          }

          else
          {
            v31 = v4;
          }
        }

        goto LABEL_184;
      }

      v14 = @"vc-ab-testing-use-video-jitter-for-video-playout";
      v15 = @"UseVideoJitterForVideoPlayoutForFaceTime";
      v3 = 0.0;
      v32 = @"vc-fast-media-duplication-enable-threshold";
      v33 = @"fastMediaDuplicationEnableThreshold";
      if (a3 == 64)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = NAN;
      }

      if (a3 != 64)
      {
        v33 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 != 32)
      {
        v3 = v34;
        v15 = v33;
        v14 = v32;
      }

      v19 = @"lowFpsVideoEnableThreshold";
      v35 = @"vplrFecEnableThreshold";
      if (a3 == 16)
      {
        v5 = 1.0;
      }

      else
      {
        v35 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 16)
      {
        v4 = @"vc-vplr-fec-enable-threshold";
      }

      if (a3 == 8)
      {
        v5 = 1.0;
      }

      else
      {
        v19 = v35;
      }

      if (a3 == 8)
      {
        v4 = @"vc-low-fps-video-enable-threshold";
      }

      v21 = a3 <= 31;
      if (a3 <= 31)
      {
        v22 = v5;
      }

      else
      {
        v22 = v3;
      }
    }

    else
    {
      if (a3 > 2047)
      {
        v6 = @"vc-heif-hevc-live-photos-enable-threshold";
        v7 = @"heifHevcLivePhotosEnableThreshold";
        v3 = 1.0;
        v46 = @"vc-wifi-low-tier-redundancy-enable-threshold";
        v47 = @"wifiLowTierRedundancyEnableThreshold";
        if (a3 == 0x4000)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = NAN;
        }

        if (a3 != 0x4000)
        {
          v47 = 0xAAAAAAAAAAAAAAAALL;
          v46 = 0xAAAAAAAAAAAAAAAALL;
        }

        if (a3 == 0x2000)
        {
          v10 = 1.0;
        }

        else
        {
          v7 = v47;
        }

        if (a3 != 0x2000)
        {
          v6 = v46;
        }

        v11 = @"hevcWifiTiersEnableThreshold";
        v48 = @"viewpointCorrectionEnableThreshold";
        if (a3 == 4096)
        {
          v5 = 1.0;
        }

        else
        {
          v48 = 0xAAAAAAAAAAAAAAAALL;
        }

        if (a3 == 4096)
        {
          v4 = @"vc-viewpoint-correction-enable-threshold";
        }

        if (a3 == 2048)
        {
          v5 = 1.0;
        }

        else
        {
          v11 = v48;
        }

        if (a3 == 2048)
        {
          v4 = @"vc-hevc-wifi-tiers-enable-threshold";
        }

        v13 = a3 < 0x2000;
        goto LABEL_175;
      }

      v14 = @"vc-duplicate-important-pkts-enable-threshold";
      v15 = @"duplicateImportantPktsEnableThreshold";
      v3 = 1.0;
      v16 = @"vc-allow-bursty-loss-ramp-down-enable-threshold";
      v17 = @"allowBurstyLossRampDownEnableThreshold";
      if (a3 == 1024)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = NAN;
      }

      if (a3 != 1024)
      {
        v17 = 0xAAAAAAAAAAAAAAAALL;
        v16 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 512)
      {
        v18 = 1.0;
      }

      else
      {
        v15 = v17;
      }

      if (a3 != 512)
      {
        v14 = v16;
      }

      v19 = @"iRATRtpEnableThreshold";
      v20 = @"preWarmCellEnableThreshold";
      if (a3 == 256)
      {
        v5 = 1.0;
      }

      else
      {
        v20 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 256)
      {
        v4 = @"vc-pre-warm-cell-enable-threshold";
      }

      if (a3 == 128)
      {
        v5 = 1.0;
      }

      else
      {
        v19 = v20;
      }

      if (a3 == 128)
      {
        v4 = @"vc-iRAT-rtp-enable-threshold";
      }

      v21 = a3 <= 511;
      if (a3 <= 511)
      {
        v22 = v5;
      }

      else
      {
        v22 = v18;
      }
    }

    if (v21)
    {
      v30 = v19;
    }

    else
    {
      v30 = v15;
    }

    if (v21)
    {
      v31 = v4;
    }

    else
    {
      v31 = v14;
    }

    goto LABEL_184;
  }

  if (a3 < 0x800000)
  {
    if (a3 >= 0x80000)
    {
      v6 = @"vc-wifi-assist-duplication-enable-threshold";
      v7 = @"wifiAssistDuplicationEnableThreshold";
      v3 = 1.0;
      v36 = @"vc-wifi-assist-budget-status-enable-threshold";
      v37 = @"wifiAssistBudgetStatusEnableThreshold";
      if (a3 == 0x400000)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = NAN;
      }

      if (a3 != 0x400000)
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        v36 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 0x200000)
      {
        v10 = 1.0;
      }

      else
      {
        v7 = v37;
      }

      if (a3 != 0x200000)
      {
        v6 = v36;
      }

      v11 = @"secureMessagingEnableThreshold";
      v38 = @"disableSIPEnableThreshold";
      if (a3 == 0x100000)
      {
        v5 = 1.0;
      }

      else
      {
        v38 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 0x100000)
      {
        v4 = @"vc-disable-SIP-enable-threshold";
      }

      if (a3 == 0x80000)
      {
        v5 = 1.0;
      }

      else
      {
        v11 = v38;
      }

      if (a3 == 0x80000)
      {
        v4 = @"vc-secure-messaging-enable-threshold";
      }

      v13 = a3 < 0x200000;
    }

    else
    {
      v6 = @"vc-fec-header-v1-enable-threshold";
      v7 = @"fecHeaderV1EnableThreshold";
      v3 = 1.0;
      v8 = @"vc-updated-AFRC-header-enable-threshold";
      v9 = @"updatedAFRCHeaderEnableThreshold";
      if (a3 == 0x40000)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = NAN;
      }

      if (a3 != 0x40000)
      {
        v9 = 0xAAAAAAAAAAAAAAAALL;
        v8 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 0x20000)
      {
        v10 = 1.0;
      }

      else
      {
        v7 = v9;
      }

      if (a3 != 0x20000)
      {
        v6 = v8;
      }

      v11 = @"cellularLowTierRedundancyEnableThreshold";
      v12 = @"iRATMetricsEnableThreshold";
      if (a3 == 0x10000)
      {
        v5 = 1.0;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAAALL;
      }

      if (a3 == 0x10000)
      {
        v4 = @"vc-iRAT-metrics-enable-threshold";
      }

      if (a3 == 0x8000)
      {
        v5 = 1.0;
      }

      else
      {
        v11 = v12;
      }

      if (a3 == 0x8000)
      {
        v4 = @"vc-cellular-low-tier-redundancy-enable-threshold";
      }

      v13 = a3 < 0x20000;
    }

LABEL_175:
    if (v13)
    {
      v22 = v5;
    }

    else
    {
      v22 = v10;
    }

    if (v13)
    {
      v30 = v11;
    }

    else
    {
      v30 = v7;
    }

    if (v13)
    {
      v31 = v4;
    }

    else
    {
      v31 = v6;
    }

    goto LABEL_184;
  }

  if (a3 > 0x7FFFFFF)
  {
    v39 = @"vc-media-driven-duplication-enable-threshold";
    v3 = 0.0;
    v40 = @"vc-ab-testing-use-rtt-for-fir-throttling";
    v41 = @"useRTTForFIRThrottling";
    if (a3 == 0x40000000)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = NAN;
    }

    if (a3 != 0x40000000)
    {
      v41 = 0xAAAAAAAAAAAAAAAALL;
      v40 = 0xAAAAAAAAAAAAAAAALL;
    }

    if (a3 == 0x20000000)
    {
      v43 = @"mediaDrivenDuplicationEnableThreshold";
    }

    else
    {
      v3 = v42;
      v43 = v41;
    }

    if (a3 != 0x20000000)
    {
      v39 = v40;
    }

    v44 = @"wrmRSSIThresholdEnableThreshold";
    if (a3 == 0x10000000)
    {
      v5 = 1.0;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAAALL;
    }

    if (a3 == 0x10000000)
    {
      v4 = @"vc-wrm-rssi-threshold-enable-threshold";
    }

    if (a3 == 0x8000000)
    {
      v5 = 1.0;
      v45 = @"iRATDuplicationEnableThreshold";
    }

    else
    {
      v45 = v44;
    }

    if (a3 == 0x8000000)
    {
      v4 = @"vc-iRAT-duplication-enable-threshold";
    }

    if (a3 <= 0x1FFFFFFF)
    {
      v22 = v5;
    }

    else
    {
      v22 = v3;
    }

    if (a3 <= 0x1FFFFFFF)
    {
      v30 = v45;
    }

    else
    {
      v30 = v43;
    }

    if (a3 <= 0x1FFFFFFF)
    {
      v31 = v4;
    }

    else
    {
      v31 = v39;
    }
  }

  else
  {
    v23 = @"vc-duplication-enhancement-enable-threshold";
    v3 = 1.0;
    v24 = @"vc-video-jb-enable-threshold-v2";
    v25 = @"videoJBEnableThreshold";
    v26 = 0.0;
    if (a3 != 0x4000000)
    {
      v26 = NAN;
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v24 = 0xAAAAAAAAAAAAAAAALL;
    }

    if (a3 == 0x2000000)
    {
      v26 = 1.0;
      v27 = @"duplicationEnhancementEnableThreshold";
    }

    else
    {
      v27 = v25;
    }

    if (a3 != 0x2000000)
    {
      v23 = v24;
    }

    v28 = @"wifiAssistStatusBarEnableThreshold";
    v29 = @"lowNetworkModeEnableThreshold";
    if (a3 == 0x1000000)
    {
      v5 = 1.0;
    }

    else
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
    }

    if (a3 == 0x1000000)
    {
      v4 = @"vc-low-network-mode-enable-threshold";
    }

    if (a3 == 0x800000)
    {
      v5 = 1.0;
    }

    else
    {
      v28 = v29;
    }

    if (a3 == 0x800000)
    {
      v4 = @"vc-wifi-assist-status-bar-enable-threshold";
    }

    if (a3 <= 0x1FFFFFF)
    {
      v22 = v5;
    }

    else
    {
      v22 = v26;
    }

    if (a3 <= 0x1FFFFFF)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }

    if (a3 <= 0x1FFFFFF)
    {
      v31 = v4;
    }

    else
    {
      v31 = v23;
    }
  }

LABEL_184:
  v49 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings getAllSettings];
  if (v49)
  {
    v50 = v49;
    [v49 doubleValue];
    [VCDefaults getDoubleValueForKey:v30 defaultValue:?];
    v52 = v51;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [v50 doubleValue];
        v64 = 136316418;
        v65 = v53;
        v66 = 2080;
        v67 = "+[GKSConnectivitySettings getThresholdForSwitch:]";
        v68 = 1024;
        v69 = 1333;
        v70 = 2112;
        v71 = v31;
        v72 = 2048;
        v73 = v55;
        v74 = 2048;
        v75 = v52;
        v56 = " [%s] %s:%d Found storebag value '%@'=%f, using %f";
        v57 = v54;
        v58 = 58;
LABEL_191:
        _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, v56, &v64, v58);
      }
    }
  }

  else
  {
    [VCDefaults getDoubleValueForKey:v30 defaultValue:v22];
    v52 = v59;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v64 = 136316162;
        v65 = v60;
        v66 = 2080;
        v67 = "+[GKSConnectivitySettings getThresholdForSwitch:]";
        v68 = 1024;
        v69 = 1336;
        v70 = 2112;
        v71 = v31;
        v72 = 2048;
        v73 = v52;
        v56 = " [%s] %s:%d Storebag does not have %@, using default value %f";
        v57 = v61;
        v58 = 48;
        goto LABEL_191;
      }
    }
  }

  return v52;
}

+ (unsigned)getAbTestMasterLocalSwitches
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAbTestMasterLocalSwitches]";
        v14 = 1024;
        v15 = 1349;
        v16 = 2112;
        v17 = @"vc-ab-test-master-local-switches";
        v18 = 2112;
        v19 = v2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found storebag value '%@'=%@", &v10, 0x30u);
      }
    }

    return [v2 unsignedIntValue];
  }

  else
  {
    v6 = 201326554;
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAbTestMasterLocalSwitches]";
        v14 = 1024;
        v15 = 1352;
        v16 = 2112;
        v17 = @"vc-ab-test-master-local-switches";
        v18 = 1024;
        LODWORD(v19) = 201326554;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Storebag does not have %@, using default value %d", &v10, 0x2Cu);
      }
    }
  }

  return v6;
}

+ (unsigned)getAbTestingState
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    v3 = v2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAbTestingState]";
        v14 = 1024;
        v15 = 1362;
        v16 = 2112;
        v17 = @"vc-ab-testing-state";
        v18 = 2112;
        v19 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found storebag value '%@'=%@", &v10, 0x30u);
      }
    }

    return [v3 unsignedIntValue];
  }

  else
  {
    IntValueForKey = VCDefaults_GetIntValueForKey(@"abTestingState", 0);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getAbTestingState]";
        v14 = 1024;
        v15 = 1366;
        v16 = 2112;
        v17 = @"vc-ab-testing-state";
        v18 = 1024;
        LODWORD(v19) = IntValueForKey;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Storebag does not have %@, using default value %d", &v10, 0x2Cu);
      }
    }
  }

  return IntValueForKey;
}

+ (id)getTestGroupPermutations:(unsigned __int8)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 > 4u)
  {
    return &stru_1F570E008;
  }

  v3 = off_1E85F49C0[a3];
  v4 = off_1E85F49E8[a3];
  v5 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v7;
        v14 = 2080;
        v15 = "+[GKSConnectivitySettings getTestGroupPermutations:]";
        v16 = 1024;
        v17 = 1402;
        v18 = 2112;
        v19 = v3;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found storebag value '%@'=%@", &v12, 0x30u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "+[GKSConnectivitySettings getTestGroupPermutations:]";
        v16 = 1024;
        v17 = 1405;
        v18 = 2112;
        v19 = v3;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Storebag does not have %@, using default value %@", &v12, 0x30u);
      }
    }

    return v4;
  }

  return v5;
}

+ (double)getRemoteMediaStallTimeout
{
  v21 = *MEMORY[0x1E69E9840];
  [+[VCDefaults sharedInstance](VCDefaults remoteMediaStallTimeout];
  v3 = v2;
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v4)
  {
    [v4 doubleValue];
    v3 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v6;
        v13 = 2080;
        v14 = "+[GKSConnectivitySettings getRemoteMediaStallTimeout]";
        v15 = 1024;
        v16 = 1418;
        v17 = 2112;
        v18 = @"vc-remote-media-stall-timeout";
        v19 = 2112;
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
        v8 = " [%s] %s:%d storebag value for '%@' is '%@'";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x30u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = "+[GKSConnectivitySettings getRemoteMediaStallTimeout]";
      v15 = 1024;
      v16 = 1420;
      v17 = 2112;
      v18 = @"vc-remote-media-stall-timeout";
      v19 = 2112;
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
      v8 = " [%s] %s:%d storebag does not have '%@', default value '%@' selected";
      goto LABEL_8;
    }
  }

  return v3;
}

+ (double)getNoRemoteDuplicationThresholdFast
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v5;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getNoRemoteDuplicationThresholdFast]";
        v14 = 1024;
        v15 = 1434;
        v16 = 2112;
        v17 = @"vc-no-remote-duplication-threshold-fast";
        v18 = 2112;
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
        v7 = " [%s] %s:%d storebag value for '%@' is '%@'";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x30u);
      }
    }
  }

  else
  {
    v4 = 4.0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        v12 = 2080;
        v13 = "+[GKSConnectivitySettings getNoRemoteDuplicationThresholdFast]";
        v14 = 1024;
        v15 = 1436;
        v16 = 2112;
        v17 = @"vc-no-remote-duplication-threshold-fast";
        v18 = 2112;
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:4.0];
        v7 = " [%s] %s:%d storebag does not have '%@', default value '%@' selected";
        goto LABEL_8;
      }
    }
  }

  return v4;
}

+ (id)getVCRCSeverBagConfigWithKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v6;
        v16 = 2080;
        v17 = "+[GKSConnectivitySettings getVCRCSeverBagConfigWithKey:]";
        v18 = 1024;
        v19 = 1447;
        v20 = 2112;
        v21 = a3;
        v22 = 2112;
        v23 = v4;
        v8 = " [%s] %s:%d storebag map value for '%@' is '%@'";
        v9 = v7;
        v10 = 48;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = v11;
      v16 = 2080;
      v17 = "+[GKSConnectivitySettings getVCRCSeverBagConfigWithKey:]";
      v18 = 1024;
      v19 = 1449;
      v20 = 2112;
      v21 = a3;
      v8 = " [%s] %s:%d storebag does not have '%@'";
      v9 = v12;
      v10 = 38;
      goto LABEL_8;
    }
  }

  return v4;
}

+ (id)getStorebagValueForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 defaultValue:(id)a5 isDoubleType:(BOOL)a6
{
  v6 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v10 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  v11 = v10;
  if (v10)
  {
    a5 = v10;
  }

  if (a4)
  {
    v12 = MEMORY[0x1E696AD98];
    if (v6)
    {
      [a5 doubleValue];
      [VCDefaults getDoubleValueForKey:a4 defaultValue:?];
      v13 = [v12 numberWithDouble:?];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithLong:{+[VCDefaults integerValueForKey:defaultValue:](VCDefaults, "integerValueForKey:defaultValue:", a4, objc_msgSend(a5, "intValue"))}];
    }

    a5 = v13;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v11)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316418;
        v24 = v15;
        v25 = 2080;
        v26 = "+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:]";
        v27 = 1024;
        v28 = 1471;
        v29 = 2112;
        v30 = a3;
        v31 = 2112;
        v32 = v11;
        v33 = 2112;
        v34 = a5;
        v17 = " [%s] %s:%d Found storebag value '%@'=%@, using %@";
        v18 = v16;
        v19 = 58;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136316162;
      v24 = v20;
      v25 = 2080;
      v26 = "+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:]";
      v27 = 1024;
      v28 = 1473;
      v29 = 2112;
      v30 = a3;
      v31 = 2112;
      v32 = a5;
      v17 = " [%s] %s:%d Storebag does not have %@, using %@";
      v18 = v21;
      v19 = 48;
      goto LABEL_15;
    }
  }

  return a5;
}

+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 featureFlagDomain:(char *)a5 featureFlagName:(char *)a6
{
  v11 = arc4random() / 4294967300.0;

  return [a1 isFeatureEnabledForStorebagKey:a3 userDefaultKey:a4 featureFlagDomain:a5 featureFlagName:a6 normalizedRandom:v11];
}

+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 userDefaultKey:(__CFString *)a4 featureFlagDomain:(char *)a5 featureFlagName:(char *)a6 normalizedRandom:(double)a7
{
  v37 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a4, @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v12 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue == 1;
  }

  v14 = v12;
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
    v13 = v15 > a7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v26 = v17;
        v27 = 2080;
        v28 = "+[GKSConnectivitySettings isFeatureEnabledForStorebagKey:userDefaultKey:featureFlagDomain:featureFlagName:normalizedRandom:]";
        v29 = 1024;
        v30 = 1549;
        v31 = 2112;
        v32 = a3;
        v33 = 2112;
        v34 = v14;
        v35 = 1024;
        *v36 = v16 > a7;
        *&v36[4] = 2048;
        *&v36[6] = a7;
        v19 = " [%s] %s:%d Found storebag value '%@'=%@, result=%d, normalizedRandom=%1.4f";
        v20 = v18;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, 0x40u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    v13 = 1;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v26 = v22;
      v27 = 2080;
      v28 = "+[GKSConnectivitySettings isFeatureEnabledForStorebagKey:userDefaultKey:featureFlagDomain:featureFlagName:normalizedRandom:]";
      v29 = 1024;
      v30 = 1551;
      v31 = 2112;
      v32 = a3;
      v33 = 2080;
      v34 = a5;
      v35 = 2080;
      *v36 = a6;
      *&v36[8] = 1024;
      *&v36[10] = 1;
      v19 = " [%s] %s:%d Storebag does not have %@, using feature flag domain=%s name=%s value=%d";
      v20 = v23;
      goto LABEL_13;
    }
  }

  return v13;
}

+ (id)getStorebagValueStorebagKey:(id)a3 defaultValue:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getStorebagValueStorebagKey:defaultValue:]";
        v17 = 1024;
        v18 = 1563;
        v19 = 2112;
        v20 = a3;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found storebag value '%@'=%@", &v13, 0x30u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "+[GKSConnectivitySettings getStorebagValueStorebagKey:defaultValue:]";
        v17 = 1024;
        v18 = 1566;
        v19 = 2112;
        v20 = a3;
        v21 = 2112;
        v22 = a4;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Storebag does not have %@, using %@", &v13, 0x30u);
      }
    }

    return a4;
  }

  return v6;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = GKSConnectivitySettings;
  [(GKSConnectivitySettings *)&v2 dealloc];
}

+ (BOOL)isFeatureDisabledByExceptionKey:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 componentsSeparatedByString:{@", "}];
    v7 = MGGetStringAnswer();
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isEqualToString:&stru_1F570E008];
      if ((v9 & 1) == 0)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v17 = OUTLINED_FUNCTION_2_3(v9, v10, v11, v12, v13, v14, v15, v16);
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(v6);
              }

              v21 = [*(*(&v47 + 1) + 8 * i) isEqualToString:v8];
              if (v21)
              {
                if (VRTraceGetErrorLogLevelForModule() < 7)
                {
                  v29 = 1;
                }

                else
                {
                  v31 = VRTraceErrorLogLevelToCSTR();
                  v32 = *MEMORY[0x1E6986650];
                  v29 = 1;
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = 136316674;
                    v34 = v31;
                    v35 = 2080;
                    v36 = "+[GKSConnectivitySettings isFeatureDisabledByExceptionKey:]";
                    v37 = 1024;
                    v38 = 1500;
                    v39 = 2112;
                    v40 = a3;
                    v41 = 2112;
                    v42 = v5;
                    v43 = 2112;
                    v44 = v8;
                    v45 = 1024;
                    v46 = 1;
                    _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found storebag exception value '%@'=%@, deviceCode=%@ isDisabled=%d", &v33, 0x40u);
                  }
                }

                goto LABEL_13;
              }
            }

            v18 = OUTLINED_FUNCTION_2_3(v21, v22, v23, v24, v25, v26, v27, v28);
            if (v18)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v29 = 0;
LABEL_13:

  return v29;
}

+ (BOOL)isFeatureEnabledForStorebagKey:(id)a3 exceptionKey:(id)a4 userDefaultKey:(__CFString *)a5 featureFlagDomain:(char *)a6 featureFlagName:(char *)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = arc4random();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a5, @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v15 = [+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")];
  if (keyExistsAndHasValidFormat)
  {
    LOBYTE(v13) = AppBooleanValue != 0;
    return v13;
  }

  v16 = v15;
  if ([a1 isFeatureDisabledByExceptionKey:a4])
  {
    LOBYTE(v13) = 0;
    return v13;
  }

  if (v16)
  {
    v17 = v13 / 4294967300.0;
    [v16 doubleValue];
    LOBYTE(v13) = v17 < v18;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v33 = v19;
        v34 = 2080;
        v35 = "+[GKSConnectivitySettings isFeatureEnabledForStorebagKey:exceptionKey:userDefaultKey:featureFlagDomain:featureFlagName:]";
        v36 = 1024;
        OUTLINED_FUNCTION_1_2();
        v37 = v21;
        v38 = v16;
        v39 = v22;
        *v40 = v23;
        *&v40[4] = 2048;
        *&v40[6] = v17;
        v24 = " [%s] %s:%d Found storebag value '%@'=%@, result=%d, normalizedRandom=%1.4f";
        v25 = v20;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, 0x40u);
      }
    }
  }

  else
  {
    v13 = _os_feature_enabled_impl();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v33 = v26;
        v34 = 2080;
        v35 = "+[GKSConnectivitySettings isFeatureEnabledForStorebagKey:exceptionKey:userDefaultKey:featureFlagDomain:featureFlagName:]";
        v36 = 1024;
        OUTLINED_FUNCTION_1_2();
        v37 = v28;
        v38 = a6;
        v39 = v28;
        *v40 = a7;
        *&v40[8] = v29;
        *&v40[10] = v13;
        v24 = " [%s] %s:%d Storebag does not have %@, using feature flag domain=%s name=%s value=%d";
        v25 = v27;
        goto LABEL_10;
      }
    }
  }

  return v13;
}

+ (void)getAdaptiveLearningState
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
  v4 = 1024;
  v5 = 894;
  v6 = v0;
  v7 = "+[GKSConnectivitySettings getAdaptiveLearningState]";
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s: No key 'useAdaptiveLearningForFaceTime' in user defaults. Trying to find it in the storebag", v2, 0x26u);
}

@end