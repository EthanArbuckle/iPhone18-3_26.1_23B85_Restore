@interface HMUser(MediaSetup)
- (uint64_t)_settingForKeyPath:()MediaSetup home:;
@end

@implementation HMUser(MediaSetup)

- (uint64_t)_settingForKeyPath:()MediaSetup home:
{
  v6 = a3;
  v7 = 0;
  if (v6 && a4)
  {
    v8 = [a1 userSettingsForHome:a4];
    v9 = [v8 settings];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 rootGroup];
      v12 = findSettingWithKeyPath(v6, v11);
      v13 = [v12 value];
      v7 = [v13 BOOLValue];
    }

    else
    {
      v14 = _MSLogingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HMUser(MediaSetup) _settingForKeyPath:v8 home:v14];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (void)_settingForKeyPath:()MediaSetup home:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = 0;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch HomeKit settings objects. settingsContainer: %@, settings: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end