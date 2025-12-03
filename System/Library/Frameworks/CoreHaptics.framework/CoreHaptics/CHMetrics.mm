@interface CHMetrics
- (BOOL)isEnabled;
- (BOOL)isEventType:(unint64_t)type inList:(vector<unsigned)long;
- (CHMetrics)initWithEngine:(id)engine audioSessionID:(unsigned int)d sessionIsShared:(BOOL)shared isSPI:(BOOL)i;
- (float)getLoopsForAdvancedPlayer:(id)player endTime:(double)time;
- (float)getLoopsForPlayer:(id)player endTime:(double)time;
- (id).cxx_construct;
- (id)continousDictionary:(id)dictionary slot:(unint64_t)slot intensity:(float)intensity;
- (id)getIDForPlayer:(id)player;
- (id)getMetricsForPlayer:(id)player;
- (id)intensityBinKeyFromValue:(float)value;
- (id)legacyTransientDictionary:(id)dictionary eventType:(unint64_t)type intensity:(float)intensity;
- (id)transientDictionary:(id)dictionary index:(unint64_t)index intensity:(float)intensity;
- (void)addPatternLibraryMetric:(id)metric;
- (void)dealloc;
- (void)dispatchOnLocal:(id)local;
- (void)handleActionForPlayer:(id)player action:(int64_t)action time:(double)time isAdvanced:(BOOL)advanced;
- (void)handleEngineStart;
- (void)handleEngineStop;
- (void)handleFinishedForPlayersAtTime:(double)time;
- (void)handleInitForPlayer:(id)player events:(id)events isAdvanced:(BOOL)advanced patternID:(id)d;
- (void)handleParamCurveEncountered;
- (void)logMetric:(id)metric value:(id)value;
- (void)logPatternLibraryMetric:(id)metric;
- (void)logPowerLogMetric:(id)metric;
- (void)markAdvancedPlaybackAction:(id)action action:(int64_t)a4 time:(float)time;
- (void)markPlaybackAction:(id)action action:(int64_t)a4 time:(float)time;
- (void)prepareAdvancedPlaybackData:(id)data events:(id)events;
- (void)prepareData:(id)data events:(id)events;
- (void)preparePlaybackData:(id)data events:(id)events;
- (void)removePlaybackData:(id)data;
- (void)resetAdvancedPlaybackData:(id)data;
- (void)resetPlaybackData:(id)data;
- (void)retainData:(id)data forTestingPlayer:(id)player;
- (void)sendDetailedMetricsForPlayerID:(id)d endTime:(float)time;
- (void)sendPatternLibraryMetrics;
- (void)setMetricsTestModeEnabled;
- (void)setReporter;
- (void)startReporter;
- (void)stopReporter;
@end

@implementation CHMetrics

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

- (BOOL)isEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"hapticmetrics_client_disabled", @"com.apple.corehaptics", 0);
  if (AppBooleanValue)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "CHMetrics.mm";
      v9 = 1024;
      v10 = 409;
      v11 = 2080;
      v12 = "[CHMetrics isEnabled]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: client side metrics DISABLED (defaults write com.apple.corehaptics hapticmetrics_client_disabled == true)", &v7, 0x1Cu);
    }
  }

