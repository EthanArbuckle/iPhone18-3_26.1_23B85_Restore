@interface TTRComplicationReminderDueDate
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDueDate:(id)a3;
- (BOOL)isInSameDayAsDueDate:(id)a3 inCalendar:(id)a4;
- (TTRComplicationReminderDueDate)initWithDate:(id)a3 precision:(int64_t)a4;
- (TTRComplicationReminderDueDate)initWithDateComponents:(id)a3 inCalendar:(id)a4;
- (id)description;
- (int64_t)compare:(id)a3 inCalendar:(id)a4;
@end

@implementation TTRComplicationReminderDueDate

- (TTRComplicationReminderDueDate)initWithDate:(id)a3 precision:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TTRComplicationReminderDueDate;
  v8 = [(TTRComplicationReminderDueDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, a3);
    v9->_precision = a4;
  }

  return v9;
}

- (TTRComplicationReminderDueDate)initWithDateComponents:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 timeZone];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSTimeZone systemTimeZone];
  }

  v11 = v10;

  v12 = [NSDateComponents rem_dateWithDateComponents:v6 timeZone:v11];
  if (v12)
  {
    v13 = [v6 rem_isAllDayDateComponents] ^ 1;
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      v14 = [v7 dateByAddingUnit:16 value:1 toDate:v12 options:1024];
      v15 = [v14 dateByAddingTimeInterval:-1.0];
    }

    self = [(TTRComplicationReminderDueDate *)self initWithDate:v15 precision:v13];

    v17 = self;
  }

  else
  {
    v16 = +[REMLog ui];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_7C20(v6, v11, v16);
    }

    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(TTRComplicationReminderDueDate *)self date];
  v5 = [(TTRComplicationReminderDueDate *)self precision];
  v6 = @"Exact";
  if (!v5)
  {
    v6 = @"All Day";
  }

  v7 = [NSString stringWithFormat:@"<%p %@: date=%@, precision=%@>", self, v3, v4, v6];

  return v7;
}

- (int64_t)compare:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  if (![(TTRComplicationReminderDueDate *)self isInSameDayAsDueDate:v6 inCalendar:a4])
  {
    goto LABEL_5;
  }

  v7 = [(TTRComplicationReminderDueDate *)self precision];
  v8 = [v6 precision];
  if (v7 == 1)
  {
    if (v8)
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

  else if (v7 || (v9 = v8 == &dword_0 + 1, v8 != &dword_0 + 1))
  {
LABEL_5:
    v10 = [(TTRComplicationReminderDueDate *)self date];
    v11 = [v6 date];
    v9 = [v10 compare:v11];
  }

  return v9;
}

- (BOOL)isEqualToDueDate:(id)a3
{
  v4 = a3;
  v5 = [(TTRComplicationReminderDueDate *)self precision];
  if (v5 == [v4 precision])
  {
    v6 = [(TTRComplicationReminderDueDate *)self date];
    v7 = [v4 date];
    v8 = [v6 isEqualToDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TTRComplicationReminderDueDate *)self isEqualToDueDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInSameDayAsDueDate:(id)a3 inCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TTRComplicationReminderDueDate *)self date];
  v9 = [v7 date];

  LOBYTE(v7) = [v6 isDate:v8 inSameDayAsDate:v9];
  return v7;
}

@end