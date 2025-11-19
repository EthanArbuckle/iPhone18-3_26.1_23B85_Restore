@interface VCExperimentManager
+ (id)sha256:(id)a3;
+ (unint64_t)xorSum:(id)a3;
- (BOOL)isEnabledExperiment:(id)a3 forceDisable:(BOOL)a4;
- (BOOL)isUUIDSampledForExperimentation:(id)a3;
- (VCExperimentManager)initWithSamplingUUID:(id)a3;
- (double)samplingFactor:(id)a3;
- (id)valueForExperiment:(id)a3 samplingUUID:(id)a4 samplingThreshold:(id)a5;
- (int)setQRExperimentsDictionary:(id)a3;
- (void)dealloc;
- (void)setReportingAgent:(opaqueRTCReporting *)a3;
- (void)setupInitialClientExperiments:(id)a3 samplingUUID:(id)a4;
@end

@implementation VCExperimentManager

- (VCExperimentManager)initWithSamplingUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCExperimentManager;
  v4 = [(VCExperimentManager *)&v16 init];
  v5 = v4;
  if (v4)
  {
    pthread_mutex_init(&v4->_stateLock, 0);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_clientExperiments = v6;
    [(VCExperimentManager *)v5 setupInitialClientExperiments:v6 samplingUUID:a3];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      clientExperiments = v5->_clientExperiments;
      v8 = clientExperiments ? [-[NSMutableDictionary description](clientExperiments "description")] : "<nil>";
      asprintf(&__str, "Experiment Manger created with clientExperiments=%s", v8);
      if (__str)
      {
        __lasts = 0;
        v9 = strtok_r(__str, "\n", &__lasts);
        v10 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v18 = v11;
              v19 = 2080;
              v20 = "[VCExperimentManager initWithSamplingUUID:]";
              v21 = 1024;
              v22 = 45;
              v23 = 2080;
              v24 = "VCFeatureExperimentSetting: ";
              v25 = 2080;
              v26 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v9 = strtok_r(0, "\n", &__lasts);
        }

        while (v9);
        free(__str);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCExperimentManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v14 = v9;
    v15 = 2080;
    v16 = "[VCExperimentManager dealloc]";
    v17 = 1024;
    v18 = 51;
    v19 = 2112;
    v20 = v3;
    v21 = 2048;
    v22 = self;
    v6 = " [%s] %s:%d %@(%p) VCFeatureExperimentSetting: ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "[VCExperimentManager dealloc]";
      v17 = 1024;
      v18 = 51;
      v6 = " [%s] %s:%d VCFeatureExperimentSetting: ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  pthread_mutex_destroy(&self->_stateLock);
  v12.receiver = self;
  v12.super_class = VCExperimentManager;
  [(VCExperimentManager *)&v12 dealloc];
}

- (void)setReportingAgent:(opaqueRTCReporting *)a3
{
  pthread_mutex_lock(&self->_stateLock);
  reportingAgent = self->_reportingAgent;
  self->_reportingAgent = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  clientExperiments = self->_clientExperiments;
  if (clientExperiments && [(NSMutableDictionary *)clientExperiments count])
  {
    _VCExperimentManager_ReportExperimentPayload(self, self->_clientExperiments);
  }

  pthread_mutex_unlock(&self->_stateLock);
}