LABEL_9:
  result = AppBooleanValue == 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setReporter
{
  v36[1] = *MEMORY[0x277D85DE8];
  v23 = [MEMORY[0x277CEFC98] retrieveSessionWithID:self->_audioSessionID];
  if (!self->_sessionIsShared)
  {
    self->_reporterID = CAReportingClientCreateReporterID();
    CAReportingClientSetAudioServiceType();
    reporterID = self->_reporterID;
    v24 = 0;
    [v23 setReporterID:reporterID error:&v24];
    v7 = v24;
    v8 = v7;
    if (v7)
    {
      code = [v7 code];
    }

    else
    {
      code = 0;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if (!bundleIdentifier || ([MEMORY[0x277CCA8D8] mainBundle], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqual:", @"Unknown") & 1) != 0))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];

      if (!bundleIdentifier)
      {
        goto LABEL_17;
      }
    }

    else
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      processName = [mainBundle2 bundleIdentifier];
    }

LABEL_17:
    v35 = @"HostApplicationDisplayID";
    v36[0] = processName;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v18 = self->_reporterID;
    CAReportingClientSetConfiguration();

    if (code)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  self->_reporterID = [v23 reporterID];
  if (!kHMETScope)
  {
    v5 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

  v5 = *kHMETScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_reporterID;
      *buf = 136315906;
      v26 = "CHMetrics.mm";
      v27 = 1024;
      v28 = 361;
      v29 = 2080;
      v30 = "[CHMetrics setReporter]";
      v31 = 2048;
      v32 = v11;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: updating haptics reporter with audio session reporter id %lld", buf, 0x26u);
    }
  }

LABEL_18:
  if (self->_reporterID > 0)
  {
    goto LABEL_27;
  }

  code = 0;
LABEL_20:
  if (kHMETScope)
  {
    v19 = *kHMETScope;
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    engineID = self->_engineID;
    *buf = 136316162;
    v26 = "CHMetrics.mm";
    v27 = 1024;
    v28 = 378;
    v29 = 2080;
    v30 = "[CHMetrics setReporter]";
    v31 = 2112;
    v32 = engineID;
    v33 = 1024;
    v34 = code;
    _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: unable to set reporter for engine %@: error %d", buf, 0x2Cu);
  }

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleEngineStart
{
  [(CHMetrics *)self startReporter];
  [(CHMetrics *)self logPowerLogMetric:@"EngineOn"];
  if (self->_isSPI)
  {
    v3 = @"startHapticEngine_SPI";
  }

  else
  {
    v3 = @"startHapticEngine";
  }

  [(CHMetrics *)self logMetric:v3 value:&unk_28279D810];
}

- (void)startReporter
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
LABEL_9:
        reporterID = self->_reporterID;
        CAReportingClientStartReporter();
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      engineID = self->_engineID;
      v8 = 136315906;
      v9 = "CHMetrics.mm";
      v10 = 1024;
      v11 = 386;
      v12 = 2080;
      v13 = "[CHMetrics startReporter]";
      v14 = 2112;
      v15 = engineID;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: starting reporter for engine %@", &v8, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleEngineStop
{
  [(CHMetrics *)self logPowerLogMetric:@"EngineOff"];
  [(CHMetrics *)self sendPatternLibraryMetrics];

  [(CHMetrics *)self stopReporter];
}

- (void)sendPatternLibraryMetrics
{
  v32 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSMutableDictionary *)self->_patternLibraryData count];
    *buf = 136315906;
    v25 = "CHMetrics.mm";
    v26 = 1024;
    v27 = 468;
    v28 = 2080;
    v29 = "[CHMetrics sendPatternLibraryMetrics]";
    v30 = 2048;
    v31 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: sending %lu pattern library metrics", buf, 0x26u);
  }

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_patternLibraryData;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v22[0] = v10;
        v21[0] = @"patternID";
        v21[1] = @"Count";
        v11 = [(NSMutableDictionary *)self->_patternLibraryData objectForKeyedSubscript:v10];
        v22[1] = v11;
        v21[2] = @"SPI";
        v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSPI];
        v22[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

        reporterID = self->_reporterID;
        CAReportingClientSendMessage();
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_patternLibraryData removeAllObjects];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopReporter
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared)
  {
    if (kHMETScope)
    {
      v3 = *kHMETScope;
      if (!v3)
      {
LABEL_9:
        reporterID = self->_reporterID;
        CAReportingClientStopReporter();
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      engineID = self->_engineID;
      v8 = 136315906;
      v9 = "CHMetrics.mm";
      v10 = 1024;
      v11 = 395;
      v12 = 2080;
      v13 = "[CHMetrics stopReporter]";
      v14 = 2112;
      v15 = engineID;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: stopping reporter for engine %@", &v8, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (CHMetrics)initWithEngine:(id)engine audioSessionID:(unsigned int)d sessionIsShared:(BOOL)shared isSPI:(BOOL)i
{
  v90[1] = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v37.receiver = self;
  v37.super_class = CHMetrics;
  v11 = [(CHMetrics *)&v37 init];
  v12 = v11;
  if (!v11)
  {
LABEL_29:
    v25 = v12;
    goto LABEL_30;
  }

  if (kHMETScope)
  {
    v13 = *kHMETScope;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "CHMetrics.mm";
    *&buf[12] = 1024;
    *&buf[14] = 123;
    *&buf[18] = 2080;
    *&buf[20] = "[CHMetrics initWithEngine:audioSessionID:sessionIsShared:isSPI:]";
    *&buf[28] = 2112;
    *&buf[30] = engineCopy;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initializing metrics for engine %@", buf, 0x26u);
  }

LABEL_9:
  if ([v11 isEnabled])
  {
    v15 = dispatch_queue_create("CHMetricsDispatchQueue", 0);
    v16 = *(v11 + 4);
    *(v11 + 4) = v15;

    engineCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", engineCopy];
    v18 = *(v11 + 2);
    *(v11 + 2) = engineCopy;

    *(v11 + 1) = 1;
    *(v11 + 6) = d;
    v11[28] = shared;
    v11[29] = i;
    [v11 setReporter];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = *(v11 + 21);
    *(v11 + 21) = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = *(v11 + 20);
    *(v11 + 20) = v21;

    *(v11 + 5) = 0x3F3333333ECCCCCDLL;
    serverConfig = [engineCopy serverConfig];
    v24 = serverConfig;
    if (serverConfig)
    {
      [serverConfig hapticTransientIDs];
    }

    else
    {
      memset(buf, 0, 24);
    }

    v26 = *(v11 + 6);
    if (v26)
    {
      *(v11 + 7) = v26;
      operator delete(v26);
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
    }

    *(v11 + 3) = *buf;
    *(v11 + 8) = *&buf[16];
    memset(buf, 0, 24);

    serverConfig2 = [engineCopy serverConfig];
    v28 = serverConfig2;
    if (serverConfig2)
    {
      [serverConfig2 hapticContinuousSustainedIDs];
    }

    else
    {
      memset(buf, 0, 24);
    }

    v29 = *(v11 + 9);
    if (v29)
    {
      *(v11 + 10) = v29;
      operator delete(v29);
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
    }

    *(v11 + 72) = *buf;
    *(v11 + 11) = *&buf[16];
    memset(buf, 0, 24);

    serverConfig3 = [engineCopy serverConfig];
    v31 = serverConfig3;
    if (serverConfig3)
    {
      [serverConfig3 hapticContinuousNonsustainedIDs];
    }

    else
    {
      memset(buf, 0, 24);
    }

    v32 = *(v11 + 12);
    if (v32)
    {
      *(v11 + 13) = v32;
      operator delete(v32);
      *(v11 + 12) = 0;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
    }

    *(v11 + 6) = *buf;
    *(v11 + 14) = *&buf[16];
    memset(buf, 0, 24);

    *buf = 8021;
    *&buf[8] = @"MicroTap2";
    *&buf[16] = 11093;
    *&buf[24] = @"MicroTap3";
    *&buf[32] = 14165;
    v39 = @"MicroTap4";
    v40 = 17237;
    v41 = @"MicroTap5";
    v42 = 20309;
    v43 = @"MicroTap6";
    v44 = 23381;
    v45 = @"MicroTap7";
    v46 = 26453;
    v47 = @"MicroTap8";
    v48 = 29525;
    v49 = @"MicroTap9";
    v50 = 8022;
    v51 = @"MiniTap2";
    v52 = 11094;
    v53 = @"MiniTap3";
    v54 = 14166;
    v55 = @"MiniTap4";
    v56 = 17238;
    v57 = @"MiniTap5";
    v58 = 20310;
    v59 = @"MiniTap6";
    v60 = 23382;
    v61 = @"MiniTap7";
    v62 = 26454;
    v63 = @"MiniTap8";
    v64 = 29526;
    v65 = @"MiniTap9";
    v66 = 8023;
    v67 = @"FullTap2";
    v68 = 11095;
    v69 = @"FullTap3";
    v70 = 14167;
    v71 = @"FullTap4";
    v72 = 17239;
    v73 = @"FullTap5";
    v74 = 20311;
    v75 = @"FullTap6";
    v76 = 23383;
    v77 = @"FullTap7";
    v78 = 26455;
    v79 = @"FullTap8";
    v80 = 29527;
    v81 = @"FullTap9";
    v82 = 32512;
    v83 = @"KBKey";
    v84 = 32557;
    v85 = @"KBDown";
    v86 = 29485;
    v87 = @"KBModifier";
    v88 = 32556;
    v89 = @"WoT";
    std::__hash_table<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::__unordered_map_hasher<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::hash<AVHapticPlayerEventType>,std::equal_to<AVHapticPlayerEventType>,true>,std::__unordered_map_equal<AVHapticPlayerEventType,std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>,std::equal_to<AVHapticPlayerEventType>,std::hash<AVHapticPlayerEventType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerEventType,NSString * {__strong}>>>::__assign_unique<std::pair<AVHapticPlayerEventType const,NSString * {__strong}> const*>(v11 + 15, buf, v90);
    for (i = 440; i != -8; i -= 16)
    {
    }

    v34 = *(v12 + 23);
    *(v12 + 23) = 0;

    *(v12 + 176) = 0;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_30:

  v35 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_sessionIsShared && self->_reporterID >= 2)
  {
    CAReportingClientDestroyReporterID();
  }

  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    *buf = 136315906;
    v9 = "CHMetrics.mm";
    v10 = 1024;
    v11 = 206;
    v12 = 2080;
    v13 = "[CHMetrics dealloc]";
    v14 = 2112;
    v15 = engineID;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: deallocating metrics for engine %@", buf, 0x26u);
  }

LABEL_11:
  v7.receiver = self;
  v7.super_class = CHMetrics;
  [(CHMetrics *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleParamCurveEncountered
{
  if (self->_isSPI)
  {
    v2 = @"initParameterCurve_SPI";
  }

  else
  {
    v2 = @"initParameterCurve";
  }

  [(CHMetrics *)self logMetric:v2 value:&unk_28279D810];
}

- (void)handleInitForPlayer:(id)player events:(id)events isAdvanced:(BOOL)advanced patternID:(id)d
{
  playerCopy = player;
  eventsCopy = events;
  dCopy = d;
  if (self->_isSPI)
  {
    v13 = @"initPatternPlayer_SPI";
  }

  else
  {
    v13 = @"initPatternPlayer";
  }

  [(CHMetrics *)self logMetric:v13 value:&unk_28279D810];
  if (!dCopy)
  {
    v14 = [(CHMetrics *)self getIDForPlayer:playerCopy];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__CHMetrics_handleInitForPlayer_events_isAdvanced_patternID___block_invoke;
    v16[3] = &unk_2781C91E8;
    objc_copyWeak(&v19, &location);
    advancedCopy = advanced;
    v17 = v14;
    v18 = eventsCopy;
    v15 = v14;
    [(CHMetrics *)self dispatchOnLocal:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __61__CHMetrics_handleInitForPlayer_events_isAdvanced_patternID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [WeakRetained prepareAdvancedPlaybackData:v2 events:v3];
    }

    else
    {
      [WeakRetained preparePlaybackData:v2 events:v3];
    }
  }
}

- (void)handleActionForPlayer:(id)player action:(int64_t)action time:(double)time isAdvanced:(BOOL)advanced
{
  playerCopy = player;
  v11 = [(CHMetrics *)self getIDForPlayer:playerCopy];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__CHMetrics_handleActionForPlayer_action_time_isAdvanced___block_invoke;
  v13[3] = &unk_2781C9210;
  objc_copyWeak(v15, &location);
  advancedCopy = advanced;
  v14 = v11;
  v15[1] = action;
  v15[2] = *&time;
  v12 = v11;
  [(CHMetrics *)self dispatchOnLocal:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __58__CHMetrics_handleActionForPlayer_action_time_isAdvanced___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    *&v4 = v4;
    if (*(a1 + 64) == 1)
    {
      [WeakRetained markAdvancedPlaybackAction:v2 action:v3 time:v4];
    }

    else
    {
      [WeakRetained markPlaybackAction:v2 action:v3 time:v4];
    }
  }
}

- (void)handleFinishedForPlayersAtTime:(double)time
{
  v19 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    *buf = 136315906;
    v12 = "CHMetrics.mm";
    v13 = 1024;
    v14 = 324;
    v15 = 2080;
    v16 = "[CHMetrics handleFinishedForPlayersAtTime:]";
    v17 = 2112;
    v18 = engineID;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: flushing all player data for engine %@", buf, 0x26u);
  }

LABEL_8:
  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CHMetrics_handleFinishedForPlayersAtTime___block_invoke;
  v9[3] = &unk_2781C9238;
  objc_copyWeak(v10, buf);
  v10[1] = *&time;
  [(CHMetrics *)self dispatchOnLocal:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__CHMetrics_handleFinishedForPlayersAtTime___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = WeakRetained[20];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(a1 + 40);
          *&v8 = v8;
          [v3 sendDetailedMetricsForPlayerID:*(*(&v10 + 1) + 8 * v7++) endTime:{v8, v10}];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getIDForPlayer:(id)player
{
  player = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", player];

  return player;
}

- (void)dispatchOnLocal:(id)local
{
  v21 = *MEMORY[0x277D85DE8];
  localCopy = local;
  if (kHMETScope)
  {
    if (*(kHMETScope + 8))
    {
      v5 = *kHMETScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = MEMORY[0x21606F540](localCopy);
          *buf = 136315906;
          v14 = "CHMetrics.mm";
          v15 = 1024;
          v16 = 423;
          v17 = 2080;
          v18 = "[CHMetrics dispatchOnLocal:]";
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p async...>", buf, 0x26u);
        }
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CHMetrics_dispatchOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v12 = localCopy;
  v9 = localCopy;
  dispatch_async(dispatchQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __29__CHMetrics_dispatchOnLocal___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHMETScope)
  {
    if (*(kHMETScope + 8))
    {
      v1 = *kHMETScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v4 = 136315650;
          v5 = "CHMetrics.mm";
          v6 = 1024;
          v7 = 426;
          v8 = 2080;
          v9 = "[CHMetrics dispatchOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block async dispatch complete>", &v4, 0x1Cu);
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)logMetric:(id)metric value:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  valueCopy = value;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v14 = "CHMetrics.mm";
    v15 = 1024;
    v16 = 432;
    v17 = 2080;
    v18 = "[CHMetrics logMetric:value:]";
    v19 = 2112;
    v20 = metricCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics for %@", buf, 0x26u);
  }

LABEL_8:
  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{valueCopy, metricCopy, 0}];
  reporterID = self->_reporterID;
  CAReportingClientSendMessage();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logPowerLogMetric:(id)metric
{
  v20 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "CHMetrics.mm";
    v14 = 1024;
    v15 = 439;
    v16 = 2080;
    v17 = "[CHMetrics logPowerLogMetric:]";
    v18 = 2112;
    v19 = metricCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging PowerLog metrics for %@", buf, 0x26u);
  }

LABEL_8:
  v10 = @"EngineState";
  v11 = metricCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  reporterID = self->_reporterID;
  CAReportingClientSendMessage();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addPatternLibraryMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v4 = [(NSMutableDictionary *)self->_patternLibraryData objectForKey:metricCopy];

    if (v4)
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = [(NSMutableDictionary *)self->_patternLibraryData objectForKeyedSubscript:metricCopy];
      v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
      [(NSMutableDictionary *)self->_patternLibraryData setObject:v7 forKeyedSubscript:metricCopy];
    }

    else
    {
      [(NSMutableDictionary *)self->_patternLibraryData setObject:&unk_28279D810 forKeyedSubscript:metricCopy];
    }
  }
}

- (void)logPatternLibraryMetric:(id)metric
{
  v22 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy && [metricCopy length])
  {
    if (kHMETScope)
    {
      v6 = *kHMETScope;
      if (!v6)
      {
LABEL_10:
        v8 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isSPI, @"patternID", @"Count", @"SPI", v5, &unk_28279D810}];
        v13[2] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:3];

        reporterID = self->_reporterID;
        CAReportingClientSendMessage();

        goto LABEL_11;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v15 = "CHMetrics.mm";
      v16 = 1024;
      v17 = 489;
      v18 = 2080;
      v19 = "[CHMetrics logPatternLibraryMetric:]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics for pattern library %@", buf, 0x26u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendDetailedMetricsForPlayerID:(id)d endTime:(float)time
{
  v104 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v69 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:?];
  v68 = [v69 objectForKeyedSubscript:@"transientData"];
  v67 = [v69 objectForKeyedSubscript:@"continuousData"];
  v6 = [v69 objectForKeyedSubscript:@"isAdvanced"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v75 = [v69 objectForKeyedSubscript:@"advancedPlayback"];
    if (!v75 || ([v75 objectForKeyedSubscript:@"playbackLastAction"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v91 = "CHMetrics.mm";
      v92 = 1024;
      v93 = 530;
      v94 = 2080;
      v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - no advanced playback actions recorded";
      goto LABEL_77;
    }

    v9 = [v75 objectForKeyedSubscript:@"firstStartTime"];
    [v9 floatValue];
    v11 = v10;

    if (v11 > time)
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v64 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v91 = "CHMetrics.mm";
      v92 = 1024;
      v93 = 534;
      v94 = 2080;
      v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - first start time > end time";
LABEL_77:
      _os_log_impl(&dword_21569A000, allValues2, OS_LOG_TYPE_DEBUG, v18, buf, 0x1Cu);
      goto LABEL_78;
    }

    [(CHMetrics *)self getLoopsForAdvancedPlayer:v69 endTime:time];
    v21 = v20;
    v22 = [v69 objectForKeyedSubscript:@"advancedPlayback"];
    [(CHMetrics *)self resetAdvancedPlaybackData:v22];
  }

  else
  {
    v75 = [v69 objectForKeyedSubscript:@"playback"];
    if (!v75 || ([v75 objectForKeyedSubscript:@"playbackLastAction"], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v91 = "CHMetrics.mm";
      v92 = 1024;
      v93 = 516;
      v94 = 2080;
      v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - no playback actions recorded";
      goto LABEL_77;
    }

    v14 = [v75 objectForKeyedSubscript:@"firstStartTime"];
    [v14 floatValue];
    v16 = v15;

    if (v16 > time)
    {
      if (kHMETScope)
      {
        allValues2 = *kHMETScope;
        if (!allValues2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        allValues2 = MEMORY[0x277D86220];
        v65 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(allValues2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_78;
      }

      *buf = 136315650;
      v91 = "CHMetrics.mm";
      v92 = 1024;
      v93 = 520;
      v94 = 2080;
      v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v18 = "%25s:%-5d %s: skipping metrics - first start time > end time";
      goto LABEL_77;
    }

    [(CHMetrics *)self getLoopsForPlayer:v69 endTime:time];
    v21 = v23;
    v22 = [v69 objectForKeyedSubscript:@"playback"];
    [(CHMetrics *)self resetPlaybackData:v22];
  }

  if (!kHMETScope)
  {
    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
    goto LABEL_32;
  }

  v24 = *kHMETScope;
  if (v24)
  {
LABEL_32:
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      engineID = self->_engineID;
      v91 = "CHMetrics.mm";
      v92 = 1024;
      v93 = 541;
      v94 = 2080;
      *buf = 136316674;
      v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
      v96 = 2112;
      v97 = engineID;
      v98 = 2112;
      v99 = dCopy;
      v100 = 2048;
      v101 = [v68 count];
      v102 = 2048;
      v103 = [v67 count];
      _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d %s: sending metrics for engine %@ player %@ - %lu transient, %lu continuous", buf, 0x44u);
    }
  }

  v75 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSPI];
  if (![v68 count])
  {
    goto LABEL_53;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  allValues = [v68 allValues];
  obj = allValues;
  v29 = [allValues countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (!v29)
  {
    goto LABEL_52;
  }

  v72 = *v81;
  v30 = fmax(v21, 1.0);
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v81 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v80 + 1) + 8 * i);
      v87[0] = @"EventType";
      v33 = [v32 objectForKeyedSubscript:?];
      v88[0] = v33;
      v87[1] = @"Intensity";
      v34 = [v32 objectForKeyedSubscript:@"Intensity"];
      v88[1] = v34;
      v87[2] = @"EventCount";
      v35 = MEMORY[0x277CCABB0];
      v36 = [v32 objectForKeyedSubscript:@"EventCount"];
      [v36 floatValue];
      v38 = [v35 numberWithInt:(v30 * v37)];
      v87[3] = @"SPI";
      v88[2] = v38;
      v88[3] = v75;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];

      if (kHMETScope)
      {
        v40 = *kHMETScope;
        if (!v40)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v40 = MEMORY[0x277D86220];
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v91 = "CHMetrics.mm";
        v92 = 1024;
        v93 = 550;
        v94 = 2080;
        v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
        v96 = 2112;
        v97 = v39;
        _os_log_impl(&dword_21569A000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics data for HapticTransient : %@", buf, 0x26u);
      }

LABEL_48:
      reporterID = self->_reporterID;
      CAReportingClientSendMessage();
      if (self->_retainDataForTesting)
      {
        v43 = [(NSString *)v39 mutableCopy];
        [(CHMetrics *)self retainData:v43 forTestingPlayer:dCopy];
      }
    }

    allValues = obj;
    v29 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
  }

  while (v29);
LABEL_52:

LABEL_53:
  if ([v67 count])
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    allValues2 = [v67 allValues];
    obja = allValues2;
    v44 = [allValues2 countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (!v44)
    {
      goto LABEL_78;
    }

    v73 = *v77;
    v45 = fmax(v21, 1.0);
    while (1)
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v77 != v73)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v76 + 1) + 8 * j);
        v84[0] = @"EventType";
        v48 = [v47 objectForKeyedSubscript:?];
        v85[0] = v48;
        v84[1] = @"Intensity";
        v49 = [v47 objectForKeyedSubscript:?];
        v85[1] = v49;
        v84[2] = @"EventCount";
        v50 = MEMORY[0x277CCABB0];
        v51 = [v47 objectForKeyedSubscript:?];
        [v51 floatValue];
        v53 = [v50 numberWithInt:(v45 * v52)];
        v85[2] = v53;
        v84[3] = @"Duration";
        v54 = MEMORY[0x277CCABB0];
        v55 = [v47 objectForKeyedSubscript:?];
        [v55 floatValue];
        *&v57 = v21 * v56;
        v58 = [v54 numberWithFloat:v57];
        v84[4] = @"SPI";
        v85[3] = v58;
        v85[4] = v75;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:5];

        if (kHMETScope)
        {
          v60 = *kHMETScope;
          if (!v60)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v60 = MEMORY[0x277D86220];
          v61 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v91 = "CHMetrics.mm";
          v92 = 1024;
          v93 = 565;
          v94 = 2080;
          v95 = "[CHMetrics sendDetailedMetricsForPlayerID:endTime:]";
          v96 = 2112;
          v97 = v59;
          _os_log_impl(&dword_21569A000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: logging metrics data for HapticContinuous : %@", buf, 0x26u);
        }

LABEL_66:
        v62 = self->_reporterID;
        CAReportingClientSendMessage();
        if (self->_retainDataForTesting)
        {
          v63 = [(NSString *)v59 mutableCopy];
          [(CHMetrics *)self retainData:v63 forTestingPlayer:dCopy];
        }
      }

      allValues2 = obja;
      v44 = [obja countByEnumeratingWithState:&v76 objects:v86 count:16];
      if (!v44)
      {
LABEL_78:

        break;
      }
    }
  }

