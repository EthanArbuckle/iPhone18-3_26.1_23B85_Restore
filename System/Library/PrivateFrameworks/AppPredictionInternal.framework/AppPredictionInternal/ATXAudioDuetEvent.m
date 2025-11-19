@interface ATXAudioDuetEvent
- (ATXAudioDuetEvent)initWithATXEvent:(id)a3;
- (ATXAudioDuetEvent)initWithAudioState:(int64_t)a3 deviceIdentifier:(id)a4 portType:(id)a5 portName:(id)a6 routeChangeReason:(id)a7 startDate:(id)a8 endDate:(id)a9;
- (ATXAudioDuetEvent)initWithCoder:(id)a3;
- (ATXAudioDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAudioDuetEvent

- (ATXAudioDuetEvent)initWithAudioState:(int64_t)a3 deviceIdentifier:(id)a4 portType:(id)a5 portName:(id)a6 routeChangeReason:(id)a7 startDate:(id)a8 endDate:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = 0;
  if (v15 && a8)
  {
    v29.receiver = self;
    v29.super_class = ATXAudioDuetEvent;
    v20 = [(ATXDuetEvent *)&v29 initWithStartDate:a8 endDate:a9];
    v21 = v20;
    if (v20)
    {
      v20->_audioState = a3;
      v22 = [v15 copy];
      deviceIdentifier = v21->_deviceIdentifier;
      v21->_deviceIdentifier = v22;

      v24 = [v16 copy];
      portType = v21->_portType;
      v21->_portType = v24;

      v26 = [v17 copy];
      portName = v21->_portName;
      v21->_portName = v26;

      objc_storeStrong(&v21->_routeChangeReason, a7);
    }

    self = v21;
    v19 = self;
  }

  return v19;
}

- (ATXAudioDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 connected];
    v6 = [v4 identifier];
    v7 = [v4 portType];
    v8 = [v4 portName];
    v9 = [v4 routeChangeReason];
    v10 = [v4 startTime];
    v11 = [v4 endTime];
    self = [(ATXAudioDuetEvent *)self initWithAudioState:v5 deviceIdentifier:v6 portType:v7 portName:v8 routeChangeReason:v9 startDate:v10 endDate:v11];

    v12 = self;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXAudioDuetEvent *)v4 initWithATXEvent:v13];
    }

    v12 = 0;
  }

  return v12;
}

- (ATXAudioDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForAudioOutputDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v43 = __atxlog_handle_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [ATXAudioDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = __atxlog_handle_default();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [ATXAudioDuetEvent initWithCurrentContextStoreValues];
    }

    v45 = MEMORY[0x277CBEAD8];
    v46 = *MEMORY[0x277CBE658];
    v47 = @"ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSDictionary.";
    goto LABEL_30;
  }

  v6 = [MEMORY[0x277CFE338] audioOutputStatusKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v48 = __atxlog_handle_default();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [ATXAudioDuetEvent initWithCurrentContextStoreValues];
    }

    v45 = MEMORY[0x277CBEAD8];
    v46 = *MEMORY[0x277CBE658];
    v47 = @"Value for 'audioOutputStatusKey' in ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSNumber.";
    goto LABEL_30;
  }

  v9 = [MEMORY[0x277CFE338] audioOutputStatusKey];
  v10 = [v5 objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  v12 = [MEMORY[0x277CFE338] audioIdentifierKey];
  v13 = [v5 objectForKeyedSubscript:v12];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    v49 = __atxlog_handle_default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [ATXAudioDuetEvent initWithCurrentContextStoreValues];
    }

    v45 = MEMORY[0x277CBEAD8];
    v46 = *MEMORY[0x277CBE658];
    v47 = @"Value for 'audioIdentifierKey' in ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSString.";
LABEL_30:
    [v45 raise:v46 format:v47];