- (int)setQRExperimentsDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableAllAVCExperiments", 0);
  pthread_mutex_lock(&self->_stateLock);
  if (BoolValueForKey)
  {
    [(VCExperimentManager *)self setQRExperimentsDictionary:buf];
LABEL_20:
    v13 = *buf;
    goto LABEL_17;
  }

  if (!a3)
  {
    [(VCExperimentManager *)self setQRExperimentsDictionary:buf];
    goto LABEL_20;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3];
  if (v6)
  {
    [(NSMutableDictionary *)self->_clientExperiments addEntriesFromDictionary:v6];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    clientExperiments = self->_clientExperiments;
    v8 = clientExperiments ? [-[NSMutableDictionary description](clientExperiments "description")] : "<nil>";
    asprintf(&__str, "QR Experiments set. Updated clientExperiments=%s", v8);
    if (__str)
    {
      __lasts = 0;
      v9 = strtok_r(__str, "\n", &__lasts);
      v10 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v18 = v11;
            v19 = 2080;
            v20 = "[VCExperimentManager setQRExperimentsDictionary:]";
            v21 = 1024;
            v22 = 81;
            v23 = 2080;
            v24 = "VCFeatureExperimentSetting: ";
            v25 = 2080;
            v26 = v9;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v9 = strtok_r(0, "\n", &__lasts);
      }

      while (v9);
      free(__str);
    }
  }

  v13 = 0;
LABEL_17:
  pthread_mutex_unlock(&self->_stateLock);
  return v13;
}

- (void)setupInitialClientExperiments:(id)a3 samplingUUID:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [(VCExperimentManager *)self isUUIDSampledForExperimentation:a4];
  obj = VCExperimentDefinitions_ExperimentConfigurations();
  v34 = +[GKSConnectivitySettings getAllSettings];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableAllAVCExperiments", 0);
  v6 = &selRef_isLatencySensitiveModeEnabled;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v39 = v8;
    v40 = 2080;
    v41 = "[VCExperimentManager setupInitialClientExperiments:samplingUUID:]";
    v42 = 1024;
    v43 = 194;
    v44 = 1024;
    *v45 = v5;
    *&v45[4] = 1024;
    *&v45[6] = BoolValueForKey;
    v10 = " [%s] %s:%d VCFeatureExperimentSetting: Setting up initial client experiments. isUUIDSampledForExperimentation=%d shouldDisableAllActiveExperiments=%d";
    v11 = v9;
    v12 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCExperimentManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316674;
    v39 = v13;
    v40 = 2080;
    v41 = "[VCExperimentManager setupInitialClientExperiments:samplingUUID:]";
    v42 = 1024;
    v43 = 194;
    v44 = 2112;
    *v45 = v7;
    *&v45[8] = 2048;
    v46 = self;
    v47 = 1024;
    *v48 = v5;
    *&v48[4] = 1024;
    *&v48[6] = BoolValueForKey;
    v10 = " [%s] %s:%d %@(%p) VCFeatureExperimentSetting: Setting up initial client experiments. isUUIDSampledForExperimentation=%d shouldDisableAllActiveExperiments=%d";
    v11 = v14;
    v12 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_12:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = *v52;
  v33 = !v5;
  do
  {
    v18 = 0;
    v19 = v6[456];
    do
    {
      if (*v52 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v51 + 1) + 8 * v18);
      v21 = CFPreferencesCopyAppValue(v20, @"com.apple.VideoConference");
      if (v21)
      {
        v22 = v21;
        [a3 setObject:v21 forKey:v20];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v39 = v30;
              v40 = 2080;
              v41 = "[VCExperimentManager setupInitialClientExperiments:samplingUUID:]";
              v42 = 1024;
              v43 = 199;
              v44 = 2112;
              *v45 = v20;
              *&v45[8] = 2112;
              v46 = v22;
              v26 = v31;
              v27 = " [%s] %s:%d VCFeatureExperimentSetting: Overriding client experiment setting using user-defaults. name=%@ value=%@";
              v28 = 48;
LABEL_29:
              _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
            }
          }
        }

        else
        {
          v23 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v23 = [(VCExperimentManager *)self performSelector:v19];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v39 = v24;
              v40 = 2080;
              v41 = "[VCExperimentManager setupInitialClientExperiments:samplingUUID:]";
              v42 = 1024;
              v43 = 199;
              v44 = 2112;
              *v45 = v23;
              *&v45[8] = 2048;
              v46 = self;
              v47 = 2112;
              *v48 = v20;
              *&v48[8] = 2112;
              v49 = v22;
              v26 = v25;
              v27 = " [%s] %s:%d %@(%p) VCFeatureExperimentSetting: Overriding client experiment setting using user-defaults. name=%@ value=%@";
              v28 = 68;
              goto LABEL_29;
            }
          }
        }

        goto LABEL_31;
      }

      v29 = [v34 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(obj, "objectForKeyedSubscript:", v20), "objectForKeyedSubscript:", @"experimentThresholdKey"}];
      if (!((v29 == 0) | (v33 | BoolValueForKey) & 1))
      {
        [a3 setObject:-[VCExperimentManager valueForExperiment:samplingUUID:samplingThreshold:](self forKey:{"valueForExperiment:samplingUUID:samplingThreshold:", v20, a4, v29), v20}];
      }

