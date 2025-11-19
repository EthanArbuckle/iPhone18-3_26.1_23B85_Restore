@interface ATXBluetoothDuetEvent
+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)a3;
+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues;
+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)a3;
+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)a3;
- (ATXBluetoothDuetEvent)initWithATXEvent:(id)a3;
- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)a3 deviceType:(int64_t)a4 deviceName:(id)a5 hardwareAddress:(id)a6 startDate:(id)a7 endDate:(id)a8;
- (ATXBluetoothDuetEvent)initWithCoder:(id)a3;
- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)initWithCurrentContextStoreValues;
@end

@implementation ATXBluetoothDuetEvent

- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)a3 deviceType:(int64_t)a4 deviceName:(id)a5 hardwareAddress:(id)a6 startDate:(id)a7 endDate:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = 0;
  if (v15 && a7)
  {
    v23.receiver = self;
    v23.super_class = ATXBluetoothDuetEvent;
    v17 = [(ATXDuetEvent *)&v23 initWithStartDate:a7 endDate:a8];
    if (v17)
    {
      v18 = [v15 copy];
      deviceIdentifier = v17->_deviceIdentifier;
      v17->_deviceIdentifier = v18;

      v20 = [v14 copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v20;

      v17->_bluetoothState = a3;
      v17->_deviceType = a4;
    }

    self = v17;
    v16 = self;
  }

  return v16;
}

- (ATXBluetoothDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 connected];
    v6 = [objc_opt_class() deviceTypeFromATXBluetoothDeviceType:{objc_msgSend(v4, "deviceType")}];
    v7 = [v4 deviceName];
    v8 = [v4 deviceAddress];
    v9 = [v4 startTime];
    v10 = [v4 endTime];
    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:v5 deviceType:v6 deviceName:v7 hardwareAddress:v8 startDate:v9 endDate:v10];

    v11 = self;
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v4 initWithATXEvent:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
  v7 = [v3 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_16:
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v16 initWithCurrentContextStoreValues:v41];
    }

    goto LABEL_18;
  }

  v9 = [MEMORY[0x277CFE338] bluetoothNameKey];
  v10 = [v5 objectForKeyedSubscript:v9];
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
    v16 = [MEMORY[0x277CFE338] bluetoothNameKey];
    v52 = [v5 objectForKeyedSubscript:v16];
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    [v50 raise:v51 format:{@"Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", v54}];

    goto LABEL_18;
  }

  v12 = [MEMORY[0x277CFE338] bluetoothNameKey];
  v13 = [v5 objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2839A6058;
  }

  v16 = v15;

  v17 = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v18 = [v5 objectForKeyedSubscript:v17];
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
    v40 = 0;
    goto LABEL_19;
  }

  v20 = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v21 = [v5 objectForKeyedSubscript:v20];
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

  v25 = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
  v26 = [v5 objectForKeyedSubscript:v25];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
    v29 = [v5 objectForKeyedSubscript:v28];
    v71 = [v29 integerValue];

    v30 = MEMORY[0x277CCABB0];
    v31 = [MEMORY[0x277CFE338] bluetoothDeviceTypeKey];
    v32 = [v5 objectForKeyedSubscript:v31];
    v33 = [v30 numberWithLong:v32];
    v34 = [ATXBluetoothDuetEvent deviceTypeFromBluetoothDeviceType:v33];

    v35 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    v36 = [v3 lastModifiedDateForContextualKeyPath:v35];

    v37 = [MEMORY[0x277CBEAA8] date];
    v38 = v37;
    if (v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:v71 deviceType:v34 deviceName:v16 hardwareAddress:v24 startDate:v39 endDate:v37];

    v40 = self;
  }

  else
  {
    v63 = __atxlog_handle_default();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v63 initWithCurrentContextStoreValues:v64];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'bluetoothConnectionStatusKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSNumber."];
    v40 = 0;
  }

LABEL_19:
  return v40;
}

+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues
{
  v2 = [[ATXBluetoothDuetEvent alloc] initWithCurrentContextStoreValues];
  v3 = v2;
  if (v2 && ![(ATXBluetoothDuetEvent *)v2 bluetoothState])
  {
    v4 = [ATXBluetoothDuetEvent convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)a3
{
  v3 = a3;
  v4 = [ATXBluetoothDuetEvent alloc];
  v5 = [v3 deviceType];
  v6 = [v3 deviceName];
  v7 = [v3 deviceIdentifier];
  v8 = [v3 startDate];
  v9 = [v3 startDate];

  v10 = [(ATXBluetoothDuetEvent *)v4 initWithBluetoothState:1 deviceType:v5 deviceName:v6 hardwareAddress:v7 startDate:v8 endDate:v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceName = self->_deviceName;
  deviceIdentifier = self->_deviceIdentifier;
  bluetoothState = self->_bluetoothState;
  v7 = [(ATXDuetEvent *)self startDate];
  v8 = [(ATXDuetEvent *)self endDate];
  v9 = [v3 stringWithFormat:@"Device name: %@, Device id: %@, Bluetooth state: %ld, start date: %@, end date: %@", deviceName, deviceIdentifier, bluetoothState, v7, v8];

  return v9;
}

+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)a3
{
  v3 = [a3 integerValue];
  if ((v3 - 3) > 0x2B)
  {
    return 2;
  }

  else
  {
    return qword_226872A90[v3 - 3];
  }
}

+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)a3
{
  if (a3 >= 5)
  {
    return 2;
  }

  else
  {
    return a3;
  }
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

  [v4 encodeInteger:-[ATXBluetoothDuetEvent bluetoothState](self forKey:{"bluetoothState"), @"codingKeyForBluetoothState"}];
  [v4 encodeInteger:-[ATXBluetoothDuetEvent deviceType](self forKey:{"deviceType"), @"codingKeyForDeviceType"}];
  v7 = [(ATXBluetoothDuetEvent *)self deviceName];
  [v4 encodeObject:v7 forKey:@"codingKeyForDeviceName"];

  v8 = [(ATXBluetoothDuetEvent *)self deviceIdentifier];
  [v4 encodeObject:v8 forKey:@"codingKeyForHardwareAddress"];
}

- (ATXBluetoothDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v13];

    if (!v14 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForBluetoothState"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForBluetoothState", v4, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)) || (v17 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForDeviceType"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v17, @"codingKeyForDeviceType", v4, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)))
    {
      v10 = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_anchor();
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"codingKeyForDeviceName" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v21];

      if (v22 && ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v24 = MEMORY[0x277D42620];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_anchor();
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"codingKeyForHardwareAddress" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v26];

        if (v27 && ([v4 error], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
        {
          self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:v16 deviceType:v17 deviceName:v22 hardwareAddress:v27 startDate:v8 endDate:v14];
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

- (void)initWithCurrentContextStoreValues
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFE338] bluetoothNameKey];
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412290;
  v10 = v7;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", &v9, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end