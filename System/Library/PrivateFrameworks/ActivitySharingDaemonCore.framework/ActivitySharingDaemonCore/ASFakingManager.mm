@interface ASFakingManager
- (ACHAchievement)fakeAchievement;
- (ASActivityDataManager)activityDataManager;
- (ASCloudKitManager)cloudKitManager;
- (ASCompetitionManager)competitionManager;
- (ASContactsManager)contactsManager;
- (ASFakingManager)initWithDatabaseClient:(id)a3;
- (_HKFitnessFriendAchievement)fakeFriendAchievement;
- (_HKFitnessFriendWorkout)fakeGuidedRunWorkout;
- (_HKFitnessFriendWorkout)fakeGuidedWalkWorkout;
- (_HKFitnessFriendWorkout)fakeVideoWorkout;
- (id)_contactWithFakeCompetitionStatus:(int64_t)a3;
- (id)_fakeCompetitionHistory;
- (id)_fakeCompetitionWithStartDate:(id)a3 opponentScores:(id)a4 scores:(id)a5;
- (id)_fakeSnapshotWithCompleteRings:(BOOL)a3;
- (id)fakeCompetitionWithStartDate:(id)a3 winningParticipant:(int64_t)a4;
- (id)fakeFriendWithCompetitionStatus:(int64_t)a3 competition:(id)a4;
- (id)fakeWorkoutWithSeymourCatalogWorkoutIdentifier:(id)a3 seymourMediaType:(id)a4;
- (void)activitySharingManagerReady:(id)a3;
- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3;
@end

@implementation ASFakingManager

- (ASFakingManager)initWithDatabaseClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASFakingManager;
  v6 = [(ASFakingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseClient, a3);
  }

  return v7;
}

- (void)activitySharingManagerReady:(id)a3
{
  v4 = a3;
  v5 = [v4 activityDataManager];
  [(ASFakingManager *)self setActivityDataManager:v5];

  v6 = [v4 cloudKitManager];
  [(ASFakingManager *)self setCloudKitManager:v6];

  v7 = [v4 competitionManager];
  [(ASFakingManager *)self setCompetitionManager:v7];

  v8 = [v4 contactsManager];

  [(ASFakingManager *)self setContactsManager:v8];
}

- (id)fakeFriendWithCompetitionStatus:(int64_t)a3 competition:(id)a4
{
  v6 = a4;
  v7 = [(ASFakingManager *)self _contactWithFakeCompetitionStatus:a3];
  v8 = [(ASFakingManager *)self _fakeCompetitionHistory];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 arrayByAddingObject:v6];

    v9 = v10;
  }

  v11 = [objc_alloc(MEMORY[0x277CE90F8]) initWithActivitySnapshots:0 friendAchievements:0 friendWorkouts:0 contact:v7 competitions:v9];

  return v11;
}

- (id)fakeCompetitionWithStartDate:(id)a3 winningParticipant:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = &unk_2850F51F8;
  }

  else
  {
    v4 = &unk_2850F5210;
  }

  if (a4)
  {
    v5 = &unk_2850F5210;
  }

  else
  {
    v5 = &unk_2850F51F8;
  }

  return [(ASFakingManager *)self _fakeCompetitionWithStartDate:a3 opponentScores:v4 scores:v5];
}

- (id)_fakeCompetitionWithStartDate:(id)a3 opponentScores:(id)a4 scores:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CE90D8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [MEMORY[0x277CCAD78] UUID];
  [v11 setUUID:v12];

  [v11 setOpponentScores:v9];
  [v11 setScores:v8];

  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [v13 components:*MEMORY[0x277CCE1D0] fromDate:v10];

  [v11 setStartDateComponents:v14];
  v15 = ASCompetitionDurationDateComponentsForNewCompetitions();
  [v11 setDurationDateComponents:v15];

  v16 = [MEMORY[0x277CBEB98] set];
  v17 = ASPreferredCompetitionVictoryBadgeStylesForFriend();
  v18 = [v17 firstObject];

  v19 = _ActivitySharingDefaults();
  v20 = _LoadValueFromDefaultsWithFallback(v19, @"fakeCompetitionBadgeStyle", v18);

  v24[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v11 setPreferredVictoryBadgeStyles:v21];

  [v11 setMaximumNumberOfPointsPerDay:ASCompetitionMaximumPointsPerDayForNewCompetitions()];
  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (_HKFitnessFriendWorkout)fakeVideoWorkout
{
  v3 = _ActivitySharingDefaults();
  v4 = _LoadValueFromDefaultsWithFallback(v3, @"fakeWorkoutVideoIdentifier", @"1537521179");

  v5 = [(ASFakingManager *)self fakeWorkoutWithSeymourCatalogWorkoutIdentifier:v4 seymourMediaType:@"video"];

  return v5;
}

