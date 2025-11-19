@interface ASDemoData
+ (id)_achievementsForFriendTwoWithFriendUUID:(id)a3;
+ (id)_achievementsForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4;
+ (id)_activitySnapshotForFitnessJrFriendWithFriendUUID:(id)a3 sourceUUID:(id)a4;
+ (id)_activitySnapshotForFriendOneWithFriendUUID:(id)a3 sourceUUID:(id)a4;
+ (id)_activitySnapshotForFriendThreeWithFriendUUID:(id)a3 sourceUUID:(id)a4;
+ (id)_activitySnapshotForFriendTwoWithFriendUUID:(id)a3 sourceUUID:(id)a4;
+ (id)_activitySnapshotForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4 sourceUUID:(id)a5;
+ (id)_appleWatchSourceRevision;
+ (id)_fakeAchievementDuringDayStartingAtDate:(id)a3 personUUID:(id)a4;
+ (id)_fakeFriendListWithDemoFileName:(id)a3;
+ (id)_fakeWorkoutDuringDayStartingAtDate:(id)a3 personUUID:(id)a4;
+ (id)_fakeWorkoutsForIndex:(int64_t)a3 personUUID:(id)a4;
+ (id)_fakeWorkoutsForLastWeekWithPersonUUID:(id)a3 dailySnapshotProbability:(double)a4;
+ (id)_workoutsForFitnessJrFriendTwoWithFriendUUID:(id)a3;
+ (id)_workoutsForFriendOneWithFriendUUID:(id)a3;
+ (id)_workoutsForFriendTwoWithFriendUUID:(id)a3;
+ (id)_workoutsForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4;
+ (id)createMeWithModel:(id)a3;
+ (id)fakeFirstGlanceFriendListForMarketing;
@end

@implementation ASDemoData

