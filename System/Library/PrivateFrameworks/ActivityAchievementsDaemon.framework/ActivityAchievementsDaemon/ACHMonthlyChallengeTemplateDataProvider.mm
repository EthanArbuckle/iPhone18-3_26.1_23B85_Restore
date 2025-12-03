@interface ACHMonthlyChallengeTemplateDataProvider
- (ACHAchievementStoring)achievementStore;
- (ACHMonthlyChallengeTemplateDataProvider)initWithHealthStore:(id)store earnedInstanceStore:(id)instanceStore templateStore:(id)templateStore activitySummaryIterator:(id)iterator;
- (BOOL)hasMinimumActiveDaysWithError:(id *)error;
- (BOOL)isDate:(id)date betweenStartDate:(id)startDate andEndDate:(id)endDate;
- (BOOL)isWheelchairUserWithError:(id *)error;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (id)existingMonthlyChallengeTemplates;
- (int64_t)currentActivityMoveModeWithError:(id *)error;
- (int64_t)numberOfEarnedInstancesOfTemplateWithUniqueName:(id)name inDateComponentInterval:(id)interval withCalendar:(id)calendar error:(id *)error;
- (unint64_t)currentExperienceTypeWithError:(id *)error;
- (unint64_t)monthlyChallengeTypeForMonth:(id)month;
- (void)setMoveModeOverride:(int64_t)override;
@end

@implementation ACHMonthlyChallengeTemplateDataProvider

- (ACHMonthlyChallengeTemplateDataProvider)initWithHealthStore:(id)store earnedInstanceStore:(id)instanceStore templateStore:(id)templateStore activitySummaryIterator:(id)iterator
{
  storeCopy = store;
  instanceStoreCopy = instanceStore;
  templateStoreCopy = templateStore;
  iteratorCopy = iterator;
  v22.receiver = self;
  v22.super_class = ACHMonthlyChallengeTemplateDataProvider;
  v15 = [(ACHMonthlyChallengeTemplateDataProvider *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, store);
    objc_storeStrong(&v16->_earnedInstanceStore, instanceStore);
    objc_storeStrong(&v16->_templateStore, templateStore);
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    currentCalendar = v16->_currentCalendar;
    v16->_currentCalendar = hk_gregorianCalendarWithLocalTimeZone;

    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v16->_currentDate;
    v16->_currentDate = date;

    objc_storeStrong(&v16->_activitySummaryIterator, iterator);
  }

  return v16;
}

- (int64_t)numberOfEarnedInstancesOfTemplateWithUniqueName:(id)name inDateComponentInterval:(id)interval withCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  intervalCopy = interval;
  nameCopy = name;
  earnedInstanceStore = [(ACHMonthlyChallengeTemplateDataProvider *)self earnedInstanceStore];
  v14 = [earnedInstanceStore countOfEarnedInstancesForTemplateUniqueName:nameCopy inDateComponentInterval:intervalCopy withCalendar:calendarCopy error:error];

  return v14;
}

- (id)existingMonthlyChallengeTemplates
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  templateStore = [(ACHMonthlyChallengeTemplateDataProvider *)self templateStore];
  allTemplates = [templateStore allTemplates];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allTemplates;
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

- (unint64_t)monthlyChallengeTypeForMonth:(id)month
{
  monthCopy = month;
  existingMonthlyChallengeTemplates = [(ACHMonthlyChallengeTemplateDataProvider *)self existingMonthlyChallengeTemplates];
  v6 = MEMORY[0x277CCACA8];
  year = [monthCopy year];
  month = [monthCopy month];

  v9 = [v6 stringWithFormat:@"%04ld_%02ld", year, month];
  allObjects = [existingMonthlyChallengeTemplates allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ACHMonthlyChallengeTemplateDataProvider_monthlyChallengeTypeForMonth___block_invoke;
  v17[3] = &unk_278491B98;
  v18 = v9;
  v11 = v9;
  v12 = [allObjects hk_firstObjectPassingTest:v17];

  if (v12)
  {
    uniqueName = [v12 uniqueName];
    v14 = ACHMonthlyChallengeTypeFromTemplateUniqueName();
  }

  else
  {
    uniqueName = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(uniqueName, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, uniqueName, OS_LOG_TYPE_DEFAULT, "No monthly challenge created last month", buf, 2u);
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

- (BOOL)isDate:(id)date betweenStartDate:(id)startDate andEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if ([dateCopy hk_isAfterOrEqualToDate:startDate])
  {
    v9 = [dateCopy hk_isBeforeOrEqualToDate:endDateCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasMinimumActiveDaysWithError:(id *)error
{
  currentCalendar = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
  v7 = [currentCalendar hk_dateByAddingDays:-35 toDate:currentDate];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  v9 = *MEMORY[0x277CE8B28];
  v10 = [currentCalendar2 components:*MEMORY[0x277CE8B28] fromDate:v7];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
  v13 = [currentCalendar3 components:v9 fromDate:currentDate2];

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
  activitySummaryIterator = [(ACHMonthlyChallengeTemplateDataProvider *)self activitySummaryIterator];
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
  [activitySummaryIterator enumerateActivitySummariesForDateComponentInterval:v14 handler:v22 errorHandler:v21];

  v16 = v24[5];
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
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

- (BOOL)isWheelchairUserWithError:(id *)error
{
  healthStore = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v5 = [healthStore wheelchairUseWithError:error];

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

- (int64_t)currentActivityMoveModeWithError:(id *)error
{
  moveModeOverride = self->_moveModeOverride;
  if (moveModeOverride)
  {
    return [(NSNumber *)moveModeOverride intValue];
  }

  healthStore = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v8 = [healthStore activityMoveModeWithError:error];

  if (v8)
  {
    activityMoveMode = [v8 activityMoveMode];
  }

  else
  {
    activityMoveMode = 1;
  }

  return activityMoveMode;
}

- (unint64_t)currentExperienceTypeWithError:(id *)error
{
  healthStore = [(ACHMonthlyChallengeTemplateDataProvider *)self healthStore];
  v6 = [healthStore dateOfBirthComponentsWithError:error];

  if (v6)
  {
    currentCalendar = [(ACHMonthlyChallengeTemplateDataProvider *)self currentCalendar];
    currentDate = [(ACHMonthlyChallengeTemplateDataProvider *)self currentDate];
    v9 = FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setMoveModeOverride:(int64_t)override
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:override];
  moveModeOverride = self->_moveModeOverride;
  self->_moveModeOverride = v4;

  MEMORY[0x2821F96F8](v4, moveModeOverride);
}

- (NSDate)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (NSCalendar)currentCalendar
{
  currentCalendarOverride = self->_currentCalendarOverride;
  if (currentCalendarOverride)
  {
    hk_gregorianCalendarWithLocalTimeZone = currentCalendarOverride;
  }

  else
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return hk_gregorianCalendarWithLocalTimeZone;
}

- (ACHAchievementStoring)achievementStore
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementStore);

  return WeakRetained;
}

@end