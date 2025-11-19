@interface ATXHeroPredictionsTracker
- (BOOL)didPredictionsChange:(id)a3;
- (void)setPredictionsInDefaults:(id)a3;
@end

@implementation ATXHeroPredictionsTracker

- (BOOL)didPredictionsChange:(id)a3
{
  v3 = a3;
  v4 = +[ATXHeroAndClipConstants sharedInstance];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v7 = [v4 heroAppPredictionsKey];
  v8 = [v6 objectForKey:v7];

  v9 = [objc_opt_class() hashedPredictionsForPredictions:v3];
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

- (void)setPredictionsInDefaults:(id)a3
{
  v3 = a3;
  v8 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [objc_opt_class() hashedPredictionsForPredictions:v3];

  v7 = [v8 heroAppPredictionsKey];
  [v5 setObject:v6 forKey:v7];
}

@end