LABEL_31:
      ++v18;
    }

    while (v16 != v18);
    v16 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    v6 = &selRef_isLatencySensitiveModeEnabled;
  }

  while (v16);
}

- (BOOL)isUUIDSampledForExperimentation:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = [a3 UUIDString];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  v6 = 1.0;
  if ((IsInternalOSInstalled & 1) == 0)
  {
    IsSeedOSInstalled = VRTraceIsSeedOSInstalled();
    v6 = 0.1;
    if (IsSeedOSInstalled)
    {
      v6 = 1.0;
    }
  }

  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-rtc-sampling-threshold" userDefaultKey:@"rtcSamplingThreshold" defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithDouble:", v6), 1), "doubleValue"}];
  v9 = v8;
  v10 = VRTraceIsInternalOSInstalled();
  v11 = 0.5;
  if (v10)
  {
    v11 = 1.0;
  }

  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-reserved-experiment-space-threshold" userDefaultKey:@"reservedExperimentSpaceFactor" defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithDouble:", v11), 1), "doubleValue"}];
  v13 = v12;
  if (v4 && ([(__CFString *)v4 isEqualToString:&stru_1F570E008]& 1) == 0)
  {
    [(VCExperimentManager *)self samplingFactor:v4];
    v14 = v15;
  }

  else
  {
    v14 = arc4random_uniform(0x2710u) / 10000.0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316674;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCExperimentManager isUUIDSampledForExperimentation:]";
        v29 = 1024;
        v30 = 234;
        v31 = 2112;
        v32 = v4;
        v33 = 2048;
        v34 = *&v9;
        v35 = 2048;
        v36 = v13;
        v37 = 2048;
        v38 = v14;
        v19 = " [%s] %s:%d VCFeatureExperimentSetting: uuidString=%@ rtcSamplingThreshold=%f reserveExperimentSpaceFactor=%f samplingFactorValue=%f";
        v20 = v18;
        v21 = 68;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCExperimentManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136317186;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCExperimentManager isUUIDSampledForExperimentation:]";
        v29 = 1024;
        v30 = 234;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        v34 = self;
        v35 = 2112;
        v36 = *&v4;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        v40 = v13;
        v41 = 2048;
        v42 = v14;
        v19 = " [%s] %s:%d %@(%p) VCFeatureExperimentSetting: uuidString=%@ rtcSamplingThreshold=%f reserveExperimentSpaceFactor=%f samplingFactorValue=%f";
        v20 = v23;
        v21 = 88;
        goto LABEL_20;
      }
    }
  }

  return v14 < v9 * v13;
}

