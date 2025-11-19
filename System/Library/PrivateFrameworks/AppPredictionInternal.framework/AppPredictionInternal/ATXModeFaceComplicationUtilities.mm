@interface ATXModeFaceComplicationUtilities
+ (double)complicationScoreForAppLaunch:(id)a3 environment:(id)a4;
@end

@implementation ATXModeFaceComplicationUtilities

+ (double)complicationScoreForAppLaunch:(id)a3 environment:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v6 appLaunchCounts];
    v8 = [v7 objectForKeyedSubscript:v5];

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