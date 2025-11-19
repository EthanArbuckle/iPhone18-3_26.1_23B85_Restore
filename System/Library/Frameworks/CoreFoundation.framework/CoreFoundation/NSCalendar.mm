@interface NSCalendar
+ (NSCalendar)allocWithZone:(_NSZone *)a3;
+ (NSCalendar)calendarWithIdentifier:(NSCalendarIdentifier)calendarIdentifierConstant;
- (BOOL)date:(NSDate *)date matchesComponents:(NSDateComponents *)components;
- (BOOL)isDate:(NSDate *)date1 equalToDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;
- (BOOL)isDate:(NSDate *)date1 inSameDayAsDate:(NSDate *)date2;
- (BOOL)isDateInToday:(NSDate *)date;
- (BOOL)isDateInTomorrow:(NSDate *)date;
- (BOOL)isDateInWeekend:(NSDate *)date;
- (BOOL)isDateInYesterday:(NSDate *)date;
- (BOOL)isEqual:(id)a3;
- (BOOL)nextWeekendStartDate:(NSDate *)datep interval:(NSTimeInterval *)tip options:(NSCalendarOptions)options afterDate:(NSDate *)date;
- (BOOL)rangeOfWeekendStartDate:(NSDate *)datep interval:(NSTimeInterval *)tip containingDate:(NSDate *)date;
- (NSArray)eraSymbols;
- (NSArray)longEraSymbols;
- (NSArray)monthSymbols;
- (NSArray)quarterSymbols;
- (NSArray)shortMonthSymbols;
- (NSArray)shortQuarterSymbols;
- (NSArray)shortStandaloneMonthSymbols;
- (NSArray)shortStandaloneQuarterSymbols;
- (NSArray)shortStandaloneWeekdaySymbols;
- (NSArray)shortWeekdaySymbols;
- (NSArray)standaloneMonthSymbols;
- (NSArray)standaloneQuarterSymbols;
- (NSArray)standaloneWeekdaySymbols;
- (NSArray)veryShortMonthSymbols;
- (NSArray)veryShortStandaloneMonthSymbols;
- (NSArray)veryShortStandaloneWeekdaySymbols;
- (NSArray)veryShortWeekdaySymbols;
- (NSArray)weekdaySymbols;
- (NSCalendarIdentifier)calendarIdentifier;
- (NSComparisonResult)compareDate:(NSDate *)date1 toDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;
- (NSDate)dateByAddingComponents:(NSDateComponents *)comps toDate:(NSDate *)date options:(NSCalendarOptions)opts;
- (NSDate)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(NSDate *)date options:(NSCalendarOptions)options;
- (NSDate)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(NSDate *)date options:(NSCalendarOptions)opts;
- (NSDate)dateBySettingUnit:(NSCalendarUnit)unit value:(NSInteger)v ofDate:(NSDate *)date options:(NSCalendarOptions)opts;
- (NSDate)dateFromComponents:(NSDateComponents *)comps;
- (NSDate)dateWithEra:(NSInteger)eraValue year:(NSInteger)yearValue month:(NSInteger)monthValue day:(NSInteger)dayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue;
- (NSDate)dateWithEra:(NSInteger)eraValue yearForWeekOfYear:(NSInteger)yearValue weekOfYear:(NSInteger)weekValue weekday:(NSInteger)weekdayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue;
- (NSDate)nextDateAfterDate:(NSDate *)date matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)options;
- (NSDate)nextDateAfterDate:(NSDate *)date matchingHour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue options:(NSCalendarOptions)options;
- (NSDate)nextDateAfterDate:(NSDate *)date matchingUnit:(NSCalendarUnit)unit value:(NSInteger)value options:(NSCalendarOptions)options;
- (NSDate)startOfDayForDate:(NSDate *)date;
- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)date;
- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)startingDate toDate:(NSDate *)resultDate options:(NSCalendarOptions)opts;
- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDateComponents:(NSDateComponents *)startingDateComp toDateComponents:(NSDateComponents *)resultDateComp options:(NSCalendarOptions)options;
- (NSDateComponents)componentsInTimeZone:(NSTimeZone *)timezone fromDate:(NSDate *)date;
- (NSInteger)component:(NSCalendarUnit)unit fromDate:(NSDate *)date;
- (NSLocale)locale;
- (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit;
- (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit;
- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;
- (NSString)AMSymbol;
- (NSString)PMSymbol;
- (NSTimeZone)timeZone;
- (NSUInteger)firstWeekday;
- (NSUInteger)minimumDaysInFirstWeek;
- (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void *)block;
- (void)getEra:(NSInteger *)eraValuePointer year:(NSInteger *)yearValuePointer month:(NSInteger *)monthValuePointer day:(NSInteger *)dayValuePointer fromDate:(NSDate *)date;
- (void)getEra:(NSInteger *)eraValuePointer yearForWeekOfYear:(NSInteger *)yearValuePointer weekOfYear:(NSInteger *)weekValuePointer weekday:(NSInteger *)weekdayValuePointer fromDate:(NSDate *)date;
- (void)getHour:(NSInteger *)hourValuePointer minute:(NSInteger *)minuteValuePointer second:(NSInteger *)secondValuePointer nanosecond:(NSInteger *)nanosecondValuePointer fromDate:(NSDate *)date;
- (void)setFirstWeekday:(NSUInteger)firstWeekday;
- (void)setLocale:(NSLocale *)locale;
- (void)setMinimumDaysInFirstWeek:(NSUInteger)minimumDaysInFirstWeek;
- (void)setTimeZone:(NSTimeZone *)timeZone;
@end

@implementation NSCalendar

- (unint64_t)hash
{
  v2 = [(NSCalendar *)self calendarIdentifier];

  return [(NSString *)v2 hash];
}

+ (NSCalendar)allocWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (NSCalendar == a1)
  {
    v6 = objc_lookUpClass("_NSSwiftCalendar");
    v7 = *MEMORY[0x1E69E9840];

    return [(objc_class *)v6 allocWithZone:a3];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NSCalendar;
    result = objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;
    if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    LODWORD(v11) = -[NSString isEqual:](-[NSCalendar calendarIdentifier](self, "calendarIdentifier"), "isEqual:", [a3 calendarIdentifier]);
    if (v11)
    {
      LODWORD(v11) = -[NSTimeZone isEqual:](-[NSCalendar timeZone](self, "timeZone"), "isEqual:", [a3 timeZone]);
      if (v11)
      {
        LODWORD(v11) = -[NSLocale isEqual:](-[NSCalendar locale](self, "locale"), "isEqual:", [a3 locale]);
        if (v11)
        {
          v12 = [(NSCalendar *)self firstWeekday];
          if (v12 != [a3 firstWeekday])
          {
            goto LABEL_19;
          }

          v13 = [(NSCalendar *)self minimumDaysInFirstWeek];
          if (v13 != [a3 minimumDaysInFirstWeek])
          {
            goto LABEL_19;
          }

          if (-[NSCalendar gregorianStartDate](self, "gregorianStartDate") && [a3 gregorianStartDate])
          {
            if (([-[NSCalendar gregorianStartDate](self "gregorianStartDate")] & 1) == 0)
            {
LABEL_19:
              LOBYTE(v11) = 0;
              return v11;
            }

            goto LABEL_17;
          }

          if (!-[NSCalendar gregorianStartDate](self, "gregorianStartDate", v6, v15, v16, v17, v7, v8) || (v11 = [a3 gregorianStartDate]) != 0)
          {
            if (!-[NSCalendar gregorianStartDate](self, "gregorianStartDate") && [a3 gregorianStartDate])
            {
              goto LABEL_19;
            }

LABEL_17:
            LOBYTE(v11) = 1;
          }
        }
      }
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithCalendarIdentifier:", -[NSCalendar calendarIdentifier](self, "calendarIdentifier")}];
  [v4 setLocale:{-[NSCalendar locale](self, "locale")}];
  [v4 setTimeZone:{-[NSCalendar timeZone](self, "timeZone")}];
  [v4 setFirstWeekday:{-[NSCalendar firstWeekday](self, "firstWeekday")}];
  [v4 setMinimumDaysInFirstWeek:{-[NSCalendar minimumDaysInFirstWeek](self, "minimumDaysInFirstWeek")}];
  [v4 setGregorianStartDate:{-[NSCalendar gregorianStartDate](self, "gregorianStartDate")}];
  return v4;
}

+ (NSCalendar)calendarWithIdentifier:(NSCalendarIdentifier)calendarIdentifierConstant
{
  v3 = [[a1 alloc] initWithCalendarIdentifier:calendarIdentifierConstant];

  return v3;
}

- (void)getEra:(NSInteger *)eraValuePointer year:(NSInteger *)yearValuePointer month:(NSInteger *)monthValuePointer day:(NSInteger *)dayValuePointer fromDate:(NSDate *)date
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v13 = [(NSCalendar *)self components:30 fromDate:date];
    v14 = v13;
    if (eraValuePointer)
    {
      *eraValuePointer = [(NSDateComponents *)v13 era];
    }

    if (yearValuePointer)
    {
      *yearValuePointer = [(NSDateComponents *)v14 year];
    }

    if (monthValuePointer)
    {
      *monthValuePointer = [(NSDateComponents *)v14 month];
    }

    if (dayValuePointer)
    {
      *dayValuePointer = [(NSDateComponents *)v14 day];
    }
  }

  else
  {
    v15 = getEra_year_month_day_fromDate____count__;
    if (getEra_year_month_day_fromDate____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v16, v17, v18, v19, v20, v21, "[NSCalendar getEra:year:month:day:fromDate:]");
      v15 = getEra_year_month_day_fromDate____count__;
    }

    getEra_year_month_day_fromDate____count__ = v15 + 1;
  }
}