LABEL_79:

  v66 = *MEMORY[0x277D85DE8];
}

- (void)markPlaybackAction:(id)action action:(int64_t)a4 time:(float)time
{
  v59 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (kHMETScope)
  {
    v9 = *kHMETScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v47 = 136316418;
    v48 = "CHMetrics.mm";
    v49 = 1024;
    v50 = 576;
    v51 = 2080;
    v52 = "[CHMetrics markPlaybackAction:action:time:]";
    v53 = 2048;
    timeCopy = *&a4;
    v55 = 2112;
    v56 = *&engineID;
    v57 = 2048;
    v58 = actionCopy;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking action %ld for engine %@ player %p", &v47, 0x3Au);
  }

LABEL_8:
  +[CHMetrics currentTime];
  if (v12 > time)
  {
    +[CHMetrics currentTime];
    time = v13;
  }

  v14 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:actionCopy];
  v15 = [v14 objectForKeyedSubscript:@"playback"];
  v16 = [v15 objectForKeyedSubscript:@"playbackLastAction"];
  v17 = [v15 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v17 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (*&a4 != 0.0)
    {
      goto LABEL_17;
    }

    v19 = [v15 objectForKeyedSubscript:@"firstStartTime"];
    [v19 floatValue];
    if (v20 < 0.0)
    {
    }

    else
    {
      v21 = [v15 objectForKeyedSubscript:@"firstStartTime"];
      [v21 floatValue];
      v23 = time < v22;

      if (!v23)
      {
LABEL_17:
        if (v16)
        {
          [(PlaybackAction *)v16 time];
          if (time < v26)
          {
            if (kHMETScope)
            {
              v27 = *kHMETScope;
              if (!v27)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v27 = MEMORY[0x277D86220];
              v41 = MEMORY[0x277D86220];
            }

            v42 = v27;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v47 = 136316162;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 612;
              v51 = 2080;
              v52 = "[CHMetrics markPlaybackAction:action:time:]";
              v53 = 2048;
              timeCopy = time;
              v55 = 2048;
              v56 = v43;
              _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: action time out of order %g < %g", &v47, 0x30u);
            }

LABEL_39:
LABEL_44:
            [v15 setObject:&unk_28279D810 forKeyedSubscript:@"edgeCase"];
            goto LABEL_45;
          }

          action = [(PlaybackAction *)v16 action];
          if (a4 == 3 && !action || !([(PlaybackAction *)v16 action]| a4))
          {
            [(PlaybackAction *)v16 time];
            v32 = v31;
            [(PlaybackAction *)v16 setAction:a4];
            *&v33 = time;
            [(PlaybackAction *)v16 setTime:v33];
            v34 = (time - v32) + 0.0;
LABEL_34:
            v36 = MEMORY[0x277CCABB0];
            v37 = [v15 objectForKeyedSubscript:@"playbackDuration"];
            [v37 floatValue];
            *&v39 = v34 + v38;
            v40 = [v36 numberWithFloat:v39];
            [v15 setObject:v40 forKeyedSubscript:@"playbackDuration"];

            goto LABEL_45;
          }

          action2 = [(PlaybackAction *)v16 action];
          if (*&a4 != 0.0 || action2 != 3)
          {
            if (kHMETScope)
            {
              v42 = *kHMETScope;
              if (!v42)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v42 = MEMORY[0x277D86220];
              v46 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v47 = 136315650;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 628;
              v51 = 2080;
              v52 = "[CHMetrics markPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: unknown case", &v47, 0x1Cu);
            }

            goto LABEL_39;
          }
        }

        else
        {
          v16 = objc_alloc_init(PlaybackAction);
          [v15 setObject:v16 forKeyedSubscript:@"playbackLastAction"];
          if (*&a4 != 0.0)
          {
            if (kHMETScope)
            {
              v28 = *kHMETScope;
              if (!v28)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = MEMORY[0x277D86220];
              v44 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v47 = 136315650;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 605;
              v51 = 2080;
              v52 = "[CHMetrics markPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: did not see startAtTime as first call", &v47, 0x1Cu);
            }

            goto LABEL_44;
          }
        }

        [(PlaybackAction *)v16 setAction:0];
        v34 = 0.0;
        *&v35 = time;
        [(PlaybackAction *)v16 setTime:v35];
        goto LABEL_34;
      }
    }

    *&v24 = time;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v15 setObject:v25 forKeyedSubscript:@"firstStartTime"];

    goto LABEL_17;
  }

