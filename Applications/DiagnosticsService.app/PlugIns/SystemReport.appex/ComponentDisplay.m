@interface ComponentDisplay
- (BOOL)_isDisplayModeCurrent:(id)a3 withModes:(id)a4;
- (BOOL)deviceSupportsTopModuleAuth;
- (BOOL)isCoverGlassRepaired;
- (BOOL)isPresent;
- (BOOL)isTrusted;
- (BOOL)isTrustedForUI;
- (BOOL)topModuleAuthPassed;
- (id)authError;
- (id)factoryDataSizeForRegion:(int)a3;
- (id)getAppleTopModuleAuthClass;
- (id)getDisplayModes;
- (id)getTopModuleAuthDict;
- (id)parseBIMData:(id)a3;
- (id)readFactoryDataForRegion:(int)a3;
- (id)refreshRate;
- (id)retrieveBIMData;
- (id)serialNumber;
- (id)topModuleAccessoryCertificate;
- (id)topModuleFdrValidationStatus;
- (id)topModuleIDSN;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentDisplay

- (BOOL)isPresent
{
  v2 = [(ComponentDisplay *)self serialNumber];
  v3 = v2;
  if (!v2)
  {
    v5 = IOServiceNameMatching("IODPDevice");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
    }

    else
    {
      v12 = 0;
      if (FindDevicesWithProp("IOService:name", "lcd", v13, 40, &v12) || !v12)
      {
        v11 = 0;
        if (FindDevicesWithProp("IOService:name", "edp", v13, 40, &v11))
        {
          v8 = 1;
        }

        else
        {
          v8 = v11 == 0;
        }

        v4 = !v8;
        if (v8)
        {
          v9 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v10 = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "LCD NOT found.", v10, 2u);
          }
        }

        goto LABEL_8;
      }
    }

    v4 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v4 = [v2 length] != 0;
LABEL_9:

  return v4;
}

- (id)getDisplayModes
{
  v34 = objc_alloc_init(NSMutableDictionary);
  v35 = objc_alloc_init(NSMutableDictionary);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = MGCopyAnswer();
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:v7];
        if ([v8 count] == 4)
        {
          v9 = [v8 objectAtIndexedSubscript:0];
          [v9 floatValue];
          v11 = v10;

          v12 = [v8 objectAtIndexedSubscript:1];
          [v12 floatValue];
          v14 = v13;

          v15 = [v8 objectAtIndexedSubscript:2];
          [v15 floatValue];
          v17 = v16;

          v18 = [v8 objectAtIndexedSubscript:3];
          [v18 floatValue];
          v20 = v19;

          v42[0] = @"width";
          v21 = [NSNumber numberWithDouble:v11 * v14];
          v42[1] = @"height";
          v43[0] = v21;
          v22 = [NSNumber numberWithDouble:v17 * v20];
          v43[1] = v22;
          v23 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          [v35 setObject:v23 forKeyedSubscript:v7];
        }

        else
        {
          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v7;
            _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Display mode %@ data is not the expected size! Skipping.", buf, 0xCu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v4);
  }

  v24 = +[UIScreen mainScreen];
  v25 = [v24 displayConfiguration];

  v26 = [v25 deviceName];
  *buf = 0;
  IOMobileFramebufferOpenByName();

  *buf = 0;
  IOMobileFramebufferGetCanvasSizes();
  v27 = *(*buf + 0xFFFFFFFF0);
  v28 = *(*buf + 0xFFFFFFFF8);
  [v34 setObject:v35 forKeyedSubscript:@"available"];
  v40[0] = @"width";
  v29 = [NSNumber numberWithDouble:v27];
  v40[1] = @"height";
  v41[0] = v29;
  v30 = [NSNumber numberWithDouble:v28];
  v41[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v34 setObject:v31 forKeyedSubscript:@"current"];

  v32 = [v34 copy];

  return v32;
}