- (void)getEra:(NSInteger *)eraValuePointer yearForWeekOfYear:(NSInteger *)yearValuePointer weekOfYear:(NSInteger *)weekValuePointer weekday:(NSInteger *)weekdayValuePointer fromDate:(NSDate *)date
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v13 = [(NSCalendar *)self components:25090 fromDate:date];
    v14 = v13;
    if (eraValuePointer)
    {
      *eraValuePointer = [(NSDateComponents *)v13 era];
    }

    if (yearValuePointer)
    {
      *yearValuePointer = [(NSDateComponents *)v14 yearForWeekOfYear];
    }

    if (weekValuePointer)
    {
      *weekValuePointer = [(NSDateComponents *)v14 weekOfYear];
    }

    if (weekdayValuePointer)
    {
      *weekdayValuePointer = [(NSDateComponents *)v14 weekday];
    }
  }

  else
  {
    v15 = getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate____count__;
    if (getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v16, v17, v18, v19, v20, v21, "[NSCalendar getEra:yearForWeekOfYear:weekOfYear:weekday:fromDate:]");
      v15 = getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate____count__;
    }

    getEra_yearForWeekOfYear_weekOfYear_weekday_fromDate____count__ = v15 + 1;
  }
}

- (void)getHour:(NSInteger *)hourValuePointer minute:(NSInteger *)minuteValuePointer second:(NSInteger *)secondValuePointer nanosecond:(NSInteger *)nanosecondValuePointer fromDate:(NSDate *)date
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v13 = [(NSCalendar *)self components:32992 fromDate:date];
    v14 = v13;
    if (hourValuePointer)
    {
      *hourValuePointer = [(NSDateComponents *)v13 hour];
    }

    if (minuteValuePointer)
    {
      *minuteValuePointer = [(NSDateComponents *)v14 minute];
    }

    if (secondValuePointer)
    {
      *secondValuePointer = [(NSDateComponents *)v14 second];
    }

    if (nanosecondValuePointer)
    {
      *nanosecondValuePointer = [(NSDateComponents *)v14 nanosecond];
    }
  }

  else
  {
    v15 = getHour_minute_second_nanosecond_fromDate____count__;
    if (getHour_minute_second_nanosecond_fromDate____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v16, v17, v18, v19, v20, v21, "[NSCalendar getHour:minute:second:nanosecond:fromDate:]");
      v15 = getHour_minute_second_nanosecond_fromDate____count__;
    }

    getHour_minute_second_nanosecond_fromDate____count__ = v15 + 1;
  }
}

