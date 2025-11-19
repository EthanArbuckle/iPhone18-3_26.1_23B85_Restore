@interface HMAccessorySettings(MediaSetup)
- (id)_getMusicGroup;
- (uint64_t)_settingForKeyPath:()MediaSetup;
@end

@implementation HMAccessorySettings(MediaSetup)

- (uint64_t)_settingForKeyPath:()MediaSetup
{
  v4 = a3;
  v5 = [a1 _getMusicGroup];
  if (v5)
  {
    v6 = findSettingWithKeyPath(v4, v5);
    v7 = [v6 value];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v9 = _MSLogingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HMAccessorySettings(MediaSetup) _settingForKeyPath:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_getMusicGroup
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [a1 rootGroup];
  v2 = [v1 groups];

  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 keyPath];
        v9 = [v8 isEqualToString:@"root.music"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end