LABEL_45:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)markAdvancedPlaybackAction:(id)action action:(int64_t)a4 time:(float)time
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(action);
  if (kHMETScope)
  {
    v9 = *kHMETScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v47 = 136316418;
    v48 = "CHMetrics.mm";
    v49 = 1024;
    v50 = 639;
    v51 = 2080;
    v52 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
    v53 = 2048;
    timeCopy = *&a4;
    v55 = 2112;
    timeCopy2 = *&engineID;
    v57 = 2112;
    v58 = v8;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking advanced action %ld for engine %@ player %@", &v47, 0x3Au);
  }

LABEL_8:
  +[CHMetrics currentTime];
  if (v12 > time)
  {
    +[CHMetrics currentTime];
    time = v13;
  }

  v14 = [(NSMutableDictionary *)self->_playerData objectForKeyedSubscript:*&v8];
  v15 = [v14 objectForKeyedSubscript:@"advancedPlayback"];
  v16 = [v15 objectForKeyedSubscript:@"playbackLastAction"];
  v17 = [v15 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v17 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (*&a4 != 0.0)
    {
      goto LABEL_17;
    }

    v19 = [v15 objectForKeyedSubscript:@"firstStartTime"];
    [v19 floatValue];
    if (v20 < 0.0)
    {
    }

    else
    {
      v21 = [v15 objectForKeyedSubscript:@"firstStartTime"];
      [v21 floatValue];
      v23 = time < v22;

      if (!v23)
      {
LABEL_17:
        if (v16)
        {
          [(PlaybackAction *)v16 time];
          if (time < v26)
          {
            if (kHMETScope)
            {
              v27 = *kHMETScope;
              if (!v27)
              {
LABEL_36:
                [v15 setObject:&unk_28279D810 forKeyedSubscript:@"edgeCase"];
                goto LABEL_46;
              }
            }

            else
            {
              v27 = MEMORY[0x277D86220];
              v33 = MEMORY[0x277D86220];
            }

            v34 = v27;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v47 = 136316162;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 675;
              v51 = 2080;
              v52 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              v53 = 2048;
              timeCopy = time;
              v55 = 2048;
              timeCopy2 = v35;
              _os_log_impl(&dword_21569A000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: action time out of order %g < %g", &v47, 0x30u);
            }

            goto LABEL_36;
          }

          v29 = 0.0;
          if ([(PlaybackAction *)v16 action]== 1 && (a4 | 2) == 2)
          {
            [(PlaybackAction *)v16 time];
            v29 = time - v30;
            if (kHMETScope)
            {
              v31 = *kHMETScope;
              if (!v31)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v31 = MEMORY[0x277D86220];
              v37 = MEMORY[0x277D86220];
            }

            v38 = v31;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [(PlaybackAction *)v16 time];
              v47 = 136316418;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 683;
              v51 = 2080;
              v52 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              v53 = 2048;
              timeCopy = v29;
              v55 = 2048;
              timeCopy2 = time;
              v57 = 2048;
              v58 = v39;
              _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: paused duration: %g = %g - %g", &v47, 0x3Au);
            }
          }
        }

        else
        {
          v16 = objc_alloc_init(PlaybackAction);
          [v15 setObject:v16 forKeyedSubscript:@"playbackLastAction"];
          if (*&a4 != 0.0)
          {
            if (kHMETScope)
            {
              v28 = *kHMETScope;
              if (!v28)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v28 = MEMORY[0x277D86220];
              v36 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v47 = 136315650;
              v48 = "CHMetrics.mm";
              v49 = 1024;
              v50 = 667;
              v51 = 2080;
              v52 = "[CHMetrics markAdvancedPlaybackAction:action:time:]";
              _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: edge case: did not see startAtTime as first call", &v47, 0x1Cu);
            }

            goto LABEL_36;
          }

          [(PlaybackAction *)v16 setAction:0];
          v29 = 0.0;
          *&v32 = time;
          [(PlaybackAction *)v16 setTime:v32];
        }

LABEL_45:
        v40 = MEMORY[0x277CCABB0];
        v41 = [v15 objectForKeyedSubscript:@"pausedDuration"];
        [v41 floatValue];
        *&v43 = v29 + v42;
        v44 = [v40 numberWithFloat:v43];
        [v15 setObject:v44 forKeyedSubscript:@"pausedDuration"];

        [(PlaybackAction *)v16 setAction:a4];
        *&v45 = time;
        [(PlaybackAction *)v16 setTime:v45];
        goto LABEL_46;
      }
    }

    *&v24 = time;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v15 setObject:v25 forKeyedSubscript:@"firstStartTime"];

    goto LABEL_17;
  }

