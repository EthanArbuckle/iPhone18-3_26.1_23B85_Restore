@interface ACHMonthlyChallengeDataSource
- (ACHMonthlyChallengeDataSource)initWithActivitySummaryIterator:(id)iterator workoutClient:(id)client;
- (double)_dailyAverageValueForMonthlyChallengeWithDailyTargetValue:(double)value andDateComponentInterval:(id)interval;
- (double)_numberOfDaysWithQuantity:(id)quantity overThreshold:(double)threshold forDateComponentInterval:(id)interval error:(id *)error;
- (double)caloriesDuringDateComponentInterval:(id)interval error:(id *)error;
- (double)exerciseMinutesDuringDateComponentInterval:(id)interval error:(id *)error;
- (double)moveTimeDuringDateComponentInterval:(id)interval error:(id *)error;
- (double)valueForMonthlyChallengeType:(unint64_t)type forDateComponentInterval:(id)interval calendar:(id)calendar error:(id *)error;
- (double)walkingRunningDistanceDuringDateComponentInterval:(id)interval error:(id *)error;
- (id)_inclusiveDateIntervalFor:(id)for andDateComponentInterval:(id)interval;
- (int64_t)currentStreakOfType:(unint64_t)type duringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)longestStreakOfType:(unint64_t)type duringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfAllRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfCompletedWorkoutsOfType:(unint64_t)type andLocation:(unint64_t)location duringDateInterval:(id)interval error:(id *)error;
- (int64_t)numberOfDaysDoublingExerciseGoalDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfDaysDoublingMoveGoalDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfExerciseRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfMoveRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfStandRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error;
- (int64_t)numberOfWorkoutsCompletedDuringDateInterval:(id)interval error:(id *)error;
- (void)_getCurrentAndLongestStreakForStreakType:(unint64_t)type duringDateComponentInterval:(id)interval completion:(id)completion;
@end

@implementation ACHMonthlyChallengeDataSource

- (ACHMonthlyChallengeDataSource)initWithActivitySummaryIterator:(id)iterator workoutClient:(id)client
{
  iteratorCopy = iterator;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = ACHMonthlyChallengeDataSource;
  v9 = [(ACHMonthlyChallengeDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activitySummaryIterator, iterator);
    objc_storeStrong(&v10->_workoutClient, client);
  }

  return v10;
}

