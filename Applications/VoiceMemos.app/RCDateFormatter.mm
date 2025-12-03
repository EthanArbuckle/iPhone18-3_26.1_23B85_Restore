@interface RCDateFormatter
+ (id)sharedDateFormatter;
- (RCDateFormatter)init;
- (id)_defaultDateFormatter;
- (id)_formattedDateStringFromDate:(id)date remainingTimeValid:(double *)valid;
- (id)_newFormattedDateStringFromDate:(id)date forUUID:(id)d;
- (id)_thisWeekDateFormatter;
- (id)_todayDateFormatter;
- (id)_yesterdayDateFormatter;
- (id)dateFormatterForStyle:(int)style;
- (id)formattedDateStringFromDate:(id)date forUUID:(id)d;
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

- (id)formattedDateStringFromDate:(id)date forUUID:(id)d
{
  dateCopy = date;
  dCopy = d;
  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)self->_dateItemCache objectForKeyedSubscript:dCopy];
    if (v8 && (+[NSDate date](NSDate, "date"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSince1970], v11 = v10, v9, objc_msgSend(v8, "expiration"), v11 <= v12))
    {
      formattedDate = [v8 formattedDate];
    }

    else
    {
      formattedDate = [(RCDateFormatter *)self _newFormattedDateStringFromDate:dateCopy forUUID:dCopy];
    }

    v14 = formattedDate;
  }

  else
  {
    v14 = [(RCDateFormatter *)self _formattedDateStringFromDate:dateCopy remainingTimeValid:0];
  }

  return v14;
}

- (id)_newFormattedDateStringFromDate:(id)date forUUID:(id)d
{
  dCopy = d;
  dateCopy = date;
  v8 = objc_opt_new();
  v15 = 0.0;
  v9 = [(RCDateFormatter *)self _formattedDateStringFromDate:dateCopy remainingTimeValid:&v15];

  [v8 setFormattedDate:v9];
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  [v8 setExpiration:v12 + v15];
  [(NSMutableDictionary *)self->_dateItemCache setObject:v8 forKeyedSubscript:dCopy];

  formattedDate = [v8 formattedDate];

  return formattedDate;
}

- (id)_formattedDateStringFromDate:(id)date remainingTimeValid:(double *)valid
{
  dateCopy = date;
  v7 = +[NSCalendar currentCalendar];
  if ([v7 isDateInToday:dateCopy])
  {
    _todayDateFormatter = [(RCDateFormatter *)self _todayDateFormatter];
    goto LABEL_7;
  }

  if ([v7 isDateInYesterday:dateCopy])
  {
    _todayDateFormatter = [(RCDateFormatter *)self _yesterdayDateFormatter];
    goto LABEL_7;
  }

  v9 = +[NSDate date];
  v10 = [v9 dateByAddingDays:-7];
  v11 = [v7 compareDate:dateCopy toDate:v10 toUnitGranularity:16];

  if (v11 == 1)
  {
    _todayDateFormatter = [(RCDateFormatter *)self _thisWeekDateFormatter];
LABEL_7:
    v12 = _todayDateFormatter;
    v13 = [_todayDateFormatter stringFromDate:dateCopy];

    if (valid)
    {
      v14 = +[NSDate date];
      v15 = [v14 dateByAddingDays:1];
      v16 = +[NSCalendar currentCalendar];
      v17 = [v16 startOfDayForDate:v15];

      [v17 timeIntervalSinceDate:v14];
      *valid = v18;
    }

    goto LABEL_9;
  }

  _defaultDateFormatter = [(RCDateFormatter *)self _defaultDateFormatter];
  v13 = [_defaultDateFormatter stringFromDate:dateCopy];

  if (valid)
  {
    *valid = 1.79769313e308;
  }

LABEL_9:

  return v13;
}

- (id)dateFormatterForStyle:(int)style
{
  _thisWeekDateFormatter = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      _thisWeekDateFormatter = [(RCDateFormatter *)self _thisWeekDateFormatter];
    }

    else if (style == 3)
    {
      _thisWeekDateFormatter = [(RCDateFormatter *)self _defaultDateFormatter];
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      _thisWeekDateFormatter = [(RCDateFormatter *)self _yesterdayDateFormatter];
    }
  }

  else
  {
    _thisWeekDateFormatter = [(RCDateFormatter *)self _todayDateFormatter];
  }

  return _thisWeekDateFormatter;
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