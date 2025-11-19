@interface _HKQueryUtilities
+ (BOOL)shouldUseDailyAverageWithDateComponents:(id)a3 sampleType:(id)a4;
+ (double)totalDurationFromCoalescedDateIntervals:(id)a3;
+ (id)arrayByCoalescingObjects:(id)a3 startDate:(id)a4 intervalComponents:(id)a5 calendar:(id)a6 combiningBlock:(id)a7;
+ (id)averageSumFromQuantities:(id)a3 unit:(id)a4;
+ (id)averageSumFromStatistics:(id)a3 unit:(id)a4;
+ (id)calculateCountStatisticsWithSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6;
+ (id)calculateIncludedValuesWithSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6;
+ (id)calculateTotalDurationsWithTimePeriods:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 startOfDayTransform:(id)a7;
+ (id)coalesceTimePeriods:(id)a3 strictStartDate:(id)a4 strictEndDate:(id)a5;
+ (id)coalesceTimePeriodsFromSamples:(id)a3 strictStartDate:(id)a4 strictEndDate:(id)a5;
+ (id)coalesceTotalDurations:(id)a3 startDate:(id)a4 intervalComponents:(id)a5 intervalRecordCountsOut:(id *)a6;
+ (id)countStatisticsQueryWithSampleType:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 predicate:(id)a7 completion:(id)a8;
+ (id)maximumFromQuantities:(id)a3 unit:(id)a4;
+ (id)minimumFromQuantities:(id)a3 unit:(id)a4;
+ (void)_organizeSampleByStartDate:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 callback:(id)a7;
@end

@implementation _HKQueryUtilities

+ (id)coalesceTimePeriods:(id)a3 strictStartDate:(id)a4 strictEndDate:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v31 = a4;
  v8 = a5;
  v30 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {
    v13 = 0;
    v12 = 0;
    v26 = v9;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v33;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      if (v12 && ([*(*(&v32 + 1) + 8 * i) startDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hk_isBeforeDate:", v12), v17, (v18 & 1) == 0))
      {
        v21 = _HKDateIntervalCreate(v13, v12, v31, v8);
        [v21 duration];
        if (v22 > 0.0)
        {
          [v30 addObject:v21];
        }

        v12 = 0;
      }

      else if (v13)
      {
        v19 = [v16 startDate];
        v20 = [v13 earlierDate:v19];

        v13 = v20;
        goto LABEL_14;
      }

      v13 = [v16 startDate];
LABEL_14:
      v23 = [v16 endDate];
      v24 = v23;
      if (v12)
      {
        v25 = [v12 laterDate:v23];

        v12 = v25;
      }

      else
      {
        v12 = v23;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  if (v13 && v12)
  {
    v26 = _HKDateIntervalCreate(v13, v12, v31, v8);
    [v26 duration];
    if (v27 > 0.0)
    {
      [v30 addObject:v26];
    }

LABEL_24:
  }

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)coalesceTimePeriodsFromSamples:(id)a3 strictStartDate:(id)a4 strictEndDate:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __82___HKQueryUtilities_coalesceTimePeriodsFromSamples_strictStartDate_strictEndDate___block_invoke;
        v21[3] = &unk_1E737F448;
        v22 = v9;
        [v15 _enumerateTimePeriodsWithBlock:v21];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v16 = [a1 coalesceTimePeriods:v9 strictStartDate:v20 strictEndDate:v8];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)calculateTotalDurationsWithTimePeriods:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 startOfDayTransform:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a1 coalesceTimePeriods:a3 strictStartDate:v12 strictEndDate:v13];
  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117___HKQueryUtilities_calculateTotalDurationsWithTimePeriods_startDate_endDate_intervalComponents_startOfDayTransform___block_invoke;
  aBlock[3] = &unk_1E737F470;
  v52 = v15;
  v60 = v52;
  v18 = v17;
  v59 = v18;
  v19 = _Block_copy(aBlock);
  v20 = objc_alloc(MEMORY[0x1E696AB80]);
  v55 = v18;
  v56 = v14;
  v21 = [v18 dateByAddingComponents:v14 toDate:v12 options:0];
  v53 = v12;
  v22 = [v20 initWithStartDate:v12 endDate:v21];

  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = [v22 startDate];
  v57 = v13;
  LODWORD(v21) = [v23 hk_isBeforeDate:v13];

  if (v21)
  {
    v24 = 0;
    v25 = 0.0;
    while (1)
    {
      v26 = v19[2](v19, v22);
      if (v24 == [v16 count])
      {
        break;
      }

      v27 = [v16 objectAtIndexedSubscript:v24];
      v28 = [v27 endDate];
      v29 = [v26 startDate];
      v30 = [v28 hk_isAfterOrEqualToDate:v29];

      if (!v30)
      {
        goto LABEL_7;
      }

      v31 = [v27 startDate];
      v32 = [v26 endDate];
      v33 = [v31 hk_isBeforeOrEqualToDate:v32];

      if (!v33)
      {
        goto LABEL_7;
      }

      v34 = [v27 startDate];
      v35 = [v26 startDate];
      v36 = HKDateMax(v34, v35);

      v37 = [v27 endDate];
      v38 = [v26 endDate];
      v39 = HKDateMin(v37, v38);

      [v39 timeIntervalSinceDate:v36];
      v25 = v25 + v40;
      v41 = [v27 endDate];
      LODWORD(v38) = [v41 isEqualToDate:v39];

      v24 += v38;
      if ((v38 & 1) == 0)
      {
LABEL_7:
        if (v25 > 0.0)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
          [v54 setObject:v42 forKeyedSubscript:v22];

          v25 = 0.0;
        }

        v43 = objc_alloc(MEMORY[0x1E696AB80]);
        v44 = [v22 endDate];
        v45 = [v22 endDate];
        v46 = [v55 dateByAddingComponents:v56 toDate:v45 options:0];
        v47 = [v43 initWithStartDate:v44 endDate:v46];

        v22 = v47;
      }

      v48 = [v22 startDate];
      v49 = [v48 hk_isBeforeDate:v57];

      if ((v49 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v25 > 0.0)
    {
      v50 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [v54 setObject:v50 forKeyedSubscript:v22];
    }
  }

LABEL_15:

  return v54;
}

+ (id)calculateIncludedValuesWithSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 sortedArrayUsingComparator:&__block_literal_global_63];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93___HKQueryUtilities_calculateIncludedValuesWithSamples_startDate_endDate_intervalComponents___block_invoke_2;
  v17[3] = &unk_1E737F4B8;
  v15 = v14;
  v18 = v15;
  [a1 _organizeSampleByStartDate:v13 startDate:v12 endDate:v11 intervalComponents:v10 callback:v17];

  return v15;
}