- (id)valueForExperiment:(id)a3 samplingUUID:(id)a4 samplingThreshold:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = [a4 UUIDString];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v8, a3];
  [(VCExperimentManager *)self samplingFactor:v9];
  v11 = v10;
  [a5 doubleValue];
  if (v11 >= v12)
  {
    v13 = &unk_1F579A458;
  }

  else
  {
    v13 = &unk_1F579A470;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v24 = v15;
        v25 = 2080;
        v26 = "[VCExperimentManager valueForExperiment:samplingUUID:samplingThreshold:]";
        v27 = 1024;
        v28 = 243;
        v29 = 2112;
        v30 = a3;
        v31 = 2112;
        v32 = v9;
        v33 = 2048;
        v34 = v11;
        v35 = 2112;
        v36 = a5;
        v37 = 2112;
        v38 = *&v13;
        v17 = " [%s] %s:%d VCFeatureExperimentSetting: Checking if sampled in for experiment experimentName=%@ concatenatedString=%@ samplingFactor=%f samplingThreshold=%@, isSampledIn=%@";
        v18 = v16;
        v19 = 78;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCExperimentManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCExperimentManager valueForExperiment:samplingUUID:samplingThreshold:]";
        v27 = 1024;
        v28 = 243;
        v29 = 2112;
        v30 = v14;
        v31 = 2048;
        v32 = self;
        v33 = 2112;
        v34 = *&a3;
        v35 = 2112;
        v36 = v9;
        v37 = 2048;
        v38 = v11;
        v39 = 2112;
        v40 = a5;
        v41 = 2112;
        v42 = v13;
        v17 = " [%s] %s:%d %@(%p) VCFeatureExperimentSetting: Checking if sampled in for experiment experimentName=%@ concatenatedString=%@ samplingFactor=%f samplingThreshold=%@, isSampledIn=%@";
        v18 = v21;
        v19 = 98;
        goto LABEL_14;
      }
    }
  }

  return v13;
}

- (double)samplingFactor:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [VCExperimentManager sha256:a3];
  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v3, "length") >> 1}];
  if ([v3 length])
  {
    v5 = 0;
    do
    {
      v7 = -1431655766;
      [objc_msgSend(MEMORY[0x1E696AE88] scannerWithString:{objc_msgSend(v3, "substringWithRange:", v5, 2)), "scanHexInt:", &v7}];
      [v4 appendBytes:&v7 length:1];
      v5 += 2;
    }

    while (v5 < [v3 length]);
  }

  return ([VCExperimentManager xorSum:v4]% 0x64) / 100.0;
}

+ (id)sha256:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a3 dataUsingEncoding:4];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v4;
  v9 = v4;
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  return v5;
}

+ (unint64_t)xorSum:(id)a3
{
  v4 = [a3 bytes];
  result = [a3 length];
  if (result)
  {
    v6 = result;
    result = 0;
    v7 = 0;
    v8 = v6;
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 - 8;
      if (v8 >= 8)
      {
        v8 = 8;
      }

      if (v8 <= 1)
      {
        v8 = 1;
      }

      v12 = 8 * v8;
      v13 = v4;
      do
      {
        v14 = *v13++;
        v10 |= v14 << v9;
        v9 += 8;
      }

      while (v12 != v9);
      result ^= v10;
      v7 += 8;
      v4 += 8;
      v8 = v11;
    }

    while (v7 < v6);
  }

  return result;
}

- (BOOL)isEnabledExperiment:(id)a3 forceDisable:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(VCExperimentManager *)self experimentGroup:&v11 forExperiment:a3]< 0 || v11 != 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_30_1())
    {
      v9 = "disabled";
      *buf = 136316674;
      if (v6)
      {
        v9 = "enabled";
      }

      v13 = v7;
      v14 = 2080;
      v15 = "[VCExperimentManager isEnabledExperiment:forceDisable:]";
      v16 = 1024;
      v17 = 103;
      v18 = 2112;
      v19 = a3;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v4;
      v24 = 2080;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: AB Test for experiment %@=%u. forceDisable=%d Experiment is %s", buf, 0x3Cu);
    }
  }

  return v6;
}

- (void)setQRExperimentsDictionary:(void *)a1 .cold.1(void *a1, _DWORD *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  *a2 = -2142306303;
}

- (void)setQRExperimentsDictionary:(void *)a1 .cold.2(void *a1, _DWORD *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  *a2 = 0;
}

@end