- (_HKFitnessFriendWorkout)fakeGuidedRunWorkout
{
  v3 = _ActivitySharingDefaults();
  v4 = _LoadValueFromDefaultsWithFallback(v3, @"fakeWorkoutGuidedRunIdentifier", @"1567714086");

  v5 = [(ASFakingManager *)self fakeWorkoutWithSeymourCatalogWorkoutIdentifier:v4 seymourMediaType:@"breeze"];

  return v5;
}

- (_HKFitnessFriendWorkout)fakeGuidedWalkWorkout
{
  v3 = _ActivitySharingDefaults();
  v4 = _LoadValueFromDefaultsWithFallback(v3, @"fakeWorkoutGuidedWalkIdentifier", @"1546163570");

  v5 = [(ASFakingManager *)self fakeWorkoutWithSeymourCatalogWorkoutIdentifier:v4 seymourMediaType:@"guidedWalk"];

  return v5;
}

- (id)fakeWorkoutWithSeymourCatalogWorkoutIdentifier:(id)a3 seymourMediaType:(id)a4
{
  v43 = a4;
  v42 = a3;
  v5 = _ActivitySharingDefaults();
  v6 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutType", &unk_2850F5108);
  v41 = [v6 integerValue];

  v7 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutGoalType", &unk_2850F5120);
  v8 = [v7 integerValue];

  v9 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutEnergyBurned", &unk_2850F5258);
  v10 = [v9 integerValue];

  v11 = MEMORY[0x277CCD7E8];
  v12 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v39 = [v11 quantityWithUnit:v12 doubleValue:v10];

  v13 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutDistance", &unk_2850F5268);
  [v13 doubleValue];
  v15 = v14;

  v16 = MEMORY[0x277CCD7E8];
  v17 = [MEMORY[0x277CCDAB0] mileUnit];
  v40 = [v16 quantityWithUnit:v17 doubleValue:v15];

  v18 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutGoal", &unk_2850F5278);
  [v18 doubleValue];
  v20 = v19;

  switch(v8)
  {
    case 1:
      v21 = MEMORY[0x277CCD7E8];
      v22 = [MEMORY[0x277CCDAB0] mileUnit];
      goto LABEL_7;
    case 3:
      v21 = MEMORY[0x277CCD7E8];
      v22 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
      goto LABEL_7;
    case 2:
      v21 = MEMORY[0x277CCD7E8];
      v22 = [MEMORY[0x277CCDAB0] minuteUnit];
LABEL_7:
      v23 = v22;
      v24 = [v21 quantityWithUnit:v22 doubleValue:v20];

      goto LABEL_9;
  }

  v24 = 0;
LABEL_9:
  v25 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutIsIndoor", MEMORY[0x277CBEC28]);
  v26 = [v25 BOOLValue];

  v27 = _LoadValueFromDefaultsWithFallback(v5, @"fakeWorkoutDuration", &unk_2850F5288);
  [v27 doubleValue];
  v29 = v28;

  v30 = [MEMORY[0x277CBEAA8] date];
  v31 = [v30 dateByAddingTimeInterval:-v29];
  v32 = _FriendUUIDFromDefaults(v5);
  BYTE1(v38) = v26;
  LOBYTE(v38) = 1;
  v33 = [MEMORY[0x277CCDDD0] fitnessFriendworkoutWithActivityType:v41 friendUUID:v32 startDate:v31 endDate:v30 duration:v39 totalActiveEnergyBurned:v39 totalBasalEnergyBurned:v29 totalDistance:v40 goalType:v8 goal:v24 bundleID:@"com.apple.SessionTracker" isWatchWorkout:v38 isIndoorWorkout:0 deviceManufacturer:0 deviceModel:1 amm:v42 seymourCatalogWorkoutIdentifier:v43 seymourMediaType:?];

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v34 = @"iPod6,3";
  }

  else
  {
    v34 = @"Watch";
  }

  v35 = [MEMORY[0x277CCDA00] _sourceWithBundleIdentifier:@"Watch" name:@"Watch" productType:v34 options:2];
  v36 = [objc_alloc(MEMORY[0x277CCDA18]) initWithSource:v35 version:@"1"];

  [v33 _setSourceRevision:v36];

  return v33;
}

