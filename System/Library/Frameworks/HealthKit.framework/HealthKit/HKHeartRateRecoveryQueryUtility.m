@interface HKHeartRateRecoveryQueryUtility
@end

@implementation HKHeartRateRecoveryQueryUtility

void __49___HKHeartRateRecoveryQueryUtility__setupQueries__block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (a4)
  {
    (*(*(a1[4] + 40) + 16))();
  }

  else
  {
    v7 = a1[4];
    v8 = [objc_opt_class() workoutRecoveryDateIntervalForWorkout:*(v7 + 16) overlappingWorkouts:v6];
    v9 = v8;
    if (v8)
    {
      v10 = a1[6];
      v11 = a1[4];
      if (*(*(v10 + 8) + 24))
      {
        v12 = a1[4];
        v13 = [objc_opt_class() workoutRecoveryHeartRatesForWorkout:*(v12 + 16) recoveryDateInterval:v9 readings:*(v12 + 48)];
        (*(*(a1[4] + 40) + 16))();
      }

      else
      {
        v14 = v11[2];
        v15 = a1[5];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49___HKHeartRateRecoveryQueryUtility__setupQueries__block_invoke_2;
        v16[3] = &unk_1E737DD80;
        v18 = v10;
        v16[4] = v11;
        v17 = v8;
        [v11 _heartRatesPostWorkout:v14 workoutRecoveryTimePredicate:v15 completionHandler:v16];
      }
    }

    else
    {
      (*(*(a1[4] + 40) + 16))();
    }
  }
}

void __49___HKHeartRateRecoveryQueryUtility__setupQueries__block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v9 = a2;
  *(*(a1[6] + 8) + 24) = 1;
  v6 = a1[4];
  if (a3)
  {
    (*(*(v6 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((v6 + 48), a2);
    v7 = a1[4];
    v8 = [objc_opt_class() workoutRecoveryHeartRatesForWorkout:*(v7 + 16) recoveryDateInterval:a1[5] readings:*(v7 + 48)];
    (*(*(a1[4] + 40) + 16))();
  }
}

void __106___HKHeartRateRecoveryQueryUtility__heartRatesPostWorkout_workoutRecoveryTimePredicate_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7)
{
  v24 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13 || !v14)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = a1[4];
  v18 = [v14 startDate];
  LODWORD(v17) = [v17 containsDate:v18];

  if (v17)
  {
    v19 = a1[5];
    v20 = [HKHeartRateSummaryReading alloc];
    v21 = [v14 startDate];
    v22 = [(HKHeartRateSummaryReading *)v20 initWithDate:v21 quantity:v13];
    [v19 addObject:v22];
  }

  if (a6)
  {
    v23 = a1[5];
LABEL_8:
    (*(a1[6] + 16))();
  }

LABEL_9:
}

uint64_t __94___HKHeartRateRecoveryQueryUtility_workoutRecoveryDateIntervalForWorkout_overlappingWorkouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 UUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v3 startDate];
    if ([v8 hk_isAfterDate:v9])
    {
      v10 = *(a1 + 48);
      v11 = [v3 endDate];
      v7 = [v10 hk_isBeforeDate:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __102___HKHeartRateRecoveryQueryUtility_workoutRecoveryHeartRatesForWorkout_recoveryDateInterval_readings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  v4 = [v2 containsDate:v3];

  return v4;
}

@end