- (NSInteger)component:(NSCalendarUnit)unit fromDate:(NSDate *)date
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v7 = [(NSCalendar *)self components:unit fromDate:date];

    return [(NSDateComponents *)v7 valueForComponent:unit];
  }

  else
  {
    v9 = component_fromDate____count__;
    if (component_fromDate____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v10, v11, v12, v13, v14, v15, "[NSCalendar component:fromDate:]");
      v9 = component_fromDate____count__;
    }

    component_fromDate____count__ = v9 + 1;
    return 0;
  }
}

- (NSDate)dateWithEra:(NSInteger)eraValue year:(NSInteger)yearValue month:(NSInteger)monthValue day:(NSInteger)dayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue
{
  v17 = objc_opt_new();
  [v17 setEra:eraValue];
  [v17 setYear:yearValue];
  [v17 setMonth:monthValue];
  [v17 setDay:dayValue];
  [v17 setHour:hourValue];
  [v17 setMinute:minuteValue];
  [v17 setSecond:secondValue];
  [v17 setNanosecond:nanosecondValue];

  return [(NSCalendar *)self dateFromComponents:v17];
}

- (NSDate)dateWithEra:(NSInteger)eraValue yearForWeekOfYear:(NSInteger)yearValue weekOfYear:(NSInteger)weekValue weekday:(NSInteger)weekdayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue
{
  v17 = objc_opt_new();
  [v17 setEra:eraValue];
  [v17 setYearForWeekOfYear:yearValue];
  [v17 setWeekOfYear:weekValue];
  [v17 setWeekday:weekdayValue];
  [v17 setHour:hourValue];
  [v17 setMinute:minuteValue];
  [v17 setSecond:secondValue];
  [v17 setNanosecond:nanosecondValue];

  return [(NSCalendar *)self dateFromComponents:v17];
}

