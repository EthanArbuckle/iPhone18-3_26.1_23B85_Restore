@interface ATXAudioDuetEvent
- (ATXAudioDuetEvent)initWithATXEvent:(id)event;
- (ATXAudioDuetEvent)initWithAudioState:(int64_t)state deviceIdentifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(id)reason startDate:(id)date endDate:(id)endDate;
- (ATXAudioDuetEvent)initWithCoder:(id)coder;
- (ATXAudioDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAudioDuetEvent

- (ATXAudioDuetEvent)initWithAudioState:(int64_t)state deviceIdentifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(id)reason startDate:(id)date endDate:(id)endDate
{
  identifierCopy = identifier;
  typeCopy = type;
  nameCopy = name;
  reasonCopy = reason;
  selfCopy = 0;
  if (identifierCopy && date)
  {
    v29.receiver = self;
    v29.super_class = ATXAudioDuetEvent;
    v20 = [(ATXDuetEvent *)&v29 initWithStartDate:date endDate:endDate];
    v21 = v20;
    if (v20)
    {
      v20->_audioState = state;
      v22 = [identifierCopy copy];
      deviceIdentifier = v21->_deviceIdentifier;
      v21->_deviceIdentifier = v22;

      v24 = [typeCopy copy];
      portType = v21->_portType;
      v21->_portType = v24;

      v26 = [nameCopy copy];
      portName = v21->_portName;
      v21->_portName = v26;

      objc_storeStrong(&v21->_routeChangeReason, reason);
    }

    self = v21;
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXAudioDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    connected = [eventCopy connected];
    identifier = [eventCopy identifier];
    portType = [eventCopy portType];
    portName = [eventCopy portName];
    routeChangeReason = [eventCopy routeChangeReason];
    startTime = [eventCopy startTime];
    endTime = [eventCopy endTime];
    self = [(ATXAudioDuetEvent *)self initWithAudioState:connected deviceIdentifier:identifier portType:portType portName:portName routeChangeReason:routeChangeReason startDate:startTime endDate:endTime];

    selfCopy = self;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXAudioDuetEvent *)eventCopy initWithATXEvent:v13];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXAudioDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForAudioOutputDataDictionary = [MEMORY[0x277CFE338] keyPathForAudioOutputDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForAudioOutputDataDictionary];

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

  audioOutputStatusKey = [MEMORY[0x277CFE338] audioOutputStatusKey];
  v7 = [v5 objectForKeyedSubscript:audioOutputStatusKey];
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

  audioOutputStatusKey2 = [MEMORY[0x277CFE338] audioOutputStatusKey];
  v10 = [v5 objectForKeyedSubscript:audioOutputStatusKey2];
  integerValue = [v10 integerValue];

  audioIdentifierKey = [MEMORY[0x277CFE338] audioIdentifierKey];
  v13 = [v5 objectForKeyedSubscript:audioIdentifierKey];
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
    selfCopy = 0;
    goto LABEL_32;
  }

  audioIdentifierKey2 = [MEMORY[0x277CFE338] audioIdentifierKey];
  v16 = [v5 objectForKeyedSubscript:audioIdentifierKey2];
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

  audioPortTypeKey = [MEMORY[0x277CFE338] audioPortTypeKey];
  v20 = [v5 objectForKeyedSubscript:audioPortTypeKey];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    audioPortTypeKey2 = [MEMORY[0x277CFE338] audioPortTypeKey];
    v23 = [v5 objectForKeyedSubscript:audioPortTypeKey2];
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

    audioPortNameKey = [MEMORY[0x277CFE338] audioPortNameKey];
    v28 = [v5 objectForKeyedSubscript:audioPortNameKey];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v54 = v26;
      audioPortNameKey2 = [MEMORY[0x277CFE338] audioPortNameKey];
      v31 = [v5 objectForKeyedSubscript:audioPortNameKey2];
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

      audioRouteChangeReasonKey = [MEMORY[0x277CFE338] audioRouteChangeReasonKey];
      v36 = [v5 objectForKeyedSubscript:audioRouteChangeReasonKey];
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if (v37)
      {
        audioRouteChangeReasonKey2 = [MEMORY[0x277CFE338] audioRouteChangeReasonKey];
        v39 = [v5 objectForKeyedSubscript:audioRouteChangeReasonKey2];

        date = [MEMORY[0x277CBEAA8] date];
        v41 = v55;
        self = [(ATXAudioDuetEvent *)self initWithAudioState:integerValue deviceIdentifier:v55 portType:v54 portName:v34 routeChangeReason:v39 startDate:date endDate:date];

        selfCopy = self;
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
        selfCopy = 0;
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
      selfCopy = 0;
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
    selfCopy = 0;
    v41 = v55;
  }

LABEL_32:
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceIdentifier = self->_deviceIdentifier;
  portType = self->_portType;
  portName = self->_portName;
  audioState = self->_audioState;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v10 = [v3 stringWithFormat:@"DeviceAudioOutputExternal - Device identifier: %@, port type: %@, port name: %@, audio connected state: %ld, start date: %@, end date: %@", deviceIdentifier, portType, portName, audioState, startDate, endDate];

  return v10;
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

  [coderCopy encodeInteger:-[ATXAudioDuetEvent audioState](self forKey:{"audioState"), @"codingKeyForAudioState"}];
  deviceIdentifier = [(ATXAudioDuetEvent *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"codingKeyForDeviceId"];

  portType = [(ATXAudioDuetEvent *)self portType];
  [coderCopy encodeObject:portType forKey:@"codingKeyForPortType"];

  portName = [(ATXAudioDuetEvent *)self portName];
  [coderCopy encodeObject:portName forKey:@"codingKeyForPortName"];

  routeChangeReason = [(ATXAudioDuetEvent *)self routeChangeReason];
  [coderCopy encodeObject:routeChangeReason forKey:@"codingKeyForRouteChangeReason"];
}

- (ATXAudioDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForAudioState"), -[ATXAudioDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForAudioState", coderCopy, @"com.apple.proactive.ATXDuetEvent.Audio", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_anchor();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"codingKeyForDeviceId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v20];

      if (v21 && ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_anchor();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"codingKeyForPortType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v25];

        if (v26 && ([coderCopy error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          v37 = MEMORY[0x277D42620];
          v28 = objc_opt_class();
          v29 = __atxlog_handle_anchor();
          v30 = [v37 robustDecodeObjectOfClass:v28 forKey:@"codingKeyForPortName" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v29];

          v31 = v30;
          if (v30 && ([coderCopy error], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
          {
            v38 = MEMORY[0x277D42620];
            v33 = objc_opt_class();
            v34 = __atxlog_handle_anchor();
            v35 = [v38 robustDecodeObjectOfClass:v33 forKey:@"codingKeyForRouteChangeReason" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Audio" errorCode:-1 logHandle:v34];

            if (v35 && ([coderCopy error], v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
            {
              self = [(ATXAudioDuetEvent *)self initWithAudioState:v16 deviceIdentifier:v21 portType:v26 portName:v31 routeChangeReason:v35 startDate:v8 endDate:v14];
              selfCopy = self;
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