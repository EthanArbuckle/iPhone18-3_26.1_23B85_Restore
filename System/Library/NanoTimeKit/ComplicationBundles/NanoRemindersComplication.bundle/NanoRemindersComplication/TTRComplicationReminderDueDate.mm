@interface TTRComplicationReminderDueDate
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDueDate:(id)date;
- (BOOL)isInSameDayAsDueDate:(id)date inCalendar:(id)calendar;
- (TTRComplicationReminderDueDate)initWithDate:(id)date precision:(int64_t)precision;
- (TTRComplicationReminderDueDate)initWithDateComponents:(id)components inCalendar:(id)calendar;
- (id)description;
- (int64_t)compare:(id)compare inCalendar:(id)calendar;
@end

@implementation TTRComplicationReminderDueDate

- (TTRComplicationReminderDueDate)initWithDate:(id)date precision:(int64_t)precision
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = TTRComplicationReminderDueDate;
  v8 = [(TTRComplicationReminderDueDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
    v9->_precision = precision;
  }

  return v9;
}

- (TTRComplicationReminderDueDate)initWithDateComponents:(id)components inCalendar:(id)calendar
{
  componentsCopy = components;
  calendarCopy = calendar;
  timeZone = [componentsCopy timeZone];
  v9 = timeZone;
  if (timeZone)
  {
    v10 = timeZone;
  }

  else
  {
    v10 = +[NSTimeZone systemTimeZone];
  }

  v11 = v10;

  v12 = [NSDateComponents rem_dateWithDateComponents:componentsCopy timeZone:v11];
  if (v12)
  {
    v13 = [componentsCopy rem_isAllDayDateComponents] ^ 1;
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      v14 = [calendarCopy dateByAddingUnit:16 value:1 toDate:v12 options:1024];
      v15 = [v14 dateByAddingTimeInterval:-1.0];
    }

    self = [(TTRComplicationReminderDueDate *)self initWithDate:v15 precision:v13];

    selfCopy = self;
  }

  else
  {
    v16 = +[REMLog ui];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_7C20(componentsCopy, v11, v16);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  date = [(TTRComplicationReminderDueDate *)self date];
  precision = [(TTRComplicationReminderDueDate *)self precision];
  v6 = @"Exact";
  if (!precision)
  {
    v6 = @"All Day";
  }

  v7 = [NSString stringWithFormat:@"<%p %@: date=%@, precision=%@>", self, v3, date, v6];

  return v7;
}

- (int64_t)compare:(id)compare inCalendar:(id)calendar
{
  compareCopy = compare;
  if (![(TTRComplicationReminderDueDate *)self isInSameDayAsDueDate:compareCopy inCalendar:calendar])
  {
    goto LABEL_5;
  }

  precision = [(TTRComplicationReminderDueDate *)self precision];
  precision2 = [compareCopy precision];
  if (precision == 1)
  {
    if (precision2)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else if (precision || (v9 = precision2 == &dword_0 + 1, precision2 != &dword_0 + 1))
  {
LABEL_5:
    date = [(TTRComplicationReminderDueDate *)self date];
    date2 = [compareCopy date];
    v9 = [date compare:date2];
  }

  return v9;
}

- (BOOL)isEqualToDueDate:(id)date
{
  dateCopy = date;
  precision = [(TTRComplicationReminderDueDate *)self precision];
  if (precision == [dateCopy precision])
  {
    date = [(TTRComplicationReminderDueDate *)self date];
    date2 = [dateCopy date];
    v8 = [date isEqualToDate:date2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TTRComplicationReminderDueDate *)self isEqualToDueDate:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInSameDayAsDueDate:(id)date inCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  date = [(TTRComplicationReminderDueDate *)self date];
  date2 = [dateCopy date];

  LOBYTE(dateCopy) = [calendarCopy isDate:date inSameDayAsDate:date2];
  return dateCopy;
}

@end