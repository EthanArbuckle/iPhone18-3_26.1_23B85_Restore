@interface PLBatteryUIBackendModel
+ (BOOL)shouldShowChargingController;
+ (BOOL)shouldShowModifiedHealthController;
+ (BOOL)supportsChargingFixedLimit;
+ (int)_getBatteryHealthServiceState;
+ (int)_getCurrentStateOfCharge;
+ (int)_getMaximumCapacity;
+ (int)getBatteryHealthServiceState;
+ (int)getCurrentStateOfCharge;
+ (int)getMaximumCapacity;
- (BOOL)isSmartChargingTempDisabled;
- (PLBatteryUIBackendModel)init;
- (id)addQueryType:(int64_t)a3 withEndDate:(id)a4 withRange:(double)a5 withBucketSize:(double)a6 isDynamicEnd:(BOOL)a7;
- (id)convertResultToLegacyFormat:(id)a3;
- (id)getSmartChargingSwitchState;
- (void)addSkipPlistWriteKey;
- (void)disableSmartCharging;
- (void)enableSmartCharging;
- (void)getOBCEngagedState:(BOOL *)a3 andDesktopMode:(BOOL *)a4;
- (void)resetQuery;
- (void)runQuery;
- (void)tempDisableSmartCharging;
- (void)updateSmartChargingState;
@end

@implementation PLBatteryUIBackendModel

- (PLBatteryUIBackendModel)init
{
  v16.receiver = self;
  v16.super_class = PLBatteryUIBackendModel;
  v2 = [(PLBatteryUIBackendModel *)&v16 init];
  if (v2)
  {
    v3 = PLCalculateEndOfHour();
    endOfHour = v2->_endOfHour;
    v2->_endOfHour = v3;

    v5 = PLCalculateEndOfDay();
    endOfDay = v2->_endOfDay;
    v2->_endOfDay = v5;

    v7 = +[NSMutableDictionary dictionary];
    queryPayload = v2->_queryPayload;
    v2->_queryPayload = v7;

    queryResult = v2->_queryResult;
    v2->_queryResult = 0;

    v10 = [PowerUISmartChargeClient alloc];
    v11 = [v10 initWithClientName:PowerUISmartChargeClientSettings];
    smartChargingClient = v2->_smartChargingClient;
    v2->_smartChargingClient = v11;

    v13 = v2;
  }

  else
  {
    v14 = BUILogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10F7B4(v14);
    }
  }

  return v2;
}

- (id)addQueryType:(int64_t)a3 withEndDate:(id)a4 withRange:(double)a5 withBucketSize:(double)a6 isDynamicEnd:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  if (v7)
  {
    PLBatteryUsageUIDynamicEndConfiguration();
  }

  else
  {
    PLBatteryUsageUIConfiguration();
  }
  v13 = ;
  v14 = PLBatteryUsageUIKeyForRequest();
  v15 = BUILogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v20 = 134218498;
    v21 = a3;
    v22 = 2112;
    v23 = *&v14;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Requesting response type: %ld, key: %@, query range: %f", &v20, 0x20u);
  }

  if (v14)
  {
    v16 = [(PLBatteryUIBackendModel *)self queryPayload];
    [v16 setObject:v13 forKeyedSubscript:v14];

    v17 = v14;
  }

  else
  {
    v18 = BUILogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 134218496;
      v21 = a3;
      v22 = 2048;
      v23 = a5;
      v24 = 2048;
      v25 = a6;
      _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to add response type:%ld range:%f bucket:%f", &v20, 0x20u);
    }
  }

  return v14;
}

- (void)runQuery
{
  v3 = [(PLBatteryUIBackendModel *)self queryPayload];
  v4 = [v3 count];

  v5 = BUILogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PLBatteryUIBackendModel *)self queryPayload];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "querying with %@", &v14, 0xCu);
    }

    v8 = [(PLBatteryUIBackendModel *)self queryPayload];
    v6 = PLQueryRegistered();

    v9 = BUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "response %@", &v14, 0xCu);
    }

    if (!v6)
    {
      v10 = BUILogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(PLBatteryUIBackendModel *)self queryPayload];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "no response: retrying query with %@", &v14, 0xCu);
      }

      v12 = [(PLBatteryUIBackendModel *)self queryPayload];
      v6 = PLQueryRegistered();

      v13 = BUILogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "after retry: response %@", &v14, 0xCu);
      }
    }

    [(PLBatteryUIBackendModel *)self setQueryResult:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10F850();
  }
}

