@interface AAUIMockAchievementsDataProvider
- (AAUIMockAchievementsDataProvider)init;
- (id)_ACHDateComponentIntervalWithMonthOffset:(unint64_t)a3;
- (id)_achievementForTemplate:(id)a3 earnedInstanceCount:(int64_t)a4 earnedInstanceOffset:(int64_t)a5 earnedInstanceValue:(int64_t)a6 goalValue:(int64_t)a7 progressValue:(int64_t)a8;
- (id)_currentMonthlyChallengeAchievementForTemplate:(id)a3 localizableSuffix:(id)a4 goalValue:(int64_t)a5 progressValue:(int64_t)a6 isEarned:(BOOL)a7;
- (id)_dateComponentsWithDayOffset:(int64_t)a3;
- (id)_distanceUnitForLocale:(id)a3;
- (id)_fitnessUIAssetsURLWithKey:(id)a3 value:(id)a4;
- (id)_monthStringFromTemplateName:(id)a3;
- (id)achievementAtIndexPath:(id)a3;
- (id)headerStringForSection:(int64_t)a3 isRecentAndRelevant:(BOOL)a4;
- (id)recentAndRelevantAchievementAtIndexPath:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation AAUIMockAchievementsDataProvider

- (AAUIMockAchievementsDataProvider)init
{
  v84[7] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = AAUIMockAchievementsDataProvider;
  v2 = [(AAUIMockAchievementsDataProvider *)&v78 init];
  if (v2)
  {
    v3 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v54 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v3 earnedInstanceCount:1 earnedInstanceOffset:-7 earnedInstanceValue:460 goalValue:0 progressValue:0];

    v58 = [(AAUIMockAchievementsDataProvider *)v2 _ACHDateComponentIntervalWithMonthOffset:0];
    v4 = ACHMonthlyChallengeTypeTotalWorkoutsTemplate();
    v5 = [(AAUIMockAchievementsDataProvider *)v2 _currentMonthlyChallengeAchievementForTemplate:v4 localizableSuffix:@"TotalWorkouts" goalValue:29 progressValue:21 isEarned:0];

    v57 = [(AAUIMockAchievementsDataProvider *)v2 _ACHDateComponentIntervalWithMonthOffset:-3];
    v6 = ACHMonthlyChallengeTypeStandRingTemplate();
    v77 = [(AAUIMockAchievementsDataProvider *)v2 _currentMonthlyChallengeAchievementForTemplate:v6 localizableSuffix:@"StandRing" goalValue:21 progressValue:21 isEarned:1];

    v56 = [(AAUIMockAchievementsDataProvider *)v2 _ACHDateComponentIntervalWithMonthOffset:-2];
    v7 = ACHMonthlyChallengeTypeTotalDistanceTemplate();
    v76 = [(AAUIMockAchievementsDataProvider *)v2 _currentMonthlyChallengeAchievementForTemplate:v7 localizableSuffix:@"TotalDistance" goalValue:146 progressValue:146 isEarned:1];

    v55 = [(AAUIMockAchievementsDataProvider *)v2 _ACHDateComponentIntervalWithMonthOffset:-1];
    v8 = ACHMonthlyChallengeTypeMoveRingTemplate();
    v52 = [(AAUIMockAchievementsDataProvider *)v2 _currentMonthlyChallengeAchievementForTemplate:v8 localizableSuffix:@"MoveRing" goalValue:24 progressValue:24 isEarned:1];

    v9 = DailyMoveRecordTemplate();
    v74 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v9 earnedInstanceCount:1 earnedInstanceOffset:-210 earnedInstanceValue:0 goalValue:721 progressValue:0];

    v10 = DailyExerciseRecordTemplate();
    v75 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v10 earnedInstanceCount:1 earnedInstanceOffset:-205 earnedInstanceValue:0 goalValue:53 progressValue:14];

    v11 = MoveGoal200PercentTemplate();
    v72 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v11 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:500 progressValue:324];

    v12 = MoveGoal300PercentTemplate();
    v73 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v12 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:500 progressValue:324];

    v13 = MoveGoal400PercentTemplate();
    v50 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v13 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:500 progressValue:324];

    v14 = LongestMoveStreakTemplate();
    v71 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v14 earnedInstanceCount:1 earnedInstanceOffset:-14 earnedInstanceValue:36 goalValue:0 progressValue:0];

    v15 = PerfectWeekMoveTemplate();
    v49 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v15 earnedInstanceCount:24 earnedInstanceOffset:-14 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v16 = PerfectWeekExerciseTemplate();
    v70 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v16 earnedInstanceCount:32 earnedInstanceOffset:-21 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v17 = PerfectWeekStandTemplate();
    v69 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v17 earnedInstanceCount:17 earnedInstanceOffset:-35 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v18 = PerfectWeekAllTemplate();
    v47 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v18 earnedInstanceCount:15 earnedInstanceOffset:-42 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v19 = HundredMoveGoals();
    v68 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v19 earnedInstanceCount:1 earnedInstanceOffset:-63 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v20 = FiveHundredMoveGoals();
    v67 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v20 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:0 progressValue:256];

    v21 = ThousandMoveGoals();
    v66 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v21 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:0 progressValue:256];

    v22 = SevenWorkoutWeekTemplate();
    v65 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v22 earnedInstanceCount:0 earnedInstanceOffset:0 earnedInstanceValue:0 goalValue:0 progressValue:1];

    v23 = FirstWorkoutTemplateForWorkoutActivityType();
    v64 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v23 earnedInstanceCount:1 earnedInstanceOffset:-210 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v24 = FirstWorkoutTemplateForWorkoutActivityType();
    v62 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v24 earnedInstanceCount:1 earnedInstanceOffset:-270 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v25 = FirstWorkoutTemplateForWorkoutActivityType();
    v63 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v25 earnedInstanceCount:1 earnedInstanceOffset:-90 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v26 = FirstWorkoutTemplateForWorkoutActivityType();
    v61 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v26 earnedInstanceCount:1 earnedInstanceOffset:-120 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v27 = FirstWorkoutTemplateForWorkoutActivityType();
    v59 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v27 earnedInstanceCount:1 earnedInstanceOffset:-90 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v28 = FirstWorkoutTemplateForWorkoutActivityType();
    v60 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v28 earnedInstanceCount:1 earnedInstanceOffset:-300 earnedInstanceValue:0 goalValue:0 progressValue:0];

    v29 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v30 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v29 earnedInstanceCount:1 earnedInstanceOffset:-14 earnedInstanceValue:441 goalValue:0 progressValue:0];

    v31 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v51 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v31 earnedInstanceCount:1 earnedInstanceOffset:-7 earnedInstanceValue:461 goalValue:0 progressValue:0];

    v32 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v48 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v32 earnedInstanceCount:1 earnedInstanceOffset:-21 earnedInstanceValue:342 goalValue:0 progressValue:0];

    v33 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v46 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v33 earnedInstanceCount:1 earnedInstanceOffset:-28 earnedInstanceValue:205 goalValue:0 progressValue:0];

    v34 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v44 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v34 earnedInstanceCount:1 earnedInstanceOffset:-35 earnedInstanceValue:276 goalValue:0 progressValue:0];

    v35 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
    v42 = [(AAUIMockAchievementsDataProvider *)v2 _achievementForTemplate:v35 earnedInstanceCount:1 earnedInstanceOffset:-56 earnedInstanceValue:456 goalValue:0 progressValue:0];

    v83 = v54;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
    v84[0] = v45;
    v53 = v5;
    v82 = v5;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    v84[1] = v43;
    v84[2] = MEMORY[0x277CBEBF8];
    v84[3] = MEMORY[0x277CBEBF8];
    v81[0] = v77;
    v81[1] = v76;
    v81[2] = v52;
    v81[3] = v5;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
    v84[4] = v41;
    v80[0] = v74;
    v80[1] = v75;
    v80[2] = v72;
    v80[3] = v73;
    v80[4] = v50;
    v80[5] = v71;
    v80[6] = v49;
    v80[7] = v70;
    v80[8] = v69;
    v80[9] = v47;
    v80[10] = v68;
    v80[11] = v67;
    v80[12] = v66;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:13];
    v84[5] = v36;
    v79[0] = v65;
    v79[1] = v64;
    v79[2] = v62;
    v79[3] = v63;
    v79[4] = v61;
    v79[5] = v59;
    v79[6] = v60;
    v79[7] = v30;
    v79[8] = v51;
    v79[9] = v48;
    v79[10] = v46;
    v79[11] = v44;
    v79[12] = v42;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:13];
    v84[6] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:7];
    achievements = v2->_achievements;
    v2->_achievements = v38;
  }

  return v2;
}