LABEL_46:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)resetPlaybackData:(id)data
{
  dataCopy = data;
  [dataCopy setObject:&unk_28279D7F0 forKeyedSubscript:@"playbackDuration"];
  [dataCopy setObject:0 forKeyedSubscript:@"playbackLastAction"];
  [dataCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"edgeCase"];
  [dataCopy setObject:&unk_28279D800 forKeyedSubscript:@"firstStartTime"];
}

- (void)resetAdvancedPlaybackData:(id)data
{
  dataCopy = data;
  [dataCopy setObject:&unk_28279D7F0 forKeyedSubscript:@"pausedDuration"];
  [dataCopy setObject:0 forKeyedSubscript:@"playbackLastAction"];
  [dataCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"edgeCase"];
  [dataCopy setObject:&unk_28279D800 forKeyedSubscript:@"firstStartTime"];
}

- (void)prepareData:(id)data events:(id)events
{
  v93 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v8)
  {
    v9 = *v82;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v81 + 1) + 8 * i);
        if (![v11 eventCategory])
        {
          fixedParamCount = [v11 fixedParamCount];
          if (fixedParamCount < 1)
          {
            v18 = 0.0;
          }

          else
          {
            v13 = fixedParamCount + 1;
            v14 = 16 * fixedParamCount;
            v15 = 0.0;
            do
            {
              v16 = [v11 fixedParams] + v14;
              v17 = *(v16 - 16);
              if (v17 == 2012 || v17 == 1012)
              {
                v15 = pow(1.8204, (*(v16 - 8) * 10.0)) * 0.02;
              }

              --v13;
              v14 -= 16;
            }

            while (v13 > 1);
            v18 = v15;
          }

          [v6 doubleValue];
          v20 = v19;
          [v11 time];
          v22 = v21;
          [v11 duration];
          if (v20 < v22 + v23 + v18)
          {
            v24 = MEMORY[0x277CCABB0];
            [v11 time];
            v26 = v25;
            [v11 duration];
            v28 = [v24 numberWithDouble:v26 + v27 + v18];

            v6 = v28;
          }

          eventType = [v11 eventType];
          v78 = 0;
          v79 = 0;
          v80 = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v78, self->_hapticContinuousSustainedIDs.__begin_, self->_hapticContinuousSustainedIDs.__end_, self->_hapticContinuousSustainedIDs.__end_ - self->_hapticContinuousSustainedIDs.__begin_);
          if ([(CHMetrics *)self isEventType:eventType inList:&v78])
          {
            v30 = 1;
          }

          else
          {
            eventType2 = [v11 eventType];
            __p = 0;
            v76 = 0;
            v77 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, self->_hapticContinuousNonsustainedIDs.__begin_, self->_hapticContinuousNonsustainedIDs.__end_, self->_hapticContinuousNonsustainedIDs.__end_ - self->_hapticContinuousNonsustainedIDs.__begin_);
            v30 = [(CHMetrics *)self isEventType:eventType2 inList:&__p];
            if (__p)
            {
              v76 = __p;
              operator delete(__p);
            }
          }

          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (v30)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0.0;
            while (v33 < [v11 fixedParamCount])
            {
              if (*([v11 fixedParams] + v32) == 2000)
              {
                v35 = *([v11 fixedParams] + v32 + 8);
                v34 = 1;
              }

              ++v33;
              v32 += 16;
            }

            eventType3 = [v11 eventType];
            if (v34)
            {
              *&v43 = v35;
            }

            else
            {
              *&v43 = 1.0;
            }

            v44 = [(CHMetrics *)self continousDictionary:v71 slot:eventType3 >> 8 intensity:v43];
            v45 = MEMORY[0x277CCABB0];
            v46 = [v44 objectForKeyedSubscript:@"Duration"];
            [v46 floatValue];
            v48 = v47;
            [v11 duration];
            v50 = v49 + v48 + v18;
            *&v50 = v50;
            v51 = [v45 numberWithFloat:v50];
            [v44 setObject:v51 forKeyedSubscript:@"Duration"];

            v52 = MEMORY[0x277CCABB0];
            v53 = [v44 objectForKeyedSubscript:@"EventCount"];
            v54 = [v52 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
            [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
          }

          else
          {
            eventType4 = [v11 eventType];
            v72 = 0;
            v73 = 0;
            v74 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v72, self->_hapticTransientIDs.__begin_, self->_hapticTransientIDs.__end_, self->_hapticTransientIDs.__end_ - self->_hapticTransientIDs.__begin_);
            v37 = [(CHMetrics *)self isEventType:eventType4 inList:&v72];
            if (v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            if (v37)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0.0;
              while (v40 < [v11 fixedParamCount])
              {
                if (*([v11 fixedParams] + v38) == 2000)
                {
                  v41 = *([v11 fixedParams] + v38 + 8);
                  v39 = 1;
                }

                ++v40;
                v38 += 16;
              }

              eventType5 = [v11 eventType];
              if (v39)
              {
                *&v60 = v41;
              }

              else
              {
                *&v60 = 1.0;
              }

              v44 = [(CHMetrics *)self transientDictionary:v70 index:eventType5 >> 8 intensity:v60];
              v61 = MEMORY[0x277CCABB0];
              v53 = [v44 objectForKeyedSubscript:@"EventCount"];
              v54 = [v61 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
              [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
            }

            else
            {
              *buf = [v11 eventType];
              if (!std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(&self->_legacyHapticTransientEventTypeMap.__table_.__bucket_list_.__ptr_, buf))
              {
                continue;
              }

              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0.0;
              while (v57 < [v11 fixedParamCount])
              {
                if (*([v11 fixedParams] + v55) == 2000)
                {
                  v58 = *([v11 fixedParams] + v55 + 8);
                  v56 = 1;
                }

                ++v57;
                v55 += 16;
              }

              eventType6 = [v11 eventType];
              if (v56)
              {
                *&v63 = v58;
              }

              else
              {
                *&v63 = 1.0;
              }

              v44 = [(CHMetrics *)self legacyTransientDictionary:v70 eventType:eventType6 intensity:v63];
              v64 = MEMORY[0x277CCABB0];
              v53 = [v44 objectForKeyedSubscript:@"EventCount"];
              v54 = [v64 numberWithInteger:{(objc_msgSend(v53, "intValue") + 1)}];
              [v44 setObject:v54 forKeyedSubscript:@"EventCount"];
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v8);
  }

  if (kHMETScope)
  {
    v65 = *kHMETScope;
    if (!v65)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v65 = MEMORY[0x277D86220];
    v66 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "CHMetrics.mm";
    v86 = 1024;
    v87 = 795;
    v88 = 2080;
    v89 = "[CHMetrics prepareData:events:]";
    v90 = 2112;
    v91 = v6;
    _os_log_impl(&dword_21569A000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: calculated pattern duration: %@", buf, 0x26u);
  }

LABEL_65:
  [dataCopy setObject:v71 forKeyedSubscript:@"continuousData"];
  [dataCopy setObject:v70 forKeyedSubscript:@"transientData"];
  [dataCopy setObject:v6 forKeyedSubscript:@"patternDuration"];

  v67 = *MEMORY[0x277D85DE8];
}

- (void)preparePlaybackData:(id)data events:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v14 = 136316162;
    v15 = "CHMetrics.mm";
    v16 = 1024;
    v17 = 805;
    v18 = 2080;
    v19 = "[CHMetrics preparePlaybackData:events:]";
    v20 = 2112;
    v21 = engineID;
    v22 = 2112;
    v23 = dataCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: preparing playback data for engine %@ player %@", &v14, 0x30u);
  }

LABEL_8:
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isAdvanced"];
  [(CHMetrics *)self prepareData:v11 events:eventsCopy];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:v12 forKeyedSubscript:@"playback"];
  [(CHMetrics *)self resetPlaybackData:v12];
  [(NSMutableDictionary *)self->_playerData setObject:v11 forKeyedSubscript:dataCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)prepareAdvancedPlaybackData:(id)data events:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v14 = 136316162;
    v15 = "CHMetrics.mm";
    v16 = 1024;
    v17 = 817;
    v18 = 2080;
    v19 = "[CHMetrics prepareAdvancedPlaybackData:events:]";
    v20 = 2112;
    v21 = engineID;
    v22 = 2112;
    v23 = dataCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: preparing advanced playback data for engine %@ player %@", &v14, 0x30u);
  }