- (_HKFitnessFriendAchievement)fakeFriendAchievement
{
  v2 = _ActivitySharingDefaults();
  v3 = _LoadValueFromDefaultsWithFallback(v2, @"fakeAchievementTemplateUniqueName", @"NewExerciseRecord");
  v4 = _LoadValueFromDefaultsWithFallback(v2, @"fakeAchievementValue", &unk_2850F5298);
  v5 = _FriendUUIDFromDefaults(v2);
  v6 = MEMORY[0x277CCDDC0];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 achievementWithTemplateUniqueName:v3 completedDate:v7 value:v4 friendUUID:v5];

  return v8;
}

- (ACHAchievement)fakeAchievement
{
  v2 = _ActivitySharingDefaults();
  v3 = _LoadValueFromDefaultsWithFallback(v2, @"fakeAchievementTemplateUniqueName", @"NewExerciseRecord");
  v4 = _LoadValueFromDefaultsWithFallback(v2, @"fakeAchievementValue", &unk_2850F5298);
  if (ASIsCompetitionVictoryTemplate())
  {
    v5 = [MEMORY[0x277CBEB98] set];
    v6 = ASPreferredCompetitionVictoryBadgeStylesForFriend();

    v7 = [v6 firstObject];
    [v7 unsignedIntValue];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = ASEphemeralCompetitionVictoryAchievementForStyle();
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CE8DE0]);
    v21 = 0;
    v11 = [v10 allAchievementsWithError:&v21];
    v12 = v21;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __34__ASFakingManager_fakeAchievement__block_invoke;
    v19 = &unk_278C4DB20;
    v20 = v3;
    v9 = [v11 hk_firstObjectPassingTest:&v16];
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = ASEphemeralEarnedAchievement();

  return v14;
}

uint64_t __34__ASFakingManager_fakeAchievement__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 template];
  v4 = [v3 uniqueName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASFakingManager *)self fakeSnapshot];
  v26[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

  v7 = [(ASFakingManager *)self fakeFriendAchievement];
  v25 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

  v9 = [(ASFakingManager *)self fakeWorkout];
  v24 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  v12 = [v11 arrayByAddingObjectsFromArray:v8];

  v13 = [v12 arrayByAddingObjectsFromArray:v10];

  v14 = [(ASFakingManager *)self activityDataManager];
  v15 = [v14 recordsFromActivityDataCodables:v13];

  ASLoggingInitialize();
  v16 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "FakingManager saving activity records", buf, 2u);
  }

  v17 = [(ASFakingManager *)self cloudKitManager];
  v18 = ASCloudKitGroupUserActionExplicit();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__ASFakingManager_pushFakeActivityDataToAllFriendsWithCompletion___block_invoke;
  v21[3] = &unk_278C4DB48;
  v21[4] = self;
  v22 = v4;
  v19 = v4;
  [v17 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v15 recordIDsToDelete:0 priority:2 activity:0 group:v18 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __66__ASFakingManager_pushFakeActivityDataToAllFriendsWithCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 40) + 16);

    v12();
  }

  else
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "FakingManager saving competition scores", v13, 2u);
    }

    v5 = [*(a1 + 32) competitionManager];
    v6 = ASCompetitionDurationDateComponentsForNewCompetitions();
    if ([v6 day] < 1)
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = 0;
      v8 = MEMORY[0x277CBEBF8];
      do
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(0x384u)];
        v10 = [v8 arrayByAddingObject:v9];

        ++v7;
        v8 = v10;
      }

      while (v7 < [v6 day]);
    }

    [v5 updateAllActiveCompetitionsWithScores:v10 completion:*(a1 + 40)];
  }
}

- (id)_contactWithFakeCompetitionStatus:(int64_t)a3
{
  v4 = objc_opt_new();
  v5 = _ActivitySharingDefaults();
  v6 = _FriendUUIDFromDefaults(v5);
  [v4 setUUID:v6];

  v7 = objc_opt_new();
  v8 = _ActivitySharingDefaults();
  v9 = _FriendUUIDFromDefaults(v8);
  [v7 setUUID:v9];

  [v4 insertEventWithType:103];
  [v7 insertEventWithType:103];
  v10 = 105;
  v11 = 10;
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v13 = 11;
      v12 = 106;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_8;
      }

      [v4 insertEventWithType:10];
      [v7 insertEventWithType:105];
      v12 = 14;
      v10 = 11;
      v11 = 106;
      v13 = 14;
    }

    [v4 insertEventWithType:v11];
    [v7 insertEventWithType:v10];
    v11 = v12;
    v10 = v13;
  }

  [v4 insertEventWithType:v11];
  [v7 insertEventWithType:v10];
