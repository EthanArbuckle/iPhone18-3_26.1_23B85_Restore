@interface ACHActivityAwardingEnvironment
- (ACHActivityAwardingDataProvider)dataProvider;
- (ACHActivityAwardingEnvironment)initWithDataProvider:(id)a3;
- (BOOL)todayIsStandalonePhoneFitnessMode;
- (id)bestExerciseGoal;
- (id)bestExerciseStreak;
- (id)bestExerciseValue;
- (id)bestMoveGoal;
- (id)bestMoveStreak;
- (id)bestMoveTimeGoal;
- (id)bestMoveTimeValue;
- (id)bestMoveValue;
- (id)bestStandGoal;
- (id)bestStandStreak;
- (id)bestStandValue;
- (id)currentExercisePercentage;
- (id)currentExerciseStreak;
- (id)currentMonthMoveStreak;
- (id)currentMovePercentage;
- (id)currentMoveStreak;
- (id)currentMoveTimePercentage;
- (id)currentStandPercentage;
- (id)currentStandStreak;
- (id)currentStreakForAllActivity;
- (id)currentWeekExerciseStreak;
- (id)currentWeekMoveStreak;
- (id)currentWeekStandStreak;
- (id)currentWeekStreakForAllActivity;
- (id)dayOfMonthForToday;
- (id)dayOfWeekForLastDayOfFitnessWeek;
- (id)dayOfWeekForToday;
- (id)numberOfDaysInThisMonth;
- (id)previousBestExerciseGoal;
- (id)previousBestExerciseStreak;
- (id)previousBestMoveGoal;
- (id)previousBestMoveStreak;
- (id)previousBestMoveTimeGoal;
- (id)previousBestStandGoal;
- (id)previousBestStandStreak;
- (id)previousExercisePercentage;
- (id)previousMovePercentage;
- (id)previousMoveTimePercentage;
- (id)previousStandPercentage;
- (id)todayAgnosticMoveGoal;
- (id)todayAgnosticMoveValue;
- (id)todayExerciseGoal;
- (id)todayExerciseValue;
- (id)todayMoveGoal;
- (id)todayMoveTimeGoal;
- (id)todayMoveTimeValue;
- (id)todayMoveValue;
- (id)todayStandGoal;
- (id)todayStandValue;
- (id)totalAllGoalsMet;
- (id)totalDaysOfExerciseHistory;
- (id)totalDaysOfMoveHistory;
- (id)totalDaysOfStandHistory;
- (id)totalExerciseGoalsMet;
- (id)totalMoveGoalsMet;
- (id)totalStandGoalsMet;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (id)yesterdayExerciseValue;
- (id)yesterdayMoveTimeValue;
- (id)yesterdayMoveValue;
- (id)yesterdayStandValue;
- (int64_t)todayActivityMoveMode;
- (void)setCurrentDateComponents:(id)a3;
@end

@implementation ACHActivityAwardingEnvironment

- (int64_t)todayActivityMoveMode
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 todayActivitySummary];
  v4 = [v3 activityMoveMode];

  return v4;
}

- (id)bestMoveTimeValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestMoveTimeValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)bestMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "bestMoveStreak")}];

  return v5;
}

- (id)todayMoveTimeGoal
{
  v3 = ACHCanonicalUnitForGoalType(3);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayMoveTimeGoal];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (ACHActivityAwardingDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)currentWeekStandStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentWeekStandStreak")}];

  return v5;
}

- (id)currentMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentMoveStreak")}];

  return v5;
}

- (id)totalMoveGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalMoveGoalsMade")}];

  return v5;
}

- (id)todayAgnosticMoveGoal
{
  if ([(ACHActivityAwardingEnvironment *)self todayActivityMoveMode]== 2)
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveTimeGoal];
  }

  else
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveGoal];
  }
  v3 = ;

  return v3;
}

- (id)todayMoveGoal
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayMoveGoal];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)todayAgnosticMoveValue
{
  if ([(ACHActivityAwardingEnvironment *)self todayActivityMoveMode]== 2)
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveTimeValue];
  }

  else
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveValue];
  }
  v3 = ;

  return v3;
}

- (id)todayMoveValue
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayMoveValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)bestExerciseValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestExerciseValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)todayExerciseValue
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayExerciseValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)currentWeekStreakForAllActivity
{
  v3 = [(ACHActivityAwardingEnvironment *)self currentWeekMoveStreak];
  v4 = [v3 integerValue];

  v5 = [(ACHActivityAwardingEnvironment *)self currentWeekExerciseStreak];
  v6 = [v5 integerValue];

  if (v4 >= v6)
  {
    v4 = v6;
  }

  v7 = [(ACHActivityAwardingEnvironment *)self currentWeekStandStreak];
  v8 = [v7 integerValue];

  if (v4 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithInteger:v9];
}

- (id)currentWeekMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentWeekMoveStreak")}];

  return v5;
}

