@interface ACHEarnedInstanceCleanupUtility
- (ACHEarnedInstanceCleanupUtility)initWithHealthStore:(id)a3 keyValueClient:(id)a4 earnedInstanceStore:(id)a5;
- (id)_fastestRunAchievementsToRemoveFromEarnedInstances:(id)a3;
- (id)_firstWorkoutAchievementsToRemoveFromEarnedInstances:(id)a3;
- (id)_largestValueActivityAndWorkoutAchievementsToRemoveFromEarnedInstances:(id)a3;
- (id)_lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:(id)a3;
- (int64_t)_historicalEvaluationAdjustment;
- (void)performCleanup;
@end

@implementation ACHEarnedInstanceCleanupUtility

- (ACHEarnedInstanceCleanupUtility)initWithHealthStore:(id)a3 keyValueClient:(id)a4 earnedInstanceStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ACHEarnedInstanceCleanupUtility;
  v12 = [(ACHEarnedInstanceCleanupUtility *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    objc_storeStrong(&v13->_keyValueClient, a4);
    objc_storeStrong(&v13->_earnedInstanceStore, a5);
  }

  return v13;
}

- (void)performCleanup
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error cleaning up achievements: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_firstWorkoutAchievementsToRemoveFromEarnedInstances:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_303];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 templateUniqueName];
        v16 = [v7 objectForKeyedSubscript:v15];

        if (v16)
        {
          [v8 addObject:v14];
        }

        else
        {
          v17 = [v14 templateUniqueName];
          [v7 setObject:v14 forKeyedSubscript:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __88__ACHEarnedInstanceCleanupUtility__firstWorkoutAchievementsToRemoveFromEarnedInstances___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 templateUniqueName];
  v3 = [v2 containsString:@"FirstWorkout"];

  return v3;
}

uint64_t __88__ACHEarnedInstanceCleanupUtility__firstWorkoutAchievementsToRemoveFromEarnedInstances___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 earnedDateComponents];
  v6 = [v4 earnedDateComponents];

  v7 = ACHCompareYearMonthDayDateComponents();
  return v7;
}

- (id)_largestValueActivityAndWorkoutAchievementsToRemoveFromEarnedInstances:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283555C68];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = [v10 templateUniqueName];
        if (([v4 containsObject:v11] & 1) != 0 || objc_msgSend(v11, "containsString:", @"BestWorkout"))
        {
          v12 = [v5 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v5 setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v7);
  }

  v30 = v4;

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v5;
  v31 = [v5 allValues];
  v34 = [v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v34)
  {
    v33 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = v14;
        v15 = *(*(&v40 + 1) + 8 * v14);
        [v15 sortUsingComparator:&__block_literal_global_328];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v37;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v36 + 1) + 8 * j);
              if (!v19 || ([v19 value], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "value"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "compare:", v24), v24, v23, v25 == -1))
              {
                v26 = v22;

                v19 = v26;
              }

              else
              {
                [v13 addObject:v22];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v18);
        }

        else
        {
          v19 = 0;
        }

        v14 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v34);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __106__ACHEarnedInstanceCleanupUtility__largestValueActivityAndWorkoutAchievementsToRemoveFromEarnedInstances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 earnedDateComponents];
  v7 = [v5 earnedDateComponents];
  v8 = ACHCompareYearMonthDayDateComponents();

  if (!v8)
  {
    v9 = [v4 value];
    v10 = [v5 value];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (id)_fastestRunAchievementsToRemoveFromEarnedInstances:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283555C80];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [v11 templateUniqueName];
        if ([v4 containsObject:v12])
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v5 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v8);
  }

  v32 = v4;
  v30 = v6;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v5;
  obj = [v5 allValues];
  v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v15;
        v16 = *(*(&v41 + 1) + 8 * v15);
        [v16 sortUsingComparator:&__block_literal_global_357];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v38;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v37 + 1) + 8 * j);
              if (v20 && ([v20 value], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "value"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "compare:", v25), v25, v24, v26 != 1))
              {
                [v14 addObject:v23];
              }

              else
              {
                v27 = v23;

                v20 = v27;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v19);
        }

        else
        {
          v20 = 0;
        }

        v15 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v35);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __86__ACHEarnedInstanceCleanupUtility__fastestRunAchievementsToRemoveFromEarnedInstances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 earnedDateComponents];
  v7 = [v5 earnedDateComponents];
  v8 = ACHCompareYearMonthDayDateComponents();

  if (!v8)
  {
    v9 = [v5 value];
    v10 = [v4 value];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (id)_lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_359];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if (![v6 count])
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_35;
  }

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_364];
  v8 = [(ACHEarnedInstanceCleanupUtility *)self keyValueClient];
  v49 = 0;
  v9 = [v8 valueForKey:@"totalMoveGoalsMade" domain:@"ActivityAwardingSource" error:&v49];
  v10 = v49;

  if (v9)
  {
    if (!v10)
    {
      v41 = v9;
      v13 = [v9 unsignedIntegerValue];
      v14 = [(ACHEarnedInstanceCleanupUtility *)self _historicalEvaluationAdjustment];
      v44 = v14 + v13;
      v15 = ACHLogCleanup();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v54 = v13;
        v55 = 2048;
        v56 = v14;
        v57 = 2048;
        v58 = v14 + v13;
        _os_log_debug_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEBUG, "Total move goals completed so far: %ld, adjustment: %ld, adjustedTotal, %ld", buf, 0x20u);
      }

      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v16 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v7;
      v17 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v17)
      {
        v18 = v17;
        v38 = v7;
        v39 = v6;
        v40 = v4;
        v19 = 0;
        v20 = *v46;
        v42 = v11;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            v22 = v19;
            if (*v46 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v45 + 1) + 8 * i);
            v24 = [v23 templateUniqueName];
            v25 = [v24 stringByReplacingOccurrencesOfString:@"MoveGoals" withString:&stru_283541ED8];
            v26 = [v25 integerValue];

            v27 = ACHLogCleanup();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v31 = [v23 templateUniqueName];
              v32 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
              *buf = 138412546;
              v54 = v31;
              v55 = 2112;
              v56 = v32;
              _os_log_debug_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEBUG, "%@ count: %@", buf, 0x16u);

              v11 = v42;
            }

            if (v26 > v44)
            {
              v28 = ACHLogCleanup();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v33 = [v23 templateUniqueName];
                v34 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
                *buf = 138412546;
                v54 = v33;
                v55 = 2112;
                v56 = v34;
                _os_log_debug_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEBUG, "Found a candidate! %@ count: %@", buf, 0x16u);
              }

              [v11 addObject:v23];
            }

            v29 = [v23 earnedDateComponents];
            v19 = [v16 dateFromComponents:v29];

            if (v22 && [v19 compare:v22] == -1)
            {
              v30 = ACHLogCleanup();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                [(ACHEarnedInstanceCleanupUtility *)v50 _lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:v23, &v51, v30];
              }

              [v11 addObject:v23];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v18);

        v6 = v39;
        v4 = v40;
        v7 = v38;
      }

      v35 = ACHLogCleanup();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [(ACHEarnedInstanceCleanupUtility *)v11 _lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:v35];
      }

      v12 = [v11 allObjects];

      v10 = 0;
      v9 = v41;
      goto LABEL_34;
    }

    v11 = ACHLogCleanup();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceCleanupUtility *)v10 _lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:v11];
    }
  }

  else
  {
    v11 = ACHLogCleanup();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACHEarnedInstanceCleanupUtility _lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:v11];
    }
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_34:

