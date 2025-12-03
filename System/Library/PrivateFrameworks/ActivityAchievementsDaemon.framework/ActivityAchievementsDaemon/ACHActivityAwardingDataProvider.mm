@interface ACHActivityAwardingDataProvider
- ($A5E8A54F69D71102DC6A95EAED28A9DA)_baseMoveState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentExerciseState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveTimeState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStandState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStateForGoalType:(SEL)type;
- (ACHActivityAwardingDataProvider)init;
- (BOOL)allGoalsMetToday;
- (BOOL)ringsPausedToday;
- (HKQuantity)todayExerciseGoal;
- (HKQuantity)todayExerciseValue;
- (HKQuantity)todayMoveGoal;
- (HKQuantity)todayMoveTimeGoal;
- (HKQuantity)todayMoveTimeValue;
- (HKQuantity)todayMoveValue;
- (HKQuantity)todayStandGoal;
- (HKQuantity)todayStandValue;
- (HKQuantity)yesterdayExerciseGoal;
- (HKQuantity)yesterdayExerciseValue;
- (HKQuantity)yesterdayMoveGoal;
- (HKQuantity)yesterdayMoveTimeGoal;
- (HKQuantity)yesterdayMoveTimeValue;
- (HKQuantity)yesterdayMoveValue;
- (HKQuantity)yesterdayStandGoal;
- (HKQuantity)yesterdayStandValue;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)todayIndex;
- (void)_setBaseMoveState:(id *)state;
- (void)clearAllProperties;
- (void)setLastCheckedIndex:(int64_t)index;
- (void)setNewExerciseState:(id *)state;
- (void)setNewMoveState:(id *)state;
- (void)setNewMoveTimeState:(id *)state;
- (void)setNewStandState:(id *)state;
- (void)setNewState:(id *)state forGoalType:(int64_t)type;
- (void)updatePreviousPropertiesWithCurrentProperties;
@end

@implementation ACHActivityAwardingDataProvider

- (HKQuantity)todayMoveTimeGoal
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleMoveTimeGoal = [todayActivitySummary appleMoveTimeGoal];

  return appleMoveTimeGoal;
}

- (HKQuantity)todayMoveGoal
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  activeEnergyBurnedGoal = [todayActivitySummary activeEnergyBurnedGoal];

  return activeEnergyBurnedGoal;
}

- (HKQuantity)todayMoveValue
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  activeEnergyBurned = [todayActivitySummary activeEnergyBurned];

  return activeEnergyBurned;
}

- (HKQuantity)todayExerciseValue
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleExerciseTime = [todayActivitySummary appleExerciseTime];

  return appleExerciseTime;
}

- (HKQuantity)todayMoveTimeValue
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleMoveTime = [todayActivitySummary appleMoveTime];

  return appleMoveTime;
}

- (ACHActivityAwardingDataProvider)init
{
  v6.receiver = self;
  v6.super_class = ACHActivityAwardingDataProvider;
  v2 = [(ACHActivityAwardingDataProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ACHDataStoreActivityProperties);
    properties = v2->_properties;
    v2->_properties = v3;
  }

  return v2;
}

- (void)updatePreviousPropertiesWithCurrentProperties
{
  previousValues = [(ACHDataStoreActivityProperties *)self->_properties previousValues];

  if (!previousValues)
  {
    properties = self->_properties;
    v5 = objc_alloc_init(objc_opt_class());
    [(ACHDataStoreActivityProperties *)self->_properties setPreviousValues:v5];
  }

  previousValues2 = [(ACHDataStoreActivityProperties *)self->_properties previousValues];
  dictionaryRepresentation = [(ACHDataStoreActivityProperties *)self->_properties dictionaryRepresentation];
  [previousValues2 setValuesForKeysWithDictionary:dictionaryRepresentation];
}

