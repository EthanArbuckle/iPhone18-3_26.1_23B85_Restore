@interface ACHMonthlyChallengeEvaluationEnvironment
- (ACHMonthlyChallengeDataSource)dataSource;
- (ACHMonthlyChallengeEvaluationEnvironment)initWithMonthlyChallengeDataSource:(id)a3 dateComponentInterval:(id)a4 calendar:(id)a5;
- (double)_valueForMonthlyChallengeType:(unint64_t)a3;
- (double)longestMoveStreakInCurrentMonth;
- (id)eligibleSpecificWorkoutChallengeType;
- (id)numberOfCompletedWorkoutsInCurrentMonthForChallengeType:(id)a3;
- (id)numberOfDaysWithAppleMoveTimeOver:(id)a3;
- (id)numberOfDaysWithCaloriesBurnedOver:(id)a3;
- (id)numberOfDaysWithDistanceOver:(id)a3;
- (id)numberOfDaysWithExerciseMinutesOver:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
@end

@implementation ACHMonthlyChallengeEvaluationEnvironment

- (ACHMonthlyChallengeEvaluationEnvironment)initWithMonthlyChallengeDataSource:(id)a3 dateComponentInterval:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ACHMonthlyChallengeEvaluationEnvironment;
  v11 = [(ACHMonthlyChallengeEvaluationEnvironment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, v8);
    objc_storeStrong(&v12->_dateComponentInterval, a4);
    objc_storeStrong(&v12->_calendar, a5);
  }

  return v12;
}

- (id)valueForUndefinedKey:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Monthly Challenge Evaluation environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (double)longestMoveStreakInCurrentMonth
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  v4 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v10 = 0;
  v5 = [v3 longestStreakOfType:0 duringDateComponentInterval:v4 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching longestMoveStreakInCurrentMonth value: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)numberOfCompletedWorkoutsInCurrentMonthForChallengeType:(id)a3
{
  -[ACHMonthlyChallengeEvaluationEnvironment _valueForMonthlyChallengeType:](self, "_valueForMonthlyChallengeType:", [a3 integerValue]);
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithDouble:?];
}

- (id)eligibleSpecificWorkoutChallengeType
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__ACHMonthlyChallengeEvaluationEnvironment_eligibleSpecificWorkoutChallengeType__block_invoke;
  aBlock[3] = &unk_278491A38;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = v2[2](v2, 5);
  if (!v3)
  {
    v3 = v2[2](v2, 3);
  }

  v4 = v3;

  return v4;
}

id __80__ACHMonthlyChallengeEvaluationEnvironment_eligibleSpecificWorkoutChallengeType__block_invoke(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0x7FFFFFFF;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v2 = *MEMORY[0x277CE8BC8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__ACHMonthlyChallengeEvaluationEnvironment_eligibleSpecificWorkoutChallengeType__block_invoke_292;
  v5[3] = &unk_278491A10;
  v5[4] = *(a1 + 32);
  v5[5] = v12;
  v5[6] = &v6;
  v5[7] = a2;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __80__ACHMonthlyChallengeEvaluationEnvironment_eligibleSpecificWorkoutChallengeType__block_invoke_292(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [*(a1 + 32) numberOfCompletedWorkoutsInCurrentMonthForChallengeType:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56) <= v6 && v6 < *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (id)numberOfDaysWithCaloriesBurnedOver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  [v4 doubleValue];
  v7 = v6;

  v8 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v9 = [(ACHMonthlyChallengeEvaluationEnvironment *)self calendar];
  v17 = 0;
  [v5 numberOfDaysWithCaloriesBurnedOver:v8 forDateComponentInterval:v9 calendar:&v17 error:v7];
  v11 = v10;
  v12 = v17;

  if (v12)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Error fetching value for ACHMonthlyChallengeTypeDailyEnergyBurnTarget challenge: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)numberOfDaysWithExerciseMinutesOver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  [v4 doubleValue];
  v7 = v6;

  v8 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v9 = [(ACHMonthlyChallengeEvaluationEnvironment *)self calendar];
  v17 = 0;
  [v5 numberOfDaysWithExerciseMinutesOver:v8 forDateComponentInterval:v9 calendar:&v17 error:v7];
  v11 = v10;
  v12 = v17;

  if (v12)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Error fetching value for ACHMonthlyChallengeTypeDailyExerciseMinutesTarget challenge: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)numberOfDaysWithDistanceOver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  [v4 doubleValue];
  v7 = v6;

  v8 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v9 = [(ACHMonthlyChallengeEvaluationEnvironment *)self calendar];
  v17 = 0;
  [v5 numberOfDaysWithDistanceOver:v8 forDateComponentInterval:v9 calendar:&v17 error:v7];
  v11 = v10;
  v12 = v17;

  if (v12)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Error fetching value for ACHMonthlyChallengeTypeDailyDistanceTarget challenge: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)numberOfDaysWithAppleMoveTimeOver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  [v4 doubleValue];
  v7 = v6;

  v8 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v9 = [(ACHMonthlyChallengeEvaluationEnvironment *)self calendar];
  v17 = 0;
  [v5 numberOfDaysWithAppleMoveTimeOver:v8 forDateComponentInterval:v9 calendar:&v17 error:v7];
  v11 = v10;
  v12 = v17;

  if (v12)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Error fetching value for ACHMonthlyChallengeTypeDailyAppleMoveTimeTarget challenge: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (double)_valueForMonthlyChallengeType:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dataSource];
  v6 = [(ACHMonthlyChallengeEvaluationEnvironment *)self dateComponentInterval];
  v7 = [(ACHMonthlyChallengeEvaluationEnvironment *)self calendar];
  v14 = 0;
  [v5 valueForMonthlyChallengeType:a3 forDateComponentInterval:v6 calendar:v7 error:&v14];
  v9 = v8;
  v10 = v14;

  if (v10)
  {
    v11 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v16 = a3;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Error fetching value for monthly challenge type %lu: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (ACHMonthlyChallengeDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end