- (id)recentAndRelevantAchievementAtIndexPath:(id)a3
{
  achievements = self->_achievements;
  v4 = a3;
  v5 = -[NSArray objectAtIndexedSubscript:](achievements, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (id)achievementAtIndexPath:(id)a3
{
  achievements = self->_achievements;
  v4 = a3;
  v5 = -[NSArray objectAtIndexedSubscript:](achievements, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_achievements objectAtIndexedSubscript:a3];
  v4 = [v3 count];

  return v4;
}

- (id)headerStringForSection:(int64_t)a3 isRecentAndRelevant:(BOOL)a4
{
  v23[7] = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 localizedStringForKey:@"RECENT" value:&stru_2850CB9E8 table:@"Localizable"];
  v20 = [v21 localizedUppercaseString];
  v23[0] = v20;
  v23[1] = &stru_2850CB9E8;
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v19 localizedStringForKey:*MEMORY[0x277CE8A80] value:&stru_2850CB9E8 table:@"Localizable"];
  v16 = [v17 localizedUppercaseString];
  v23[2] = v16;
  v23[3] = &stru_2850CB9E8;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v15 localizedStringForKey:*MEMORY[0x277CE8A98] value:&stru_2850CB9E8 table:@"Localizable"];
  v5 = [v4 localizedUppercaseString];
  v23[4] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:*MEMORY[0x277CE8A78] value:&stru_2850CB9E8 table:@"Localizable"];
  v8 = [v7 localizedUppercaseString];
  v23[5] = v8;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:*MEMORY[0x277CE8AA0] value:&stru_2850CB9E8 table:@"Localizable"];
  v11 = [v10 localizedUppercaseString];
  v23[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:7];
  v13 = [v12 objectAtIndexedSubscript:a3];

  return v13;
}

