@interface HMAccessory(Announce)
- (id)an_announceSettingFromAccessorySettings;
@end

@implementation HMAccessory(Announce)

- (id)an_announceSettingFromAccessorySettings
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 settings];
  v3 = [v2 rootGroup];
  v4 = [v3 groups];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_30];

  if (v5)
  {
    v6 = [v5 settings];
    v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_11];

    if (v7)
    {
      v8 = [v7 value];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (ANLogHandleAccessory_Announce_once != -1)
    {
      [HMAccessory(Announce) an_announceSettingFromAccessorySettings];
    }

    v9 = ANLogHandleAccessory_Announce_logger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = &stru_2851BDB18;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "%@Failed to find Announce Setting Group in Accessory Settings %@", &v12, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end