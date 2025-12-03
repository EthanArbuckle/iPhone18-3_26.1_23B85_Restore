@interface NWConnectionStatistics
+ (id)protocolToTransportProtocolString:(unsigned int)string;
- (NSArray)activities;
- (NSMutableDictionary)dictionaryReport;
- (NSString)bundleID;
- (NSString)effectiveBundleID;
- (NSUUID)connectionUUID;
- (NSUUID)parentUUID;
- (NWConnectionStatistics)initWithJSONData:(id)data;
- (NWConnectionStatistics)initWithTCPReport:(netcore_stats_tcp_report *)report length:(unint64_t)length clientIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier;
- (id)_createDataUsageSnapshotDictionaryFromStruct:(const netcore_stats_data_usage_snapshot *)struct;
- (id)_createFallbackReportDictionaryFromStruct:(const netcore_stats_tcp_cell_fallback_report *)struct;
- (id)_createStatisticsReportDictionaryFromStruct:(const netcore_stats_tcp_statistics_report *)struct;
- (unsigned)metricType;
- (void)setBundleID:(id)d;
- (void)setEffectiveBundleID:(id)d;
@end

@implementation NWConnectionStatistics

- (NWConnectionStatistics)initWithJSONData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = NWConnectionStatistics;
  v5 = [(NWConnectionStatistics *)&v22 init];
  if (v5)
  {
    if (dataCopy && [dataCopy length])
    {
      v19 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:1 error:&v19];
      v7 = v19;
      dictionaryReport = v5->_dictionaryReport;
      v5->_dictionaryReport = v6;
    }

    v9 = v5;
    goto LABEL_6;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v24 = "[NWConnectionStatistics initWithJSONData:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v12, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "[NWConnectionStatistics initWithJSONData:]";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v24 = "[NWConnectionStatistics initWithJSONData:]";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v17)
      {
        *buf = 136446210;
        v24 = "[NWConnectionStatistics initWithJSONData:]";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "[NWConnectionStatistics initWithJSONData:]";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v12)
  {
    free(v12);
  }

LABEL_6:

  return v5;
}

- (NWConnectionStatistics)initWithTCPReport:(netcore_stats_tcp_report *)report length:(unint64_t)length clientIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier
{
  __dst[429] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  if (length != 3424)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst[0]) = 136446722;
      *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
      WORD2(__dst[1]) = 2048;
      *(&__dst[1] + 6) = 3424;
      HIWORD(__dst[2]) = 2048;
      __dst[3] = length;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s failure to initialize statistics object from TCP report, expected size %zu actual size %zu", __dst, 0x20u);
    }

    goto LABEL_7;
  }

  v26.receiver = self;
  v26.super_class = NWConnectionStatistics;
  v12 = [(NWConnectionStatistics *)&v26 init];
  if (!v12)
  {
    v17 = __nwlog_obj();
    LODWORD(__dst[0]) = 136446210;
    *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v18, &type, &v24))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        LODWORD(__dst[0]) = 136446210;
        *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
        v21 = "%{public}s [super init] failed";
LABEL_22:
        _os_log_impl(&dword_181A37000, v19, v20, v21, __dst, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v23 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v23)
          {
            LODWORD(__dst[0]) = 136446466;
            *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
            WORD2(__dst[1]) = 2082;
            *(&__dst[1] + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", __dst, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v23)
        {
          goto LABEL_23;
        }

        LODWORD(__dst[0]) = 136446210;
        *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
        v21 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_22;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        LODWORD(__dst[0]) = 136446210;
        *(__dst + 4) = "[NWConnectionStatistics initWithTCPReport:length:clientIdentifier:sourceIdentifier:]";
        v21 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:

LABEL_24:
    if (v18)
    {
      free(v18);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  memcpy(__dst, report, 0xD60uLL);
  [(NWConnectionStatistics *)v13 setReport:__dst];
  [(NWConnectionStatistics *)v13 setClientIdentifier:identifierCopy];
  [(NWConnectionStatistics *)v13 setSourceIdentifier:sourceIdentifierCopy];
  v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [(NWConnectionStatistics *)v13 setExternallyVisibleActivityUUIDs:v14];

  [(NWConnectionStatistics *)v13 setExternallyVisibleConnectionUUID:0];
  [(NWConnectionStatistics *)v13 setExternallyVisibleParentUUID:0];
LABEL_8:

  return v13;
}

- (NSMutableDictionary)dictionaryReport
{
  MEMORY[0x1EEE9AC00](self);
  v278 = *MEMORY[0x1E69E9840];
  v4 = v2 + 10;
  v3 = v2[10];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = v2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v5)
  {
    v8 = v5;
    v257 = 0u;
    v256 = 0u;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v250 = 0u;
    v249 = 0u;
    v248 = 0u;
    v247 = 0u;
    v246 = 0u;
    v245 = 0u;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    v233 = 0u;
    v232 = 0u;
    v231 = 0u;
    v230 = 0u;
    v229 = 0u;
    v228 = 0u;
    v227 = 0u;
    v226 = 0u;
    [v7 report];
    if (v269[1033])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (!v9)
      {
LABEL_186:

        v5 = 0;
        goto LABEL_3;
      }

      v10 = MEMORY[0x1E696AD98];
      [v7 report];
      v11 = [v10 numberWithBool:v221];
      [v9 setObject:v11 forKeyedSubscript:@"delegated"];

      [v7 report];
      if ((v220 - 2) > 3)
      {
        v12 = @"NETCORE_STATS_TCP_REPORT_REASON_FALLBACK_SIGNAL";
      }

      else
      {
        v12 = off_1E6A3A168[v220 - 2];
      }

      [v9 setObject:v12 forKeyedSubscript:@"reportReason"];
      clientIdentifier = [v7 clientIdentifier];
      [v9 setObject:clientIdentifier forKeyedSubscript:@"clientIdentifier"];

      v108 = [v9 objectForKeyedSubscript:@"delegated"];

      if (v108)
      {
        sourceIdentifier = [v7 sourceIdentifier];
        [v9 setObject:sourceIdentifier forKeyedSubscript:@"sourceAppIdentifier"];
      }

      v110 = [v7 _createStatisticsReportDictionaryFromStruct:&v226];
      [v9 setObject:v110 forKeyedSubscript:@"connectionStatisticsReport"];

      v111 = [v9 objectForKeyedSubscript:@"connectionStatisticsReport"];

      if (v111)
      {
        memset(v276, 0, 512);
        [v7 report];
        v112 = [v7 _createFallbackReportDictionaryFromStruct:&v276[13] + 8];
        [v9 setObject:v112 forKeyedSubscript:@"cellularFallbackReport"];

        v113 = [v9 objectForKeyedSubscript:@"cellularFallbackReport"];

        if (v113)
        {
          layer2Report = [v7 layer2Report];

          v217 = v9;
          if (layer2Report)
          {
            layer2Report2 = [v7 layer2Report];
            v116 = [layer2Report2 objectForKeyedSubscript:@"cellularRadioTechnology"];
            [v9 objectForKeyedSubscript:@"cellularFallbackReport"];
            v118 = v117 = v7;
            [v118 setObject:v116 forKeyedSubscript:@"cellularRadioTechnology"];

            layer2Report3 = [v117 layer2Report];
            v120 = [layer2Report3 objectForKeyedSubscript:@"wifiRadioTechnology"];
            v121 = [v9 objectForKeyedSubscript:@"cellularFallbackReport"];
            [v121 setObject:v120 forKeyedSubscript:@"wifiRadioTechnology"];

            v7 = v117;
            layer2Report4 = [v117 layer2Report];
            v123 = [layer2Report4 objectForKeyedSubscript:@"cellularBand"];
            v124 = [v9 objectForKeyedSubscript:@"cellularFallbackReport"];
            [v124 setObject:v123 forKeyedSubscript:@"cellularBand"];

            v125 = __nwlog_obj();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
            {
              v126 = [v9 objectForKeyedSubscript:@"cellularFallbackReport"];
              LODWORD(v274[0]) = 136446466;
              *(v274 + 4) = "[NWConnectionStatistics dictionaryReport]";
              WORD6(v274[0]) = 2114;
              *(v274 + 14) = v126;
              _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s Added radio technology and cellular band to legacy cellular fallback report: %{public}@", v274, 0x16u);
            }
          }

          else
          {
            v125 = __nwlog_obj();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v274[0]) = 136446210;
              *(v274 + 4) = "[NWConnectionStatistics dictionaryReport]";
              _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_ERROR, "%{public}s Could not add radio technology and cellular band as layer2Report is nil", v274, 0xCu);
            }
          }

          v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v7 report];
          if (v219)
          {
            v207 = 0;
            v208 = &v275;
            while (1)
            {
              memset(v274, 0, 512);
              [v7 report];
              v209 = [v7 _createStatisticsReportDictionaryFromStruct:v208];
              if (!v209)
              {
                break;
              }

              v210 = v209;
              [v206 addObject:v209];

              ++v207;
              [v7 report];
              v208 += 27;
              if (v207 >= v219)
              {
                goto LABEL_193;
              }
            }

            v213 = __nwlog_obj();
            if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
            {
              clientIdentifier2 = [v7 clientIdentifier];
              v270 = 136446466;
              v271 = "[NWConnectionStatistics dictionaryReport]";
              v272 = 2114;
              v273 = clientIdentifier2;
              _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_ERROR, "%{public}s failing to create a fallback report for %{public}@", &v270, 0x16u);
            }

            v9 = v217;
            goto LABEL_186;
          }

