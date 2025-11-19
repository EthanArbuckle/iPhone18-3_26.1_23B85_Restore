@interface ACHActivityAwardingDataProvider
- ($A5E8A54F69D71102DC6A95EAED28A9DA)_baseMoveState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentExerciseState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentMoveTimeState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStandState;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStateForGoalType:(SEL)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)todayIndex;
- (void)_setBaseMoveState:(id *)a3;
- (void)clearAllProperties;
- (void)setLastCheckedIndex:(int64_t)a3;
- (void)setNewExerciseState:(id *)a3;
- (void)setNewMoveState:(id *)a3;
- (void)setNewMoveTimeState:(id *)a3;
- (void)setNewStandState:(id *)a3;
- (void)setNewState:(id *)a3 forGoalType:(int64_t)a4;
- (void)updatePreviousPropertiesWithCurrentProperties;
@end

@implementation ACHActivityAwardingDataProvider

- (HKQuantity)todayMoveTimeGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleMoveTimeGoal];

  return v3;
}

- (HKQuantity)todayMoveGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 activeEnergyBurnedGoal];

  return v3;
}

- (HKQuantity)todayMoveValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 activeEnergyBurned];

  return v3;
}

- (HKQuantity)todayExerciseValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleExerciseTime];

  return v3;
}

- (HKQuantity)todayMoveTimeValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleMoveTime];

  return v3;
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
  v3 = [(ACHDataStoreActivityProperties *)self->_properties previousValues];

  if (!v3)
  {
    properties = self->_properties;
    v5 = objc_alloc_init(objc_opt_class());
    [(ACHDataStoreActivityProperties *)self->_properties setPreviousValues:v5];
  }

  v7 = [(ACHDataStoreActivityProperties *)self->_properties previousValues];
  v6 = [(ACHDataStoreActivityProperties *)self->_properties dictionaryRepresentation];
  [v7 setValuesForKeysWithDictionary:v6];
}

- (void)clearAllProperties
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ACHDataStoreActivityProperties *)self->_properties dictionaryKeys];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(ACHDataStoreActivityProperties *)self->_properties setValue:&unk_283555C08 forKey:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(ACHDataStoreActivityProperties *)self->_properties setPreviousValues:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastCheckedIndex:(int64_t)a3
{
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForMove:?];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForExercise:a3];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForStand:a3];
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForAllGoals:a3];

  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForDistance:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ACHActivityAwardingDataProvider allocWithZone:?]];
  v5 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  [(ACHActivityAwardingDataProvider *)v4 setTodayActivitySummary:v5];

  v6 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  [(ACHActivityAwardingDataProvider *)v4 setYesterdayActivitySummary:v6];

  v7 = [(ACHActivityAwardingDataProvider *)v4 properties];
  v8 = [(ACHActivityAwardingDataProvider *)self properties];
  v9 = [v8 dictionaryRepresentation];
  [v7 setValuesForKeysWithDictionary:v9];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForMove:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForMove]];
  v10 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayMoveValue:v10];

  v11 = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayMoveValue:v11];

  v12 = [(ACHActivityAwardingDataProvider *)self lastTodayMoveGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayMoveGoal:v12];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForExercise:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForExercise]];
  v13 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayExerciseValue:v13];

  v14 = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayExerciseValue:v14];

  v15 = [(ACHActivityAwardingDataProvider *)self lastTodayExerciseGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayExerciseGoal:v15];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForStand:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForStand]];
  v16 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastProcessedTodayStandValue:v16];

  v17 = [(ACHActivityAwardingDataProvider *)self previousProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)v4 setPreviousProcessedTodayStandValue:v17];

  v18 = [(ACHActivityAwardingDataProvider *)self lastTodayStandGoal];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayStandGoal:v18];

  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForAllGoals:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForAllGoals]];
  [(ACHActivityAwardingDataProvider *)v4 setLastCheckedIndexForDistance:[(ACHActivityAwardingDataProvider *)self lastCheckedIndexForDistance]];
  v19 = [(ACHActivityAwardingDataProvider *)self lastTodayDistanceValue];
  [(ACHActivityAwardingDataProvider *)v4 setLastTodayDistanceValue:v19];

  return v4;
}

- (int64_t)todayIndex
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 _activitySummaryIndex];

  return v3;
}

