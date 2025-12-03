@interface NSCalendar
- (double)atx_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(id)timestamp;
@end

@implementation NSCalendar

- (double)atx_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(id)timestamp
{
  v8 = [(NSCalendar *)self components:28 fromDate:timestamp];
  [v8 setHour:hour];
  [v8 setMinute:minute];
  v9 = [(NSCalendar *)self dateFromComponents:v8];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11;
}

@end