@interface DAExclavesSupport
+ (id)_eicStatusCheck:(id)check;
+ (id)_exDisplayPipeStats;
+ (id)_stringForSensorStatus:(unsigned int)status;
+ (id)exclavesStatusForSensors:(unint64_t)sensors;
+ (id)testResultOverrideForExclavesStatus:(id)status originalResult:(id)result;
@end

@implementation DAExclavesSupport

+ (id)exclavesStatusForSensors:(unint64_t)sensors
{
  sensorsCopy = sensors;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = MGGetBoolAnswer();
  if (v6)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v5 setObject:v7 forKeyedSubscript:@"supported"];
  if (!v6)
  {
    goto LABEL_12;
  }

  if ((sensorsCopy & 1) == 0)
  {
    if ((sensorsCopy & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v14 = [DAExclavesSupport _eicStatusCheck:@"com.apple.sensors.cam"];
    [v5 setObject:v14 forKeyedSubscript:@"camera"];

    if ((sensorsCopy & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [DAExclavesSupport _eicStatusCheck:@"com.apple.sensors.mic"];
  [v5 setObject:v13 forKeyedSubscript:@"mic"];

  if ((sensorsCopy & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((sensorsCopy & 4) != 0)
  {
LABEL_8:
    v8 = [DAExclavesSupport _eicStatusCheck:@"com.apple.sensors.cam_alt_faceid"];
    [v5 setObject:v8 forKeyedSubscript:@"faceid"];
  }

LABEL_9:
  _exDisplayPipeStats = [self _exDisplayPipeStats];
  if (_exDisplayPipeStats)
  {
    [v5 setObject:_exDisplayPipeStats forKeyedSubscript:@"displayPipeStats"];
  }

LABEL_12:
  v15 = @"exclavesStatus";
  v10 = [v5 copy];
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  return v11;
}

+ (id)testResultOverrideForExclavesStatus:(id)status originalResult:(id)result
{
  statusCopy = status;
  resultCopy = result;
  if (([resultCopy isEqualToNumber:&off_1000330A0] & 1) != 0 && statusCopy)
  {
    v7 = [statusCopy objectForKeyedSubscript:@"exclavesStatus"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"supported"];
      v10 = v9;
      if (v9 && ([v9 isEqual:&__kCFBooleanTrue] & 1) != 0)
      {
        v25[0] = @"mic";
        v25[1] = @"camera";
        v25[2] = @"faceid";
        [NSArray arrayWithObjects:v25 count:3];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v23 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          v15 = &off_1000330B8;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [v8 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
              v18 = v17;
              if (v17)
              {
                if ([v17 isEqualToString:@"denied"])
                {
                  goto LABEL_22;
                }

                if ([v18 isEqualToString:@"control"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"pending"))
                {
                  v15 = &off_1000330D0;
LABEL_22:

                  goto LABEL_23;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v15 = resultCopy;
LABEL_23:
      }

      else
      {
        v15 = resultCopy;
      }
    }

    else
    {
      v15 = resultCopy;
    }
  }

  else
  {
    v15 = resultCopy;
  }

  return v15;
}

+ (id)_eicStatusCheck:(id)check
{
  [check cStringUsingEncoding:4];
  if (exclaves_sensor_create() || (v3 = exclaves_sensor_status(), mach_port_deallocate(mach_task_self_, 0), v3))
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = [DAExclavesSupport _stringForSensorStatus:0];
  }

  return v4;
}

+ (id)_stringForSensorStatus:(unsigned int)status
{
  if (status - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_100030AB0[status - 1];
  }
}

+ (id)_exDisplayPipeStats
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (EXDisplayPipeOpen())
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100021554(v3);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (EXDisplayPipeGetStats())
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021598(v4);
    }

    EXDisplayPipeClose();
    goto LABEL_9;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v7 forKeyedSubscript:@"link"];

  v8 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v8 forKeyedSubscript:@"brightness"];

  v9 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v9 forKeyedSubscript:@"dcpTransportHealth"];

  v10 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v10 forKeyedSubscript:@"globalHealth"];

  v11 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v11 forKeyedSubscript:@"pipe"];

  v12 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v12 forKeyedSubscript:@"scaAlgorithm"];

  v13 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v13 forKeyedSubscript:@"scaDriver"];

  v14 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v14 forKeyedSubscript:@"sclDriver"];

  v15 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v15 forKeyedSubscript:@"sclHealth"];

  v16 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v16 forKeyedSubscript:@"tconCRC"];

  v17 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v17 forKeyedSubscript:@"tconHealth"];

  v18 = [NSNumber numberWithUnsignedLongLong:0];
  [v2 setObject:v18 forKeyedSubscript:@"tconHPD"];

  EXDisplayPipeClose();
  v5 = [v2 copy];
LABEL_10:

  return v5;
}

@end