@interface AKDeviceListResponse
+ (id)deviceMapFromResponseBody:(id)a3;
- (AKDeviceListResponse)initWithCoder:(id)a3;
- (AKDeviceListResponse)initWithResponseBody:(id)a3;
- (id)_computeHashForDevices:(id)a3;
- (id)_parseDeletedDevicesFromResponseBody:(id)a3;
- (id)_parseDevicesFromResponseBody:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDeviceRestrictionState:(id)a3;
@end

@implementation AKDeviceListResponse

- (AKDeviceListResponse)initWithResponseBody:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v37;
  v37 = 0;
  v35.receiver = v3;
  v35.super_class = AKDeviceListResponse;
  v34 = [(AKDeviceListResponse *)&v35 init];
  v37 = v34;
  objc_storeStrong(&v37, v34);
  if (v34)
  {
    v22 = objc_opt_class();
    v23 = [location[0] objectForKeyedSubscript:@"adsid"];
    v4 = _AKSafeCast_22(v22, v23);
    altDSID = v37->_altDSID;
    v37->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    MEMORY[0x1E69E5920](v23);
    v24 = objc_opt_class();
    v25 = [location[0] objectForKeyedSubscript:@"deviceListVersion"];
    v6 = _AKSafeCast_22(v24, v25);
    deviceListVersion = v37->_deviceListVersion;
    v37->_deviceListVersion = v6;
    MEMORY[0x1E69E5920](deviceListVersion);
    MEMORY[0x1E69E5920](v25);
    v8 = [(AKDeviceListResponse *)v37 _parseDevicesFromResponseBody:location[0]];
    deviceList = v37->_deviceList;
    v37->_deviceList = v8;
    MEMORY[0x1E69E5920](deviceList);
    v10 = [(AKDeviceListResponse *)v37 _parseDeletedDevicesFromResponseBody:location[0]];
    deletedDeviceList = v37->_deletedDeviceList;
    v37->_deletedDeviceList = v10;
    MEMORY[0x1E69E5920](deletedDeviceList);
    v26 = objc_opt_class();
    v27 = [location[0] objectForKeyedSubscript:@"deletedDevicesCacheExpiryOffset"];
    v12 = _AKSafeCast_22(v26, v27);
    deletedDevicesCacheExpiryOffset = v37->_deletedDevicesCacheExpiryOffset;
    v37->_deletedDevicesCacheExpiryOffset = v12;
    MEMORY[0x1E69E5920](deletedDevicesCacheExpiryOffset);
    MEMORY[0x1E69E5920](v27);
    v28 = objc_opt_class();
    v29 = [location[0] objectForKeyedSubscript:@"trustedDeviceHash"];
    v14 = _AKSafeCast_22(v28, v29);
    trustedDeviceHash = v37->_trustedDeviceHash;
    v37->_trustedDeviceHash = v14;
    MEMORY[0x1E69E5920](trustedDeviceHash);
    MEMORY[0x1E69E5920](v29);
    v30 = objc_opt_class();
    v31 = [location[0] objectForKeyedSubscript:@"deletedDeviceHash"];
    v16 = _AKSafeCast_22(v30, v31);
    deletedDeviceHash = v37->_deletedDeviceHash;
    v37->_deletedDeviceHash = v16;
    MEMORY[0x1E69E5920](deletedDeviceHash);
    MEMORY[0x1E69E5920](v31);
    v32 = objc_opt_class();
    v33 = [location[0] objectForKeyedSubscript:@"trustedDevicesUpdateTimestamp"];
    v18 = _AKSafeCast_22(v32, v33);
    trustedDevicesUpdateTimestamp = v37->_trustedDevicesUpdateTimestamp;
    v37->_trustedDevicesUpdateTimestamp = v18;
    MEMORY[0x1E69E5920](trustedDevicesUpdateTimestamp);
    MEMORY[0x1E69E5920](v33);
  }

  v21 = MEMORY[0x1E69E5928](v37);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v37, 0);
  return v21;
}

