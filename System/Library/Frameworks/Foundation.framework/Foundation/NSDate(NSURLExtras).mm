@interface NSDate(NSURLExtras)
- (NSString)_web_RFC1123DateString;
- (uint64_t)_web_compareDay:()NSURLExtras;
@end

@implementation NSDate(NSURLExtras)

- (NSString)_web_RFC1123DateString
{
  [self timeIntervalSinceReferenceDate];
  if (v1 < -1.26227808e10)
  {
    v1 = -1.26227808e10;
  }

  if (v1 <= 1.26227808e10)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1.26227808e10;
  }

  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneWithName:", @"GMT"}];
  v5 = [v4 components:764 fromDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceReferenceDate:", v2)}];
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s, %02ld %s %ld %02ld:%02ld:%02ld GMT", kDayStrs[[v5 weekday] - 1], objc_msgSend(v5, "day"), kMonthStrs[objc_msgSend(v5, "month") - 1], objc_msgSend(v5, "year"), objc_msgSend(v5, "hour"), objc_msgSend(v5, "minute"), objc_msgSend(v5, "second"));
}

- (uint64_t)_web_compareDay:()NSURLExtras
{
  if (self == a3)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [v6 components:28 fromDate:self];
  v8 = [v6 components:28 fromDate:a3];
  year = [v7 year];
  year2 = [v8 year];
  if (year < year2)
  {
    return -1;
  }

  if (year > year2)
  {
    return 1;
  }

  month = [v7 month];
  month2 = [v8 month];
  if (month < month2)
  {
    return -1;
  }

  if (month > month2)
  {
    return 1;
  }

  v14 = [v7 day];
  v15 = [v8 day];
  if (v14 < v15)
  {
    return -1;
  }

  else
  {
    return v14 > v15;
  }
}

@end