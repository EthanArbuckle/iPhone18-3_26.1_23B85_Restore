@interface ComponentCameraBase
- (BOOL)isPresent;
- (id)IORegClassName;
- (id)faceIDFdrValidationStatus;
- (id)illuminatorSerialNumber;
- (id)ioRegFdrValidationStatus;
- (id)retrieveDataSerialNumberWithComponentName:(id)a3;
- (id)retrieveSerialNumberWithComponentName:(id)a3;
- (id)serialNumber;
- (id)zhuGeFDRLabelForCategory:(id)a3;
- (id)zhuGeFDRStatus:(id)a3;
- (int64_t)cameraModuleType;
- (void)populateAttributes:(id)a3;
- (void)populateFdrValidationStatus:(id)a3;
@end

@implementation ComponentCameraBase

- (void)populateAttributes:(id)a3
{
  v13 = a3;
  v4 = [(ComponentCameraBase *)self serialNumber];
  v5 = stringOrNull(v4);
  [v13 setObject:v5 forKeyedSubscript:@"serialNumber"];

  [(ComponentCameraBase *)self populateFdrValidationStatus:v13];
  v6 = [(ComponentCameraBase *)self illuminatorSerialNumber];
  v7 = stringOrNull(v6);

  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    [v13 setObject:v7 forKeyedSubscript:@"illuminatorSerialNumber"];
    v10 = [(ComponentCameraBase *)self zhuGeFDRStatus:v7];
    if ([v10 count] == 2)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      [v13 setObject:v11 forKeyedSubscript:@"illuminatorFdrValidationStatus"];

      v12 = [v10 objectAtIndexedSubscript:1];
      [v13 setObject:v12 forKeyedSubscript:@"zhuGeIlluminatorValidationStatus"];
    }
  }
}

- (id)IORegClassName
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [&off_1000C86D8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(&off_1000C86D8);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = IOServiceMatching([v6 UTF8String]);
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7);
        if (MatchingService)
        {
          IOObjectRelease(MatchingService);
          v2 = v6;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v2 = [&off_1000C86D8 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v3 = v2;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (BOOL)isPresent
{
  v3 = [(ComponentCameraBase *)self IORegClassName];
  if (v3)
  {
    v4 = [(ComponentCameraBase *)self serialNumber];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)retrieveSerialNumberWithComponentName:(id)a3
{
  v4 = a3;
  v5 = [(ComponentCameraBase *)self IORegClassName];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [v5 UTF8String], v4, 17, 0);
    if (v8)
    {
      v7 = [[NSString alloc] initWithData:v8 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  if (isValidSerialNumber(v7))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)retrieveDataSerialNumberWithComponentName:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString string];
  v6 = v4;
  if (v6)
  {
    v7 = [(ComponentCameraBase *)self IORegClassName];
    v8 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [v7 UTF8String], v6, 11, 0);

    if (v8)
    {
      v9 = [v8 bytes];
      if ([v8 length])
      {
        v10 = 0;
        do
        {
          [v5 appendFormat:@"%02X", v9[v10++]];
        }

        while ([v8 length] > v10);
      }
    }
  }

  if (isValidSerialNumber(v5))
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)serialNumber
{
  v3 = [(ComponentCameraBase *)self serialNumberComponentPropertyKey];
  v4 = [(ComponentCameraBase *)self retrieveSerialNumberWithComponentName:v3];

  return v4;
}

- (id)illuminatorSerialNumber
{
  v3 = [(ComponentCameraBase *)self illuminatorSerialNumberComponentPropertyKey];
  v4 = [(ComponentCameraBase *)self retrieveDataSerialNumberWithComponentName:v3];

  return v4;
}

- (int64_t)cameraModuleType
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Camera component does not define camera module type! This is used to determine source of FDR validation status.", v4, 2u);
  }

  return 0;
}