- (void)populateAttributes:(id)a3
{
  v22 = a3;
  v4 = [(ComponentDisplay *)self getDisplayModes];
  [v22 setObject:v4 forKeyedSubscript:@"displayModes"];
  v5 = [NSNumber numberWithBool:[(ComponentDisplay *)self _isDisplayModeCurrent:@"zoomed" withModes:v4]];
  [v22 setObject:v5 forKeyedSubscript:@"isZoomed"];

  v6 = [NSNumber numberWithBool:[(ComponentDisplay *)self _isDisplayModeCurrent:@"dense" withModes:v4]];
  [v22 setObject:v6 forKeyedSubscript:@"isDense"];

  v7 = [(ComponentDisplay *)self serialNumber];
  v8 = v7;
  if (v7 && [v7 length])
  {
    [v22 setObject:v8 forKeyedSubscript:@"serialNumber"];
  }

  v9 = [(ComponentDisplay *)self refreshRate];
  [v22 setObject:v9 forKeyedSubscript:@"refreshRate"];

  v10 = [(ComponentDisplay *)self retrieveBIMData];
  if (v10)
  {
    [v22 setObject:v10 forKeyedSubscript:@"BIM"];
  }

  v11 = [(ComponentDisplay *)self getTopModuleAuthDict];
  [(ComponentDisplay *)self setTopModuleAuthDict:v11];

  v12 = [NSNumber numberWithBool:[(ComponentDisplay *)self deviceSupportsTopModuleAuth]];
  [v22 setObject:v12 forKeyedSubscript:@"deviceSupportsTopModuleAuth"];

  v13 = [NSNumber numberWithBool:[(ComponentDisplay *)self topModuleAuthPassed]];
  [v22 setObject:v13 forKeyedSubscript:@"authPassed"];

  v14 = [(ComponentDisplay *)self authError];
  [v22 setObject:v14 forKeyedSubscript:@"authErrorCode"];

  v15 = [NSNumber numberWithBool:[(ComponentDisplay *)self isTrusted]];
  [v22 setObject:v15 forKeyedSubscript:@"isTrusted"];

  v16 = [NSNumber numberWithBool:[(ComponentDisplay *)self isTrustedForUI]];
  [v22 setObject:v16 forKeyedSubscript:@"isTrustedForUI"];

  v17 = [(ComponentDisplay *)self topModuleFdrValidationStatus];
  [v22 setObject:v17 forKeyedSubscript:@"fdrValidationStatus"];

  v18 = [(ComponentDisplay *)self topModuleAccessoryCertificate];
  [v22 setObject:v18 forKeyedSubscript:@"accessoryCertificate"];

  v19 = [(ComponentDisplay *)self topModuleIDSN];
  [v22 setObject:v19 forKeyedSubscript:@"chipId"];

  v20 = [NSNumber numberWithInt:[(ComponentDisplay *)self getDeviceCoverGlassCoating]];
  [v22 setObject:v20 forKeyedSubscript:@"deviceCoverGlassCoating"];

  v21 = [NSNumber numberWithBool:[(ComponentDisplay *)self isCoverGlassRepaired]];
  [v22 setObject:v21 forKeyedSubscript:@"isCoverGlassRepaired"];
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = [[NSString alloc] initWithData:v2 encoding:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)retrieveBIMData
{
  v3 = IOServiceMatching("AppleEmbeddedTouchEEPROMDriver");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  self->_eepromService = MatchingService;
  if (MatchingService)
  {
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &self->_driverConnect);
    if (v5)
    {
      v6 = v5;
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v22) = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to create the driver connect with error %X", buf, 8u);
      }

      IOObjectRelease(self->_eepromService);
      v8 = 0;
      self->_eepromService = 0;
    }

    else
    {
      v10 = [(ComponentDisplay *)self readFactoryDataForRegion:0];
      if (v10)
      {
        v11 = [(ComponentDisplay *)self parseBIMData:v10];
      }

      else
      {
        v11 = 0;
      }

      v12 = [(ComponentDisplay *)self readFactoryDataForRegion:1];
      if (v12)
      {
        v13 = [(ComponentDisplay *)self parseBIMData:v12];
      }

      else
      {
        v13 = 0;
      }

      driverConnect = self->_driverConnect;
      if (driverConnect)
      {
        IOServiceClose(driverConnect);
        self->_driverConnect = 0;
      }

      eepromService = self->_eepromService;
      if (eepromService)
      {
        IOObjectRelease(eepromService);
        self->_eepromService = 0;
      }

      if (v11 | v13)
      {
        v19[0] = @"BIM1";
        v16 = dictionaryOrNull(v11);
        v19[1] = @"BIM2";
        v20[0] = v16;
        v17 = dictionaryOrNull(v13);
        v20[1] = v17;
        v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "AppleEmbeddedTouchEEPROMDriver";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to create the %s service", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)readFactoryDataForRegion:(int)a3
{
  v5 = [(ComponentDisplay *)self factoryDataSizeForRegion:?];
  v6 = v5;
  if (!v5)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  input = a3;
  v7 = [v5 unsignedLongValue];
  v19 = v7;
  outputStruct = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!outputStruct)
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v21 = v7;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to malloc %zu bytes", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = outputStruct;
  v10 = IOConnectCallMethod(self->_driverConnect, 1u, &input, 1u, 0, 0, 0, 0, outputStruct, &v19);
  if (v10)
  {
    v11 = v10;
    v12 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109120;
    LODWORD(v21) = v11;
    v16 = "IOConnectCallMethod() to read data failed with 0x%08x";
    v17 = v12;
    v18 = 8;
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_5;
  }

  v13 = [NSData dataWithBytes:v9 length:v19];
  if (v13)
  {
    goto LABEL_11;
  }

  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Unable to create NSData from EEPROM read outBuffer";
    v17 = v12;
    v18 = 2;
    goto LABEL_18;
  }

LABEL_5:

  v13 = 0;
LABEL_11:
  free(v9);
LABEL_12:

  return v13;
}