- (void)resetQuery
{
  v3 = [(PLBatteryUIBackendModel *)self queryPayload];
  [v3 removeAllObjects];

  v4 = PLCalculateEndOfHour();
  endOfHour = self->_endOfHour;
  self->_endOfHour = v4;

  v6 = PLCalculateEndOfDay();
  endOfDay = self->_endOfDay;
  self->_endOfDay = v6;

  _objc_release_x1();
}

- (id)convertResultToLegacyFormat:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  [v5 setObject:v6 forKeyedSubscript:@"Graph"];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableArray array];
  v9 = 10;
  do
  {
    v10 = +[NSMutableDictionary dictionary];
    [v8 addObject:v10];

    --v9;
  }

  while (v9);
  v11 = BUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10F88C(v8);
  }

  [v6 setObject:v7 forKeyedSubscript:@"PLBatteryUIGraph24hrs"];
  [v6 setObject:v8 forKeyedSubscript:@"PLBatteryUIGraphDays"];
  v12 = [(PLBatteryUIBackendModel *)self endOfHour];
  [v12 timeIntervalSince1970];
  v13 = [NSNumber numberWithDouble:?];
  [v5 setObject:v13 forKeyedSubscript:@"endOfHour"];

  v14 = BUILogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PLBatteryUIBackendModel *)self endOfHour];
    [v15 timeIntervalSince1970];
    *buf = 134217984;
    v33 = v16;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "setting end of hour:%f", buf, 0xCu);
  }

  v17 = [(PLBatteryUIBackendModel *)self endOfDay];
  [v17 timeIntervalSince1970];
  v18 = [NSNumber numberWithDouble:?];
  [v5 setObject:v18 forKeyedSubscript:@"endOfDay"];

  v19 = BUILogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(PLBatteryUIBackendModel *)self endOfDay];
    [v20 timeIntervalSince1970];
    *buf = 134217984;
    v33 = v21;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "setting end of day:%f", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_B478;
  v28[3] = &unk_163F50;
  v28[4] = self;
  v22 = v5;
  v29 = v22;
  v30 = v7;
  v31 = v8;
  v23 = v8;
  v24 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v28];
  v25 = v31;
  v26 = v22;

  return v22;
}

+ (int)getBatteryHealthServiceState
{
  v2 = [a1 _getBatteryHealthServiceState];
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SVC"];
    v4 = BUILogCommon();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "demo  mode: overriding svc", v8, 2u);
      }

      v2 = [v3 intValue];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10FC38();
      }
    }
  }

  v6 = BUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Svc State: %d", v8, 8u);
  }

  return v2;
}

+ (int)getMaximumCapacity
{
  v2 = [a1 _getMaximumCapacity];
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_NCC"];
    v4 = BUILogCommon();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "demo mode: overriding ncc", &v11, 2u);
      }

      v2 = [v3 intValue];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10FC74();
      }
    }
  }

  v6 = BUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = v2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "ncc: %d", &v11, 8u);
  }

  if (v2 == -1)
  {
    v9 = BUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "missing NCC", &v11, 2u);
    }

    v8 = -1;
  }

  else
  {
    if (v2 >= 100)
    {
      v7 = 100;
    }

    else
    {
      v7 = v2;
    }

    v8 = v7 & ~(v7 >> 31);
    v9 = BUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Maximum capacity: %d%%", &v11, 8u);
    }
  }

  return v8;
}

+ (int)getCurrentStateOfCharge
{
  v2 = [a1 _getCurrentStateOfCharge];
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SOC"];
    v4 = BUILogCommon();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "demo mode: overriding uisoc", v8, 2u);
      }

      v2 = [v3 intValue];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10FCB0();
      }
    }
  }

  v6 = BUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "UISoC: %d", v8, 8u);
  }

  return v2;
}

