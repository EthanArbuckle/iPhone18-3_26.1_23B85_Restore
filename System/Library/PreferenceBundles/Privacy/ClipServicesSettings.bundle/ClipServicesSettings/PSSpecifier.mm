@interface PSSpecifier
- (BOOL)cps_isAppClipInstalled;
- (BOOL)cps_isTestFlight;
- (LSApplicationRecord)cps_appClipApplicationRecord;
- (NSString)cps_bundleIdentifier;
- (int64_t)cps_storeItemIdentifier;
@end

@implementation PSSpecifier

- (NSString)cps_bundleIdentifier
{
  v3 = [(PSSpecifier *)self propertyForKey:@"CPS_BUNDLE_IDENTIFIER"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PSSpecifier *)self propertyForKey:PSIDKey];
  }

  v6 = v5;

  return v6;
}

- (int64_t)cps_storeItemIdentifier
{
  cps_appClipApplicationRecord = [(PSSpecifier *)self cps_appClipApplicationRecord];
  iTunesMetadata = [cps_appClipApplicationRecord iTunesMetadata];
  storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

  return storeItemIdentifier;
}

- (BOOL)cps_isAppClipInstalled
{
  cps_appClipApplicationRecord = [(PSSpecifier *)self cps_appClipApplicationRecord];
  applicationState = [cps_appClipApplicationRecord applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
}

- (BOOL)cps_isTestFlight
{
  cps_appClipApplicationRecord = [(PSSpecifier *)self cps_appClipApplicationRecord];
  isBeta = [cps_appClipApplicationRecord isBeta];

  return isBeta;
}

- (LSApplicationRecord)cps_appClipApplicationRecord
{
  cps_bundleIdentifier = [(PSSpecifier *)self cps_bundleIdentifier];
  if ([cps_bundleIdentifier length])
  {
    v7 = 0;
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:cps_bundleIdentifier allowPlaceholder:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = sub_59B0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_A370(cps_bundleIdentifier, v5, v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end