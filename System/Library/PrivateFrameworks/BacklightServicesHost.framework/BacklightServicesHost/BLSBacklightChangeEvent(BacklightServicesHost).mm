@interface BLSBacklightChangeEvent(BacklightServicesHost)
+ (BOOL)defaultIsEnvironmentTransitionAnimatedToState:()BacklightServicesHost fromPreviousState:;
- (uint64_t)_isEnvironmentTransitionAnimatedWithPlatformProvider:()BacklightServicesHost;
- (uint64_t)_isTransitionForcedUnanimatedWithPlatformProvider:()BacklightServicesHost;
- (void)setAninmationPropertiesWithPlatformProvider:()BacklightServicesHost;
@end

@implementation BLSBacklightChangeEvent(BacklightServicesHost)

+ (BOOL)defaultIsEnvironmentTransitionAnimatedToState:()BacklightServicesHost fromPreviousState:
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && a3 != 3;
}

- (uint64_t)_isTransitionForcedUnanimatedWithPlatformProvider:()BacklightServicesHost
{
  v4 = a3;
  v5 = [a1 state];
  v6 = [a1 previousState];
  v7 = [a1 wasTransitioning];
  if (v5 == v6 && !v7)
  {
    goto LABEL_3;
  }

  v10 = [a1 changeRequest];
  v11 = [v10 sourceEvent];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (((v11 - 7) & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      goto LABEL_9;
    }

LABEL_3:
    v8 = 1;
    goto LABEL_4;
  }

  if ([v4 isTransitionForcedUnanimatedForSource:v11])
  {
    goto LABEL_3;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 isTransitionForcedUnanimatedToState:v5 fromPreviousState:v6];
  }

  else
  {
    v8 = v5 == 2 && v6 == 3;
  }

LABEL_4:

  return v8;
}

- (uint64_t)_isEnvironmentTransitionAnimatedWithPlatformProvider:()BacklightServicesHost
{
  v4 = a3;
  v5 = [a1 state];
  v6 = [a1 previousState];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 isEnvironmentTransitionAnimatedToState:v5 fromPreviousState:v6];
  }

  else
  {
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    v7 = !v8 && v5 != 3;
  }

  return v7;
}

- (void)setAninmationPropertiesWithPlatformProvider:()BacklightServicesHost
{
  v6 = a3;
  v4 = [a1 _isTransitionForcedUnanimatedWithPlatformProvider:?];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 _isEnvironmentTransitionAnimatedWithPlatformProvider:v6];
  }

  [a1 setTransitionForcedUnanimated:v4 environmentTransitionAnimated:v5];
}

@end