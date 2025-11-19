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

  v5 = [a1 calendar];
  if (v5)
  {
    [a3 encodeObject:v5 forKey:@"NS.calendar"];
  }

  v6 = [a1 timeZone];
  if (v6)
  {
    [a3 encodeObject:v6 forKey:@"NS.timezone"];
  }

  v7 = [a1 era];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v7 forKey:@"NS.era"];
  }

  v8 = [a1 year];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v8 forKey:@"NS.year"];
  }

  v9 = [a1 month];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v9 forKey:@"NS.month"];
  }

  v10 = [a1 day];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v10 forKey:@"NS.day"];
  }

  v11 = [a1 hour];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v11 forKey:@"NS.hour"];
  }

  v12 = [a1 minute];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v12 forKey:@"NS.minute"];
  }

  v13 = [a1 second];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v13 forKey:@"NS.second"];
  }

  v14 = [a1 week];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v14 forKey:@"NS.week"];
  }

  v15 = [a1 weekday];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v15 forKey:@"NS.weekday"];
  }

  v16 = [a1 weekdayOrdinal];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v16 forKey:@"NS.weekdayOrdinal"];
  }

  v17 = [a1 quarter];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v17 forKey:@"NS.quarter"];
  }

  v18 = [a1 nanosecond];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v18 forKey:@"NS.nanosec"];
  }

  v19 = [a1 weekOfMonth];
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v19 forKey:@"NS.weekOfMonth"];
  }

  v20 = [a1 weekOfYear];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v20 forKey:@"NS.weekOfYear"];
  }

  v21 = [a1 yearForWeekOfYear];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v21 forKey:@"NS.yearForWOY"];
  }

  v22 = [a1 dayOfYear];
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 encodeInteger:v22 forKey:@"NS.dayOfYear"];
  }

  [a3 encodeInteger:objc_msgSend(a1 forKey:{"isLeapMonth"), @"NS.leapMonth"}];
  v23 = [a1 isRepeatedDay];

  return [a3 encodeBool:v23 forKey:@"NS.repeatedDay"];
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

  v19 = [a1 init];
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