LABEL_8:
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isAdvanced"];
  [(CHMetrics *)self prepareData:v11 events:eventsCopy];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:v12 forKeyedSubscript:@"advancedPlayback"];
  [(CHMetrics *)self resetAdvancedPlaybackData:v12];
  [(NSMutableDictionary *)self->_playerData setObject:v11 forKeyedSubscript:dataCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removePlaybackData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v9 = 136316162;
    v10 = "CHMetrics.mm";
    v11 = 1024;
    v12 = 829;
    v13 = 2080;
    v14 = "[CHMetrics removePlaybackData:]";
    v15 = 2112;
    v16 = engineID;
    v17 = 2112;
    v18 = dataCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: removing playback data for engine %@ player %@", &v9, 0x30u);
  }

LABEL_8:
  [(NSMutableDictionary *)self->_playerData removeObjectForKey:dataCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (float)getLoopsForPlayer:(id)player endTime:(double)time
{
  v33 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v6 = [playerCopy objectForKeyedSubscript:@"playback"];
  v7 = [v6 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    v11 = [v6 objectForKeyedSubscript:@"playbackDuration"];
    [v11 floatValue];
    v13 = v12;

    v14 = [v6 objectForKeyedSubscript:@"firstStartTime"];
    [v14 floatValue];
    v16 = v15;

    v17 = [playerCopy objectForKeyedSubscript:@"patternDuration"];
    [v17 floatValue];
    v19 = v18;

    v20 = [v6 objectForKeyedSubscript:@"playbackLastAction"];
    v9 = v20;
    v21 = time - v16;
    if (v13 == 0.0 && ![v20 action]&& v19 > v21)
    {
      v13 = v21;
LABEL_26:
      v10 = v13 / v19;
LABEL_27:

      goto LABEL_28;
    }

    if (v13 < (v19 + v21) && ![v9 action])
    {
      v13 = v13 + v19;
      goto LABEL_26;
    }

    if (v13 < v21 && [v9 action]== 3 || [v9 action]== 3)
    {
      goto LABEL_26;
    }

    if (kHMETScope)
    {
      v22 = *kHMETScope;
      if (!v22)
      {
LABEL_25:
        v13 = 0.0;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "CHMetrics.mm";
      v29 = 1024;
      v30 = 861;
      v31 = 2080;
      v32 = "[CHMetrics getLoopsForPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no case found", &v27, 0x1Cu);
    }

    goto LABEL_25;
  }

  if (!kHMETScope)
  {
    v9 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
LABEL_18:
    v10 = 1.0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "CHMetrics.mm";
      v29 = 1024;
      v30 = 837;
      v31 = 2080;
      v32 = "[CHMetrics getLoopsForPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no loop multiplier, log once", &v27, 0x1Cu);
    }

    goto LABEL_27;
  }

  v9 = *kHMETScope;
  if (v9)
  {
    goto LABEL_18;
  }

  v10 = 1.0;
LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

- (float)getLoopsForAdvancedPlayer:(id)player endTime:(double)time
{
  v33 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v6 = [playerCopy objectForKeyedSubscript:@"advancedPlayback"];
  v7 = [v6 objectForKeyedSubscript:@"edgeCase"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if (kHMETScope)
    {
      v9 = *kHMETScope;
      if (!v9)
      {
LABEL_14:
        v23 = 1.0;
        goto LABEL_15;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "CHMetrics.mm";
      v29 = 1024;
      v30 = 871;
      v31 = 2080;
      v32 = "[CHMetrics getLoopsForAdvancedPlayer:endTime:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: edge case - no loop multiplier, log once", &v27, 0x1Cu);
    }

    goto LABEL_14;
  }

  v10 = [v6 objectForKeyedSubscript:@"firstStartTime"];
  [v10 floatValue];
  v12 = v11;

  v13 = [playerCopy objectForKeyedSubscript:@"patternDuration"];
  [v13 floatValue];
  v15 = v14;

  v16 = [v6 objectForKeyedSubscript:@"pausedDuration"];
  [v16 floatValue];
  v18 = v17;

  v19 = [v6 objectForKeyedSubscript:@"playbackLastAction"];
  if ([v19 action] == 3 && (objc_msgSend(v19, "time"), v20 < time))
  {
    [v19 time];
    v22 = (v21 - v12) - v18;
  }

  else
  {
    v22 = time - v12 - v18;
  }

  v23 = v22 / v15;

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)isEventType:(unint64_t)type inList:(vector<unsigned)long
{
  begin = a4->__begin_;
  end = a4->__end_;
  if (a4->__begin_ != end)
  {
    while (*begin != type)
    {
      if (++begin == end)
      {
        begin = a4->__end_;
        return begin != end;
      }
    }
  }

  return begin != end;
}

