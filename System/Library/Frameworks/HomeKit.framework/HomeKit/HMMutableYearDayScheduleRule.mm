@interface HMMutableYearDayScheduleRule
- (id)copyWithZone:(_NSZone *)a3;
- (void)setValidFrom:(id)a3;
- (void)setValidUntil:(id)a3;
@end

@implementation HMMutableYearDayScheduleRule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMYearDayScheduleRule allocWithZone:a3];
  v5 = [(HMYearDayScheduleRule *)self dateInterval];
  v6 = [(HMYearDayScheduleRule *)v4 initWithDateInterval:v5];

  return v6;
}

- (void)setValidUntil:(id)a3
{
  v4 = a3;
  [(HMMutableYearDayScheduleRule *)self setEndDate:v4];
  v5 = [(HMMutableYearDayScheduleRule *)self startDate];

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  if (v5)
  {
    [(HMMutableYearDayScheduleRule *)self startDate];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantPast];
  }
  v8 = ;
  v7 = [v6 initWithStartDate:v8 endDate:v4];

  [(HMYearDayScheduleRule *)self setDateInterval:v7];
}

- (void)setValidFrom:(id)a3
{
  v4 = a3;
  [(HMMutableYearDayScheduleRule *)self setStartDate:v4];
  v5 = [(HMMutableYearDayScheduleRule *)self endDate];

  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  if (v5)
  {
    [(HMMutableYearDayScheduleRule *)self endDate];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }
  v8 = ;
  v7 = [v6 initWithStartDate:v4 endDate:v8];

  [(HMYearDayScheduleRule *)self setDateInterval:v7];
}

@end