LABEL_193:
          v201 = v217;
          [v217 setObject:v206 forKeyedSubscript:@"connectionAttemptStatisticsReports"];
          [v7 setMetricType:1];
          objc_storeStrong(v4, v217);
          v211 = __nwlog_obj();
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
          {
            v212 = *v4;
            LODWORD(v274[0]) = 136446466;
            *(v274 + 4) = "[NWConnectionStatistics dictionaryReport]";
            WORD6(v274[0]) = 2114;
            *(v274 + 14) = v212;
            _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s Generated legacy tcp_connection dictionary report: %{public}@", v274, 0x16u);
          }

LABEL_179:
          v3 = *v4;
LABEL_2:
          v5 = v3;
          goto LABEL_3;
        }

        v202 = __nwlog_obj();
        if (!os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_185;
        }

        clientIdentifier3 = [v7 clientIdentifier];
        LODWORD(v274[0]) = 136446466;
        *(v274 + 4) = "[NWConnectionStatistics dictionaryReport]";
        WORD6(v274[0]) = 2114;
        *(v274 + 14) = clientIdentifier3;
        v204 = "%{public}s failing to create a fallback report for %{public}@";
        v205 = v274;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v202 = gLogObj;
        if (!os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
        {
LABEL_185:

          goto LABEL_186;
        }

        clientIdentifier3 = [v7 clientIdentifier];
        LODWORD(v276[0]) = 136446466;
        *(v276 + 4) = "[NWConnectionStatistics dictionaryReport]";
        WORD6(v276[0]) = 2114;
        *(v276 + 14) = clientIdentifier3;
        v204 = "%{public}s failing to allocate NWLibnetcoreConnectionStatisticsReportDictionary for client %{public}@";
        v205 = v276;
      }

      _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_ERROR, v204, v205, 0x16u);

      goto LABEL_185;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v246)];
    [v8 setObject:v13 forKeyedSubscript:@"connectionReportReason"];

    if (DWORD1(v249) <= 3)
    {
      [v8 setObject:off_1E6A39EE8[DWORD1(v249)] forKeyedSubscript:@"connectionMode"];
    }

    if ((DWORD2(v249) - 1) > 5)
    {
      v14 = @"NW_APPLE_HOST_NONE";
    }

    else
    {
      v14 = off_1E6A39F08[DWORD2(v249) - 1];
    }

    [v8 setObject:v14 forKeyedSubscript:@"appleHost"];
    if ((HIDWORD(v249) - 1) > 8)
    {
      v15 = @"NW_APPLE_APP_NONE";
    }

    else
    {
      v15 = off_1E6A39F38[HIDWORD(v249) - 1];
    }

    [v8 setObject:v15 forKeyedSubscript:@"appleApp"];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 23) & 1];
    [v8 setObject:v16 forKeyedSubscript:@"isDaemon"];

    if ((v265 & 0x800000) != 0)
    {
      clientIdentifier4 = [v7 clientIdentifier];
      [v8 setObject:clientIdentifier4 forKeyedSubscript:@"processName"];
    }

    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:&v258 encoding:134217984];
    [v8 setObject:v18 forKeyedSubscript:@"bundleID"];

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:&v259 encoding:134217984];
    [v8 setObject:v19 forKeyedSubscript:@"effectiveBundleID"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v246];
    [v8 setObject:v20 forKeyedSubscript:@"secondsSinceInterfaceChange"];

    if ((DWORD2(v250) - 1) > 4)
    {
      v21 = @"NW_STACK_LEVEL_UNDEFINED";
    }

    else
    {
      v21 = off_1E6A39F80[DWORD2(v250) - 1];
    }

    [v8 setObject:v21 forKeyedSubscript:@"stackLevel"];
    v22 = [NWConnectionStatistics protocolToTransportProtocolString:DWORD1(v246)];
    [v8 setObject:v22 forKeyedSubscript:@"transportProtocol"];

    if ((DWORD2(v246) - 1) > 3)
    {
      v23 = @"NW_DNS_PROTOCOL_UNKNOWN";
    }

    else
    {
      v23 = off_1E6A39FA8[DWORD2(v246) - 1];
    }

    [v8 setObject:v23 forKeyedSubscript:@"dnsProtocol"];
    if ((v250 - 1) > 2)
    {
      v24 = @"NW_DNS_PROVIDER_UNKNOWN";
    }

    else
    {
      v24 = off_1E6A39FC8[(v250 - 1)];
    }

    [v8 setObject:v24 forKeyedSubscript:@"dnsProvider"];
    v25 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 29) & 1];
    [v8 setObject:v25 forKeyedSubscript:@"svcbRequested"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 30) & 1];
    [v8 setObject:v26 forKeyedSubscript:@"svcbReceived"];

    v27 = [MEMORY[0x1E696AD98] numberWithInt:v265 >> 31];
    [v8 setObject:v27 forKeyedSubscript:@"svcbDoHURI"];

    v28 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 2) & 1];
    [v8 setObject:v28 forKeyedSubscript:@"triggeredPath"];

    v29 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 3) & 1];
    [v8 setObject:v29 forKeyedSubscript:@"systemProxyConfigured"];

    v30 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 4) & 1];
    [v8 setObject:v30 forKeyedSubscript:@"customProxyConfigured"];

    v31 = [v8 objectForKeyedSubscript:@"systemProxyConfigured"];
    if (v31)
    {
    }

    else
    {
      v32 = [v8 objectForKeyedSubscript:@"customProxyConfigure"]);

      if (!v32)
      {
        goto LABEL_68;
      }
    }

    v33 = @"NW_PROXY_TYPE_INVALID";
    if (SDWORD1(v242) <= 3001)
    {
      v34 = @"NW_PROXY_TYPE_HTTP";
      v39 = @"NW_PROXY_TYPE_HTTPS";
      v40 = @"NW_PROXY_TYPE_SOCKSV4";
      if (DWORD1(v242) != 3001)
      {
        v40 = @"NW_PROXY_TYPE_INVALID";
      }

      if (DWORD1(v242) != 2002)
      {
        v39 = v40;
      }

      if (DWORD1(v242) != 2001)
      {
        v34 = v39;
      }

      if (DWORD1(v242) == 1002)
      {
        v33 = @"NW_PROXY_TYPE_PAC_URL";
      }

      if (DWORD1(v242) == 1001)
      {
        v33 = @"NW_PROXY_TYPE_PAC_SCRIPT";
      }

      if (DWORD1(v242) == 1)
      {
        v33 = @"NW_PROXY_TYPE_DIRECT";
      }

      v38 = SDWORD1(v242) <= 2000;
    }

    else
    {
      v34 = @"NW_PROXY_TYPE_HTTPS_TRANSPARENT";
      v35 = @"NW_PROXY_TYPE_SECURE_HTTPS";
      if (DWORD1(v242) != 4002)
      {
        v35 = @"NW_PROXY_TYPE_INVALID";
      }

      if (DWORD1(v242) != 4001)
      {
        v34 = v35;
      }

      v36 = @"NW_PROXY_TYPE_TCP_CONVERTER";
      v37 = @"NW_PROXY_TYPE_MASQUE";
      if (DWORD1(v242) != 3006)
      {
        v37 = @"NW_PROXY_TYPE_INVALID";
      }

      if (DWORD1(v242) != 3005)
      {
        v36 = v37;
      }

      if (SDWORD1(v242) <= 4000)
      {
        v34 = v36;
      }

      if (DWORD1(v242) == 3004)
      {
        v33 = @"NW_PROXY_TYPE_HTTP_CONNECT";
      }

      if (DWORD1(v242) == 3003)
      {
        v33 = @"NW_PROXY_TYPE_SHOES";
      }

      if (DWORD1(v242) == 3002)
      {
        v33 = @"NW_PROXY_TYPE_SOCKSV5";
      }

      v38 = SDWORD1(v242) <= 3004;
    }

    if (v38)
    {
      v41 = v33;
    }

    else
    {
      v41 = v34;
    }

    [v8 setObject:v41 forKeyedSubscript:@"usedProxyType"];
