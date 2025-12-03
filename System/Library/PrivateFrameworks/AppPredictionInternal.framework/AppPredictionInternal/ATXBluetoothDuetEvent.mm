@interface ATXBluetoothDuetEvent
+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)event;
+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues;
+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)type;
+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)type;
- (ATXBluetoothDuetEvent)initWithATXEvent:(id)event;
- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)state deviceType:(int64_t)type deviceName:(id)name hardwareAddress:(id)address startDate:(id)date endDate:(id)endDate;
- (ATXBluetoothDuetEvent)initWithCoder:(id)coder;
- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)initWithCurrentContextStoreValues;
@end

@implementation ATXBluetoothDuetEvent

- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)state deviceType:(int64_t)type deviceName:(id)name hardwareAddress:(id)address startDate:(id)date endDate:(id)endDate
{
  nameCopy = name;
  addressCopy = address;
  selfCopy = 0;
  if (addressCopy && date)
  {
    v23.receiver = self;
    v23.super_class = ATXBluetoothDuetEvent;
    v17 = [(ATXDuetEvent *)&v23 initWithStartDate:date endDate:endDate];
    if (v17)
    {
      v18 = [addressCopy copy];
      deviceIdentifier = v17->_deviceIdentifier;
      v17->_deviceIdentifier = v18;

      v20 = [nameCopy copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v20;

      v17->_bluetoothState = state;
      v17->_deviceType = type;
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXBluetoothDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    connected = [eventCopy connected];
    v6 = [objc_opt_class() deviceTypeFromATXBluetoothDeviceType:{objc_msgSend(eventCopy, "deviceType")}];
    deviceName = [eventCopy deviceName];
    deviceAddress = [eventCopy deviceAddress];
    startTime = [eventCopy startTime];
    endTime = [eventCopy endTime];
    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:connected deviceType:v6 deviceName:deviceName hardwareAddress:deviceAddress startDate:startTime endDate:endTime];

    selfCopy = self;
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)eventCopy initWithATXEvent:v12];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForBluetoothDataDictionary = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForBluetoothDataDictionary];

  if (!v5)
  {
    goto LABEL_16;
  }

  keyPathForBluetoothDataDictionary2 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
  v7 = [userContext objectForKeyedSubscript:keyPathForBluetoothDataDictionary2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_16:
    bluetoothNameKey2 = __atxlog_handle_default();
    if (os_log_type_enabled(bluetoothNameKey2, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)bluetoothNameKey2 initWithCurrentContextStoreValues:v41];
    }

    goto LABEL_18;
  }

  bluetoothNameKey = [MEMORY[0x277CFE338] bluetoothNameKey];
  v10 = [v5 objectForKeyedSubscript:bluetoothNameKey];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if ((v11 & 1) == 0)
  {
    v49 = __atxlog_handle_default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v5 initWithCurrentContextStoreValues];
    }

    v50 = MEMORY[0x277CBEAD8];
    v51 = *MEMORY[0x277CBE658];
    bluetoothNameKey2 = [MEMORY[0x277CFE338] bluetoothNameKey];
    v52 = [v5 objectForKeyedSubscript:bluetoothNameKey2];
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    [v50 raise:v51 format:{@"Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", v54}];

    goto LABEL_18;
  }

  bluetoothNameKey3 = [MEMORY[0x277CFE338] bluetoothNameKey];
  v13 = [v5 objectForKeyedSubscript:bluetoothNameKey3];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2839A6058;
  }

  bluetoothNameKey2 = v15;

  bluetoothAddressKey = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v18 = [v5 objectForKeyedSubscript:bluetoothAddressKey];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    v55 = __atxlog_handle_default();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v55 initWithCurrentContextStoreValues:v56];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'bluetoothAddressKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString."];
LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

  bluetoothAddressKey2 = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v21 = [v5 objectForKeyedSubscript:bluetoothAddressKey2];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_2839A6058;
  }

  v24 = v23;

  bluetoothConnectionStatusKey = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
  v26 = [v5 objectForKeyedSubscript:bluetoothConnectionStatusKey];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    bluetoothConnectionStatusKey2 = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
    v29 = [v5 objectForKeyedSubscript:bluetoothConnectionStatusKey2];
    integerValue = [v29 integerValue];

    v30 = MEMORY[0x277CCABB0];
    bluetoothDeviceTypeKey = [MEMORY[0x277CFE338] bluetoothDeviceTypeKey];
    v32 = [v5 objectForKeyedSubscript:bluetoothDeviceTypeKey];
    v33 = [v30 numberWithLong:v32];
    v34 = [ATXBluetoothDuetEvent deviceTypeFromBluetoothDeviceType:v33];

    keyPathForBluetoothDataDictionary3 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    v36 = [userContext lastModifiedDateForContextualKeyPath:keyPathForBluetoothDataDictionary3];

    date = [MEMORY[0x277CBEAA8] date];
    v38 = date;
    if (v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = date;
    }

    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:integerValue deviceType:v34 deviceName:bluetoothNameKey2 hardwareAddress:v24 startDate:v39 endDate:date];

    selfCopy = self;
  }

  else
  {
    v63 = __atxlog_handle_default();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v63 initWithCurrentContextStoreValues:v64];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'bluetoothConnectionStatusKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSNumber."];
    selfCopy = 0;
  }

LABEL_19:
  return selfCopy;
}

+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues
{
  initWithCurrentContextStoreValues = [[ATXBluetoothDuetEvent alloc] initWithCurrentContextStoreValues];
  v3 = initWithCurrentContextStoreValues;
  if (initWithCurrentContextStoreValues && ![(ATXBluetoothDuetEvent *)initWithCurrentContextStoreValues bluetoothState])
  {
    v4 = [ATXBluetoothDuetEvent convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)event
{
  eventCopy = event;
  v4 = [ATXBluetoothDuetEvent alloc];
  deviceType = [eventCopy deviceType];
  deviceName = [eventCopy deviceName];
  deviceIdentifier = [eventCopy deviceIdentifier];
  startDate = [eventCopy startDate];
  startDate2 = [eventCopy startDate];

  v10 = [(ATXBluetoothDuetEvent *)v4 initWithBluetoothState:1 deviceType:deviceType deviceName:deviceName hardwareAddress:deviceIdentifier startDate:startDate endDate:startDate2];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceName = self->_deviceName;
  deviceIdentifier = self->_deviceIdentifier;
  bluetoothState = self->_bluetoothState;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v9 = [v3 stringWithFormat:@"Device name: %@, Device id: %@, Bluetooth state: %ld, start date: %@, end date: %@", deviceName, deviceIdentifier, bluetoothState, startDate, endDate];

  return v9;
}

+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)type
{
  integerValue = [type integerValue];
  if ((integerValue - 3) > 0x2B)
  {
    return 2;
  }

  else
  {
    return qword_226872A90[integerValue - 3];
  }
}

+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)type
{
  if (type >= 5)
  {
    return 2;
  }

  else
  {
    return type;
  }
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

  [coderCopy encodeInteger:-[ATXBluetoothDuetEvent bluetoothState](self forKey:{"bluetoothState"), @"codingKeyForBluetoothState"}];
  [coderCopy encodeInteger:-[ATXBluetoothDuetEvent deviceType](self forKey:{"deviceType"), @"codingKeyForDeviceType"}];
  deviceName = [(ATXBluetoothDuetEvent *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"codingKeyForDeviceName"];

  deviceIdentifier = [(ATXBluetoothDuetEvent *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"codingKeyForHardwareAddress"];
}

- (ATXBluetoothDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForBluetoothState"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForBluetoothState", coderCopy, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)) || (v17 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForDeviceType"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v17, @"codingKeyForDeviceType", coderCopy, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_anchor();
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"codingKeyForDeviceName" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v21];

      if (v22 && ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v24 = MEMORY[0x277D42620];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_anchor();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"codingKeyForHardwareAddress" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v26];

        if (v27 && ([coderCopy error], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
        {
          self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:v16 deviceType:v17 deviceName:v22 hardwareAddress:v27 startDate:v8 endDate:v14];
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

- (void)initWithCurrentContextStoreValues
{
  v11 = *MEMORY[0x277D85DE8];
  bluetoothNameKey = [MEMORY[0x277CFE338] bluetoothNameKey];
  v5 = [self objectForKeyedSubscript:bluetoothNameKey];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412290;
  v10 = v7;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", &v9, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end