@interface ComponentBatteryInternalBase
- (BOOL)authPassed;
- (BOOL)batteryManufacturingLockStatus;
- (BOOL)hasSMC;
- (BOOL)isPresent;
- (BOOL)isTrusted;
- (BOOL)isTrustedForUI;
- (id)_chargerNodeProperties;
- (id)_encodeDataInArray:(id)a3;
- (id)_encodeDataInDictionary:(id)a3;
- (id)_encodeDataInObject:(id)a3;
- (id)_nodePropertiesForServiceMatching:(id)a3 extraKey:(id)a4;
- (id)_powerSourceNodeProperties;
- (id)_stringToSInt16Array:(id)a3 separatedByString:(id)a4;
- (id)authError;
- (id)batteryLevel;
- (id)deviceSupportsBatteryAuth;
- (id)fbsn;
- (id)fdrValidationStatus;
- (id)generateBatteryConfig;
- (id)generateMaxMinAvgCapacity;
- (id)generateMitigationState;
- (id)generateTemperatureData;
- (id)generateUPOStepper;
- (id)getGasGaugeData;
- (id)integerNumberWithNumber:(id)a3;
- (id)isBatteryCharging;
- (id)isPowerConnected;
- (id)kioskMode;
- (id)serialNumber;
- (id)upoCount;
- (void)addCycleCountHistoryToDictionary:(id)a3;
- (void)addDateOfManufactureAndFirstUseToDictionary:(id)a3;
- (void)addHeatMapToDictionary:(id)a3;
- (void)addInductiveChargingParametersToDictionary:(id)a3;
- (void)addRawRaDataToDictionary:(id)a3;
- (void)addWirelessChargingModeToDictionary:(id)a3;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentBatteryInternalBase

- (BOOL)isPresent
{
  v2 = [(ComponentBatteryInternalBase *)self serialNumber];
  valid = isValidSerialNumber(v2);

  return valid;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentBatteryInternalBase *)self serialNumber];
  [v4 setObject:v5 forKeyedSubscript:@"serialNumber"];

  v6 = [(ComponentBatteryInternalBase *)self getGasGaugeData];
  [v4 addEntriesFromDictionary:v6];

  [(ComponentBatteryInternalBase *)self addRawRaDataToDictionary:v4];
  if ([(ComponentBatteryInternalBase *)self hasSMC])
  {
    [(ComponentBatteryInternalBase *)self addCycleCountHistoryToDictionary:v4];
    [(ComponentBatteryInternalBase *)self addHeatMapToDictionary:v4];
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SMC not found, skipping heat map and cycle count history.", v25, 2u);
    }
  }

  [(ComponentBatteryInternalBase *)self addInductiveChargingParametersToDictionary:v4];
  [(ComponentBatteryInternalBase *)self addDateOfManufactureAndFirstUseToDictionary:v4];
  v8 = [(ComponentBatteryInternalBase *)self isBatteryCharging];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(ComponentBatteryInternalBase *)self addWirelessChargingModeToDictionary:v4];
  }

  v10 = [(ComponentBatteryInternalBase *)self isBatteryCharging];
  [v4 setObject:v10 forKeyedSubscript:@"isBatteryCharging"];

  v11 = [(ComponentBatteryInternalBase *)self batteryLevel];
  [v4 setObject:v11 forKeyedSubscript:@"currentBatteryLevel"];

  v12 = [(ComponentBatteryInternalBase *)self isPowerConnected];
  [v4 setObject:v12 forKeyedSubscript:@"isExternalPowerConnected"];

  v13 = [(ComponentBatteryInternalBase *)self upoCount];
  [v4 setObject:v13 forKeyedSubscript:@"upoCount"];

  v14 = [(ComponentBatteryInternalBase *)self kioskMode];
  [v4 setObject:v14 forKeyedSubscript:@"kioskMode"];

  v15 = [NSNumber numberWithBool:[(ComponentBatteryInternalBase *)self batteryManufacturingLockStatus]];
  [v4 setObject:v15 forKeyedSubscript:@"isBatteryManufacturingLocked"];

  v16 = [(ComponentBatteryInternalBase *)self deviceSupportsBatteryAuth];
  [v4 setObject:v16 forKeyedSubscript:@"deviceSupportsBatteryAuth"];

  v17 = [v4 objectForKeyedSubscript:@"deviceSupportsBatteryAuth"];
  v18 = [v17 isEqualToNumber:&__kCFBooleanTrue];

  if (v18)
  {
    v19 = [NSNumber numberWithBool:[(ComponentBatteryInternalBase *)self authPassed]];
    [v4 setObject:v19 forKeyedSubscript:@"authPassed"];

    v20 = [(ComponentBatteryInternalBase *)self fdrValidationStatus];
    [v4 setObject:v20 forKeyedSubscript:@"fdrValidationStatus"];

    v21 = [NSNumber numberWithBool:[(ComponentBatteryInternalBase *)self isTrusted]];
    [v4 setObject:v21 forKeyedSubscript:@"isTrusted"];

    v22 = [NSNumber numberWithBool:[(ComponentBatteryInternalBase *)self isTrustedForUI]];
    v23 = @"isTrustedForUI";
  }

  else
  {
    v22 = [(ComponentBatteryInternalBase *)self fbsn];
    v23 = @"fbsn";
  }

  [v4 setObject:v22 forKeyedSubscript:v23];

  v24 = [(ComponentBatteryInternalBase *)self authError];
  [v4 setObject:v24 forKeyedSubscript:@"authErrorCode"];
}