- (BOOL)ringsPausedToday
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 isPaused];

  return v3;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)currentStateForGoalType:(SEL)a3
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

- (void)setNewState:(id *)a3 forGoalType:(int64_t)a4
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v16 = *&a3->var14;
      v26 = *&a3->var12;
      v27 = v16;
      v28 = *&a3->var16;
      v17 = *&a3->var6;
      v22 = *&a3->var4;
      v23 = v17;
      v18 = *&a3->var10;
      v24 = *&a3->var8;
      v25 = v18;
      v19 = *&a3->var2;
      v20 = *&a3->var0;
      v21 = v19;
      [(ACHActivityAwardingDataProvider *)self setNewStandState:&v20];
    }

    else if (a4 == 3)
    {
      v8 = *&a3->var14;
      v26 = *&a3->var12;
      v27 = v8;
      v28 = *&a3->var16;
      v9 = *&a3->var6;
      v22 = *&a3->var4;
      v23 = v9;
      v10 = *&a3->var10;
      v24 = *&a3->var8;
      v25 = v10;
      v11 = *&a3->var2;
      v20 = *&a3->var0;
      v21 = v11;
      [(ACHActivityAwardingDataProvider *)self setNewMoveTimeState:&v20];
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v4 = *&a3->var14;
      v26 = *&a3->var12;
      v27 = v4;
      v28 = *&a3->var16;
      v5 = *&a3->var6;
      v22 = *&a3->var4;
      v23 = v5;
      v6 = *&a3->var10;
      v24 = *&a3->var8;
      v25 = v6;
      v7 = *&a3->var2;
      v20 = *&a3->var0;
      v21 = v7;
      [(ACHActivityAwardingDataProvider *)self setNewExerciseState:&v20];
    }
  }

  else
  {
    v12 = *&a3->var14;
    v26 = *&a3->var12;
    v27 = v12;
    v28 = *&a3->var16;
    v13 = *&a3->var6;
    v22 = *&a3->var4;
    v23 = v13;
    v14 = *&a3->var10;
    v24 = *&a3->var8;
    v25 = v14;
    v15 = *&a3->var2;
    v20 = *&a3->var0;
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
  v7 = [(ACHActivityAwardingDataProvider *)self properties];
  [v7 bestMoveGoalValue];
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
  v7 = [(ACHActivityAwardingDataProvider *)self properties];
  [v7 bestMoveTimeGoalValue];
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
  v5 = [(ACHActivityAwardingDataProvider *)self properties];
  [v5 bestMoveValue];
  retstr->var13 = v6;

  v7 = [(ACHActivityAwardingDataProvider *)self properties];
  [v7 bestMoveTimeValue];
  retstr->var14 = v8;

  v43 = ACHCanonicalUnitForGoalType(0);
  v9 = ACHCanonicalUnitForGoalType(3);
  v10 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v11 = [v10 activityMoveMode];

  if (v11 == 2)
  {
    v12 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveTimeValue];
    [v12 doubleValueForUnit:v9];
    retstr->var2 = v13;

    v14 = [(ACHActivityAwardingDataProvider *)self todayMoveTimeValue];
    [v14 doubleValueForUnit:v9];
    retstr->var3 = v15;

    v16 = [(ACHActivityAwardingDataProvider *)self todayMoveTimeGoal];
    v17 = v16;
    v18 = v9;
  }

  else
  {
    v19 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
    [v19 doubleValueForUnit:v43];
    retstr->var2 = v20;

    v21 = [(ACHActivityAwardingDataProvider *)self todayMoveValue];
    [v21 doubleValueForUnit:v43];
    retstr->var3 = v22;

    v16 = [(ACHActivityAwardingDataProvider *)self todayMoveGoal];
    v17 = v16;
    v18 = v43;
  }

  [v16 doubleValueForUnit:v18];
  v24 = v23;

  retstr->var4 = v24;
  v25 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v26 = [v25 activityMoveMode];

  if (v26 == 2)
  {
    v27 = [(ACHActivityAwardingDataProvider *)self yesterdayMoveTimeValue];
    [v27 doubleValueForUnit:v9];
    retstr->var5 = v28;

    v29 = [(ACHActivityAwardingDataProvider *)self yesterdayMoveTimeGoal];
    v30 = v29;
    v31 = v9;
  }

  else
  {
    v32 = [(ACHActivityAwardingDataProvider *)self yesterdayMoveValue];
    [v32 doubleValueForUnit:v43];
    retstr->var5 = v33;

    v29 = [(ACHActivityAwardingDataProvider *)self yesterdayMoveGoal];
    v30 = v29;
    v31 = v43;
  }

  [v29 doubleValueForUnit:v31];
  v35 = v34;

  retstr->var6 = v35;
  v36 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var9 = [v36 currentMonthMoveStreak];

  v37 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [v37 currentWeekMoveStreak];

  v38 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [v38 currentMoveStreak];

  v39 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [v39 bestMoveStreak];

  v40 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [v40 totalMoveGoalsMade];

  v41 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [v41 totalMoveGoalsAttempted];

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
  v5 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [v5 doubleValueForUnit:v25];
  retstr->var2 = v6;

  v7 = [(ACHActivityAwardingDataProvider *)self todayExerciseValue];
  [v7 doubleValueForUnit:v25];
  retstr->var3 = v8;

  v9 = [(ACHActivityAwardingDataProvider *)self todayExerciseGoal];
  [v9 doubleValueForUnit:v25];
  retstr->var4 = v10;

  v11 = [(ACHActivityAwardingDataProvider *)self yesterdayExerciseValue];
  [v11 doubleValueForUnit:v25];
  retstr->var5 = v12;

  v13 = [(ACHActivityAwardingDataProvider *)self yesterdayExerciseGoal];
  [v13 doubleValueForUnit:v25];
  retstr->var6 = v14;

  v15 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [v15 currentWeekExerciseStreak];

  v16 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [v16 currentExerciseStreak];

  v17 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [v17 bestExerciseStreak];

  v18 = [(ACHActivityAwardingDataProvider *)self properties];
  [v18 bestExerciseValue];
  retstr->var13 = v19;

  v20 = [(ACHActivityAwardingDataProvider *)self properties];
  [v20 bestExerciseGoalValue];
  retstr->var15 = v21;

  v22 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [v22 totalExerciseGoalsMade];

  v23 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [v23 totalExerciseGoalsAttempted];

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
  v5 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [v5 doubleValueForUnit:v23];
  retstr->var2 = v6;

  v7 = [(ACHActivityAwardingDataProvider *)self todayStandValue];
  [v7 doubleValueForUnit:v23];
  retstr->var3 = v8;

  v9 = [(ACHActivityAwardingDataProvider *)self todayStandGoal];
  [v9 doubleValueForUnit:v23];
  retstr->var4 = v10;

  v11 = [(ACHActivityAwardingDataProvider *)self yesterdayStandValue];
  [v11 doubleValueForUnit:v23];
  retstr->var5 = v12;

  v13 = [(ACHActivityAwardingDataProvider *)self yesterdayStandGoal];
  [v13 doubleValueForUnit:v23];
  retstr->var6 = v14;

  v15 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var8 = [v15 currentWeekStandStreak];

  v16 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var7 = [v16 currentStandStreak];

  v17 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var10 = [v17 bestStandStreak];

  v18 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var13 = [v18 bestStandValue];

  v19 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var15 = [v19 bestStandGoalValue];

  v20 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var11 = [v20 totalStandGoalsMade];

  v21 = [(ACHActivityAwardingDataProvider *)self properties];
  retstr->var12 = [v21 totalStandGoalsAttempted];

  return result;
}

