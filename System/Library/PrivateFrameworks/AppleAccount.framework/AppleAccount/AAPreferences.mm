@interface AAPreferences
+ (BOOL)disableADPStateHealing;
+ (BOOL)isCustomHealthCheckIntervalEnabled;
+ (BOOL)isCustomMaintenanceIntervalEnabled;
+ (BOOL)isExperimentalModeEnabled;
+ (BOOL)isHealthCheckTTREnabled;
+ (BOOL)isLCInviteAcceptanceEnabled;
+ (BOOL)isMomentsDataclassEnabled;
+ (BOOL)isMultipleFullAccountsEnabled;
+ (BOOL)isRunningInStoreDemoMode;
+ (BOOL)isSimulateUnhealthyCustodianEnabled;
+ (BOOL)shouldSkipIdMSFinalizeCustodian;
+ (BOOL)shouldSkipIdMSKeyUpdate;
+ (BOOL)shouldSkipRecoveryInfoRecordStorage;
+ (BOOL)simulate2FAFA;
+ (id)getCustodianInfo;
+ (void)isMultipleFullAccountsEnabled;
+ (void)setCustodianInfo:(id)a3;
+ (void)setCustomHealthCheckIntervalMinutes:(int64_t)a3;
+ (void)setCustomHealthCheckVersion:(int64_t)a3;
+ (void)setCustomHealthFailureReachabilityIntervalMinutes:(int64_t)a3;
+ (void)setCustomMaintenanceIntervalMinutes:(int64_t)a3;
+ (void)setHealthCheckTTREnabled:(BOOL)a3;
+ (void)setShouldUseUnifiedLoginEndpoint:(BOOL)a3;
@end

@implementation AAPreferences

+ (BOOL)isMultipleFullAccountsEnabled
{
  if ([MEMORY[0x1E6985E20] isInternalBuild])
  {
    v2 = CFPreferencesGetAppBooleanValue(@"AAMultipleFullAccounts", @"com.apple.appleaccount", 0) != 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(AAPreferences *)v2];
  }

  return v2;
}

+ (void)setShouldUseUnifiedLoginEndpoint:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:!a3];

  CFPreferencesSetAppValue(@"AAUseLegacyLoginEndpoint", v3, @"com.apple.appleaccount");
}

+ (BOOL)isRunningInStoreDemoMode
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (BOOL)isExperimentalModeEnabled
{
  v2 = [MEMORY[0x1E6985E20] isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"AAExperimentalMode", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (BOOL)isHealthCheckTTREnabled
{
  if (CFPreferencesGetAppBooleanValue(@"AADisableHealthCheckTTR", @"com.apple.appleaccount", 0))
  {
    return 0;
  }

  v3 = MEMORY[0x1E6985E20];

  return [v3 isInternalBuild];
}

+ (void)setHealthCheckTTREnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:!a3];

  CFPreferencesSetAppValue(@"AADisableHealthCheckTTR", v3, @"com.apple.appleaccount");
}

+ (BOOL)isSimulateUnhealthyCustodianEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AASimulateUnhealthyCustodian", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (BOOL)isCustomHealthCheckIntervalEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AACustomHealthCheckIntervalEnabled", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setCustomHealthCheckIntervalMinutes:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  CFPreferencesSetAppValue(@"AACustomHealthCheckIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (void)setCustomHealthFailureReachabilityIntervalMinutes:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  CFPreferencesSetAppValue(@"AACustomHealthCheckReachabilityIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (void)setCustomHealthCheckVersion:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  CFPreferencesSetAppValue(@"AACustomHealthCheckversion", v3, @"com.apple.appleaccount");
}

+ (BOOL)isCustomMaintenanceIntervalEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AACustomMaintenanceIntervalEnabled", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (void)setCustomMaintenanceIntervalMinutes:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  CFPreferencesSetAppValue(@"AACustomMaintenanceIntervalMinutes", v3, @"com.apple.appleaccount");
}

+ (BOOL)isLCInviteAcceptanceEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AALCInviteAcceptance", @"com.apple.appleaccount", 0);
  if (AppBooleanValue)
  {
    v3 = MEMORY[0x1E6985E20];

    LOBYTE(AppBooleanValue) = [v3 isInternalBuild];
  }

  return AppBooleanValue;
}

+ (BOOL)isMomentsDataclassEnabled
{
  if (![MEMORY[0x1E6985DD8] deviceIsiPad])
  {
    return 1;
  }

  return +[AAPreferences _os_feature_enabled_Journal_iPadOS];
}

+ (BOOL)shouldSkipIdMSKeyUpdate
{
  v2 = [MEMORY[0x1E6985E20] isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"AASkipIdMSKeyUpdate", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldSkipIdMSFinalizeCustodian
{
  v2 = [MEMORY[0x1E6985E20] isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"AASkipIdMSFinalizeCustodian", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (BOOL)shouldSkipRecoveryInfoRecordStorage
{
  v2 = [MEMORY[0x1E6985E20] isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"AASkipRecoveryInfoRecordStorage", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (void)setCustodianInfo:(id)a3
{
  CFPreferencesSetAppValue(@"AACustodianInfo", a3, @"com.apple.appleaccount");
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.appleaccount", v3, v4);
}

+ (id)getCustodianInfo
{
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.appleaccount", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"AACustodianInfo", @"com.apple.appleaccount", v2, v3);

  return v4;
}

+ (BOOL)simulate2FAFA
{
  v2 = [MEMORY[0x1E6985E20] isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"AASimulate2FAFA", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (BOOL)disableADPStateHealing
{
  v2 = +[AADeviceInfo isInternalBuild];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"disableWalrusStatusMismatchDetectionEnabled", @"com.apple.appleaccount", 0) != 0;
  }

  return v2;
}

+ (void)isMultipleFullAccountsEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "AAPreferences: Multiple full accounts are enabled on this platform: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end