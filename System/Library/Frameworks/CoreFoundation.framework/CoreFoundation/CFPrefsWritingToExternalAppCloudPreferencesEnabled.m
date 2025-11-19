@interface CFPrefsWritingToExternalAppCloudPreferencesEnabled
@end

@implementation CFPrefsWritingToExternalAppCloudPreferencesEnabled

uint64_t ___CFPrefsWritingToExternalAppCloudPreferencesEnabled_block_invoke()
{
  v0 = _CFProcessPath();
  result = strcmp(v0, "/usr/bin/defaults");
  if (result)
  {
    CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(@"kCFPreferencesCurrentApplication");
    result = _CFPrefsGetCacheStringForBundleID(@"com.apple.Preferences");
    v3 = CacheStringForBundleID == result;
  }

  else
  {
    v3 = 1;
  }

  _CFPrefsOverrideEnableWritingToExternalAppCloudPreferences = v3;
  return result;
}

@end