@interface CHListAndDetailViewDateFormatter
+ (id)_dayDateFormatter;
+ (id)_todayDateFormatter;
+ (id)detailViewDateFormatter;
+ (id)formattedListStringForDate:(id)date font:(id)font;
+ (id)listViewDateFormatter;
+ (id)timeDateFormatter;
@end

@implementation CHListAndDetailViewDateFormatter

+ (id)listViewDateFormatter
{
  if (qword_1008F9A18 != -1)
  {
    sub_10069C710();
  }

  v3 = qword_1008F9A10;

  return v3;
}

+ (id)detailViewDateFormatter
{
  if (qword_1008F9A28 != -1)
  {
    sub_10069C724();
  }

  v3 = qword_1008F9A20;

  return v3;
}

+ (id)timeDateFormatter
{
  if (qword_1008F9A38 != -1)
  {
    sub_10069C738();
  }

  v3 = qword_1008F9A30;

  return v3;
}

+ (id)_todayDateFormatter
{
  if (qword_1008F9A48 != -1)
  {
    sub_10069C74C();
  }

  v3 = qword_1008F9A40;

  return v3;
}

+ (id)_dayDateFormatter
{
  if (qword_1008F9A58 != -1)
  {
    sub_10069C760();
  }

  v3 = qword_1008F9A50;

  return v3;
}

+ (id)formattedListStringForDate:(id)date font:(id)font
{
  dateCopy = date;
  fontCopy = font;
  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 isDateInToday:dateCopy];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = +[NSDate date];
      *buf = 138543618;
      v37 = dateCopy;
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NSCalendar reported that date %{public}@ is in today %{public}@", buf, 0x16u);
    }

    _todayDateFormatter = [self _todayDateFormatter];
    v14 = +[NSCalendar currentCalendar];
    v15 = +[NSDate date];
    v16 = [v14 startOfDayForDate:v15];

    if ([dateCopy compare:v16] == -1)
    {
      _HKInitializeLogging();
      v17 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v37 = dateCopy;
        v38 = 2114;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found date:%{public}@ to be before the start of today:%{public}@", buf, 0x16u);
      }

      _dayDateFormatter = [objc_opt_class() _dayDateFormatter];

      _todayDateFormatter = _dayDateFormatter;
    }

    localizedUppercaseString = [_todayDateFormatter stringFromDate:dateCopy];
    _HKInitializeLogging();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = localizedUppercaseString;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "List view date string: %@", buf, 0xCu);
    }
  }

  else
  {
    v21 = dateCopy;
    v22 = +[NSCalendar currentCalendar];
    v23 = +[NSDate date];
    v24 = [v22 dateByAddingUnit:16 value:-6 toDate:v23 options:0];

    v25 = +[NSCalendar currentCalendar];
    v26 = [v25 startOfDayForDate:v24];

    v27 = [v21 laterDate:v26];

    if (v27 == v21)
    {
      _dayDateFormatter2 = [self _dayDateFormatter];
      localizedUppercaseString = [_dayDateFormatter2 stringFromDate:v21];
    }

    else
    {
      _dayDateFormatter2 = [self listViewDateFormatter];
      v29 = [_dayDateFormatter2 stringFromDate:v21];
      localizedUppercaseString = [v29 localizedUppercaseString];
    }
  }

  v30 = [NSAttributedString alloc];
  v34 = NSFontAttributeName;
  v35 = fontCopy;
  v31 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v32 = [v30 initWithString:localizedUppercaseString attributes:v31];

  return v32;
}

@end