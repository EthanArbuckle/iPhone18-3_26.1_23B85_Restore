@interface AAAppStateProvider
+ (id)appStateForBundleID:(id)a3;
@end

@implementation AAAppStateProvider

+ (id)appStateForBundleID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 applicationState];
      v7 = [v6 isRestricted];

      v5 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = [[AAAppState alloc] initWithInstalled:v5 isRestricted:v7];

  return v8;
}

@end