- (id)continousDictionary:(id)dictionary slot:(unint64_t)slot intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  v9 = [(CHMetrics *)self continuousSharpnessSlotKeyFromSlotValue:slot];
  *&v10 = intensity;
  v11 = [(CHMetrics *)self intensityBinKeyFromValue:v10];
  v12 = [v9 stringByAppendingString:v11];
  v13 = [dictionaryCopy objectForKey:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:v9 forKeyedSubscript:@"EventType"];
    [v13 setObject:v11 forKeyedSubscript:@"Intensity"];
    [v13 setObject:&unk_28279D7F0 forKeyedSubscript:@"Duration"];
    [v13 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)legacyTransientDictionary:(id)dictionary eventType:(unint64_t)type intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v9 = std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::find<AVHapticPlayerParameterType>(&self->_legacyHapticTransientEventTypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = v9[3];
  *&v11 = intensity;
  v12 = [(CHMetrics *)self intensityBinKeyFromValue:v11];
  v13 = [v10 stringByAppendingString:v12];
  v14 = [dictionaryCopy objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:v10 forKeyedSubscript:@"EventType"];
    [v14 setObject:v12 forKeyedSubscript:@"Intensity"];
    [v14 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v14 forKey:v13];
  }

  return v14;
}

- (id)transientDictionary:(id)dictionary index:(unint64_t)index intensity:(float)intensity
{
  dictionaryCopy = dictionary;
  v9 = [(CHMetrics *)self transientSharpnessIndexKeyFromIndexValue:index];
  *&v10 = intensity;
  v11 = [(CHMetrics *)self intensityBinKeyFromValue:v10];
  v12 = [v9 stringByAppendingString:v11];
  v13 = [dictionaryCopy objectForKey:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:v9 forKeyedSubscript:@"EventType"];
    [v13 setObject:v11 forKeyedSubscript:@"Intensity"];
    [v13 setObject:&unk_28279D828 forKeyedSubscript:@"EventCount"];
    [dictionaryCopy setObject:v13 forKey:v12];
  }

  return v13;
}

- (id)intensityBinKeyFromValue:(float)value
{
  if (self->_CHMetricsIntensityBin1To2Value > value)
  {
    return @"IntensityBin1";
  }

  if (self->_CHMetricsIntensityBin2To3Value <= value)
  {
    return @"IntensityBin3";
  }

  return @"IntensityBin2";
}

- (void)setMetricsTestModeEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (kHMETScope)
  {
    v3 = *kHMETScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "CHMetrics.mm";
    v10 = 1024;
    v11 = 992;
    v12 = 2080;
    v13 = "[CHMetrics setMetricsTestModeEnabled]";
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: test mode ENABLED", &v8, 0x1Cu);
  }

LABEL_8:
  self->_retainDataForTesting = 1;
  if (!self->_dataForTesting)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataForTesting = self->_dataForTesting;
    self->_dataForTesting = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getMetricsForPlayer:(id)player
{
  v22 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (kHMETScope)
  {
    v5 = *kHMETScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    engineID = self->_engineID;
    v12 = 136316162;
    v13 = "CHMetrics.mm";
    v14 = 1024;
    v15 = 1001;
    v16 = 2080;
    v17 = "[CHMetrics getMetricsForPlayer:]";
    v18 = 2112;
    v19 = engineID;
    v20 = 2112;
    v21 = playerCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: retrieving metrics for engine %@ player %@", &v12, 0x30u);
  }

LABEL_8:
  v8 = [(CHMetrics *)self getIDForPlayer:playerCopy];
  v9 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)retainData:(id)data forTestingPlayer:(id)player
{
  v60 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playerCopy = player;
  if (kHMETScope)
  {
    v8 = *kHMETScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v53 = "CHMetrics.mm";
    v54 = 1024;
    v55 = 1009;
    v56 = 2080;
    v57 = "[CHMetrics retainData:forTestingPlayer:]";
    v58 = 2112;
    v59 = playerCopy;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: adding test player data for player %@", buf, 0x26u);
  }

LABEL_8:
  v10 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v11 = v10 == 0;

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_dataForTesting setObject:v12 forKeyedSubscript:playerCopy];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [dataCopy objectForKeyedSubscript:@"EventType"];
  v15 = [dataCopy objectForKeyedSubscript:@"Intensity"];
  v16 = [v13 stringWithFormat:@"%@%@", v14, v15];

  v17 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v18 = [v17 objectForKeyedSubscript:v16];
  LOBYTE(v15) = v18 == 0;

  if (v15)
  {
    v20 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    [v20 setValue:dataCopy forKey:v16];
    goto LABEL_29;
  }

  if (kHMETScope)
  {
    v19 = *kHMETScope;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  v22 = v19;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v24 = [v23 objectForKeyedSubscript:v16];
    *buf = 136315906;
    v53 = "CHMetrics.mm";
    v54 = 1024;
    v55 = 1016;
    v56 = 2080;
    v57 = "[CHMetrics retainData:forTestingPlayer:]";
    v58 = 2112;
    v59 = v24;
    _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %@", buf, 0x26u);
  }

LABEL_19:
  if (!kHMETScope)
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
    goto LABEL_23;
  }

  v25 = *kHMETScope;
  if (v25)
  {
LABEL_23:
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v53 = "CHMetrics.mm";
      v54 = 1024;
      v55 = 1017;
      v56 = 2080;
      v57 = "[CHMetrics retainData:forTestingPlayer:]";
      v58 = 2112;
      v59 = dataCopy;
      _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %@", buf, 0x26u);
    }
  }

  v27 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v28 = [v27 objectForKeyedSubscript:v16];
  v29 = [v28 objectForKeyedSubscript:@"Duration"];
  v30 = v29 == 0;

  if (!v30)
  {
    v31 = MEMORY[0x277CCABB0];
    v51 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v32 = [v51 objectForKeyedSubscript:v16];
    v33 = [v32 objectForKeyedSubscript:@"Duration"];
    [v33 floatValue];
    v35 = v34;
    v36 = [dataCopy objectForKeyedSubscript:@"Duration"];
    [v36 floatValue];
    *&v38 = v35 + v37;
    v39 = [v31 numberWithFloat:v38];
    v40 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
    v41 = [v40 objectForKeyedSubscript:v16];
    [v41 setObject:v39 forKeyedSubscript:@"Duration"];
  }

  v42 = MEMORY[0x277CCABB0];
  v20 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v43 = [v20 objectForKeyedSubscript:v16];
  v44 = [v43 objectForKeyedSubscript:@"EventCount"];
  intValue = [v44 intValue];
  v46 = [dataCopy objectForKeyedSubscript:@"EventCount"];
  v47 = [v42 numberWithInt:{objc_msgSend(v46, "intValue") + intValue}];
  v48 = [(NSMutableDictionary *)self->_dataForTesting objectForKeyedSubscript:playerCopy];
  v49 = [v48 objectForKeyedSubscript:v16];
  [v49 setObject:v47 forKeyedSubscript:@"EventCount"];

LABEL_29:
  v50 = *MEMORY[0x277D85DE8];
}

@end