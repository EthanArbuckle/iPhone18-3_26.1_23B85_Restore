@interface SRTipKitSignalEmitter
+ (void)_checkAndEmitBluetoothInvocationSourcePerVehicle:(id)a3 forRequestOptions:(id)a4 btManager:(id)a5;
+ (void)_checkAndEmitCarPlayInvocationSourcePerVehicle:(id)a3 forRequestOptions:(id)a4 accessoryManager:(id)a5;
+ (void)_checkAndEmitHSSignalsWithSource:(id)a3 forRequestOptions:(id)a4;
+ (void)checkAndEmitSignalsForRequestOptions:(id)a3;
@end

@implementation SRTipKitSignalEmitter

+ (void)checkAndEmitSignalsForRequestOptions:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EFF0;
  v7[3] = &unk_100166EA8;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (void)_checkAndEmitHSSignalsWithSource:(id)a3 forRequestOptions:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v5 isForStark])
  {
    if ([v5 requestSource] == 8 || objc_msgSend(v5, "requestSource") == 45)
    {
      v6 = @"com.apple.siri.hs.on.carplay";
LABEL_5:
      v7 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:v6 bundleID:@"com.apple.siri" context:0];
      [v8 sendEvent:v7];

      goto LABEL_6;
    }

    if ([v5 requestSource] == 10 || objc_msgSend(v5, "requestSource") == 44)
    {
      v6 = @"com.apple.siri.button.on.carplay";
      goto LABEL_5;
    }
  }

LABEL_6:
}

+ (void)_checkAndEmitCarPlayInvocationSourcePerVehicle:(id)a3 forRequestOptions:(id)a4 accessoryManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 connectedAccessories];
  v10 = objc_alloc_init(NSData);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v9;
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
            v19 = [v16 certSerial];
            *buf = 136315394;
            v35 = "+[SRTipKitSignalEmitter _checkAndEmitCarPlayInvocationSourcePerVehicle:forRequestOptions:accessoryManager:]";
            v36 = 2112;
            v37 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s #tipKitSignalEmitter certSerial %@", buf, 0x16u);
          }

          v20 = [v16 certSerial];

          v10 = v20;
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
  v22 = [v8 isHeadunitEyesFree];
  v23 = @"YES";
  if ((v22 & 1) == 0)
  {
    if ([v8 isForBluetoothCar])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }
  }

  [v21 setValue:v23 forKey:{@"isBluetoothCar", v30}];
  if ([v8 isForStark])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v21 setValue:v24 forKey:@"isCarPlay"];
  if ([v8 isForStark])
  {
    v25 = [v8 requestSource];
    if (v25 > 11)
    {
      switch(v25)
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
      switch(v25)
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
          [v7 sendEvent:v29];

          goto LABEL_39;
      }
    }

    v27 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB990(v27, v8);
    }

    v26 = &stru_10016AE90;
    goto LABEL_36;
  }

LABEL_39:
}

+ (void)_checkAndEmitBluetoothInvocationSourcePerVehicle:(id)a3 forRequestOptions:(id)a4 btManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 connectedDevices];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
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
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (([v16 ac_isEyesFree] & 1) != 0 || objc_msgSend(v16, "ac_isBluetoothVehicle"))
        {
          v17 = [v16 address];

          v13 = v17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if ((([v8 isHeadunitEyesFree] & 1) != 0 || objc_msgSend(v8, "isForBluetoothCar")) && v13)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [v18 setValue:v13 forKey:@"btAddress"];
    [v18 setValue:@"YES" forKey:@"isBluetoothCar"];
    [v18 setValue:@"NO" forKey:@"isCarPlay"];
    v19 = [v8 requestSource];
    v20 = &stru_10016AE90;
    if (v19 > 7)
    {
      if (v19 == 8)
      {
        v20 = @"com.apple.siri.hs.on.bt";
      }

      else
      {
        if (v19 != 44)
        {
LABEL_24:
          v21 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            sub_1000CBA24(v21, v8);
          }

          goto LABEL_28;
        }

        v20 = @"com.apple.siri.steering.wheel";
      }
    }

    else
    {
      if (v19 != 2)
      {
        if (v19 == 5)
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
    [v7 sendEvent:v23];
  }
}

@end