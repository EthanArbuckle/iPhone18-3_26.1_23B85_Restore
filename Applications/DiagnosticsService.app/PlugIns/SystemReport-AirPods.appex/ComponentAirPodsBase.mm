@interface ComponentAirPodsBase
- (BOOL)_isBeatsDevice:(id)device;
- (BOOL)spatialAudioEnabled;
- (BOOL)spatialAudioSupportedForDevice:(id)device;
- (ComponentAirPodsBase)init;
- (id)aacpInfoFromAccessoryInfo:(id)info;
- (id)audioOutputForDevice:(id)device;
- (id)budSide:(id)side;
- (id)caseInfoFromAccessoryInfo:(id)info;
- (id)generationStringForProductId:(unsigned int)id;
- (id)getAutoEQStateForDevice:(id)device;
- (id)getBatteryInfoForDevice:(id)device;
- (id)getCBDevices;
- (id)getPairedAppleAudioDevices;
- (id)inEarStatusForDevice:(id)device;
- (id)microphoneCalibrationResultForDevice:(id)device;
- (id)stringForInEarStatus:(int)status;
- (id)stringForListeningMode:(unsigned int)mode;
- (void)addEnumValueIfNotZero:(int64_t)zero forKey:(id)key toDictionary:(id)dictionary;
- (void)addObjectIfNotNil:(id)nil forKey:(id)key toDictionary:(id)dictionary;
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
    v8[2] = sub_100006F9C;
    v8[3] = &unk_100010448;
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
  btManager = [(ComponentAirPodsBase *)self btManager];
  pairedDevices = [btManager pairedDevices];
  [v4 addObjectsFromArray:pairedDevices];

  btManager2 = [(ComponentAirPodsBase *)self btManager];
  connectedDevices = [btManager2 connectedDevices];
  [v4 addObjectsFromArray:connectedDevices];

  btManager3 = [(ComponentAirPodsBase *)self btManager];
  connectingDevices = [btManager3 connectingDevices];
  [v4 addObjectsFromArray:connectingDevices];

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
        serialNumber = [v10 serialNumber];
        if (serialNumber)
        {
          [v4 setObject:v10 forKey:serialNumber];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)audioOutputForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([deviceCopy getAdaptiveVolumeSupport])
  {
    getAdaptiveVolumeMode = [deviceCopy getAdaptiveVolumeMode];
    if (getAdaptiveVolumeMode == 2)
    {
      v6 = @"Disabled";
    }

    else
    {
      v6 = @"Unknown";
    }

    if (getAdaptiveVolumeMode == 1)
    {
      v7 = @"Enabled";
    }

    else
    {
      v7 = v6;
    }

    [v4 setObject:v7 forKeyedSubscript:@"PersonalizedVolume"];
  }

  if ([deviceCopy getConversationDetectSupport])
  {
    getConversationDetectMode = [deviceCopy getConversationDetectMode];
    if (getConversationDetectMode == 2)
    {
      v9 = @"Disabled";
    }

    else
    {
      v9 = @"Unknown";
    }

    if (getConversationDetectMode == 1)
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
  address = [deviceCopy address];
  v13 = [v11 activeHearingProtectionAvailableForAddress:address];

  if (v13)
  {
    v14 = +[HUAccessoryHearingSettings sharedInstance];
    address2 = [deviceCopy address];
    v16 = [v14 activeHearingProtectionEnabledForAddress:address2];

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

- (id)inEarStatusForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(NSMutableDictionary);
  v9 = 0;
  [deviceCopy inEarStatusPrimary:&v9 + 4 secondary:&v9];

  v6 = [(ComponentAirPodsBase *)self stringForInEarStatus:HIDWORD(v9)];
  [v5 setObject:v6 forKeyedSubscript:@"primaryBud"];

  v7 = [(ComponentAirPodsBase *)self stringForInEarStatus:v9];
  [v5 setObject:v7 forKeyedSubscript:@"secondaryBud"];

  return v5;
}

- (id)stringForInEarStatus:(int)status
{
  if (status > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000104D8 + status);
  }
}