- (void)addWirelessChargingModeToDictionary:(id)a3
{
  v8 = a3;
  v3 = IOPSCopyExternalPowerAdapterDetails();
  v4 = v3;
  if (v3)
  {
    v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"IsWireless"];
    v6 = v5;
    if (v5)
    {
      v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 BOOLValue]);
      [v8 setObject:v7 forKey:@"isChargingWireless"];
    }
  }
}

- (id)batteryLevel
{
  v2 = MGCopyAnswer();
  v3 = [v2 stringValue];
  v4 = stringOrNull(v3);

  return v4;
}

- (id)isBatteryCharging
{
  v2 = MGCopyAnswer();
  v3 = numberOrNull(v2);

  return v3;
}

- (id)isPowerConnected
{
  v2 = MGCopyAnswer();
  v3 = numberOrNull(v2);

  return v3;
}

- (void)addDateOfManufactureAndFirstUseToDictionary:(id)a3
{
  v3 = a3;
  blob = 0;
  if (!IOPSCopyPowerSourcesByTypePrecise())
  {
    v4 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v6 = 0;
    v5 = "Power sources info is empty.";
    goto LABEL_4;
  }

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    v5 = "Failed to retrieve power sources info.";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

LABEL_7:
}

- (id)upoCount
{
  v2 = [(ComponentBatteryInternalBase *)self _pmuNodeProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"IOPMUBootUPOCounter"];
  }

  else
  {
    v4 = 0;
  }

  v5 = numberOrNull(v4);

  return v5;
}

- (id)fbsn
{
  v2 = [(ComponentBatteryInternalBase *)self _chargerNodeProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"battery-factory-id"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = strnlen([v4 bytes], objc_msgSend(v4, "length")), v5 < objc_msgSend(v4, "length")))
    {
      v6 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v4 bytes], 1);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (id)serialNumber
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024FAC;
  block[3] = &unk_100090A60;
  block[4] = self;
  if (qword_1000D1FC8 != -1)
  {
    dispatch_once(&qword_1000D1FC8, block);
  }

  v2 = stringOrNull(qword_1000D1FC0);

  return v2;
}

- (id)kioskMode
{
  v2 = [(ComponentBatteryInternalBase *)self _powerSourceNodeProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"KioskMode"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"KioskModeMode"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = stringOrNull(v6);

  return v7;
}

- (void)addRawRaDataToDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ComponentBatteryInternalBase *)self _powerSourceNodeProperties];
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"BatteryData"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 objectForKeyedSubscript:@"BatteryData"];
    v9 = [v8 objectForKeyedSubscript:@"LifetimeData"];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:@"LifetimeData"];
      v11 = [v10 objectForKeyedSubscript:@"Raw"];

      if (v11)
      {
        v12 = [v10 objectForKeyedSubscript:@"Raw"];
        v13 = [v12 base64EncodedStringWithOptions:0];
      }

      else
      {
        v13 = &stru_1000B2A68;
      }
    }

    else
    {
      v13 = &stru_1000B2A68;
    }

    v15 = [v8 objectForKeyedSubscript:@"RaTableRaw"];

    if (v15)
    {
      v14 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = [v8 objectForKeyedSubscript:{@"RaTableRaw", 0}];
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v22 + 1) + 8 * v20) base64EncodedStringWithOptions:0];
            if (v21)
            {
              [v14 addObject:v21];
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v14 = &__NSArray0__struct;
    }
  }

  else
  {
    v13 = &stru_1000B2A68;
    v14 = &__NSArray0__struct;
  }

  [v4 setObject:v13 forKeyedSubscript:@"lifetimeDataRaw"];
  [v4 setObject:v14 forKeyedSubscript:@"rawRaData"];
}

