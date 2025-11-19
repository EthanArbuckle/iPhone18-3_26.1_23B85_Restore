@interface KeyStoreNotificationHandler
- (KeyStoreNotificationHandler)init;
- (int)buddyLaunchType:(id)a3;
- (int)handleKeystoreNotification:(id)a3;
@end

@implementation KeyStoreNotificationHandler

- (KeyStoreNotificationHandler)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN AGENT - init", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = KeyStoreNotificationHandler;
  return [(KeyStoreNotificationHandler *)&v4 init];
}

- (int)handleKeystoreNotification:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = +[CloudSettingsManager sharedCloudSettingsManager];
    v6 = [(KeyStoreNotificationHandler *)self buddyLaunchType:v4];
    if (!v6)
    {
      v11 = v4;
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        if ([v11 hasPrefix:@"com.apple.kvs.store-did-change."])
        {
          v13 = [v12 stringByReplacingOccurrencesOfString:@"com.apple.kvs.store-did-change." withString:&stru_100004168];
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = [v5 isServiceKnownForStore:v13] ^ 1;
      v15 = [v5 isEnabledForStore:v13] ^ 1;
      if (v14 & 1) != 0 || (v15)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v18 = v12;
          v19 = 1024;
          v20 = v14;
          v21 = 1024;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ERROR: notification name: %@ is not recognized: %d, or is disabled: %d", buf, 0x18u);
        }
      }

      else
      {
        [v5 applyCloudSettingsToDevice:0 forStore:v13];
      }

      goto LABEL_26;
    }

    v7 = v6;
    if (v6 == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync agent launched for minibuddy - update install", buf, 2u);
      }

      v8 = 0;
    }

    else
    {
      if (v6 != 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v18 = [v4 UTF8String];
          v19 = 1024;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ERROR: notification: %s, unknown buddy launch type: %d", buf, 0x12u);
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync agent launched for BUDDY - new machine / clean install", buf, 2u);
      }

      v8 = 1;
    }

    v9 = [NSNumber numberWithBool:v8];
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:v9, @"newDevice", 0];
    [v5 performFirstTimeSetup:v10];

LABEL_26:
    goto LABEL_27;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sync agent launced, but feature is disabled, do nothing", buf, 2u);
  }

LABEL_27:

  return 0;
}

- (int)buddyLaunchType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.fakebuddy.launchnew"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"com.apple.fakebuddy.launchupdate"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end