- (id)currentWeekExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentWeekExerciseStreak")}];

  return v5;
}

- (id)totalAllGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalAllGoalsMade")}];

  return v5;
}

- (id)todayMoveTimeValue
{
  v3 = ACHCanonicalUnitForGoalType(3);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayMoveTimeValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)numberOfDaysInThisMonth
{
  v2 = [(ACHActivityAwardingEnvironment *)self dateCache];
  v3 = [v2 numberOfDaysInThisMonth];

  return v3;
}

- (id)currentMonthMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentMonthMoveStreak")}];

  return v5;
}

- (id)bestMoveValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestMoveValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (ACHActivityAwardingEnvironment)initWithDataProvider:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ACHActivityAwardingEnvironment;
  v5 = [(ACHActivityAwardingEnvironment *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataProvider, v4);
    v7 = [ACHActivityAwardingDateCache alloc];
    v8 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v9 = [(ACHActivityAwardingDateCache *)v7 initWithCalendar:v8];
    dateCache = v6->_dateCache;
    v6->_dateCache = v9;

    v6->_experienceType = 3;
  }

  return v6;
}

- (void)setCurrentDateComponents:(id)a3
{
  v4 = a3;
  v5 = [(ACHActivityAwardingEnvironment *)self dateCache];
  [v5 setCurrentDateComponents:v4];
}

- (id)valueForKey:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ACHActivityAwardingEnvironment *)self valueForKeyLoggingEnabled])
  {
    v10.receiver = self;
    v10.super_class = ACHActivityAwardingEnvironment;
    v5 = [(ACHActivityAwardingEnvironment *)&v10 valueForKey:v4];
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ACHActivityAwardingEnvironment;
    v5 = [(ACHActivityAwardingEnvironment *)&v9 valueForKey:v4];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)valueForUndefinedKey:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ACHLogAwardEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Activity Awarding environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)todayIsStandalonePhoneFitnessMode
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 todayActivitySummary];
  v4 = [v3 _isStandalonePhoneSummary];

  return v4;
}

- (id)yesterdayMoveValue
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 yesterdayMoveValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestMoveGoal
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = MEMORY[0x277CCABB0];
  [v4 bestMoveGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestMoveGoal
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestMoveGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)totalDaysOfMoveHistory
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalMoveGoalsAttempted")}];

  return v5;
}

- (id)previousBestMoveStreak
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "bestMoveStreak")}];

  return v5;
}

- (id)currentMovePercentage
{
  if ([(ACHActivityAwardingEnvironment *)self todayActivityMoveMode]== 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v4 = ACHCanonicalUnitForGoalType(v3);
  if ([(ACHActivityAwardingEnvironment *)self todayActivityMoveMode]== 2)
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveTimeValue];
  }

  else
  {
    [(ACHActivityAwardingEnvironment *)self todayMoveValue];
  }
  v5 = ;
  [v5 doubleValue];
  v7 = v6;

  v8 = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  v9 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v10 = v9;
  if (v8 == 2)
  {
    [v9 todayMoveTimeGoal];
  }

  else
  {
    [v9 todayMoveGoal];
  }
  v11 = ;
  [v11 doubleValueForUnit:v4];
  v13 = v12;

  if (v13 >= 2.22044605e-16)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v13];
  }

  else
  {
    v14 = &unk_283555B60;
  }

  return v14;
}

- (id)previousMovePercentage
{
  if ([(ACHActivityAwardingEnvironment *)self todayActivityMoveMode]== 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v4 = ACHCanonicalUnitForGoalType(v3);
  v5 = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  v6 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v7 = v6;
  if (v5 == 2)
  {
    [v6 previousProcessedTodayMoveTimeValue];
  }

  else
  {
    [v6 previousProcessedTodayMoveValue];
  }
  v8 = ;
  [v8 doubleValueForUnit:v4];
  v10 = v9;

  v11 = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  v12 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v13 = v12;
  if (v11 == 2)
  {
    [v12 todayMoveTimeGoal];
  }

  else
  {
    [v12 todayMoveGoal];
  }
  v14 = ;
  [v14 doubleValueForUnit:v4];
  v16 = v15;

  if (v16 >= 2.22044605e-16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v10 / v16];
  }

  else
  {
    v17 = &unk_283555B60;
  }

  return v17;
}

- (id)yesterdayMoveTimeValue
{
  v3 = ACHCanonicalUnitForGoalType(3);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 yesterdayMoveTimeValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestMoveTimeGoal
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = MEMORY[0x277CCABB0];
  [v4 bestMoveTimeGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestMoveTimeGoal
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestMoveTimeGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)currentMoveTimePercentage
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = [(ACHActivityAwardingEnvironment *)self todayMoveValue];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v8 = [v7 todayMoveGoal];
  [v8 doubleValueForUnit:v3];
  v10 = v9;

  if (v10 >= 2.22044605e-16)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / v10];
  }

  else
  {
    v11 = &unk_283555B60;
  }

  return v11;
}