LABEL_68:
    if ((v263 - 1) > 3u)
    {
      v42 = @"NW_PROXY_RESULT_NONE";
    }

    else
    {
      v42 = off_1E6A39FE0[(v263 - 1)];
    }

    [v8 setObject:v42 forKeyedSubscript:@"proxyResult"];
    v43 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 25) & 1];
    [v8 setObject:v43 forKeyedSubscript:@"isPathExpensive"];

    v44 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 26) & 1];
    [v8 setObject:v44 forKeyedSubscript:@"isPathConstrained"];

    v45 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 27) & 1];
    [v8 setObject:v45 forKeyedSubscript:@"prohibitsExpensive"];

    v46 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 28) & 1];
    [v8 setObject:v46 forKeyedSubscript:@"prohibitsConstrained"];

    v47 = [MEMORY[0x1E696AD98] numberWithInt:v266 & 1];
    [v8 setObject:v47 forKeyedSubscript:@"isProbe"];

    v48 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 18) & 1];
    [v8 setObject:v48 forKeyedSubscript:@"ipv4Available"];

    v49 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 19) & 1];
    [v8 setObject:v49 forKeyedSubscript:@"ipv6Available"];

    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v245)];
    [v8 setObject:v50 forKeyedSubscript:@"ipv4DNSServerCount"];

    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v245)];
    [v8 setObject:v51 forKeyedSubscript:@"ipv6DNSServerCount"];

    v52 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 5) & 1];
    [v8 setObject:v52 forKeyedSubscript:@"fallbackEligible"];

    v53 = v265;
    if ((v265 & 0x20) != 0)
    {
      v54 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 6) & 1];
      [v8 setObject:v54 forKeyedSubscript:@"weakFallback"];

      v55 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 7) & 1];
      [v8 setObject:v55 forKeyedSubscript:@"preferFallback"];

      v56 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 8) & 1];
      [v8 setObject:v56 forKeyedSubscript:@"usedFallback"];

      v53 = v265;
    }

    v57 = [MEMORY[0x1E696AD98] numberWithInt:(v53 >> 9) & 1];
    [v8 setObject:v57 forKeyedSubscript:@"resolutionRequired"];

    v58 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 10) & 1];
    [v8 setObject:v58 forKeyedSubscript:@"tlsConfigured"];

    v59 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 12) & 1];
    [v8 setObject:v59 forKeyedSubscript:@"tfoConfigured"];

    v60 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 20) & 1];
    [v8 setObject:v60 forKeyedSubscript:@"tfoUsed"];

    v61 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 13) & 1];
    [v8 setObject:v61 forKeyedSubscript:@"multipathConfigured"];

    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v242)];
    [v8 setObject:v62 forKeyedSubscript:@"trafficClass"];

    v63 = @"NW_MPTCP_VERSION_UNKNOWN";
    if (BYTE12(v250) == 1)
    {
      v63 = @"NW_MPTCP_VERSION_0";
    }

    if (BYTE12(v250) == 2)
    {
      v64 = @"NW_MPTCP_VERSION_1";
    }

    else
    {
      v64 = v63;
    }

    [v8 setObject:v64 forKeyedSubscript:@"mptcpVersion"];
    v65 = @"NW_FAILURE_REASON_PATH";
    if (SDWORD1(v248) > 2)
    {
      if (DWORD1(v248) == 4)
      {
        v65 = @"NW_FAILURE_REASON_TLS";
      }

      if (DWORD1(v248) == 3)
      {
        v66 = @"NW_FAILURE_REASON_FLOW";
      }

      else
      {
        v66 = v65;
      }
    }

    else
    {
      if (!DWORD1(v248))
      {
        goto LABEL_89;
      }

      if (DWORD1(v248) == 2)
      {
        v66 = @"NW_FAILURE_REASON_RESOLVER";
      }

      else
      {
        v66 = @"NW_FAILURE_REASON_PATH";
      }
    }

    [v8 setObject:v66 forKeyedSubscript:@"failureReason"];
