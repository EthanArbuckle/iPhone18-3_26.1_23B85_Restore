@interface ACHDataStoreActivityProperties
- (NSArray)dictionaryKeys;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation ACHDataStoreActivityProperties

- (NSArray)dictionaryKeys
{
  if (dictionaryKeys_onceToken != -1)
  {
    [ACHDataStoreActivityProperties dictionaryKeys];
  }

  v3 = dictionaryKeys_keys;

  return v3;
}

void __48__ACHDataStoreActivityProperties_dictionaryKeys__block_invoke()
{
  v32[29] = *MEMORY[0x277D85DE8];
  v31 = NSStringFromSelector(sel_currentMoveStreak);
  v32[0] = v31;
  v30 = NSStringFromSelector(sel_currentWeekMoveStreak);
  v32[1] = v30;
  v29 = NSStringFromSelector(sel_currentMonthMoveStreak);
  v32[2] = v29;
  v28 = NSStringFromSelector(sel_bestMoveStreak);
  v32[3] = v28;
  v27 = NSStringFromSelector(sel_totalMoveGoalsMade);
  v32[4] = v27;
  v26 = NSStringFromSelector(sel_totalMoveGoalsAttempted);
  v32[5] = v26;
  v25 = NSStringFromSelector(sel_bestMoveValue);
  v32[6] = v25;
  v24 = NSStringFromSelector(sel_bestMoveGoalValue);
  v32[7] = v24;
  v23 = NSStringFromSelector(sel_bestMoveTimeValue);
  v32[8] = v23;
  v22 = NSStringFromSelector(sel_bestMoveTimeGoalValue);
  v32[9] = v22;
  v21 = NSStringFromSelector(sel_currentExerciseStreak);
  v32[10] = v21;
  v20 = NSStringFromSelector(sel_currentWeekExerciseStreak);
  v32[11] = v20;
  v19 = NSStringFromSelector(sel_bestExerciseStreak);
  v32[12] = v19;
  v18 = NSStringFromSelector(sel_totalExerciseGoalsMade);
  v32[13] = v18;
  v17 = NSStringFromSelector(sel_totalExerciseGoalsAttempted);
  v32[14] = v17;
  v16 = NSStringFromSelector(sel_bestExerciseValue);
  v32[15] = v16;
  v15 = NSStringFromSelector(sel_bestExerciseGoalValue);
  v32[16] = v15;
  v14 = NSStringFromSelector(sel_currentStandStreak);
  v32[17] = v14;
  v13 = NSStringFromSelector(sel_currentWeekStandStreak);
  v32[18] = v13;
  v0 = NSStringFromSelector(sel_bestStandStreak);
  v32[19] = v0;
  v1 = NSStringFromSelector(sel_totalStandGoalsMade);
  v32[20] = v1;
  v2 = NSStringFromSelector(sel_totalStandGoalsAttempted);
  v32[21] = v2;
  v3 = NSStringFromSelector(sel_bestStandValue);
  v32[22] = v3;
  v4 = NSStringFromSelector(sel_bestStandGoalValue);
  v32[23] = v4;
  v5 = NSStringFromSelector(sel_totalAllGoalsMade);
  v32[24] = v5;
  v6 = NSStringFromSelector(sel_mostRecentAllGoalsMadeIndex);
  v32[25] = v6;
  v7 = NSStringFromSelector(sel_lastStepCount);
  v32[26] = v7;
  v8 = NSStringFromSelector(sel_bestStepCount);
  v32[27] = v8;
  v9 = NSStringFromSelector(sel_storeValuesValidBeforeSummaryIndex);
  v32[28] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:29];
  v11 = dictionaryKeys_keys;
  dictionaryKeys_keys = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(ACHDataStoreActivityProperties *)self dictionaryKeys];
  v4 = [(ACHDataStoreActivityProperties *)self dictionaryWithValuesForKeys:v3];

  return v4;
}

@end