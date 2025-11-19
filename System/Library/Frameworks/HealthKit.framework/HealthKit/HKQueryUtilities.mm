@interface HKQueryUtilities
@end

@implementation HKQueryUtilities

id __117___HKQueryUtilities_calculateTotalDurationsWithTimePeriods_startDate_endDate_intervalComponents_startOfDayTransform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = objc_alloc(MEMORY[0x1E696AB80]);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [v4 startDate];
    v9 = (*(v6 + 16))(v6, v7, v8);
    v12 = a1 + 32;
    v10 = *(a1 + 32);
    v11 = *(v12 + 8);
    v13 = [v4 endDate];
    v14 = (*(v11 + 16))(v11, v10, v13);
    v15 = [v5 initWithStartDate:v9 endDate:v14];
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

uint64_t __93___HKQueryUtilities_calculateIncludedValuesWithSamples_startDate_endDate_intervalComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __93___HKQueryUtilities_calculateIncludedValuesWithSamples_startDate_endDate_intervalComponents___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v15 + 1) + 8 * v12), "hk_integerValue", v15)}];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __99___HKQueryUtilities_arrayByCoalescingObjects_startDate_intervalComponents_calendar_combiningBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [v3 hk_isBeforeOrEqualToDate:*(a1 + 32)];

  return v4;
}

void __94___HKQueryUtilities_calculateCountStatisticsWithSamples_startDate_endDate_intervalComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __114___HKQueryUtilities_countStatisticsQueryWithSampleType_startDate_endDate_intervalComponents_predicate_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 56);
  if (v9)
  {
    if (v8)
    {
      (*(v9 + 16))(v9, 0, v8);
    }

    else
    {
      v10 = [*(a1 + 64) calculateCountStatisticsWithSamples:v7 startDate:*(a1 + 32) endDate:*(a1 + 40) intervalComponents:*(a1 + 48)];
      (*(*(a1 + 56) + 16))();
    }
  }
}

uint64_t __97___HKQueryUtilities_coalesceTotalDurations_startDate_intervalComponents_intervalRecordCountsOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __97___HKQueryUtilities_coalesceTotalDurations_startDate_intervalComponents_intervalRecordCountsOut___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [a1[4] objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v23}];
          [v16 doubleValue];
          v14 = v14 + v17;
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 0.0;
    }

    v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v9];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:{v14 / objc_msgSend(v10, "count")}];
    [a1[5] setObject:v19 forKeyedSubscript:v18];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [a1[6] setObject:v20 forKeyedSubscript:v18];
  }

  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

@end