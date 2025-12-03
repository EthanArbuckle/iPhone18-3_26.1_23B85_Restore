@interface ATXDayZeroDeterminer
+ (BOOL)doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo:(unint64_t)ago;
@end

@implementation ATXDayZeroDeterminer

+ (BOOL)doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo:(unint64_t)ago
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  v7 = [inFocus atx_publisherFromStartDate:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__ATXDayZeroDeterminer_doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo___block_invoke_2;
  v18[3] = &unk_1E80C1530;
  v18[4] = &v19;
  v8 = [v7 sinkWithCompletion:&__block_literal_global_8 shouldContinue:v18];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = [currentCalendar dateByAddingUnit:16 value:-ago toDate:v10 options:0];

  v12 = v20[5];
  if (v12 && [v12 compare:v11] != 1)
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v20[5];
      *buf = 136315394;
      v26 = "+[ATXDayZeroDeterminer doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo:]";
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: biome app launch data goes back at least 20 days. Date of first event: %@", buf, 0x16u);
    }

    v15 = 1;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v20[5];
      *buf = 136315394;
      v26 = "+[ATXDayZeroDeterminer doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo:]";
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: biome app launch data does NOT go back at least 20 days. Date of first event: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v15;
}

uint64_t __75__ATXDayZeroDeterminer_doesBiomeAppLaunchDataGoBackAtLeastNumberOfDaysAgo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

@end