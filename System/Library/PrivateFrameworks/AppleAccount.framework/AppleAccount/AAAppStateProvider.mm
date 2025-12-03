@interface AAAppStateProvider
+ (id)appStateForBundleID:(id)d;
@end

@implementation AAAppStateProvider

+ (id)appStateForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v10];
    v5 = v4;
    if (v4)
    {
      applicationState = [v4 applicationState];
      isRestricted = [applicationState isRestricted];

      v5 = 1;
    }

    else
    {
      isRestricted = 0;
    }
  }

  else
  {
    isRestricted = 0;
    v5 = 0;
  }

  v8 = [[AAAppState alloc] initWithInstalled:v5 isRestricted:isRestricted];

  return v8;
}

@end