- (id)getGasGaugeData
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v4 = [(ComponentBatteryInternalBase *)self _powerSourceNodeProperties];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"NominalChargeCapacity"];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"nominalChargeCapacity"];
    }

    v19 = v5;
    v7 = [v5 objectForKeyedSubscript:{@"BatteryData", v6}];
    v8 = v7;
    if (v7)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = @"fullChargeCapacity";
            if (([v13 isEqualToString:@"MaxCapacity"] & 1) == 0)
            {
              v14 = @"cycleCount";
              if (([v13 isEqualToString:@"CycleCount"] & 1) == 0)
              {
                v14 = @"designCapacity";
                if (![v13 isEqualToString:@"DesignCapacity"])
                {
                  continue;
                }
              }
            }

            v15 = [v8 objectForKey:v13];
            [v3 setValue:v15 forKey:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }
    }

    v16 = [v3 copy];

    v5 = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)generateMaxMinAvgCapacity
{
  v3 = PLQueryRegistered();
  v4 = DiagnosticLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BatteryQueryForCapacity: %@", buf, 0xCu);
    }

    v5 = [v3 objectForKeyedSubscript:@"fullChargeCapacityMax"];
    v6 = [(ComponentBatteryInternalBase *)self integerNumberWithNumber:v5];
    v14[0] = v6;
    v13[1] = @"fullChargeCapacityMin";
    v7 = [v3 objectForKeyedSubscript:?];
    v8 = [(ComponentBatteryInternalBase *)self integerNumberWithNumber:v7];
    v14[1] = v8;
    v13[2] = @"fullChargeCapacityAvg";
    v9 = [v3 objectForKeyedSubscript:?];
    v10 = [(ComponentBatteryInternalBase *)self integerNumberWithNumber:v9];
    v14[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForCapacity returned nil", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)generateTemperatureData
{
  v2 = PLQueryRegistered();
  v3 = DiagnosticLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BatteryQueryForTemperature: %@", buf, 0xCu);
    }

    v4 = [v2 objectForKeyedSubscript:{@"TemperatureMax", @"temperatureMax"}];
    v5 = numberOrNull(v4);
    v13[0] = v5;
    v12[1] = @"temperatureMin";
    v6 = [v2 objectForKeyedSubscript:@"TemperatureMin"];
    v7 = numberOrNull(v6);
    v13[1] = v7;
    v12[2] = @"temperatureAvg";
    v8 = [v2 objectForKeyedSubscript:@"TemperatureAvg"];
    v9 = numberOrNull(v8);
    v13[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForTemperature returned nil", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)generateMitigationState
{
  state64 = 0;
  out_token = 0;
  v2 = notify_register_check("com.apple.thermalmonitor.ageAwareMitigationState", &out_token);
  if (v2)
  {
    v3 = v2;
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v16 = v3;
      v5 = "notify_register_check failed in ComponentBatteryInternalBase: %d";
LABEL_11:
      _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, v5, buf, 8u);
    }
  }

  else
  {
    state = notify_get_state(out_token, &state64);
    if (!state)
    {
      goto LABEL_7;
    }

    v7 = state;
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v16 = v7;
      v5 = "notify_get_state failed in ComponentBatteryInternalBase: %d";
      goto LABEL_11;
    }
  }

LABEL_7:
  v13 = @"perfMitigationState";
  v8 = [NSNumber numberWithUnsignedLongLong:state64];
  v14 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  return v9;
}