- (void)clearAllProperties
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  dictionaryKeys = [(ACHDataStoreActivityProperties *)self->_properties dictionaryKeys];
  v4 = [dictionaryKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(dictionaryKeys);
        }

        [(ACHDataStoreActivityProperties *)self->_properties setValue:&unk_283555C08 forKey:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [dictionaryKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(ACHDataStoreActivityProperties *)self->_properties setPreviousValues:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastCheckedIndex:(int64_t)index
{
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForMove:?];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForExercise:index];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForStand:index];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForAllGoals:index];

  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForDistance:index];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ACHActivityAwardingDataProvider allocWithZone:?]];
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  [(ACHActivityAwardingDataProvider *)v4 setTodayActivitySummary:todayActivitySummary];

  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  [(ACHActivityAwardingDataProvider *)v4 setYesterdayActivitySummary:yesterdayActivitySummary];

  properties = [(ACHActivityAwardingDataProvider *)v4 properties];
  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  dictionaryRepresentation = [properties2 dictionaryRepresentation];
  [properties setValuesForKeysWithDictionary:dictionaryRepresentation];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForMove:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForMove]];
  lastProcessedTodayMoveValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayMoveValue:lastProcessedTodayMoveValue];

  previousProcessedTodayMoveValue = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayMoveValue:previousProcessedTodayMoveValue];

  lastTodayMoveGoal = [(ACHActivityAwardingDataProvider *)self lastTodayMoveGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayMoveGoal:lastTodayMoveGoal];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForExercise:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForExercise]];
  lastProcessedTodayExerciseValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayExerciseValue:lastProcessedTodayExerciseValue];

  previousProcessedTodayExerciseValue = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayExerciseValue:previousProcessedTodayExerciseValue];

  lastTodayExerciseGoal = [(ACHActivityAwardingDataProvider *)self lastTodayExerciseGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayExerciseGoal:lastTodayExerciseGoal];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForStand:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForStand]];
  lastProcessedTodayStandValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayStandValue:lastProcessedTodayStandValue];

  previousProcessedTodayStandValue = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayStandValue:previousProcessedTodayStandValue];

  lastTodayStandGoal = [(ACHActivityAwardingDataProvider *)self lastTodayStandGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayStandGoal:lastTodayStandGoal];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForAllGoals:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForAllGoals]];
  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForDistance:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForDistance]];
  lastTodayDistanceValue = [(ACHActivityAwardingDataProvider *)self lastTodayDistanceValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayDistanceValue:lastTodayDistanceValue];

  return v4;
}

- (int64_t)todayIndex
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  _activitySummaryIndex = [todayActivitySummary _activitySummaryIndex];

  return _activitySummaryIndex;
}

- (BOOL)ringsPausedToday
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  isPaused = [todayActivitySummary isPaused];

  return isPaused;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStateForGoalType:(SEL)type
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      return [($A5E8A54F69D71102DC6A95EAED28A9DA *)self currentStandState];
    }

    else if (a4 == 3)
    {
      return [($A5E8A54F69D71102DC6A95EAED28A9DA *)self currentMoveTimeState];
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      return [($A5E8A54F69D71102DC6A95EAED28A9DA *)self currentExerciseState];
    }
  }

  else
  {
    return [($A5E8A54F69D71102DC6A95EAED28A9DA *)self currentMoveState];
  }

  return self;
}

