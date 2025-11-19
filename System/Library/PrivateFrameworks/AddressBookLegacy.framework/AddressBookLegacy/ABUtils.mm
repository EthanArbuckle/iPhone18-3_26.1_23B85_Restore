@interface ABUtils
+ (id)mainBundleID;
+ (id)processName;
@end

@implementation ABUtils

+ (id)mainBundleID
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];

  return [v2 bundleIdentifier];
}

+ (id)processName
{
  v2 = [MEMORY[0x1E696AE30] processInfo];

  return [v2 processName];
}

@end