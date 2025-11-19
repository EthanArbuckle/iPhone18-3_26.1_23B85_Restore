@interface NWActivityClientMetricStatistics
- (NSData)metricData;
- (NSDictionary)clientMetric;
- (NSDictionary)dictionaryRepresentation;
- (NSString)clientMetricName;
- (NSString)clientMetricString;
- (NSUUID)activityUUID;
- (NWActivityClientMetricStatistics)initWithData:(id)a3;
- (NWActivityClientMetricStatistics)initWithNWActivityClientMetricReport:(nw_activity_client_metric_report_s *)a3 length:(unint64_t)a4;
- (void)setClientMetricName:(id)a3;
- (void)setClientMetricString:(id)a3;
@end

@implementation NWActivityClientMetricStatistics

- (NWActivityClientMetricStatistics)initWithData:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NWActivityClientMetricStatistics;
  v5 = [(NWActivityClientMetricStatistics *)&v22 init];
  if (v5)
  {
    if (v4 && [v4 length])
    {
      v19 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v19];
      v7 = v19;
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = v6;
        p_super = &v5->_dictionaryRepresentation->super;
        v5->_dictionaryRepresentation = v6;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        p_super = gLogObj;
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v24 = "[NWActivityClientMetricStatistics initWithData:]";
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s Failed to decode client metric data, skipping (error %@)", buf, 0x16u);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = "[NWActivityClientMetricStatistics initWithData:]";
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Client metric data not present, skipping", buf, 0xCu);
      }
    }

    v17 = v5;
    goto LABEL_31;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v24 = "[NWActivityClientMetricStatistics initWithData:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v10, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "[NWActivityClientMetricStatistics initWithData:]";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "[NWActivityClientMetricStatistics initWithData:]";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "[NWActivityClientMetricStatistics initWithData:]";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "[NWActivityClientMetricStatistics initWithData:]";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

LABEL_31:

  return v5;
}

- (NWActivityClientMetricStatistics)initWithNWActivityClientMetricReport:(nw_activity_client_metric_report_s *)a3 length:(unint64_t)a4
{
  MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v12[659] = *MEMORY[0x1E69E9840];
  if (v5 == 5272)
  {
    memcpy(v12, v4, 0x1498uLL);
    [v7 setReport:v12];
    v8 = v7;
  }

  else
  {
    v9 = v5;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v12[0]) = 136446722;
      *(v12 + 4) = "[NWActivityClientMetricStatistics initWithNWActivityClientMetricReport:length:]";
      WORD2(v12[1]) = 2048;
      *(&v12[1] + 6) = 5272;
      HIWORD(v12[2]) = 2048;
      v12[3] = v9;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Failed to initialize statistics object from nw_activity client metrics report, expected size %zu actual size %zu", v12, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (NSData)metricData
{
  v14 = *MEMORY[0x1E69E9840];
  metricData = self->_metricData;
  if (!metricData)
  {
    v4 = [(NWActivityClientMetricStatistics *)self dictionaryRepresentation];
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v4])
    {
      v9 = 0;
      v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v9];
      v6 = v9;
      if (v6 || !v5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v11 = "[NWActivityClientMetricStatistics metricData]";
          v12 = 2112;
          v13 = self;
          _os_log_impl(&dword_181A37000, &v7->super, OS_LOG_TYPE_DEBUG, "%{public}s Failed to serialize client metric %@", buf, 0x16u);
        }
      }

      else
      {
        v5 = v5;
        v6 = 0;
        v7 = self->_metricData;
        self->_metricData = v5;
      }
    }

    metricData = self->_metricData;
  }

  return metricData;
}