- (NSDate)startOfDayForDate:(NSDate *)date
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  [(NSCalendar *)self rangeOfUnit:16 startDate:v6 interval:&v5 forDate:date];
  result = v6[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDateComponents)componentsInTimeZone:(NSTimeZone *)timezone fromDate:(NSDate *)date
{
  v7 = [(NSCalendar *)self timeZone];
  [(NSCalendar *)self setTimeZone:timezone];
  v8 = [(NSCalendar *)self components:3276542 fromDate:date];
  [(NSCalendar *)self setTimeZone:v7];
  return v8;
}

- (NSComparisonResult)compareDate:(NSDate *)date1 toDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit
{
  v45 = *MEMORY[0x1E69E9840];
  [(NSDate *)date1 timeIntervalSinceReferenceDate];
  v10 = v9;
  [(NSDate *)date2 timeIntervalSinceReferenceDate];
  if (v10 <= -2.11845067e11 || v10 >= 1.59271755e13 || v11 >= 1.59271755e13 || v11 <= -2.11845067e11)
  {
    v16 = v10 == v11;
    v17 = NSOrderedAscending;
    if (v10 > v11)
    {
      v17 = NSOrderedDescending;
    }

    goto LABEL_20;
  }

  if (unit <= 127)
  {
    if (unit != 16 && unit != 32)
    {
      if (unit == 64)
      {
        *&__y[0] = 0;
        *&v40 = 0;
        [(NSDate *)date1 timeIntervalSinceReferenceDate];
        [(NSDate *)date2 timeIntervalSinceReferenceDate:modf(v18];
        modf(v19, &v40);
        v14 = floor(*__y / 60.0);
        v15 = floor(*&v40 / 60.0);
        goto LABEL_17;
      }

LABEL_26:
      __y[0] = xmmword_1834469D0;
      __y[1] = xmmword_1834469E0;
      v44 = 16;
      v40 = xmmword_1834469D0;
      v41 = xmmword_1834469F0;
      v42 = 512;
      if (unit <= 4095)
      {
        if (unit != 512)
        {
          if (unit != 1024)
          {
LABEL_42:
            v22 = &qword_183446A00;
            v23 = 4;
LABEL_43:
            v27 = 0;
            v28 = v22;
            v29 = v23;
            do
            {
              v30 = *v28++;
              v27 |= v30;
              --v29;
            }

            while (v29);
            v31 = [(NSCalendar *)self components:v27 fromDate:date1, v40, v41, v42];
            v32 = [(NSCalendar *)self components:v27 fromDate:date2];
            v33 = v23 - 1;
            while (1)
            {
              v34 = v33;
              v35 = [(NSDateComponents *)v31 valueForComponent:*v22];
              v36 = [(NSDateComponents *)v32 valueForComponent:*v22];
              if (v35 > v36)
              {
LABEL_56:
                result = NSOrderedDescending;
                goto LABEL_23;
              }

              if (v35 < v36)
              {
                goto LABEL_57;
              }

              if (*v22 == 8 && [(NSString *)[(NSCalendar *)self calendarIdentifier] isEqualToString:@"chinese"])
              {
                v37 = [(NSDateComponents *)v31 isLeapMonth];
                v38 = [(NSDateComponents *)v32 isLeapMonth];
                if (!v37 && v38)
                {
LABEL_57:
                  result = NSOrderedAscending;
                  goto LABEL_23;
                }

                if (!v38 && v37)
                {
                  goto LABEL_56;
                }
              }

              result = NSOrderedSame;
              v39 = *v22++;
              if (v39 != unit)
              {
                v33 = v34 - 1;
                if (v34)
                {
                  continue;
                }
              }

              goto LABEL_23;
            }
          }

          v22 = __y;
LABEL_41:
          v23 = 5;
          goto LABEL_43;
        }
      }

      else if (unit != 4096)
      {
        v22 = &qword_183446A20;
        v23 = 4;
        if (unit == 0x2000 || unit == 0x4000)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v22 = &v40;
      goto LABEL_41;
    }

    *&__y[0] = 0;
    *&v40 = 0;
    [(NSCalendar *)self rangeOfUnit:unit startDate:__y interval:&v40 forDate:date1];
    [*&__y[0] timeIntervalSinceReferenceDate];
    v25 = v24;
    [(NSDate *)date2 timeIntervalSinceReferenceDate];
    if (v25 > v26 || v26 >= v25 + *&v40)
    {
      if (v26 < v25)
      {
        result = NSOrderedDescending;
      }

      else
      {
        result = NSOrderedAscending;
      }
    }

    else
    {
      result = NSOrderedSame;
    }
  }

  else
  {
    if (unit < 0x100000)
    {
      if (unit == 128 || unit == 0x8000)
      {
        *&__y[0] = 0;
        [(NSDate *)date1 timeIntervalSinceReferenceDate];
        [(NSDate *)date2 timeIntervalSinceReferenceDate:modf(v12];
        modf(v13, &v40);
        v14 = *__y;
        v15 = *&v40;
LABEL_17:
        v17 = NSOrderedAscending;
        if (v15 < v14)
        {
          v17 = NSOrderedDescending;
        }

        v16 = v14 == v15;
LABEL_20:
        if (v16)
        {
          result = NSOrderedSame;
        }

        else
        {
          result = v17;
        }

        goto LABEL_23;
      }

      goto LABEL_26;
    }

    result = NSOrderedSame;
    if (unit != 0x100000 && unit != 0x200000)
    {
      goto LABEL_26;
    }
  }

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDate:(NSDate *)date1 equalToDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit
{
  if (date1 || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    if (date2 || !_CFExecutableLinkedOnOrAfter(9uLL))
    {
      return [(NSCalendar *)self compareDate:date1 toDate:date2 toUnitGranularity:unit]== NSOrderedSame;
    }

    else
    {
      v17 = isDate_equalToDate_toUnitGranularity____count___24;
      if (isDate_equalToDate_toUnitGranularity____count___24 <= 13)
      {
        [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
        CFLog(3, @"*** %s: date2 cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v18, v19, v20, v21, v22, v23, "[NSCalendar isDate:equalToDate:toUnitGranularity:]");
        v17 = isDate_equalToDate_toUnitGranularity____count___24;
      }

      result = 0;
      isDate_equalToDate_toUnitGranularity____count___24 = v17 + 1;
    }
  }

  else
  {
    v10 = isDate_equalToDate_toUnitGranularity____count__;
    if (isDate_equalToDate_toUnitGranularity____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date1 cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v11, v12, v13, v14, v15, v16, "[NSCalendar isDate:equalToDate:toUnitGranularity:]");
      v10 = isDate_equalToDate_toUnitGranularity____count__;
    }

    result = 0;
    isDate_equalToDate_toUnitGranularity____count__ = v10 + 1;
  }

  return result;
}

- (BOOL)isDate:(NSDate *)date1 inSameDayAsDate:(NSDate *)date2
{
  if (date1 || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    if (date2 || !_CFExecutableLinkedOnOrAfter(9uLL))
    {
      return [(NSCalendar *)self compareDate:date1 toDate:date2 toUnitGranularity:16]== NSOrderedSame;
    }

    else
    {
      v15 = isDate_inSameDayAsDate____count___28;
      if (isDate_inSameDayAsDate____count___28 <= 13)
      {
        [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
        CFLog(3, @"*** %s: date2 cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v16, v17, v18, v19, v20, v21, "[NSCalendar isDate:inSameDayAsDate:]");
        v15 = isDate_inSameDayAsDate____count___28;
      }

      result = 0;
      isDate_inSameDayAsDate____count___28 = v15 + 1;
    }
  }

  else
  {
    v8 = isDate_inSameDayAsDate____count__;
    if (isDate_inSameDayAsDate____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date1 cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v9, v10, v11, v12, v13, v14, "[NSCalendar isDate:inSameDayAsDate:]");
      v8 = isDate_inSameDayAsDate____count__;
    }

    result = 0;
    isDate_inSameDayAsDate____count__ = v8 + 1;
  }

  return result;
}

- (BOOL)isDateInToday:(NSDate *)date
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    return [(NSCalendar *)self compareDate:date toDate:+[NSDate toUnitGranularity:"date"], 16]== NSOrderedSame;
  }

  v6 = isDateInToday____count__;
  if (isDateInToday____count__ <= 13)
  {
    [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
    CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v7, v8, v9, v10, v11, v12, "[NSCalendar isDateInToday:]");
    v6 = isDateInToday____count__;
  }

  result = 0;
  isDateInToday____count__ = v6 + 1;
  return result;
}

- (BOOL)isDateInYesterday:(NSDate *)date
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v15 = 0;
    v16[0] = 0;
    v5 = [(NSCalendar *)self rangeOfUnit:16 startDate:v16 interval:&v15 forDate:+[NSDate date]];
    if (v5)
    {
      LOBYTE(v5) = -[NSCalendar compareDate:toDate:toUnitGranularity:](self, "compareDate:toDate:toUnitGranularity:", date, [v16[0] dateByAddingTimeInterval:-60.0], 16) == NSOrderedSame;
    }
  }

  else
  {
    v6 = isDateInYesterday____count__;
    if (isDateInYesterday____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v7, v8, v9, v10, v11, v12, "[NSCalendar isDateInYesterday:]");
      v6 = isDateInYesterday____count__;
    }

    LOBYTE(v5) = 0;
    isDateInYesterday____count__ = v6 + 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isDateInTomorrow:(NSDate *)date
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v15 = 0.0;
    v16[0] = 0;
    v5 = [(NSCalendar *)self rangeOfUnit:16 startDate:v16 interval:&v15 forDate:+[NSDate date]];
    if (v5)
    {
      LOBYTE(v5) = -[NSCalendar compareDate:toDate:toUnitGranularity:](self, "compareDate:toDate:toUnitGranularity:", date, [v16[0] dateByAddingTimeInterval:v15 + 60.0], 16) == NSOrderedSame;
    }
  }

  else
  {
    v6 = isDateInTomorrow____count__;
    if (isDateInTomorrow____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v7, v8, v9, v10, v11, v12, "[NSCalendar isDateInTomorrow:]");
      v6 = isDateInTomorrow____count__;
    }

    LOBYTE(v5) = 0;
    isDateInTomorrow____count__ = v6 + 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)rangeOfWeekendStartDate:(NSDate *)datep interval:(NSTimeInterval *)tip containingDate:(NSDate *)date
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20[0] = 0;
  v17 = 0.0;
  v18 = 0;
  if ([(NSCalendar *)self nextWeekendStartDate:v20 interval:&v18 options:0 afterDate:date])
  {
    v9 = ![(NSCalendar *)self nextWeekendStartDate:&v19 interval:&v17 options:4 afterDate:v20[0]];
  }

  else
  {
    v9 = 1;
  }

  [(NSDate *)date timeIntervalSinceReferenceDate];
  v11 = v10;
  [(NSDate *)v19 timeIntervalSinceReferenceDate];
  if ((v9 & 1) == 0 && ((v13 = v17, v12 <= v11) ? (v14 = v11 < v12 + v17) : (v14 = 0), v14))
  {
    if (datep)
    {
      *datep = v19;
    }

    if (tip)
    {
      *tip = v13;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDateComponents:(NSDateComponents *)startingDateComp toDateComponents:(NSDateComponents *)resultDateComp options:(NSCalendarOptions)options
{
  v11 = [(NSDateComponents *)startingDateComp calendar];
  if (!v11)
  {
    v11 = self;
  }

  v12 = [(NSCalendar *)v11 dateFromComponents:startingDateComp];
  v13 = [(NSDateComponents *)resultDateComp calendar];
  if (!v13)
  {
    v13 = self;
  }

  v14 = [(NSCalendar *)v13 dateFromComponents:resultDateComp];

  return [(NSCalendar *)self components:unitFlags fromDate:v12 toDate:v14 options:options];
}

- (NSDate)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(NSDate *)date options:(NSCalendarOptions)options
{
  v11 = objc_opt_new();
  [v11 setValue:value forComponent:unit];

  return [(NSCalendar *)self dateByAddingComponents:v11 toDate:date options:options];
}

- (NSDate)nextDateAfterDate:(NSDate *)date matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)options
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSCalendar_nextDateAfterDate_matchingComponents_options___block_invoke;
  v8[3] = &unk_1E6DD0080;
  v8[4] = &v9;
  [(NSCalendar *)self enumerateDatesStartingAfterDate:date matchingComponents:comps options:options usingBlock:v8];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __59__NSCalendar_nextDateAfterDate_matchingComponents_options___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *a4 = 1;
  return result;
}

- (NSDate)nextDateAfterDate:(NSDate *)date matchingUnit:(NSCalendarUnit)unit value:(NSInteger)value options:(NSCalendarOptions)options
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v11 = objc_opt_new();
    [v11 setValue:value forComponent:unit];

    return [(NSCalendar *)self nextDateAfterDate:date matchingComponents:v11 options:options];
  }

  else
  {
    v13 = nextDateAfterDate_matchingUnit_value_options____count__;
    if (nextDateAfterDate_matchingUnit_value_options____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v14, v15, v16, v17, v18, v19, "[NSCalendar nextDateAfterDate:matchingUnit:value:options:]");
      v13 = nextDateAfterDate_matchingUnit_value_options____count__;
    }

    nextDateAfterDate_matchingUnit_value_options____count__ = v13 + 1;
    return 0;
  }
}

