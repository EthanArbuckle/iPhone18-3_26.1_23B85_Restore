@interface FBSScene(AXExtras)
- (BOOL)accessibilityIsSceneOnContinuityDisplay;
- (BOOL)accessibilitySceneIsCallServiceBanner;
@end

@implementation FBSScene(AXExtras)

- (BOOL)accessibilitySceneIsCallServiceBanner
{
  objc_opt_class();
  settings = [self settings];
  v3 = [settings safeValueForKey:@"_legacyOtherSettings"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 objectForSetting:3001];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)accessibilityIsSceneOnContinuityDisplay
{
  settings = [self settings];
  displayIdentity = [settings displayIdentity];
  v3 = [displayIdentity type] == 8;

  return v3;
}

@end