- (AKDeviceListResponse)initWithCoder:(id)a3
{
  v48 = &v51;
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v51;
  v51 = 0;
  v49 = [(AKDeviceListResponse *)v3 init];
  v51 = v49;
  objc_storeStrong(&v51, v49);
  if (v49)
  {
    v30 = location[0];
    v45 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v51->_altDSID;
    v51->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v31 = location[0];
    v6 = *(v45 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceListVersion"];
    deviceListVersion = v51->_deviceListVersion;
    v51->_deviceListVersion = v7;
    MEMORY[0x1E69E5920](deviceListVersion);
    v34 = location[0];
    v36 = 0x1E695D000uLL;
    v33 = MEMORY[0x1E695DFD8];
    v37 = 0x1E695D000uLL;
    v32 = objc_opt_class();
    v38 = 0x1E73D2000uLL;
    v35 = [v33 setWithObjects:{v32, objc_opt_class(), 0}];
    v9 = [v34 decodeObjectOfClasses:? forKey:?];
    deviceList = v51->_deviceList;
    v51->_deviceList = v9;
    MEMORY[0x1E69E5920](deviceList);
    MEMORY[0x1E69E5920](v35);
    v41 = location[0];
    v40 = *(v36 + 4056);
    v11 = *(v37 + 3784);
    v39 = objc_opt_class();
    v12 = *(v38 + 3360);
    v42 = [v40 setWithObjects:{v39, objc_opt_class(), 0}];
    v13 = [v41 decodeObjectOfClasses:? forKey:?];
    deletedDeviceList = v51->_deletedDeviceList;
    v51->_deletedDeviceList = v13;
    MEMORY[0x1E69E5920](deletedDeviceList);
    MEMORY[0x1E69E5920](v42);
    v43 = location[0];
    v15 = *(v45 + 3776);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deletedDevicesCacheExpiryOffset"];
    deletedDevicesCacheExpiryOffset = v51->_deletedDevicesCacheExpiryOffset;
    v51->_deletedDevicesCacheExpiryOffset = v16;
    MEMORY[0x1E69E5920](deletedDevicesCacheExpiryOffset);
    v44 = location[0];
    v18 = *(v45 + 3776);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_trustedDeviceHash"];
    trustedDeviceHash = v51->_trustedDeviceHash;
    v51->_trustedDeviceHash = v19;
    MEMORY[0x1E69E5920](trustedDeviceHash);
    v46 = location[0];
    v21 = *(v45 + 3776);
    v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deletedDeviceHash"];
    deletedDeviceHash = v51->_deletedDeviceHash;
    v51->_deletedDeviceHash = v22;
    MEMORY[0x1E69E5920](deletedDeviceHash);
    v47 = location[0];
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_trustedDevicesUpdateTimestamp"];
    trustedDevicesUpdateTimestamp = v51->_trustedDevicesUpdateTimestamp;
    v51->_trustedDevicesUpdateTimestamp = v24;
    MEMORY[0x1E69E5920](trustedDevicesUpdateTimestamp);
  }

  v27 = &v51;
  v29 = MEMORY[0x1E69E5928](v51);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v27, obj);
  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v4->_deviceListVersion forKey:@"_deviceListVersion"];
  [location[0] encodeObject:v4->_deviceList forKey:@"_deviceList"];
  [location[0] encodeObject:v4->_deletedDeviceList forKey:@"_deletedDeviceList"];
  [location[0] encodeObject:v4->_deletedDevicesCacheExpiryOffset forKey:@"_deletedDevicesCacheExpiryOffset"];
  [location[0] encodeObject:v4->_trustedDeviceHash forKey:@"_trustedDeviceHash"];
  [location[0] encodeObject:v4->_deletedDeviceHash forKey:@"_deletedDeviceHash"];
  [location[0] encodeObject:v4->_trustedDevicesUpdateTimestamp forKey:@"_trustedDevicesUpdateTimestamp"];
  objc_storeStrong(location, 0);
}

- (id)_parseDevicesFromResponseBody:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = objc_opt_class();
  v8 = [location[0] objectForKeyedSubscript:@"devices"];
  v10 = _AKSafeCast_22(v7, v8);
  MEMORY[0x1E69E5920](v8);
  v9 = 0;
  if (v10)
  {
    v3 = [v10 aaf_map:&__block_literal_global_43];
    v4 = v9;
    v9 = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = [v9 copy];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v6;
}