LABEL_89:
    if (HIDWORD(v247))
    {
      v67 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v8 setObject:v67 forKeyedSubscript:@"lastErrorDomain"];
    }

    if (v248)
    {
      v68 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v8 setObject:v68 forKeyedSubscript:@"lastErrorCode"];
    }

    v69 = v265;
    if ((v265 & 4) != 0)
    {
      v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v242)];
      [v8 setObject:v77 forKeyedSubscript:@"pathTriggerMilliseconds"];

      v69 = v265;
      if ((v265 & 0x200) == 0)
      {
LABEL_95:
        if ((v69 & 0x18) == 0)
        {
LABEL_97:
          if ((v69 & 0x4000) != 0)
          {
            v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v243)];
            [v8 setObject:v71 forKeyedSubscript:@"flowConnectMilliseconds"];

            v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v244];
            [v8 setObject:v72 forKeyedSubscript:@"flowDurationMilliseconds"];

            v69 = v265;
          }

          if (v69 < 0)
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v243)];
            [v8 setObject:v73 forKeyedSubscript:@"tlsMilliseconds"];
          }

          v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v240];
          [v8 setObject:v74 forKeyedSubscript:@"attemptDelayMilliseconds"];

          v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v240 + 1)];
          [v8 setObject:v75 forKeyedSubscript:@"attemptEstablishmentMilliseconds"];

          if ((DWORD1(v250) - 1) > 6)
          {
            v76 = @"NW_TLS_VERSION_NONE";
          }

          else
          {
            v76 = off_1E6A3A000[DWORD1(v250) - 1];
          }

          [v8 setObject:v76 forKeyedSubscript:@"tlsVersion"];
          v79 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 21) & 1];
          [v8 setObject:v79 forKeyedSubscript:@"tlsVersionTimeout"];

          v80 = [MEMORY[0x1E696AD98] numberWithInt:HIBYTE(v265) & 1];
          [v8 setObject:v80 forKeyedSubscript:@"tlsHandshakeTimedOut"];

          v81 = [MEMORY[0x1E696AD98] numberWithInt:HIBYTE(v266) & 1];
          [v8 setObject:v81 forKeyedSubscript:@"tlsECHEnabled"];

          v82 = [MEMORY[0x1E696AD98] numberWithInt:(v266 >> 11) & 1];
          [v8 setObject:v82 forKeyedSubscript:@"usedPQTLS"];

          v83 = [MEMORY[0x1E696AD98] numberWithInt:(v266 >> 12) & 1];
          [v8 setObject:v83 forKeyedSubscript:@"PQTLSEnabled"];

          v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v237];
          [v8 setObject:v84 forKeyedSubscript:@"transformLastTimeoutMsecs"];

          v85 = [NWConnectionStatistics protocolToTransportProtocolString:v247];
          [v8 setObject:v85 forKeyedSubscript:@"transformFirstProtocol"];

          v86 = [NWConnectionStatistics protocolToTransportProtocolString:DWORD1(v247)];
          [v8 setObject:v86 forKeyedSubscript:@"transformConnectedProtocol"];

          v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v247)];
          [v8 setObject:v87 forKeyedSubscript:@"transformConnectedProtocolIndex"];

          v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 2) & 1];
          [v8 setObject:v88 forKeyedSubscript:@"quicDeferred"];

          v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 3) & 1];
          [v8 setObject:v89 forKeyedSubscript:@"quicApplicationDeferred"];

          v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 4) & 1];
          [v8 setObject:v90 forKeyedSubscript:@"quicDenied"];

          v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 5) & 1];
          [v8 setObject:v91 forKeyedSubscript:@"quicAlternativePresent"];

          v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 6) & 1];
          [v8 setObject:v92 forKeyedSubscript:@"quicUpdatedAlternative"];

          v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 7) & 1];
          [v8 setObject:v93 forKeyedSubscript:@"quicSpeculativeAttempt"];

          if ((v261 - 1) > 8)
          {
            v94 = @"NW_CONNECTION_CLIENT_ACCURATE_ECN_INVALID";
          }

          else
          {
            v94 = off_1E6A3A038[v261 - 1];
          }

          [v8 setObject:v94 forKeyedSubscript:@"accurateECNClientState"];
          if ((v262 - 1) > 9)
          {
            v95 = @"NW_CONNECTION_SERVER_ACCURATE_ECN_INVALID";
          }

          else
          {
            v95 = off_1E6A3A080[v262 - 1];
          }

          [v8 setObject:v95 forKeyedSubscript:@"accurateECNServerState"];
          v96 = [MEMORY[0x1E696AD98] numberWithInt:(v266 >> 10) & 1];
          [v8 setObject:v96 forKeyedSubscript:@"l4sEnabled"];

          v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v244)];
          [v8 setObject:v97 forKeyedSubscript:@"ipv4AddressCount"];

          v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v244)];
          [v8 setObject:v98 forKeyedSubscript:@"ipv6AddressCount"];

          v99 = [MEMORY[0x1E696AD98] numberWithInt:HIWORD(v265) & 1];
          [v8 setObject:v99 forKeyedSubscript:@"synthesizedIPv6Address"];

          v100 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 17) & 1];
          [v8 setObject:v100 forKeyedSubscript:@"synthesizedExtraIPv6Address"];

          if (BYTE13(v250) == 30)
          {
            v101 = @"NW_ADDRESS_FAMILY_IPV6";
          }

          else
          {
            v101 = @"NW_ADDRESS_FAMILY_OTHER";
          }

          if (BYTE13(v250) == 2)
          {
            v102 = @"NW_ADDRESS_FAMILY_IPV4";
          }

          else
          {
            v102 = v101;
          }

          [v8 setObject:v102 forKeyedSubscript:@"firstAddressFamily"];
          if ((v265 & 0x4000) != 0)
          {
            if (BYTE14(v250) == 30)
            {
              v103 = @"NW_ADDRESS_FAMILY_IPV6";
            }

            else
            {
              v103 = @"NW_ADDRESS_FAMILY_OTHER";
            }

            if (BYTE14(v250) == 2)
            {
              v104 = @"NW_ADDRESS_FAMILY_IPV4";
            }

            else
            {
              v104 = v103;
            }

            [v8 setObject:v104 forKeyedSubscript:@"connectedAddressFamily"];
            v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v244)];
            [v8 setObject:v105 forKeyedSubscript:@"connectedAddressIndex"];

            if ((DWORD2(v248) - 1) > 3)
            {
              v106 = @"INTERFACE_TYPE_OTHER";
            }

            else
            {
              v106 = off_1E6A3A0D0[DWORD2(v248) - 1];
            }

            [v8 setObject:v106 forKeyedSubscript:@"connectedInterfaceType"];
            v127 = @"NW_INTERFACE_SUBTYPE_OTHER";
            v128 = @"NW_INTERFACE_SUBTYPE_COPROCESSOR";
            v129 = @"NW_INTERFACE_SUBTYPE_COMPANION";
            if (HIDWORD(v248) != 5001)
            {
              v129 = @"NW_INTERFACE_SUBTYPE_OTHER";
            }

            if (HIDWORD(v248) != 4001)
            {
              v128 = v129;
            }

            if (HIDWORD(v248) == 1002)
            {
              v127 = @"NW_INTERFACE_SUBTYPE_WIFI_AWDL";
            }

            if (HIDWORD(v248) == 1001)
            {
              v127 = @"NW_INTERFACE_SUBTYPE_WIFI_INFRASTRUCTURE";
            }

            if (SHIDWORD(v248) <= 4000)
            {
              v130 = v127;
            }

            else
            {
              v130 = v128;
            }

            [v8 setObject:v130 forKeyedSubscript:@"connectedInterfaceSubtype"];
            v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v245];
            [v8 setObject:v131 forKeyedSubscript:@"connectionReuseCount"];

            v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v245)];
            [v8 setObject:v132 forKeyedSubscript:@"dataStallCount"];

            v133 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v226];
            [v8 setObject:v133 forKeyedSubscript:@"bytesIn"];

            v134 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v226 + 1)];
            [v8 setObject:v134 forKeyedSubscript:@"bytesOut"];

            v135 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v227];
            [v8 setObject:v135 forKeyedSubscript:@"bytesDuplicate"];

            v136 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v227 + 1)];
            [v8 setObject:v136 forKeyedSubscript:@"bytesOutOfOrder"];

            v137 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v228];
            [v8 setObject:v137 forKeyedSubscript:@"bytesRetransmitted"];

            v138 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v228 + 1)];
            [v8 setObject:v138 forKeyedSubscript:@"ecnCapablePacketsSent"];

            v139 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v229];
            [v8 setObject:v139 forKeyedSubscript:@"ecnCapablePacketsAcked"];

            v140 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v229 + 1)];
            [v8 setObject:v140 forKeyedSubscript:@"ecnCapablePacketsMarked"];

            v141 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v230];
            [v8 setObject:v141 forKeyedSubscript:@"ecnCapablePacketsLost"];

            v142 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v230 + 1)];
            [v8 setObject:v142 forKeyedSubscript:@"packetsIn"];

            v143 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v231];
            [v8 setObject:v143 forKeyedSubscript:@"ect1PacketsIn"];

            v144 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v231 + 1)];
            [v8 setObject:v144 forKeyedSubscript:@"ect0PacketsIn"];

            v145 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v232];
            [v8 setObject:v145 forKeyedSubscript:@"cePacketsIn"];

            v146 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v232 + 1)];
            [v8 setObject:v146 forKeyedSubscript:@"packetsOut"];

            v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v241];
            [v8 setObject:v147 forKeyedSubscript:@"currentRTT"];

            v148 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v241)];
            [v8 setObject:v148 forKeyedSubscript:@"smoothedRTT"];

            v149 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v241)];
            [v8 setObject:v149 forKeyedSubscript:@"bestRTT"];

            v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v241)];
            [v8 setObject:v150 forKeyedSubscript:@"rTTvariance"];

            v151 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v242];
            [v8 setObject:v151 forKeyedSubscript:@"synRetransmissionCount"];

            v152 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v236];
            [v8 setObject:v152 forKeyedSubscript:@"estimatedUploadThroughput"];

            v153 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v236 + 1)];
            [v8 setObject:v153 forKeyedSubscript:@"estimatedDownloadThroughput"];
          }

          if (v260 - 1 > 4)
          {
            v154 = @"NW_PRIVACY_STANCE_UNKNOWN";
          }

          else
          {
            v154 = off_1E6A3A0F0[(v260 - 1)];
          }

          [v8 setObject:v154 forKeyedSubscript:@"privacyStance"];
          v215 = v7;
          v216 = v4;
          if (v264 - 1 > 9)
          {
            v155 = @"UNKNOWN";
          }

          else
          {
            v155 = off_1E6A3A118[(v264 - 1)];
          }

          [v8 setObject:v155 forKeyedSubscript:@"privacyProxyClient"];
          v156 = [MEMORY[0x1E696AD98] numberWithInt:v265 & 1];
          [v8 setObject:v156 forKeyedSubscript:@"isKnownTracker"];

          v157 = [MEMORY[0x1E696AD98] numberWithInt:(v265 >> 1) & 1];
          [v8 setObject:v157 forKeyedSubscript:@"isThirdPartyWebContent"];

          v158 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 9) & 1];
          [v8 setObject:v158 forKeyedSubscript:@"isWebSearchContent"];

          v218 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v159 = &v267;
          v160 = 10;
          do
          {
            if (*(v159 + 12) == -1)
            {
              break;
            }

            v161 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v162 = [MEMORY[0x1E696AD98] numberWithInt:*(v159 + 12)];
            [v161 setObject:v162 forKeyedSubscript:@"protocolIndex"];

            v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v159 encoding:134217984];
            [v161 setObject:v163 forKeyedSubscript:@"protocolName"];

            v164 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v159[4]];
            [v161 setObject:v164 forKeyedSubscript:@"handshakeMilliseconds"];

            v165 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v159[5]];
            [v161 setObject:v165 forKeyedSubscript:@"handshakeRTTMilliseconds"];

            [v218 addObject:v161];
            v159 += 7;
            --v160;
          }

          while (v160);
          [v8 setObject:v218 forKeyedSubscript:@"protocolEstablishmentReports"];
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v166 = gLogObj;
          if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
          {
            v167 = [v8 objectForKeyedSubscript:@"protocolEstablishmentReports"];
            LODWORD(v276[0]) = 136446466;
            *(v276 + 4) = "[NWConnectionStatistics dictionaryReport]";
            WORD6(v276[0]) = 2112;
            *(v276 + 14) = v167;
            _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s Establishment reports: \n%@", v276, 0x16u);
          }

          v168 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v237 + 1)];
          [v8 setObject:v168 forKeyedSubscript:@"migratedToCellCount"];

          v169 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v238];
          [v8 setObject:v169 forKeyedSubscript:@"migratedToWiFiCount"];

          v170 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v238 + 1)];
          [v8 setObject:v170 forKeyedSubscript:@"migratedToWiredCount"];

          v171 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v239];
          [v8 setObject:v171 forKeyedSubscript:@"migratedToOtherCount"];

          v172 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v239 + 1)];
          [v8 setObject:v172 forKeyedSubscript:@"migratedToFallbackCount"];

          v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (v268[0])
          {
            v174 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v268 encoding:134217984];
            [v174 setObject:v175 forKeyedSubscript:@"proxyName"];

            [v173 addObject:v174];
            if (v269[0])
            {
              v176 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v269 encoding:134217984];
              [v176 setObject:v177 forKeyedSubscript:@"proxyName"];

              [v173 addObject:v176];
            }
          }

          [v8 setObject:v173 forKeyedSubscript:@"proxyHops"];
          externallyVisibleConnectionUUID = [v7 externallyVisibleConnectionUUID];
          uUIDString = [externallyVisibleConnectionUUID UUIDString];
          [v8 setObject:uUIDString forKeyedSubscript:@"connectionUUID"];

          externallyVisibleParentUUID = [v7 externallyVisibleParentUUID];
          uUIDString2 = [externallyVisibleParentUUID UUIDString];
          [v8 setObject:uUIDString2 forKeyedSubscript:@"parentUUID"];

          v182 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v222 = 0u;
          v223 = 0u;
          v224 = 0u;
          v225 = 0u;
          externallyVisibleActivityUUIDs = [v7 externallyVisibleActivityUUIDs];
          v184 = [externallyVisibleActivityUUIDs countByEnumeratingWithState:&v222 objects:v277 count:16];
          if (v184)
          {
            v185 = v184;
            v186 = *v223;
            do
            {
              for (i = 0; i != v185; ++i)
              {
                if (*v223 != v186)
                {
                  objc_enumerationMutation(externallyVisibleActivityUUIDs);
                }

                uUIDString3 = [*(*(&v222 + 1) + 8 * i) UUIDString];
                [v182 addObject:uUIDString3];
              }

              v185 = [externallyVisibleActivityUUIDs countByEnumeratingWithState:&v222 objects:v277 count:16];
            }

            while (v185);
          }

          [v8 setObject:v182 forKeyedSubscript:@"activities"];
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v189 = gLogObj;
          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            v190 = [v8 objectForKeyedSubscript:@"activities"];
            LODWORD(v276[0]) = 136446466;
            *(v276 + 4) = "[NWConnectionStatistics dictionaryReport]";
            WORD6(v276[0]) = 2112;
            *(v276 + 14) = v190;
            _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_DEBUG, "%{public}s Activities array: \n%@", v276, 0x16u);
          }

          v191 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 1) & 1];
          [v8 setObject:v191 forKeyedSubscript:@"quicExperimentEnabled"];

          v192 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 13) & 1];
          [v8 setObject:v192 forKeyedSubscript:@"quicMigrationEnabled"];

          v193 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v266 >> 14) & 1];
          [v8 setObject:v193 forKeyedSubscript:@"quicMigrationSupported"];

          v194 = [MEMORY[0x1E696AD98] numberWithInt:v266 >> 15];
          [v8 setObject:v194 forKeyedSubscript:@"ulpn"];

          layer2Report5 = [v215 layer2Report];

          v4 = v216;
          if (layer2Report5)
          {
            layer2Report6 = [v215 layer2Report];
            [v8 setObject:layer2Report6 forKeyedSubscript:@"l2Report"];
          }

          deviceReport = [v215 deviceReport];

          if (deviceReport)
          {
            deviceReport2 = [v215 deviceReport];
            [v8 setObject:deviceReport2 forKeyedSubscript:@"deviceReport"];
          }

          [v215 setMetricType:2];
          objc_storeStrong(v216, v8);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v199 = gLogObj;
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
          {
            v200 = *v216;
            LODWORD(v276[0]) = 136446466;
            *(v276 + 4) = "[NWConnectionStatistics dictionaryReport]";
            WORD6(v276[0]) = 2114;
            *(v276 + 14) = v200;
            _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s Generated nw_connection report: %{public}@", v276, 0x16u);
          }

          v201 = v218;
          goto LABEL_179;
        }