- (id)_achievementForTemplate:(id)a3 earnedInstanceCount:(int64_t)a4 earnedInstanceOffset:(int64_t)a5 earnedInstanceValue:(int64_t)a6 goalValue:(int64_t)a7 progressValue:(int64_t)a8
{
  v14 = a3;
  if (a4 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CE8D38]);
    v16 = [v14 uniqueName];
    [v15 setTemplateUniqueName:v16];

    v17 = [(AAUIMockAchievementsDataProvider *)self _dateComponentsWithDayOffset:a5];
    [v15 setEarnedDateComponents:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    v19 = [v14 canonicalUnit];
    v20 = ACHHKQuantityWithValueAndUnit();
    [v15 setValue:v20];
  }

  v21 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithTemplate:v14 relevantEarnedInstance:v15 earnedInstanceCount:a4];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v23 = [v14 canonicalUnit];
  v24 = ACHHKQuantityWithValueAndUnit();
  [v21 setGoal:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
  v26 = [v14 canonicalUnit];
  v27 = ACHHKQuantityWithValueAndUnit();
  [v21 setProgress:v27];

  v28 = [v21 template];
  v29 = [v28 uniqueName];
  v30 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"%@/localization/" value:v29];
  [v21 setLocalizationBundleURL:v30];

  v31 = [v21 template];
  v32 = [v31 uniqueName];
  v33 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"%@/badgemodel/" value:v32];
  [v21 setResourceBundleURL:v33];

  v34 = [v21 template];
  v35 = [v34 uniqueName];
  v36 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"%@/badgeproperties/" value:v35];
  [v21 setPropertyListBundleURL:v36];

  ACHApplyBadgePropertiesToAchievement();

  return v21;
}

