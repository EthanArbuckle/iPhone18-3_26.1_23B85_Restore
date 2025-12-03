@interface PDClient
+ (BOOL)isSchoolworkAppVersionGreaterThanOrEqualTo:(id)to;
@end

@implementation PDClient

+ (BOOL)isSchoolworkAppVersionGreaterThanOrEqualTo:(id)to
{
  toCopy = to;
  v4 = objc_autoreleasePoolPush();
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp" allowPlaceholder:0 error:0];
  applicationState = [v5 applicationState];
  isInstalled = [applicationState isInstalled];

  v8 = 0;
  if (isInstalled)
  {
    shortVersionString = [v5 shortVersionString];
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = [v10 isVersion:shortVersionString greaterThanOrEqualToVersion:toCopy];
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

@end