- (NSDate)nextDateAfterDate:(NSDate *)date matchingHour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue options:(NSCalendarOptions)options
{
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v13 = objc_opt_new();
    [v13 setHour:hourValue];
    [v13 setMinute:minuteValue];
    [v13 setSecond:secondValue];

    return [(NSCalendar *)self nextDateAfterDate:date matchingComponents:v13 options:options];
  }

  else
  {
    v15 = nextDateAfterDate_matchingHour_minute_second_options____count__;
    if (nextDateAfterDate_matchingHour_minute_second_options____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v16, v17, v18, v19, v20, v21, "[NSCalendar nextDateAfterDate:matchingHour:minute:second:options:]");
      v15 = nextDateAfterDate_matchingHour_minute_second_options____count__;
    }

    nextDateAfterDate_matchingHour_minute_second_options____count__ = v15 + 1;
    return 0;
  }
}

- (NSDate)dateBySettingUnit:(NSCalendarUnit)unit value:(NSInteger)v ofDate:(NSDate *)date options:(NSCalendarOptions)opts
{
  v7 = date;
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSCalendar *)self component:unit fromDate:date]!= v)
  {
    if (opts)
    {
      v11 = opts;
    }

    else
    {
      v11 = 1024;
    }

    v12 = objc_alloc_init(NSDateComponents);
    [(NSDateComponents *)v12 setValue:v forComponent:unit];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__NSCalendar_dateBySettingUnit_value_ofDate_options___block_invoke;
    v15[3] = &unk_1E6DD0080;
    v15[4] = &v16;
    [(NSCalendar *)self enumerateDatesStartingAfterDate:v7 matchingComponents:v12 options:v11 usingBlock:v15];

    v7 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __53__NSCalendar_dateBySettingUnit_value_ofDate_options___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *a4 = 1;
  return result;
}

