@interface NSCalendar
- (double)atx_timestampWithHour:(unint64_t)a3 minute:(unint64_t)a4 atDayOfTimestamp:(id)a5;
@end

@implementation NSCalendar

- (double)atx_timestampWithHour:(unint64_t)a3 minute:(unint64_t)a4 atDayOfTimestamp:(id)a5
{
  v8 = [(NSCalendar *)self components:28 fromDate:a5];
  [v8 setHour:a3];
  [v8 setMinute:a4];
  v9 = [(NSCalendar *)self dateFromComponents:v8];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11;
}

@end