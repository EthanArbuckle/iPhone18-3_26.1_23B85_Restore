@interface ComponentAccessoryAirPods
- (BOOL)isPresent;
- (void)bluetoothManagerDidBecomeAvailable;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentAccessoryAirPods

- (void)bluetoothManagerDidBecomeAvailable
{
  v3 = [(ComponentAirPodsBase *)self getPairedAppleAudioDevices];
  [(ComponentAccessoryAirPods *)self setDevices:v3];

  v4 = [(ComponentAirPodsBase *)self getCBDevices];
  [(ComponentAccessoryAirPods *)self setCbDevices:v4];
}

- (BOOL)isPresent
{
  v3 = [(ComponentAirPodsBase *)self btManagerAvailableSemaphore];
  v4 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v3, v4);

  v5 = [(ComponentAccessoryAirPods *)self devices];
  LOBYTE(v3) = [v5 count] != 0;

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v40 = a3;
  v43 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(ComponentAccessoryAirPods *)self devices];
  v4 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v42 = *v45;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = [v7 address];
        [v8 setObject:v9 forKeyedSubscript:@"MACAddress"];

        v10 = [v7 name];
        [v8 setObject:v10 forKeyedSubscript:@"name"];

        v11 = [v7 productName];
        [v8 setObject:v11 forKeyedSubscript:@"productName"];

        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 productId]);
        [v8 setObject:v12 forKeyedSubscript:@"prodId"];

        v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 connected]);
        [v8 setObject:v13 forKeyedSubscript:@"isConnected"];

        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isTemporaryPaired]);
        [v8 setObject:v14 forKeyedSubscript:@"isTempPaired"];

        v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 inEarDetectEnabled]);
        [v8 setObject:v15 forKeyedSubscript:@"inEarDetectEnabled"];

        v16 = [(ComponentAirPodsBase *)self inEarStatusForDevice:v7];
        [v8 setObject:v16 forKeyedSubscript:@"inEarStatus"];

        v17 = [(ComponentAirPodsBase *)self budSide:v7];
        [v8 setObject:v17 forKeyedSubscript:@"BudSide"];

        v18 = -[ComponentAirPodsBase generationStringForProductId:](self, "generationStringForProductId:", [v7 productId]);
        [v8 setObject:v18 forKeyedSubscript:@"generation"];

        v19 = -[ComponentAirPodsBase stringForListeningMode:](self, "stringForListeningMode:", [v7 listeningMode]);
        [v8 setObject:v19 forKeyedSubscript:@"listeningMode"];

        v20 = +[HUAccessoryHearingSettings sharedInstance];
        v21 = [v7 address];
        v22 = [v20 activeHearingProtectionAvailableForAddress:v21];

        if ([v7 getAdaptiveVolumeSupport] & 1) != 0 || ((objc_msgSend(v7, "getConversationDetectSupport") | v22))
        {
          v23 = [(ComponentAirPodsBase *)self audioOutputForDevice:v7];
          [v8 setObject:v23 forKeyedSubscript:@"Audio"];
        }

        v24 = [(ComponentAirPodsBase *)self spatialAudioSupportedForDevice:v7];
        v25 = [NSNumber numberWithBool:v24];
        [v8 setObject:v25 forKeyedSubscript:@"spatialAudioSupported"];

        if (v24)
        {
          v26 = [NSNumber numberWithBool:[(ComponentAirPodsBase *)self spatialAudioEnabled]];
          [v8 setObject:v26 forKeyedSubscript:@"spatialAudioEnabled"];
        }

        v27 = [(ComponentAirPodsBase *)self getAutoEQStateForDevice:v7];
        [v8 addEntriesFromDictionary:v27];
        if ([v7 isTemporaryPaired])
        {
          v28 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not surfacing AACPInfo dictionary for this device because it is temp paired", buf, 2u);
          }
        }

        else
        {
          v29 = [v7 accessoryInfo];
          v28 = [(ComponentAirPodsBase *)self aacpInfoFromAccessoryInfo:v29];

          if (v28)
          {
            [v8 addEntriesFromDictionary:v28];
          }

          v30 = [v7 accessoryInfo];
          v31 = [(ComponentAirPodsBase *)self caseInfoFromAccessoryInfo:v30];

          if (v31)
          {
            [v8 addEntriesFromDictionary:v31];
          }
        }

        v32 = [v8 objectForKeyedSubscript:@"systemSerialNumber"];
        v33 = [(ComponentAccessoryAirPods *)self cbDevices];
        v34 = [v33 objectForKeyedSubscript:v32];

        v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isGenuineAirPods]);
        [v8 setObject:v35 forKeyedSubscript:@"authPassed"];

        if (v32 && v34)
        {
          v36 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v34 gapaFlags]);
          [v8 setObject:v36 forKeyedSubscript:@"authErrorCode"];

          v37 = [(ComponentAirPodsBase *)self getBatteryInfoForDevice:v34];
          v38 = v37;
          if (v37 && [v37 count])
          {
            [v8 setObject:v38 forKeyedSubscript:@"batteryInfo"];
          }
        }

        if ([v7 connected] && v34)
        {
          v39 = [(ComponentAirPodsBase *)self microphoneCalibrationResultForDevice:v34];
          if (v39)
          {
            [v8 setObject:v39 forKeyedSubscript:@"micCalibration"];
          }
        }

        else
        {
          v39 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v7;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Device %@ is not connected, not attempting to read micrphone calibration data", buf, 0xCu);
          }
        }

        [v43 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v5);
  }

  [v40 setObject:v43 forKeyedSubscript:@"AirPods"];
}

@end