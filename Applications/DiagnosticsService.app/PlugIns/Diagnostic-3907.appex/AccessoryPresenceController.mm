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
    v7 = [(AccessoryPresenceController *)self inputs];
    v8 = [v7 identifier];
    v9 = [(AccessoryPresenceController *)self inputs];
    v10 = [v9 timeout];
    *buf = 138412546;
    v23 = v8;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Check accessory %@ with time out of %lu seconds", buf, 0x16u);
  }

  if (([(AccessoryPresenceController *)self isCancelled]& 1) != 0)
  {
    v11 = &off_100004280;
  }

  else
  {
    v12 = [(AccessoryPresenceController *)self inputs];
    v13 = [v12 identifier];
    v14 = [v5 objectForKeyedSubscript:v13];

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

        v16 = [(AccessoryPresenceController *)self inputs];
        v17 = [v16 timeout];
      }

      while (v15 < v17);
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
    v19 = [(AccessoryPresenceController *)self result];
    [v19 setStatusCode:v11];
  }

  [(AccessoryPresenceController *)self setFinished:1];
}

- (BOOL)isHeadsetPluggedIn
{
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 currentRoute];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = v3;
  v4 = [v3 outputs];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_1000018CC(v20, v10, &v21, v11);
        }

        v12 = [v10 portType];
        if ([v12 isEqualToString:AVAudioSessionPortHeadphones])
        {
          v7 = 1;
        }

        else
        {
          v13 = [v10 portType];
          v7 |= [v13 isEqualToString:AVAudioSessionPortLineOut];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
  v4 = [v3 connectedAccessories];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
        v11 = [(AccessoryPresenceController *)self inputs];
        v12 = [v11 modelNumbers];
        v13 = [v10 modelNumber];
        v14 = [v12 containsObject:v13];

        if (v14)
        {
          v25 = @"dockModel";
          v15 = [v10 modelNumber];
          v16 = stringOrNull(v15);
          v26 = v16;
          v7 = 1;
          v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v18 = [(AccessoryPresenceController *)self result];
          [v18 setData:v17];
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