LABEL_31:
    v42 = 0;
    goto LABEL_32;
  }

  v15 = [MEMORY[0x277CFE338] audioIdentifierKey];
  v16 = [v5 objectForKeyedSubscript:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2839A6058;
  }

  v55 = v18;

  v19 = [MEMORY[0x277CFE338] audioPortTypeKey];
  v20 = [v5 objectForKeyedSubscript:v19];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [MEMORY[0x277CFE338] audioPortTypeKey];
    v23 = [v5 objectForKeyedSubscript:v22];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_2839A6058;
    }

    v26 = v25;

    v27 = [MEMORY[0x277CFE338] audioPortNameKey];
    v28 = [v5 objectForKeyedSubscript:v27];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v54 = v26;
      v30 = [MEMORY[0x277CFE338] audioPortNameKey];
      v31 = [v5 objectForKeyedSubscript:v30];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = &stru_2839A6058;
      }

      v34 = v33;

      v35 = [MEMORY[0x277CFE338] audioRouteChangeReasonKey];
      v36 = [v5 objectForKeyedSubscript:v35];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if (v37)
      {
        v38 = [MEMORY[0x277CFE338] audioRouteChangeReasonKey];
        v39 = [v5 objectForKeyedSubscript:v38];

        v40 = [MEMORY[0x277CBEAA8] date];
        v41 = v55;
        self = [(ATXAudioDuetEvent *)self initWithAudioState:v11 deviceIdentifier:v55 portType:v54 portName:v34 routeChangeReason:v39 startDate:v40 endDate:v40];

        v42 = self;
      }

      else
      {
        v53 = __atxlog_handle_default();
        v41 = v55;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [ATXAudioDuetEvent initWithCurrentContextStoreValues];
        }

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'audioRouteChangeReasonKey' in ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSNumber."];
        v42 = 0;
      }

      v26 = v54;
    }

    else
    {
      v52 = __atxlog_handle_default();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [ATXAudioDuetEvent initWithCurrentContextStoreValues];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'audioPortNameKey' in ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSString."];
      v42 = 0;
      v41 = v55;
    }
  }

  else
  {
    v51 = __atxlog_handle_default();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [ATXAudioDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'audioPortTypeKey' in ContextStore's 'keyPathForAudioOutputDataDictionary' is not an NSString."];
    v42 = 0;
    v41 = v55;
  }

LABEL_32:
  return v42;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceIdentifier = self->_deviceIdentifier;
  portType = self->_portType;
  portName = self->_portName;
  audioState = self->_audioState;
  v8 = [(ATXDuetEvent *)self startDate];
  v9 = [(ATXDuetEvent *)self endDate];
  v10 = [v3 stringWithFormat:@"DeviceAudioOutputExternal - Device identifier: %@, port type: %@, port name: %@, audio connected state: %ld, start date: %@, end date: %@", deviceIdentifier, portType, portName, audioState, v8, v9];

  return v10;
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

  [v4 encodeInteger:-[ATXAudioDuetEvent audioState](self forKey:{"audioState"), @"codingKeyForAudioState"}];
  v7 = [(ATXAudioDuetEvent *)self deviceIdentifier];
  [v4 encodeObject:v7 forKey:@"codingKeyForDeviceId"];

  v8 = [(ATXAudioDuetEvent *)self portType];
  [v4 encodeObject:v8 forKey:@"codingKeyForPortType"];

  v9 = [(ATXAudioDuetEvent *)self portName];
  [v4 encodeObject:v9 forKey:@"codingKeyForPortName"];

  v10 = [(ATXAudioDuetEvent *)self routeChangeReason];
  [v4 encodeObject:v10 forKey:@"codingKeyForRouteChangeReason"];
}

- (ATXAudioDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v13];

    if (!v14 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForAudioState"), -[ATXAudioDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForAudioState", v4, @"com.apple.proactive.ATXDuetEvent.Audio", -1)))
    {
      v10 = 0;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_anchor();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"codingKeyForDeviceId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v20];

      if (v21 && ([v4 error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_anchor();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"codingKeyForPortType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v25];

        if (v26 && ([v4 error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          v37 = MEMORY[0x277D42620];
          v28 = objc_opt_class();
          v29 = __atxlog_handle_anchor();
          v30 = [v37 robustDecodeObjectOfClass:v28 forKey:@"codingKeyForPortName" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v29];

          v31 = v30;
          if (v30 && ([v4 error], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
          {
            v38 = MEMORY[0x277D42620];
            v33 = objc_opt_class();
            v34 = __atxlog_handle_anchor();
            v35 = [v38 robustDecodeObjectOfClass:v33 forKey:@"codingKeyForRouteChangeReason" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v34];

            if (v35 && ([v4 error], v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
            {
              self = [(ATXAudioDuetEvent *)self initWithAudioState:v16 deviceIdentifier:v21 portType:v26 portName:v31 routeChangeReason:v35 startDate:v8 endDate:v14];
              v10 = self;
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