LABEL_96:
        v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v243)];
        [v8 setObject:v70 forKeyedSubscript:@"proxyMilliseconds"];

        v69 = v265;
        goto LABEL_97;
      }
    }

    else if ((v265 & 0x200) == 0)
    {
      goto LABEL_95;
    }

    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v243];
    [v8 setObject:v78 forKeyedSubscript:@"resolutionMilliseconds"];

    v69 = v265;
    if ((v265 & 0x18) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_3:

  return v5;
}

- (id)_createFallbackReportDictionaryFromStruct:(const netcore_stats_tcp_cell_fallback_report *)struct
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (struct)
  {
    selfCopy = self;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:struct->fellback];
    [v5 setObject:v6 forKeyedSubscript:@"fellback"];

    deny_reason = struct->deny_reason;
    if (deny_reason)
    {
      v8 = @"DENY_REASON_BLOCKED_FROM_USING_CELL_DATA";
      if (deny_reason == 2)
      {
        v8 = @"DENY_REASON_EXCEEDED_CELL_FALLBACK_DATA_BUDGET";
      }

      if (deny_reason == 3)
      {
        v9 = @"DENY_REASON_METRICS_TESTING_DENIED";
      }

      else
      {
        v9 = v8;
      }

      [v5 setObject:v9 forKeyedSubscript:@"denyReason"];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->fallback_timer_msecs];
    v26 = v5;
    [v5 setObject:v10 forKeyedSubscript:@"fallbackTimerMsecs"];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (struct->network_event_count)
    {
      v12 = 0;
      p_time_to_network_event_msecs = &struct->network_events[0].time_to_network_event_msecs;
      do
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v17 = v16;
        [v16 setObject:? forKeyedSubscript:?];
        v14 = *p_time_to_network_event_msecs;
        p_time_to_network_event_msecs += 2;
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
        [v17 setObject:v15 forKeyedSubscript:@"timeToNetworkEventsMsecs"];

        [v11 addObject:v17];
        ++v12;
      }

      while (v12 < struct->network_event_count);
    }

    v5 = v26;
    [v26 setObject:v11 forKeyedSubscript:@"networkEvents"];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (struct->data_usage_snapshots_at_network_events_count)
    {
      v19 = 0;
      data_usage_snapshots_at_network_events = struct->data_usage_snapshots_at_network_events;
      while (1)
      {
        v21 = [(NWConnectionStatistics *)selfCopy _createDataUsageSnapshotDictionaryFromStruct:data_usage_snapshots_at_network_events];
        if (!v21)
        {
          break;
        }

        v22 = v21;
        [v18 addObject:v21];

        ++v19;
        ++data_usage_snapshots_at_network_events;
        if (v19 >= struct->data_usage_snapshots_at_network_events_count)
        {
          goto LABEL_17;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v28 = "[NWConnectionStatistics _createFallbackReportDictionaryFromStruct:]";
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s failing to allocate NWLibnetcoreConnectionDataUsageSnapshotDictionary", buf, 0xCu);
      }

      struct = 0;
    }

    else
    {
LABEL_17:
      [v26 setObject:v18 forKeyedSubscript:@"connectionDataUsageSnapshots"];
      struct = v26;
    }
  }

  return struct;
}

