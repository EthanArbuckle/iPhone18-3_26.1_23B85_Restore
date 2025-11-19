@interface ATXChargerPluggedInDuetEvent
- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)a3;
- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)a3 adapterType:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)a3;
- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXChargerPluggedInDuetEvent

- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)a3 adapterType:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = ATXChargerPluggedInDuetEvent;
  v11 = [(ATXDuetEvent *)&v17 initWithStartDate:a5 endDate:a6];
  v12 = v11;
  if (v11)
  {
    v11->_chargerPluggedInState = a3;
    v13 = [v10 copy];
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

- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 connected];
    v7 = [v5 adapterType];
    v8 = [v5 startTime];
    v9 = [v5 endTime];

    self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:v6 adapterType:v7 startDate:v8 endDate:v9];
    v10 = self;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXChargerPluggedInDuetEvent *)v4 initWithATXEvent:v11];
    }

    v10 = 0;
  }

  return v10;
}

- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v7 = [v5 objectForKeyedSubscript:v6];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
        v10 = [v5 objectForKeyedSubscript:v9];
        v11 = [v10 integerValue];

        v12 = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
        v13 = [v5 objectForKeyedSubscript:v12];

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
            v17 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v15 = &unk_283A569F0;
        }

        v25 = MEMORY[0x277CBEAA8];
        v26 = v15;
        v27 = [v25 date];
        v28 = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:v11 adapterType:v26 startDate:v27 endDate:v27];

        self = v28;
        v17 = self;
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

  v17 = 0;
LABEL_20:

  return v17;
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
  v6 = [(ATXDuetEvent *)self startDate];
  v7 = [(ATXDuetEvent *)self endDate];
  v8 = [v3 initWithFormat:@"Charger Plugged In state: %ld, adapter type: %@, start date: %@, end date: %@", chargerPluggedInState, adapterType, v6, v7];

  return v8;
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

  [v4 encodeInteger:-[ATXChargerPluggedInDuetEvent chargerPluggedInState](self forKey:{"chargerPluggedInState"), @"codingKeyForChargerPluggedInState"}];
  v7 = [(ATXChargerPluggedInDuetEvent *)self adapterType];
  [v4 encodeObject:v7 forKey:@"codingKeyForAdapterType"];
}

- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (!v14 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForChargerPluggedInState"), -[ATXChargerPluggedInDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForChargerPluggedInState", v4, @"com.apple.proactive.ATXDuetEvent", -1)))
    {
      v10 = 0;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_anchor();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"codingKeyForAdapterType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v20];

      if (v21 && ([v4 error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:v16 adapterType:v21 startDate:v8 endDate:v14];
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

@end