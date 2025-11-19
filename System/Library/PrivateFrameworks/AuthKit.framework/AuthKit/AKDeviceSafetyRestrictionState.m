@interface AKDeviceSafetyRestrictionState
- (AKDeviceSafetyRestrictionState)initWithCoder:(id)a3;
- (AKDeviceSafetyRestrictionState)initWithDeviceMID:(id)a3 serialNumber:(id)a4 restrictionReason:(int64_t)a5;
- (AKDeviceSafetyRestrictionState)initWithResponse:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKDeviceSafetyRestrictionState

- (AKDeviceSafetyRestrictionState)initWithDeviceMID:(id)a3 serialNumber:(id)a4 restrictionReason:(int64_t)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = AKDeviceSafetyRestrictionState;
  v10 = [(AKDeviceSafetyRestrictionState *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong(&v15->_machineId, location[0]);
    objc_storeStrong(&v15->_serialNumber, v13);
    v15->_reason = v12;
  }

  v7 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (AKDeviceSafetyRestrictionState)initWithResponse:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
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

      v6 = v34;
      v34 = 0;
      v34 = [v6 initWithDeviceMID:v27 serialNumber:v26 restrictionReason:v21];
      v35 = MEMORY[0x1E69E5928](v34);
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
      if (v32)
      {
        v10 = [MEMORY[0x1E696ABC0] ak_deviceListErrorWithCode:-14005];
        v5 = v10;
        *v32 = v10;
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
    if (v32)
    {
      v17 = [MEMORY[0x1E696ABC0] ak_deviceListErrorWithCode:-14005];
      v4 = v17;
      *v32 = v17;
    }

    v35 = 0;
    v28 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v34, 0);
  *MEMORY[0x1E69E9840];
  return v35;
}

- (AKDeviceSafetyRestrictionState)initWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"machineId"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  v6 = [location[0] decodeIntegerForKey:@"reason"];
  v3 = v10;
  v10 = 0;
  v10 = [(AKDeviceSafetyRestrictionState *)v3 initWithDeviceMID:v8 serialNumber:v7 restrictionReason:v6];
  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKDeviceSafetyRestrictionState *)v8 machineId];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [(AKDeviceSafetyRestrictionState *)v8 serialNumber];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  [location[0] encodeInteger:-[AKDeviceSafetyRestrictionState reason](v8 forKey:{"reason"), @"reason"}];
  objc_storeStrong(location, 0);
}

@end