- (id)_createStatisticsReportDictionaryFromStruct:(const netcore_stats_tcp_statistics_report *)struct
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->time_to_dns_start_msecs];
    [v4 setObject:v5 forKeyedSubscript:@"timeToDNSStartMsecs"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->time_to_dns_resolved_msecs];
    [v4 setObject:v6 forKeyedSubscript:@"timeToDNSResolvedMsecs"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->dns_resolved_time_msecs];
    [v4 setObject:v7 forKeyedSubscript:@"dNSResolvedTimeMsecs"];

    v8 = [MEMORY[0x1E696AD98] numberWithInt:*(struct + 104) & 1];
    [v4 setObject:v8 forKeyedSubscript:@"dNSAnswersCached"];

    v9 = struct->interface_type - 1;
    if (v9 > 3)
    {
      v10 = @"INTERFACE_TYPE_OTHER";
    }

    else
    {
      v10 = off_1E6A3A0D0[v9];
    }

    [v4 setObject:v10 forKeyedSubscript:@"interfaceType"];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->time_to_connection_start_msecs];
    [v4 setObject:v11 forKeyedSubscript:@"timeToConnectionStartMsecs"];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->time_to_connection_establishment_msecs];
    [v4 setObject:v12 forKeyedSubscript:@"timeToConnectionEstablishmentMsecs"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->connection_establishment_time_msecs];
    [v4 setObject:v13 forKeyedSubscript:@"connectionEstablishmentTimeMsecs"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->flow_duration_msecs];
    [v4 setObject:v14 forKeyedSubscript:@"flowDurationMsecs"];

    v15 = struct->connected_interface_type - 1;
    if (v15 > 3)
    {
      v16 = @"INTERFACE_TYPE_OTHER";
    }

    else
    {
      v16 = off_1E6A3A0D0[v15];
    }

    [v4 setObject:v16 forKeyedSubscript:@"connectedInterfaceType"];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 1) & 1];
    [v4 setObject:v17 forKeyedSubscript:@"connected"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->traffic_class];
    [v4 setObject:v18 forKeyedSubscript:@"trafficClass"];

    v19 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 2) & 1];
    [v4 setObject:v19 forKeyedSubscript:@"cellularFallback"];

    v20 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 4) & 1];
    [v4 setObject:v20 forKeyedSubscript:@"preferFallback"];

    v21 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 3) & 1];
    [v4 setObject:v21 forKeyedSubscript:@"cellularRRCConnected"];

    v22 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 5) & 1];
    [v4 setObject:v22 forKeyedSubscript:@"kernelReportedStalls"];

    v23 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 6) & 1];
    [v4 setObject:v23 forKeyedSubscript:@"kernelReportingConnectionStalled"];

    v24 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 7) & 1];
    [v4 setObject:v24 forKeyedSubscript:@"kernelReportingReadStalled"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:HIBYTE(*(struct + 104)) & 1];
    [v4 setObject:v25 forKeyedSubscript:@"kernelReportingWriteStalled"];

    v26 = MEMORY[0x1E696AD98];
    bytes_in = struct->bytes_in;
    if (struct->bytes_in)
    {
      v28 = bytes_in;
      v29 = log10(bytes_in);
      v30 = __exp10((2 - vcvtpd_s64_f64(v29)));
      v31 = (round(v30 * v28) / v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = [v26 numberWithUnsignedLongLong:v31];
    [v4 setObject:v32 forKeyedSubscript:@"bytesIn"];

    v33 = MEMORY[0x1E696AD98];
    bytes_out = struct->bytes_out;
    if (bytes_out)
    {
      v35 = bytes_out;
      v36 = log10(bytes_out);
      v37 = __exp10((2 - vcvtpd_s64_f64(v36)));
      v38 = (round(v37 * v35) / v37);
    }

    else
    {
      v38 = 0;
    }

    v39 = [v33 numberWithUnsignedLongLong:v38];
    [v4 setObject:v39 forKeyedSubscript:@"bytesOut"];

    v40 = MEMORY[0x1E696AD98];
    bytes_duplicate = struct->bytes_duplicate;
    if (bytes_duplicate)
    {
      v42 = bytes_duplicate;
      v43 = log10(bytes_duplicate);
      v44 = __exp10((2 - vcvtpd_s64_f64(v43)));
      v45 = (round(v44 * v42) / v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = [v40 numberWithUnsignedLongLong:v45];
    [v4 setObject:v46 forKeyedSubscript:@"bytesDuplicate"];

    v47 = MEMORY[0x1E696AD98];
    bytes_ooo = struct->bytes_ooo;
    if (bytes_ooo)
    {
      v49 = bytes_ooo;
      v50 = log10(bytes_ooo);
      v51 = __exp10((2 - vcvtpd_s64_f64(v50)));
      v52 = (round(v51 * v49) / v51);
    }

    else
    {
      v52 = 0;
    }

    v53 = [v47 numberWithUnsignedLongLong:v52];
    [v4 setObject:v53 forKeyedSubscript:@"bytesOutOfOrder"];

    v54 = MEMORY[0x1E696AD98];
    bytes_retransmitted = struct->bytes_retransmitted;
    if (bytes_retransmitted)
    {
      v56 = bytes_retransmitted;
      v57 = log10(bytes_retransmitted);
      v58 = __exp10((2 - vcvtpd_s64_f64(v57)));
      v59 = (round(v58 * v56) / v58);
    }

    else
    {
      v59 = 0;
    }

    v60 = [v54 numberWithUnsignedLongLong:v59];
    [v4 setObject:v60 forKeyedSubscript:@"bytesRetransmitted"];

    v61 = MEMORY[0x1E696AD98];
    packets_in = struct->packets_in;
    if (packets_in)
    {
      v63 = packets_in;
      v64 = log10(packets_in);
      v65 = __exp10((2 - vcvtpd_s64_f64(v64)));
      v66 = (round(v65 * v63) / v65);
    }

    else
    {
      v66 = 0;
    }

    v67 = [v61 numberWithUnsignedLongLong:v66];
    [v4 setObject:v67 forKeyedSubscript:@"packetsIn"];

    v68 = MEMORY[0x1E696AD98];
    packets_out = struct->packets_out;
    if (packets_out)
    {
      v70 = packets_out;
      v71 = log10(packets_out);
      v72 = __exp10((2 - vcvtpd_s64_f64(v71)));
      v73 = (round(v72 * v70) / v72);
    }

    else
    {
      v73 = 0;
    }

    v74 = [v68 numberWithUnsignedLongLong:v73];
    [v4 setObject:v74 forKeyedSubscript:@"packetsOut"];

    v75 = MEMORY[0x1E696AD98];
    packets_duplicate = struct->packets_duplicate;
    if (packets_duplicate)
    {
      v77 = packets_duplicate;
      v78 = log10(packets_duplicate);
      v79 = __exp10((2 - vcvtpd_s64_f64(v78)));
      v80 = (round(v79 * v77) / v79);
    }

    else
    {
      v80 = 0;
    }

    v81 = [v75 numberWithUnsignedLongLong:v80];
    [v4 setObject:v81 forKeyedSubscript:@"packetsDuplicate"];

    v82 = MEMORY[0x1E696AD98];
    packets_ooo = struct->packets_ooo;
    if (packets_ooo)
    {
      v84 = packets_ooo;
      v85 = log10(packets_ooo);
      v86 = __exp10((2 - vcvtpd_s64_f64(v85)));
      v87 = (round(v86 * v84) / v86);
    }

    else
    {
      v87 = 0;
    }

    v88 = [v82 numberWithUnsignedLongLong:v87];
    [v4 setObject:v88 forKeyedSubscript:@"packetsOutOfOrder"];

    v89 = MEMORY[0x1E696AD98];
    packets_retransmitted = struct->packets_retransmitted;
    if (packets_retransmitted)
    {
      v91 = packets_retransmitted;
      v92 = log10(packets_retransmitted);
      v93 = __exp10((2 - vcvtpd_s64_f64(v92)));
      v94 = (round(v93 * v91) / v93);
    }

    else
    {
      v94 = 0;
    }

    v95 = [v89 numberWithUnsignedLongLong:v94];
    [v4 setObject:v95 forKeyedSubscript:@"packetsRetransmitted"];

    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->current_rtt_msecs];
    [v4 setObject:v96 forKeyedSubscript:@"currentRTTMsecs"];

    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->smoothed_rtt_msecs];
    [v4 setObject:v97 forKeyedSubscript:@"smoothedRTTMsecs"];

    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->best_rtt_msecs];
    [v4 setObject:v98 forKeyedSubscript:@"bestRTTMsecs"];

    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->rtt_variance];
    [v4 setObject:v99 forKeyedSubscript:@"rTTvariance"];

    v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->syn_retransmission_count];
    [v4 setObject:v100 forKeyedSubscript:@"synRetransmissionCount"];

    v101 = [MEMORY[0x1E696AD98] numberWithInt:(*(struct + 104) >> 9) & 1];
    [v4 setObject:v101 forKeyedSubscript:@"tcpFastOpen"];

    v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->better_route_event_count];
    [v4 setObject:v102 forKeyedSubscript:@"betterRouteEventCount"];

    v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->connection_reuse_count];
    [v4 setObject:v103 forKeyedSubscript:@"connectionReuseCount"];

    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->app_reporting_data_stall_count];
    [v4 setObject:v104 forKeyedSubscript:@"appReportingDataStallCount"];

    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:struct->app_data_stall_timer_msecs];
    [v4 setObject:v105 forKeyedSubscript:@"appDataStallTimerMsecs"];

    v106 = v4;
  }

  return v4;
}

