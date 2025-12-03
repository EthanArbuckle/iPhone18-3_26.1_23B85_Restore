@interface NSDate
+ (id)accessibleMailLikeDescriptionFromDate:(id)date;
+ (id)dateFormatter;
+ (id)dateStringFromDate:(id)date withDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle isRelative:(BOOL)relative;
+ (id)dayOfWeekFromDate:(id)date;
+ (id)mailLikeDescriptionFromDate:(id)date;
- (BOOL)isEqualToDay:(id)day;
- (BOOL)isEqualToWeek:(id)week;
- (BOOL)isFuture;
- (BOOL)isToday;
- (BOOL)wasLessThanAWeekAgo;
- (BOOL)wasYesterday;
- (NSDate)dateWithDeltaDays:(int64_t)days;
- (NSDate)dateWithDeltaWeeks:(int64_t)weeks;
@end

@implementation NSDate

- (BOOL)isEqualToDay:(id)day
{
  dayCopy = day;
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = [v5 components:28 fromDate:self];
  v7 = [v5 components:28 fromDate:dayCopy];

  year = [v7 year];
  if (year == [v6 year] && (v9 = objc_msgSend(v7, "month"), v9 == objc_msgSend(v6, "month")))
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

- (BOOL)isEqualToWeek:(id)week
{
  weekCopy = week;
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = [v5 components:8196 fromDate:self];
  v7 = [v5 components:8196 fromDate:weekCopy];

  year = [v7 year];
  if (year == [v6 year])
  {
    weekOfYear = [v7 weekOfYear];
    v10 = weekOfYear == [v6 weekOfYear];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSDate)dateWithDeltaDays:(int64_t)days
{
  v5 = +[NSCalendar currentCalendar];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:days];
  v7 = [v5 dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (NSDate)dateWithDeltaWeeks:(int64_t)weeks
{
  v5 = +[NSCalendar currentCalendar];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setWeekOfYear:weeks];
  v7 = [v5 dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (BOOL)isToday
{
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = [v3 components:28 fromDate:self];
  v5 = +[NSDate date];
  v6 = [v3 components:28 fromDate:v5];

  year = [v6 year];
  if (year == [v4 year] && (v8 = objc_msgSend(v6, "month"), v8 == objc_msgSend(v4, "month")))
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
  threadDictionary = [v2 threadDictionary];

  v4 = [threadDictionary objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  if (!v4)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = +[NSLocale autoupdatingCurrentLocale];
    [v4 setLocale:v5];

    [threadDictionary setObject:v4 forKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  }

  return v4;
}

+ (id)dateStringFromDate:(id)date withDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle isRelative:(BOOL)relative
{
  relativeCopy = relative;
  dateCopy = date;
  v10 = +[NSThread currentThread];
  threadDictionary = [v10 threadDictionary];

  v12 = [threadDictionary objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  if (!v12)
  {
    v12 = +[NSMutableDictionary dictionary];
    [threadDictionary setObject:v12 forKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  }

  relativeCopy = [NSString stringWithFormat:@"%lu-%lu-%d", style, timeStyle, relativeCopy];
  v14 = [v12 objectForKey:relativeCopy];
  if (!v14)
  {
    v14 = objc_alloc_init(NSDateFormatter);
    v15 = +[NSLocale autoupdatingCurrentLocale];
    [v14 setLocale:v15];

    [v14 setDateStyle:style];
    [v14 setTimeStyle:timeStyle];
    [v14 setDoesRelativeDateFormatting:relativeCopy];
    [v12 setObject:v14 forKey:relativeCopy];
  }

  v16 = [v14 stringFromDate:dateCopy];

  return v16;
}

+ (id)dayOfWeekFromDate:(id)date
{
  dateCopy = date;
  v5 = +[NSLocale currentLocale];
  v6 = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:v5];

  dateFormatter = [self dateFormatter];
  [dateFormatter setDateFormat:v6];
  v8 = [dateFormatter stringFromDate:dateCopy];

  return v8;
}

+ (id)mailLikeDescriptionFromDate:(id)date
{
  dateCopy = date;
  if ([dateCopy isFuture])
  {
    v5 = [NSDate shortDateStringFromDateNoRel:dateCopy];
  }

  else if ([dateCopy isToday])
  {
    v5 = [NSDate shortTimeStringFromDate:dateCopy];
  }

  else if ([dateCopy wasLessThanAWeekAgo] && (objc_msgSend(dateCopy, "wasYesterday") & 1) == 0)
  {
    v5 = [self dayOfWeekFromDate:dateCopy];
  }

  else
  {
    v5 = [NSDate shortDateStringFromDate:dateCopy];
  }

  v6 = v5;

  return v6;
}

+ (id)accessibleMailLikeDescriptionFromDate:(id)date
{
  dateCopy = date;
  if ([dateCopy isFuture])
  {
    goto LABEL_2;
  }

  if ([dateCopy isToday])
  {
    v5 = [NSDate shortTimeStringFromDate:dateCopy];
  }

  else
  {
    if (![dateCopy wasLessThanAWeekAgo] || (objc_msgSend(dateCopy, "wasYesterday") & 1) != 0)
    {
LABEL_2:
      v5 = [NSDate longDateStringFromDateNoRel:dateCopy];
      goto LABEL_5;
    }

    v5 = [self dayOfWeekFromDate:dateCopy];
  }

LABEL_5:
  v6 = v5;

  return v6;
}

@end