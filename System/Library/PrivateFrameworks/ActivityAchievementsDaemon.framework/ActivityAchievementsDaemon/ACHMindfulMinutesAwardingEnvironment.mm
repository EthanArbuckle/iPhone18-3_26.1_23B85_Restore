@interface ACHMindfulMinutesAwardingEnvironment
- (ACHAwardsWorkoutClient)workoutClient;
- (ACHMindfulMinutesAwardingEnvironment)initWithHealthStore:(id)a3 workoutClient:(id)a4 calendar:(id)a5 currentDate:(id)a6;
- (HKHealthStore)healthStore;
- (double)numberOfMindfulMinutesInCurrentMonth;
- (double)todayMindfulMinutesValue;
- (id)_dayDateIntervalForCurrentDate;
- (id)_monthDateIntervalForCurrentDate;
- (id)valueForUndefinedKey:(id)a3;
- (void)logValues;
@end

@implementation ACHMindfulMinutesAwardingEnvironment

- (ACHMindfulMinutesAwardingEnvironment)initWithHealthStore:(id)a3 workoutClient:(id)a4 calendar:(id)a5 currentDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ACHMindfulMinutesAwardingEnvironment;
  v14 = [(ACHMindfulMinutesAwardingEnvironment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_calendar, a5);
    objc_storeWeak(&v15->_healthStore, v10);
    objc_storeStrong(&v15->_currentDate, a6);
    objc_storeWeak(&v15->_workoutClient, v11);
  }

  return v15;
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
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingEnvironment] Mindful Minutes awarding environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (double)todayMindfulMinutesValue
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ACHMindfulMinutesAwardingEnvironment *)self _dayDateIntervalForCurrentDate];
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  v14 = 0;
  v5 = [WeakRetained mindfulMinutesForForDateInterval:v3 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingEnvironment] Failed to compute todayMindfulMinutesValue: %@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v5 doubleValueForUnit:v9];
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (double)numberOfMindfulMinutesInCurrentMonth
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ACHMindfulMinutesAwardingEnvironment *)self _monthDateIntervalForCurrentDate];
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  v14 = 0;
  v5 = [WeakRetained mindfulMinutesForForDateInterval:v3 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingEnvironment] Failed to compute numberOfMindfulMinutesInCurrentMonth: %@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v5 doubleValueForUnit:v9];
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)logValues
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentDate = self->_currentDate;
    [(ACHMindfulMinutesAwardingEnvironment *)self todayMindfulMinutesValue];
    v6 = v5;
    [(ACHMindfulMinutesAwardingEnvironment *)self numberOfMindfulMinutesInCurrentMonth];
    v9 = 138412802;
    v10 = currentDate;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingEnvironment] currentDate: %@, todayMindfulMinutesValue: %f, numberOfMindfulMinutesInCurrentMonth: %f", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_dayDateIntervalForCurrentDate
{
  v3 = [(NSCalendar *)self->_calendar components:28 fromDate:self->_currentDate];
  v4 = [(NSCalendar *)self->_calendar dateFromComponents:v3];
  v5 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:self->_currentDate];

  return v5;
}

- (id)_monthDateIntervalForCurrentDate
{
  v3 = [(NSCalendar *)self->_calendar components:28 fromDate:self->_currentDate];
  [v3 year];
  [v3 month];
  v4 = ACHDateComponentsForYearMonthDay();
  v5 = [(NSCalendar *)self->_calendar dateFromComponents:v4];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:self->_currentDate];

  return v6;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_healthStore);

  return WeakRetained;
}

- (ACHAwardsWorkoutClient)workoutClient
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);

  return WeakRetained;
}

@end