- (id)_createDataUsageSnapshotDictionaryFromStruct:(const netcore_stats_data_usage_snapshot *)struct
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    bytes_in = struct->bytes_in;
    if (struct->bytes_in)
    {
      v7 = bytes_in;
      v8 = log10(bytes_in);
      v9 = __exp10((2 - vcvtpd_s64_f64(v8)));
      v10 = (round(v9 * v7) / v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 numberWithUnsignedLongLong:v10];
    [v4 setObject:v11 forKeyedSubscript:@"bytesIn"];

    v12 = MEMORY[0x1E696AD98];
    bytes_out = struct->bytes_out;
    if (bytes_out)
    {
      v14 = bytes_out;
      v15 = log10(bytes_out);
      v16 = __exp10((2 - vcvtpd_s64_f64(v15)));
      v17 = (round(v16 * v14) / v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = [v12 numberWithUnsignedLongLong:v17];
    [v4 setObject:v18 forKeyedSubscript:@"bytesOut"];

    v19 = MEMORY[0x1E696AD98];
    multipath_bytes_in_cell = struct->multipath_bytes_in_cell;
    if (multipath_bytes_in_cell)
    {
      v21 = multipath_bytes_in_cell;
      v22 = log10(multipath_bytes_in_cell);
      v23 = __exp10((2 - vcvtpd_s64_f64(v22)));
      v24 = (round(v23 * v21) / v23);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v19 numberWithUnsignedLongLong:v24];
    [v4 setObject:v25 forKeyedSubscript:@"multipathBytesInCell"];

    v26 = MEMORY[0x1E696AD98];
    multipath_bytes_out_cell = struct->multipath_bytes_out_cell;
    if (multipath_bytes_out_cell)
    {
      v28 = multipath_bytes_out_cell;
      v29 = log10(multipath_bytes_out_cell);
      v30 = __exp10((2 - vcvtpd_s64_f64(v29)));
      v31 = (round(v30 * v28) / v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = [v26 numberWithUnsignedLongLong:v31];
    [v4 setObject:v32 forKeyedSubscript:@"multipathBytesOutCell"];

    v33 = MEMORY[0x1E696AD98];
    multipath_bytes_in_wifi = struct->multipath_bytes_in_wifi;
    if (multipath_bytes_in_wifi)
    {
      v35 = multipath_bytes_in_wifi;
      v36 = log10(multipath_bytes_in_wifi);
      v37 = __exp10((2 - vcvtpd_s64_f64(v36)));
      v38 = (round(v37 * v35) / v37);
    }

    else
    {
      v38 = 0;
    }

    v39 = [v33 numberWithUnsignedLongLong:v38];
    [v4 setObject:v39 forKeyedSubscript:@"multipathBytesInWiFi"];

    v40 = MEMORY[0x1E696AD98];
    multipath_bytes_out_wifi = struct->multipath_bytes_out_wifi;
    if (multipath_bytes_out_wifi)
    {
      v42 = multipath_bytes_out_wifi;
      v43 = log10(multipath_bytes_out_wifi);
      v44 = __exp10((2 - vcvtpd_s64_f64(v43)));
      v45 = (round(v44 * v42) / v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = [v40 numberWithUnsignedLongLong:v45];
    [v4 setObject:v46 forKeyedSubscript:@"multipathBytesOutWiFi"];

    v47 = MEMORY[0x1E696AD98];
    multipath_bytes_in_initial = struct->multipath_bytes_in_initial;
    if (multipath_bytes_in_initial)
    {
      v49 = multipath_bytes_in_initial;
      v50 = log10(multipath_bytes_in_initial);
      v51 = __exp10((2 - vcvtpd_s64_f64(v50)));
      v52 = (round(v51 * v49) / v51);
    }

    else
    {
      v52 = 0;
    }

    v53 = [v47 numberWithUnsignedLongLong:v52];
    [v4 setObject:v53 forKeyedSubscript:@"multipathBytesInInitial"];

    v54 = MEMORY[0x1E696AD98];
    multipath_bytes_out_initial = struct->multipath_bytes_out_initial;
    if (multipath_bytes_out_initial)
    {
      v56 = multipath_bytes_out_initial;
      v57 = log10(multipath_bytes_out_initial);
      v58 = __exp10((2 - vcvtpd_s64_f64(v57)));
      v59 = (round(v58 * v56) / v58);
    }

    else
    {
      v59 = 0;
    }

    v60 = [v54 numberWithUnsignedLongLong:v59];
    [v4 setObject:v60 forKeyedSubscript:@"multipathBytesOutInitial"];

    v61 = v4;
  }

  return v4;
}

- (unsigned)metricType
{
  if (self->_metricType <= 1u)
  {
    return 1;
  }

  else
  {
    return self->_metricType;
  }
}

- (void)setEffectiveBundleID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v8 = "[NWConnectionStatistics setEffectiveBundleID:]";
      v9 = 2112;
      v10 = dCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Set effective bundle ID to %@ for %@", buf, 0x20u);
    }
  }

  [(NWConnectionStatistics *)self report];
  strlcpy(v6, [dCopy UTF8String], 0x100uLL);
}

- (NSString)effectiveBundleID
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(NWConnectionStatistics *)self report];
  v4 = [v3 initWithCString:&v6 encoding:134217984];

  return v4;
}

