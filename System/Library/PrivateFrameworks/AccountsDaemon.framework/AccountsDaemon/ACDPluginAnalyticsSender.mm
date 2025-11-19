@interface ACDPluginAnalyticsSender
+ (BOOL)accountsTTREnabled;
+ (double)_timeSinceLastTTROffered;
+ (void)_selected_PostTapToRadar:(id)a3 description:(id)a4;
+ (void)openTapToRadarWithAlertTitle:(id)a3 alertDescription:(id)a4 TTRTitle:(id)a5 TTRDescription:(id)a6;
@end

@implementation ACDPluginAnalyticsSender

+ (double)_timeSinceLastTTROffered
{
  v2 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.accounts"];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.accounts.ttr.lastOffered"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v7 persistentDomainForName:@"com.apple.accounts"];
    v9 = [v8 objectForKeyedSubscript:@"com.apple.accounts.ttr.lastOffered"];

    v2 = v9;
  }

  [v2 timeIntervalSinceNow];
  v11 = -v10;

  return v11;
}

+ (BOOL)accountsTTREnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.accounts"];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.accounts.ttr.enabled"];

  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.accounts"];
  v7 = [v6 objectForKeyedSubscript:@"com.apple.accounts.ttr.enabled"];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (void)openTapToRadarWithAlertTitle:(id)a3 alertDescription:(id)a4 TTRTitle:(id)a5 TTRDescription:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (ACIsInternal())
  {
    if ([a1 accountsTTREnabled])
    {
      [a1 _timeSinceLastTTROffered];
      if (v14 >= 604800.0)
      {
        v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.accounts"];
        v17 = [MEMORY[0x277CBEAA8] date];
        [v16 setObject:v17 forKey:@"com.apple.accounts.ttr.lastOffered"];

        v18 = _ACLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          +[ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:alertDescription:TTRTitle:TTRDescription:];
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __98__ACDPluginAnalyticsSender_openTapToRadarWithAlertTitle_alertDescription_TTRTitle_TTRDescription___block_invoke;
        v19[3] = &unk_27848CCB0;
        v22 = a1;
        v20 = v12;
        v21 = v13;
        [ACDUserNotification showUserNotificationWithTitle:v10 message:v11 cancelButtonTitle:@"Cancel" otherButtonTitle:@"Open Tap-To-Radar" level:2 withCompletionBlock:v19];

        v15 = v20;
      }

      else
      {
        v15 = _ACLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:alertDescription:TTRTitle:TTRDescription:];
        }
      }
    }

    else
    {
      v15 = _ACLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:alertDescription:TTRTitle:TTRDescription:];
      }
    }
  }

  else
  {
    v15 = _ACLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:alertDescription:TTRTitle:TTRDescription:];
    }
  }
}

void __98__ACDPluginAnalyticsSender_openTapToRadarWithAlertTitle_alertDescription_TTRTitle_TTRDescription___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _ACLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v6)
    {
      __98__ACDPluginAnalyticsSender_openTapToRadarWithAlertTitle_alertDescription_TTRTitle_TTRDescription___block_invoke_cold_1();
    }
  }

  else
  {
    if (v6)
    {
      __98__ACDPluginAnalyticsSender_openTapToRadarWithAlertTitle_alertDescription_TTRTitle_TTRDescription___block_invoke_cold_2();
    }

    [*(a1 + 48) _selected_PostTapToRadar:*(a1 + 32) description:*(a1 + 40)];
  }
}

+ (void)_selected_PostTapToRadar:(id)a3 description:(id)a4
{
  v21[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ACIsInternal())
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v7 setScheme:@"tap-to-radar"];
    [v7 setHost:@"new"];
    v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"BundleID" value:@"com.apple.accounts"];
    v20 = v5;
    v21[0] = v8;
    v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:v5];
    v21[1] = v9;
    v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:v6];
    v21[2] = v10;
    v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
    v21[3] = v11;
    v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Accounts"];
    v21[4] = v12;
    v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"iOS"];
    v21[5] = v13;
    v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"990749"];
    v21[6] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:7];
    [v7 setQueryItems:v15];

    v16 = [v7 URL];

    if (v16)
    {
      v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v18 = [v7 URL];
      [v17 openURL:v18 configuration:0 completionHandler:&__block_literal_global_7];
    }

    v5 = v20;
  }

  else
  {
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ACDPluginAnalyticsSender _selected_PostTapToRadar:description:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end