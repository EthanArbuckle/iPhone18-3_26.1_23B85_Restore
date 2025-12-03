@interface ACHActivityAwardingEnvironment
- (ACHActivityAwardingDataProvider)dataProvider;
- (ACHActivityAwardingEnvironment)initWithDataProvider:(id)provider;
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
- (id)valueForKey:(id)key;
- (id)valueForUndefinedKey:(id)key;
- (id)yesterdayExerciseValue;
- (id)yesterdayMoveTimeValue;
- (id)yesterdayMoveValue;
- (id)yesterdayStandValue;
- (int64_t)todayActivityMoveMode;
- (void)setCurrentDateComponents:(id)components;
@end

@implementation ACHActivityAwardingEnvironment

- (int64_t)todayActivityMoveMode
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayActivitySummary = [dataProvider todayActivitySummary];
  activityMoveMode = [todayActivitySummary activityMoveMode];

  return activityMoveMode;
}

- (id)bestMoveTimeValue
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestMoveTimeValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)bestMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "bestMoveStreak")}];

  return v5;
}

- (id)todayMoveTimeGoal
{
  v3 = ACHCanonicalUnitForGoalType(3);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveTimeGoal = [dataProvider todayMoveTimeGoal];
  [todayMoveTimeGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentWeekStandStreak")}];

  return v5;
}

- (id)currentMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentMoveStreak")}];

  return v5;
}

- (id)totalMoveGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalMoveGoalsMade")}];

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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveGoal = [dataProvider todayMoveGoal];
  [todayMoveGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveValue = [dataProvider todayMoveValue];
  [todayMoveValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)bestExerciseValue
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestExerciseValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)todayExerciseValue
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayExerciseValue = [dataProvider todayExerciseValue];
  [todayExerciseValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)currentWeekStreakForAllActivity
{
  currentWeekMoveStreak = [(ACHActivityAwardingEnvironment *)self currentWeekMoveStreak];
  integerValue = [currentWeekMoveStreak integerValue];

  currentWeekExerciseStreak = [(ACHActivityAwardingEnvironment *)self currentWeekExerciseStreak];
  integerValue2 = [currentWeekExerciseStreak integerValue];

  if (integerValue >= integerValue2)
  {
    integerValue = integerValue2;
  }

  currentWeekStandStreak = [(ACHActivityAwardingEnvironment *)self currentWeekStandStreak];
  integerValue3 = [currentWeekStandStreak integerValue];

  if (integerValue >= integerValue3)
  {
    v9 = integerValue3;
  }

  else
  {
    v9 = integerValue;
  }

  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithInteger:v9];
}

- (id)currentWeekMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentWeekMoveStreak")}];

  return v5;
}

- (id)currentWeekExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentWeekExerciseStreak")}];

  return v5;
}

- (id)totalAllGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalAllGoalsMade")}];

  return v5;
}

- (id)todayMoveTimeValue
{
  v3 = ACHCanonicalUnitForGoalType(3);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveTimeValue = [dataProvider todayMoveTimeValue];
  [todayMoveTimeValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)numberOfDaysInThisMonth
{
  dateCache = [(ACHActivityAwardingEnvironment *)self dateCache];
  numberOfDaysInThisMonth = [dateCache numberOfDaysInThisMonth];

  return numberOfDaysInThisMonth;
}

- (id)currentMonthMoveStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentMonthMoveStreak")}];

  return v5;
}

- (id)bestMoveValue
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestMoveValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (ACHActivityAwardingEnvironment)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ACHActivityAwardingEnvironment;
  v5 = [(ACHActivityAwardingEnvironment *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataProvider, providerCopy);
    v7 = [ACHActivityAwardingDateCache alloc];
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v9 = [(ACHActivityAwardingDateCache *)v7 initWithCalendar:autoupdatingCurrentCalendar];
    dateCache = v6->_dateCache;
    v6->_dateCache = v9;

    v6->_experienceType = 3;
  }

  return v6;
}

- (void)setCurrentDateComponents:(id)components
{
  componentsCopy = components;
  dateCache = [(ACHActivityAwardingEnvironment *)self dateCache];
  [dateCache setCurrentDateComponents:componentsCopy];
}