- (double)valueForMonthlyChallengeType:(unint64_t)type forDateComponentInterval:(id)interval calendar:(id)calendar error:(id *)error
{
  intervalCopy = interval;
  calendarCopy = calendar;
  switch(type)
  {
    case 1uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfAllRingsClosedDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 2uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfMoveRingsClosedDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 3uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfExerciseRingsClosedDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 4uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfStandRingsClosedDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 5uLL:
      [(ACHMonthlyChallengeDataSource *)self caloriesDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_18;
    case 6uLL:
      [(ACHMonthlyChallengeDataSource *)self exerciseMinutesDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_18;
    case 7uLL:
      v17 = [(ACHMonthlyChallengeDataSource *)self _inclusiveDateIntervalFor:calendarCopy andDateComponentInterval:intervalCopy];
      v14 = [(ACHMonthlyChallengeDataSource *)self numberOfWorkoutsCompletedDuringDateInterval:v17 error:error];

      break;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v12 = [(ACHMonthlyChallengeDataSource *)self _inclusiveDateIntervalFor:calendarCopy andDateComponentInterval:intervalCopy];
      v13 = ACHWorkoutActivityTypeForMonthlyChallengeType();
      v14 = [(ACHMonthlyChallengeDataSource *)self numberOfCompletedWorkoutsOfType:v13 andLocation:ACHWorkoutLocationTypeForMonthlyChallengeType() duringDateInterval:v12 error:error];

      break;
    case 0x14uLL:
      [(ACHMonthlyChallengeDataSource *)self walkingRunningDistanceDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_18;
    case 0x15uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfDaysDoublingMoveGoalDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 0x16uLL:
      [(ACHMonthlyChallengeDataSource *)self moveTimeDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_18;
    case 0x17uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self numberOfDaysDoublingExerciseGoalDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_20;
    case 0x18uLL:
      v15 = [(ACHMonthlyChallengeDataSource *)self currentStreakOfType:0 duringDateComponentInterval:intervalCopy error:error];
LABEL_20:
      v14 = v15;
      break;
    case 0x19uLL:
      [(ACHMonthlyChallengeDataSource *)self caloriesDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_17;
    case 0x1AuLL:
      [(ACHMonthlyChallengeDataSource *)self exerciseMinutesDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_17;
    case 0x1BuLL:
      [(ACHMonthlyChallengeDataSource *)self walkingRunningDistanceDuringDateComponentInterval:intervalCopy error:error];
      goto LABEL_17;
    case 0x1CuLL:
      [(ACHMonthlyChallengeDataSource *)self moveTimeDuringDateComponentInterval:intervalCopy error:error];
LABEL_17:
      [(ACHMonthlyChallengeDataSource *)self _dailyAverageValueForMonthlyChallengeWithDailyTargetValue:intervalCopy andDateComponentInterval:?];
LABEL_18:
      v14 = v16;
      break;
    default:
      v14 = -1.0;
      break;
  }

  return v14;
}

- (double)_dailyAverageValueForMonthlyChallengeWithDailyTargetValue:(double)value andDateComponentInterval:(id)interval
{
  intervalCopy = interval;
  endDateComponents = [intervalCopy endDateComponents];
  v7 = [endDateComponents day];
  startDateComponents = [intervalCopy startDateComponents];

  v9 = v7 - [startDateComponents day] + 1;
  return value / v9;
}

- (double)caloriesDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28;
  v23 = __Block_byref_object_dispose__28;
  v24 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__ACHMonthlyChallengeDataSource_caloriesDuringDateComponentInterval_error___block_invoke;
  v16[3] = &unk_278492AD0;
  v18 = &v25;
  v9 = kilocalorieUnit;
  v17 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ACHMonthlyChallengeDataSource_caloriesDuringDateComponentInterval_error___block_invoke_2;
  v15[3] = &unk_278490958;
  v15[4] = &v19;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v16 errorHandler:v15];

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __75__ACHMonthlyChallengeDataSource_caloriesDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isPaused] & 1) == 0 && objc_msgSend(v5, "activityMoveMode") != 2)
  {
    v3 = [v5 activeEnergyBurned];
    [v3 doubleValueForUnit:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (double)moveTimeDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28;
  v23 = __Block_byref_object_dispose__28;
  v24 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__ACHMonthlyChallengeDataSource_moveTimeDuringDateComponentInterval_error___block_invoke;
  v16[3] = &unk_278492AD0;
  v18 = &v25;
  v9 = minuteUnit;
  v17 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ACHMonthlyChallengeDataSource_moveTimeDuringDateComponentInterval_error___block_invoke_2;
  v15[3] = &unk_278490958;
  v15[4] = &v19;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v16 errorHandler:v15];

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __75__ACHMonthlyChallengeDataSource_moveTimeDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isPaused] & 1) == 0 && objc_msgSend(v5, "activityMoveMode") == 2)
  {
    v3 = [v5 appleMoveTime];
    [v3 doubleValueForUnit:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (double)exerciseMinutesDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28;
  v23 = __Block_byref_object_dispose__28;
  v24 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__ACHMonthlyChallengeDataSource_exerciseMinutesDuringDateComponentInterval_error___block_invoke;
  v16[3] = &unk_278492AD0;
  v18 = &v25;
  v9 = minuteUnit;
  v17 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__ACHMonthlyChallengeDataSource_exerciseMinutesDuringDateComponentInterval_error___block_invoke_2;
  v15[3] = &unk_278490958;
  v15[4] = &v19;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v16 errorHandler:v15];

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __82__ACHMonthlyChallengeDataSource_exerciseMinutesDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isPaused] & 1) == 0)
  {
    v3 = [v5 appleExerciseTime];
    [v3 doubleValueForUnit:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (double)walkingRunningDistanceDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28;
  v23 = __Block_byref_object_dispose__28;
  v24 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__ACHMonthlyChallengeDataSource_walkingRunningDistanceDuringDateComponentInterval_error___block_invoke;
  v16[3] = &unk_278492AD0;
  v18 = &v25;
  v9 = meterUnit;
  v17 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__ACHMonthlyChallengeDataSource_walkingRunningDistanceDuringDateComponentInterval_error___block_invoke_2;
  v15[3] = &unk_278490958;
  v15[4] = &v19;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v16 errorHandler:v15];

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __89__ACHMonthlyChallengeDataSource_walkingRunningDistanceDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isPaused] & 1) == 0)
  {
    v3 = [v5 distanceWalkingRunning];
    [v3 doubleValueForUnit:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (int64_t)numberOfMoveRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__ACHMonthlyChallengeDataSource_numberOfMoveRingsClosedDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ACHMonthlyChallengeDataSource_numberOfMoveRingsClosedDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

uint64_t __90__ACHMonthlyChallengeDataSource_numberOfMoveRingsClosedDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 isPaused];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v3 = [v7 activityMoveMode] == 2 ? objc_msgSend(v7, "_moveMinutesCompletionPercentage") : objc_msgSend(v7, "_activeEnergyCompletionPercentage");
    v4 = v7;
    if (v5 >= 1.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (int64_t)numberOfExerciseRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__ACHMonthlyChallengeDataSource_numberOfExerciseRingsClosedDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ACHMonthlyChallengeDataSource_numberOfExerciseRingsClosedDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __94__ACHMonthlyChallengeDataSource_numberOfExerciseRingsClosedDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isPaused] & 1) == 0)
  {
    [v4 _exerciseTimeCompletionPercentage];
    if (v3 >= 1.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

- (int64_t)numberOfStandRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__ACHMonthlyChallengeDataSource_numberOfStandRingsClosedDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACHMonthlyChallengeDataSource_numberOfStandRingsClosedDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __91__ACHMonthlyChallengeDataSource_numberOfStandRingsClosedDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isPaused] & 1) == 0)
  {
    [v4 _standHoursCompletionPercentage];
    if (v3 >= 1.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

- (int64_t)numberOfAllRingsClosedDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__ACHMonthlyChallengeDataSource_numberOfAllRingsClosedDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ACHMonthlyChallengeDataSource_numberOfAllRingsClosedDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __89__ACHMonthlyChallengeDataSource_numberOfAllRingsClosedDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([v8 isPaused] & 1) == 0)
  {
    if ([v8 activityMoveMode] == 2)
    {
      [v8 _moveMinutesCompletionPercentage];
    }

    else
    {
      [v8 _activeEnergyCompletionPercentage];
    }

    v4 = v3;
    [v8 _exerciseTimeCompletionPercentage];
    v6 = v5;
    [v8 _standHoursCompletionPercentage];
    if (v4 >= 1.0 && v6 >= 1.0 && v7 >= 1.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

- (int64_t)numberOfDaysDoublingMoveGoalDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__ACHMonthlyChallengeDataSource_numberOfDaysDoublingMoveGoalDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__ACHMonthlyChallengeDataSource_numberOfDaysDoublingMoveGoalDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

uint64_t __95__ACHMonthlyChallengeDataSource_numberOfDaysDoublingMoveGoalDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 isPaused];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v3 = [v7 activityMoveMode] == 2 ? objc_msgSend(v7, "_moveMinutesCompletionPercentage") : objc_msgSend(v7, "_activeEnergyCompletionPercentage");
    v4 = v7;
    if (v5 >= 2.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (int64_t)numberOfDaysDoublingExerciseGoalDuringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__ACHMonthlyChallengeDataSource_numberOfDaysDoublingExerciseGoalDuringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_2784913B0;
  v14[4] = &v21;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__ACHMonthlyChallengeDataSource_numberOfDaysDoublingExerciseGoalDuringDateComponentInterval_error___block_invoke_2;
  v13[3] = &unk_278490958;
  v13[4] = &v15;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v14 errorHandler:v13];

  v8 = v16[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __99__ACHMonthlyChallengeDataSource_numberOfDaysDoublingExerciseGoalDuringDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isPaused] & 1) == 0)
  {
    [v4 _exerciseTimeCompletionPercentage];
    if (v3 >= 2.0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

- (int64_t)numberOfWorkoutsCompletedDuringDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  workoutClient = [(ACHMonthlyChallengeDataSource *)self workoutClient];
  v8 = [workoutClient numberOfWorkoutsWithDuration:intervalCopy containedInInterval:error error:300.0];

  return v8;
}

- (int64_t)numberOfCompletedWorkoutsOfType:(unint64_t)type andLocation:(unint64_t)location duringDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  workoutClient = [(ACHMonthlyChallengeDataSource *)self workoutClient];
  v12 = [workoutClient numberOfFirstPartyWorkoutsWithDuration:type withType:location andLocation:intervalCopy containedInInterval:error error:300.0];

  return v12;
}