+ (void)_organizeSampleByStartDate:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 callback:(id)a7
{
  v32 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DEE8] currentCalendar];
  v16 = v11;
  v29 = v15;
  v30 = v13;
  v17 = [v15 dateByAddingComponents:v13 toDate:v16 options:0];
  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v16 endDate:v17];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = v12;
  v31 = v14;
  v28 = v16;
  if ([v16 hk_isBeforeOrEqualToDate:v12])
  {
    v21 = 0;
    do
    {
      if (v21 >= [v32 count])
      {
        break;
      }

      v22 = [v32 objectAtIndexedSubscript:v21];
      v23 = [v22 startDate];
      v24 = [v18 endDate];
      v25 = [v23 hk_isBeforeDate:v24];

      if (v25)
      {
        [v19 addObject:v22];
        ++v21;
      }

      else
      {
        if (v31 && [v19 count])
        {
          (v31)[2](v31, v18, v19);
        }

        [v19 removeAllObjects];
        v26 = v17;

        v17 = [v29 dateByAddingComponents:v30 toDate:v26 options:0];

        v27 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v26 endDate:v17];
        v18 = v27;
        v16 = v26;
      }
    }

    while (([v16 hk_isBeforeOrEqualToDate:v20] & 1) != 0);
  }

  if (v31 && [v19 count])
  {
    (v31)[2](v31, v18, v19);
  }
}

