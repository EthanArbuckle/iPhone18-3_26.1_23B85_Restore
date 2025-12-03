@interface _ATXNotificationGroupStatelessRandomizingRanker
- (id)randomlySwapGroups:(id)groups;
- (id)rankNotificationGroups:(id)groups modeId:(id)id;
- (unint64_t)_generateNumSwaps:(id)swaps;
@end

@implementation _ATXNotificationGroupStatelessRandomizingRanker

- (unint64_t)_generateNumSwaps:(id)swaps
{
  swapsCopy = swaps;
  [(_ATXNotificationGroupStatelessRandomizingRanker *)self _standardUniformDistribution];
  v6 = v5;
  if ([swapsCopy count] < 0xA || v6 >= 0.02)
  {
    v8 = [swapsCopy count];
    v7 = v6 < 0.08 && v8 > 5;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)randomlySwapGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [(_ATXNotificationGroupStatelessRandomizingRanker *)self _generateNumSwaps:groupsCopy];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    if ([groupsCopy count] >= 4)
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

      while (v9 < [groupsCopy count] >> 2);
    }

    v14 = [MEMORY[0x1E698B018] sampleWeightedArray:v7 numToSample:v6];
    v15 = [MEMORY[0x1E698B018] sampleWeightedArray:v8 numToSample:v6];
    v16 = [groupsCopy mutableCopy];
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
        unsignedIntegerValue = [v21 unsignedIntegerValue];

        v23 = [v15 objectAtIndexedSubscript:v20];
        unsignedIntegerValue2 = [v23 unsignedIntegerValue];
        v25 = unsignedIntegerValue2 + ([groupsCopy count] >> 1);

        v26 = [groupsCopy objectAtIndexedSubscript:unsignedIntegerValue];
        [v16 setObject:v26 atIndexedSubscript:v25];

        v27 = [groupsCopy objectAtIndexedSubscript:v25];
        [v16 setObject:v27 atIndexedSubscript:unsignedIntegerValue];

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
    v16 = groupsCopy;
  }

  return v16;
}

- (id)rankNotificationGroups:(id)groups modeId:(id)id
{
  idCopy = id;
  groupsCopy = groups;
  v8 = objc_opt_new();
  v9 = [v8 rankNotificationGroups:groupsCopy modeId:idCopy];

  v10 = [(_ATXNotificationGroupStatelessRandomizingRanker *)self randomlySwapGroups:v9];

  return v10;
}

@end