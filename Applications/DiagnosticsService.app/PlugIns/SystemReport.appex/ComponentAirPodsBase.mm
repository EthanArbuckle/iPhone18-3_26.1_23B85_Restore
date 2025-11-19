@interface ComponentAirPodsBase
- (BOOL)_isBeatsDevice:(id)a3;
- (BOOL)spatialAudioEnabled;
- (BOOL)spatialAudioSupportedForDevice:(id)a3;
- (ComponentAirPodsBase)init;
- (id)aacpInfoFromAccessoryInfo:(id)a3;
- (id)audioOutputForDevice:(id)a3;
- (id)budSide:(id)a3;
- (id)caseInfoFromAccessoryInfo:(id)a3;
- (id)generationStringForProductId:(unsigned int)a3;
- (id)getAutoEQStateForDevice:(id)a3;
- (id)getBatteryInfoForDevice:(id)a3;
- (id)getCBDevices;
- (id)getPairedAppleAudioDevices;
- (id)inEarStatusForDevice:(id)a3;
- (id)microphoneCalibrationResultForDevice:(id)a3;
- (id)stringForInEarStatus:(int)a3;
- (id)stringForListeningMode:(unsigned int)a3;
- (void)addEnumValueIfNotZero:(int64_t)a3 forKey:(id)a4 toDictionary:(id)a5;
- (void)addObjectIfNotNil:(id)a3 forKey:(id)a4 toDictionary:(id)a5;
@end

@implementation ComponentAirPodsBase

- (ComponentAirPodsBase)init
{
  v10.receiver = self;
  v10.super_class = ComponentAirPodsBase;
  v2 = [(ComponentAirPodsBase *)&v10 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    btManagerAvailableSemaphore = v2->_btManagerAvailableSemaphore;
    v2->_btManagerAvailableSemaphore = v3;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003BEC4;
    v8[3] = &unk_100090A60;
    v9 = v2;
    v5 = objc_retainBlock(v8);
    label = dispatch_queue_get_label(&_dispatch_main_q);
    if (label == dispatch_queue_get_label(0))
    {
      (v5[2])(v5);
    }

    else
    {
      dispatch_sync(&_dispatch_main_q, v5);
    }
  }

  return v2;
}

- (id)getPairedAppleAudioDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(ComponentAirPodsBase *)self btManager];
  v6 = [v5 pairedDevices];
  [v4 addObjectsFromArray:v6];

  v7 = [(ComponentAirPodsBase *)self btManager];
  v8 = [v7 connectedDevices];
  [v4 addObjectsFromArray:v8];

  v9 = [(ComponentAirPodsBase *)self btManager];
  v10 = [v9 connectingDevices];
  [v4 addObjectsFromArray:v10];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v23;
    *&v13 = 138412290;
    v21 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ((([v17 isAppleAudioDevice] & 1) != 0 || -[ComponentAirPodsBase _isBeatsDevice:](self, "_isBeatsDevice:", v17)) && (objc_msgSend(v3, "containsObject:", v17) & 1) == 0)
        {
          v18 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Supported Apple Audio device found: %@", buf, 0xCu);
          }

          [v3 addObject:v17];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v14);
  }

  if (![v3 count])
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No supported Apple Audio Devices found", buf, 2u);
    }
  }

  return v3;
}

- (id)getCBDevices
{
  v17 = 0;
  v2 = [CBDiscovery devicesWithDiscoveryFlags:0x80000200000 error:&v17];
  v3 = v17;
  v4 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 serialNumber];
        if (v11)
        {
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)audioOutputForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([v3 getAdaptiveVolumeSupport])
  {
    v5 = [v3 getAdaptiveVolumeMode];
    if (v5 == 2)
    {
      v6 = @"Disabled";
    }

    else
    {
      v6 = @"Unknown";
    }

    if (v5 == 1)
    {
      v7 = @"Enabled";
    }

    else
    {
      v7 = v6;
    }

    [v4 setObject:v7 forKeyedSubscript:@"PersonalizedVolume"];
  }

  if ([v3 getConversationDetectSupport])
  {
    v8 = [v3 getConversationDetectMode];
    if (v8 == 2)
    {
      v9 = @"Disabled";
    }

    else
    {
      v9 = @"Unknown";
    }

    if (v8 == 1)
    {
      v10 = @"Enabled";
    }

    else
    {
      v10 = v9;
    }

    [v4 setObject:v10 forKeyedSubscript:@"ConversationAwareness"];
  }

  v11 = +[HUAccessoryHearingSettings sharedInstance];
  v12 = [v3 address];
  v13 = [v11 activeHearingProtectionAvailableForAddress:v12];

  if (v13)
  {
    v14 = +[HUAccessoryHearingSettings sharedInstance];
    v15 = [v3 address];
    v16 = [v14 activeHearingProtectionEnabledForAddress:v15];

    if (v16)
    {
      v17 = @"Enabled";
    }

    else
    {
      v17 = @"Disabled";
    }

    [v4 setObject:v17 forKeyedSubscript:@"LoudSoundReduction"];
  }

  return v4;
}

