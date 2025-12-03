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
  state = [self state];
  previousState = [self previousState];
  wasTransitioning = [self wasTransitioning];
  if (state == previousState && !wasTransitioning)
  {
    goto LABEL_3;
  }

  changeRequest = [self changeRequest];
  sourceEvent = [changeRequest sourceEvent];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (((sourceEvent - 7) & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      goto LABEL_9;
    }

LABEL_3:
    v8 = 1;
    goto LABEL_4;
  }

  if ([v4 isTransitionForcedUnanimatedForSource:sourceEvent])
  {
    goto LABEL_3;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 isTransitionForcedUnanimatedToState:state fromPreviousState:previousState];
  }

  else
  {
    v8 = state == 2 && previousState == 3;
  }

LABEL_4:

  return v8;
}

- (uint64_t)_isEnvironmentTransitionAnimatedWithPlatformProvider:()BacklightServicesHost
{
  v4 = a3;
  state = [self state];
  previousState = [self previousState];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 isEnvironmentTransitionAnimatedToState:state fromPreviousState:previousState];
  }

  else
  {
    if (state)
    {
      v8 = previousState == 0;
    }

    else
    {
      v8 = 1;
    }

    v7 = !v8 && state != 3;
  }

  return v7;
}

- (void)setAninmationPropertiesWithPlatformProvider:()BacklightServicesHost
{
  v6 = a3;
  v4 = [self _isTransitionForcedUnanimatedWithPlatformProvider:?];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self _isEnvironmentTransitionAnimatedWithPlatformProvider:v6];
  }

  [self setTransitionForcedUnanimated:v4 environmentTransitionAnimated:v5];
}

@end