- (NSDate)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(NSDate *)date options:(NSCalendarOptions)opts
{
  v7 = opts;
  v27[1] = *MEMORY[0x1E69E9840];
  if (date || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    v26 = 0;
    v27[0] = 0;
    [(NSCalendar *)self rangeOfUnit:16 startDate:v27 interval:&v26 forDate:date];
    if (v27[0])
    {
      v13 = objc_alloc_init(NSDateComponents);
      [(NSDateComponents *)v13 setHour:h];
      [(NSDateComponents *)v13 setMinute:m];
      [(NSDateComponents *)v13 setSecond:s];
      if ((v7 & 2) != 0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1024;
      }

      if ((v7 & 0x2000) != 0)
      {
        v15 = 0x2000;
      }

      else
      {
        v15 = 4096;
      }

      v16 = -[NSCalendar nextDateAfterDate:matchingComponents:options:](self, "nextDateAfterDate:matchingComponents:options:", [v27[0] dateByAddingTimeInterval:-0.5], v13, v14 | v15);
      if ([(NSDate *)v16 compare:v27[0]]== NSOrderedAscending)
      {
        v16 = [(NSCalendar *)self nextDateAfterDate:v27[0] matchingComponents:v13 options:v14 | v15];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = dateBySettingHour_minute_second_ofDate_options____count__;
    if (dateBySettingHour_minute_second_ofDate_options____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: date cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v18, v19, v20, v21, v22, v23, "[NSCalendar dateBySettingHour:minute:second:ofDate:options:]");
      v17 = dateBySettingHour_minute_second_ofDate_options____count__;
    }

    v16 = 0;
    dateBySettingHour_minute_second_ofDate_options____count__ = v17 + 1;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)date:(NSDate *)date matchesComponents:(NSDateComponents *)components
{
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = qword_183446A40[v7];
    if ([(NSDateComponents *)components valueForComponent:v9]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v8 |= v10;
    ++v7;
  }

  while (v7 != 14);
  if (v8 || ![(NSDateComponents *)components isLeapMonthSet])
  {
    v13 = [(NSCalendar *)self components:v8 fromDate:date];
    v14 = [(NSDateComponents *)components copy];
    if ([(NSDateComponents *)v13 isLeapMonthSet]&& ![(NSDateComponents *)components isLeapMonthSet])
    {
      [v14 setLeapMonth:{-[NSDateComponents isLeapMonth](v13, "isLeapMonth")}];
    }

    if ([(NSDateComponents *)v13 isRepeatedDaySet]&& ![(NSDateComponents *)components isRepeatedDaySet])
    {
      [v14 setRepeatedDay:{-[NSDateComponents isRepeatedDay](v13, "isRepeatedDay")}];
    }

    v15 = [(NSDateComponents *)v13 valueForComponent:0x8000];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v17 = [v14 valueForComponent:0x8000];
      v18 = v16 - v17;
      if (v16 - v17 < 0)
      {
        v18 = v17 - v16;
      }

      if (v18 > 0x1F4)
      {
        return 0;
      }

      [(NSDateComponents *)v13 setNanosecond:0];
      [v14 setNanosecond:0];
    }

    return [v14 isEqual:v13];
  }

  else
  {
    v11 = [(NSCalendar *)self components:8 fromDate:date];

    return [(NSDateComponents *)v11 isLeapMonthSet];
  }
}

- (NSArray)eraSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterEraSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)monthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortMonthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)weekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortWeekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSString)AMSymbol
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterAMSymbolKey");
  CFRelease(v3);
  return v4;
}