- (id)inEarStatusForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v9 = 0;
  [v4 inEarStatusPrimary:&v9 + 4 secondary:&v9];

  v6 = [(ComponentAirPodsBase *)self stringForInEarStatus:HIDWORD(v9)];
  [v5 setObject:v6 forKeyedSubscript:@"primaryBud"];

  v7 = [(ComponentAirPodsBase *)self stringForInEarStatus:v9];
  [v5 setObject:v7 forKeyedSubscript:@"secondaryBud"];

  return v5;
}

- (id)stringForInEarStatus:(int)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100090DD0 + a3);
  }
}

- (id)budSide:(id)a3
{
  v9 = 3;
  [a3 primaryBudSide:&v9];
  v3 = @"BudSideUnknown";
  v4 = @"roleLeft";
  if (v9 == 2)
  {
    v3 = @"roleRight";
  }

  else
  {
    v4 = @"BudSideUnknown";
  }

  if (v9 == 1)
  {
    v5 = @"roleRight";
  }

  else
  {
    v5 = v4;
  }

  if (v9 == 1)
  {
    v6 = @"roleLeft";
  }

  else
  {
    v6 = v3;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:v6 forKeyedSubscript:@"primaryBudRole"];
  [v7 setObject:v5 forKeyedSubscript:@"secondaryBudRole"];

  return v7;
}

- (id)stringForListeningMode:(unsigned int)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100090DE8 + a3 - 1);
  }
}

- (id)generationStringForProductId:(unsigned int)a3
{
  v3 = a3 - 2;
  if (a3 - 8194 <= 0x2D)
  {
    if (((1 << v3) & 0x40FF) != 0)
    {
      return @"1.0";
    }

    if (((1 << v3) & 0x200000033F00) != 0)
    {
      return @"2.0";
    }
  }

  return @"Unknown";
}

- (id)getBatteryInfoForDevice:(id)a3
{
  v3 = a3;
  if (qword_1000D2038 != -1)
  {
    dispatch_once(&qword_1000D2038, &stru_100090D60);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [qword_1000D2030 connectedDevices];
  v5 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    *&v6 = 134218242;
    v30 = v6;
    v31 = *v40;
    v32 = v3;
    do
    {
      v9 = 0;
      v33 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = [v10 identifier];
        v12 = [v3 identifier];
        v13 = [v11 containsString:v12];

        if (v13)
        {
          v14 = objc_alloc_init(NSMutableArray);
          v15 = [v10 parts];
          if (v15 <= 1)
          {
            if (v15)
            {
              if (v15 != 1)
              {
                goto LABEL_31;
              }

              v16 = v14;
              v17 = @"leftBudBatteryLevel";
            }

            else
            {
              v16 = v14;
              v17 = @"batteryLevel";
            }
          }

          else
          {
            if (v15 != 2)
            {
              if (v15 != 3)
              {
                if (v15 == 4)
                {
                  v16 = v14;
                  v17 = @"caseBatteryLevel";
                  goto LABEL_20;
                }

LABEL_31:
                v25 = DiagnosticLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v26 = [v10 parts];
                  v27 = [v3 identifier];
                  *buf = v30;
                  v45 = v26;
                  v46 = 2112;
                  v47 = v27;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unsupported battery component part %ld found for device with identifier %@", buf, 0x16u);
                }

LABEL_21:
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v18 = v14;
                v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v36;
                  do
                  {
                    for (i = 0; i != v20; i = i + 1)
                    {
                      if (*v36 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v35 + 1) + 8 * i);
                      v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 percentCharge]);
                      [v4 setObject:v24 forKeyedSubscript:v23];
                    }

                    v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
                  }

                  while (v20);
                }

                v8 = v31;
                v3 = v32;
                v7 = v33;
                goto LABEL_29;
              }

              [v14 addObject:@"leftBudBatteryLevel"];
            }

            v16 = v14;
            v17 = @"rightBudBatteryLevel";
          }

