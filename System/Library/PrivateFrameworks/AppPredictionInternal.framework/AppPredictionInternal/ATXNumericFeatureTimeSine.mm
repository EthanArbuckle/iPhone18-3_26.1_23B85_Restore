@interface ATXNumericFeatureTimeSine
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureTimeSine

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  timeContext = [context timeContext];
  date = [timeContext date];

  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = MEMORY[0x277CBEA80];
  v7 = date;
  currentCalendar = [v6 currentCalendar];
  [currentCalendar getHour:&v14 minute:&v13 second:&v12 nanosecond:0 fromDate:v7];

  v9 = 3600 * v14 + 60 * v13 + v12;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:sin(v9 * 6.28318531 / 86400.0)];

  return v10;
}

@end