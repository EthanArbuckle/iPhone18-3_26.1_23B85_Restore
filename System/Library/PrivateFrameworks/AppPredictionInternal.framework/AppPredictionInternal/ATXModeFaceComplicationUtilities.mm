@interface ATXModeFaceComplicationUtilities
+ (double)complicationScoreForAppLaunch:(id)launch environment:(id)environment;
@end

@implementation ATXModeFaceComplicationUtilities

+ (double)complicationScoreForAppLaunch:(id)launch environment:(id)environment
{
  launchCopy = launch;
  environmentCopy = environment;
  if ([launchCopy length])
  {
    appLaunchCounts = [environmentCopy appLaunchCounts];
    v8 = [appLaunchCounts objectForKeyedSubscript:launchCopy];

    if ([v8 rawLaunchCount])
    {
      v9 = (100.0 - [v8 rawLaunchCount]) / 100.0;
      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v10 = 1.0 - fmin(v9, 1.0);
    }

    else
    {
      v10 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end