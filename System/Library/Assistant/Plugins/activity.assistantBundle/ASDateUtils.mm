@interface ASDateUtils
+ (id)eventEndDateFromDate:(id)date;
+ (id)eventStartDateFromDate:(id)date;
+ (id)predicateForEventsWithDateRangeFromDate:(id)date toDate:(id)toDate;
+ (id)subtractDays:(int64_t)days fromDate:(id)date;
@end

@implementation ASDateUtils

+ (id)eventStartDateFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    v5 = dateCopy;
  }

  else
  {
    v5 = +[NSDate date];
  }

  v6 = v5;

  return v6;
}

+ (id)eventEndDateFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    v5 = dateCopy;
  }

  else
  {
    v5 = +[NSDate date];
  }

  v6 = v5;

  return v6;
}

+ (id)predicateForEventsWithDateRangeFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  if (!(dateCopy | toDateCopy))
  {
    v8 = [NSPredicate predicateWithValue:1];
    v7 = 0;
    dateCopy = 0;
    goto LABEL_15;
  }

  v7 = toDateCopy;
  if (!dateCopy)
  {
    v9 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "+[ASDateUtils predicateForEventsWithDateRangeFromDate:toDate:]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s No start date specified. Defaulting to [NSDate distantPast]", &v12, 0xCu);
    }

    dateCopy = +[NSDate distantPast];
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!toDateCopy)
  {
LABEL_9:
    v10 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "+[ASDateUtils predicateForEventsWithDateRangeFromDate:toDate:]";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s No end date specified. Defaulting to [NSDate distantFuture]", &v12, 0xCu);
    }

    v7 = +[NSDate distantFuture];
  }

LABEL_12:
  if ([v7 compare:dateCopy] == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:dateCopy to:v7];
  }

LABEL_15:

  return v8;
}

+ (id)subtractDays:(int64_t)days fromDate:(id)date
{
  dateCopy = date;
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:-days];
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:dateCopy options:0];

  return v8;
}

@end