- (id)generateUPOStepper
{
  v2 = PLQueryRegistered();
  v3 = DiagnosticLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BatteryQueryForUPOStepper: %@", buf, 0xCu);
    }

    v4 = [v2 objectForKeyedSubscript:@"State"];
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForUPOStepper returned nil or unexpected class for state array", buf, 2u);
      }

      v6 = +[NSNull null];

      v4 = v6;
    }

    v7 = [v2 objectForKeyedSubscript:@"Metrics"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v7 count])
      {
LABEL_22:
        v22[1] = v7;
        v23 = @"upoStepper";
        v21[0] = @"state";
        v21[1] = @"metrics";
        v22[0] = v4;
        v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

        goto LABEL_26;
      }

      v8 = +[DSDateFormatter sharedFormatter];
      v9 = [v8 formatterWithType:0];

      v10 = [v7 mutableCopy];
      if ([v10 count])
      {
        v11 = 0;
        do
        {
          v12 = [v10 objectAtIndexedSubscript:v11];
          v13 = [v12 mutableCopy];

          v14 = [v13 objectForKeyedSubscript:@"BatteryShutdownTimestamp"];

          if (v14)
          {
            v15 = [v13 objectForKeyedSubscript:@"BatteryShutdownTimestamp"];
            v16 = [v9 stringFromDate:v15];
            [v13 setObject:v16 forKeyedSubscript:@"BatteryShutdownTimestamp"];
          }

          [v10 setObject:v13 atIndexedSubscript:v11];

          ++v11;
        }

        while ([v10 count] > v11);
      }

      v7 = v9;
    }

    else
    {
      v17 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForUPOStepper returned nil or unexpected class for metrics array", buf, 2u);
      }

      v10 = +[NSNull null];
    }

    v7 = v10;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForUPOStepper returned nil", buf, 2u);
  }

  v19 = 0;
LABEL_26:

  return v19;
}

- (id)generateBatteryConfig
{
  v3 = PLQueryRegistered();
  v4 = DiagnosticLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BatteryQueryForConfig: %@", buf, 0xCu);
    }

    v5 = [v3 objectForKeyedSubscript:@"BatteryConfig"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 count])
    {
      v6 = [v5 lastObject];
      v7 = [(ComponentBatteryInternalBase *)self _encodeDataInDictionary:v6];

      if (![NSJSONSerialization isValidJSONObject:v7])
      {
        v8 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Battery config is still not serializable, omitting.", buf, 2u);
        }

        v9 = +[NSNull null];

        v7 = v9;
      }
    }

    else
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForConfig returned nil, unexpected class, or zero count for config array", buf, 2u);
      }

      v7 = +[NSNull null];
    }

    v11 = [v3 objectForKeyedSubscript:{@"dataReady", @"batteryConfigDataReady"}];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v15[1] = @"batteryConfig";
    v16[0] = v12;
    v16[1] = v7;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    if (!v11)
    {
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[ERROR] BatteryQueryForConfig returned nil", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)integerNumberWithNumber:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  }

  else
  {
    v4 = &off_1000C8B70;
  }

  return v4;
}

- (id)_stringToSInt16Array:(id)a3 separatedByString:(id)a4
{
  v4 = [a3 componentsSeparatedByString:a4];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [*(*(&v13 + 1) + 8 * i) integerValue]);
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)hasSMC
{
  v2 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v4 != 0;
}

- (void)addCycleCountHistoryToDictionary:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000269C0;
  v30 = sub_1000269D0;
  v31 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(21, 0);
  v7 = v5;
  v25 = v7;
  v8 = IOPMCopyCycleCountData();

  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "IOPM cycle count history query timed out";
      v12 = v10;
      v13 = 2;
LABEL_16:
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

  else if (v8)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v33) = v8;
      v11 = "Fetching cycle count data resulted in error: 0x%0x";
      v12 = v10;
      v13 = 8;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v27[5];
      *buf = 138412290;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cycle count data: %@", buf, 0xCu);
    }

    v16 = v27[5];
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = [v16 objectForKeyedSubscript:{@"batteryCycleCountData", _NSConcreteStackBlock, 3221225472, sub_1000269D8, &unk_100090A88, v7, &v26}];
    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = [v27[5] objectForKeyedSubscript:@"batteryCycleCountData"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = [v27[5] objectForKeyedSubscript:@"batteryCycleCountData"];
      v10 = [(ComponentBatteryInternalBase *)self _encodeDataInDictionary:v20];

      if ([NSJSONSerialization isValidJSONObject:v10])
      {
        [v4 setObject:v10 forKeyedSubscript:@"cycleCountHistory"];
      }

      else
      {
        v22 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v27[5];
          *buf = 138412290;
          v33 = v24;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not serialize cycle count data: %@", buf, 0xCu);
        }

        v23 = +[NSNull null];
        [v4 setObject:v23 forKeyedSubscript:@"cycleCountHistory"];
      }
    }

    else
    {
LABEL_14:
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = v27[5];
        *buf = 138412290;
        v33 = v21;
        v11 = "Cycle count data not found or not in the right format: %@.";
        v12 = v10;
        v13 = 12;
        goto LABEL_16;
      }
    }
  }

  _Block_object_dispose(&v26, 8);
}

