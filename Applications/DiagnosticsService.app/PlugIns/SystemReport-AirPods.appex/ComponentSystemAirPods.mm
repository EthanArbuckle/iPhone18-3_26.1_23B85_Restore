@interface ComponentSystemAirPods
- (BOOL)isPresent;
- (id)diagnosticsVersion;
- (id)serialNumberFromAacpInfo:(id)a3;
- (void)bluetoothManagerDidBecomeAvailable;
- (void)populateAttributes:(id)a3;
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

  v9 = [(ComponentSystemAirPods *)self device];

  if (!v9)
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
  v2 = self;
  v3 = [(ComponentAirPodsBase *)self btManagerAvailableSemaphore];
  v4 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v3, v4);

  v5 = [(ComponentSystemAirPods *)v2 device];
  LOBYTE(v2) = v5 != 0;

  return v2;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentSystemAirPods *)self device];
  v6 = [v5 address];
  [v4 setObject:v6 forKeyedSubscript:@"MACAddress"];

  v7 = [(ComponentSystemAirPods *)self device];
  v8 = [v7 name];
  [v4 setObject:v8 forKeyedSubscript:@"name"];

  v9 = [(ComponentSystemAirPods *)self device];
  v10 = [v9 productName];
  [v4 setObject:v10 forKeyedSubscript:@"productName"];

  v11 = [(ComponentSystemAirPods *)self device];
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productId]);
  [v4 setObject:v12 forKeyedSubscript:@"prodId"];

  v13 = [(ComponentSystemAirPods *)self device];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 connected]);
  [v4 setObject:v14 forKeyedSubscript:@"isConnected"];

  v15 = [(ComponentSystemAirPods *)self device];
  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 isTemporaryPaired]);
  [v4 setObject:v16 forKeyedSubscript:@"isTempPaired"];

  v17 = [(ComponentSystemAirPods *)self device];
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 inEarDetectEnabled]);
  [v4 setObject:v18 forKeyedSubscript:@"inEarDetectEnabled"];

  v19 = [(ComponentSystemAirPods *)self device];
  v20 = -[ComponentAirPodsBase stringForListeningMode:](self, "stringForListeningMode:", [v19 listeningMode]);
  [v4 setObject:v20 forKeyedSubscript:@"listeningMode"];

  v21 = [(ComponentSystemAirPods *)self device];
  v22 = -[ComponentAirPodsBase generationStringForProductId:](self, "generationStringForProductId:", [v21 productId]);
  [v4 setObject:v22 forKeyedSubscript:@"generation"];

  v23 = [(ComponentSystemAirPods *)self diagnosticsVersion];
  [v4 setObject:v23 forKeyedSubscript:@"diagnosticsVersion"];

  v24 = +[HUAccessoryHearingSettings sharedInstance];
  v25 = [(ComponentSystemAirPods *)self device];
  v26 = [v25 address];
  v27 = [v24 activeHearingProtectionAvailableForAddress:v26];

  v28 = [(ComponentSystemAirPods *)self device];
  if ([v28 getAdaptiveVolumeSupport])
  {
  }

  else
  {
    v29 = [(ComponentSystemAirPods *)self device];
    v30 = [v29 getConversationDetectSupport] | v27;

    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v31 = [(ComponentSystemAirPods *)self device];
  v32 = [(ComponentAirPodsBase *)self audioOutputForDevice:v31];
  [v4 setObject:v32 forKeyedSubscript:@"Audio"];

LABEL_5:
  v33 = [(ComponentSystemAirPods *)self device];
  v34 = [(ComponentAirPodsBase *)self spatialAudioSupportedForDevice:v33];

  v35 = [NSNumber numberWithBool:v34];
  [v4 setObject:v35 forKeyedSubscript:@"spatialAudioSupported"];

  if (v34)
  {
    v36 = [NSNumber numberWithBool:[(ComponentAirPodsBase *)self spatialAudioEnabled]];
    [v4 setObject:v36 forKeyedSubscript:@"spatialAudioEnabled"];
  }

  v37 = [(ComponentSystemAirPods *)self device];
  v38 = [(ComponentAirPodsBase *)self inEarStatusForDevice:v37];

  if (v38 && [v38 count])
  {
    [v4 setObject:v38 forKeyedSubscript:@"inEarStatus"];
  }

  v39 = [(ComponentSystemAirPods *)self device];
  v40 = [(ComponentAirPodsBase *)self budSide:v39];

  if (v40 && [v40 count])
  {
    [v4 setObject:v40 forKeyedSubscript:@"BudSide"];
  }

  v41 = [(ComponentSystemAirPods *)self device];
  v42 = [(ComponentAirPodsBase *)self getAutoEQStateForDevice:v41];

  v66 = v42;
  [v4 addEntriesFromDictionary:v42];
  v43 = [(ComponentSystemAirPods *)self device];
  v44 = [v43 isTemporaryPaired];

  if (v44)
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
    v46 = [(ComponentSystemAirPods *)self device];
    v47 = [v46 accessoryInfo];
    v45 = [(ComponentAirPodsBase *)self aacpInfoFromAccessoryInfo:v47];

    if (v45)
    {
      [v4 addEntriesFromDictionary:v45];
      v48 = [(ComponentSystemAirPods *)self serialNumberFromAacpInfo:v45];
      [v4 setObject:v48 forKeyedSubscript:@"serialNumber"];
    }

    v49 = [(ComponentSystemAirPods *)self device];
    v50 = [v49 accessoryInfo];
    v51 = [(ComponentAirPodsBase *)self caseInfoFromAccessoryInfo:v50];

    if (v51)
    {
      [v4 addEntriesFromDictionary:v51];
    }
  }

  v52 = [(ComponentAirPodsBase *)self getCBDevices];
  v53 = [v4 objectForKeyedSubscript:@"systemSerialNumber"];
  v54 = [(ComponentSystemAirPods *)self device];
  v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v54 isGenuineAirPods]);
  [v4 setObject:v55 forKeyedSubscript:@"authPassed"];

  if (v53)
  {
    v56 = [v52 objectForKey:v53];
    v57 = v56;
    if (v56)
    {
      v58 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v56 gapaFlags]);
      [v4 setObject:v58 forKeyedSubscript:@"authErrorCode"];

      v59 = [(ComponentAirPodsBase *)self getBatteryInfoForDevice:v57];
      v60 = v59;
      if (v59 && [v59 count])
      {
        [v4 setObject:v60 forKeyedSubscript:@"batteryInfo"];
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

  v62 = [(ComponentSystemAirPods *)self device];
  v63 = [v62 connected];

  if (v61 && v63)
  {
    v64 = [(ComponentAirPodsBase *)self microphoneCalibrationResultForDevice:v57];
    if (v64)
    {
      [v4 setObject:v64 forKeyedSubscript:@"micCalibration"];
    }
  }

  else
  {
    v64 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [(ComponentSystemAirPods *)self device];
      *buf = 138412290;
      v68 = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Device %@ is not connected, not attempting to read micrphone calibration data", buf, 0xCu);
    }
  }
}

- (id)serialNumberFromAacpInfo:(id)a3
{
  v3 = a3;
  v4 = @"systemSerialNumber";
  v5 = [v3 objectForKeyedSubscript:@"systemSerialNumber"];

  if (!v5)
  {
    v4 = @"leftBudSerialNumber";
    v6 = [v3 objectForKeyedSubscript:@"leftBudSerialNumber"];

    if (!v6)
    {
      v4 = @"rightBudSerialNumber";
    }
  }

  v7 = [v3 objectForKeyedSubscript:v4];

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
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"CFBundleShortVersionString"];
  v6 = stringOrNull(v5);

  return v6;
}

@end