+ (id)_activitySnapshotForFriendOneWithFriendUUID:(id)a3 sourceUUID:(id)a4
{
  v26[7] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v24 = [v5 numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v25[0] = v24;
  v23 = _ActivitySnapshot(0, v7, v6, 0x46uLL, 0x1EuLL, 6uLL, 0xCuLL, 0x2924uLL, 630.0, 400.0, 0.0, 0.0, 7.4, 1);
  v26[0] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v25[1] = v22;
  v21 = _ActivitySnapshot(1, v7, v6, 0x4CuLL, 0x1EuLL, 0xDuLL, 0xCuLL, 0x3231uLL, 515.0, 400.0, 0.0, 0.0, 8.5, 1);
  v26[1] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(2)];
  v25[2] = v20;
  v19 = _ActivitySnapshot(2, v7, v6, 0x37uLL, 0x1EuLL, 0xCuLL, 0xCuLL, 0x2675uLL, 380.0, 400.0, 0.0, 0.0, 6.2, 1);
  v26[2] = v19;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(3)];
  v25[3] = v8;
  v9 = _ActivitySnapshot(3, v7, v6, 0x2DuLL, 0x1EuLL, 0xAuLL, 0xCuLL, 0x2713uLL, 550.0, 400.0, 0.0, 0.0, 6.8, 1);
  v26[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(4)];
  v25[4] = v10;
  v11 = _ActivitySnapshot(4, v7, v6, 0x4EuLL, 0x1EuLL, 0xEuLL, 0xCuLL, 0x3231uLL, 472.0, 400.0, 0.0, 0.0, 7.2, 1);
  v26[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v25[5] = v12;
  v13 = _ActivitySnapshot(5, v7, v6, 0x3FuLL, 0x1EuLL, 0xCuLL, 0xCuLL, 0x2D10uLL, 611.0, 400.0, 0.0, 0.0, 6.3, 1);
  v26[5] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(6)];
  v25[6] = v14;
  v15 = _ActivitySnapshot(6, v7, v6, 0x48uLL, 0x1EuLL, 0xAuLL, 0xCuLL, 0x2841uLL, 500.0, 400.0, 0.0, 0.0, 6.8, 1);

  v26[6] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_activitySnapshotForFriendTwoWithFriendUUID:(id)a3 sourceUUID:(id)a4
{
  v26[7] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v24 = [v5 numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v25[0] = v24;
  v23 = _ActivitySnapshot(0, v7, v6, 0x34uLL, 0x1EuLL, 4uLL, 0xCuLL, 0x11ABuLL, 923.0, 850.0, 0.0, 0.0, 9.2, 1);
  v26[0] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v25[1] = v22;
  v21 = _ActivitySnapshot(1, v7, v6, 0x38uLL, 0x1EuLL, 0xCuLL, 0xCuLL, 0x2352uLL, 720.0, 850.0, 0.0, 0.0, 5.6, 1);
  v26[1] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(2)];
  v25[2] = v20;
  v19 = _ActivitySnapshot(2, v7, v6, 0x2CuLL, 0x1EuLL, 0xEuLL, 0xCuLL, 0x217DuLL, 878.0, 850.0, 0.0, 0.0, 5.2, 1);
  v26[2] = v19;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(3)];
  v25[3] = v8;
  v9 = _ActivitySnapshot(3, v7, v6, 0x1CuLL, 0x1EuLL, 0xDuLL, 0xCuLL, 0x1D63uLL, 700.0, 850.0, 0.0, 0.0, 4.9, 1);
  v26[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(4)];
  v25[4] = v10;
  v11 = _ActivitySnapshot(4, v7, v6, 0x21uLL, 0x1EuLL, 0xFuLL, 0xCuLL, 0xFE9uLL, 710.0, 850.0, 0.0, 0.0, 2.8, 1);
  v26[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v25[5] = v12;
  v13 = _ActivitySnapshot(5, v7, v6, 0x2DuLL, 0x1EuLL, 0xAuLL, 0xCuLL, 0x251CuLL, 689.0, 850.0, 0.0, 0.0, 6.0, 1);
  v26[5] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(6)];
  v25[6] = v14;
  v15 = _ActivitySnapshot(6, v7, v6, 0x28uLL, 0x1EuLL, 8uLL, 0xCuLL, 0x2066uLL, 566.0, 850.0, 0.0, 0.0, 5.7, 1);

  v26[6] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_activitySnapshotForFriendThreeWithFriendUUID:(id)a3 sourceUUID:(id)a4
{
  v26[7] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v24 = [v5 numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v25[0] = v24;
  v23 = _ActivitySnapshot(0, v7, v6, 0xAuLL, 0x1EuLL, 2uLL, 0xCuLL, 0xBDEuLL, 100.0, 250.0, 0.0, 0.0, 1.5, 1);
  v26[0] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v25[1] = v22;
  v21 = _ActivitySnapshot(1, v7, v6, 0xFuLL, 0x1EuLL, 8uLL, 0xCuLL, 0xDA1uLL, 120.0, 250.0, 0.0, 0.0, 1.8, 1);
  v26[1] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(2)];
  v25[2] = v20;
  v19 = _ActivitySnapshot(2, v7, v6, 0xCuLL, 0x1EuLL, 6uLL, 0xCuLL, 0xB27uLL, 90.0, 250.0, 0.0, 0.0, 1.3, 1);
  v26[2] = v19;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(3)];
  v25[3] = v8;
  v9 = _ActivitySnapshot(3, v7, v6, 5uLL, 0x1EuLL, 6uLL, 0xCuLL, 0x1054uLL, 169.0, 250.0, 0.0, 0.0, 2.4, 1);
  v26[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(4)];
  v25[4] = v10;
  v11 = _ActivitySnapshot(4, v7, v6, 0x13uLL, 0x1EuLL, 3uLL, 0xCuLL, 0xEB7uLL, 145.0, 250.0, 0.0, 0.0, 2.1, 1);
  v26[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v25[5] = v12;
  v13 = _ActivitySnapshot(5, v7, v6, 0xFuLL, 0x1EuLL, 9uLL, 0xCuLL, 0xE1BuLL, 110.0, 250.0, 0.0, 0.0, 1.7, 1);
  v26[5] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(6)];
  v25[6] = v14;
  v15 = _ActivitySnapshot(6, v7, v6, 0xDuLL, 0x1EuLL, 4uLL, 0xCuLL, 0x190CuLL, 200.0, 250.0, 0.0, 0.0, 3.0, 1);

  v26[6] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_activitySnapshotForFitnessJrFriendWithFriendUUID:(id)a3 sourceUUID:(id)a4
{
  v26[7] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v24 = [v5 numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v25[0] = v24;
  v23 = _ActivitySnapshot(0, v7, v6, 0x38uLL, 0x3CuLL, 0xBuLL, 0xAuLL, 0x1597uLL, 0.0, 0.0, 122.0, 120.0, 3.2, 2);
  v26[0] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v25[1] = v22;
  v21 = _ActivitySnapshot(1, v7, v6, 0x52uLL, 0x3CuLL, 0xCuLL, 0xAuLL, 0x17FFuLL, 0.0, 0.0, 135.0, 120.0, 3.7, 2);
  v26[1] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(2)];
  v25[2] = v20;
  v19 = _ActivitySnapshot(2, v7, v6, 0x36uLL, 0x3CuLL, 0xBuLL, 0xAuLL, 0x1578uLL, 0.0, 0.0, 120.0, 120.0, 3.1, 2);
  v26[2] = v19;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(3)];
  v25[3] = v8;
  v9 = _ActivitySnapshot(3, v7, v6, 0x2FuLL, 0x3CuLL, 0xBuLL, 0xAuLL, 0x1156uLL, 0.0, 0.0, 101.0, 120.0, 2.5, 2);
  v26[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(4)];
  v25[4] = v10;
  v11 = _ActivitySnapshot(4, v7, v6, 0x49uLL, 0x3CuLL, 0xCuLL, 0xAuLL, 0x1762uLL, 0.0, 0.0, 128.0, 120.0, 3.4, 2);
  v26[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v25[5] = v12;
  v13 = _ActivitySnapshot(5, v7, v6, 0x83uLL, 0x3CuLL, 0xEuLL, 0xAuLL, 0x276BuLL, 0.0, 0.0, 183.0, 120.0, 6.9, 2);
  v26[5] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(6)];
  v25[6] = v14;
  v15 = _ActivitySnapshot(6, v7, v6, 0x73uLL, 0x3CuLL, 0xDuLL, 0xAuLL, 0x232AuLL, 0.0, 0.0, 174.0, 120.0, 5.5, 2);

  v26[6] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_activitySnapshotForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4 sourceUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 <= 0)
  {
    v9 = -(-a3 & 3);
  }

  else
  {
    v9 = a3 & 3;
  }

  v10 = objc_opt_class();
  if (v9 == 2)
  {
    v11 = [v10 _activitySnapshotForFriendThreeWithFriendUUID:v7 sourceUUID:v8];
  }

  else if (v9 == 1)
  {
    v11 = [v10 _activitySnapshotForFriendTwoWithFriendUUID:v7 sourceUUID:v8];
  }

  else
  {
    if (v9)
    {
      [v10 _activitySnapshotForFitnessJrFriendWithFriendUUID:v7 sourceUUID:v8];
    }

    else
    {
      [v10 _activitySnapshotForFriendOneWithFriendUUID:v7 sourceUUID:v8];
    }
    v11 = ;
  }

  v12 = v11;

  return v12;
}

