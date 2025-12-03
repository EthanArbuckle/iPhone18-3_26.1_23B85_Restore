@interface _GAXSettingsFastStorage
- (BOOL)isActiveAppSelfLocked;
- (BOOL)selfLockUnmanaged;
- (NSString)activeAppID;
- (NSString)savedASAMAppIdForLostMode;
- (_GAXSettingsFastStorage)init;
- (id)_loadSettings;
- (void)_updateSetting:(id)setting withKey:(id)key;
@end

@implementation _GAXSettingsFastStorage

- (_GAXSettingsFastStorage)init
{
  v8.receiver = self;
  v8.super_class = _GAXSettingsFastStorage;
  v2 = [(_GAXSettingsFastStorage *)&v8 init];
  v3 = v2;
  if (v2)
  {
    _loadSettings = [(_GAXSettingsFastStorage *)v2 _loadSettings];
    [(_GAXSettingsFastStorage *)v3 setSettingsStorage:_loadSettings];

    settingsStorage = [(_GAXSettingsFastStorage *)v3 settingsStorage];

    if (!settingsStorage)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(_GAXSettingsFastStorage *)v3 setSettingsStorage:v6];
    }
  }

  return v3;
}

- (NSString)activeAppID
{
  settingsStorage = [(_GAXSettingsFastStorage *)self settingsStorage];
  v3 = [settingsStorage objectForKey:@"ActiveAppID"];

  return v3;
}

- (NSString)savedASAMAppIdForLostMode
{
  settingsStorage = [(_GAXSettingsFastStorage *)self settingsStorage];
  v3 = [settingsStorage objectForKey:@"GAXSettingsKeySavedASAMAppIdForLostMode"];

  return v3;
}

- (BOOL)isActiveAppSelfLocked
{
  settingsStorage = [(_GAXSettingsFastStorage *)self settingsStorage];
  v3 = [settingsStorage objectForKey:@"ActiveAppSelfLocked"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)selfLockUnmanaged
{
  settingsStorage = [(_GAXSettingsFastStorage *)self settingsStorage];
  v3 = [settingsStorage objectForKey:@"SelfLockUnmanaged"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_loadSettings
{
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:@"/var/mobile/Library/Accessibility/GuidedAccessState"])
  {
    v12 = 0;
    v3 = [NSData dataWithContentsOfFile:@"/var/mobile/Library/Accessibility/GuidedAccessState" options:0 error:&v12];
    v4 = v12;
    if (v3)
    {
      v11 = v4;
      v5 = [NSJSONSerialization JSONObjectWithData:v3 options:1 error:&v11];
      v6 = v11;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [v5 mutableCopy];

          v5 = v7;
        }

        v5 = v5;
        v8 = v5;
      }

      else
      {
        v9 = GAXLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_2A46C();
        }

        v8 = 0;
      }
    }

    else
    {
      v5 = GAXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_2A4D4();
      }

      v8 = 0;
      v6 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateSetting:(id)setting withKey:(id)key
{
  settingCopy = setting;
  keyCopy = key;
  settingsStorage = [(_GAXSettingsFastStorage *)self settingsStorage];
  v9 = settingsStorage;
  if (settingCopy)
  {
    [settingsStorage setObject:settingCopy forKey:keyCopy];
  }

  else
  {
    [settingsStorage removeObjectForKey:keyCopy];
  }

  settingsStorage2 = [(_GAXSettingsFastStorage *)self settingsStorage];
  v11 = [NSJSONSerialization isValidJSONObject:settingsStorage2];

  if (v11)
  {
    settingsStorage3 = [(_GAXSettingsFastStorage *)self settingsStorage];
    v28 = 0;
    v13 = [NSJSONSerialization dataWithJSONObject:settingsStorage3 options:1 error:&v28];
    v14 = v28;

    if (!v13)
    {
      v15 = GAXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_2A810();
      }

      goto LABEL_35;
    }

    v15 = +[NSFileManager defaultManager];
    if (([v15 fileExistsAtPath:@"/var/mobile/Library/Accessibility/GuidedAccessState"]& 1) != 0 || ([v15 fileExistsAtPath:@"/var/mobile/Library/Accessibility"]& 1) != 0)
    {
      v16 = v14;
    }

    else
    {
      v20 = [NSDictionary dictionaryWithObjectsAndKeys:NSFileProtectionNone, NSFileProtectionKey, 0];
      v27 = v14;
      [v15 createDirectoryAtPath:@"/var/mobile/Library/Accessibility" withIntermediateDirectories:1 attributes:v20 error:&v27];
      v16 = v27;

      if (v16)
      {
        v19 = GAXLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_2A5C0();
        }

        goto LABEL_33;
      }
    }

    v17 = open([@"/var/mobile/Library/Accessibility/GuidedAccessState" fileSystemRepresentation], 1793, 384);
    if (v17 < 0)
    {
      v20 = GAXLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_2A790();
      }

      goto LABEL_34;
    }

    v18 = v17;
    v19 = [NSDictionary dictionaryWithObjectsAndKeys:NSFileProtectionNone, NSFileProtectionKey, 0];
    v26 = 0;
    [v15 setAttributes:v19 ofItemAtPath:@"/var/mobile/Library/Accessibility/GuidedAccessState" error:&v26];
    v20 = v26;
    if (v20)
    {
      v21 = GAXLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_2A628();
      }
    }

    write(v18, [v13 bytes], objc_msgSend(v13, "length"));
    fcntl(v18, 51, 0);
    close(v18);
    v22 = opendir([@"/var/mobile/Library/Accessibility" fileSystemRepresentation]);
    v23 = v22;
    if (!v22 || dirfd(v22) == -1)
    {
      v25 = GAXLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_2A710();
      }

      if (!v23)
      {
        goto LABEL_33;
      }
    }

    else if (fcntl(v18, 51, 0) == -1)
    {
      v24 = GAXLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_2A690();
      }
    }

    closedir(v23);
LABEL_33:

LABEL_34:
    v14 = v16;
LABEL_35:

    goto LABEL_36;
  }

  v14 = GAXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_2A53C(self);
  }

LABEL_36:
}

@end