- (id)previousMoveTimePercentage
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v5 = [v4 previousProcessedTodayMoveValue];
  [v5 doubleValueForUnit:v3];
  v7 = v6;

  v8 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v9 = [v8 todayMoveGoal];
  [v9 doubleValueForUnit:v3];
  v11 = v10;

  if (v11 >= 2.22044605e-16)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v11];
  }

  else
  {
    v12 = &unk_283555B60;
  }

  return v12;
}

- (id)todayExerciseGoal
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayExerciseGoal];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)yesterdayExerciseValue
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 yesterdayExerciseValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestExerciseGoal
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = MEMORY[0x277CCABB0];
  [v4 bestExerciseGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestExerciseGoal
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  [v4 bestExerciseGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)totalDaysOfExerciseHistory
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalExerciseGoalsAttempted")}];

  return v5;
}

- (id)totalExerciseGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalExerciseGoalsMade")}];

  return v5;
}

- (id)currentExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentExerciseStreak")}];

  return v5;
}

- (id)bestExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "bestExerciseStreak")}];

  return v5;
}

- (id)previousBestExerciseStreak
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "bestExerciseStreak")}];

  return v5;
}

- (id)currentExercisePercentage
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = [(ACHActivityAwardingEnvironment *)self todayExerciseValue];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v8 = [v7 todayExerciseGoal];
  [v8 doubleValueForUnit:v3];
  v10 = v9;

  if (v10 >= 2.22044605e-16)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / v10];
  }

  else
  {
    v11 = &unk_283555B60;
  }

  return v11;
}

- (id)previousExercisePercentage
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v5 = [v4 previousProcessedTodayExerciseValue];
  [v5 doubleValueForUnit:v3];
  v7 = v6;

  v8 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v9 = [v8 todayExerciseGoal];
  [v9 doubleValueForUnit:v3];
  v11 = v10;

  if (v11 >= 2.22044605e-16)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v11];
  }

  else
  {
    v12 = &unk_283555B60;
  }

  return v12;
}

- (id)todayStandValue
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayStandValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)todayStandGoal
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 todayStandGoal];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)yesterdayStandValue
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v6 = [v5 yesterdayStandValue];
  [v6 doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)bestStandValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "bestStandValue")}];

  return v5;
}

- (id)previousBestStandGoal
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "bestStandGoalValue")}];

  return v5;
}

- (id)bestStandGoal
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "bestStandGoalValue")}];

  return v5;
}

- (id)totalDaysOfStandHistory
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalStandGoalsAttempted")}];

  return v5;
}

- (id)totalStandGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "totalStandGoalsMade")}];

  return v5;
}

- (id)currentStandStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "currentStandStreak")}];

  return v5;
}

- (id)bestStandStreak
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v4 = [v3 properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "bestStandStreak")}];

  return v5;
}

- (id)previousBestStandStreak
{
  v2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v3 = [v2 properties];
  v4 = [v3 previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "bestStandStreak")}];

  return v5;
}

- (id)currentStandPercentage
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = [(ACHActivityAwardingEnvironment *)self todayStandValue];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v8 = [v7 todayStandGoal];
  [v8 doubleValueForUnit:v3];
  v10 = v9;

  if (v10 >= 2.22044605e-16)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / v10];
  }

  else
  {
    v11 = &unk_283555B60;
  }

  return v11;
}

- (id)previousStandPercentage
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v5 = [v4 previousProcessedTodayStandValue];
  [v5 doubleValueForUnit:v3];
  v7 = v6;

  v8 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v9 = [v8 todayStandGoal];
  [v9 doubleValueForUnit:v3];
  v11 = v10;

  if (v11 >= 2.22044605e-16)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v11];
  }

  else
  {
    v12 = &unk_283555B60;
  }

  return v12;
}

- (id)currentStreakForAllActivity
{
  v3 = [(ACHActivityAwardingEnvironment *)self currentMoveStreak];
  v4 = [v3 integerValue];

  v5 = [(ACHActivityAwardingEnvironment *)self currentExerciseStreak];
  v6 = [v5 integerValue];

  if (v4 >= v6)
  {
    v4 = v6;
  }

  v7 = [(ACHActivityAwardingEnvironment *)self currentStandStreak];
  v8 = [v7 integerValue];

  if (v4 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithInteger:v9];
}

- (id)dayOfWeekForToday
{
  v2 = [(ACHActivityAwardingEnvironment *)self dateCache];
  v3 = [v2 dayOfWeekForToday];

  return v3;
}

- (id)dayOfWeekForLastDayOfFitnessWeek
{
  v2 = [(ACHActivityAwardingEnvironment *)self dateCache];
  v3 = [v2 dayOfWeekForLastDayOfFitnessWeek];

  return v3;
}

- (id)dayOfMonthForToday
{
  v2 = [(ACHActivityAwardingEnvironment *)self dateCache];
  v3 = [v2 dayOfMonthForToday];

  return v3;
}

@end