LABEL_35:
  v36 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __92__ACHEarnedInstanceCleanupUtility__lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 templateUniqueName];
  v3 = [v2 hasSuffix:@"MoveGoals"];

  return v3;
}

uint64_t __92__ACHEarnedInstanceCleanupUtility__lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 templateUniqueName];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"MoveGoals" withString:&stru_283541ED8];
  v7 = [v6 integerValue];

  v8 = [v4 templateUniqueName];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"MoveGoals" withString:&stru_283541ED8];
  v10 = [v9 integerValue];

  if (v7 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v7 > v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

- (int64_t)_historicalEvaluationAdjustment
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  dispatch_group_enter(v3);
  v4 = objc_alloc(MEMORY[0x277CE8D28]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__ACHEarnedInstanceCleanupUtility__historicalEvaluationAdjustment__block_invoke;
  v20[3] = &unk_278491388;
  v22 = &v30;
  v5 = v3;
  v21 = v5;
  v23 = &v24;
  v6 = [v4 initWithUpdateHandler:v20];
  v7 = [(ACHEarnedInstanceCleanupUtility *)self healthStore];
  [v7 executeQuery:v6];

  v8 = dispatch_time(0, 10000000000);
  v9 = dispatch_group_wait(v5, v8);
  v10 = [(ACHEarnedInstanceCleanupUtility *)self healthStore];
  [v10 stopQuery:v6];

  if (v9)
  {
    v11 = ACHLogCleanup();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceCleanupUtility *)v11 _historicalEvaluationAdjustment];
    }

    v12 = 2;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__ACHEarnedInstanceCleanupUtility__historicalEvaluationAdjustment__block_invoke_378;
    v15[3] = &unk_2784913B0;
    v15[4] = &v16;
    v13 = _Block_copy(v15);
    v13[2](v13, v31[5]);
    v13[2](v13, v25[5]);
    v12 = v17[3];

    _Block_object_dispose(&v16, 8);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v12;
}

void __66__ACHEarnedInstanceCleanupUtility__historicalEvaluationAdjustment__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (v12 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v15 = ACHLogAwardEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Received today summary in cleanup utility", buf, 2u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  if (v13 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v16 = ACHLogAwardEngine();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Received yesterday summary in cleanup utility", v17, 2u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
    dispatch_group_leave(*(a1 + 32));
  }
}

void __66__ACHEarnedInstanceCleanupUtility__historicalEvaluationAdjustment__block_invoke_378(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 activityMoveMode];
    if (v4 == 2)
    {
      v6 = [v10 appleMoveTime];
      v7 = [v10 appleMoveTimeGoal];
    }

    else
    {
      v5 = v4 == 1;
      v3 = v10;
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = [v10 activeEnergyBurned];
      v7 = [v10 activeEnergyBurnedGoal];
    }

    v8 = v7;
    v9 = [v6 compare:v7];

    v3 = v10;
    if (v9 != -1)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

LABEL_9:
}

- (void)_lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Unable to obtain the total move goals completed so far. Reason: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 templateUniqueName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_221DDC000, a4, OS_LOG_TYPE_DEBUG, "Found a candidate out of date!: %@", a1, 0xCu);
}

- (void)_lifetimeMoveGoalAchievementsToRemoveFromEarnedInstances:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Move goals earned instances to be removed: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end