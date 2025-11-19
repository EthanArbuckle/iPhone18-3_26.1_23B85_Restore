@interface NSDate
+ (id)accessibleMailLikeDescriptionFromDate:(id)a3;
+ (id)dateFormatter;
+ (id)dateStringFromDate:(id)a3 withDateStyle:(unint64_t)a4 timeStyle:(unint64_t)a5 isRelative:(BOOL)a6;
+ (id)dayOfWeekFromDate:(id)a3;
+ (id)mailLikeDescriptionFromDate:(id)a3;
- (BOOL)isEqualToDay:(id)a3;
- (BOOL)isEqualToWeek:(id)a3;
- (BOOL)isFuture;
- (BOOL)isToday;
- (BOOL)wasLessThanAWeekAgo;
- (BOOL)wasYesterday;
- (NSDate)dateWithDeltaDays:(int64_t)a3;
- (NSDate)dateWithDeltaWeeks:(int64_t)a3;
@end

@implementation NSDate

- (BOOL)isEqualToDay:(id)a3
{
  v4 = a3;
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = [v5 components:28 fromDate:self];
  v7 = [v5 components:28 fromDate:v4];

  v8 = [v7 year];
  if (v8 == [v6 year] && (v9 = objc_msgSend(v7, "month"), v9 == objc_msgSend(v6, "month")))
  {
    v10 = [v7 day];
    v11 = v10 == [v6 day];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToWeek:(id)a3
{
  v4 = a3;
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = [v5 components:8196 fromDate:self];
  v7 = [v5 components:8196 fromDate:v4];

  v8 = [v7 year];
  if (v8 == [v6 year])
  {
    v9 = [v7 weekOfYear];
    v10 = v9 == [v6 weekOfYear];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSDate)dateWithDeltaDays:(int64_t)a3
{
  v5 = +[NSCalendar currentCalendar];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:a3];
  v7 = [v5 dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (NSDate)dateWithDeltaWeeks:(int64_t)a3
{
  v5 = +[NSCalendar currentCalendar];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setWeekOfYear:a3];
  v7 = [v5 dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (BOOL)isToday
{
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = [v3 components:28 fromDate:self];
  v5 = +[NSDate date];
  v6 = [v3 components:28 fromDate:v5];

  v7 = [v6 year];
  if (v7 == [v4 year] && (v8 = objc_msgSend(v6, "month"), v8 == objc_msgSend(v4, "month")))
  {
    v9 = [v6 day];
    v10 = v9 == [v4 day];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isFuture
{
  v3 = +[NSDate date];
  v4 = [(NSDate *)self compare:v3];

  return v4 == NSOrderedDescending;
}

- (BOOL)wasYesterday
{
  v3 = +[NSDate date];
  v4 = [v3 dateWithDeltaDays:-1];
  LOBYTE(self) = [(NSDate *)self isEqualToDay:v4];

  return self;
}

- (BOOL)wasLessThanAWeekAgo
{
  if ([(NSDate *)self isFuture])
  {
    return 0;
  }

  v4 = +[NSDate date];
  v5 = [v4 dateWithDeltaWeeks:-1];
  v6 = [(NSDate *)self compare:v5];

  return v6 == NSOrderedDescending;
}

+ (id)dateFormatter
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  if (!v4)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = +[NSLocale autoupdatingCurrentLocale];
    [v4 setLocale:v5];

    [v3 setObject:v4 forKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  }

  return v4;
}

+ (id)dateStringFromDate:(id)a3 withDateStyle:(unint64_t)a4 timeStyle:(unint64_t)a5 isRelative:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = +[NSThread currentThread];
  v11 = [v10 threadDictionary];

  v12 = [v11 objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  if (!v12)
  {
    v12 = +[NSMutableDictionary dictionary];
    [v11 setObject:v12 forKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  }

  v13 = [NSString stringWithFormat:@"%lu-%lu-%d", a4, a5, v6];
  v14 = [v12 objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(NSDateFormatter);
    v15 = +[NSLocale autoupdatingCurrentLocale];
    [v14 setLocale:v15];

    [v14 setDateStyle:a4];
    [v14 setTimeStyle:a5];
    [v14 setDoesRelativeDateFormatting:v6];
    [v12 setObject:v14 forKey:v13];
  }

  v16 = [v14 stringFromDate:v9];

  return v16;
}

+ (id)dayOfWeekFromDate:(id)a3
{
  v4 = a3;
  v5 = +[NSLocale currentLocale];
  v6 = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:v5];

  v7 = [a1 dateFormatter];
  [v7 setDateFormat:v6];
  v8 = [v7 stringFromDate:v4];

  return v8;
}

+ (id)mailLikeDescriptionFromDate:(id)a3
{
  v4 = a3;
  if ([v4 isFuture])
  {
    v5 = [NSDate shortDateStringFromDateNoRel:v4];
  }

  else if ([v4 isToday])
  {
    v5 = [NSDate shortTimeStringFromDate:v4];
  }

  else if ([v4 wasLessThanAWeekAgo] && (objc_msgSend(v4, "wasYesterday") & 1) == 0)
  {
    v5 = [a1 dayOfWeekFromDate:v4];
  }

  else
  {
    v5 = [NSDate shortDateStringFromDate:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)accessibleMailLikeDescriptionFromDate:(id)a3
{
  v4 = a3;
  if ([v4 isFuture])
  {
    goto LABEL_2;
  }

  if ([v4 isToday])
  {
    v5 = [NSDate shortTimeStringFromDate:v4];
  }

  else
  {
    if (![v4 wasLessThanAWeekAgo] || (objc_msgSend(v4, "wasYesterday") & 1) != 0)
    {
LABEL_2:
      v5 = [NSDate longDateStringFromDateNoRel:v4];
      goto LABEL_5;
    }

    v5 = [a1 dayOfWeekFromDate:v4];
  }

LABEL_5:
  v6 = v5;

  return v6;
}

@end