- (id)valueForKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(ACHActivityAwardingEnvironment *)self valueForKeyLoggingEnabled])
  {
    v10.receiver = self;
    v10.super_class = ACHActivityAwardingEnvironment;
    v5 = [(ACHActivityAwardingEnvironment *)&v10 valueForKey:keyCopy];
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = keyCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ACHActivityAwardingEnvironment;
    v5 = [(ACHActivityAwardingEnvironment *)&v9 valueForKey:keyCopy];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)valueForUndefinedKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = ACHLogAwardEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = keyCopy;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Activity Awarding environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)todayIsStandalonePhoneFitnessMode
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayActivitySummary = [dataProvider todayActivitySummary];
  _isStandalonePhoneSummary = [todayActivitySummary _isStandalonePhoneSummary];

  return _isStandalonePhoneSummary;
}

- (id)yesterdayMoveValue
{
  v3 = ACHCanonicalUnitForGoalType(0);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  yesterdayMoveValue = [dataProvider yesterdayMoveValue];
  [yesterdayMoveValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestMoveGoal
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = MEMORY[0x277CCABB0];
  [previousValues bestMoveGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestMoveGoal
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestMoveGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)totalDaysOfMoveHistory
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalMoveGoalsAttempted")}];

  return v5;
}

- (id)previousBestMoveStreak
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(previousValues, "bestMoveStreak")}];

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

  todayActivityMoveMode = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v10 = dataProvider;
  if (todayActivityMoveMode == 2)
  {
    [dataProvider todayMoveTimeGoal];
  }

  else
  {
    [dataProvider todayMoveGoal];
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
  todayActivityMoveMode = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v7 = dataProvider;
  if (todayActivityMoveMode == 2)
  {
    [dataProvider previousProcessedTodayMoveTimeValue];
  }

  else
  {
    [dataProvider previousProcessedTodayMoveValue];
  }
  v8 = ;
  [v8 doubleValueForUnit:v4];
  v10 = v9;

  todayActivityMoveMode2 = [(ACHActivityAwardingEnvironment *)self todayActivityMoveMode];
  dataProvider2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  v13 = dataProvider2;
  if (todayActivityMoveMode2 == 2)
  {
    [dataProvider2 todayMoveTimeGoal];
  }

  else
  {
    [dataProvider2 todayMoveGoal];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  yesterdayMoveTimeValue = [dataProvider yesterdayMoveTimeValue];
  [yesterdayMoveTimeValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestMoveTimeGoal
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = MEMORY[0x277CCABB0];
  [previousValues bestMoveTimeGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestMoveTimeGoal
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestMoveTimeGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)currentMoveTimePercentage
{
  v3 = ACHCanonicalUnitForGoalType(0);
  todayMoveValue = [(ACHActivityAwardingEnvironment *)self todayMoveValue];
  [todayMoveValue doubleValue];
  v6 = v5;

  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveGoal = [dataProvider todayMoveGoal];
  [todayMoveGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  previousProcessedTodayMoveValue = [dataProvider previousProcessedTodayMoveValue];
  [previousProcessedTodayMoveValue doubleValueForUnit:v3];
  v7 = v6;

  dataProvider2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayMoveGoal = [dataProvider2 todayMoveGoal];
  [todayMoveGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayExerciseGoal = [dataProvider todayExerciseGoal];
  [todayExerciseGoal doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)yesterdayExerciseValue
{
  v3 = ACHCanonicalUnitForGoalType(1);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  yesterdayExerciseValue = [dataProvider yesterdayExerciseValue];
  [yesterdayExerciseValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)previousBestExerciseGoal
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = MEMORY[0x277CCABB0];
  [previousValues bestExerciseGoalValue];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

- (id)bestExerciseGoal
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  [properties bestExerciseGoalValue];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)totalDaysOfExerciseHistory
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalExerciseGoalsAttempted")}];

  return v5;
}

- (id)totalExerciseGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalExerciseGoalsMade")}];

  return v5;
}

- (id)currentExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentExerciseStreak")}];

  return v5;
}

- (id)bestExerciseStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "bestExerciseStreak")}];

  return v5;
}

- (id)previousBestExerciseStreak
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(previousValues, "bestExerciseStreak")}];

  return v5;
}

