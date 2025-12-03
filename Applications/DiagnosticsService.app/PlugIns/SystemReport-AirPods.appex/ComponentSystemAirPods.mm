@interface ComponentSystemAirPods
- (BOOL)isPresent;
- (id)diagnosticsVersion;
- (id)serialNumberFromAacpInfo:(id)info;
- (void)bluetoothManagerDidBecomeAvailable;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentSystemAirPods

- (void)bluetoothManagerDidBecomeAvailable
{
  [(ComponentAirPodsBase *)self getPairedAppleAudioDevices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 connected])
        {
          [(ComponentSystemAirPods *)self setDevice:v8];
          v11 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Running System Report for device: %@", buf, 0xCu);
          }

          v10 = v3;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  device = [(ComponentSystemAirPods *)self device];

  if (!device)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No Apple Audio Devices are currently connected", buf, 2u);
    }

LABEL_15:
  }
}

- (BOOL)isPresent
{
  selfCopy = self;
  btManagerAvailableSemaphore = [(ComponentAirPodsBase *)self btManagerAvailableSemaphore];
  v4 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(btManagerAvailableSemaphore, v4);

  device = [(ComponentSystemAirPods *)selfCopy device];
  LOBYTE(selfCopy) = device != 0;

  return selfCopy;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  device = [(ComponentSystemAirPods *)self device];
  address = [device address];
  [attributesCopy setObject:address forKeyedSubscript:@"MACAddress"];

  device2 = [(ComponentSystemAirPods *)self device];
  name = [device2 name];
  [attributesCopy setObject:name forKeyedSubscript:@"name"];

  device3 = [(ComponentSystemAirPods *)self device];
  productName = [device3 productName];
  [attributesCopy setObject:productName forKeyedSubscript:@"productName"];

  device4 = [(ComponentSystemAirPods *)self device];
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [device4 productId]);
  [attributesCopy setObject:v12 forKeyedSubscript:@"prodId"];

  device5 = [(ComponentSystemAirPods *)self device];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [device5 connected]);
  [attributesCopy setObject:v14 forKeyedSubscript:@"isConnected"];

  device6 = [(ComponentSystemAirPods *)self device];
  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [device6 isTemporaryPaired]);
  [attributesCopy setObject:v16 forKeyedSubscript:@"isTempPaired"];

  device7 = [(ComponentSystemAirPods *)self device];
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [device7 inEarDetectEnabled]);
  [attributesCopy setObject:v18 forKeyedSubscript:@"inEarDetectEnabled"];

  device8 = [(ComponentSystemAirPods *)self device];
  v20 = -[ComponentAirPodsBase stringForListeningMode:](self, "stringForListeningMode:", [device8 listeningMode]);
  [attributesCopy setObject:v20 forKeyedSubscript:@"listeningMode"];

  device9 = [(ComponentSystemAirPods *)self device];
  v22 = -[ComponentAirPodsBase generationStringForProductId:](self, "generationStringForProductId:", [device9 productId]);
  [attributesCopy setObject:v22 forKeyedSubscript:@"generation"];

  diagnosticsVersion = [(ComponentSystemAirPods *)self diagnosticsVersion];
  [attributesCopy setObject:diagnosticsVersion forKeyedSubscript:@"diagnosticsVersion"];

  v24 = +[HUAccessoryHearingSettings sharedInstance];
  device10 = [(ComponentSystemAirPods *)self device];
  address2 = [device10 address];
  v27 = [v24 activeHearingProtectionAvailableForAddress:address2];

  device11 = [(ComponentSystemAirPods *)self device];
  if ([device11 getAdaptiveVolumeSupport])
  {
  }

  else
  {
    device12 = [(ComponentSystemAirPods *)self device];
    v30 = [device12 getConversationDetectSupport] | v27;

    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  device13 = [(ComponentSystemAirPods *)self device];
  v32 = [(ComponentAirPodsBase *)self audioOutputForDevice:device13];
  [attributesCopy setObject:v32 forKeyedSubscript:@"Audio"];

LABEL_5:
  device14 = [(ComponentSystemAirPods *)self device];
  v34 = [(ComponentAirPodsBase *)self spatialAudioSupportedForDevice:device14];

  v35 = [NSNumber numberWithBool:v34];
  [attributesCopy setObject:v35 forKeyedSubscript:@"spatialAudioSupported"];

  if (v34)
  {
    v36 = [NSNumber numberWithBool:[(ComponentAirPodsBase *)self spatialAudioEnabled]];
    [attributesCopy setObject:v36 forKeyedSubscript:@"spatialAudioEnabled"];
  }

  device15 = [(ComponentSystemAirPods *)self device];
  v38 = [(ComponentAirPodsBase *)self inEarStatusForDevice:device15];

  if (v38 && [v38 count])
  {
    [attributesCopy setObject:v38 forKeyedSubscript:@"inEarStatus"];
  }

  device16 = [(ComponentSystemAirPods *)self device];
  v40 = [(ComponentAirPodsBase *)self budSide:device16];

  if (v40 && [v40 count])
  {
    [attributesCopy setObject:v40 forKeyedSubscript:@"BudSide"];
  }

  device17 = [(ComponentSystemAirPods *)self device];
  v42 = [(ComponentAirPodsBase *)self getAutoEQStateForDevice:device17];

  v66 = v42;
  [attributesCopy addEntriesFromDictionary:v42];
  device18 = [(ComponentSystemAirPods *)self device];
  isTemporaryPaired = [device18 isTemporaryPaired];

  if (isTemporaryPaired)
  {
    v45 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Not surfacing AACPInfo dictionary for this device because it is temp paired", buf, 2u);
    }
  }

  else
  {
    device19 = [(ComponentSystemAirPods *)self device];
    accessoryInfo = [device19 accessoryInfo];
    v45 = [(ComponentAirPodsBase *)self aacpInfoFromAccessoryInfo:accessoryInfo];

    if (v45)
    {
      [attributesCopy addEntriesFromDictionary:v45];
      v48 = [(ComponentSystemAirPods *)self serialNumberFromAacpInfo:v45];
      [attributesCopy setObject:v48 forKeyedSubscript:@"serialNumber"];
    }

    device20 = [(ComponentSystemAirPods *)self device];
    accessoryInfo2 = [device20 accessoryInfo];
    v51 = [(ComponentAirPodsBase *)self caseInfoFromAccessoryInfo:accessoryInfo2];

    if (v51)
    {
      [attributesCopy addEntriesFromDictionary:v51];
    }
  }

  getCBDevices = [(ComponentAirPodsBase *)self getCBDevices];
  v53 = [attributesCopy objectForKeyedSubscript:@"systemSerialNumber"];
  device21 = [(ComponentSystemAirPods *)self device];
  v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [device21 isGenuineAirPods]);
  [attributesCopy setObject:v55 forKeyedSubscript:@"authPassed"];

  if (v53)
  {
    v56 = [getCBDevices objectForKey:v53];
    v57 = v56;
    if (v56)
    {
      v58 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v56 gapaFlags]);
      [attributesCopy setObject:v58 forKeyedSubscript:@"authErrorCode"];

      v59 = [(ComponentAirPodsBase *)self getBatteryInfoForDevice:v57];
      v60 = v59;
      if (v59 && [v59 count])
      {
        [attributesCopy setObject:v60 forKeyedSubscript:@"batteryInfo"];
      }

      v61 = 1;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
    v57 = 0;
  }

  device22 = [(ComponentSystemAirPods *)self device];
  connected = [device22 connected];

  if (v61 && connected)
  {
    v64 = [(ComponentAirPodsBase *)self microphoneCalibrationResultForDevice:v57];
    if (v64)
    {
      [attributesCopy setObject:v64 forKeyedSubscript:@"micCalibration"];
    }
  }

  else
  {
    v64 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      device23 = [(ComponentSystemAirPods *)self device];
      *buf = 138412290;
      v68 = device23;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Device %@ is not connected, not attempting to read micrphone calibration data", buf, 0xCu);
    }
  }
}

- (id)serialNumberFromAacpInfo:(id)info
{
  infoCopy = info;
  v4 = @"systemSerialNumber";
  v5 = [infoCopy objectForKeyedSubscript:@"systemSerialNumber"];

  if (!v5)
  {
    v4 = @"leftBudSerialNumber";
    v6 = [infoCopy objectForKeyedSubscript:@"leftBudSerialNumber"];

    if (!v6)
    {
      v4 = @"rightBudSerialNumber";
    }
  }

  v7 = [infoCopy objectForKeyedSubscript:v4];

  return v7;
}

- (id)diagnosticsVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentSystemAirPods diagnosticsVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v3 = +[NSBundle mainBundle];
  infoDictionary = [v3 infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];
  v6 = stringOrNull(v5);

  return v6;
}

@end