- (id)factoryDataSizeForRegion:(int)a3
{
  output = 0;
  input = a3;
  outputCnt = 1;
  v3 = IOConnectCallMethod(self->_driverConnect, 2u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      v6 = 0;
      goto LABEL_6;
    }

    *buf = 67109376;
    v13 = v4;
    v14 = 2048;
    v15 = output;
    v8 = "IOConnectCallMethod() failed for get size with 0x%08x. size returned is %llu \n";
    v9 = v5;
    v10 = 18;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_3;
  }

  if (!output)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 0;
    v8 = "The returned regions size was 0. This device likely has TouchEEPROM FACTORY_DATA misconfigured.";
    v9 = v5;
    v10 = 2;
    goto LABEL_12;
  }

  v6 = [NSNumber numberWithUnsignedLongLong:?];
LABEL_6:

  return v6;
}

- (id)parseBIMData:(id)a3
{
  if (a3)
  {
    v23 = 0u;
    v24 = 0u;
    [a3 getBytes:&v23 length:32];
    if (v23 == 255 || *(&v23 + 2) == -1)
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid BIM data retrieved. This unit likely has not run long enough to have dumped BIM data to the EEPROM.", buf, 2u);
      }

      v13 = 0;
    }

    else
    {
      v28[0] = @"version";
      v4 = [NSNumber numberWithUnsignedChar:?];
      v29[0] = v4;
      v28[1] = @"header";
      v21 = [NSNumber numberWithUnsignedChar:BYTE1(v23)];
      v29[1] = v21;
      v28[2] = @"timestamp";
      v20 = [NSNumber numberWithUnsignedLongLong:*(&v23 + 2)];
      v29[2] = v20;
      v28[3] = @"scoreMin";
      v19 = [NSNumber numberWithUnsignedShort:WORD5(v23)];
      v27[0] = v19;
      v18 = [NSNumber numberWithUnsignedShort:WORD6(v23)];
      v27[1] = v18;
      v17 = [NSNumber numberWithUnsignedShort:HIWORD(v23)];
      v27[2] = v17;
      v16 = [NSArray arrayWithObjects:v27 count:3];
      v29[3] = v16;
      v28[4] = @"scoreMed";
      v15 = [NSNumber numberWithUnsignedShort:v24];
      v26[0] = v15;
      v5 = [NSNumber numberWithUnsignedShort:WORD1(v24)];
      v26[1] = v5;
      v6 = [NSNumber numberWithUnsignedShort:WORD2(v24)];
      v26[2] = v6;
      v7 = [NSArray arrayWithObjects:v26 count:3];
      v29[4] = v7;
      v28[5] = @"scoreMax";
      v8 = [NSNumber numberWithUnsignedShort:WORD3(v24)];
      v25[0] = v8;
      v9 = [NSNumber numberWithUnsignedShort:WORD4(v24)];
      v25[1] = v9;
      v10 = [NSNumber numberWithUnsignedShort:WORD5(v24)];
      v25[2] = v10;
      v11 = [NSArray arrayWithObjects:v25 count:3];
      v29[5] = v11;
      v28[6] = @"crc";
      v12 = [NSNumber numberWithUnsignedInt:HIDWORD(v24)];
      v29[6] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:7];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getAppleTopModuleAuthClass
{
  if ([DAComponentUtil IORegistryNameExists:@"AppleAuthCPAID" optionalKey:0 passingValidator:&stru_100090D40])
  {
    return @"AppleAuthCPAID";
  }

  else
  {
    return @"AppleAuthCPRelay";
  }
}

