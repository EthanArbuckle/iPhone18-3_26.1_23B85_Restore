@interface ATXAppClipUsageDuetEvent
- (ATXAppClipUsageDuetEvent)initWithATXEvent:(id)a3;
- (ATXAppClipUsageDuetEvent)initWithContext:(id)a3 modifiedDate:(id)a4;
- (ATXAppClipUsageDuetEvent)initWithContextValue:(id)a3;
- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues;
- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues:(id)a3;
- (ATXAppClipUsageDuetEvent)initWithLaunchDate:(id)a3 timeSinceDownload:(double)a4 urlHash:(id)a5 clipBundleId:(id)a6 parentAppBundleId:(id)a7 webClipBundleId:(id)a8 launchReason:(int)a9;
- (id)identifier;
- (id)loadStringFromMetadata:(id)a3 key:(id)a4;
- (int)launchReasonFromATXAppClipUsageEvent:(int)a3;
- (int)launchReasonFromString:(id)a3;
@end

@implementation ATXAppClipUsageDuetEvent

- (ATXAppClipUsageDuetEvent)initWithLaunchDate:(id)a3 timeSinceDownload:(double)a4 urlHash:(id)a5 clipBundleId:(id)a6 parentAppBundleId:(id)a7 webClipBundleId:(id)a8 launchReason:(int)a9
{
  v16 = a3;
  v25 = a5;
  v17 = a6;
  v24 = a7;
  v18 = a8;
  v19 = 0;
  if (v18 && v17 && v16 && v25 && v24)
  {
    v26.receiver = self;
    v26.super_class = ATXAppClipUsageDuetEvent;
    v20 = [(ATXDuetEvent *)&v26 initWithStartDate:v16 endDate:0];
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_launchDate, a3);
      v21->_timeSinceDownload = a4;
      objc_storeStrong(&v21->_urlHash, a5);
      objc_storeStrong(&v21->_clipBundleId, a6);
      objc_storeStrong(&v21->_parentAppBundleId, a7);
      objc_storeStrong(&v21->_webClipBundleId, a8);
      v21->_launchReason = a9;
    }

    self = v21;
    v19 = self;
  }

  return v19;
}

- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues
{
  v3 = objc_opt_new();
  v4 = [(ATXAppClipUsageDuetEvent *)self initWithCurrentContextStoreValues:v3];

  return v4;
}

- (ATXAppClipUsageDuetEvent)initWithContext:(id)a3 modifiedDate:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CFE338];
  v8 = a3;
  v9 = [v7 timeSinceDownloadKey];
  v10 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v9];
  [v10 doubleValue];
  v12 = v11;

  v13 = [MEMORY[0x277CFE338] URLHashKey];
  v14 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v13];

  v15 = [MEMORY[0x277CFE338] clipBundleIDKey];
  v16 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v15];

  v17 = [MEMORY[0x277CFE338] appBundleIdKey];
  v18 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v17];

  v19 = [MEMORY[0x277CFE338] webAppBundleIDKey];
  v20 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v19];

  v21 = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v22 = [(ATXAppClipUsageDuetEvent *)self loadStringFromMetadata:v8 key:v21];

  if (v22)
  {
    self = [(ATXAppClipUsageDuetEvent *)self initWithLaunchDate:v6 timeSinceDownload:v14 urlHash:v16 clipBundleId:v18 parentAppBundleId:v20 webClipBundleId:[(ATXAppClipUsageDuetEvent *)self launchReasonFromString:v22] launchReason:v12];
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (ATXAppClipUsageDuetEvent)initWithCurrentContextStoreValues:(id)a3
{
  v4 = MEMORY[0x277CFE338];
  v5 = a3;
  v6 = [v4 keyPathForAppClipLaunch];
  v7 = [v5 fetchDataDictionaryForKeyPath:v6];
  v8 = [v5 lastModifiedDateForKeyPath:v6];

  v9 = [(ATXAppClipUsageDuetEvent *)self initWithContext:v7 modifiedDate:v8];
  return v9;
}

- (ATXAppClipUsageDuetEvent)initWithContextValue:(id)a3
{
  v4 = a3;
  v5 = [v4 lastModifiedDate];
  v6 = [v4 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(ATXAppClipUsageDuetEvent *)self initWithContext:v6 modifiedDate:v5];
    v7 = self;
  }

  else
  {
    v8 = __atxlog_handle_hero();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppClipUsageDuetEvent *)v6 initWithContextValue:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (ATXAppClipUsageDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 launchDate];
    v7 = [v5 launchDate];
    [v7 timeIntervalSinceNow];
    v9 = -v8;
    v10 = [v5 urlHash];
    v11 = [v5 clipBundleID];
    v12 = [v5 parentAppBundleID];
    v13 = [v5 webAppBundleID];
    v14 = [v5 launchReason];

    self = [(ATXAppClipUsageDuetEvent *)self initWithLaunchDate:v6 timeSinceDownload:v10 urlHash:v11 clipBundleId:v12 parentAppBundleId:v13 webClipBundleId:[(ATXAppClipUsageDuetEvent *)self launchReasonFromATXAppClipUsageEvent:v14] launchReason:v9];
    v15 = self;
  }

  else
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppClipUsageDuetEvent *)v4 initWithATXEvent:v16];
    }

    v15 = 0;
  }

  return v15;
}

- (id)loadStringFromMetadata:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 objectForKeyedSubscript:v6];
    v10 = v9;
    v11 = &stru_2839A6058;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CFE338] timeSinceDownloadKey];
    v14 = [v6 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      v15 = __atxlog_handle_hero();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXAppClipUsageDuetEvent loadStringFromMetadata:v6 key:v15];
      }
    }

    v12 = 0;
  }

  return v12;
}

- (int)launchReasonFromString:(id)a3
{
  v3 = a3;
  v4 = [&unk_283A58E48 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [&unk_283A58E48 objectForKeyedSubscript:v3];
    v6 = [v5 intValue];
  }

  else
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppClipUsageDuetEvent *)v3 launchReasonFromString:v7];
    }

    v6 = 9;
  }

  return v6;
}

- (int)launchReasonFromATXAppClipUsageEvent:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 9;
  }

  else
  {
    return dword_2268726A0[a3 - 1];
  }
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXAppClipUsageDuetEvent *)self urlHash];
  v5 = [(ATXAppClipUsageDuetEvent *)self clipBundleId];
  v6 = [v3 initWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (void)initWithContextValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Clip usage context value was %@ instead of NSDictionary", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadStringFromMetadata:(uint64_t)a1 key:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value for key %@ not the expected type", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)launchReasonFromString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Encountered unexpected launch reason %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end