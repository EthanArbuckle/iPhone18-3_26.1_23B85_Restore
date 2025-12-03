@interface BatteryUIResourceClass
+ (BOOL)batteryDataUnavailable;
+ (BOOL)inDemoMode;
+ (BOOL)isBatteryUnverified;
+ (BOOL)isBatteryUnverifiedWithStatus:(int)status state:(int)state;
+ (BOOL)isQMaxUnknown;
+ (double)getMaxWidthOfYAxisLabels;
+ (double)millisecondsFromMachTime:(unint64_t)time;
+ (id)containerPath;
+ (id)getAuthData;
+ (id)getBatteryData;
+ (id)get_log_handle_bhui;
+ (id)get_log_handle_bui;
+ (id)get_log_handle_bui_graph;
+ (id)localizedStringWithHour:(int)hour;
+ (id)localizedStringWithPercentage:(double)percentage;
+ (id)overrideBatteryData:(id)data withPath:(id)path;
+ (id)snapshotFromIOEntry:(unsigned int)entry;
+ (int)genuineBatteryStatus;
+ (int)getBatteryHealthServiceFlags;
+ (int)getBatteryHealthServiceState;
+ (int)getBatteryMaximumCapacityPercentWithError:(id *)error;
+ (int)getManagementState;
+ (int)getManagementStateWithSync:(BOOL)sync;
+ (void)valueForDefaultKey:(id)key;
@end

@implementation BatteryUIResourceClass

+ (id)containerPath
{
  if (qword_187C80 != -1)
  {
    sub_114A84();
  }

  v3 = qword_187C78;

  return v3;
}

+ (BOOL)inDemoMode
{
  if (qword_187C88 != -1)
  {
    sub_114A98();
  }

  return byte_187C90;
}

+ (int)getBatteryHealthServiceState
{
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v2 = +[BatteryUIResourceClass get_log_handle_bhui];
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SVC"];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_114AAC(v4);
      }

      intValue = [v4 intValue];
      return intValue;
    }
  }

  v7 = IOPSCopyPowerSourcesByType();
  v8 = v7;
  if (v7 && [v7 count] && (objc_msgSend(v8, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"Battery Service State"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"Battery Service State"];
    intValue = [v12 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

+ (int)getBatteryHealthServiceFlags
{
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v2 = +[BatteryUIResourceClass get_log_handle_bhui];
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SVC_FLAG"];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_114B24(v4);
      }

      intValue = [v4 intValue];
      return intValue;
    }
  }

  v7 = IOPSCopyPowerSourcesByType();
  v8 = v7;
  if (v7 && [v7 count] && (objc_msgSend(v8, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"Battery Service Flags"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"Battery Service Flags"];
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 256;
  }

  return intValue;
}

+ (BOOL)isQMaxUnknown
{
  getBatteryHealthServiceState = [self getBatteryHealthServiceState];
  getBatteryHealthServiceFlags = [self getBatteryHealthServiceFlags];
  v5 = +[BatteryUIResourceClass get_log_handle_bhui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_114B9C();
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_114C0C();
  }

  v6 = getBatteryHealthServiceFlags & 0x2000;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_114C7C();
  }

  v8 = getBatteryHealthServiceState == -1 && v6 != 0;

  return v8;
}

+ (BOOL)isBatteryUnverified
{
  v2 = +[BatteryUIResourceClass genuineBatteryStatus];
  v3 = +[BatteryUIResourceClass getBatteryHealthServiceState];

  return [BatteryUIResourceClass isBatteryUnverifiedWithStatus:v2 state:v3];
}

+ (BOOL)isBatteryUnverifiedWithStatus:(int)status state:(int)state
{
  if (status)
  {
    v4 = state == 5;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4 || state == 12;
  return status == 2 || v6;
}

+ (int)getBatteryMaximumCapacityPercentWithError:(id *)error
{
  v4 = IOPSCopyPowerSourcesByType();
  v5 = v4;
  if (v4 && [v4 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"Maximum Capacity Percent"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    intValue = [v9 intValue];
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:@"noBatteryData" code:-1 userInfo:0];
    }

    v11 = +[BatteryUIResourceClass get_log_handle_bhui];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_114CF4();
    }

    intValue = -1;
  }

  return intValue;
}