- (void)setNewMoveState:(id *)a3
{
  v5 = ACHCanonicalUnitForGoalType(0);
  v6 = *&a3->var14;
  v15[6] = *&a3->var12;
  v15[7] = v6;
  v15[8] = *&a3->var16;
  v7 = *&a3->var6;
  v15[2] = *&a3->var4;
  v15[3] = v7;
  v8 = *&a3->var10;
  v15[4] = *&a3->var8;
  v15[5] = v8;
  v9 = *&a3->var2;
  v15[0] = *&a3->var0;
  v15[1] = v9;
  [(ACHActivityAwardingDataProvider *)self _setBaseMoveState:v15];
  v10 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayMoveValue:v10];

  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:a3->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayMoveValue:v11];

  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:a3->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayMoveGoal:v12];

  var15 = a3->var15;
  v14 = [(ACHActivityAwardingDataProvider *)self properties];
  [v14 setBestMoveGoalValue:var15];
}

- (void)setNewMoveTimeState:(id *)a3
{
  v5 = ACHCanonicalUnitForGoalType(3);
  v6 = *&a3->var14;
  v15[6] = *&a3->var12;
  v15[7] = v6;
  v15[8] = *&a3->var16;
  v7 = *&a3->var6;
  v15[2] = *&a3->var4;
  v15[3] = v7;
  v8 = *&a3->var10;
  v15[4] = *&a3->var8;
  v15[5] = v8;
  v9 = *&a3->var2;
  v15[0] = *&a3->var0;
  v15[1] = v9;
  [(ACHActivityAwardingDataProvider *)self _setBaseMoveState:v15];
  v10 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayMoveTimeValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayMoveTimeValue:v10];

  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:a3->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayMoveTimeValue:v11];

  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v5 doubleValue:a3->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayMoveTimeGoal:v12];

  var15 = a3->var15;
  v14 = [(ACHActivityAwardingDataProvider *)self properties];
  [v14 setBestMoveTimeGoalValue:var15];
}

