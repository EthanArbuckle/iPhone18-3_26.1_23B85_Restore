@interface ATXHeroPredictionsTracker
- (BOOL)didPredictionsChange:(id)change;
- (void)setPredictionsInDefaults:(id)defaults;
@end

@implementation ATXHeroPredictionsTracker

- (BOOL)didPredictionsChange:(id)change
{
  changeCopy = change;
  v4 = +[ATXHeroAndClipConstants sharedInstance];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  heroAppPredictionsKey = [v4 heroAppPredictionsKey];
  v8 = [v6 objectForKey:heroAppPredictionsKey];

  v9 = [objc_opt_class() hashedPredictionsForPredictions:changeCopy];
  v10 = [v8 count];
  if (v10 == [v9 count])
  {
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        v12 = [v9 objectAtIndexedSubscript:v11];
        v13 = [v8 containsObject:v12];

        if ((v13 & 1) == 0)
        {
          break;
        }

        ++v11;
      }

      while ([v9 count] > v11);
      v14 = v13 ^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)setPredictionsInDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v8 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [objc_opt_class() hashedPredictionsForPredictions:defaultsCopy];

  heroAppPredictionsKey = [v8 heroAppPredictionsKey];
  [v5 setObject:v6 forKey:heroAppPredictionsKey];
}

@end