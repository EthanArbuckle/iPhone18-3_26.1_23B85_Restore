@interface HKLocationShifter
@end

@implementation HKLocationShifter

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v4 = CLLocationCoordinate2DMake(a2, a3);
  v5 = objc_alloc(MEMORY[0x1E6985C40]);
  [*(a1 + 32) altitude];
  v7 = v6;
  [*(a1 + 32) horizontalAccuracy];
  v9 = v8;
  [*(a1 + 32) verticalAccuracy];
  v11 = v10;
  [*(a1 + 32) course];
  v13 = v12;
  [*(a1 + 32) speed];
  v15 = v14;
  v16 = [*(a1 + 32) timestamp];
  v17 = [v5 initWithCoordinate:v16 altitude:v4.latitude horizontalAccuracy:v4.longitude verticalAccuracy:v7 course:v9 speed:v11 timestamp:{v13, v15}];

  [*(a1 + 40) replaceObjectAtIndex:*(a1 + 56) withObject:v17];
  dispatch_group_leave(*(a1 + 48));
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E695DFB0] null];
  [v5 replaceObjectAtIndex:v6 withObject:v7];

  dispatch_group_leave(*(a1 + 40));
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_14(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v13}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  if ([v2 count] >= ceilf(vcvts_n_f32_u64(objc_msgSend(*(a1 + 40), "count"), 1uLL)))
  {
    _HKInitializeLogging();
    v9 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v2 count];
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[routes] Shifted %d valid locations", buf, 8u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[routes] Error shifting coordinate at index %d: %{public}@", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end