- (id)_currentMonthlyChallengeAchievementForTemplate:(id)a3 localizableSuffix:(id)a4 goalValue:(int64_t)a5 progressValue:(int64_t)a6 isEarned:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  if (v7)
  {
    v14 = objc_alloc_init(MEMORY[0x277CE8D38]);
    v15 = [v12 uniqueName];
    [v14 setTemplateUniqueName:v15];

    v16 = [v12 availabilityEnd];
    [v14 setEarnedDateComponents:v16];

    v17 = [v12 canonicalUnit];
    if ([v17 _isMetricDistance])
    {
      v18 = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [(AAUIMockAchievementsDataProvider *)self _distanceUnitForLocale:v18];
    }

    else
    {
      v19 = [v12 canonicalUnit];
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    v21 = ACHHKQuantityWithValueAndUnit();
    [v14 setValue:v21];
  }

  else
  {
    v14 = 0;
  }

  v22 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithTemplate:v12 relevantEarnedInstance:v14 earnedInstanceCount:v14 != 0];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v24 = [v12 canonicalUnit];
  v25 = ACHHKQuantityWithValueAndUnit();
  [v22 setGoal:v25];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v27 = [v12 canonicalUnit];
  v28 = ACHHKQuantityWithValueAndUnit();
  [v22 setProgress:v28];

  v29 = [v12 uniqueName];
  v30 = [(AAUIMockAchievementsDataProvider *)self _monthStringFromTemplateName:v29];

  v31 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"MonthlyAchievements/localization/challenge/%@/" value:v13];
  [v22 setLocalizationBundleURL:v31];

  v32 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"MonthlyAchievements/models/%@/badgemodel/" value:v30];
  [v22 setResourceBundleURL:v32];

  v33 = [(AAUIMockAchievementsDataProvider *)self _fitnessUIAssetsURLWithKey:@"MonthlyAchievements/models/%@/badgeproperties/challenge/" value:v30];
  [v22 setPropertyListBundleURL:v33];

  ACHApplyBadgePropertiesToAchievement();

  return v22;
}

- (id)_fitnessUIAssetsURLWithKey:(id)a3 value:(id)a4
{
  v5 = a3;
  v15 = 0;
  v6 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v15, a4];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AAUIMockAchievementsDataProvider *)v5 _fitnessUIAssetsURLWithKey:v8 value:v10];
    }
  }

  v11 = MEMORY[0x277CBEBC0];
  v12 = [@"file:///System/Library/Health/Assets/FitnessUIAssets.bundle/ActivityAchievements/" stringByAppendingString:v6];
  v13 = [v11 URLWithString:v12];

  return v13;
}

- (id)_dateComponentsWithDayOffset:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 hk_startOfDateByAddingDays:a3 toDate:v5];
  v7 = [v4 components:*MEMORY[0x277CE8B28] fromDate:v6];

  return v7;
}

- (id)_ACHDateComponentIntervalWithMonthOffset:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 hk_startOfMonthForDate:v5 addingMonths:a3];
  v7 = [v4 hk_startOfMonthForDate:v5 addingMonths:a3 + 1];
  v8 = [v4 hk_startOfDateBySubtractingDays:1 fromDate:v7];
  v9 = *MEMORY[0x277CE8B28];
  v10 = [v4 components:*MEMORY[0x277CE8B28] fromDate:v6];
  v11 = [v4 components:v9 fromDate:v8];
  v12 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v10 endDateComponents:v11];

  return v12;
}

- (id)_monthStringFromTemplateName:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"_"];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [v3 objectAtIndexedSubscript:2];
  v7 = [v4 stringWithFormat:@"%@_%@", v5, v6];

  return v7;
}

- (id)_distanceUnitForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x277CBE718]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  }

  else
  {
    [MEMORY[0x277CCDAB0] mileUnit];
  }
  v5 = ;

  return v5;
}

- (void)_fitnessUIAssetsURLWithKey:(os_log_t)log value:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23E4A3000, log, OS_LOG_TYPE_ERROR, "Error formatting assets URL with key (%@): %@", &v3, 0x16u);
}

@end