- (void)populateFdrValidationStatus:(id)a3
{
  v4 = a3;
  v5 = [(ComponentCameraBase *)self cameraModuleType];
  if (v5 == 3)
  {
    v7 = [(ComponentCameraBase *)self faceIDFdrValidationStatus];
    goto LABEL_5;
  }

  v6 = v5;
  if (v5 == 1)
  {
    v7 = [(ComponentCameraBase *)self ioRegFdrValidationStatus];
LABEL_5:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Camera with module type %ld does not support FDR validation", &v13, 0xCu);
  }

  v8 = 0;
LABEL_9:
  v10 = stringOrNull(v8);

  if (v10)
  {
    v11 = +[NSNull null];
    if ([v10 isEqual:v11])
    {
    }

    else
    {
      v12 = [v10 isEqualToString:&stru_1000B2A68];

      if ((v12 & 1) == 0)
      {
        [v4 setObject:v10 forKeyedSubscript:@"fdrValidationStatus"];
      }
    }
  }
}

- (id)ioRegFdrValidationStatus
{
  v2 = [(ComponentCameraBase *)self IORegClassName];
  if (v2)
  {
    v3 = [DAComponentUtil getIORegistryClass:v2 property:@"CmClValidationStatus" optionalKey:0 classValidator:0];
    if (v3)
    {
      v4 = [[NSString alloc] initWithData:v3 encoding:4];
    }

    else
    {
      v4 = 0;
    }

    v5 = stringOrNull(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)faceIDFdrValidationStatus
{
  v2 = CRGetComponentState();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v6) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FaceID component repair status is state %d", buf, 8u);
  }

  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return off_100090AE8[v2];
  }
}

- (id)zhuGeFDRStatus:(id)a3
{
  v4 = a3;
  if (qword_1000D1FD8 != -1)
  {
    dispatch_once(&qword_1000D1FD8, &stru_100090AC8);
  }

  v26[0] = @"FailureData";
  v26[1] = @"FailureProperties";
  v26[2] = @"DataFailedtoReport";
  v26[3] = @"VerifiedData";
  v26[4] = @"VerifiedProperties";
  v5 = [NSArray arrayWithObjects:v26 count:5];
  v6 = v5;
  if (v4 && [v5 count])
  {
    v22 = self;
    v7 = 0;
    v8 = 0;
    p_cache = ComponentApplePay.cache;
    v24 = v6;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [p_cache[506] objectForKey:v10];
      if (v11)
      {
        v23 = v8;
        v12 = 0;
        while ([v11 count] > v12)
        {
          v13 = [v11 objectAtIndexedSubscript:v12];
          v14 = [v13 allValues];
          v15 = [v14 firstObject];

          v16 = [v15 objectForKey:@"LiveInstance"];
          v17 = [v16 containsString:v4];
          if (v17)
          {
            v18 = v10;

            v7 = v18;
          }

          ++v12;
          if (v17)
          {

            v6 = v24;
            goto LABEL_17;
          }
        }

        v8 = v23;
        v6 = v24;
        p_cache = (ComponentApplePay + 16);
      }

      ++v8;
    }

    while ([v6 count] > v8);
LABEL_17:
    if (v7)
    {
      v20 = [(ComponentCameraBase *)v22 zhuGeFDRLabelForCategory:v7];
      v25[0] = v20;
      v25[1] = v7;
      v19 = [NSArray arrayWithObjects:v25 count:2];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v7 = 0;
  }

  return v19;
}

- (id)zhuGeFDRLabelForCategory:(id)a3
{
  if (a3)
  {
    v10[0] = @"VerifiedData";
    v10[1] = @"VerifiedProperties";
    v3 = a3;
    v4 = [NSArray arrayWithObjects:v10 count:2];
    v5 = [NSSet setWithArray:v4];
    v6 = [v5 containsObject:v3];

    v7 = @"Fail";
    if (v6)
    {
      v7 = @"Pass";
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end