@interface NWActivityStatistics
+ (id)createActivityReportDictionary:(nw_activity_report_s *)a3 uuidString:(id)a4 parentUUIDString:(id)a5;
- (NSMutableDictionary)dictionaryReport;
- (NSString)bundleID;
- (NSUUID)activityUUID;
- (NSUUID)parentUUID;
- (NWActivityStatistics)initWithJSONData:(id)a3;
- (NWActivityStatistics)initWithNWActivityReport:(nw_activity_report_s *)a3 length:(unint64_t)a4;
- (unint64_t)investigation_identifier;
- (unsigned)metricType;
- (void)setBundleID:(id)a3;
@end

@implementation NWActivityStatistics

- (NSMutableDictionary)dictionaryReport
{
  v23 = *MEMORY[0x1E69E9840];
  p_dictionaryReport = &self->_dictionaryReport;
  dictionaryReport = self->_dictionaryReport;
  if (dictionaryReport)
  {
LABEL_14:
    v17 = dictionaryReport;
    goto LABEL_15;
  }

  v5 = [(NWActivityStatistics *)self externallyVisibleActivityUUID];

  if (v5)
  {
    v6 = [(NWActivityStatistics *)self externallyVisibleActivityUUID];
    v5 = [v6 UUIDString];
  }

  v7 = [(NWActivityStatistics *)self externallyVisibleParentUUID];

  if (v7)
  {
    v8 = [(NWActivityStatistics *)self externallyVisibleParentUUID];
    v7 = [v8 UUIDString];
  }

  [(NWActivityStatistics *)self report];
  v9 = [NWActivityStatistics createActivityReportDictionary:&v19 uuidString:v5 parentUUIDString:v7];
  if (v9)
  {
    v10 = v9;
    v11 = [(NWActivityStatistics *)self layer2Report];

    if (v11)
    {
      v12 = [(NWActivityStatistics *)self layer2Report];
      [v10 setObject:v12 forKeyedSubscript:@"l2Report"];
    }

    v13 = [(NWActivityStatistics *)self deviceReport];

    if (v13)
    {
      v14 = [(NWActivityStatistics *)self deviceReport];
      [v10 setObject:v14 forKeyedSubscript:@"deviceReport"];
    }

    [(NWActivityStatistics *)self setMetricType:3];
    objc_storeStrong(p_dictionaryReport, v10);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *p_dictionaryReport;
      v19 = 136446466;
      v20 = "[NWActivityStatistics dictionaryReport]";
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Generated nw_activity report: %{public}@", &v19, 0x16u);
    }

    dictionaryReport = *p_dictionaryReport;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (NWActivityStatistics)initWithJSONData:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NWActivityStatistics;
  v5 = [(NWActivityStatistics *)&v22 init];
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
  v24 = "[NWActivityStatistics initWithJSONData:]";
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
        v24 = "[NWActivityStatistics initWithJSONData:]";
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
          v24 = "[NWActivityStatistics initWithJSONData:]";
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
        v24 = "[NWActivityStatistics initWithJSONData:]";
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
        v24 = "[NWActivityStatistics initWithJSONData:]";
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

- (NWActivityStatistics)initWithNWActivityReport:(nw_activity_report_s *)a3 length:(unint64_t)a4
{
  v9[39] = *MEMORY[0x1E69E9840];
  if (a4 == 312)
  {
    memcpy(v9, a3, 0x138uLL);
    [(NWActivityStatistics *)self setReport:v9];
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
      *(v9 + 4) = "[NWActivityStatistics initWithNWActivityReport:length:]";
      WORD2(v9[1]) = 2048;
      *(&v9[1] + 6) = 312;
      HIWORD(v9[2]) = 2048;
      v9[3] = a4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s failure to initialize statistics object from nw_activity report, expected size %lu actual size %zu", v9, 0x20u);
    }

    v5 = 0;
  }

  return v5;
}

- (unsigned)metricType
{
  if (self->_metricType)
  {
    return self->_metricType;
  }

  else
  {
    return 3;
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
      v8 = "[NWActivityStatistics setBundleID:]";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Set bundle ID to %@ for %@", buf, 0x20u);
    }
  }

  [(NWActivityStatistics *)self report];
  strlcpy(v6, [v4 UTF8String], 0x100uLL);
}

- (NSString)bundleID
{
  v5[33] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  [(NWActivityStatistics *)self report];
  v3 = [v2 stringWithCString:v5 encoding:134217984];

  return v3;
}

- (unint64_t)investigation_identifier
{
  v4 = *MEMORY[0x1E69E9840];
  [(NWActivityStatistics *)self report];
  return v3;
}

- (NSUUID)parentUUID
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_parentUUID)
  {
    [(NWActivityStatistics *)self report];
    if (!uuid_is_null(v9))
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      [(NWActivityStatistics *)self report];
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
    [(NWActivityStatistics *)self report];
    if (!uuid_is_null(v9))
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      [(NWActivityStatistics *)self report];
      v4 = [v3 initWithUUIDBytes:&v8];
      activityUUID = self->_activityUUID;
      self->_activityUUID = v4;
    }
  }

  v6 = self->_activityUUID;

  return v6;
}

+ (id)createActivityReportDictionary:(nw_activity_report_s *)a3 uuidString:(id)a4 parentUUIDString:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->domain];
    [v9 setObject:v10 forKeyedSubscript:@"activityDomain"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->label];
    [v9 setObject:v11 forKeyedSubscript:@"activityLabel"];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a3 + 304) & 1];
    [v9 setObject:v12 forKeyedSubscript:@"isRetry"];

    [v9 setObject:v7 forKeyedSubscript:@"activityUUID"];
    [v9 setObject:v8 forKeyedSubscript:@"parentActivityUUID"];
    v13 = [MEMORY[0x1E696AEC0] stringWithCString:a3->bundle_id encoding:134217984];
    [v9 setObject:v13 forKeyedSubscript:@"bundleID"];

    if (os_variant_has_internal_diagnostics())
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->investigation_identifier];
      [v9 setObject:v14 forKeyedSubscript:@"investigationID"];
    }

    v15 = v9;
  }

  return v9;
}

@end