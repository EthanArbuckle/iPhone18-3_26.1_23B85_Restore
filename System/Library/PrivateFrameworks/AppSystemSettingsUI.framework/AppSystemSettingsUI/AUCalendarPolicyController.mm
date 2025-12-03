@interface AUCalendarPolicyController
+ (id)loadPrivacySettingsBundle;
+ (unint64_t)authorizationRightforAccessLevel:(int)level;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)calendarStatus:(id)status;
- (void)setCalendarStatus:(id)status specifier:(id)specifier;
@end

@implementation AUCalendarPolicyController

+ (id)loadPrivacySettingsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v4 = v3 = @"/System/Library/PrivateFrameworks/Settings/PrivacySettingsUI.framework";
  v5 = [v2 bundleWithPath:v4];

  [v5 load];

  return v5;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  PSCalendarAuthorizationStates(&v18, &v17, &v16);
  v8 = v18;
  v9 = v17;
  v10 = v16;
  if (([v8 containsObject:dCopy] & 1) != 0 || (objc_msgSend(v9, "containsObject:", dCopy) & 1) != 0 || objc_msgSend(v10, "containsObject:", dCopy))
  {
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:nameCopy target:self set:sel_setCalendarStatus_specifier_ get:sel_calendarStatus_ detail:objc_opt_class() cell:2 edit:0];
    v12 = MEMORY[0x277CBEC38];
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
    [v11 setProperty:dCopy forKey:@"BUNDLE_ID"];
    [v11 setProperty:dCopy forKey:@"APP_NAME"];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v11 setProperty:dCopy forKey:*MEMORY[0x277D3FFB8]];
    [v11 setObject:@"com.apple.mobilecal" forKeyedSubscript:*MEMORY[0x277D40008]];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (appSpecifierWithName_bundleID__onceToken != -1)
    {
      [AUCalendarPolicyController appSpecifierWithName:bundleID:];
    }

    [array addObject:appSpecifierWithName_bundleID__noAccessStr];
    [array2 addObject:&unk_282D7F750];
    [array addObject:appSpecifierWithName_bundleID__writeAccessStr];
    [array2 addObject:&unk_282D7F720];
    [array addObject:appSpecifierWithName_bundleID__fullAccessStr];
    [array2 addObject:&unk_282D7F738];
    [v11 setValues:array2 titles:array];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __60__AUCalendarPolicyController_appSpecifierWithName_bundleID___block_invoke()
{
  v6 = +[AUCalendarPolicyController loadPrivacySettingsBundle];
  v0 = [v6 localizedStringForKey:@"CALENDARS_FULL_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v1 = appSpecifierWithName_bundleID__fullAccessStr;
  appSpecifierWithName_bundleID__fullAccessStr = v0;

  v2 = [v6 localizedStringForKey:@"CALENDARS_WRITE_ONLY_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v3 = appSpecifierWithName_bundleID__writeAccessStr;
  appSpecifierWithName_bundleID__writeAccessStr = v2;

  v4 = [v6 localizedStringForKey:@"CALENDARS_NO_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v5 = appSpecifierWithName_bundleID__noAccessStr;
  appSpecifierWithName_bundleID__noAccessStr = v4;
}

- (id)calendarStatus:(id)status
{
  v3 = [status propertyForKey:@"BUNDLE_ID"];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  PSCalendarAuthorizationStates(&v12, &v11, &v10);
  v4 = v12;
  v5 = v11;
  v6 = v10;
  if ([v4 containsObject:v3])
  {
    v7 = &unk_282D7F738;
  }

  else if ([v5 containsObject:v3])
  {
    v7 = &unk_282D7F720;
  }

  else
  {
    if (([v6 containsObject:v3] & 1) == 0)
    {
      v8 = _AULoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AUCalendarPolicyController *)v3 calendarStatus:v8];
      }
    }

    v7 = &unk_282D7F750;
  }

  return v7;
}

- (void)setCalendarStatus:(id)status specifier:(id)specifier
{
  v18 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v6 = [specifier propertyForKey:@"BUNDLE_ID"];
  if ([statusCopy intValue] == 2)
  {
    v7 = _AULoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_21BAF4000, v7, OS_LOG_TYPE_DEFAULT, "Requesting to set calendar auth for app %@ to full", &v16, 0xCu);
    }

    v8 = v6;
    v9 = 2;
    v10 = 1;
  }

  else
  {
    if ([statusCopy intValue] == 1)
    {
      v11 = _AULoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to write-only", &v16, 0xCu);
      }

      v8 = v6;
      v9 = 1;
    }

    else
    {
      intValue = [statusCopy intValue];
      v13 = _AULoggingFacility();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (intValue)
      {
        if (v14)
        {
          v16 = 138412290;
          v17 = statusCopy;
          _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected value set for calendar tcc access: %@", &v16, 0xCu);
        }

        v8 = v6;
        v9 = 3;
      }

      else
      {
        if (v14)
        {
          v16 = 138412290;
          v17 = v6;
          _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to denied", &v16, 0xCu);
        }

        v8 = v6;
        v9 = 0;
      }
    }

    v10 = 0;
  }

  [AUCalendarPolicyController setCalendarAccessForApp:v8 toValue:v9 shouldPrompt:v10];

  v15 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)authorizationRightforAccessLevel:(int)level
{
  if ((level - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21BB24EA0[level - 1];
  }
}

uint64_t __75__AUCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke()
{
  setCalendarAccessForApp_toValue_shouldPrompt__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __75__AUCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke_80(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = @"PSCalendarPrivacyUpgradePromptAppIdentifierKey";
  v8[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)calendarStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21BAF4000, a2, OS_LOG_TYPE_ERROR, "unknown state for %@, treating as denied", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end