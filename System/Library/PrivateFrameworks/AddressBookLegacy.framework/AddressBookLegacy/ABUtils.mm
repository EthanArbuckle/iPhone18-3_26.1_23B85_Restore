@interface ABUtils
+ (id)mainBundleID;
+ (id)processName;
@end

@implementation ABUtils

+ (id)mainBundleID
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];

  return [mainBundle bundleIdentifier];
}

+ (id)processName
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];

  return [processInfo processName];
}

@end