- (void)_setBaseMoveState:(id *)a3
{
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForMove:a3->var0];
  var7 = a3->var7;
  v6 = [(ACHActivityAwardingDataProvider *)self properties];
  [v6 setCurrentMoveStreak:var7];

  var8 = a3->var8;
  v8 = [(ACHActivityAwardingDataProvider *)self properties];
  [v8 setCurrentWeekMoveStreak:var8];

  var9 = a3->var9;
  v10 = [(ACHActivityAwardingDataProvider *)self properties];
  [v10 setCurrentMonthMoveStreak:var9];

  var10 = a3->var10;
  v12 = [(ACHActivityAwardingDataProvider *)self properties];
  [v12 setBestMoveStreak:var10];

  var11 = a3->var11;
  v14 = [(ACHActivityAwardingDataProvider *)self properties];
  [v14 setTotalMoveGoalsMade:var11];

  var12 = a3->var12;
  v16 = [(ACHActivityAwardingDataProvider *)self properties];
  [v16 setTotalMoveGoalsAttempted:var12];

  var13 = a3->var13;
  v18 = [(ACHActivityAwardingDataProvider *)self properties];
  [v18 setBestMoveValue:var13];

  var14 = a3->var14;
  v20 = [(ACHActivityAwardingDataProvider *)self properties];
  [v20 setBestMoveTimeValue:var14];
}

- (void)setNewExerciseState:(id *)a3
{
  v22 = ACHCanonicalUnitForGoalType(1);
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForExercise:a3->var0];
  v5 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayExerciseValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayExerciseValue:v5];

  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:a3->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayExerciseValue:v6];

  v7 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:a3->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayExerciseGoal:v7];

  var7 = a3->var7;
  v9 = [(ACHActivityAwardingDataProvider *)self properties];
  [v9 setCurrentExerciseStreak:var7];

  var8 = a3->var8;
  v11 = [(ACHActivityAwardingDataProvider *)self properties];
  [v11 setCurrentWeekExerciseStreak:var8];

  var10 = a3->var10;
  v13 = [(ACHActivityAwardingDataProvider *)self properties];
  [v13 setBestExerciseStreak:var10];

  var13 = a3->var13;
  v15 = [(ACHActivityAwardingDataProvider *)self properties];
  [v15 setBestExerciseValue:var13];

  var15 = a3->var15;
  v17 = [(ACHActivityAwardingDataProvider *)self properties];
  [v17 setBestExerciseGoalValue:var15];

  var11 = a3->var11;
  v19 = [(ACHActivityAwardingDataProvider *)self properties];
  [v19 setTotalExerciseGoalsMade:var11];

  var12 = a3->var12;
  v21 = [(ACHActivityAwardingDataProvider *)self properties];
  [v21 setTotalExerciseGoalsAttempted:var12];
}

