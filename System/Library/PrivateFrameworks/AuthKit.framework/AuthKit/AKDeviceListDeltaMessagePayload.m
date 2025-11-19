@interface AKDeviceListDeltaMessagePayload
- (AKDeviceListDeltaMessagePayload)initWithResponseBody:(id)a3;
- (id)_timestampFromPayloadValue:(id)a3;
- (int64_t)_removalReasonFromPayloadValue:(id)a3;
- (unint64_t)_operationFromPayloadValue:(id)a3;
@end

@implementation AKDeviceListDeltaMessagePayload

- (AKDeviceListDeltaMessagePayload)initWithResponseBody:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = v26;
    v26 = 0;
    v23.receiver = v3;
    v23.super_class = AKDeviceListDeltaMessagePayload;
    v26 = [(AKDeviceListDeltaMessagePayload *)&v23 init];
    objc_storeStrong(&v26, v26);
    if (v26)
    {
      v4 = [location[0] objectForKeyedSubscript:@"altDSID"];
      v5 = *(v26 + 1);
      *(v26 + 1) = v4;
      MEMORY[0x1E69E5920](v5);
      v17 = v26;
      v18 = [location[0] objectForKeyedSubscript:@"ts"];
      v6 = [v17 _timestampFromPayloadValue:?];
      v7 = *(v26 + 6);
      *(v26 + 6) = v6;
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v18);
      v8 = [location[0] objectForKeyedSubscript:@"mid"];
      v9 = *(v26 + 3);
      *(v26 + 3) = v8;
      MEMORY[0x1E69E5920](v9);
      v10 = [location[0] objectForKeyedSubscript:@"mids"];
      v11 = *(v26 + 4);
      *(v26 + 4) = v10;
      MEMORY[0x1E69E5920](v11);
      v12 = [location[0] objectForKeyedSubscript:@"sn"];
      v13 = *(v26 + 5);
      *(v26 + 5) = v12;
      MEMORY[0x1E69E5920](v13);
      v19 = v26;
      v20 = [location[0] objectForKeyedSubscript:@"op"];
      v14 = [v19 _operationFromPayloadValue:?];
      *(v26 + 2) = v14;
      MEMORY[0x1E69E5920](v20);
      v21 = v26;
      v22 = [location[0] objectForKeyedSubscript:@"rn"];
      v15 = [v21 _removalReasonFromPayloadValue:?];
      *(v26 + 7) = v15;
      MEMORY[0x1E69E5920](v22);
    }

    v27 = MEMORY[0x1E69E5928](v26);
    v24 = 1;
  }

  else
  {
    v27 = 0;
    v24 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v27;
}

- (id)_timestampFromPayloadValue:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    [location[0] doubleValue];
    v14 = [v8 dateWithTimeIntervalSince1970:v3 / 1000.0];
    v12 = 1;
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_193225000, log, type, "AKDeviceListDeltaMessagePayload missing timestamp", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v14 = 0;
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v14;

  return v4;
}

- (unint64_t)_operationFromPayloadValue:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = objc_opt_class();
    v16 = _AKSafeCast_1(v3, location[0]);
    if ([v16 caseInsensitiveCompare:@"A"])
    {
      if ([v16 caseInsensitiveCompare:@"D"])
      {
        v14 = _AKLogSystem();
        v13 = 16;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          log = v14;
          type = v13;
          __os_log_helper_16_0_0(v12);
          _os_log_error_impl(&dword_193225000, log, type, "AKDeviceListDeltaMessagePayload unable to process unexpected operation.", v12, 2u);
        }

        objc_storeStrong(&v14, 0);
        v18 = 0;
        v15 = 1;
      }

      else
      {
        v18 = 2;
        v15 = 1;
      }
    }

    else
    {
      v18 = 1;
      v15 = 1;
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_193225000, v5, v6, "AKDeviceListDeltaMessagePayload unable to process missing operation.", v9, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v18 = 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  return v18;
}

- (int64_t)_removalReasonFromPayloadValue:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = objc_opt_class();
    v5 = _AKSafeCast_1(v3, location[0]);
    v7 = [v5 integerValue];
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    v7 = -1;
  }

  objc_storeStrong(location, 0);
  return v7;
}

@end