- (NSDictionary)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryRepresentation = self->_dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [(NWActivityClientMetricStatistics *)self clientMetricName];
    if (v5)
    {
      v6 = [(NWActivityClientMetricStatistics *)self clientMetricName];
      [(NSDictionary *)v4 setObject:v6 forKey:@"name"];
    }

    v7 = [(NWActivityClientMetricStatistics *)self clientMetric];
    if (v7)
    {
      [(NSDictionary *)v4 setObject:v7 forKey:@"metric"];
    }

    v8 = [(NWActivityClientMetricStatistics *)self bundleID];
    if (v8)
    {
      v9 = v8;
      v10 = [(NWActivityClientMetricStatistics *)self bundleID];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [(NWActivityClientMetricStatistics *)self bundleID];
        [(NSDictionary *)v4 setObject:v12 forKey:@"bundleID"];
      }
    }

    v13 = [(NWActivityClientMetricStatistics *)self externallyVisibleActivityUUID];

    if (v13)
    {
      v14 = [(NWActivityClientMetricStatistics *)self externallyVisibleActivityUUID];
      v15 = [v14 UUIDString];
      [(NSDictionary *)v4 setObject:v15 forKey:@"activityUUID"];
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136446466;
      v20 = "[NWActivityClientMetricStatistics dictionaryRepresentation]";
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s Generated nw_activity client metric report: %{public}@", &v19, 0x16u);
    }

    v17 = self->_dictionaryRepresentation;
    self->_dictionaryRepresentation = v4;

    dictionaryRepresentation = self->_dictionaryRepresentation;
  }

  return dictionaryRepresentation;
}

- (NSDictionary)clientMetric
{
  MEMORY[0x1EEE9AC00](self);
  v3 = v2;
  v20[625] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);
  [v3 report];
  [v3 report];
  if (strlen(v19) >> 3 > 0x270)
  {
    v5 = 5000;
  }

  else
  {
    [v3 report];
    v5 = strlen(v18);
  }

  v6 = [v4 initWithBytesNoCopy:v20 length:v5 freeWhenDone:0];
  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v13];
    v8 = v13;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v15 = "[NWActivityClientMetricStatistics clientMetric]";
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Client metric is valid JSON", buf, 0xCu);
      }

      v7 = v7;
      v10 = v7;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v15 = "[NWActivityClientMetricStatistics clientMetric]";
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Client metric is not valid JSON: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15 = "[NWActivityClientMetricStatistics clientMetric]";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Failed to create clientMetric data", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)setClientMetricString:(id)a3
{
  MEMORY[0x1EEE9AC00](self);
  v4 = v3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = v5;
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v10 = "[NWActivityClientMetricStatistics setClientMetricString:]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Set clientMetricString to %@ for %@", buf, 0x20u);
    }
  }

  [v4 report];
  strlcpy(v8, [v6 UTF8String], 0x1388uLL);
}

- (NSString)clientMetricString
{
  MEMORY[0x1EEE9AC00](self);
  v14 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v6 = v2;
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [v6 report];
      *buf = 136446466;
      v11 = "[NWActivityClientMetricStatistics clientMetricString]";
      v12 = 2080;
      v13 = &v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Client metric C string: %s", buf, 0x16u);
    }

    v2 = v6;
  }

  v3 = MEMORY[0x1E696AEC0];
  [v2 report];
  v4 = [v3 stringWithCString:&v8 encoding:134217984];

  return v4;
}

- (void)setClientMetricName:(id)a3
{
  MEMORY[0x1EEE9AC00](self);
  v4 = v3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = v5;
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v10 = "[NWActivityClientMetricStatistics setClientMetricName:]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Set clientMetricName to %@ for %@", buf, 0x20u);
    }
  }

  [v4 report];
  strlcpy(v8, [v6 UTF8String], 0x100uLL);
}

- (NSString)clientMetricName
{
  v5[657] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  [(NWActivityClientMetricStatistics *)self report];
  v3 = [v2 stringWithCString:v5 encoding:134217984];

  return v3;
}

- (NSUUID)activityUUID
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_activityUUID)
  {
    [(NWActivityClientMetricStatistics *)self report];
    if (!uuid_is_null(v9))
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      [(NWActivityClientMetricStatistics *)self report];
      v4 = [v3 initWithUUIDBytes:v8];
      activityUUID = self->_activityUUID;
      self->_activityUUID = v4;
    }
  }

  v6 = self->_activityUUID;

  return v6;
}

@end