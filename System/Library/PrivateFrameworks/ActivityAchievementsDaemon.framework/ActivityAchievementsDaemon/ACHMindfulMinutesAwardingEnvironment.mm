@interface ACHMindfulMinutesAwardingEnvironment
- (ACHAwardsWorkoutClient)workoutClient;
- (ACHMindfulMinutesAwardingEnvironment)initWithHealthStore:(id)store workoutClient:(id)client calendar:(id)calendar currentDate:(id)date;
- (HKHealthStore)healthStore;
- (double)numberOfMindfulMinutesInCurrentMonth;
- (double)todayMindfulMinutesValue;
- (id)_dayDateIntervalForCurrentDate;
- (id)_monthDateIntervalForCurrentDate;
- (id)valueForUndefinedKey:(id)key;
- (void)logValues;
@end

@implementation ACHMindfulMinutesAwardingEnvironment

- (ACHMindfulMinutesAwardingEnvironment)initWithHealthStore:(id)store workoutClient:(id)client calendar:(id)calendar currentDate:(id)date
{
  storeCopy = store;
  clientCopy = client;
  calendarCopy = calendar;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = ACHMindfulMinutesAwardingEnvironment;
  v14 = [(ACHMindfulMinutesAwardingEnvironment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_calendar, calendar);
    objc_storeWeak(&v15->_healthStore, storeCopy);
    objc_storeStrong(&v15->_currentDate, date);
    objc_storeWeak(&v15->_workoutClient, clientCopy);
  }

  return v15;
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
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingEnvironment] Mindful Minutes awarding environment asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (double)todayMindfulMinutesValue
{
  v17 = *MEMORY[0x277D85DE8];
  _dayDateIntervalForCurrentDate = [(ACHMindfulMinutesAwardingEnvironment *)self _dayDateIntervalForCurrentDate];
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  v14 = 0;
  v5 = [WeakRetained mindfulMinutesForForDateInterval:_dayDateIntervalForCurrentDate error:&v14];
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

  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  [v5 doubleValueForUnit:minuteUnit];
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (double)numberOfMindfulMinutesInCurrentMonth
{
  v17 = *MEMORY[0x277D85DE8];
  _monthDateIntervalForCurrentDate = [(ACHMindfulMinutesAwardingEnvironment *)self _monthDateIntervalForCurrentDate];
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  v14 = 0;
  v5 = [WeakRetained mindfulMinutesForForDateInterval:_monthDateIntervalForCurrentDate error:&v14];
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

  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  [v5 doubleValueForUnit:minuteUnit];
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