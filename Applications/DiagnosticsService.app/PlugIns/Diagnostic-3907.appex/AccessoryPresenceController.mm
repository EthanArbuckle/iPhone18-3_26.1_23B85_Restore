@interface AccessoryPresenceController
- (BOOL)isDeviceDocked;
- (BOOL)isHeadsetPluggedIn;
- (void)start;
@end

@implementation AccessoryPresenceController

- (void)start
{
  v26[0] = @"USB";
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001404;
  v21[3] = &unk_100004148;
  v21[4] = self;
  v3 = objc_retainBlock(v21);
  v27[0] = v3;
  v26[1] = @"MiniJack";
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000140C;
  v20[3] = &unk_100004148;
  v20[4] = self;
  v4 = objc_retainBlock(v20);
  v27[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    inputs = [(AccessoryPresenceController *)self inputs];
    identifier = [inputs identifier];
    inputs2 = [(AccessoryPresenceController *)self inputs];
    timeout = [inputs2 timeout];
    *buf = 138412546;
    v23 = identifier;
    v24 = 2048;
    v25 = timeout;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Check accessory %@ with time out of %lu seconds", buf, 0x16u);
  }

  if (([(AccessoryPresenceController *)self isCancelled]& 1) != 0)
  {
    v11 = &off_100004280;
  }

  else
  {
    inputs3 = [(AccessoryPresenceController *)self inputs];
    identifier2 = [inputs3 identifier];
    v14 = [v5 objectForKeyedSubscript:identifier2];

    if (v14)
    {
      v15 = 0;
      v11 = &off_100004280;
      do
      {
        if (([(AccessoryPresenceController *)self isCancelled]& 1) != 0)
        {
          break;
        }

        if (v14[2](v14))
        {
          v11 = &off_100004298;
        }

        if ([v11 isEqualToNumber:&off_100004280])
        {
          [NSThread sleepForTimeInterval:1.0];
          ++v15;
        }

        if (![v11 isEqualToNumber:&off_100004280])
        {
          break;
        }

        inputs4 = [(AccessoryPresenceController *)self inputs];
        timeout2 = [inputs4 timeout];
      }

      while (v15 < timeout2);
    }

    else
    {
      v18 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10000181C(self, v18);
      }

      v11 = &off_1000042B0;
    }
  }

  if (([(AccessoryPresenceController *)self isCancelled]& 1) == 0)
  {
    result = [(AccessoryPresenceController *)self result];
    [result setStatusCode:v11];
  }

  [(AccessoryPresenceController *)self setFinished:1];
}

- (BOOL)isHeadsetPluggedIn
{
  v2 = +[AVAudioSession sharedInstance];
  currentRoute = [v2 currentRoute];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = currentRoute;
  outputs = [currentRoute outputs];
  v5 = [outputs countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(outputs);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_1000018CC(v20, v10, &v21, v11);
        }

        portType = [v10 portType];
        if ([portType isEqualToString:AVAudioSessionPortHeadphones])
        {
          v7 = 1;
        }

        else
        {
          portType2 = [v10 portType];
          v7 |= [portType2 isEqualToString:AVAudioSessionPortLineOut];
        }
      }

      v6 = [outputs countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (BOOL)isDeviceDocked
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v3 connectedAccessories];

  obj = connectedAccessories;
  v5 = [connectedAccessories countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        inputs = [(AccessoryPresenceController *)self inputs];
        modelNumbers = [inputs modelNumbers];
        modelNumber = [v10 modelNumber];
        v14 = [modelNumbers containsObject:modelNumber];

        if (v14)
        {
          v25 = @"dockModel";
          modelNumber2 = [v10 modelNumber];
          v16 = stringOrNull(modelNumber2);
          v26 = v16;
          v7 = 1;
          v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          result = [(AccessoryPresenceController *)self result];
          [result setData:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end