- (NSString)PMSymbol
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterPMSymbolKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)longEraSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterLongEraSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)veryShortMonthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterVeryShortMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)standaloneMonthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterStandaloneMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortStandaloneMonthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortStandaloneMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)veryShortStandaloneMonthSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterVeryShortStandaloneMonthSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)veryShortWeekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterVeryShortWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)standaloneWeekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterStandaloneWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortStandaloneWeekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortStandaloneWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)veryShortStandaloneWeekdaySymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterVeryShortStandaloneWeekdaySymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)quarterSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterQuarterSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortQuarterSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortQuarterSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)standaloneQuarterSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterStandaloneQuarterSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (NSArray)shortStandaloneQuarterSymbols
{
  v3 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, [(NSCalendar *)self locale], kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetProperty(v3, @"kCFDateFormatterCalendarKey", self);
  v4 = CFDateFormatterCopyProperty(v3, @"kCFDateFormatterShortStandaloneQuarterSymbolsKey");
  CFRelease(v3);
  return v4;
}

- (BOOL)isDateInWeekend:(NSDate *)date
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (BOOL)nextWeekendStartDate:(NSDate *)datep interval:(NSTimeInterval *)tip options:(NSCalendarOptions)options afterDate:(NSDate *)date
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v6, v7, v8);
}

- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void *)block
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();

  __CFRequireConcreteImplementation(v6, v7, v8);
}

- (NSCalendarIdentifier)calendarIdentifier
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v2, v3, v4);
}

- (void)setLocale:(NSLocale *)locale
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSLocale)locale
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v2, v3, v4);
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSTimeZone)timeZone
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v2, v3, v4);
}

- (void)setFirstWeekday:(NSUInteger)firstWeekday
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSUInteger)firstWeekday
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v2, v3, v4);
}

- (void)setMinimumDaysInFirstWeek:(NSUInteger)minimumDaysInFirstWeek
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSUInteger)minimumDaysInFirstWeek
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v2, v3, v4);
}

- (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v5, v6, v7);
}

- (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v5, v6, v7);
}

- (NSDate)dateFromComponents:(NSDateComponents *)comps
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)date
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (NSDate)dateByAddingComponents:(NSDateComponents *)comps toDate:(NSDate *)date options:(NSCalendarOptions)opts
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v5, v6, v7);
}

- (NSDateComponents)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)startingDate toDate:(NSDate *)resultDate options:(NSCalendarOptions)opts
{
  OUTLINED_FUNCTION_1_13();
  __CFLookUpClass("NSCalendar");
  OUTLINED_FUNCTION_0_18();
  __CFRequireConcreteImplementation(v6, v7, v8);
}

@end