- (void)setNewState:(id *)state forGoalType:(int64_t)type
{
  if (type > 1)
  {
    if (type == 2)
    {
      v16 = *&state->var14;
      v26 = *&state->var12;
      v27 = v16;
      v28 = *&state->var16;
      v17 = *&state->var6;
      v22 = *&state->var4;
      v23 = v17;
      v18 = *&state->var10;
      v24 = *&state->var8;
      v25 = v18;
      v19 = *&state->var2;
      v20 = *&state->var0;
      v21 = v19;
      [(ACHActivityAwardingDataProvider *)self setNewStandState:&v20];
    }

    else if (type == 3)
    {
      v8 = *&state->var14;
      v26 = *&state->var12;
      v27 = v8;
      v28 = *&state->var16;
      v9 = *&state->var6;
      v22 = *&state->var4;
      v23 = v9;
      v10 = *&state->var10;
      v24 = *&state->var8;
      v25 = v10;
      v11 = *&state->var2;
      v20 = *&state->var0;
      v21 = v11;
      [(ACHActivityAwardingDataProvider *)self setNewMoveTimeState:&v20];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v4 = *&state->var14;
      v26 = *&state->var12;
      v27 = v4;
      v28 = *&state->var16;
      v5 = *&state->var6;
      v22 = *&state->var4;
      v23 = v5;
      v6 = *&state->var10;
      v24 = *&state->var8;
      v25 = v6;
      v7 = *&state->var2;
      v20 = *&state->var0;
      v21 = v7;
      [(ACHActivityAwardingDataProvider *)self setNewExerciseState:&v20];
    }
  }

  else
  {
    v12 = *&state->var14;
    v26 = *&state->var12;
    v27 = v12;
    v28 = *&state->var16;
    v13 = *&state->var6;
    v22 = *&state->var4;
    v23 = v13;
    v14 = *&state->var10;
    v24 = *&state->var8;
    v25 = v14;
    v15 = *&state->var2;
    v20 = *&state->var0;
    v21 = v15;
    [(ACHActivityAwardingDataProvider *)self setNewMoveState:&v20];
  }
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveState
{
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  [(ACHActivityAwardingDataProvider *)self _baseMoveState];
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties bestMoveGoalValue];
  retstr->var15 = v5;

  return result;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveTimeState
{
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  [(ACHActivityAwardingDataProvider *)self _baseMoveState];
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties bestMoveTimeGoalValue];
  retstr->var15 = v5;

  return result;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)_baseMoveState
{
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  retstr->var0 = [(ACHActivityAwardingDataProvider *)self lastCheckedIndexForMove];
  retstr->var1 = [(ACHActivityAwardingDataProvider *)self todayIndex];
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties bestMoveValue];
  retstr->var13 = v6;

  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties2 bestMoveTimeValue];
  retstr->var14 = v8;

  v43 = ACHCanonicalUnitForGoalType(0);
  v9 = ACHCanonicalUnitForGoalType(3);
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  activityMoveMode = [todayActivitySummary activityMoveMode];

  if (activityMoveMode == 2)
  {
    lastProcessedTodayMoveTimeValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveTimeValue];
    [lastProcessedTodayMoveTimeValue doubleValueForUnit:v9];
    retstr->var2 = v13;

    todayMoveTimeValue = [(ACHActivityAwardingDataProvider *)self todayMoveTimeValue];
    [todayMoveTimeValue doubleValueForUnit:v9];
    retstr->var3 = v15;

    todayMoveTimeGoal = [(ACHActivityAwardingDataProvider *)self todayMoveTimeGoal];
    v17 = todayMoveTimeGoal;
    v18 = v9;
  }

  else
  {
    lastProcessedTodayMoveValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
    [lastProcessedTodayMoveValue doubleValueForUnit:v43];
    retstr->var2 = v20;

    todayMoveValue = [(ACHActivityAwardingDataProvider *)self todayMoveValue];
    [todayMoveValue doubleValueForUnit:v43];
    retstr->var3 = v22;

    todayMoveTimeGoal = [(ACHActivityAwardingDataProvider *)self todayMoveGoal];
    v17 = todayMoveTimeGoal;
    v18 = v43;
  }

  [todayMoveTimeGoal doubleValueForUnit:v18];
  v24 = v23;

  retstr->var4 = v24;
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  activityMoveMode2 = [yesterdayActivitySummary activityMoveMode];

  if (activityMoveMode2 == 2)
  {
    yesterdayMoveTimeValue = [(ACHActivityAwardingDataProvider *)self yesterdayMoveTimeValue];
    [yesterdayMoveTimeValue doubleValueForUnit:v9];
    retstr->var5 = v28;

    yesterdayMoveTimeGoal = [(ACHActivityAwardingDataProvider *)self yesterdayMoveTimeGoal];
    v30 = yesterdayMoveTimeGoal;
    v31 = v9;
  }

  else
  {
    yesterdayMoveValue = [(ACHActivityAwardingDataProvider *)self yesterdayMoveValue];
    [yesterdayMoveValue doubleValueForUnit:v43];
    retstr->var5 = v33;

    yesterdayMoveTimeGoal = [(ACHActivityAwardingDataProvider *)self yesterdayMoveGoal];
    v30 = yesterdayMoveTimeGoal;
    v31 = v43;
  }

  [yesterdayMoveTimeGoal doubleValueForUnit:v31];
  v35 = v34;

  retstr->var6 = v35;
  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var9 = [properties3 currentMonthMoveStreak];

  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [properties4 currentWeekMoveStreak];

  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [properties5 currentMoveStreak];

  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [properties6 bestMoveStreak];

  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [properties7 totalMoveGoalsMade];

  properties8 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [properties8 totalMoveGoalsAttempted];

  return result;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentExerciseState
{
  v25 = ACHCanonicalUnitForGoalType(1);
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var13 = 0u;
  *&retstr->var15 = 0u;
  retstr->var18 = 0.0;
  retstr->var0 = [(ACHActivityAwardingDataProvider *)self lastCheckedIndexForExercise];
  retstr->var1 = [(ACHActivityAwardingDataProvider *)self todayIndex];
  lastProcessedTodayExerciseValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [lastProcessedTodayExerciseValue doubleValueForUnit:v25];
  retstr->var2 = v6;

  todayExerciseValue = [(ACHActivityAwardingDataProvider *)self todayExerciseValue];
  [todayExerciseValue doubleValueForUnit:v25];
  retstr->var3 = v8;

  todayExerciseGoal = [(ACHActivityAwardingDataProvider *)self todayExerciseGoal];
  [todayExerciseGoal doubleValueForUnit:v25];
  retstr->var4 = v10;

  yesterdayExerciseValue = [(ACHActivityAwardingDataProvider *)self yesterdayExerciseValue];
  [yesterdayExerciseValue doubleValueForUnit:v25];
  retstr->var5 = v12;

  yesterdayExerciseGoal = [(ACHActivityAwardingDataProvider *)self yesterdayExerciseGoal];
  [yesterdayExerciseGoal doubleValueForUnit:v25];
  retstr->var6 = v14;

  properties = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [properties currentWeekExerciseStreak];

  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [properties2 currentExerciseStreak];

  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [properties3 bestExerciseStreak];

  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties4 bestExerciseValue];
  retstr->var13 = v19;

  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties5 bestExerciseGoalValue];
  retstr->var15 = v21;

  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [properties6 totalExerciseGoalsMade];

  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [properties7 totalExerciseGoalsAttempted];

  return result;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStandState
{
  v23 = ACHCanonicalUnitForGoalType(2);
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var13 = 0u;
  *&retstr->var15 = 0u;
  retstr->var18 = 0.0;
  retstr->var0 = [(ACHActivityAwardingDataProvider *)self lastCheckedIndexForStand];
  retstr->var1 = [(ACHActivityAwardingDataProvider *)self todayIndex];
  lastProcessedTodayStandValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [lastProcessedTodayStandValue doubleValueForUnit:v23];
  retstr->var2 = v6;

  todayStandValue = [(ACHActivityAwardingDataProvider *)self todayStandValue];
  [todayStandValue doubleValueForUnit:v23];
  retstr->var3 = v8;

  todayStandGoal = [(ACHActivityAwardingDataProvider *)self todayStandGoal];
  [todayStandGoal doubleValueForUnit:v23];
  retstr->var4 = v10;

  yesterdayStandValue = [(ACHActivityAwardingDataProvider *)self yesterdayStandValue];
  [yesterdayStandValue doubleValueForUnit:v23];
  retstr->var5 = v12;

  yesterdayStandGoal = [(ACHActivityAwardingDataProvider *)self yesterdayStandGoal];
  [yesterdayStandGoal doubleValueForUnit:v23];
  retstr->var6 = v14;

  properties = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [properties currentWeekStandStreak];

  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [properties2 currentStandStreak];

  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [properties3 bestStandStreak];

  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var13 = [properties4 bestStandValue];

  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var15 = [properties5 bestStandGoalValue];

  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [properties6 totalStandGoalsMade];

  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [properties7 totalStandGoalsAttempted];

  return result;
}

