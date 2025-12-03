@interface DCAnalytics
+ (id)shared;
- (BOOL)isNetworkReachable;
- (DCAnalytics)init;
- (NSMutableDictionary)perfIdMap;
- (OS_os_log)perfLog;
- (id)convertCategory:(unint64_t)category;
- (void)dealloc;
- (void)sendPayload:(id)payload forEvent:(id)event withError:(id)error;
- (void)sendPerformanceForCategory:(unint64_t)category eventType:(unint64_t)type;
@end

@implementation DCAnalytics

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[DCAnalytics shared];
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __21__DCAnalytics_shared__block_invoke()
{
  shared_shared = objc_alloc_init(DCAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (DCAnalytics)init
{
  v5.receiver = self;
  v5.super_class = DCAnalytics;
  v2 = [(DCAnalytics *)&v5 init];
  if (v2)
  {
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [mEMORY[0x277CEC5B8] addNetworkReachableObserver:v2 selector:sel_networkReachabilityChanged_];
  }

  return v2;
}

- (OS_os_log)perfLog
{
  perfLog = self->_perfLog;
  if (!perfLog)
  {
    v4 = os_log_create("com.apple.devicecheck", "perf");
    v5 = self->_perfLog;
    self->_perfLog = v4;

    perfLog = self->_perfLog;
  }

  return perfLog;
}

- (NSMutableDictionary)perfIdMap
{
  perfIdMap = self->_perfIdMap;
  if (!perfIdMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_perfIdMap;
    self->_perfIdMap = v4;

    perfIdMap = self->_perfIdMap;
  }

  return perfIdMap;
}

- (BOOL)isNetworkReachable
{
  if (self->_isNetworkReachable)
  {
    return 1;
  }

  else
  {
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    self->_isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

    return self->_isNetworkReachable;
  }
}

- (void)dealloc
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

  v4.receiver = self;
  v4.super_class = DCAnalytics;
  [(DCAnalytics *)&v4 dealloc];
}

- (void)sendPayload:(id)payload forEvent:(id)event withError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  eventCopy = event;
  errorCopy = error;
  v18 = MEMORY[0x277D85DD0];
  v11 = payloadCopy;
  v19 = v11;
  v12 = errorCopy;
  v20 = v12;
  v13 = eventCopy;
  v21 = v13;
  v14 = AnalyticsSendEventLazy();
  if (DCLogSystem_onceToken_0 != -1)
  {
    [DCAnalytics sendPayload:forEvent:withError:];
  }

  v15 = DCLogSystem_log_0;
  if (os_log_type_enabled(DCLogSystem_log_0, OS_LOG_TYPE_DEBUG))
  {
    v16 = v15;
    *buf = 136316418;
    v23 = "DCAnalytics.m";
    v24 = 1024;
    v25 = 98;
    v26 = 1024;
    v27 = v14;
    v28 = 2112;
    v29 = v13;
    v30 = 2048;
    code = [v12 code];
    v32 = 1024;
    isNetworkReachable = [(DCAnalytics *)self isNetworkReachable];
    _os_log_impl(&dword_238044000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempted to submit analytics event. { didSend=%d, event=%@, errorClass=%ld, networkReachable=%d }", buf, 0x32u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __46__DCAnalytics_sendPayload_forEvent_withError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
    [v2 setObject:v4 forKeyedSubscript:@"errorClass"];
  }

  if (([*(a1 + 48) isEqualToString:@"com.apple.devicecheck.generateToken"] & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", @"com.apple.devicecheck.appattest.attestKey"))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 56), "isNetworkReachable")}];
    [v2 setObject:v5 forKeyedSubscript:@"networkReachable"];
  }

  return v2;
}

- (void)sendPerformanceForCategory:(unint64_t)category eventType:(unint64_t)type
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(DCAnalytics *)selfCopy convertCategory:category];
  perfLog = [(DCAnalytics *)selfCopy perfLog];
  v9 = os_signpost_enabled(perfLog);

  if (!v9)
  {
    if (DCLogSystem_onceToken_0 != -1)
    {
      [DCAnalytics sendPerformanceForCategory:eventType:];
    }

    v20 = DCLogSystem_log_0;
    if (os_log_type_enabled(DCLogSystem_log_0, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 136315650;
      *&v46[4] = "DCAnalytics.m";
      v47 = 1024;
      v48 = 106;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_238044000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Performance analytics disabled. { category=%@ }", v46, 0x1Cu);
    }

    goto LABEL_113;
  }

  perfIdMap = [(DCAnalytics *)selfCopy perfIdMap];
  v11 = [perfIdMap objectForKey:v7];
  [v11 doubleValue];
  v13 = v12;

  if (!v13)
  {
    perfLog2 = [(DCAnalytics *)selfCopy perfLog];
    v13 = os_signpost_id_generate(perfLog2);

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
    perfIdMap2 = [(DCAnalytics *)selfCopy perfIdMap];
    [perfIdMap2 setObject:v15 forKeyedSubscript:v7];
  }

  if (type == 1)
  {
    if (DCLogSystem_onceToken_0 != -1)
    {
      [DCAnalytics sendPerformanceForCategory:eventType:];
    }

    v21 = DCLogSystem_log_0;
    if (os_log_type_enabled(DCLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      *v46 = 136315906;
      *&v46[4] = "DCAnalytics.m";
      v47 = 1024;
      v48 = 141;
      v49 = 2112;
      v50 = v7;
      v51 = 2048;
      v52 = v13;
      _os_log_impl(&dword_238044000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dropping signpost end. { eventName=%@, eventId=%llu }", v46, 0x26u);
    }

    if (category > 8)
    {
      if (category <= 10)
      {
        if (category == 9)
        {
          perfLog3 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog3;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog3))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyPriv";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestpriv.attestKey";
        }

        else
        {
          perfLog4 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog4;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog4))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyWeb";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestweb.attestKey";
        }

        goto LABEL_110;
      }

      switch(category)
      {
        case 0xBuLL:
          perfLog5 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog5;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog5))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyDevice";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestdevice.attestKey";
          goto LABEL_110;
        case 0xCuLL:
          perfLog6 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog6;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog6))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateAssertion";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattest.generateAssertion";
          goto LABEL_110;
        case 0xDuLL:
          perfLog7 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog7;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog7))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateAssertionPriv";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateAssertion";
          goto LABEL_110;
      }
    }

    else
    {
      if (category > 5)
      {
        if (category == 6)
        {
          perfLog8 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog8;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog8))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateKey";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattest.generateKey";
        }

        else if (category == 7)
        {
          perfLog9 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog9;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog9))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateKeyPriv";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateKey";
        }

        else
        {
          perfLog10 = [(DCAnalytics *)selfCopy perfLog];
          v23 = perfLog10;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog10))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKey";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattest.attestKey";
        }

