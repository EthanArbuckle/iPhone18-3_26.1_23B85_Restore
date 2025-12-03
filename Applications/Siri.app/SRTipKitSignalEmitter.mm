@interface SRTipKitSignalEmitter
+ (void)_checkAndEmitBluetoothInvocationSourcePerVehicle:(id)vehicle forRequestOptions:(id)options btManager:(id)manager;
+ (void)_checkAndEmitCarPlayInvocationSourcePerVehicle:(id)vehicle forRequestOptions:(id)options accessoryManager:(id)manager;
+ (void)_checkAndEmitHSSignalsWithSource:(id)source forRequestOptions:(id)options;
+ (void)checkAndEmitSignalsForRequestOptions:(id)options;
@end

@implementation SRTipKitSignalEmitter

+ (void)checkAndEmitSignalsForRequestOptions:(id)options
{
  optionsCopy = options;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EFF0;
  v7[3] = &unk_100166EA8;
  v8 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  dispatch_async(v5, v7);
}

+ (void)_checkAndEmitHSSignalsWithSource:(id)source forRequestOptions:(id)options
{
  sourceCopy = source;
  optionsCopy = options;
  if ([optionsCopy isForStark])
  {
    if ([optionsCopy requestSource] == 8 || objc_msgSend(optionsCopy, "requestSource") == 45)
    {
      v6 = @"com.apple.siri.hs.on.carplay";
LABEL_5:
      v7 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:v6 bundleID:@"com.apple.siri" context:0];
      [sourceCopy sendEvent:v7];

      goto LABEL_6;
    }

    if ([optionsCopy requestSource] == 10 || objc_msgSend(optionsCopy, "requestSource") == 44)
    {
      v6 = @"com.apple.siri.button.on.carplay";
      goto LABEL_5;
    }
  }

LABEL_6:
}

+ (void)_checkAndEmitCarPlayInvocationSourcePerVehicle:(id)vehicle forRequestOptions:(id)options accessoryManager:(id)manager
{
  vehicleCopy = vehicle;
  optionsCopy = options;
  connectedAccessories = [manager connectedAccessories];
  v10 = objc_alloc_init(NSData);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = connectedAccessories;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 supportsCarPlay])
        {
          v17 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            certSerial = [v16 certSerial];
            *buf = 136315394;
            v35 = "+[SRTipKitSignalEmitter _checkAndEmitCarPlayInvocationSourcePerVehicle:forRequestOptions:accessoryManager:]";
            v36 = 2112;
            v37 = certSerial;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s #tipKitSignalEmitter certSerial %@", buf, 0x16u);
          }

          certSerial2 = [v16 certSerial];

          v10 = certSerial2;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setValue:v10 forKey:@"certSerial"];
  isHeadunitEyesFree = [optionsCopy isHeadunitEyesFree];
  v23 = @"YES";
  if ((isHeadunitEyesFree & 1) == 0)
  {
    if ([optionsCopy isForBluetoothCar])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }
  }

  [v21 setValue:v23 forKey:{@"isBluetoothCar", v30}];
  if ([optionsCopy isForStark])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v21 setValue:v24 forKey:@"isCarPlay"];
  if ([optionsCopy isForStark])
  {
    requestSource = [optionsCopy requestSource];
    if (requestSource > 11)
    {
      switch(requestSource)
      {
        case 45:
          goto LABEL_29;
        case 44:
          v26 = @"com.apple.siri.steering.wheel";
          goto LABEL_36;
        case 12:
LABEL_29:
          v26 = @"com.apple.siri.hs.on.jarvis";
          goto LABEL_36;
      }
    }

    else
    {
      switch(requestSource)
      {
        case 2:
          v26 = @"com.apple.siri.lock.button";
          goto LABEL_36;
        case 8:
          v26 = @"com.apple.siri.hs.on.carplay";
          goto LABEL_36;
        case 10:
          v26 = @"com.apple.siri.button.on.carplay";
LABEL_36:
          v28 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v35 = "+[SRTipKitSignalEmitter _checkAndEmitCarPlayInvocationSourcePerVehicle:forRequestOptions:accessoryManager:]";
            v36 = 2112;
            v37 = v26;
            v38 = 2112;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s #tipKitSignalEmitter activation source: %@ userInfo: %@", buf, 0x20u);
          }

          v29 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:v26 bundleID:@"com.apple.siri" context:0 userInfo:v21];
          [vehicleCopy sendEvent:v29];

          goto LABEL_39;
      }
    }

    v27 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB990(v27, optionsCopy);
    }

    v26 = &stru_10016AE90;
    goto LABEL_36;
  }

LABEL_39:
}

+ (void)_checkAndEmitBluetoothInvocationSourcePerVehicle:(id)vehicle forRequestOptions:(id)options btManager:(id)manager
{
  vehicleCopy = vehicle;
  optionsCopy = options;
  managerCopy = manager;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  connectedDevices = [managerCopy connectedDevices];
  v11 = [connectedDevices countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (([v16 ac_isEyesFree] & 1) != 0 || objc_msgSend(v16, "ac_isBluetoothVehicle"))
        {
          address = [v16 address];

          v13 = address;
        }
      }

      v12 = [connectedDevices countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if ((([optionsCopy isHeadunitEyesFree] & 1) != 0 || objc_msgSend(optionsCopy, "isForBluetoothCar")) && v13)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [v18 setValue:v13 forKey:@"btAddress"];
    [v18 setValue:@"YES" forKey:@"isBluetoothCar"];
    [v18 setValue:@"NO" forKey:@"isCarPlay"];
    requestSource = [optionsCopy requestSource];
    v20 = &stru_10016AE90;
    if (requestSource > 7)
    {
      if (requestSource == 8)
      {
        v20 = @"com.apple.siri.hs.on.bt";
      }

      else
      {
        if (requestSource != 44)
        {
LABEL_24:
          v21 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            sub_1000CBA24(v21, optionsCopy);
          }

          goto LABEL_28;
        }

        v20 = @"com.apple.siri.steering.wheel";
      }
    }

    else
    {
      if (requestSource != 2)
      {
        if (requestSource == 5)
        {
          v20 = @"com.apple.siri.bt.headset";
        }

        goto LABEL_24;
      }

      v20 = @"com.apple.siri.lock.button";
    }

LABEL_28:
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "+[SRTipKitSignalEmitter _checkAndEmitBluetoothInvocationSourcePerVehicle:forRequestOptions:btManager:]";
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #tipKitSignalEmitter bluetooth car activation source: %@ userInfo: %@", buf, 0x20u);
    }

    v23 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:v20 bundleID:@"com.apple.siri" context:0 userInfo:v18];
    [vehicleCopy sendEvent:v23];
  }
}

@end