- (id)getTopModuleAuthDict
{
  v19 = 0;
  v2 = sub_10003DE60(&v19);
  if (v2)
  {
    v3 = v2;
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to fetch Internal Component Auth Status:%d", buf, 8u);
    }

    v5 = 0;
  }

  else
  {
    v4 = v19;
    v5 = [v19 copy];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:{@"ComponentName", v15}];
        if ([v12 isEqualToString:@"TouchController"])
        {
          v13 = v11;

          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (BOOL)deviceSupportsTopModuleAuth
{
  v2 = [(ComponentDisplay *)self topModuleAuthDict];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)topModuleAuthPassed
{
  v2 = [(ComponentDisplay *)self topModuleAuthDict];
  v3 = [v2 objectForKey:@"AuthPassed"];

  if (v3)
  {
    v4 = [v3 isEqualToNumber:&__kCFBooleanTrue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)authError
{
  v2 = [(ComponentDisplay *)self getAppleTopModuleAuthClass];
  v3 = [DAComponentUtil getIORegistryClass:v2 property:@"authError" optionalKey:0 classValidator:&stru_100090D40];

  if (v3)
  {
    v4 = *[v3 bytes];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInt:v4];

  return v5;
}

- (id)topModuleFdrValidationStatus
{
  v2 = [(ComponentDisplay *)self getAppleTopModuleAuthClass];
  v3 = [DAComponentUtil getIORegistryClass:v2 property:@"FdrValidationStatus" optionalKey:0 classValidator:&stru_100090D40];

  if (v3)
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (BOOL)isTrusted
{
  v2 = [(ComponentDisplay *)self topModuleAuthDict];
  v3 = [v2 objectForKey:@"isTrusted"];

  if (v3)
  {
    v4 = [v3 isEqualToNumber:&__kCFBooleanTrue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isTrustedForUI
{
  v2 = [(ComponentDisplay *)self topModuleAuthDict];
  v3 = [v2 objectForKey:@"isTrustedForUI"];

  if (v3)
  {
    v4 = [v3 isEqualToNumber:&__kCFBooleanTrue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)topModuleAccessoryCertificate
{
  v2 = [(ComponentDisplay *)self getAppleTopModuleAuthClass];
  v3 = [DAComponentUtil getIORegistryName:v2 property:@"AccessoryCertificate" optionalKey:0 classValidator:&stru_100090D40];

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)topModuleIDSN
{
  v2 = [(ComponentDisplay *)self getAppleTopModuleAuthClass];
  v3 = [DAComponentUtil getIORegistryClass:v2 property:@"IDSN" optionalKey:0 classValidator:&stru_100090D40];

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (BOOL)isCoverGlassRepaired
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentDisplay isCoverGlassRepaired]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (objc_opt_class())
  {
    return +[CRRepairStatus isCoverGlassRepaired];
  }

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Repair data not available for this device, skipping.", &v5, 2u);
  }

  return 0;
}

- (id)refreshRate
{
  v2 = +[CADisplay mainDisplay];
  [v2 refreshRate];
  v4 = v3;

  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithDouble:1.0 / v4];
  }

  v6 = numberOrNull(v5);

  return v6;
}

- (BOOL)_isDisplayModeCurrent:(id)a3 withModes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"current"];
  v8 = [v6 objectForKeyedSubscript:@"available"];

  if (v7 && v8)
  {
    v9 = [v8 objectForKeyedSubscript:v5];
    if (!v9)
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Display mode %@ is not available on this device", &v18, 0xCu);
      }

      v15 = 0;
      goto LABEL_21;
    }

    v10 = [v7 objectForKeyedSubscript:@"width"];
    v11 = [v7 objectForKeyedSubscript:@"height"];
    v12 = [v9 objectForKeyedSubscript:@"width"];
    v13 = [v9 objectForKeyedSubscript:@"height"];
    v14 = v13;
    if (v10 && v11 && v12 && v13)
    {
      if ([v10 isEqualToNumber:v12])
      {
        v15 = [v11 isEqualToNumber:v14];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }
    }

    else
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Display mode dictionaries are not in the expected format", &v18, 2u);
      }
    }

    v15 = 0;
    goto LABEL_20;
  }

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to get display modes for comparison", &v18, 2u);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

@end