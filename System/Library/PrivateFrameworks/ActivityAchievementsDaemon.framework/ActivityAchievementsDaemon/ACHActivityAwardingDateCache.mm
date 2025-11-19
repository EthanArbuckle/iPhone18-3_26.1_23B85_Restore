@interface ACHActivityAwardingDateCache
- (ACHActivityAwardingDateCache)initWithCalendar:(id)a3;
- (NSNumber)dayOfMonthForToday;
- (NSNumber)dayOfWeekForLastDayOfFitnessWeek;
- (NSNumber)dayOfWeekForToday;
- (NSNumber)numberOfDaysInThisMonth;
- (void)_clearDateVariables;
- (void)setCurrentDateComponents:(id)a3;
@end

@implementation ACHActivityAwardingDateCache

- (NSNumber)numberOfDaysInThisMonth
{
  numberOfDaysInThisMonth = self->_numberOfDaysInThisMonth;
  if (!numberOfDaysInThisMonth)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(ACHActivityAwardingDateCache *)self calendar];
    v6 = [(ACHActivityAwardingDateCache *)self currentDate];
    [v5 rangeOfUnit:16 inUnit:8 forDate:v6];
    v8 = [v4 numberWithUnsignedInteger:v7];
    v9 = self->_numberOfDaysInThisMonth;
    self->_numberOfDaysInThisMonth = v8;

    numberOfDaysInThisMonth = self->_numberOfDaysInThisMonth;
  }

  return numberOfDaysInThisMonth;
}

- (ACHActivityAwardingDateCache)initWithCalendar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACHActivityAwardingDateCache;
  v6 = [(ACHActivityAwardingDateCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, a3);
  }

  return v7;
}

- (void)_clearDateVariables
{
  dayOfWeekForToday = self->_dayOfWeekForToday;
  self->_dayOfWeekForToday = 0;

  numberOfDaysInThisMonth = self->_numberOfDaysInThisMonth;
  self->_numberOfDaysInThisMonth = 0;

  dayOfMonthForToday = self->_dayOfMonthForToday;
  self->_dayOfMonthForToday = 0;
}

- (void)setCurrentDateComponents:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_currentDateComponents, a3);
  if (self->_currentDateComponents)
  {
    v5 = [(ACHActivityAwardingDateCache *)self calendar];
    v6 = [v5 dateFromComponents:v7];
    [(ACHActivityAwardingDateCache *)self setCurrentDate:v6];
  }

  else
  {
    [(ACHActivityAwardingDateCache *)self setCurrentDate:0];
  }

  [(ACHActivityAwardingDateCache *)self _clearDateVariables];
}

- (NSNumber)dayOfWeekForToday
{
  dayOfWeekForToday = self->_dayOfWeekForToday;
  if (!dayOfWeekForToday)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(ACHActivityAwardingDateCache *)self calendar];
    v6 = [(ACHActivityAwardingDateCache *)self currentDate];
    v7 = [v4 numberWithInteger:{objc_msgSend(v5, "component:fromDate:", 512, v6)}];
    v8 = self->_dayOfWeekForToday;
    self->_dayOfWeekForToday = v7;

    dayOfWeekForToday = self->_dayOfWeekForToday;
  }

  return dayOfWeekForToday;
}

- (NSNumber)dayOfWeekForLastDayOfFitnessWeek
{
  dayOfWeekForLastDayOfFitnessWeek = self->_dayOfWeekForLastDayOfFitnessWeek;
  if (!dayOfWeekForLastDayOfFitnessWeek)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{MEMORY[0x223DAA9B0](0, a2)}];
    v5 = self->_dayOfWeekForLastDayOfFitnessWeek;
    self->_dayOfWeekForLastDayOfFitnessWeek = v4;

    dayOfWeekForLastDayOfFitnessWeek = self->_dayOfWeekForLastDayOfFitnessWeek;
  }

  return dayOfWeekForLastDayOfFitnessWeek;
}

- (NSNumber)dayOfMonthForToday
{
  dayOfMonthForToday = self->_dayOfMonthForToday;
  if (!dayOfMonthForToday)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(ACHActivityAwardingDateCache *)self calendar];
    v6 = [(ACHActivityAwardingDateCache *)self currentDate];
    v7 = [v4 numberWithInteger:{objc_msgSend(v5, "component:fromDate:", 16, v6)}];
    v8 = self->_dayOfMonthForToday;
    self->_dayOfMonthForToday = v7;

    dayOfMonthForToday = self->_dayOfMonthForToday;
  }

  return dayOfMonthForToday;
}

@end