LABEL_20:
          [v16 addObject:v17];
          goto LABEL_21;
        }

LABEL_29:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v28 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      v7 = v28;
    }

    while (v28);
  }

  return v4;
}

- (id)getAutoEQStateForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 gyroInformation];
  v5 = objc_alloc_init(NSMutableDictionary);
  if (v4 && [v4 count])
  {
    v6 = [v3 gyroInformation];
    v7 = [v6 objectForKeyedSubscript:@"GYRO_INFO_LEFT_BUD_IS_JAMMED"];

    v8 = [v3 gyroInformation];
    v9 = [v8 objectForKeyedSubscript:@"GYRO_INFO_RIGHT_BUD_IS_JAMMED"];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 BOOLValue]);
        [v5 setObject:v10 forKeyedSubscript:@"isLeftBudJammed"];
      }
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 BOOLValue]);
        [v5 setObject:v11 forKeyedSubscript:@"isRightBudJammed"];
      }
    }
  }

  return v5;
}

- (id)aacpInfoFromAccessoryInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 objectForKeyedSubscript:@"AACPVersionInfo"];

  if ([v5 count] < 0xB)
  {
    v12 = [v5 count];
    v13 = DiagnosticLogHandleForCategory();
    v11 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v15 = 134218240;
        v16 = [v5 count];
        v17 = 1024;
        v18 = 11;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "AACPVersionInfo is smaller than the expected size (%ld instead of %d). Format of array has changed and ComponentAccessoryAirPods needs to be updated", &v15, 0x12u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "AACPVersionInfo is empty. Unable to surface additional information for this AirPods device.", &v15, 2u);
    }
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:1];
    [v4 setObject:v6 forKeyedSubscript:@"modelNumber"];

    v7 = [v5 objectAtIndexedSubscript:3];
    [v4 setObject:v7 forKeyedSubscript:@"systemSerialNumber"];

    v8 = [v5 objectAtIndexedSubscript:8];
    [v4 setObject:v8 forKeyedSubscript:@"leftBudSerialNumber"];

    v9 = [v5 objectAtIndexedSubscript:9];
    [v4 setObject:v9 forKeyedSubscript:@"rightBudSerialNumber"];

    v10 = [v5 objectAtIndexedSubscript:6];
    [v4 setObject:v10 forKeyedSubscript:@"hardwareRevision"];

    v11 = [v5 objectAtIndexedSubscript:10];
    [v4 setObject:v11 forKeyedSubscript:@"firmwareVersion"];
  }

  return v4;
}

- (id)caseInfoFromAccessoryInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 objectForKeyedSubscript:@"CaseInfo"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"CaseInfoVersion"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
    {
      [v4 setObject:v6 forKeyedSubscript:@"caseFirmwareVersion"];
    }
  }

  return v4;
}

- (BOOL)spatialAudioSupportedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 getAACPCapabilityBit:64])
  {
    v4 = [v3 getSpatialAudioPlatformSupport] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)spatialAudioEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  if (CFPreferencesGetAppBooleanValue(@"spatial-audio-accessory-feature", @"com.apple.springboard", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)_isBeatsDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 productId];
  if (v4 == 8209)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device (%@) is a AirPods-like Beats device that does not report as an Apple Audio Device", &v7, 0xCu);
    }
  }

  return v4 == 8209;
}

- (id)microphoneCalibrationResultForDevice:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10003D4A4;
  v26 = sub_10003D4B4;
  v27 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(HMServiceClient);
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003D4BC;
    v16[3] = &unk_100090D88;
    v17 = v4;
    objc_copyWeak(&v20, &location);
    v19 = &v22;
    v7 = v6;
    v18 = v7;
    [v5 setDeviceDiagnosticRecordFoundHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003DC40;
    v14[3] = &unk_100090DB0;
    v8 = v7;
    v15 = v8;
    [v5 activateWithCompletion:v14];
    v9 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13[0] = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for device diagnostic record handler to be called with a record for the target AirPods", v13, 2u);
      }
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v11 = [v23[5] copy];

  _Block_object_dispose(&v22, 8);

  return v11;
}

- (void)addObjectIfNotNil:(id)a3 forKey:(id)a4 toDictionary:(id)a5
{
  if (a3)
  {
    [a5 setObject:a3 forKeyedSubscript:a4];
  }
}

- (void)addEnumValueIfNotZero:(int64_t)a3 forKey:(id)a4 toDictionary:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a4;
    v9 = [NSNumber numberWithInteger:a3];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

@end