@interface AAUIFeatureFlags
+ (BOOL)isAccountDataclassListRedesignEnabled;
+ (BOOL)isCallExperiencesRedesignEnabled;
+ (BOOL)isConvertToMAIDEnabled;
+ (BOOL)isHighlightAAUICloseButtonInRUIFlowsEnabled;
+ (BOOL)isLCInviteAcceptanceEnabled;
+ (BOOL)isLCMessageExtensionEnabled;
+ (BOOL)isNaturalUIEnabled;
+ (BOOL)isNewSignInProgressEnabled;
+ (BOOL)isRCUpsellEnabled;
+ (BOOL)isShowDataclassDetailFromAppsEnabled;
+ (BOOL)isSignOutRedesignEnabled;
+ (BOOL)isSolariumEnabled;
+ (BOOL)isTobleroneEnabled;
+ (BOOL)isU13InferPromptEnabled;
+ (BOOL)isUpdatedRCFlowEnabled;
@end

@implementation AAUIFeatureFlags

+ (BOOL)isTobleroneEnabled
{
  v2 = [MEMORY[0x1E699C0A8] shared];
  v3 = [v2 stateForFeature:@"Toblerone" domain:@"AppleAccountUI"];

  if (v3)
  {
    v4 = [v3 value] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isNewSignInProgressEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isNewSignInProgressEnabled];
  }

  return v2;
}

+ (BOOL)isLCInviteAcceptanceEnabled
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [v2 configurationAtKey:@"inheritanceCfgs"];

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "LCInvite: inheritanceCfgs from urlbag: %@", &v11, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"inviteAcceptance"];
  v6 = [MEMORY[0x1E698B950] isLCInviteAcceptanceEnabled];
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    LODWORD(v12) = v6;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "LCInvite: isEnabled in Defaults: %{BOOL}d", &v11, 8u);
  }

  if (v6)
  {
    LOBYTE(v8) = 1;
  }

  else if (v5)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "LCInvite: Returning LCInviteAcceptance from urlbag: %@", &v11, 0xCu);
    }

    LOBYTE(v8) = [v5 BOOLValue];
  }

  else
  {
    LODWORD(v8) = _os_feature_enabled_impl();
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v8;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "LCInvite: No IdMS feature flag found. is OS FeatureFlag Enabled %d", &v11, 8u);
    }
  }

  return v8;
}

+ (BOOL)isConvertToMAIDEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isConvertToMAIDEnabled];
  }

  return v2;
}

+ (BOOL)isAccountDataclassListRedesignEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isAccountDataclassListRedesignEnabled];
  }

  return v2;
}

+ (BOOL)isShowDataclassDetailFromAppsEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isShowDataclassDetailFromAppsEnabled];
  }

  return v2;
}

+ (BOOL)isRCUpsellEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "RC Upsell: No RCUpsellMiniBuddy flag found. is OS FeatureFlag Enabled %d", v5, 8u);
  }

  return v2;
}

+ (BOOL)isUpdatedRCFlowEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "RC Upsell: No UpdatedRCFlow flag found. is OS FeatureFlag Enabled %d", v5, 8u);
  }

  return v2;
}

+ (BOOL)isSignOutRedesignEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isSignOutRedesignEnabled];
  }

  return v2;
}

+ (BOOL)isU13InferPromptEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isU13InferPromptEnabled];
  }

  return v2;
}

+ (BOOL)isCallExperiencesRedesignEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isCallExperiencesRedesignEnabled];
  }

  return v2;
}

+ (BOOL)isSolariumEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isSolariumEnabled];
  }

  return v2;
}

+ (BOOL)isNaturalUIEnabled
{
  v3 = _os_feature_enabled_impl();
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[AAUIFeatureFlags isNaturalUIEnabled];
  }

  if (v3)
  {
    return [a1 isSolariumEnabled];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isLCMessageExtensionEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "LC Message Extension: No LCMessageExtension flag found. is OS FeatureFlag Enabled %d", v5, 8u);
  }

  return v2;
}

+ (BOOL)isHighlightAAUICloseButtonInRUIFlowsEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _os_feature_enabled_impl();
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AppleAccountUI/isHighlightAAUICloseButtonInRUIFlowsEnabled %d", v5, 8u);
  }

  return v2;
}

@end