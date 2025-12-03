@interface ATXAppLaunches
- (ATXAppLaunches)init;
- (ATXAppLaunches)initWithStream:(id)stream;
- (double)timesAppHasBeenLaunchedOverLast28Days:(id)days;
- (double)uniqueAppsLaunchedOverLast28Days;
- (double)uniqueDaysAppHasBeenLaunchedOverLast28Days:(id)days;
- (id)_rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter:(id)filter;
- (id)rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApp:(id)app;
- (id)rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:(id)apps;
@end

@implementation ATXAppLaunches

- (ATXAppLaunches)init
{
  v3 = BiomeLibrary();
  v4 = [v3 App];
  inFocus = [v4 InFocus];
  v6 = [(ATXAppLaunches *)self initWithStream:inFocus];

  return v6;
}

- (ATXAppLaunches)initWithStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXAppLaunches;
  v6 = [(ATXAppLaunches *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

- (id)rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApp:(id)app
{
  if (app)
  {
    v4 = MEMORY[0x1E695DFD8];
    appCopy = app;
    v6 = [v4 setWithObject:appCopy];
    v7 = [(ATXAppLaunches *)self rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];
    v8 = [v7 objectForKeyedSubscript:appCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)uniqueDaysAppHasBeenLaunchedOverLast28Days:(id)days
{
  if (!days)
  {
    return 0.0;
  }

  v4 = MEMORY[0x1E695DFD8];
  daysCopy = days;
  v6 = [v4 setWithObject:daysCopy];
  v7 = [(ATXAppLaunches *)self rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];
  v8 = [v7 objectForKeyedSubscript:daysCopy];

  uniqueDaysLaunched = [v8 uniqueDaysLaunched];
  return uniqueDaysLaunched;
}

- (double)timesAppHasBeenLaunchedOverLast28Days:(id)days
{
  if (!days)
  {
    return 0.0;
  }

  v4 = MEMORY[0x1E695DFD8];
  daysCopy = days;
  v6 = [v4 setWithObject:daysCopy];
  v7 = [(ATXAppLaunches *)self rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];
  v8 = [v7 objectForKeyedSubscript:daysCopy];

  rawLaunchCount = [v8 rawLaunchCount];
  return rawLaunchCount;
}

- (id)rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:(id)apps
{
  appsCopy = apps;
  if ([appsCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__ATXAppLaunches_rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps___block_invoke;
    v7[3] = &unk_1E80C1BD0;
    v8 = appsCopy;
    v5 = [(ATXAppLaunches *)self _rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter:v7];
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (id)_rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter:(id)filter
{
  v47 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [currentCalendar dateByAddingUnit:16 value:-28 toDate:v7 options:0];

  v29 = v8;
  v9 = [(BMStream *)self->_stream atx_publisherFromStartDate:v8];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __81__ATXAppLaunches__rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter___block_invoke;
  v43[3] = &unk_1E80C6110;
  v28 = filterCopy;
  v44 = v28;
  v10 = [v9 filterWithIsIncluded:v43];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __81__ATXAppLaunches__rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter___block_invoke_3;
  v40[3] = &unk_1E80C2220;
  v27 = currentCalendar;
  v41 = v27;
  v11 = v5;
  v42 = v11;
  v12 = [v10 sinkWithCompletion:&__block_literal_global_18_2 receiveInput:v40];

  v31 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v33;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v33 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v22 += [v19 countForObject:*(*(&v32 + 1) + 8 * j)];
            }

            v21 = [v19 countByEnumeratingWithState:&v32 objects:v45 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        v25 = -[ATXAggregatedAppLaunchData initWithRawLaunchCount:uniqueDaysLaunched:]([ATXAggregatedAppLaunchData alloc], "initWithRawLaunchCount:uniqueDaysLaunched:", v22, [v19 count]);
        [v31 setObject:v25 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(context);

  return v31;
}

uint64_t __81__ATXAppLaunches__rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 eventBody];
    v8 = [v7 bundleID];
    v9 = (*(v6 + 16))(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __81__ATXAppLaunches__rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysWithFilter___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v13 eventBody];
  v5 = [v4 bundleID];

  v6 = objc_alloc(MEMORY[0x1E695DF00]);
  [v13 timestamp];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  v8 = [*(a1 + 32) ordinalityOfUnit:16 inUnit:4 forDate:v7];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];

  if (!v9)
  {
    v10 = objc_opt_new();
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v5];
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [v11 addObject:v12];

  objc_autoreleasePoolPop(v3);
}

- (double)uniqueAppsLaunchedOverLast28Days
{
  v3 = objc_opt_new();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [currentCalendar dateByAddingUnit:16 value:-28 toDate:v5 options:0];

  v7 = [(BMStream *)self->_stream atx_publisherFromStartDate:v6];
  v8 = [v7 filterWithIsIncluded:&__block_literal_global_25_0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__ATXAppLaunches_uniqueAppsLaunchedOverLast28Days__block_invoke_3;
  v13[3] = &unk_1E80C6138;
  v14 = v3;
  v9 = v3;
  v10 = [v8 sinkWithCompletion:&__block_literal_global_27_3 receiveInput:v13];

  v11 = [v9 count];
  return v11;
}

uint64_t __50__ATXAppLaunches_uniqueAppsLaunchedOverLast28Days__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

void __50__ATXAppLaunches_uniqueAppsLaunchedOverLast28Days__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 eventBody];
    v7 = [v6 bundleID];
    [v5 addObject:v7];
  }
}

@end