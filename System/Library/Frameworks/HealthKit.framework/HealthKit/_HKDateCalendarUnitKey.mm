@interface _HKDateCalendarUnitKey
- (BOOL)isEqual:(id)equal;
- (_HKDateCalendarUnitKey)initWithDate:(id)date calendar:(id)calendar unit:(unint64_t)unit;
- (unint64_t)hash;
@end

@implementation _HKDateCalendarUnitKey

- (_HKDateCalendarUnitKey)initWithDate:(id)date calendar:(id)calendar unit:(unint64_t)unit
{
  dateCopy = date;
  calendarCopy = calendar;
  v11 = calendarCopy;
  if (dateCopy)
  {
    if (calendarCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKDateCalendarUnitKey initWithDate:a2 calendar:self unit:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [_HKDateCalendarUnitKey initWithDate:a2 calendar:self unit:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = _HKDateCalendarUnitKey;
  v12 = [(_HKDateCalendarUnitKey *)&v16 init];
  if (v12)
  {
    v13 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v13;

    objc_storeStrong(&v12->_calendar, calendar);
    v12->_calendarUnit = unit;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = equalCopy;
    date = [(_HKDateCalendarUnitKey *)self date];
    date2 = [v8 date];
    if (date != date2)
    {
      date3 = [v8 date];
      if (!date3)
      {
        v12 = 0;
        goto LABEL_19;
      }

      calendar4 = date3;
      date4 = [(_HKDateCalendarUnitKey *)self date];
      date5 = [v8 date];
      if (![date4 isEqualToDate:date5])
      {
        v12 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v18 = date5;
      v19 = date4;
      v20 = calendar4;
    }

    calendar = [(_HKDateCalendarUnitKey *)self calendar];
    calendar2 = [v8 calendar];
    if (calendar == calendar2)
    {
      goto LABEL_12;
    }

    calendar3 = [v8 calendar];
    if (!calendar3)
    {

      v12 = 0;
LABEL_17:
      date4 = v19;
      calendar4 = v20;
      date5 = v18;
      if (date != date2)
      {
        goto LABEL_18;
      }

LABEL_19:

      goto LABEL_20;
    }

    date4 = calendar3;
    date5 = [(_HKDateCalendarUnitKey *)self calendar];
    calendar4 = [v8 calendar];
    if ([date5 isEqual:calendar4])
    {
LABEL_12:
      calendarUnit = [(_HKDateCalendarUnitKey *)self calendarUnit];
      v12 = calendarUnit == [v8 calendarUnit];
      if (calendar == calendar2)
      {
LABEL_14:

        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  date = [(_HKDateCalendarUnitKey *)self date];
  v4 = [date hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_HKDateCalendarUnitKey calendarUnit](self, "calendarUnit")}];
  v6 = [v5 hash];
  calendar = [(_HKDateCalendarUnitKey *)self calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  v9 = v4 ^ [calendarIdentifier hash];
  calendar2 = [(_HKDateCalendarUnitKey *)self calendar];
  timeZone = [calendar2 timeZone];
  v12 = v9 ^ [timeZone hash];

  return v6 ^ v12;
}

- (void)initWithDate:(uint64_t)a1 calendar:(uint64_t)a2 unit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
}

- (void)initWithDate:(uint64_t)a1 calendar:(uint64_t)a2 unit:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"calendar != nil"}];
}

@end