@interface APSDatePrinter
+ (id)dateStringFromDate:(id)date;
+ (id)dateStringFromInterval:(double)interval;
@end

@implementation APSDatePrinter

+ (id)dateStringFromDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = sub_10003206C();
    v5 = [v4 stringFromDate:dateCopy];
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    [dateCopy timeIntervalSinceReferenceDate];
    v9 = v8;

    v10 = [NSString stringWithFormat:@"%@ (%.2f seconds ago)", v5, v7 - v9];
  }

  else
  {
    v10 = @"never";
  }

  return v10;
}

+ (id)dateStringFromInterval:(double)interval
{
  if (interval == 0.0)
  {
    interval = @"never";
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v6 = sub_10003206C();
    v7 = [v6 stringFromDate:v5];
    +[NSDate timeIntervalSinceReferenceDate];
    interval = [NSString stringWithFormat:@"%@ (%.2f seconds ago)", v7, v8 - interval];
  }

  return interval;
}

@end