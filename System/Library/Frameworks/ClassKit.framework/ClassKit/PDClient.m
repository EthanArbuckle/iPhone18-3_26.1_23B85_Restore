@interface PDClient
+ (BOOL)isSchoolworkAppVersionGreaterThanOrEqualTo:(id)a3;
@end

@implementation PDClient

+ (BOOL)isSchoolworkAppVersionGreaterThanOrEqualTo:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp" allowPlaceholder:0 error:0];
  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  v8 = 0;
  if (v7)
  {
    v9 = [v5 shortVersionString];
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = [v10 isVersion:v9 greaterThanOrEqualToVersion:v3];
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

@end