- (void)setNewMoveState:(id *)state
{
  v5 = ACHCanonicalUnitForGoalType(0);
  v6 = *&state->var14;
  v15[6] = *&state->var12;
  v15[7] = v6;
  v15[8] = *&state->var16;
  v7 = *&state->var6;
  v15[2] = *&state->var4;
  v15[3] = v7;
  v8 = *&state->var10;
  v15[4] = *&state->var8;
  v15[5] = v8;
  v9 = *&state->var2;
  v15[0] = *&state->var0;
  v15[1] = v9;
  [(ACHActivityAwardingDataProvider *)self _setBaseMoveState:v15];
  lastProcessedTodayMoveValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayMoveValue:lastProcessedTodayMoveValue];

  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:state->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayMoveValue:v11];

  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:state->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayMoveGoal:v12];

  var15 = state->var15;
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties setBestMoveGoalValue:var15];
}

- (void)setNewMoveTimeState:(id *)state
{
  v5 = ACHCanonicalUnitForGoalType(3);
  v6 = *&state->var14;
  v15[6] = *&state->var12;
  v15[7] = v6;
  v15[8] = *&state->var16;
  v7 = *&state->var6;
  v15[2] = *&state->var4;
  v15[3] = v7;
  v8 = *&state->var10;
  v15[4] = *&state->var8;
  v15[5] = v8;
  v9 = *&state->var2;
  v15[0] = *&state->var0;
  v15[1] = v9;
  [(ACHActivityAwardingDataProvider *)self _setBaseMoveState:v15];
  lastProcessedTodayMoveTimeValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveTimeValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayMoveTimeValue:lastProcessedTodayMoveTimeValue];

  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:state->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayMoveTimeValue:v11];

  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:state->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayMoveTimeGoal:v12];

  var15 = state->var15;
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties setBestMoveTimeGoalValue:var15];
}

