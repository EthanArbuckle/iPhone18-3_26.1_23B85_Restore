@interface NWActivityEpilogueStatistics
+ (id)createActivityEpilogueDictionary:(nw_activity_epilogue_report_s *)a3;
- (NSMutableDictionary)dictionaryReport;
- (NSString)bundleID;
- (NSUUID)activityUUID;
- (NSUUID)parentUUID;
- (NWActivityEpilogueStatistics)initWithJSONData:(id)a3;
- (NWActivityEpilogueStatistics)initWithNWActivityEpilogueReport:(nw_activity_epilogue_report_s *)a3 length:(unint64_t)a4;
- (unint64_t)durationMsecs;
- (unint64_t)investigation_identifier;
- (unsigned)metricType;
- (void)setBundleID:(id)a3;
@end

@implementation NWActivityEpilogueStatistics

- (NWActivityEpilogueStatistics)initWithJSONData:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NWActivityEpilogueStatistics;
  v5 = [(NWActivityEpilogueStatistics *)&v22 init];
  if (v5)
  {
    if (v4 && [v4 length])
    {
      v19 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:1 error:&v19];
      v7 = v19;
      dictionaryReport = v5->_dictionaryReport;
      v5->_dictionaryReport = v6;
    }

    v9 = v5;
    goto LABEL_6;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v24 = "[NWActivityEpilogueStatistics initWithJSONData:]";
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
        v24 = "[NWActivityEpilogueStatistics initWithJSONData:]";
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
          v24 = "[NWActivityEpilogueStatistics initWithJSONData:]";
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
        v24 = "[NWActivityEpilogueStatistics initWithJSONData:]";
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
        v24 = "[NWActivityEpilogueStatistics initWithJSONData:]";
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

- (NWActivityEpilogueStatistics)initWithNWActivityEpilogueReport:(nw_activity_epilogue_report_s *)a3 length:(unint64_t)a4
{
  v9[75] = *MEMORY[0x1E69E9840];
  if (a4 == 592)
  {
    memcpy(v9, a3, 0x250uLL);
    [(NWActivityEpilogueStatistics *)self setReport:v9];
    v5 = self;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9[0]) = 136446722;
      *(v9 + 4) = "[NWActivityEpilogueStatistics initWithNWActivityEpilogueReport:length:]";
      WORD2(v9[1]) = 2048;
      *(&v9[1] + 6) = 592;
      HIWORD(v9[2]) = 2048;
      v9[3] = a4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s failure to initialize statistics object from nw_activity epilogue report, expected size %lu actual size %zu", v9, 0x20u);
    }

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)dictionaryReport
{
  v22 = *MEMORY[0x1E69E9840];
  p_dictionaryReport = &self->_dictionaryReport;
  dictionaryReport = self->_dictionaryReport;
  if (dictionaryReport)
  {
LABEL_2:
    v4 = dictionaryReport;
    goto LABEL_3;
  }

  [(NWActivityEpilogueStatistics *)self report];
  v4 = [NWActivityEpilogueStatistics createActivityEpilogueDictionary:__dst];
  if (v4)
  {
    v7 = v4;
    v8 = [(NWActivityEpilogueStatistics *)self externallyVisibleActivityUUID];

    if (v8)
    {
      v9 = [(NWActivityEpilogueStatistics *)self externallyVisibleActivityUUID];
      v8 = [v9 UUIDString];
    }

    v10 = [(NWActivityEpilogueStatistics *)self externallyVisibleParentUUID];

    if (v10)
    {
      v11 = [(NWActivityEpilogueStatistics *)self externallyVisibleParentUUID];
      v10 = [v11 UUIDString];
    }

    [(NWActivityEpilogueStatistics *)self report];
    memcpy(__dst, v20, 0x138uLL);
    v12 = [NWActivityStatistics createActivityReportDictionary:__dst uuidString:v8 parentUUIDString:v10];
    if (v12)
    {
      v13 = v12;
      [(NSMutableDictionary *)v7 setObject:v12 forKeyedSubscript:@"activity"];
      v14 = [(NWActivityEpilogueStatistics *)self layer2Report];

      if (v14)
      {
        v15 = [(NWActivityEpilogueStatistics *)self layer2Report];
        [(NSMutableDictionary *)v7 setObject:v15 forKeyedSubscript:@"l2Report"];
      }

      v16 = [(NWActivityEpilogueStatistics *)self deviceReport];

      if (v16)
      {
        v17 = [(NWActivityEpilogueStatistics *)self deviceReport];
        [(NSMutableDictionary *)v7 setObject:v17 forKeyedSubscript:@"deviceReport"];
      }

      [(NWActivityEpilogueStatistics *)self setMetricType:4];
      objc_storeStrong(p_dictionaryReport, v7);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *p_dictionaryReport;
        __dst[0] = 136446466;
        *&__dst[1] = "[NWActivityEpilogueStatistics dictionaryReport]";
        LOWORD(__dst[3]) = 2114;
        *(&__dst[3] + 2) = v19;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s Generated nw_activity epilogue report: %{public}@", __dst, 0x16u);
      }

      dictionaryReport = *p_dictionaryReport;
      goto LABEL_2;
    }

    v4 = 0;
  }

