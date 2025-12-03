@interface AADeviceInfo
+ (BOOL)aas_hasiCloudSignOutRestriction;
@end

@implementation AADeviceInfo

+ (BOOL)aas_hasiCloudSignOutRestriction
{
  v2 = objc_alloc_init(DMFiCloudPolicyMonitor);
  iCloudLogoutPolicy = [v2 iCloudLogoutPolicy];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_338E8(iCloudLogoutPolicy == 0, v4);
  }

  if (iCloudLogoutPolicy)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = CFPreferencesGetAppBooleanValue(@"FAFamilyRestrictSignout", @"com.apple.Preferences", 0) != 0;
  }

  return v5;
}

@end