- (void)_setBaseMoveState:(id *)state
{
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForMove:state->var0];
  var7 = state->var7;
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties setCurrentMoveStreak:var7];

  var8 = state->var8;
  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties2 setCurrentWeekMoveStreak:var8];

  var9 = state->var9;
  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties3 setCurrentMonthMoveStreak:var9];

  var10 = state->var10;
  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties4 setBestMoveStreak:var10];

  var11 = state->var11;
  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties5 setTotalMoveGoalsMade:var11];

  var12 = state->var12;
  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties6 setTotalMoveGoalsAttempted:var12];

  var13 = state->var13;
  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties7 setBestMoveValue:var13];

  var14 = state->var14;
  properties8 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties8 setBestMoveTimeValue:var14];
}

- (void)setNewExerciseState:(id *)state
{
  v22 = ACHCanonicalUnitForGoalType(1);
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForExercise:state->var0];
  lastProcessedTodayExerciseValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayExerciseValue:lastProcessedTodayExerciseValue];

  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:state->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayExerciseValue:v6];

  v7 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:state->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayExerciseGoal:v7];

  var7 = state->var7;
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties setCurrentExerciseStreak:var7];

  var8 = state->var8;
  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties2 setCurrentWeekExerciseStreak:var8];

  var10 = state->var10;
  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties3 setBestExerciseStreak:var10];

  var13 = state->var13;
  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties4 setBestExerciseValue:var13];

  var15 = state->var15;
  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties5 setBestExerciseGoalValue:var15];

  var11 = state->var11;
  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties6 setTotalExerciseGoalsMade:var11];

  var12 = state->var12;
  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties7 setTotalExerciseGoalsAttempted:var12];
}

- (void)setNewStandState:(id *)state
{
  v22 = ACHCanonicalUnitForGoalType(2);
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForStand:state->var0];
  lastProcessedTodayStandValue = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayStandValue:lastProcessedTodayStandValue];

  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:state->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayStandValue:v6];

  v7 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:state->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayStandGoal:v7];

  var7 = state->var7;
  properties = [(ACHActivityAwardingDataProvider *)self properties];
  [properties setCurrentStandStreak:var7];

  var8 = state->var8;
  properties2 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties2 setCurrentWeekStandStreak:var8];

  var10 = state->var10;
  properties3 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties3 setBestStandStreak:var10];

  var13 = state->var13;
  properties4 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties4 setBestStandValue:var13];

  var15 = state->var15;
  properties5 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties5 setBestStandGoalValue:var15];

  var11 = state->var11;
  properties6 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties6 setTotalStandGoalsMade:var11];

  var12 = state->var12;
  properties7 = [(ACHActivityAwardingDataProvider *)self properties];
  [properties7 setTotalStandGoalsAttempted:var12];
}