- (int64_t)longestStreakOfType:(unint64_t)type duringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__ACHMonthlyChallengeDataSource_longestStreakOfType_duringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_278492AF8;
  v14[4] = &v15;
  v14[5] = &v21;
  [(ACHMonthlyChallengeDataSource *)self _getCurrentAndLongestStreakForStreakType:type duringDateComponentInterval:intervalCopy completion:v14];
  v9 = v16[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = *(v22 + 6);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v12;
}

void __87__ACHMonthlyChallengeDataSource_longestStreakOfType_duringDateComponentInterval_error___block_invoke(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v7 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (int64_t)currentStreakOfType:(unint64_t)type duringDateComponentInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__ACHMonthlyChallengeDataSource_currentStreakOfType_duringDateComponentInterval_error___block_invoke;
  v14[3] = &unk_278492AF8;
  v14[4] = &v15;
  v14[5] = &v21;
  [(ACHMonthlyChallengeDataSource *)self _getCurrentAndLongestStreakForStreakType:type duringDateComponentInterval:intervalCopy completion:v14];
  v9 = v16[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = *(v22 + 6);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v12;
}

void __87__ACHMonthlyChallengeDataSource_currentStreakOfType_duringDateComponentInterval_error___block_invoke(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v7 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)_getCurrentAndLongestStreakForStreakType:(unint64_t)type duringDateComponentInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__28;
  v17 = __Block_byref_object_dispose__28;
  v18 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__ACHMonthlyChallengeDataSource__getCurrentAndLongestStreakForStreakType_duringDateComponentInterval_completion___block_invoke;
  v12[3] = &unk_278492B20;
  v12[5] = &v19;
  v12[6] = type;
  v12[4] = &v23;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__ACHMonthlyChallengeDataSource__getCurrentAndLongestStreakForStreakType_duringDateComponentInterval_completion___block_invoke_2;
  v11[3] = &unk_278490958;
  v11[4] = &v13;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v12 errorHandler:v11];

  (*(completionCopy + 2))(completionCopy, *(v24 + 6), *(v20 + 6), v14[5]);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __113__ACHMonthlyChallengeDataSource__getCurrentAndLongestStreakForStreakType_duringDateComponentInterval_completion___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  if ([v12 isPaused])
  {
    goto LABEL_15;
  }

  v3 = a1[6];
  if (v3 == 2)
  {
    [v12 _standHoursCompletionPercentage];
  }

  else if (v3 == 1)
  {
    [v12 _exerciseTimeCompletionPercentage];
  }

  else
  {
    if (v3)
    {
LABEL_9:
      v8 = *(a1[5] + 8);
      v9 = *(*(a1[4] + 8) + 24);
      if (*(v8 + 24) > v9)
      {
        v9 = *(v8 + 24);
      }

      *(v8 + 24) = v9;
      *(*(a1[4] + 8) + 24) = 0;
      goto LABEL_15;
    }

    [v12 _activeEnergyCompletionPercentage];
    v5 = v4;
    [v12 _moveMinutesCompletionPercentage];
    v7 = v5 + v6;
  }

  if (v7 < 1.0)
  {
    goto LABEL_9;
  }

  ++*(*(a1[4] + 8) + 24);
  v10 = *(a1[5] + 8);
  v11 = *(*(a1[4] + 8) + 24);
  if (*(v10 + 24) > v11)
  {
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11;
LABEL_15:
}

