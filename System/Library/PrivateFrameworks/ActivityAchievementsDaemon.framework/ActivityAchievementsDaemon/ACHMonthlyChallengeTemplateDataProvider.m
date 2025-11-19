@interface ACHMonthlyChallengeTemplateDataProvider
- (ACHAchievementStoring)achievementStore;
- (ACHMonthlyChallengeTemplateDataProvider)initWithHealthStore:(id)a3 earnedInstanceStore:(id)a4 templateStore:(id)a5 activitySummaryIterator:(id)a6;
- (BOOL)hasMinimumActiveDaysWithError:(id *)a3;
- (BOOL)isDate:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5;
- (BOOL)isWheelchairUserWithError:(id *)a3;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (id)existingMonthlyChallengeTemplates;
- (int64_t)currentActivityMoveModeWithError:(id *)a3;
- (int64_t)numberOfEarnedInstancesOfTemplateWithUniqueName:(id)a3 inDateComponentInterval:(id)a4 withCalendar:(id)a5 error:(id *)a6;
- (unint64_t)currentExperienceTypeWithError:(id *)a3;
- (unint64_t)monthlyChallengeTypeForMonth:(id)a3;
- (void)setMoveModeOverride:(int64_t)a3;
@end

@implementation ACHMonthlyChallengeTemplateDataProvider

- (ACHMonthlyChallengeTemplateDataProvider)initWithHealthStore:(id)a3 earnedInstanceStore:(id)a4 templateStore:(id)a5 activitySummaryIterator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = ACHMonthlyChallengeTemplateDataProvider;
  v15 = [(ACHMonthlyChallengeTemplateDataProvider *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, a3);
    objc_storeStrong(&v16->_earnedInstanceStore, a4);
    objc_storeStrong(&v16->_templateStore, a5);
    v17 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    currentCalendar = v16->_currentCalendar;
    v16->_currentCalendar = v17;

    v19 = [MEMORY[0x277CBEAA8] date];
    currentDate = v16->_currentDate;
    v16->_currentDate = v19;

    objc_storeStrong(&v16->_activitySummaryIterator, a6);
  }

  return v16;
}

- (int64_t)numberOfEarnedInstancesOfTemplateWithUniqueName:(id)a3 inDateComponentInterval:(id)a4 withCalendar:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(ACHMonthlyChallengeTemplateDataProvider *)self earnedInstanceStore];
  v14 = [v13 countOfEarnedInstancesForTemplateUniqueName:v12 inDateComponentInterval:v11 withCalendar:v10 error:a6];

  return v14;
}

- (id)existingMonthlyChallengeTemplates
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(ACHMonthlyChallengeTemplateDataProvider *)self templateStore];
  v5 = [v4 allTemplates];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (ACHTemplateIsMonthlyChallenge())
        {
          [v3 addObject:{v11, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)monthlyChallengeTypeForMonth:(id)a3
{
  v4 = a3;
  v5 = [(ACHMonthlyChallengeTemplateDataProvider *)self existingMonthlyChallengeTemplates];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 year];
  v8 = [v4 month];

  v9 = [v6 stringWithFormat:@"%04ld_%02ld", v7, v8];
  v10 = [v5 allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ACHMonthlyChallengeTemplateDataProvider_monthlyChallengeTypeForMonth___block_invoke;
  v17[3] = &unk_278491B98;
  v18 = v9;
  v11 = v9;
  v12 = [v10 hk_firstObjectPassingTest:v17];

  if (v12)
  {
    v13 = [v12 uniqueName];
    v14 = ACHMonthlyChallengeTypeFromTemplateUniqueName();
  }

  else
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "No monthly challenge created last month", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __72__ACHMonthlyChallengeTemplateDataProvider_monthlyChallengeTypeForMonth___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueName];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

- (BOOL)isDate:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 hk_isAfterOrEqualToDate:a4])
  {
    v9 = [v7 hk_isBeforeOrEqualToDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasMinimumActiveDaysWithError:(id *)a3
{
  v5 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  v6 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
  v7 = [v5 hk_dateByAddingDays:-35 toDate:v6];

  v8 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  v9 = *MEMORY[0x277CE8B28];
  v10 = [v8 components:*MEMORY[0x277CE8B28] fromDate:v7];

  v11 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  v12 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
  v13 = [v11 components:v9 fromDate:v12];

  v14 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v10 endDateComponents:v13];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v15 = [(ACHMonthlyChallengeTemplateDataProvider *)self activitySummaryIterator];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__ACHMonthlyChallengeTemplateDataProvider_hasMinimumActiveDaysWithError___block_invoke;
  v22[3] = &unk_2784913B0;
  v22[4] = &v29;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__ACHMonthlyChallengeTemplateDataProvider_hasMinimumActiveDaysWithError___block_invoke_2;
  v21[3] = &unk_278490958;
  v21[4] = &v23;
  [v15 enumerateActivitySummariesForDateComponentInterval:v14 handler:v22 errorHandler:v21];

  v16 = v24[5];
  v17 = v16;
  if (v16)
  {
    if (a3)
    {
      v18 = v16;
      *a3 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = v30[3] > 13;
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v19;
}

void __73__ACHMonthlyChallengeTemplateDataProvider_hasMinimumActiveDaysWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 activityMoveMode] == 2)
  {
    [v3 appleMoveTime];
  }

  else
  {
    [v3 activeEnergyBurned];
  }
  v7 = ;
  v4 = [v3 activityMoveMode];

  if (v4 == 2)
  {
    [MEMORY[0x277CCDAB0] minuteUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] kilocalorieUnit];
  }
  v5 = ;
  [v7 doubleValueForUnit:v5];
  if (v6 > 2.22044605e-16)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)isWheelchairUserWithError:(id *)a3
{
  v4 = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v5 = [v4 wheelchairUseWithError:a3];

  if (v5)
  {
    v6 = [v5 wheelchairUse] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)currentActivityMoveModeWithError:(id *)a3
{
  moveModeOverride = self->_moveModeOverride;
  if (moveModeOverride)
  {
    return [(NSNumber *)moveModeOverride intValue];
  }

  v7 = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v8 = [v7 activityMoveModeWithError:a3];

  if (v8)
  {
    v5 = [v8 activityMoveMode];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)currentExperienceTypeWithError:(id *)a3
{
  v5 = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v6 = [v5 dateOfBirthComponentsWithError:a3];

  if (v6)
  {
    v7 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
    v8 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
    v9 = FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setMoveModeOverride:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  moveModeOverride = self->_moveModeOverride;
  self->_moveModeOverride = v4;

  MEMORY[0x2821F96F8](v4, moveModeOverride);
}

- (NSDate)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    v3 = currentDateOverride;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  return v3;
}

- (NSCalendar)currentCalendar
{
  currentCalendarOverride = self->_currentCalendarOverride;
  if (currentCalendarOverride)
  {
    v3 = currentCalendarOverride;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return v3;
}

- (ACHAchievementStoring)achievementStore
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementStore);

  return WeakRetained;
}

@end