AKRemoteDevice *__54__AKDeviceListResponse__parseDevicesFromResponseBody___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [AKRemoteDevice alloc];
  v4 = [(AKRemoteDevice *)v2 initWithInfo:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_parseDeletedDevicesFromResponseBody:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = objc_opt_class();
  v8 = [location[0] objectForKeyedSubscript:@"deletedDevices"];
  v10 = _AKSafeCast_22(v7, v8);
  MEMORY[0x1E69E5920](v8);
  v9 = 0;
  if (v10)
  {
    v3 = [v10 aaf_map:&__block_literal_global_49];
    v4 = v9;
    v9 = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = [v9 copy];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v6;
}

AKRemoteDevice *__61__AKDeviceListResponse__parseDeletedDevicesFromResponseBody___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [AKRemoteDevice alloc];
  v4 = [(AKRemoteDevice *)v2 initWithInfo:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)deviceMapFromResponseBody:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v4 = objc_opt_class();
  v5 = [location[0] objectForKeyedSubscript:@"accountInfo"];
  v9 = _AKSafeCast_22(v4, v5);
  MEMORY[0x1E69E5920](v5);
  v6 = v9;
  v8 = MEMORY[0x1E69E5928](v10);
  [v6 enumerateObjectsUsingBlock:?];
  v7 = [v10 copy];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

void __50__AKDeviceListResponse_deviceMapFromResponseBody___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  v4 = [AKDeviceListResponse alloc];
  v11[0] = [(AKDeviceListResponse *)v4 initWithResponseBody:location[0]];
  v10 = [v11[0] altDSID];
  MEMORY[0x1E69E5920](v10);
  if (v10)
  {
    v5 = a1[4];
    v6 = [v11[0] altDSID];
    [v5 setObject:v11[0] forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (void)updateWithDeviceRestrictionState:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKDeviceListResponse *)v15 deviceList];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __57__AKDeviceListResponse_updateWithDeviceRestrictionState___block_invoke;
  v11 = &unk_1E73D85E8;
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = [(NSArray *)v5 aaf_firstObjectPassingTest:&v7];
  MEMORY[0x1E69E5920](v5);
  if (v13)
  {
    [v13 setDeviceRestrictionState:location[0]];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v4 = [location[0] serialNumber];
      v3 = [location[0] machineId];
      __os_log_helper_16_2_4_8_112_8_64_8_112_8_64(v16, 1752392040, v4, 1752392040, v3);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to find device for serial number %{mask.hash}@ or mid %{mask.hash}@", v16, 0x2Au);
      MEMORY[0x1E69E5920](v3);
      MEMORY[0x1E69E5920](v4);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __57__AKDeviceListResponse_updateWithDeviceRestrictionState___block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[2] = a3;
  v17[1] = a1;
  v12 = [location[0] serialNumber];
  v11 = [a1[4] serialNumber];
  v13 = [v12 isEqualToString:?];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    v17[0] = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEBUG))
    {
      v8 = [a1[4] serialNumber];
      __os_log_helper_16_2_2_8_112_8_64(v21, 1752392040, v8);
      _os_log_debug_impl(&dword_193225000, v17[0], v16, "Found device for serial number %{mask.hash}@", v21, 0x16u);
      MEMORY[0x1E69E5920](v8);
    }

    objc_storeStrong(v17, 0);
    v19 = 1;
    v15 = 1;
  }

  else
  {
    v6 = [location[0] machineId];
    v5 = [a1[4] machineId];
    v7 = [v6 isEqualToString:?];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    if (v7)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v4 = [a1[4] machineId];
        __os_log_helper_16_2_2_8_112_8_64(v20, 1752392040, v4);
        _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Found device for machineId %{mask.hash}@", v20, 0x16u);
        MEMORY[0x1E69E5920](v4);
      }

      objc_storeStrong(&oslog, 0);
      v19 = 1;
      v15 = 1;
    }

    else
    {
      v19 = 0;
      v15 = 1;
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v19 & 1;
}

- (id)_computeHashForDevices:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    v21 = [location[0] aaf_map:&__block_literal_global_56];
    v3 = [v21 sortedArrayUsingSelector:sel_compare_];
    v4 = v21;
    v21 = v3;
    MEMORY[0x1E69E5920](v4);
    v20 = MEMORY[0x1E69E5928](&stru_1F0781300);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x1E69E5928](v21);
    v14 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v11);
        v5 = [v20 stringByAppendingString:v19];
        v6 = v20;
        v20 = v5;
        MEMORY[0x1E69E5920](v6);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](obj);
    v17 = [v20 dataUsingEncoding:4];
    if (v17)
    {
      v16 = [v17 ak_SHA256Data];
      v15 = [v16 aaf_toHexString];
      v24 = MEMORY[0x1E69E5928](v15);
      v22 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v24 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v24 = 0;
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v7 = v24;

  return v7;
}

id __47__AKDeviceListResponse__computeHashForDevices___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] machineId];
  objc_storeStrong(location, 0);

  return v3;
}

@end