@interface WatchControlStringLookup
+ (id)stringResouceForGreyEvent:(int64_t)a3;
+ (id)stringResouceForMotionPointerEdge:(int64_t)a3;
+ (id)stringResourceForAXHandGestures:(int64_t)a3;
+ (id)stringResourceForEltonKey:(id)a3;
+ (id)stringResourceForKey:(id)a3;
@end

@implementation WatchControlStringLookup

+ (id)stringResourceForKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }

  v5 = [v4 bundleURL];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAEB8]);
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v4 bundleURL];
    v5 = [v6 initWithKey:v3 table:@"Localizable" locale:v7 bundleURL:v8];
  }

  return v5;
}

+ (id)stringResourceForEltonKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }

  v5 = [v4 bundleURL];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAEB8]);
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v4 bundleURL];
    v5 = [v6 initWithKey:v3 table:@"Localizable-elton" locale:v7 bundleURL:v8];
  }

  return v5;
}

+ (id)stringResouceForGreyEvent:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = objc_opt_class();
      v7 = @"grey.event.tap";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v6 = objc_opt_class();
      v7 = @"grey.event.double.tap";
    }

    v3 = [v6 stringResourceForEltonKey:v7];
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v4 = objc_opt_class();
      v5 = @"grey.event.double.clinch";
    }

    else
    {
      v4 = objc_opt_class();
      v5 = @"grey.event.clinch";
    }

    v3 = [v4 stringResourceForKey:v5];
  }

LABEL_12:

  return v3;
}

+ (id)stringResouceForMotionPointerEdge:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() stringResourceForKey:off_278B90BF0[a3]];
  }

  return v4;
}

+ (id)stringResourceForAXHandGestures:(int64_t)a3
{
  v3 = objc_opt_class();
  v4 = WCGreyEventForAXHandGestureEventUsage();

  return [v3 stringResouceForGreyEvent:v4];
}

@end