- (double)_numberOfDaysWithQuantity:(id)quantity overThreshold:(double)threshold forDateComponentInterval:(id)interval error:(id *)error
{
  quantityCopy = quantity;
  intervalCopy = interval;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__28;
  v28 = __Block_byref_object_dispose__28;
  v29 = 0;
  activitySummaryIterator = [(ACHMonthlyChallengeDataSource *)self activitySummaryIterator];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __104__ACHMonthlyChallengeDataSource__numberOfDaysWithQuantity_overThreshold_forDateComponentInterval_error___block_invoke;
  v20[3] = &unk_278492B68;
  v13 = quantityCopy;
  thresholdCopy = threshold;
  v21 = v13;
  v22 = &v30;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __104__ACHMonthlyChallengeDataSource__numberOfDaysWithQuantity_overThreshold_forDateComponentInterval_error___block_invoke_2;
  v19[3] = &unk_278490958;
  v19[4] = &v24;
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:intervalCopy handler:v20 errorHandler:v19];

  v14 = v25[5];
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v17 = v31[3];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v17;
}

void __104__ACHMonthlyChallengeDataSource__numberOfDaysWithQuantity_overThreshold_forDateComponentInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isPaused] & 1) == 0)
  {
    v3 = (*(*(a1 + 32) + 16))();
    [v3 _value];
    v5 = v4;
    v6 = *(a1 + 48);

    if (v5 >= v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 1.0;
    }
  }
}

- (id)_inclusiveDateIntervalFor:(id)for andDateComponentInterval:(id)interval
{
  intervalCopy = interval;
  forCopy = for;
  startDateComponents = [intervalCopy startDateComponents];
  v8 = [forCopy dateFromComponents:startDateComponents];
  v9 = [forCopy startOfDayForDate:v8];

  endDateComponents = [intervalCopy endDateComponents];

  v11 = [forCopy dateFromComponents:endDateComponents];
  v12 = [forCopy startOfDayForDate:v11];

  v13 = [forCopy hk_dateByAddingDays:1 toDate:v12];

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v13];

  return v14;
}

@end