- (id)budSide:(id)side
{
  v9 = 3;
  [side primaryBudSide:&v9];
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

- (id)stringForListeningMode:(unsigned int)mode
{
  if (mode - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000104F0 + mode - 1);
  }
}

- (id)generationStringForProductId:(unsigned int)id
{
  v3 = id - 2;
  if (id - 8194 <= 0x2D)
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

- (id)getBatteryInfoForDevice:(id)device
{
  deviceCopy = device;
  if (qword_100015120 != -1)
  {
    dispatch_once(&qword_100015120, &stru_100010468);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [qword_100015118 connectedDevices];
  v5 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    *&v6 = 134218242;
    v30 = v6;
    v31 = *v40;
    v32 = deviceCopy;
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
        identifier = [v10 identifier];
        identifier2 = [deviceCopy identifier];
        v13 = [identifier containsString:identifier2];

        if (v13)
        {
          v14 = objc_alloc_init(NSMutableArray);
          parts = [v10 parts];
          if (parts <= 1)
          {
            if (parts)
            {
              if (parts != 1)
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
            if (parts != 2)
            {
              if (parts != 3)
              {
                if (parts == 4)
                {
                  v16 = v14;
                  v17 = @"caseBatteryLevel";
                  goto LABEL_20;
                }

LABEL_31:
                v25 = DiagnosticLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  parts2 = [v10 parts];
                  identifier3 = [deviceCopy identifier];
                  *buf = v30;
                  v45 = parts2;
                  v46 = 2112;
                  v47 = identifier3;
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
                deviceCopy = v32;
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

- (id)getAutoEQStateForDevice:(id)device
{
  deviceCopy = device;
  gyroInformation = [deviceCopy gyroInformation];
  v5 = objc_alloc_init(NSMutableDictionary);
  if (gyroInformation && [gyroInformation count])
  {
    gyroInformation2 = [deviceCopy gyroInformation];
    v7 = [gyroInformation2 objectForKeyedSubscript:@"GYRO_INFO_LEFT_BUD_IS_JAMMED"];

    gyroInformation3 = [deviceCopy gyroInformation];
    v9 = [gyroInformation3 objectForKeyedSubscript:@"GYRO_INFO_RIGHT_BUD_IS_JAMMED"];

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

- (id)aacpInfoFromAccessoryInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [infoCopy objectForKeyedSubscript:@"AACPVersionInfo"];

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

- (id)caseInfoFromAccessoryInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [infoCopy objectForKeyedSubscript:@"CaseInfo"];

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

- (BOOL)spatialAudioSupportedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy getAACPCapabilityBit:64])
  {
    v4 = [deviceCopy getSpatialAudioPlatformSupport] == 1;
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

- (BOOL)_isBeatsDevice:(id)device
{
  deviceCopy = device;
  productId = [deviceCopy productId];
  if (productId == 8209)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device (%@) is a AirPods-like Beats device that does not report as an Apple Audio Device", &v7, 0xCu);
    }
  }

  return productId == 8209;
}

- (id)microphoneCalibrationResultForDevice:(id)device
{
  deviceCopy = device;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000857C;
  v26 = sub_10000858C;
  v27 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(HMServiceClient);
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008594;
    v16[3] = &unk_100010490;
    v17 = deviceCopy;
    objc_copyWeak(&v20, &location);
    v19 = &v22;
    v7 = v6;
    v18 = v7;
    [v5 setDeviceDiagnosticRecordFoundHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008D18;
    v14[3] = &unk_1000104B8;
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

- (void)addObjectIfNotNil:(id)nil forKey:(id)key toDictionary:(id)dictionary
{
  if (nil)
  {
    [dictionary setObject:nil forKeyedSubscript:key];
  }
}

- (void)addEnumValueIfNotZero:(int64_t)zero forKey:(id)key toDictionary:(id)dictionary
{
  if (zero)
  {
    dictionaryCopy = dictionary;
    keyCopy = key;
    v9 = [NSNumber numberWithInteger:zero];
    [dictionaryCopy setObject:v9 forKeyedSubscript:keyCopy];
  }
}

@end