LABEL_3:

  return v4;
}

- (unsigned)metricType
{
  if (self->_metricType)
  {
    return self->_metricType;
  }

  else
  {
    return 4;
  }
}

- (void)setBundleID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v8 = "[NWActivityEpilogueStatistics setBundleID:]";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Set bundle ID to %@ for %@", buf, 0x20u);
    }
  }

  [(NWActivityEpilogueStatistics *)self report];
  strlcpy(v6, [v4 UTF8String], 0x100uLL);
}

- (NSString)bundleID
{
  v5[67] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  [(NWActivityEpilogueStatistics *)self report];
  v3 = [v2 stringWithCString:v5 encoding:134217984];

  return v3;
}

- (unint64_t)durationMsecs
{
  v4 = *MEMORY[0x1E69E9840];
  [(NWActivityEpilogueStatistics *)self report];
  return v3;
}

- (unint64_t)investigation_identifier
{
  v4 = *MEMORY[0x1E69E9840];
  [(NWActivityEpilogueStatistics *)self report];
  return v3;
}

- (NSUUID)parentUUID
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_parentUUID)
  {
    [(NWActivityEpilogueStatistics *)self report];
    if (!uuid_is_null(v9))
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      [(NWActivityEpilogueStatistics *)self report];
      v4 = [v3 initWithUUIDBytes:&v8];
      parentUUID = self->_parentUUID;
      self->_parentUUID = v4;
    }
  }

  v6 = self->_parentUUID;

  return v6;
}

- (NSUUID)activityUUID
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_activityUUID)
  {
    [(NWActivityEpilogueStatistics *)self report];
    if (!uuid_is_null(v9))
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      [(NWActivityEpilogueStatistics *)self report];
      v4 = [v3 initWithUUIDBytes:&v8];
      activityUUID = self->_activityUUID;
      self->_activityUUID = v4;
    }
  }

  v6 = self->_activityUUID;

  return v6;
}

+ (id)createActivityEpilogueDictionary:(nw_activity_epilogue_report_s *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->duration_msecs];
    [v4 setObject:v5 forKeyedSubscript:@"durationMsecs"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->fragments_quenched];
    [v4 setObject:v6 forKeyedSubscript:@"fragmentsQuenched"];

    v7 = a3->completion_reason - 1;
    if (v7 > 3)
    {
      v8 = @"NW_ACTIVITY_COMPLETION_REASON_INVALID";
    }

    else
    {
      v8 = off_1E6A39E80[v7];
    }

    [v4 setObject:v8 forKeyedSubscript:@"completionReason"];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->underlying_error_domain_string];
    [v4 setObject:v9 forKeyedSubscript:@"underlyingErrorDomainString"];

    v10 = [MEMORY[0x1E696AD98] numberWithInt:a3->underlying_error_domain];
    [v4 setObject:v10 forKeyedSubscript:@"underlyingErrorDomain"];

    v11 = [MEMORY[0x1E696AD98] numberWithInt:a3->underlying_error_code];
    [v4 setObject:v11 forKeyedSubscript:@"underlyingErrorCode"];

    v12 = v4;
  }

  return v4;
}

@end