- (void)setNewStandState:(id *)a3
{
  v22 = ACHCanonicalUnitForGoalType(2);
  [(ACHActivityAwardingDataProvider *)self setLastCheckedIndexForStand:a3->var0];
  v5 = [(ACHActivityAwardingDataProvider *)self lastProcessedTodayStandValue];
  [(ACHActivityAwardingDataProvider *)self setPreviousProcessedTodayStandValue:v5];

  v6 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:a3->var3];
  [(ACHActivityAwardingDataProvider *)self setLastProcessedTodayStandValue:v6];

  v7 = [MEMORY[0x277CCD7E8] quantityWithUnit:v22 doubleValue:a3->var4];
  [(ACHActivityAwardingDataProvider *)self setLastTodayStandGoal:v7];

  var7 = a3->var7;
  v9 = [(ACHActivityAwardingDataProvider *)self properties];
  [v9 setCurrentStandStreak:var7];

  var8 = a3->var8;
  v11 = [(ACHActivityAwardingDataProvider *)self properties];
  [v11 setCurrentWeekStandStreak:var8];

  var10 = a3->var10;
  v13 = [(ACHActivityAwardingDataProvider *)self properties];
  [v13 setBestStandStreak:var10];

  var13 = a3->var13;
  v15 = [(ACHActivityAwardingDataProvider *)self properties];
  [v15 setBestStandValue:var13];

  var15 = a3->var15;
  v17 = [(ACHActivityAwardingDataProvider *)self properties];
  [v17 setBestStandGoalValue:var15];

  var11 = a3->var11;
  v19 = [(ACHActivityAwardingDataProvider *)self properties];
  [v19 setTotalStandGoalsMade:var11];

  var12 = a3->var12;
  v21 = [(ACHActivityAwardingDataProvider *)self properties];
  [v21 setTotalStandGoalsAttempted:var12];
}

- (BOOL)allGoalsMetToday
{
  v3 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v4 = [v3 activityMoveMode];

  if (v4 == 2)
  {
    v5 = ACHCanonicalUnitForGoalType(3);
    v6 = [(ACHActivityAwardingDataProvider *)self todayMoveTimeValue];
    [v6 doubleValueForUnit:v5];
    v8 = v7;

    [(ACHActivityAwardingDataProvider *)self todayMoveTimeGoal];
  }

  else
  {
    v5 = ACHCanonicalUnitForGoalType(0);
    v9 = [(ACHActivityAwardingDataProvider *)self todayMoveValue];
    [v9 doubleValueForUnit:v5];
    v8 = v10;

    [(ACHActivityAwardingDataProvider *)self todayMoveGoal];
  }
  v11 = ;
  [v11 doubleValueForUnit:v5];
  v13 = v12;

  v14 = ACHCanonicalUnitForGoalType(1);
  v15 = [(ACHActivityAwardingDataProvider *)self todayExerciseValue];
  [v15 doubleValueForUnit:v14];
  v17 = v16;

  v18 = [(ACHActivityAwardingDataProvider *)self todayExerciseGoal];
  [v18 doubleValueForUnit:v14];
  v20 = v19;

  v21 = ACHCanonicalUnitForGoalType(2);
  v22 = [(ACHActivityAwardingDataProvider *)self todayStandValue];
  [v22 doubleValueForUnit:v21];
  v24 = v23;

  v25 = [(ACHActivityAwardingDataProvider *)self todayStandGoal];
  [v25 doubleValueForUnit:v21];
  v27 = v26;

  v28 = v13 > 0.0 && v8 >= v13 && v20 > 0.0 && v17 >= v20 && v27 >= 1 && v24 >= v27;
  return v28;
}

- (HKQuantity)yesterdayMoveValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 activeEnergyBurned];

  return v3;
}

- (HKQuantity)yesterdayMoveGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 activeEnergyBurnedGoal];

  return v3;
}

- (HKQuantity)yesterdayMoveTimeValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleMoveTime];

  return v3;
}

- (HKQuantity)yesterdayMoveTimeGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleMoveTimeGoal];

  return v3;
}

- (HKQuantity)yesterdayExerciseValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleExerciseTime];

  return v3;
}

- (HKQuantity)todayExerciseGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleExerciseTimeGoal];

  return v3;
}

- (HKQuantity)yesterdayExerciseGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleExerciseTimeGoal];

  return v3;
}

- (HKQuantity)todayStandValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleStandHours];

  return v3;
}

- (HKQuantity)yesterdayStandValue
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleStandHours];

  return v3;
}

- (HKQuantity)todayStandGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self todayActivitySummary];
  v3 = [v2 appleStandHoursGoal];

  return v3;
}

- (HKQuantity)yesterdayStandGoal
{
  v2 = [(ACHActivityAwardingDataProvider *)self yesterdayActivitySummary];
  v3 = [v2 appleStandHoursGoal];

  return v3;
}

@end