LABEL_8:
  v14 = objc_opt_new();
  v15 = _ActivitySharingDefaults();
  v16 = _LoadValueFromDefaultsWithFallback(v15, @"fakeContactName", @"Allen");
  [v14 setShortName:v16];

  v17 = MEMORY[0x277CBEB98];
  v18 = _ActivitySharingDefaults();
  v19 = _LoadValueFromDefaultsWithFallback(v18, @"fakeContactAddress", @"2025550184");
  v20 = [v17 setWithObject:v19];
  [v14 setDestinations:v20];

  v21 = objc_alloc_init(MEMORY[0x277CE9128]);
  [v21 setLegacyRelationship:v4];
  [v21 setLegacyRemoteRelationship:v7];
  [v21 setSecureCloudRelationship:v4];
  [v21 setSecureCloudRemoteRelationship:v7];
  [v14 setRelationshipStorage:v21];

  return v14;
}

- (id)_fakeCompetitionHistory
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = _ActivitySharingDefaults();
  v4 = [v3 integerForKey:@"fakeCompetitionMyWinCount"];
  v5 = [v3 integerForKey:@"fakeCompetitionOpponentWinCount"];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = MEMORY[0x277CBEBF8];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__12;
  v16[4] = __Block_byref_object_dispose__12;
  v17 = [MEMORY[0x277CBEAA8] distantPast];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__ASFakingManager__fakeCompetitionHistory__block_invoke;
  v15[3] = &unk_278C4DB70;
  v15[4] = self;
  v15[5] = v16;
  v15[6] = &v18;
  v6 = MEMORY[0x23EF0EB00](v15);
  v7 = [v3 BOOLForKey:@"fakeCompetitionOpponentWonPreviously"];
  v8 = v6[2];
  if (v7)
  {
    v8(v6, v4, 0);
    v9 = 1;
  }

  else
  {
    v8(v6, v5, 1);
    v9 = 0;
    v5 = v4;
  }

  (v6[2])(v6, v5, v9);
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v19[5];
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Fake competitions=%@", buf, 0xCu);
  }

  v12 = v19[5];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __42__ASFakingManager__fakeCompetitionHistory__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = [MEMORY[0x277CBEA80] currentCalendar];
      v7 = [v6 dateByAddingUnit:16 value:1 toDate:*(*(*(a1 + 40) + 8) + 40) options:0];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [*(a1 + 32) fakeCompetitionWithStartDate:*(*(*(a1 + 40) + 8) + 40) winningParticipant:a3];
      v11 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObject:v10];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      --v4;
    }

    while (v4);
  }
}