- (void)addHeatMapToDictionary:(id)a3
{
  v3 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000269C0;
  v39 = sub_1000269D0;
  v40 = 0;
  v4 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v3 setObject:v4 forKeyedSubscript:@"heatMap"];
  v30 = v4;
  v29 = v3;
  v46[0] = &off_1000C8B88;
  v46[1] = &off_1000C8BA0;
  v47[0] = @"wired";
  v47[1] = @"wireless";
  v46[2] = &off_1000C8BB8;
  v47[2] = @"discharging";
  [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v5 = v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v6)
  {
    v7 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [v5 objectForKeyedSubscript:v9];
        v11 = dispatch_semaphore_create(0);
        [v9 integerValue];
        v12 = dispatch_get_global_queue(21, 0);
        v13 = v11;
        v14 = IOPMCopyBatteryHeatMap();

        v15 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v13, v15))
        {
          v16 = DiagnosticLogHandleForCategory();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 138412290;
          v42 = v10;
          v17 = v16;
          v18 = "IOPM heat map query timed out for: %@";
LABEL_9:
          v19 = 12;
LABEL_13:
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
          goto LABEL_22;
        }

        if (v14)
        {
          v16 = DiagnosticLogHandleForCategory();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          *buf = 138412546;
          v42 = v10;
          v43 = 1024;
          LODWORD(v44) = v14;
          v17 = v16;
          v18 = "Fetching heat map resulted in error [%@]: 0x%0x";
          v19 = 18;
          goto LABEL_13;
        }

        v20 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v36[5];
          *buf = 138412290;
          v42 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Heat map data: %@", buf, 0xCu);
        }

        v22 = v36[5];
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = [v22 objectForKeyedSubscript:@"batteryHeatMapData"];
        if (!v23)
        {
          goto LABEL_21;
        }

        v24 = [v36[5] objectForKeyedSubscript:@"batteryHeatMapData"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v36[5] objectForKeyedSubscript:@"batteryHeatMapData"];
          if ([NSJSONSerialization isValidJSONObject:v16])
          {
            [v30 setObject:v16 forKeyedSubscript:v10];
          }

          else
          {
            v26 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = v36[5];
              *buf = 138412546;
              v42 = v10;
              v43 = 2112;
              v44 = v27;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not serialize heat map [%@]: %@", buf, 0x16u);
            }
          }
        }

        else
        {
LABEL_21:
          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v10;
            v17 = v16;
            v18 = "Heat map not found [%@].";
            goto LABEL_9;
          }
        }

LABEL_22:

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v28 = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
      v6 = v28;
    }

    while (v28);
  }

  _Block_object_dispose(&v35, 8);
}

- (void)addInductiveChargingParametersToDictionary:(id)a3
{
  v8 = a3;
  v4 = [(ComponentBatteryInternalBase *)self _powerSourceNodeProperties];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"InductiveChargingParameters"];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"InductiveChargingParameters"];
      [v8 setObject:v7 forKeyedSubscript:@"inductiveChargingParameters"];
    }
  }
}

- (id)_encodeDataInDictionary:(id)a3
{
  v4 = [a3 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [(ComponentBatteryInternalBase *)self _encodeDataInObject:v11];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)_encodeDataInArray:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      v8 = [(ComponentBatteryInternalBase *)self _encodeDataInObject:v7];
      [v5 setObject:v8 atIndexedSubscript:v6];

      ++v6;
    }

    while ([v4 count] > v6);
  }

  v9 = [v5 copy];

  return v9;
}

- (id)_encodeDataInObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Encoding raw data object: %@", &v9, 0xCu);
    }

    v6 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(ComponentBatteryInternalBase *)self _encodeDataInDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v6 = [(ComponentBatteryInternalBase *)self _encodeDataInArray:v4];
    }
  }

  v7 = v6;

  v4 = v7;
