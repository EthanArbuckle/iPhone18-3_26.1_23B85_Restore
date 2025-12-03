@interface AKDeviceSafetyRestrictionState
- (AKDeviceSafetyRestrictionState)initWithCoder:(id)coder;
- (AKDeviceSafetyRestrictionState)initWithDeviceMID:(id)d serialNumber:(id)number restrictionReason:(int64_t)reason;
- (AKDeviceSafetyRestrictionState)initWithResponse:(id)response error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKDeviceSafetyRestrictionState

- (AKDeviceSafetyRestrictionState)initWithDeviceMID:(id)d serialNumber:(id)number restrictionReason:(int64_t)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = 0;
  objc_storeStrong(&v13, number);
  reasonCopy = reason;
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AKDeviceSafetyRestrictionState;
  v10 = [(AKDeviceSafetyRestrictionState *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_machineId, location[0]);
    objc_storeStrong(&selfCopy->_serialNumber, v13);
    selfCopy->_reason = reasonCopy;
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKDeviceSafetyRestrictionState)initWithResponse:(id)response error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  errorCopy = error;
  v19 = objc_opt_class();
  v20 = [location[0] objectForKeyedSubscript:AKDeviceInfoKey];
  v31 = _AKSafeCast_2(v19, v20);
  MEMORY[0x1E69E5920](v20);
  if (v31)
  {
    v13 = objc_opt_class();
    v14 = [v31 objectForKeyedSubscript:AKMachineIdKey];
    v27 = _AKSafeCast_2(v13, v14);
    MEMORY[0x1E69E5920](v14);
    v15 = objc_opt_class();
    v16 = [v31 objectForKeyedSubscript:AKSerialNumberKey];
    v26 = _AKSafeCast_2(v15, v16);
    MEMORY[0x1E69E5920](v16);
    if (v27 || v26)
    {
      v8 = objc_opt_class();
      v9 = [v31 objectForKeyedSubscript:AKLostModeKey];
      v22 = _AKSafeCast_2(v8, v9);
      MEMORY[0x1E69E5920](v9);
      if (v22)
      {
        if ([v22 BOOLValue])
        {
          v21 = 2;
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 1;
      }

      v6 = selfCopy;
      selfCopy = 0;
      selfCopy = [v6 initWithDeviceMID:v27 serialNumber:v26 restrictionReason:v21];
      v35 = MEMORY[0x1E69E5928](selfCopy);
      v28 = 1;
      objc_storeStrong(&v22, 0);
    }

    else
    {
      v25 = _AKLogSystem();
      v24 = 16;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v11 = v25;
        v12 = v24;
        __os_log_helper_16_0_0(v23);
        _os_log_error_impl(&dword_193225000, v11, v12, "Did not receive a serial or machineID on device restriction state, failing init", v23, 2u);
      }

      objc_storeStrong(&v25, 0);
      if (errorCopy)
      {
        v10 = [MEMORY[0x1E696ABC0] ak_deviceListErrorWithCode:-14005];
        v5 = v10;
        *errorCopy = v10;
      }

      v35 = 0;
      v28 = 1;
    }

    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v36, AKDeviceInfoKey);
      _os_log_error_impl(&dword_193225000, v30, v29, "Did not receive %{public}@ key on device restriction state, failing init", v36, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    if (errorCopy)
    {
      v17 = [MEMORY[0x1E696ABC0] ak_deviceListErrorWithCode:-14005];
      v4 = v17;
      *errorCopy = v17;
    }

    v35 = 0;
    v28 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v35;
}

- (AKDeviceSafetyRestrictionState)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"machineId"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  v6 = [location[0] decodeIntegerForKey:@"reason"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKDeviceSafetyRestrictionState *)v3 initWithDeviceMID:v8 serialNumber:v7 restrictionReason:v6];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  machineId = [(AKDeviceSafetyRestrictionState *)selfCopy machineId];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](machineId);
  v5 = location[0];
  serialNumber = [(AKDeviceSafetyRestrictionState *)selfCopy serialNumber];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](serialNumber);
  [location[0] encodeInteger:-[AKDeviceSafetyRestrictionState reason](selfCopy forKey:{"reason"), @"reason"}];
  objc_storeStrong(location, 0);
}

@end