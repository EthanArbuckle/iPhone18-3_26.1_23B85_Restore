@interface NSBundle(MKAdditions)
+ (id)_mapkitBundle;
+ (uint64_t)_mapkit_shouldShowAppleLogo;
- (id)_mapkit_localizedStringForKey:()MKAdditions value:table:;
@end

@implementation NSBundle(MKAdditions)

+ (uint64_t)_mapkit_shouldShowAppleLogo
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];

  if (([lowercaseString isEqualToString:@"com.apple.mapkit.private.remoteui"] & 1) != 0 || !objc_msgSend(lowercaseString, "hasPrefix:", @"com.apple."))
  {
    v3 = 1;
  }

  else
  {
    v3 = [lowercaseString hasPrefix:@"com.apple.mapkittest"];
  }

  return v3;
}

+ (id)_mapkitBundle
{
  if (_mapkitBundle_onceToken != -1)
  {
    dispatch_once(&_mapkitBundle_onceToken, &__block_literal_global_105);
  }

  v1 = _mapkitBundle_bundle;

  return v1;
}

- (id)_mapkit_localizedStringForKey:()MKAdditions value:table:
{
  v8 = MEMORY[0x1E696AAE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if ([v8 _navigation_isRunningInSiri])
  {
    [self siriUILocalizedStringForKey:v11 value:v10 table:v9];
  }

  else
  {
    [self localizedStringForKey:v11 value:v10 table:v9];
  }
  v12 = ;

  return v12;
}

@end