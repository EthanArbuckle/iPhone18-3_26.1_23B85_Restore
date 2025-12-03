@interface HMMutableYearDayScheduleRule
- (id)copyWithZone:(_NSZone *)zone;
- (void)setValidFrom:(id)from;
- (void)setValidUntil:(id)until;
@end

@implementation HMMutableYearDayScheduleRule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMYearDayScheduleRule allocWithZone:zone];
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  v6 = [(HMYearDayScheduleRule *)v4 initWithDateInterval:dateInterval];

  return v6;
}

- (void)setValidUntil:(id)until
{
  untilCopy = until;
  [(HMMutableYearDayScheduleRule *)self setEndDate:untilCopy];
  startDate = [(HMMutableYearDayScheduleRule *)self startDate];

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  if (startDate)
  {
    [(HMMutableYearDayScheduleRule *)self startDate];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantPast];
  }
  v8 = ;
  v7 = [v6 initWithStartDate:v8 endDate:untilCopy];

  [(HMYearDayScheduleRule *)self setDateInterval:v7];
}

- (void)setValidFrom:(id)from
{
  fromCopy = from;
  [(HMMutableYearDayScheduleRule *)self setStartDate:fromCopy];
  endDate = [(HMMutableYearDayScheduleRule *)self endDate];

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  if (endDate)
  {
    [(HMMutableYearDayScheduleRule *)self endDate];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }
  v8 = ;
  v7 = [v6 initWithStartDate:fromCopy endDate:v8];

  [(HMYearDayScheduleRule *)self setDateInterval:v7];
}

@end