+ (id)_achievementsForFriendTwoWithFriendUUID:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v25[0] = v4;
  v5 = MEMORY[0x277CBEB98];
  v6 = MEMORY[0x277CCDDC0];
  v7 = v3;
  v8 = DailyMoveRecordTemplate();
  v9 = [v8 uniqueName];
  _CacheIndexForDayWithOffsetFromCurrentDay(0);
  v10 = _HKStartDateForSnapshotIndex();
  v11 = [v6 achievementWithTemplateUniqueName:v9 completedDate:v10 value:&unk_2850DDD90 friendUUID:v7];

  v12 = [v5 setWithObject:v11];
  v26[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v25[1] = v13;
  v14 = MEMORY[0x277CBEB98];
  v15 = MEMORY[0x277CCDDC0];
  v16 = v7;
  v17 = DailyExerciseRecordTemplate();
  v18 = [v17 uniqueName];
  _CacheIndexForDayWithOffsetFromCurrentDay(1);
  v19 = _HKStartDateForSnapshotIndex();
  v20 = [v15 achievementWithTemplateUniqueName:v18 completedDate:v19 value:&unk_2850DDD90 friendUUID:v16];

  v21 = [v14 setWithObject:v20];
  v26[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_achievementsForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4
{
  if ((a3 & 0x8000000000000003) == 1)
  {
    v4 = a4;
    v5 = [objc_opt_class() _achievementsForFriendTwoWithFriendUUID:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)_workoutsForFriendOneWithFriendUUID:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v5 = [v3 numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v20[0] = v5;
  v6 = MEMORY[0x277CBEB98];
  v7 = _CreatePedestrianWorkout(v4, 0, 52, 2, 1800.0, 2.5);
  v8 = [v6 setWithObject:v7];
  v21[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(2)];
  v20[1] = v9;
  v10 = MEMORY[0x277CBEB98];
  v11 = _CreatePedestrianWorkout(v4, 2, 37, 1, 1800.0, 3.0);
  v12 = [v10 setWithObject:v11];
  v21[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v20[2] = v13;
  v14 = MEMORY[0x277CBEB98];
  v15 = _CreatePedestrianWorkout(v4, 5, 37, 1, 2200.0, 3.5);

  v16 = [v14 setWithObject:v15];
  v21[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_workoutsForFriendTwoWithFriendUUID:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v21[0] = v20;
  v3 = MEMORY[0x277CBEB98];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v18 = _CreatePedestrianWorkout(v19, 0, 37, 1, 2760.0, 6.0);
  v4 = [v3 setWithObject:v18];
  v22[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v21[1] = v5;
  v6 = MEMORY[0x277CBEB98];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = _CreatePedestrianWorkout(v7, 1, 37, 1, 1200.0, 2.0);
  v9 = [v6 setWithObject:v8];
  v22[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(4)];
  v21[2] = v10;
  v11 = MEMORY[0x277CBEB98];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = _CreatePedestrianWorkout(v12, 4, 52, 2, 1600.0, 2.8);
  v14 = [v11 setWithObject:v13];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_workoutsForFitnessJrFriendTwoWithFriendUUID:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(1)];
  v21[0] = v20;
  v3 = MEMORY[0x277CBEB98];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v18 = _CreateFitnessJrWorkout(v19, 1, 32, 2, 900.0, 0.5);
  v4 = [v3 setWithObject:v18];
  v22[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(5)];
  v21[1] = v5;
  v6 = MEMORY[0x277CBEB98];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = _CreateFitnessJrWorkout(v7, 5, 41, 2, 5400.0, 3.0);
  v9 = [v6 setWithObject:v8];
  v22[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(6)];
  v21[2] = v10;
  v11 = MEMORY[0x277CBEB98];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = _CreateFitnessJrWorkout(v12, 6, 37, 1, 720.0, 1.0);
  v14 = [v11 setWithObject:v13];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_workoutsForFriendWithIndex:(int64_t)a3 friendUUID:(id)a4
{
  v5 = a4;
  if (a3 <= 0)
  {
    v6 = -(-a3 & 3);
  }

  else
  {
    v6 = a3 & 3;
  }

  if (v6 == 2)
  {
    v8 = MEMORY[0x277CBEC10];
  }

  else
  {
    if (v6 == 1)
    {
      v7 = [objc_opt_class() _workoutsForFriendTwoWithFriendUUID:v5];
    }

    else
    {
      if (v6)
      {
        [objc_opt_class() _workoutsForFitnessJrFriendTwoWithFriendUUID:v5];
      }

      else
      {
        [objc_opt_class() _workoutsForFriendOneWithFriendUUID:v5];
      }
      v7 = ;
    }

    v8 = v7;
  }

  return v8;
}

+ (id)createMeWithModel:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [ASFriend alloc];
  v5 = [(ASFriend *)v4 initWithActivitySnapshots:0 friendAchievements:0 friendWorkouts:0 contact:0 competitions:MEMORY[0x277CBEBF8]];
  v6 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__ASDemoData_createMeWithModel___block_invoke;
  v15[3] = &unk_278C46C18;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  v8 = MEMORY[0x23EF0CB70](v15);
  v9 = [v3 startCurrentActivitySummaryQueryWithHandler:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  [v3 stopCurrentActivitySummaryQueryForClientToken:v9];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:_CacheIndexForDayWithOffsetFromCurrentDay(0)];
  v11 = v19[5];
  v24 = v10;
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [(ASFriend *)v5 setSnapshots:v12];

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

intptr_t __32__ASDemoData_createMeWithModel___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)fakeFirstGlanceFriendListForMarketing
{
  v2 = [a1 _fakeFriendListWithDemoFileName:@"fakefriends_firstglance.plist"];
  v3 = [v2 hk_filter:&__block_literal_global_11];

  return v3;
}

BOOL __51__ASDemoData_fakeFirstGlanceFriendListForMarketing__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currentCompetition];
  v3 = [v2 stage] == 1;

  return v3;
}

+ (id)_fakeFriendListWithDemoFileName:(id)a3
{
  v107[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v84 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/ActivityDemoData/" isDirectory:1];
  v86 = v3;
  v5 = [v84 URLByAppendingPathComponent:v3 isDirectory:0];
  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v5];
  v83 = v5;
  v7 = [v5 path];
  v85 = v4;
  LODWORD(v4) = [v4 fileExistsAtPath:v7];

  v82 = v6;
  if (v4)
  {
    v8 = [v6 objectForKeyedSubscript:@"demodata"];
  }

  else
  {
    v9 = MEMORY[0x277CBEC38];
    v104[0] = @"name";
    v104[1] = @"email";
    v105[0] = @"Jane";
    v105[1] = @"janedaniels@icloud.com";
    v104[2] = @"competition";
    v104[3] = @"myScores";
    v105[2] = MEMORY[0x277CBEC38];
    v105[3] = &unk_2850DDDC0;
    v104[4] = @"opponentScores";
    v104[5] = @"myWins";
    v105[4] = &unk_2850DDDD8;
    v105[5] = &unk_2850DDC58;
    v104[6] = @"opponentWins";
    v104[7] = @"dayOfCompetition";
    v105[6] = &unk_2850DDC70;
    v105[7] = &unk_2850DDC88;
    v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:8];
    v106[0] = v96;
    v102[0] = @"name";
    v102[1] = @"email";
    v103[0] = @"Allen";
    v103[1] = @"abuchinski@icloud.com";
    v102[2] = @"competition";
    v102[3] = @"myScores";
    v103[2] = v9;
    v103[3] = &unk_2850DDDF0;
    v102[4] = @"opponentScores";
    v102[5] = @"myWins";
    v103[4] = &unk_2850DDE08;
    v103[5] = &unk_2850DDCB8;
    v102[6] = @"opponentWins";
    v102[7] = @"dayOfCompetition";
    v103[6] = &unk_2850DDCD0;
    v103[7] = &unk_2850DDCE8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:8];
    v106[1] = v10;
    v100[0] = @"name";
    v100[1] = @"email";
    v101[0] = @"Emily";
    v101[1] = @"emily_parker@icloud.com";
    v100[2] = @"competition";
    v100[3] = @"myScores";
    v101[2] = MEMORY[0x277CBEC38];
    v101[3] = &unk_2850DDE20;
    v100[4] = @"opponentScores";
    v100[5] = @"myWins";
    v101[4] = &unk_2850DDE38;
    v101[5] = &unk_2850DDCD0;
    v100[6] = @"opponentWins";
    v100[7] = @"dayOfCompetition";
    v101[6] = &unk_2850DDCD0;
    v101[7] = &unk_2850DDC58;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:8];
    v106[2] = v11;
    v98[0] = @"name";
    v98[1] = @"email";
    v99[0] = @"Doug";
    v99[1] = @"doug_FAH_renheit@icloud.com";
    v98[2] = @"competition";
    v98[3] = @"myScores";
    v99[2] = MEMORY[0x277CBEC38];
    v99[3] = &unk_2850DDE50;
    v98[4] = @"opponentScores";
    v98[5] = @"myWins";
    v99[4] = &unk_2850DDE68;
    v99[5] = &unk_2850DDCD0;
    v98[6] = @"opponentWins";
    v98[7] = @"dayOfCompetition";
    v99[6] = &unk_2850DDCB8;
    v99[7] = &unk_2850DDCB8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:8];
    v106[3] = v12;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  }

  if ([v8 count])
  {
    v13 = 0;
    v87 = *MEMORY[0x277CBD018];
    v88 = v8;
    do
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [MEMORY[0x277CCAD78] UUID];
      v94 = [v8 objectAtIndexedSubscript:v13];
      v16 = [v94 objectForKey:@"name"];
      v93 = [v8 objectAtIndexedSubscript:v13];
      v17 = [v93 objectForKey:@"email"];
      v95 = v15;
      v18 = [objc_opt_class() _activitySnapshotForFriendWithIndex:v13 friendUUID:v14 sourceUUID:v15];
      v19 = [objc_opt_class() _achievementsForFriendWithIndex:v13 friendUUID:v14];
      v97 = v14;
      v91 = [objc_opt_class() _workoutsForFriendWithIndex:v13 friendUUID:v14];
      v20 = v17;
      v21 = v16;
      v22 = v18;
      v23 = v19;
      v24 = objc_alloc_init(ASContact);
      [(ASContact *)v24 setShortName:v21];
      v92 = v21;

      v25 = [MEMORY[0x277CBEB98] setWithObject:v20];
      [(ASContact *)v24 setDestinations:v25];

      v26 = _FetchLinkedContactStoreIdentifierForEmail_onceToken;
      v27 = v20;
      if (v26 != -1)
      {
        +[ASDemoData _fakeFriendListWithDemoFileName:];
      }

      v28 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v27];

      v29 = _FetchLinkedContactStoreIdentifierForEmail___contactStore;
      v107[0] = v87;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:1];
      v31 = [v29 unifiedContactsMatchingPredicate:v28 keysToFetch:v30 error:0];
      v32 = [v31 firstObject];

      v33 = [v32 identifier];

      [(ASContact *)v24 setLinkedContactStoreIdentifier:v33];
      v34 = arc4random_uniform(4u) + 6;
      LODWORD(v28) = arc4random_uniform(0x3Cu);
      LODWORD(v33) = arc4random_uniform(0x18u);
      v35 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v35 setDay:-v34];
      [v35 setMinute:-v28];
      [v35 setHour:-v33];
      v36 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
      v37 = [MEMORY[0x277CBEAA8] date];
      v38 = [v36 dateByAddingComponents:v35 toDate:v37 options:0];

      v39 = v38;
      v40 = objc_alloc_init(ASRelationship);
      v41 = [[ASRelationshipEvent alloc] initWithType:103 anchor:0 timestamp:v39];

      v107[0] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:1];
      [(ASRelationship *)v40 setRelationshipEvents:v42];

      v43 = objc_alloc_init(ASRelationshipStorage);
      [(ASRelationshipStorage *)v43 setLegacyRelationship:v40];
      [(ASRelationshipStorage *)v43 setLegacyRemoteRelationship:v40];
      [(ASRelationship *)v40 setCloudType:1];
      [(ASRelationshipStorage *)v43 setSecureCloudRelationship:v40];
      [(ASRelationshipStorage *)v43 setSecureCloudRemoteRelationship:v40];
      [(ASContact *)v24 setRelationshipStorage:v43];
      v44 = [ASFriend alloc];
      v90 = [(ASFriend *)v44 initWithActivitySnapshots:v22 friendAchievements:v23 friendWorkouts:v91 contact:v24 competitions:MEMORY[0x277CBEBF8]];

      v8 = v88;
      v45 = [v88 objectAtIndexedSubscript:v13];
      v46 = [v45 objectForKey:@"myWins"];
      v47 = [v46 integerValue];

      v48 = [v88 objectAtIndexedSubscript:v13];
      v49 = [v48 objectForKey:@"opponentWins"];
      v50 = [v49 integerValue];

      v51 = _FakeHistoricalCompetitionsWithWinner(v47, 0);
      v52 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v51];

      v53 = _FakeHistoricalCompetitionsWithWinner(v50, 1);
      v54 = [v52 arrayByAddingObjectsFromArray:v53];

      v55 = [v88 objectAtIndexedSubscript:v13];
      v56 = [v55 objectForKey:@"competition"];
      LODWORD(v50) = [v56 BOOLValue];

      if (v50)
      {
        v57 = objc_alloc_init(ASCompetition);
        v58 = [v88 objectAtIndexedSubscript:v13];
        v59 = [v58 objectForKey:@"myScores"];
        [(ASCompetition *)v57 setScores:v59];

        v60 = [v88 objectAtIndexedSubscript:v13];
        v61 = [v60 objectForKey:@"opponentScores"];
        [(ASCompetition *)v57 setOpponentScores:v61];

        v62 = ASCompetitionDurationDateComponentsForNewCompetitions();
        [(ASCompetition *)v57 setDurationDateComponents:v62];

        [(ASCompetition *)v57 setMaximumNumberOfPointsPerDay:ASCompetitionMaximumPointsPerDayForNewCompetitions()];
        v63 = [v88 objectAtIndexedSubscript:v13];
        v64 = [v63 objectForKey:@"dayOfCompetition"];
        v65 = [v64 integerValue];

        v66 = 1 - v65;
        v67 = [MEMORY[0x277CBEA80] currentCalendar];
        v68 = [MEMORY[0x277CBEAA8] date];
        v69 = [v67 dateByAddingUnit:16 value:v66 toDate:v68 options:0];

        v70 = [MEMORY[0x277CBEA80] currentCalendar];
        v71 = _HKActivityCacheDateComponentsFromDate();
        [(ASCompetition *)v57 setStartDateComponents:v71];

        v72 = [v54 arrayByAddingObject:v57];

        v73 = v90;
        v74 = [(ASFriend *)v90 contact];
        v75 = [v74 primaryRelationship];

        [v75 insertEventWithType:11];
        v76 = [(ASFriend *)v90 contact];
        v77 = [v76 relationshipStorage];

        [v77 updateRelationship:v75 cloudType:{objc_msgSend(v75, "cloudType")}];
        v78 = [(ASFriend *)v90 contact];
        [v78 setRelationshipStorage:v77];

        v54 = v72;
      }

      else
      {
        v73 = v90;
      }

      [(ASFriend *)v73 setCompetitions:v54];
      [v89 addObject:v73];

      ++v13;
    }

    while (v13 < [v88 count]);
  }

  v79 = [MEMORY[0x277CBEB98] setWithArray:v89];

  v80 = *MEMORY[0x277D85DE8];

  return v79;
}