+ (id)arrayByCoalescingObjects:(id)a3 startDate:(id)a4 intervalComponents:(id)a5 calendar:(id)a6 combiningBlock:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v11)
  {
    v29 = v12;
    v16 = v12;
    v32 = v14;
    v17 = [v14 dateByAddingComponents:v13 toDate:v16 options:0];
    v30 = v11;
    v18 = [v11 mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while ([v18 count] || objc_msgSend(v19, "count"))
    {
      v20 = [v18 firstObject];
      v21 = v20;
      if (v20 && ([v20 startDate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hk_isBeforeDate:", v17), v22, v23))
      {
        [v19 addObject:v21];
        [v18 removeObjectAtIndex:0];
      }

      else
      {
        v24 = v15[2](v15, v19, v16, v17);
        if (v24)
        {
          [v31 addObject:v24];
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __99___HKQueryUtilities_arrayByCoalescingObjects_startDate_intervalComponents_calendar_combiningBlock___block_invoke;
        v33[3] = &unk_1E737F4E0;
        v25 = v17;
        v34 = v25;
        [v19 hk_removeObjectsPassingTest:v33];
        v26 = v25;

        v17 = [v32 dateByAddingComponents:v13 toDate:v26 options:0];

        v16 = v26;
      }
    }

    v12 = v29;
    v11 = v30;
    v14 = v32;
    v27 = v31;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (double)totalDurationFromCoalescedDateIntervals:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 endDate];
        v11 = [v9 startDate];
        [v10 timeIntervalSinceDate:v11];
        v7 = v7 + v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)calculateCountStatisticsWithSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6
{
  v10 = MEMORY[0x1E695DF90];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94___HKQueryUtilities_calculateCountStatisticsWithSamples_startDate_endDate_intervalComponents___block_invoke;
  v18[3] = &unk_1E737F4B8;
  v16 = v15;
  v19 = v16;
  [a1 _organizeSampleByStartDate:v14 startDate:v13 endDate:v12 intervalComponents:v11 callback:v18];

  return v16;
}

+ (id)countStatisticsQueryWithSampleType:(id)a3 startDate:(id)a4 endDate:(id)a5 intervalComponents:(id)a6 predicate:(id)a7 completion:(id)a8
{
  v39[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = MEMORY[0x1E696AEB0];
  v18 = a7;
  v19 = a3;
  v20 = [v17 sortDescriptorWithKey:@"endDate" ascending:1];
  v39[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

  v22 = [HKQuery predicateForSamplesWithStartDate:v13 endDate:v14 options:1];
  v23 = [HKSampleQuery alloc];
  v24 = _HKPredicateMatchingPredicates(v22, v18);

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __114___HKQueryUtilities_countStatisticsQueryWithSampleType_startDate_endDate_intervalComponents_predicate_completion___block_invoke;
  v33[3] = &unk_1E737F508;
  v37 = v16;
  v38 = a1;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  v28 = v16;
  v29 = [(HKSampleQuery *)v23 initWithSampleType:v19 predicate:v24 limit:0 sortDescriptors:v21 resultsHandler:v33];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)averageSumFromStatistics:(id)a3 unit:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) sumQuantity];
          [v13 doubleValueForUnit:v6];
          v11 = v11 + v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v15 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v6, v11 / [v7 count]);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)averageSumFromQuantities:(id)a3 unit:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v17 + 1) + 8 * i) doubleValueForUnit:{v6, v17}];
          v11 = v11 + v13;
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v14 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v6, v11 / [v7 count]);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)minimumFromQuantities:(id)a3 unit:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    [v7 doubleValueForUnit:v6];
    v9 = v8;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v19 + 1) + 8 * i) doubleValueForUnit:{v6, v19}];
          if (v15 < v9)
          {
            v9 = v15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [HKQuantity quantityWithUnit:v6 doubleValue:v9];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)maximumFromQuantities:(id)a3 unit:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    [v7 doubleValueForUnit:v6];
    v9 = v8;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v19 + 1) + 8 * i) doubleValueForUnit:{v6, v19}];
          if (v15 > v9)
          {
            v9 = v15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [HKQuantity quantityWithUnit:v6 doubleValue:v9];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)shouldUseDailyAverageWithDateComponents:(id)a3 sampleType:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) == 0 || [v6 aggregationStyle] == 0;
  [v5 hk_approximateDuration];
  v9 = v8;
  v10 = [MEMORY[0x1E695DF10] hk_oneDay];
  [v10 hk_approximateDuration];
  v12 = v11;

  v13 = v9 > v12 && v7;
  return v13;
}

+ (id)coalesceTotalDurations:(id)a3 startDate:(id)a4 intervalComponents:(id)a5 intervalRecordCountsOut:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v10 allKeys];
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_25_0];

  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97___HKQueryUtilities_coalesceTotalDurations_startDate_intervalComponents_intervalRecordCountsOut___block_invoke_2;
  v26[3] = &unk_1E737F550;
  v27 = v10;
  v18 = v13;
  v28 = v18;
  v19 = v14;
  v29 = v19;
  v20 = v10;
  v21 = [a1 arrayByCoalescingObjects:v16 startDate:v11 intervalComponents:v12 calendar:v17 combiningBlock:v26];

  if (a6)
  {
    v22 = v19;
    *a6 = v19;
  }

  v23 = v29;
  v24 = v18;

  return v18;
}

@end