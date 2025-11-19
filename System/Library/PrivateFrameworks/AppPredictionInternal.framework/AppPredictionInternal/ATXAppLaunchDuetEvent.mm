@interface ATXAppLaunchDuetEvent
- (ATXAppLaunchDuetEvent)initWithATXEvent:(id)a3;
- (ATXAppLaunchDuetEvent)initWithBundleId:(id)a3 appLaunchState:(int64_t)a4 launchReason:(id)a5 startDate:(id)a6 endDate:(id)a7;
- (ATXAppLaunchDuetEvent)initWithCoder:(id)a3;
- (ATXAppLaunchDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppLaunchDuetEvent

- (ATXAppLaunchDuetEvent)initWithBundleId:(id)a3 appLaunchState:(int64_t)a4 launchReason:(id)a5 startDate:(id)a6 endDate:(id)a7
{
  v12 = a3;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = ATXAppLaunchDuetEvent;
  v14 = [(ATXDuetEvent *)&v20 initWithStartDate:a6 endDate:a7];
  if (v14)
  {
    v15 = [v12 copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v14->_appLaunchState = a4;
    v17 = [v13 copy];
    launchReason = v14->_launchReason;
    v14->_launchReason = v17;
  }

  return v14;
}

- (ATXAppLaunchDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppLaunchDuetEvent *)v4 initWithATXEvent:v14];
    }

    goto LABEL_8;
  }

  v5 = +[_ATXAppIconState sharedInstance];
  v6 = [v5 allInstalledAppsKnownToSpringBoard];
  v7 = [v4 bundleID];
  v8 = [v6 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAppLaunchDuetEvent *)v4 initWithATXEvent:v14];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v9 = [v4 bundleID];
  v10 = [v4 launchReason];
  v11 = [v4 appSessionStartTime];
  v12 = [v4 appSessionEndTime];
  self = [(ATXAppLaunchDuetEvent *)self initWithBundleId:v9 appLaunchState:1 launchReason:v10 startDate:v11 endDate:v12];

  v13 = self;
LABEL_9:

  return v13;
}

- (ATXAppLaunchDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v25 = __atxlog_handle_default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = __atxlog_handle_default();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchDuetEvent initWithCurrentContextStoreValues];
    }

    v27 = MEMORY[0x277CBEAD8];
    v28 = *MEMORY[0x277CBE658];
    v29 = @"ContextStore's 'keyPathForAppDataDictionary' is not an NSDictionary.";
    goto LABEL_21;
  }

  v6 = [MEMORY[0x277CFE338] appBundleIdKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v30 = __atxlog_handle_default();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchDuetEvent initWithCurrentContextStoreValues];
    }

    v27 = MEMORY[0x277CBEAD8];
    v28 = *MEMORY[0x277CBE658];
    v29 = @"Value for 'appBundleIdKey' in ContextStore's 'keyPathForAppDataDictionary' is not an NSString.";
LABEL_21:
    [v27 raise:v28 format:v29];
LABEL_22:
    v24 = 0;
    goto LABEL_23;
  }

  v9 = [MEMORY[0x277CFE338] appBundleIdKey];
  v10 = [v5 objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_2839A6058;
  }

  v13 = v12;

  v14 = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v15 = [v5 objectForKeyedSubscript:v14];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v18 = [v5 objectForKeyedSubscript:v17];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_2839A6058;
    }

    v21 = v20;

    v22 = [MEMORY[0x277CBEAA8] date];
    v23 = [(ATXAppLaunchDuetEvent *)self initWithBundleId:v13 appLaunchState:1 launchReason:v21 startDate:v22 endDate:v22];

    self = v23;
    v24 = self;
  }

  else
  {
    v32 = __atxlog_handle_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'appLaunchReasonKey' in ContextStore's 'keyPathForAppDataDictionary' is not an NSString."];
    v24 = 0;
  }

LABEL_23:
  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleId = self->_bundleId;
  appLaunchState = self->_appLaunchState;
  launchReason = self->_launchReason;
  v7 = [(ATXDuetEvent *)self startDate];
  v8 = [(ATXDuetEvent *)self endDate];
  v9 = [v3 stringWithFormat:@"App bundleId: %@, App launch state: %ld, App launch reason: %@, start date: %@, end date: %@", bundleId, appLaunchState, launchReason, v7, v8];

  return v9;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXDuetEvent *)self startDate];
  [v4 encodeObject:v5 forKey:@"codingKeyForStartDate"];

  v6 = [(ATXDuetEvent *)self endDate];
  [v4 encodeObject:v6 forKey:@"codingKeyForEndDate"];

  v7 = [(ATXAppLaunchDuetEvent *)self bundleId];
  [v4 encodeObject:v7 forKey:@"codingKeyForBundleId"];

  [v4 encodeInteger:-[ATXAppLaunchDuetEvent appLaunchState](self forKey:{"appLaunchState"), @"codingKeyForAppLaunchState"}];
  v8 = [(ATXAppLaunchDuetEvent *)self launchReason];
  [v4 encodeObject:v8 forKey:@"codingKeyForLaunchReason"];
}

- (ATXAppLaunchDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v18];

      if (!v19 || ([v4 error], v20 = objc_claimAutoreleasedReturnValue(), v20, v20) || (v21 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForAppLaunchState"), -[ATXAppLaunchDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v21, @"codingKeyForAppLaunchState", v4, @"com.apple.proactive.ATXDuetEvent.AppLaunch", -1)))
      {
        v10 = 0;
      }

      else
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_anchor();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"codingKeyForLaunchReason" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v25];

        if (v26 && ([v4 error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          self = [(ATXAppLaunchDuetEvent *)self initWithBundleId:v19 appLaunchState:v21 launchReason:v26 startDate:v8 endDate:v14];
          v10 = self;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (void)initWithATXEvent:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleID];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Skipping app: %@ not known to SpringBoard.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end