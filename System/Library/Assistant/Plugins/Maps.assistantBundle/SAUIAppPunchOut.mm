@interface SAUIAppPunchOut
+ (id)_openTableBundleId;
+ (id)openTableAppPunchOut;
@end

@implementation SAUIAppPunchOut

+ (id)openTableAppPunchOut
{
  v3 = objc_alloc_init(SAUIAppPunchOut);
  v4 = +[NSString _ma_openTableDisplayName];
  [v3 setAppDisplayName:v4];

  [v3 setAppAvailableInStorefront:1];
  v5 = [a1 _openTableBundleId];
  [v3 setBundleId:v5];

  return v3;
}

+ (id)_openTableBundleId
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = @"com.contextoptional.OpenTable";
    if ([v3 applicationIsInstalled:@"com.opentable.iPad.OpenTable"])
    {
      v5 = +[LSApplicationWorkspace defaultWorkspace];
      if (![v5 applicationIsInstalled:@"com.contextoptional.OpenTable"])
      {
        v4 = @"com.opentable.iPad.OpenTable";
      }
    }
  }

  else
  {
    v4 = @"com.contextoptional.OpenTable";
  }

  return v4;
}

@end