@interface WatchControlStringLookup
+ (id)stringResouceForGreyEvent:(int64_t)event;
+ (id)stringResouceForMotionPointerEdge:(int64_t)edge;
+ (id)stringResourceForAXHandGestures:(int64_t)gestures;
+ (id)stringResourceForEltonKey:(id)key;
+ (id)stringResourceForKey:(id)key;
@end

@implementation WatchControlStringLookup

+ (id)stringResourceForKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }

  bundleURL = [v4 bundleURL];

  if (bundleURL)
  {
    v6 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL2 = [v4 bundleURL];
    bundleURL = [v6 initWithKey:keyCopy table:@"Localizable" locale:currentLocale bundleURL:bundleURL2];
  }

  return bundleURL;
}

+ (id)stringResourceForEltonKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }

  bundleURL = [v4 bundleURL];

  if (bundleURL)
  {
    v6 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL2 = [v4 bundleURL];
    bundleURL = [v6 initWithKey:keyCopy table:@"Localizable-elton" locale:currentLocale bundleURL:bundleURL2];
  }

  return bundleURL;
}

+ (id)stringResouceForGreyEvent:(int64_t)event
{
  v3 = 0;
  if (event > 1)
  {
    if (event == 2)
    {
      v6 = objc_opt_class();
      v7 = @"grey.event.tap";
    }

    else
    {
      if (event != 3)
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
    if (event)
    {
      if (event != 1)
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

+ (id)stringResouceForMotionPointerEdge:(int64_t)edge
{
  if (edge > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() stringResourceForKey:off_278B90BF0[edge]];
  }

  return v4;
}

+ (id)stringResourceForAXHandGestures:(int64_t)gestures
{
  v3 = objc_opt_class();
  v4 = WCGreyEventForAXHandGestureEventUsage();

  return [v3 stringResouceForGreyEvent:v4];
}

@end