- (BOOL)allGoalsMetToday
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  activityMoveMode = [todayActivitySummary activityMoveMode];

  if (activityMoveMode == 2)
  {
    v5 = ACHCanonicalUnitForGoalType(3);
    todayMoveTimeValue = [(ACHActivityAwardingDataProvider *)self todayMoveTimeValue];
    [todayMoveTimeValue doubleValueForUnit:v5];
    v8 = v7;

    [(ACHActivityAwardingDataProvider *)self todayMoveTimeGoal];
  }

  else
  {
    v5 = ACHCanonicalUnitForGoalType(0);
    todayMoveValue = [(ACHActivityAwardingDataProvider *)self todayMoveValue];
    [todayMoveValue doubleValueForUnit:v5];
    v8 = v10;

    [(ACHActivityAwardingDataProvider *)self todayMoveGoal];
  }
  v11 = ;
  [v11 doubleValueForUnit:v5];
  v13 = v12;

  v14 = ACHCanonicalUnitForGoalType(1);
  todayExerciseValue = [(ACHActivityAwardingDataProvider *)self todayExerciseValue];
  [todayExerciseValue doubleValueForUnit:v14];
  v17 = v16;

  todayExerciseGoal = [(ACHActivityAwardingDataProvider *)self todayExerciseGoal];
  [todayExerciseGoal doubleValueForUnit:v14];
  v20 = v19;

  v21 = ACHCanonicalUnitForGoalType(2);
  todayStandValue = [(ACHActivityAwardingDataProvider *)self todayStandValue];
  [todayStandValue doubleValueForUnit:v21];
  v24 = v23;

  todayStandGoal = [(ACHActivityAwardingDataProvider *)self todayStandGoal];
  [todayStandGoal doubleValueForUnit:v21];
  v27 = v26;

  v28 = v13 > 0.0 && v8 >= v13 && v20 > 0.0 && v17 >= v20 && v27 >= 1 && v24 >= v27;
  return v28;
}

- (HKQuantity)yesterdayMoveValue
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  activeEnergyBurned = [yesterdayActivitySummary activeEnergyBurned];

  return activeEnergyBurned;
}

- (HKQuantity)yesterdayMoveGoal
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  activeEnergyBurnedGoal = [yesterdayActivitySummary activeEnergyBurnedGoal];

  return activeEnergyBurnedGoal;
}

- (HKQuantity)yesterdayMoveTimeValue
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleMoveTime = [yesterdayActivitySummary appleMoveTime];

  return appleMoveTime;
}

- (HKQuantity)yesterdayMoveTimeGoal
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleMoveTimeGoal = [yesterdayActivitySummary appleMoveTimeGoal];

  return appleMoveTimeGoal;
}

- (HKQuantity)yesterdayExerciseValue
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleExerciseTime = [yesterdayActivitySummary appleExerciseTime];

  return appleExerciseTime;
}

- (HKQuantity)todayExerciseGoal
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleExerciseTimeGoal = [todayActivitySummary appleExerciseTimeGoal];

  return appleExerciseTimeGoal;
}

- (HKQuantity)yesterdayExerciseGoal
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleExerciseTimeGoal = [yesterdayActivitySummary appleExerciseTimeGoal];

  return appleExerciseTimeGoal;
}

- (HKQuantity)todayStandValue
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleStandHours = [todayActivitySummary appleStandHours];

  return appleStandHours;
}

- (HKQuantity)yesterdayStandValue
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleStandHours = [yesterdayActivitySummary appleStandHours];

  return appleStandHours;
}

- (HKQuantity)todayStandGoal
{
  todayActivitySummary = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  appleStandHoursGoal = [todayActivitySummary appleStandHoursGoal];

  return appleStandHoursGoal;
}

- (HKQuantity)yesterdayStandGoal
{
  yesterdayActivitySummary = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  appleStandHoursGoal = [yesterdayActivitySummary appleStandHoursGoal];

  return appleStandHoursGoal;
}

@end