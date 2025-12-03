@interface ATXChargerPluggedInDuetEvent
- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)event;
- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)state adapterType:(id)type startDate:(id)date endDate:(id)endDate;
- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)coder;
- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXChargerPluggedInDuetEvent

- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)state adapterType:(id)type startDate:(id)date endDate:(id)endDate
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = ATXChargerPluggedInDuetEvent;
  v11 = [(ATXDuetEvent *)&v17 initWithStartDate:date endDate:endDate];
  v12 = v11;
  if (v11)
  {
    v11->_chargerPluggedInState = state;
    v13 = [typeCopy copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_283A569F0;
    }

    objc_storeStrong(&v12->_adapterType, v15);
  }

  return v12;
}

- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    connected = [v5 connected];
    adapterType = [v5 adapterType];
    startTime = [v5 startTime];
    endTime = [v5 endTime];

    self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:connected adapterType:adapterType startDate:startTime endDate:endTime];
    selfCopy = self;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXChargerPluggedInDuetEvent *)eventCopy initWithATXEvent:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v7 = [v5 objectForKeyedSubscript:batteryExternalConnectedKey];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        batteryExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
        v10 = [v5 objectForKeyedSubscript:batteryExternalConnectedKey2];
        integerValue = [v10 integerValue];

        batteryAdapterTypeKey = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
        v13 = [v5 objectForKeyedSubscript:batteryAdapterTypeKey];

        if (v13)
        {
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();
          v15 = v13;
          if ((v14 & 1) == 0)
          {
            v16 = __atxlog_handle_default();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'batteryAdapterTypeKey' in ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSNumber."];
            selfCopy = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v15 = &unk_283A569F0;
        }

        v25 = MEMORY[0x277CBEAA8];
        v26 = v15;
        date = [v25 date];
        v28 = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:integerValue adapterType:v26 startDate:date endDate:date];

        self = v28;
        selfCopy = self;
LABEL_23:

        goto LABEL_20;
      }

      v23 = __atxlog_handle_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
      }

      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE658];
      v22 = @"Value for 'batteryExternalConnectedKey' in ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSNumber.";
    }

    else
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
      }

      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE658];
      v22 = @"ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSDictionary.";
    }

    [v20 raise:v21 format:v22];
  }

  else
  {
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
    }
  }

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (id)identifier
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ChargerPluggedIn_1_%@", self->_adapterType];

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  chargerPluggedInState = self->_chargerPluggedInState;
  adapterType = self->_adapterType;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v8 = [v3 initWithFormat:@"Charger Plugged In state: %ld, adapter type: %@, start date: %@, end date: %@", chargerPluggedInState, adapterType, startDate, endDate];

  return v8;
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

  [coderCopy encodeInteger:-[ATXChargerPluggedInDuetEvent chargerPluggedInState](self forKey:{"chargerPluggedInState"), @"codingKeyForChargerPluggedInState"}];
  adapterType = [(ATXChargerPluggedInDuetEvent *)self adapterType];
  [coderCopy encodeObject:adapterType forKey:@"codingKeyForAdapterType"];
}

- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForChargerPluggedInState"), -[ATXChargerPluggedInDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForChargerPluggedInState", coderCopy, @"com.apple.proactive.ATXDuetEvent", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_anchor();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"codingKeyForAdapterType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v20];

      if (v21 && ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:v16 adapterType:v21 startDate:v8 endDate:v14];
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

@end