@interface NSDateComponents(_)
- (uint64_t)encodeWithCoder:()_;
- (void)initWithCoder:()_;
@end

@implementation NSDateComponents(_)

- (uint64_t)encodeWithCoder:()_
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateComponents requires a keyed encoder" userInfo:0]);
  }

  calendar = [self calendar];
  if (calendar)
  {
    [a3 encodeObject:calendar forKey:@"NS.calendar"];
  }

  timeZone = [self timeZone];
  if (timeZone)
  {
    [a3 encodeObject:timeZone forKey:@"NS.timezone"];
  }

  v7 = [self era];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v7 forKey:@"NS.era"];
  }

  year = [self year];
  if (year != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:year forKey:@"NS.year"];
  }

  month = [self month];
  if (month != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:month forKey:@"NS.month"];
  }

  v10 = [self day];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v10 forKey:@"NS.day"];
  }

  hour = [self hour];
  if (hour != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:hour forKey:@"NS.hour"];
  }

  minute = [self minute];
  if (minute != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:minute forKey:@"NS.minute"];
  }

  second = [self second];
  if (second != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:second forKey:@"NS.second"];
  }

  week = [self week];
  if (week != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:week forKey:@"NS.week"];
  }

  weekday = [self weekday];
  if (weekday != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:weekday forKey:@"NS.weekday"];
  }

  weekdayOrdinal = [self weekdayOrdinal];
  if (weekdayOrdinal != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:weekdayOrdinal forKey:@"NS.weekdayOrdinal"];
  }

  quarter = [self quarter];
  if (quarter != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:quarter forKey:@"NS.quarter"];
  }

  nanosecond = [self nanosecond];
  if (nanosecond != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:nanosecond forKey:@"NS.nanosec"];
  }

  weekOfMonth = [self weekOfMonth];
  if (weekOfMonth != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:weekOfMonth forKey:@"NS.weekOfMonth"];
  }

  weekOfYear = [self weekOfYear];
  if (weekOfYear != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:weekOfYear forKey:@"NS.weekOfYear"];
  }

  yearForWeekOfYear = [self yearForWeekOfYear];
  if (yearForWeekOfYear != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:yearForWeekOfYear forKey:@"NS.yearForWOY"];
  }

  dayOfYear = [self dayOfYear];
  if (dayOfYear != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:dayOfYear forKey:@"NS.dayOfYear"];
  }

  [a3 encodeInteger:objc_msgSend(self forKey:{"isLeapMonth"), @"NS.leapMonth"}];
  isRepeatedDay = [self isRepeatedDay];

  return [a3 encodeBool:isRepeatedDay forKey:@"NS.repeatedDay"];
}

- (void)initWithCoder:()_
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateComponents requires a keyed encoder" userInfo:0]);
  }

  if ([a3 containsValueForKey:@"NS.calendar"])
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.calendar"];
    if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
    {

      v35 = @"NSLocalizedDescription";
      v36[0] = @"Calendar has been corrupted!";
      v7 = MEMORY[0x1E695DF20];
      v8 = v36;
      v9 = &v35;
LABEL_11:
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v7, "dictionaryWithObjects:forKeys:count:", v8, v9, 1))}];
      return 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([a3 containsValueForKey:@"NS.timezone"])
  {
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.timezone"];
    if (!v10 || (v11 = v10, (objc_opt_isKindOfClass() & 1) == 0))
    {

      v33 = @"NSLocalizedDescription";
      v34 = @"Time zone has been corrupted!";
      v7 = MEMORY[0x1E695DF20];
      v8 = &v34;
      v9 = &v33;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  if ([a3 containsValueForKey:@"NS.era"])
  {
    v32 = [a3 decodeIntegerForKey:@"NS.era"];
  }

  else
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.year"])
  {
    v31 = [a3 decodeIntegerForKey:@"NS.year"];
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.month"])
  {
    v30 = [a3 decodeIntegerForKey:@"NS.month"];
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.day"])
  {
    v29 = [a3 decodeIntegerForKey:@"NS.day"];
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.hour"])
  {
    v28 = [a3 decodeIntegerForKey:@"NS.hour"];
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.minute"])
  {
    v27 = [a3 decodeIntegerForKey:@"NS.minute"];
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.second"])
  {
    v26 = [a3 decodeIntegerForKey:@"NS.second"];
  }

  else
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.week"])
  {
    v25 = [a3 decodeIntegerForKey:@"NS.week"];
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.weekday"])
  {
    v24 = [a3 decodeIntegerForKey:@"NS.weekday"];
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.weekdayOrdinal"])
  {
    v23 = [a3 decodeIntegerForKey:@"NS.weekdayOrdinal"];
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.quarter"])
  {
    v22 = [a3 decodeIntegerForKey:@"NS.quarter"];
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.nanosec"])
  {
    v21 = [a3 decodeIntegerForKey:@"NS.nanosec"];
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.weekOfMonth"])
  {
    v13 = [a3 decodeIntegerForKey:@"NS.weekOfMonth"];
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.weekOfYear"])
  {
    v14 = [a3 decodeIntegerForKey:@"NS.weekOfYear"];
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.yearForWOY"])
  {
    v15 = [a3 decodeIntegerForKey:@"NS.yearForWOY"];
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.dayOfYear"])
  {
    v16 = [a3 decodeIntegerForKey:@"NS.dayOfYear"];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.leapMonth"])
  {
    v17 = [a3 decodeIntegerForKey:@"NS.leapMonth"] != 0;
  }

  else
  {
    v17 = 0;
  }

  if ([a3 containsValueForKey:@"NS.repeatedDay"])
  {
    v18 = [a3 decodeBoolForKey:@"NS.repeatedDay"];
  }

  else
  {
    v18 = 0;
  }

  v19 = [self init];
  v12 = v19;
  if (v19)
  {
    if (v6)
    {
      [v19 setCalendar:v6];
    }

    if (v11)
    {
      [v12 setTimeZone:v11];
    }

    [v12 setEra:v32];
    [v12 setYear:v31];
    [v12 setMonth:v30];
    [v12 setDay:v29];
    [v12 setHour:v28];
    [v12 setMinute:v27];
    [v12 setSecond:v26];
    [v12 setWeek:v25];
    [v12 setWeekday:v24];
    [v12 setWeekdayOrdinal:v23];
    [v12 setQuarter:v22];
    [v12 setNanosecond:v21];
    [v12 setWeekOfMonth:v13];
    [v12 setWeekOfYear:v14];
    [v12 setYearForWeekOfYear:v15];
    [v12 setDayOfYear:v16];
    if (v17)
    {
      [v12 setLeapMonth:1];
    }

    if (v18)
    {
      [v12 setRepeatedDay:1];
    }
  }

  return v12;
}

@end