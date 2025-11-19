@interface DCAnalytics
+ (id)shared;
- (BOOL)isNetworkReachable;
- (DCAnalytics)init;
- (NSMutableDictionary)perfIdMap;
- (OS_os_log)perfLog;
- (id)convertCategory:(unint64_t)a3;
- (void)dealloc;
- (void)sendPayload:(id)a3 forEvent:(id)a4 withError:(id)a5;
- (void)sendPerformanceForCategory:(unint64_t)a3 eventType:(unint64_t)a4;
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
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v3 addNetworkReachableObserver:v2 selector:sel_networkReachabilityChanged_];
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
    v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    self->_isNetworkReachable = [v4 isNetworkReachable];

    return self->_isNetworkReachable;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  v4.receiver = self;
  v4.super_class = DCAnalytics;
  [(DCAnalytics *)&v4 dealloc];
}

- (void)sendPayload:(id)a3 forEvent:(id)a4 withError:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = MEMORY[0x277D85DD0];
  v11 = v8;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  v13 = v9;
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
    v31 = [v12 code];
    v32 = 1024;
    v33 = [(DCAnalytics *)self isNetworkReachable];
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

- (void)sendPerformanceForCategory:(unint64_t)a3 eventType:(unint64_t)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(DCAnalytics *)v6 convertCategory:a3];
  v8 = [(DCAnalytics *)v6 perfLog];
  v9 = os_signpost_enabled(v8);

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

  v10 = [(DCAnalytics *)v6 perfIdMap];
  v11 = [v10 objectForKey:v7];
  [v11 doubleValue];
  v13 = v12;

  if (!v13)
  {
    v14 = [(DCAnalytics *)v6 perfLog];
    v13 = os_signpost_id_generate(v14);

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
    v16 = [(DCAnalytics *)v6 perfIdMap];
    [v16 setObject:v15 forKeyedSubscript:v7];
  }

  if (a4 == 1)
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

    if (a3 > 8)
    {
      if (a3 <= 10)
      {
        if (a3 == 9)
        {
          v35 = [(DCAnalytics *)v6 perfLog];
          v23 = v35;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v35))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyPriv";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestpriv.attestKey";
        }

        else
        {
          v31 = [(DCAnalytics *)v6 perfLog];
          v23 = v31;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v31))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyWeb";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestweb.attestKey";
        }

        goto LABEL_110;
      }

      switch(a3)
      {
        case 0xBuLL:
          v41 = [(DCAnalytics *)v6 perfLog];
          v23 = v41;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v41))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "attestKeyDevice";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestdevice.attestKey";
          goto LABEL_110;
        case 0xCuLL:
          v43 = [(DCAnalytics *)v6 perfLog];
          v23 = v43;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v43))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateAssertion";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattest.generateAssertion";
          goto LABEL_110;
        case 0xDuLL:
          v27 = [(DCAnalytics *)v6 perfLog];
          v23 = v27;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v27))
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
      if (a3 > 5)
      {
        if (a3 == 6)
        {
          v40 = [(DCAnalytics *)v6 perfLog];
          v23 = v40;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v40))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateKey";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattest.generateKey";
        }

        else if (a3 == 7)
        {
          v42 = [(DCAnalytics *)v6 perfLog];
          v23 = v42;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
          {
            goto LABEL_111;
          }

          *v46 = 0;
          v24 = "generateKeyPriv";
          v25 = " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateKey";
        }

        else
        {
          v22 = [(DCAnalytics *)v6 perfLog];
          v23 = v22;
          if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
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

      if (!a3)
      {
        v34 = [(DCAnalytics *)v6 perfLog];
        v23 = v34;
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v34))
        {
          goto LABEL_111;
        }

        *v46 = 0;
        v24 = "isSupported";
        v25 = " enableTelemetry=YES com.apple.devicecheck.isSupported";
        goto LABEL_110;
      }

      if (a3 == 1)
      {
        v30 = [(DCAnalytics *)v6 perfLog];
        v23 = v30;
        if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
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
    v44 = [(DCAnalytics *)v6 perfIdMap];
    [v44 removeObjectForKey:v7];

    goto LABEL_113;
  }

  if (!a4)
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

    if (a3 > 8)
    {
      if (a3 <= 10)
      {
        if (a3 == 9)
        {
          v33 = [(DCAnalytics *)v6 perfLog];
          v19 = v33;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.attestKey", v46, 2u);
          }
        }

        else
        {
          v29 = [(DCAnalytics *)v6 perfLog];
          v19 = v29;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyWeb", " enableTelemetry=YES com.apple.devicecheck.appattestweb.attestKey", v46, 2u);
          }
        }

        goto LABEL_97;
      }

      switch(a3)
      {
        case 0xBuLL:
          v37 = [(DCAnalytics *)v6 perfLog];
          v19 = v37;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKeyDevice", " enableTelemetry=YES com.apple.devicecheck.appattestdevice.attestKey", v46, 2u);
          }

          goto LABEL_97;
        case 0xCuLL:
          v39 = [(DCAnalytics *)v6 perfLog];
          v19 = v39;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateAssertion", " enableTelemetry=YES com.apple.devicecheck.appattest.generateAssertion", v46, 2u);
          }

          goto LABEL_97;
        case 0xDuLL:
          v26 = [(DCAnalytics *)v6 perfLog];
          v19 = v26;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateAssertionPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateAssertion", v46, 2u);
          }

          goto LABEL_97;
      }
    }

    else
    {
      if (a3 > 5)
      {
        if (a3 == 6)
        {
          v36 = [(DCAnalytics *)v6 perfLog];
          v19 = v36;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateKey", " enableTelemetry=YES com.apple.devicecheck.appattest.generateKey", v46, 2u);
          }
        }

        else if (a3 == 7)
        {
          v38 = [(DCAnalytics *)v6 perfLog];
          v19 = v38;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateKeyPriv", " enableTelemetry=YES com.apple.devicecheck.appattestpriv.generateKey", v46, 2u);
          }
        }

        else
        {
          v18 = [(DCAnalytics *)v6 perfLog];
          v19 = v18;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *v46 = 0;
            _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "attestKey", " enableTelemetry=YES com.apple.devicecheck.appattest.attestKey", v46, 2u);
          }
        }

LABEL_97:

        goto LABEL_113;
      }

      if (!a3)
      {
        v32 = [(DCAnalytics *)v6 perfLog];
        v19 = v32;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "isSupported", " enableTelemetry=YES com.apple.devicecheck.isSupported", v46, 2u);
        }

        goto LABEL_97;
      }

      if (a3 == 1)
      {
        v28 = [(DCAnalytics *)v6 perfLog];
        v19 = v28;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *v46 = 0;
          _os_signpost_emit_with_name_impl(&dword_238044000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "generateToken", " enableTelemetry=YES com.apple.devicecheck.generateToken", v46, 2u);
        }

        goto LABEL_97;
      }
    }
  }

LABEL_113:

  objc_sync_exit(v6);
  v45 = *MEMORY[0x277D85DE8];
}

- (id)convertCategory:(unint64_t)a3
{
  if (a3 > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_278A46300[a3];
  }
}

@end