- (void)setBundleID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v8 = "[NWConnectionStatistics setBundleID:]";
      v9 = 2112;
      v10 = dCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Set bundle ID to %@ for %@", buf, 0x20u);
    }
  }

  [(NWConnectionStatistics *)self report];
  strlcpy(v6, [dCopy UTF8String], 0x100uLL);
}

- (NSString)bundleID
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(NWConnectionStatistics *)self report];
  v4 = [v3 initWithCString:&v6 encoding:134217984];

  return v4;
}

- (NSArray)activities
{
  MEMORY[0x1EEE9AC00](self);
  v3 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = v2 + 6;
  v4 = v2[6];
  if (v4)
  {
    goto LABEL_31;
  }

  location = v5;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = 0;
  v8 = 431;
  v9 = "[NWConnectionStatistics activities]";
  v31 = v6;
  while (1)
  {
    [v3 report];
    if (uuid_is_null(&type[v8 + 3425]) || v7 >= 0x32)
    {
      break;
    }

    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    [v3 report];
    v11 = [v10 initWithUUIDBytes:&type[v8 + 1]];
    if (v11)
    {
      [v6 addObject:v11];
      goto LABEL_4;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    buf = 136446210;
    v35 = v9;
    LODWORD(v29) = 12;
    p_buf = &buf;
    v13 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v13, type, &v32))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type[0];
        if (os_log_type_enabled(v14, type[0]))
        {
          buf = 136446210;
          v35 = v9;
          v16 = v14;
          v17 = v15;
          v18 = "%{public}s Failed to convert UUID from connection report";
          goto LABEL_19;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v19 = v9;
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type[0];
          v23 = os_log_type_enabled(v21, type[0]);
          if (backtrace_string)
          {
            if (v23)
            {
              buf = 136446466;
              v35 = v19;
              v36 = 2082;
              v37 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Failed to convert UUID from connection report, dumping backtrace:%{public}s", &buf, 0x16u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v23)
            {
              buf = 136446210;
              v35 = v19;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Failed to convert UUID from connection report, no backtrace", &buf, 0xCu);
            }
          }

          v9 = v19;
          v6 = v31;
          goto LABEL_25;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v14, type[0]))
        {
          buf = 136446210;
          v35 = v9;
          v16 = v14;
          v17 = v24;
          v18 = "%{public}s Failed to convert UUID from connection report, backtrace limit exceeded";
LABEL_19:
          _os_log_impl(&dword_181A37000, v16, v17, v18, &buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v13)
    {
      free(v13);
    }

LABEL_4:

    ++v7;
    v8 += 16;
  }

  objc_storeStrong(location, v6);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = *location;
    buf = 136446466;
    v35 = v9;
    v36 = 2112;
    v37 = v26;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s Created array of UUIDs: %@", &buf, 0x16u);
  }

  v4 = *location;
LABEL_31:

  return v4;
}

- (NSUUID)parentUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(NWConnectionStatistics *)self report];
  v4 = [v3 initWithUUIDBytes:&v6];

  return v4;
}

- (NSUUID)connectionUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(NWConnectionStatistics *)self report];
  v4 = [v3 initWithUUIDBytes:&v6];

  return v4;
}

+ (id)protocolToTransportProtocolString:(unsigned int)string
{
  v3 = @"NW_TRANSPORT_PROTOCOL_QUIC";
  v4 = @"NW_TRANSPORT_PROTOCOL_UNKNOWN";
  if (string == 17)
  {
    v4 = @"NW_TRANSPORT_PROTOCOL_UDP";
  }

  if (string != 253)
  {
    v3 = v4;
  }

  if (string == 6)
  {
    return @"NW_TRANSPORT_PROTOCOL_TCP";
  }

  else
  {
    return v3;
  }
}

@end