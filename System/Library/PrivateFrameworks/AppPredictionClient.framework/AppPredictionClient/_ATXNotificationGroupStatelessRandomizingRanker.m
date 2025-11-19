@interface _ATXNotificationGroupStatelessRandomizingRanker
- (id)randomlySwapGroups:(id)a3;
- (id)rankNotificationGroups:(id)a3 modeId:(id)a4;
- (unint64_t)_generateNumSwaps:(id)a3;
@end

@implementation _ATXNotificationGroupStatelessRandomizingRanker

- (unint64_t)_generateNumSwaps:(id)a3
{
  v4 = a3;
  [(_ATXNotificationGroupStatelessRandomizingRanker *)self _standardUniformDistribution];
  v6 = v5;
  if ([v4 count] < 0xA || v6 >= 0.02)
  {
    v8 = [v4 count];
    v7 = v6 < 0.08 && v8 > 5;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)randomlySwapGroups:(id)a3
{
  v4 = a3;
  v5 = [(_ATXNotificationGroupStatelessRandomizingRanker *)self _generateNumSwaps:v4];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    if ([v4 count] >= 4)
    {
      v9 = 0;
      v10 = 1.0;
      v11 = 1.0;
      do
      {
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        [v7 addObject:v12];

        v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        [v8 addObject:v13];

        v10 = v10 * 0.9;
        v11 = v11 * 0.9;
        ++v9;
      }

      while (v9 < [v4 count] >> 2);
    }

    v14 = [MEMORY[0x1E698B018] sampleWeightedArray:v7 numToSample:v6];
    v15 = [MEMORY[0x1E698B018] sampleWeightedArray:v8 numToSample:v6];
    v16 = [v4 mutableCopy];
    v17 = [v14 count];
    v18 = [v15 count];
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = [v14 objectAtIndexedSubscript:v20];
        v22 = [v21 unsignedIntegerValue];

        v23 = [v15 objectAtIndexedSubscript:v20];
        v24 = [v23 unsignedIntegerValue];
        v25 = v24 + ([v4 count] >> 1);

        v26 = [v4 objectAtIndexedSubscript:v22];
        [v16 setObject:v26 atIndexedSubscript:v25];

        v27 = [v4 objectAtIndexedSubscript:v25];
        [v16 setObject:v27 atIndexedSubscript:v22];

        ++v20;
        v28 = [v14 count];
        v29 = [v15 count];
        if (v28 >= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }
      }

      while (v30 > v20);
    }
  }

  else
  {
    v16 = v4;
  }

  return v16;
}

- (id)rankNotificationGroups:(id)a3 modeId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v8 rankNotificationGroups:v7 modeId:v6];

  v10 = [(_ATXNotificationGroupStatelessRandomizingRanker *)self randomlySwapGroups:v9];

  return v10;
}

@end