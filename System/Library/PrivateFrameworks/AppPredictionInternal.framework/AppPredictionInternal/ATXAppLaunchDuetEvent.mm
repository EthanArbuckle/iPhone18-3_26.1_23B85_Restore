@interface ATXAppLaunchDuetEvent
- (ATXAppLaunchDuetEvent)initWithATXEvent:(id)event;
- (ATXAppLaunchDuetEvent)initWithBundleId:(id)id appLaunchState:(int64_t)state launchReason:(id)reason startDate:(id)date endDate:(id)endDate;
- (ATXAppLaunchDuetEvent)initWithCoder:(id)coder;
- (ATXAppLaunchDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppLaunchDuetEvent

- (ATXAppLaunchDuetEvent)initWithBundleId:(id)id appLaunchState:(int64_t)state launchReason:(id)reason startDate:(id)date endDate:(id)endDate
{
  idCopy = id;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = ATXAppLaunchDuetEvent;
  v14 = [(ATXDuetEvent *)&v20 initWithStartDate:date endDate:endDate];
  if (v14)
  {
    v15 = [idCopy copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v14->_appLaunchState = state;
    v17 = [reasonCopy copy];
    launchReason = v14->_launchReason;
    v14->_launchReason = v17;
  }

  return v14;
}

- (ATXAppLaunchDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppLaunchDuetEvent *)eventCopy initWithATXEvent:v14];
    }

    goto LABEL_8;
  }

  v5 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v5 allInstalledAppsKnownToSpringBoard];
  bundleID = [eventCopy bundleID];
  v8 = [allInstalledAppsKnownToSpringBoard containsObject:bundleID];

  if ((v8 & 1) == 0)
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAppLaunchDuetEvent *)eventCopy initWithATXEvent:v14];
    }

LABEL_8:

    selfCopy = 0;
    goto LABEL_9;
  }

  bundleID2 = [eventCopy bundleID];
  launchReason = [eventCopy launchReason];
  appSessionStartTime = [eventCopy appSessionStartTime];
  appSessionEndTime = [eventCopy appSessionEndTime];
  self = [(ATXAppLaunchDuetEvent *)self initWithBundleId:bundleID2 appLaunchState:1 launchReason:launchReason startDate:appSessionStartTime endDate:appSessionEndTime];

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (ATXAppLaunchDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForAppDataDictionary];

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

  appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
  v7 = [v5 objectForKeyedSubscript:appBundleIdKey];
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
    selfCopy = 0;
    goto LABEL_23;
  }

  appBundleIdKey2 = [MEMORY[0x277CFE338] appBundleIdKey];
  v10 = [v5 objectForKeyedSubscript:appBundleIdKey2];
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

  appLaunchReasonKey = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v15 = [v5 objectForKeyedSubscript:appLaunchReasonKey];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    appLaunchReasonKey2 = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v18 = [v5 objectForKeyedSubscript:appLaunchReasonKey2];
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

    date = [MEMORY[0x277CBEAA8] date];
    v23 = [(ATXAppLaunchDuetEvent *)self initWithBundleId:v13 appLaunchState:1 launchReason:v21 startDate:date endDate:date];

    self = v23;
    selfCopy = self;
  }

  else
  {
    v32 = __atxlog_handle_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'appLaunchReasonKey' in ContextStore's 'keyPathForAppDataDictionary' is not an NSString."];
    selfCopy = 0;
  }

LABEL_23:
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleId = self->_bundleId;
  appLaunchState = self->_appLaunchState;
  launchReason = self->_launchReason;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v9 = [v3 stringWithFormat:@"App bundleId: %@, App launch state: %ld, App launch reason: %@, start date: %@, end date: %@", bundleId, appLaunchState, launchReason, startDate, endDate];

  return v9;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForEndDate"];

  bundleId = [(ATXAppLaunchDuetEvent *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"codingKeyForBundleId"];

  [coderCopy encodeInteger:-[ATXAppLaunchDuetEvent appLaunchState](self forKey:{"appLaunchState"), @"codingKeyForAppLaunchState"}];
  launchReason = [(ATXAppLaunchDuetEvent *)self launchReason];
  [coderCopy encodeObject:launchReason forKey:@"codingKeyForLaunchReason"];
}

- (ATXAppLaunchDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v18];

      if (!v19 || ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, v20) || (v21 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForAppLaunchState"), -[ATXAppLaunchDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v21, @"codingKeyForAppLaunchState", coderCopy, @"com.apple.proactive.ATXDuetEvent.AppLaunch", -1)))
      {
        selfCopy = 0;
      }

      else
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_anchor();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"codingKeyForLaunchReason" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.AppLaunch" errorCode:-1 logHandle:v25];

        if (v26 && ([coderCopy error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          self = [(ATXAppLaunchDuetEvent *)self initWithBundleId:v19 appLaunchState:v21 launchReason:v26 startDate:v8 endDate:v14];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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