LABEL_10:

  return v4;
}

- (id)_powerSourceNodeProperties
{
  v6 = @"IOProviderClass";
  v7 = @"IOPMPowerSource";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(ComponentBatteryInternalBase *)self _nodePropertiesForServiceMatching:v3 extraKey:@"InductiveChargingParameters"];

  return v4;
}

- (id)_chargerNodeProperties
{
  v10[0] = @"IONameMatch";
  v10[1] = @"IOProviderClass";
  v11[0] = @"charger";
  v11[1] = @"IOPlatformDevice";
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v4 = [(ComponentBatteryInternalBase *)self _nodePropertiesForServiceMatching:v3 extraKey:0];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8[0] = @"IONameMatch";
    v8[1] = @"IOProviderClass";
    v9[0] = @"smc-charger";
    v9[1] = @"AppleSMCInterface";
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

    v5 = [(ComponentBatteryInternalBase *)self _nodePropertiesForServiceMatching:v6 extraKey:0];
    v3 = v6;
  }

  return v5;
}

- (id)_nodePropertiesForServiceMatching:(id)a3 extraKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7);
  if (MatchingService)
  {
    v9 = MatchingService;
    properties = 0;
    v10 = IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0);
    if (v6)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v9, v6, 0, 0);
      IOObjectRelease(v9);
      if (CFProperty)
      {
        v12 = CFGetTypeID(CFProperty);
        if (v12 != CFDictionaryGetTypeID())
        {
          CFRelease(CFProperty);
          CFProperty = 0;
        }

        v13 = 1;
        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_12:
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[ERROR] Could not create properties", buf, 2u);
        }

        v15 = 0;
        goto LABEL_26;
      }

      v13 = 0;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      IOObjectRelease(v9);
      v13 = 0;
      CFProperty = 0;
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    v15 = properties;
    v17 = v13 ^ 1;
    if (!v6)
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!v6)
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        v18 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[ERROR] Could not get extra property %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [(__CFDictionary *)properties setObject:CFProperty forKeyedSubscript:v6];
    }

LABEL_26:

    goto LABEL_27;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[ERROR] Could not find the service matched by: %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_27:
  v19 = [(__CFDictionary *)v15 copy];

  return v19;
}

- (id)deviceSupportsBatteryAuth
{
  if (MGGetBoolAnswer())
  {
    v2 = &__kCFBooleanTrue;
  }

  else
  {
    v2 = &__kCFBooleanFalse;
  }

  return v2;
}

- (id)authError
{
  v2 = [DAComponentUtil getIORegistryClass:@"AppleAuthCPRelay" property:@"authError" optionalKey:0 classValidator:&stru_100090A38];
  v3 = v2;
  if (v2)
  {
    v4 = *[v2 bytes];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInt:v4];

  return v5;
}

- (BOOL)isTrusted
{
  v2 = [DAComponentUtil getIORegistryClass:@"AppleAuthCPRelay" property:@"isTrusted" optionalKey:0 classValidator:&stru_100090A38];
  v5 = 0;
  [v2 getBytes:&v5 length:1];
  v3 = v5 != 0;

  return v3;
}

- (BOOL)isTrustedForUI
{
  v2 = [DAComponentUtil getIORegistryClass:@"AppleAuthCPRelay" property:@"isTrustedForUI" optionalKey:0 classValidator:&stru_100090A38];
  v5 = 0;
  [v2 getBytes:&v5 length:1];
  v3 = v5 != 0;

  return v3;
}

- (BOOL)authPassed
{
  v2 = [DAComponentUtil getIORegistryClass:@"AppleAuthCPRelay" property:@"AuthPassed" optionalKey:0 classValidator:&stru_100090A38];
  v5 = 0;
  [v2 getBytes:&v5 length:1];
  v3 = v5 != 0;

  return v3;
}

- (id)fdrValidationStatus
{
  v2 = [DAComponentUtil getIORegistryClass:@"AppleAuthCPRelay" property:@"FdrValidationStatus" optionalKey:0 classValidator:&stru_100090A38];
  if (v2)
  {
    v3 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  v4 = stringOrNull(v3);

  return v4;
}

- (BOOL)batteryManufacturingLockStatus
{
  v2 = ZhuGeCopyValue();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEqualToString:@"A53C"];
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error getting batteryManufacturingLockStatus: %@", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end