- (id)currentExercisePercentage
{
  v3 = ACHCanonicalUnitForGoalType(1);
  todayExerciseValue = [(ACHActivityAwardingEnvironment *)self todayExerciseValue];
  [todayExerciseValue doubleValue];
  v6 = v5;

  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayExerciseGoal = [dataProvider todayExerciseGoal];
  [todayExerciseGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  previousProcessedTodayExerciseValue = [dataProvider previousProcessedTodayExerciseValue];
  [previousProcessedTodayExerciseValue doubleValueForUnit:v3];
  v7 = v6;

  dataProvider2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayExerciseGoal = [dataProvider2 todayExerciseGoal];
  [todayExerciseGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayStandValue = [dataProvider todayStandValue];
  [todayStandValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)todayStandGoal
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayStandGoal = [dataProvider todayStandGoal];
  [todayStandGoal doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)yesterdayStandValue
{
  v3 = ACHCanonicalUnitForGoalType(2);
  v4 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  yesterdayStandValue = [dataProvider yesterdayStandValue];
  [yesterdayStandValue doubleValueForUnit:v3];
  v7 = [v4 numberWithDouble:?];

  return v7;
}

- (id)bestStandValue
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "bestStandValue")}];

  return v5;
}

- (id)previousBestStandGoal
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(previousValues, "bestStandGoalValue")}];

  return v5;
}

- (id)bestStandGoal
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "bestStandGoalValue")}];

  return v5;
}

- (id)totalDaysOfStandHistory
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalStandGoalsAttempted")}];

  return v5;
}

- (id)totalStandGoalsMet
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "totalStandGoalsMade")}];

  return v5;
}

- (id)currentStandStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "currentStandStreak")}];

  return v5;
}

- (id)bestStandStreak
{
  v2 = MEMORY[0x277CCABB0];
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(properties, "bestStandStreak")}];

  return v5;
}

- (id)previousBestStandStreak
{
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  properties = [dataProvider properties];
  previousValues = [properties previousValues];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(previousValues, "bestStandStreak")}];

  return v5;
}

- (id)currentStandPercentage
{
  v3 = ACHCanonicalUnitForGoalType(2);
  todayStandValue = [(ACHActivityAwardingEnvironment *)self todayStandValue];
  [todayStandValue doubleValue];
  v6 = v5;

  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayStandGoal = [dataProvider todayStandGoal];
  [todayStandGoal doubleValueForUnit:v3];
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
  dataProvider = [(ACHActivityAwardingEnvironment *)self dataProvider];
  previousProcessedTodayStandValue = [dataProvider previousProcessedTodayStandValue];
  [previousProcessedTodayStandValue doubleValueForUnit:v3];
  v7 = v6;

  dataProvider2 = [(ACHActivityAwardingEnvironment *)self dataProvider];
  todayStandGoal = [dataProvider2 todayStandGoal];
  [todayStandGoal doubleValueForUnit:v3];
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
  currentMoveStreak = [(ACHActivityAwardingEnvironment *)self currentMoveStreak];
  integerValue = [currentMoveStreak integerValue];

  currentExerciseStreak = [(ACHActivityAwardingEnvironment *)self currentExerciseStreak];
  integerValue2 = [currentExerciseStreak integerValue];

  if (integerValue >= integerValue2)
  {
    integerValue = integerValue2;
  }

  currentStandStreak = [(ACHActivityAwardingEnvironment *)self currentStandStreak];
  integerValue3 = [currentStandStreak integerValue];

  if (integerValue >= integerValue3)
  {
    v9 = integerValue3;
  }

  else
  {
    v9 = integerValue;
  }

  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithInteger:v9];
}

- (id)dayOfWeekForToday
{
  dateCache = [(ACHActivityAwardingEnvironment *)self dateCache];
  dayOfWeekForToday = [dateCache dayOfWeekForToday];

  return dayOfWeekForToday;
}

- (id)dayOfWeekForLastDayOfFitnessWeek
{
  dateCache = [(ACHActivityAwardingEnvironment *)self dateCache];
  dayOfWeekForLastDayOfFitnessWeek = [dateCache dayOfWeekForLastDayOfFitnessWeek];

  return dayOfWeekForLastDayOfFitnessWeek;
}

- (id)dayOfMonthForToday
{
  dateCache = [(ACHActivityAwardingEnvironment *)self dateCache];
  dayOfMonthForToday = [dateCache dayOfMonthForToday];

  return dayOfMonthForToday;
}

@end