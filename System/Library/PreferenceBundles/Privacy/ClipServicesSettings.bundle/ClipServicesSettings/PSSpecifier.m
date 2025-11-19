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
  v2 = [(PSSpecifier *)self cps_appClipApplicationRecord];
  v3 = [v2 iTunesMetadata];
  v4 = [v3 storeItemIdentifier];

  return v4;
}

- (BOOL)cps_isAppClipInstalled
{
  v2 = [(PSSpecifier *)self cps_appClipApplicationRecord];
  v3 = [v2 applicationState];
  v4 = [v3 isInstalled];

  return v4;
}

- (BOOL)cps_isTestFlight
{
  v2 = [(PSSpecifier *)self cps_appClipApplicationRecord];
  v3 = [v2 isBeta];

  return v3;
}

- (LSApplicationRecord)cps_appClipApplicationRecord
{
  v2 = [(PSSpecifier *)self cps_bundleIdentifier];
  if ([v2 length])
  {
    v7 = 0;
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = sub_59B0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_A370(v2, v5, v4);
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