- (id)_fakeSnapshotWithCompleteRings:(BOOL)a3
{
  v3 = a3;
  v4 = _ActivitySharingDefaults();
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = ASCacheIndexForLocalDate();

  v7 = objc_alloc_init(MEMORY[0x277CCCFB0]);
  [v7 _setActivitySummaryIndex:v6];
  v8 = _HKStartDateForSnapshotIndex();
  [v7 _setStartDate:v8];

  v9 = _HKEndDateForSnapshotIndex();
  [v7 _setEndDate:v9];

  v10 = _LoadValueFromDefaultsWithFallback(v4, @"fakeSnapshotEnergyBurnedGoal", &unk_2850F5258);
  [v10 doubleValue];
  v12 = v11;

  v13 = arc4random_uniform(v12);
  v14 = _LoadValueFromDefaultsWithFallback(v4, @"fakeSnapshotExerciseGoal", &unk_2850F52A8);
  [v14 doubleValue];
  v16 = v15;

  v73 = arc4random_uniform(v16);
  v17 = _LoadValueFromDefaultsWithFallback(v4, @"fakeSnapshotStandGoal", &unk_2850F52B8);
  [v17 doubleValue];
  v19 = v18;

  v20 = arc4random_uniform(v19);
  v21 = _LoadValueFromDefaultsWithFallback(v4, @"fakeSnapshotMoveMinuteGoal", &unk_2850F52C8);
  [v21 doubleValue];
  v23 = v22;

  v24 = arc4random_uniform(v23);
  v25 = _LoadValueFromDefaultsWithFallback(v4, @"fakeSnapshotMoveMinuteEnabled", MEMORY[0x277CBEC28]);
  v26 = [v25 BOOLValue];

  if (v3)
  {
    v27 = v12;
  }

  else
  {
    v27 = -0.0;
  }

  ASLoggingInitialize();
  v28 = *MEMORY[0x277CE8FE8];
  v29 = os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Faking Move Minutes", buf, 2u);
    }

    [v7 setActivityMoveMode:2];
    v30 = MEMORY[0x277CCD7E8];
    v31 = [MEMORY[0x277CCDAB0] minuteUnit];
    v32 = [v30 quantityWithUnit:v31 doubleValue:v24];
    [v7 setAppleMoveTime:v32];

    v33 = MEMORY[0x277CCD7E8];
    v34 = [MEMORY[0x277CCDAB0] minuteUnit];
    v35 = [v33 quantityWithUnit:v34 doubleValue:v23];
    [v7 setAppleMoveTimeGoal:v35];

    v36 = 0.0;
    v12 = 0.0;
  }

  else
  {
    if (v29)
    {
      *v76 = 0;
      _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Faking Calories", v76, 2u);
    }

    v36 = v27 + v13;
    [v7 setActivityMoveMode:1];
  }

  v37 = MEMORY[0x277CCD7E8];
  v38 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v39 = [v37 quantityWithUnit:v38 doubleValue:v36];
  [v7 setActiveEnergyBurned:v39];

  v40 = MEMORY[0x277CCD7E8];
  v41 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v42 = [v40 quantityWithUnit:v41 doubleValue:v12];
  [v7 setActiveEnergyBurnedGoal:v42];

  v43 = -0.0;
  if (v3)
  {
    v44 = v16;
  }

  else
  {
    v44 = -0.0;
  }

  v45 = v44 + v73;
  if (v3)
  {
    v43 = v19;
  }

  v46 = v43 + v20;
  v47 = MEMORY[0x277CCD7E8];
  v48 = [MEMORY[0x277CCDAB0] minuteUnit];
  v49 = [v47 quantityWithUnit:v48 doubleValue:v45];
  [v7 setAppleExerciseTime:v49];

  v50 = MEMORY[0x277CCD7E8];
  v51 = [MEMORY[0x277CCDAB0] minuteUnit];
  v52 = [v50 quantityWithUnit:v51 doubleValue:v16];
  [v7 setAppleExerciseTimeGoal:v52];

  v53 = MEMORY[0x277CCD7E8];
  v54 = [MEMORY[0x277CCDAB0] countUnit];
  v55 = [v53 quantityWithUnit:v54 doubleValue:v46];
  [v7 setAppleStandHours:v55];

  v56 = MEMORY[0x277CCD7E8];
  v57 = [MEMORY[0x277CCDAB0] countUnit];
  v58 = [v56 quantityWithUnit:v57 doubleValue:v19];
  [v7 setAppleStandHoursGoal:v58];

  v59 = MEMORY[0x277CCD7E8];
  v60 = [MEMORY[0x277CCDAB0] meterUnit];
  v61 = [v59 quantityWithUnit:v60 doubleValue:arc4random_uniform(0x2710u)];
  [v7 setDistanceWalkingRunning:v61];

  v62 = MEMORY[0x277CCD7E8];
  v63 = [MEMORY[0x277CCDAB0] countUnit];
  v64 = [v62 quantityWithUnit:v63 doubleValue:arc4random_uniform(0x3A98u)];
  [v7 setStepCount:v64];

  v65 = MEMORY[0x277CCD7E8];
  v66 = [MEMORY[0x277CCDAB0] countUnit];
  v67 = [v65 quantityWithUnit:v66 doubleValue:arc4random_uniform(0xBB8u)];
  [v7 _setPushCount:v67];

  [v7 _setWheelchairUse:1];
  v68 = [MEMORY[0x277CCDDC8] snapshotWithActivitySummary:v7];
  databaseClient = self->_databaseClient;
  v75 = 0;
  v70 = [(ASDatabaseClient *)databaseClient localSourceUUIDWithError:&v75];
  [v68 setSourceUUID:v70];

  v71 = _FriendUUIDFromDefaults(v4);
  [v68 setFriendUUID:v71];

  return v68;
}

- (ASActivityDataManager)activityDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);

  return WeakRetained;
}

- (ASCloudKitManager)cloudKitManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);

  return WeakRetained;
}

- (ASCompetitionManager)competitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_competitionManager);

  return WeakRetained;
}

- (ASContactsManager)contactsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);

  return WeakRetained;
}

@end