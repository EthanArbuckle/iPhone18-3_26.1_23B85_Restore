@interface JSADevice
+ (JSAScreen)mainScreen;
+ (NSArray)preferredLocalizations;
+ (NSDictionary)diskUsage;
+ (NSString)localeIdentifier;
+ (NSString)model;
+ (NSString)platform;
+ (NSString)userAgent;
+ (void)diskUsageAsync:(id)a3;
@end

@implementation JSADevice

+ (JSAScreen)mainScreen
{
  v2 = objc_alloc_init(JSAScreen);

  return v2;
}

+ (NSDictionary)diskUsage
{
  v2 = MGCopyAnswer();
  v3 = objc_alloc_init(NSMutableDictionary);
  v12[0] = @"totalSystemCapacity";
  v12[1] = @"totalSystemAvailable";
  v13[0] = kMGQDiskUsageTotalSystemCapacity;
  v13[1] = kMGQDiskUsageTotalSystemAvailable;
  v12[2] = @"totalDataCapacity";
  v12[3] = @"totalDataAvailable";
  v13[2] = kMGQDiskUsageTotalDataCapacity;
  v13[3] = kMGQDiskUsageTotalDataAvailable;
  v12[4] = @"totalDiskCapacity";
  v13[4] = kMGQDiskUsageTotalDiskCapacity;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_A0B8;
  v9[3] = &unk_B26B0;
  v10 = v2;
  v11 = v3;
  v5 = v3;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [v5 copy];

  return v7;
}

+ (void)diskUsageAsync:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A224;
  v7[3] = &unk_B26D8;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (NSString)userAgent
{
  v2 = +[AMSProcessInfo currentProcess];
  v3 = [AMSUserAgent userAgentForProcessInfo:v2];

  return v3;
}

+ (NSString)model
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 model];

  return v3;
}

+ (NSString)platform
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 model];
  v4 = [v3 lowercaseString];

  if (([(__CFString *)v4 isEqualToString:@"ipad"]& 1) == 0 && ([(__CFString *)v4 isEqualToString:@"iphone"]& 1) == 0)
  {

    v4 = @"iphone";
  }

  return v4;
}

+ (NSArray)preferredLocalizations
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 preferredLocalizations];

  return v3;
}

+ (NSString)localeIdentifier
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 localeIdentifier];

  return v3;
}

@end