LABEL_110:
        _os_signpost_emit_with_name_impl(&dword_238044000, v23, OS_SIGNPOST_INTERVAL_END, v13, v24, v25, v46, 2u);
LABEL_111:

        goto LABEL_112;
      }

      if (!category)
      {
        perfLog11 = [(DCAnalytics *)selfCopy perfLog];
        v23 = perfLog11;
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog11))
        {
          goto LABEL_111;
        }

        *v46 = 0;
        v24 = "isSupported";
        v25 = " enableTelemetry=YES com.apple.devicecheck.isSupported";
        goto LABEL_110;
      }

      if (category == 1)
      {
        perfLog12 = [(DCAnalytics *)selfCopy perfLog];
        v23 = perfLog12;
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(perfLog12))
        {
          goto LABEL_111;
        }

        *v46 = 0;
        v24 = "generateToken";
        v25 = " enableTelemetry=YES com.apple.devicecheck.generateToken";
        goto LABEL_110;
      }
    }

LABEL_112:
    perfIdMap3 = [(DCAnalytics *)selfCopy perfIdMap];
    [perfIdMap3 removeObjectForKey:v7];

    goto LABEL_113;
  }

  if (!type)
  {
    if (DCLogSystem_onceToken_0 != -1)
    {
      [DCAnalytics sendPerformanceForCategory:eventType:];
    }

    v17 = DCLogSystem_log_0;
    if (os_log_type_enabled(DCLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      *v46 = 136315906;
      *&v46[4] = "DCAnalytics.m";
      v47 = 1024;
      v48 = 117;
      v49 = 2112;
      v50 = v7;
      v51 = 2048;
      v52 = v13;
      _os_log_impl(&dword_238044000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dropping signpost begin. { eventName=%@, eventId=%llu }", v46, 0x26u);
    }

    if (category > 8)
    {
      if (category <= 10)
      {
        if (category == 9)
        {
          perfLog13 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog13;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog13))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.attestKey", v46, 2u);
          }
        }

        else
        {
          perfLog14 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog14;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog14))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyWeb", " enableTelemetry=YES com.apple.devicecheck.appattestweb.attestKey", v46, 2u);
          }
        }

        goto LABEL_97;
      }

      switch(category)
      {
        case 0xBuLL:
          perfLog15 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog15;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog15))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyDevice", " enableTelemetry=YES com.apple.devicecheck.appattestdevice.attestKey", v46, 2u);
          }

          goto LABEL_97;
        case 0xCuLL:
          perfLog16 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog16;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog16))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateAssertion", " enableTelemetry=YES com.apple.devicecheck.appattest.generateAssertion", v46, 2u);
          }

          goto LABEL_97;
        case 0xDuLL:
          perfLog17 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog17;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog17))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateAssertionPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateAssertion", v46, 2u);
          }

          goto LABEL_97;
      }
    }

    else
    {
      if (category > 5)
      {
        if (category == 6)
        {
          perfLog18 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog18;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog18))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateKey", " enableTelemetry=YES com.apple.devicecheck.appattest.generateKey", v46, 2u);
          }
        }

        else if (category == 7)
        {
          perfLog19 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog19;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog19))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateKeyPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateKey", v46, 2u);
          }
        }

        else
        {
          perfLog20 = [(DCAnalytics *)selfCopy perfLog];
          v19 = perfLog20;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog20))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKey", " enableTelemetry=YES com.apple.devicecheck.appattest.attestKey", v46, 2u);
          }
        }

LABEL_97:

        goto LABEL_113;
      }

      if (!category)
      {
        perfLog21 = [(DCAnalytics *)selfCopy perfLog];
        v19 = perfLog21;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog21))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "isSupported", " enableTelemetry=YES com.apple.devicecheck.isSupported", v46, 2u);
        }

        goto LABEL_97;
      }

      if (category == 1)
      {
        perfLog22 = [(DCAnalytics *)selfCopy perfLog];
        v19 = perfLog22;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(perfLog22))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateToken", " enableTelemetry=YES com.apple.devicecheck.generateToken", v46, 2u);
        }

        goto LABEL_97;
      }
    }
  }

LABEL_113:

  objc_sync_exit(selfCopy);
  v45 = *MEMORY[0x277D85DE8];
}

- (id)convertCategory:(unint64_t)category
{
  if (category > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_278A46300[category];
  }
}

@end