- (void)updateSmartChargingState
{
  v3 = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v8 = 0;
  v4 = [v3 isSmartChargingCurrentlyEnabled:&v8];
  v5 = v8;

  v6 = BUILogCommon();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10FCEC();
    }

    v4 = &dword_0 + 1;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10FD5C();
  }

  [(PLBatteryUIBackendModel *)self setSmartChargingState:v4];
}

- (BOOL)isSmartChargingTempDisabled
{
  v3 = BUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10FDCC();
  }

  v4 = BUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10FE08(self);
  }

  return [(PLBatteryUIBackendModel *)self smartChargingState]== &dword_0 + 3;
}

- (void)enableSmartCharging
{
  v2 = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v8 = 0;
  v3 = [v2 enableSmartCharging:&v8];
  v4 = v8;

  v5 = BUILogCommon();
  v6 = v5;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10FE80();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Smart charging enabled", v7, 2u);
  }
}

- (void)tempDisableSmartCharging
{
  v2 = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v8 = 0;
  v3 = [v2 temporarilyDisableSmartCharging:&v8];
  v4 = v8;

  v5 = BUILogCommon();
  v6 = v5;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10FEF0();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Smart charging temporarily disabled", v7, 2u);
  }
}

- (void)disableSmartCharging
{
  v2 = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v8 = 0;
  v3 = [v2 disableSmartCharging:&v8];
  v4 = v8;

  v5 = BUILogCommon();
  v6 = v5;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10FF60();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Smart charging disabled", v7, 2u);
  }
}

- (id)getSmartChargingSwitchState
{
  if ([(PLBatteryUIBackendModel *)self smartChargingState]== &dword_0 + 1)
  {
    return &off_173568;
  }

  else
  {
    return &off_173580;
  }
}

- (void)getOBCEngagedState:(BOOL *)a3 andDesktopMode:(BOOL *)a4
{
  v6 = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v10 = 0;
  v7 = [v6 isOBCEngagedAsDesktopDevice:a4 chargingOverrideAllowed:0 withError:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = BUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10FFD0();
    }

    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    *a3 = v7;
  }
}

+ (BOOL)shouldShowModifiedHealthController
{
  if (_os_feature_enabled_impl())
  {
    v3 = [a1 supportsChargingFixedLimit];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[PLModelingUtilities isiPad];
  v5 = BUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_110040();
  }

  v6 = BUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1100B0();
  }

  return v3 & v4;
}

+ (BOOL)supportsChargingFixedLimit
{
  v2 = [PowerUISmartChargeClient alloc];
  v3 = [v2 initWithClientName:PowerUISmartChargeClientSettings];
  v4 = [v3 isMCLSupported];
  v5 = BUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_110120();
  }

  return v4;
}

+ (BOOL)shouldShowChargingController
{
  if (_os_feature_enabled_impl())
  {
    v3 = [a1 supportsChargingFixedLimit];
  }

  else
  {
    v3 = 0;
  }

  v4 = BUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_110190();
  }

  return v3 & +[PLModelingUtilities isiPhone];
}

- (void)addSkipPlistWriteKey
{
  v2 = [(PLBatteryUIBackendModel *)self queryPayload];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipPlistWriteKey"];
}

+ (int)_getCurrentStateOfCharge
{
  if (IOPSGetPercentRemaining())
  {
    v2 = BUILogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_110200();
    }
  }

  return -1;
}

+ (int)_getMaximumCapacity
{
  v2 = BUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Querying NCC from IOPS", v11, 2u);
  }

  v3 = IOPSCopyPowerSourcesByType();
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 intValue];
    }

    else
    {
      v9 = BUILogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_110274();
      }

      v8 = -1;
    }
  }

  else
  {
    v5 = BUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1102B0();
    }

    v8 = -1;
  }

  return v8;
}

+ (int)_getBatteryHealthServiceState
{
  v2 = BUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Querying svc from IOPS", v11, 2u);
  }

  v3 = IOPSCopyPowerSourcesByType();
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"Battery Service State"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 intValue];
    }

    else
    {
      v9 = BUILogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1102EC();
      }

      v8 = -1;
    }
  }

  else
  {
    v5 = BUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1102B0();
    }

    v8 = -1;
  }

  return v8;
}

@end