+ (id)_appleWatchSourceRevision
{
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v2 = @"iPod6,3";
  }

  else
  {
    v2 = @"Watch";
  }

  v3 = [MEMORY[0x277CCDA00] _sourceWithBundleIdentifier:@"Watch" name:@"Watch" productType:v2 options:2];
  v4 = [objc_alloc(MEMORY[0x277CCDA18]) initWithSource:v3 version:@"1"];

  return v4;
}

+ (id)_fakeAchievementDuringDayStartingAtDate:(id)a3 personUUID:(id)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v5 = a3;
  v6 = FirstWorkoutTemplateForWorkoutActivityType();
  v7 = [v6 uniqueName];
  v20[0] = v7;
  v8 = FirstWorkoutTemplateForWorkoutActivityType();
  v9 = [v8 uniqueName];
  v20[1] = v9;
  v10 = DailyMoveRecordTemplate();
  v11 = [v10 uniqueName];
  v20[2] = v11;
  v12 = DailyExerciseRecordTemplate();
  v13 = [v12 uniqueName];
  v20[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

  v15 = [v14 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v14, "count"))}];
  v16 = [MEMORY[0x277CCDDC0] achievementWithTemplateUniqueName:v15 completedDate:v5 value:&unk_2850DDEB0 friendUUID:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_fakeWorkoutDuringDayStartingAtDate:(id)a3 personUUID:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v38[0] = xmmword_23E545510;
  v38[1] = xmmword_23E545520;
  v39 = 3000;
  v5 = a4;
  v6 = a3;
  v36 = *(v38 + arc4random_uniform(4u));
  v7 = (arc4random_uniform(0xFD20u) + 21600);
  v8 = (arc4random_uniform(0x1644u) + 1500);
  v9 = [v6 dateByAddingTimeInterval:v7];

  v10 = [v9 dateByAddingTimeInterval:v8];
  v11 = v8 / 20.0 * (arc4random_uniform(6u) + 1);
  v12 = v8 / 20.0 * (arc4random_uniform(6u) + 1);
  v13 = MEMORY[0x277CCDDD0];
  v14 = MEMORY[0x277CCD7E8];
  v15 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v16 = [v14 quantityWithUnit:v15 doubleValue:v11];
  v17 = MEMORY[0x277CCD7E8];
  v18 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v19 = [v17 quantityWithUnit:v18 doubleValue:v11 * 0.6];
  v20 = MEMORY[0x277CCD7E8];
  v21 = [MEMORY[0x277CCDAB0] meterUnit];
  v22 = [v20 quantityWithUnit:v21 doubleValue:v12];
  LOWORD(v35) = 1;
  v23 = v13;
  v24 = v10;
  v25 = [v23 fitnessFriendworkoutWithActivityType:v36 friendUUID:v5 startDate:v9 endDate:v10 duration:v16 totalActiveEnergyBurned:v19 totalBasalEnergyBurned:v8 totalDistance:v22 goalType:*MEMORY[0x277CCE1E0] goal:0 bundleID:@"com.apple.SessionTrackerApp" isWatchWorkout:v35 isIndoorWorkout:0 deviceManufacturer:0 deviceModel:1 amm:0 seymourCatalogWorkoutIdentifier:0 seymourMediaType:?];

  v26 = [a1 _appleWatchSourceRevision];
  [v25 _setSourceRevision:v26];

  [v25 setGoalType:arc4random_uniform(4u)];
  v27 = [v25 goalType];
  switch(v27)
  {
    case 3:
      v28 = v11 + arc4random_uniform((v11 * 0.75));
      v29 = MEMORY[0x277CCD7E8];
      v30 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
      break;
    case 2:
      v28 = v12 + arc4random_uniform((v12 * 0.75));
      v29 = MEMORY[0x277CCD7E8];
      v30 = [MEMORY[0x277CCDAB0] secondUnit];
      break;
    case 1:
      v28 = v8 + arc4random_uniform((v8 * 0.75));
      v29 = MEMORY[0x277CCD7E8];
      v30 = [MEMORY[0x277CCDAB0] meterUnit];
      break;
    default:
      goto LABEL_8;
  }

  v31 = v30;
  v32 = [v29 quantityWithUnit:v30 doubleValue:v28];
  [v25 setGoal:v32];

LABEL_8:
  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_fakeWorkoutsForIndex:(int64_t)a3 personUUID:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  v8 = arc4random_uniform(4u);
  for (i = [MEMORY[0x277CBEB58] setWithCapacity:v8];
  {
    v10 = [a1 _fakeWorkoutDuringDayStartingAtDate:v7 personUUID:v6];
    [i addObject:v10];
  }

  return i;
}

+ (id)_fakeWorkoutsForLastWeekWithPersonUUID:(id)a3 dailySnapshotProbability:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v8 = 0;
  v9 = 1.0 - a4;
  do
  {
    if (vcvtd_n_f64_u32(arc4random(), 0x20uLL) > v9)
    {
      v10 = _CacheIndexForDayWithOffsetFromCurrentDay(v8);
      v11 = [a1 _fakeWorkoutsForIndex:v10 personUUID:v6];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      [v7 setObject:v11 forKeyedSubscript:v12];
    }

    ++v8;
  }

  while (v8 != 7);

  return v7;
}

@end