+ (int)genuineBatteryStatus
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v2 = +[BatteryUIResourceClass getAuthData];
  v3 = v2;
  if (v2 && ([v2 objectForKey:@"isTrustedForUI"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKey:@"isTrustedForUI"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)getAuthData
{
  v2 = IOServiceMatching("IOPMPowerSource");
  v3 = IOServiceMatching("AppleAuthCPRelay");
  v4 = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    CFDictionarySetValue(v3, @"IOParentMatch", v2);
    CFRelease(v2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
    if (MatchingService)
    {
      v7 = [BatteryUIResourceClass snapshotFromIOEntry:MatchingService];
      goto LABEL_13;
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

+ (id)snapshotFromIOEntry:(unsigned int)entry
{
  properties = 0;
  IORegistryEntryCreateCFProperties(entry, &properties, 0, 0);
  v3 = properties;

  return v3;
}

+ (double)millisecondsFromMachTime:(unint64_t)time
{
  if (qword_187C98 != -1)
  {
    sub_114D30();
  }

  return *&qword_187CA0 * time / 1000000.0;
}

+ (id)overrideBatteryData:(id)data withPath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  if (pathCopy)
  {
    v7 = +[BatteryUIResourceClass get_log_handle_bhui];
    v8 = [NSDictionary dictionaryWithContentsOfFile:pathCopy];
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v9)
      {
        sub_114D44();
      }

      v10 = [dataCopy mutableCopy];
      v11 = [v8 objectForKey:@"Serial"];
      v12 = v11;
      if (v11)
      {
        if ([v11 intValue] == -1)
        {
          [v10 removeObjectForKey:@"Serial"];
        }

        else
        {
          [v10 setObject:v12 forKeyedSubscript:@"Serial"];
        }
      }

      v13 = [v10 copy];
    }

    else
    {
      if (v9)
      {
        sub_114DB8();
      }

      v13 = dataCopy;
    }
  }

  else
  {
    v13 = dataCopy;
  }

  return v13;
}

+ (id)getBatteryData
{
  v2 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = [BatteryUIResourceClass snapshotFromIOEntry:MatchingService];
  }

  else
  {
    v4 = 0;
  }

  +[BatteryUIResourceClass containerPath];
  v5 = _CFPreferencesCopyValueWithContainer();
  if (v5)
  {
    v6 = [BatteryUIResourceClass overrideBatteryData:v4 withPath:v5];

    v4 = v6;
  }

  return v4;
}

+ (BOOL)batteryDataUnavailable
{
  if (!+[BatteryUIResourceClass getManagementState])
  {
    return 1;
  }

  v2 = +[BatteryUIResourceClass getBatteryHealthServiceState];
  if (+[BatteryUIResourceClass isQMaxUnknown])
  {
    return 0;
  }

  v4 = [BatteryUIResourceClass isKnownServiceState:v2];
  v5 = v2 == -1 || v2 == 7;
  if (!v5 && v4 && ((v6 = 0, [BatteryUIResourceClass getBatteryMaximumCapacityPercentWithError:&v6], !v6) || v2 == 12 || (v2 - 7) >= 0xFFFFFFFE))
  {
    return +[BatteryUIResourceClass genuineBatteryStatus]== -1;
  }

  else
  {
    return 1;
  }
}

+ (id)get_log_handle_bui_graph
{
  if (qword_187CB0 != -1)
  {
    sub_114E2C();
  }

  v3 = qword_187CA8;

  return v3;
}

+ (id)get_log_handle_bui
{
  if (qword_187CC0 != -1)
  {
    sub_114E40();
  }

  v3 = qword_187CB8;

  return v3;
}

+ (id)get_log_handle_bhui
{
  if (qword_187CD0 != -1)
  {
    sub_114E54();
  }

  v3 = qword_187CC8;

  return v3;
}

+ (id)localizedStringWithPercentage:(double)percentage
{
  v3 = [NSNumber numberWithDouble:percentage / 100.0];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:3];

  return v4;
}

+ (id)localizedStringWithHour:(int)hour
{
  if (qword_187CD8 != -1)
  {
    sub_114E68();
  }

  v4 = [qword_187CE0 stringFromTimeInterval:hour * 3600.0];
  capitalizedString = [v4 capitalizedString];

  return capitalizedString;
}

+ (double)getMaxWidthOfYAxisLabels
{
  v2 = [BatteryUIResourceClass localizedStringWithPercentage:100.0];
  v3 = [BatteryUIResourceClass localizedStringWithHour:24];
  v4 = +[NSMutableDictionary dictionary];
  v5 = [UIFont systemFontOfSize:11.0];
  [v4 setObject:v5 forKeyedSubscript:NSFontAttributeName];

  [v2 sizeWithAttributes:v4];
  v7 = v6;
  [v3 sizeWithAttributes:v4];
  if (v7 < v8)
  {
    v7 = v8;
  }

  return v7;
}

+ (int)getManagementStateWithSync:(BOOL)sync
{
  syncCopy = sync;
  v4 = +[BatteryUIResourceClass get_log_handle_bhui];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_114E7C();
  }

  state64 = 0;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (syncCopy)
  {
    if (v5)
    {
      sub_114F30();
    }

    out_token = 0;
    if (notify_register_check("com.apple.thermalmonitor.ageAwareMitigationState", &out_token))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_114F6C();
      }

LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    state = notify_get_state(out_token, &state64);
    notify_cancel(out_token);
    if (state)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_114FDC();
      }

      goto LABEL_24;
    }

    v9 = state64;
  }

  else
  {
    if (v5)
    {
      sub_114EB8();
    }

    +[BatteryUIResourceClass containerPath];
    v6 = _CFPreferencesCopyValueWithContainer();
    if (!v6)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_114EF4();
      }

      goto LABEL_24;
    }

    v7 = v6;
    intValue = [v6 intValue];
    v9 = intValue;
    state64 = intValue;
  }

  if (v9 - 1 > 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_11504C();
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_115088(&state64);
  }

  v10 = state64;
LABEL_25:

  return v10;
}

+ (int)getManagementState
{
  if (+[BatteryUIResourceClass deviceSupportsCPMS])
  {
    return 4;
  }

  result = [BatteryUIResourceClass getManagementStateWithSync:1];
  if (!result)
  {

    return [BatteryUIResourceClass getManagementStateWithSync:0];
  }

  return result;
}

+ (void)valueForDefaultKey:(id)key
{
  keyCopy = key;
  +[BatteryUIResourceClass containerPath];
  v4 = _CFPreferencesCopyValueWithContainer();

  return v4;
}

@end