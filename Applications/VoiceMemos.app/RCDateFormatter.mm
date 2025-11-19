@interface RCDateFormatter
+ (id)sharedDateFormatter;
- (RCDateFormatter)init;
- (id)_defaultDateFormatter;
- (id)_formattedDateStringFromDate:(id)a3 remainingTimeValid:(double *)a4;
- (id)_newFormattedDateStringFromDate:(id)a3 forUUID:(id)a4;
- (id)_thisWeekDateFormatter;
- (id)_todayDateFormatter;
- (id)_yesterdayDateFormatter;
- (id)dateFormatterForStyle:(int)a3;
- (id)formattedDateStringFromDate:(id)a3 forUUID:(id)a4;
@end

@implementation RCDateFormatter

+ (id)sharedDateFormatter
{
  if (qword_1002D7148 != -1)
  {
    sub_10001F950();
  }

  v3 = qword_1002D7140;

  return v3;
}

- (RCDateFormatter)init
{
  v7.receiver = self;
  v7.super_class = RCDateFormatter;
  v2 = [(RCDateFormatter *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_setupLocale" name:NSCurrentLocaleDidChangeNotification object:0];

    v4 = objc_opt_new();
    dateItemCache = v2->_dateItemCache;
    v2->_dateItemCache = v4;
  }

  return v2;
}

- (id)_defaultDateFormatter
{
  defaultDateFormatter = self->__defaultDateFormatter;
  if (!defaultDateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->__defaultDateFormatter;
    self->__defaultDateFormatter = v4;

    [(NSDateFormatter *)self->__defaultDateFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->__defaultDateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->__defaultDateFormatter setDoesRelativeDateFormatting:1];
    v6 = +[NSLocale autoupdatingCurrentLocale];
    [(NSDateFormatter *)self->__defaultDateFormatter setLocale:v6];

    defaultDateFormatter = self->__defaultDateFormatter;
  }

  return defaultDateFormatter;
}

- (id)formattedDateStringFromDate:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_dateItemCache objectForKeyedSubscript:v7];
    if (v8 && (+[NSDate date](NSDate, "date"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSince1970], v11 = v10, v9, objc_msgSend(v8, "expiration"), v11 <= v12))
    {
      v13 = [v8 formattedDate];
    }

    else
    {
      v13 = [(RCDateFormatter *)self _newFormattedDateStringFromDate:v6 forUUID:v7];
    }

    v14 = v13;
  }

  else
  {
    v14 = [(RCDateFormatter *)self _formattedDateStringFromDate:v6 remainingTimeValid:0];
  }

  return v14;
}

- (id)_newFormattedDateStringFromDate:(id)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v15 = 0.0;
  v9 = [(RCDateFormatter *)self _formattedDateStringFromDate:v7 remainingTimeValid:&v15];

  [v8 setFormattedDate:v9];
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  [v8 setExpiration:v12 + v15];
  [(NSMutableDictionary *)self->_dateItemCache setObject:v8 forKeyedSubscript:v6];

  v13 = [v8 formattedDate];

  return v13;
}

- (id)_formattedDateStringFromDate:(id)a3 remainingTimeValid:(double *)a4
{
  v6 = a3;
  v7 = +[NSCalendar currentCalendar];
  if ([v7 isDateInToday:v6])
  {
    v8 = [(RCDateFormatter *)self _todayDateFormatter];
    goto LABEL_7;
  }

  if ([v7 isDateInYesterday:v6])
  {
    v8 = [(RCDateFormatter *)self _yesterdayDateFormatter];
    goto LABEL_7;
  }

  v9 = +[NSDate date];
  v10 = [v9 dateByAddingDays:-7];
  v11 = [v7 compareDate:v6 toDate:v10 toUnitGranularity:16];

  if (v11 == 1)
  {
    v8 = [(RCDateFormatter *)self _thisWeekDateFormatter];
LABEL_7:
    v12 = v8;
    v13 = [v8 stringFromDate:v6];

    if (a4)
    {
      v14 = +[NSDate date];
      v15 = [v14 dateByAddingDays:1];
      v16 = +[NSCalendar currentCalendar];
      v17 = [v16 startOfDayForDate:v15];

      [v17 timeIntervalSinceDate:v14];
      *a4 = v18;
    }

    goto LABEL_9;
  }

  v20 = [(RCDateFormatter *)self _defaultDateFormatter];
  v13 = [v20 stringFromDate:v6];

  if (a4)
  {
    *a4 = 1.79769313e308;
  }

LABEL_9:

  return v13;
}

- (id)dateFormatterForStyle:(int)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(RCDateFormatter *)self _thisWeekDateFormatter];
    }

    else if (a3 == 3)
    {
      v4 = [(RCDateFormatter *)self _defaultDateFormatter];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(RCDateFormatter *)self _yesterdayDateFormatter];
    }
  }

  else
  {
    v4 = [(RCDateFormatter *)self _todayDateFormatter];
  }

  return v4;
}

- (id)_todayDateFormatter
{
  todayDateFormatter = self->__todayDateFormatter;
  if (!todayDateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->__todayDateFormatter;
    self->__todayDateFormatter = v4;

    [(NSDateFormatter *)self->__todayDateFormatter setTimeStyle:1];
    [(NSDateFormatter *)self->__todayDateFormatter setDateStyle:0];
    [(NSDateFormatter *)self->__todayDateFormatter setDoesRelativeDateFormatting:1];
    v6 = +[NSLocale autoupdatingCurrentLocale];
    [(NSDateFormatter *)self->__todayDateFormatter setLocale:v6];

    todayDateFormatter = self->__todayDateFormatter;
  }

  return todayDateFormatter;
}

- (id)_yesterdayDateFormatter
{
  yesterdayDateFormatter = self->__yesterdayDateFormatter;
  if (!yesterdayDateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->__yesterdayDateFormatter;
    self->__yesterdayDateFormatter = v4;

    [(NSDateFormatter *)self->__yesterdayDateFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->__yesterdayDateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->__yesterdayDateFormatter setDoesRelativeDateFormatting:1];
    v6 = +[NSLocale autoupdatingCurrentLocale];
    [(NSDateFormatter *)self->__yesterdayDateFormatter setLocale:v6];

    yesterdayDateFormatter = self->__yesterdayDateFormatter;
  }

  return yesterdayDateFormatter;
}

- (id)_thisWeekDateFormatter
{
  thisWeekDateFormatter = self->__thisWeekDateFormatter;
  if (!thisWeekDateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->__thisWeekDateFormatter;
    self->__thisWeekDateFormatter = v4;

    [(NSDateFormatter *)self->__thisWeekDateFormatter setTimeStyle:0];
    [(NSDateFormatter *)self->__thisWeekDateFormatter setDateFormat:@"EEEE"];
    [(NSDateFormatter *)self->__thisWeekDateFormatter setDoesRelativeDateFormatting:0];
    v6 = +[NSLocale autoupdatingCurrentLocale];
    [(NSDateFormatter *)self->__thisWeekDateFormatter setLocale:v6];

    thisWeekDateFormatter = self->__thisWeekDateFormatter;
  }

  return thisWeekDateFormatter;
}

@end