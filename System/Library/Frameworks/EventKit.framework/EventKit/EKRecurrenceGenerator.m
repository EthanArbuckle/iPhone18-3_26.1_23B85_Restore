@interface EKRecurrenceGenerator
+ (BOOL)_isLunarBirthdayRecurrenceRule:(id)a3 lunarCalendarString:(id)a4;
+ (id)_copyDatesForLunarBirthdayFromDate:(id)a3 toDate:(id)a4 inTimeZone:(id)a5 lunarCalendarString:(id)a6;
+ (id)_daysOfWeekFromICSRule:(id)a3;
+ (id)datesByExpandingRule:(id)a3 fromDate:(id)a4 toDate:(id)a5 inTimezone:(id)a6 isAllDay:(BOOL)a7 lunarCalendarString:(id)a8;
+ (int)_convertEKRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)a3;
+ (unint64_t)_weekStartFromICSRule:(id)a3;
- (BOOL)isOccurrenceDate:(id)a3 validForEvent:(id)a4;
- (BOOL)occurrenceDate:(id)a3 matchesRecurrenceRule:(id)a4 forEvent:(id)a5 includeDetachedEventsInSeries:(BOOL)a6;
- (id)_copyOccurrenceDatesWithEKEvent:(id)a3 recurrenceRule:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 exceptionDates:(id)a8 limit:(int64_t)a9 adjustDatesForAllDayEvents:(BOOL)a10;
- (id)adjustedExceptionDatesFromDates:(id)a3 fromGMTToTimeZone:(id)a4;
- (id)copyOccurrenceDatesWithEKEvent:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 exceptionDates:(id)a7 limit:(int64_t)a8 adjustDatesForAllDayEvents:(BOOL)a9;
- (id)nextOccurrenceDateWithEKRecurrences:(id)a3 forCalendarItem:(id)a4 exceptionDates:(id)a5 initialDate:(id)a6 afterDate:(id)a7 inclusive:(BOOL)a8;
- (void)_prepareForEKRecurrence:(id)a3 forCalendarItem:(id)a4;
- (void)_setupForEKEvent:(id)a3 adjustDatesForAllDayEvents:(BOOL)a4;
@end

@implementation EKRecurrenceGenerator

- (void)_setupForEKEvent:(id)a3 adjustDatesForAllDayEvents:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = [v17 initialStartDate];
  [(CalRecurrenceGenerator *)self setEventStartDate:v6];

  v7 = [v17 initialEndDate];
  [(CalRecurrenceGenerator *)self setEventEndDate:v7];

  v8 = [v17 timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:v8];

  -[CalRecurrenceGenerator setAllDay:](self, "setAllDay:", [v17 isAllDay]);
  if (v4 && [v17 isFloating])
  {
    v9 = [(CalRecurrenceGenerator *)self eventStartDate];
    v10 = [v17 eventStore];
    v11 = [v10 timeZone];
    v12 = [v9 dateInTimeZone:0 fromTimeZone:v11];
    [(CalRecurrenceGenerator *)self setEventStartDate:v12];

    v13 = [(CalRecurrenceGenerator *)self eventEndDate];
    v14 = [v17 eventStore];
    v15 = [v14 timeZone];
    v16 = [v13 dateInTimeZone:0 fromTimeZone:v15];
    [(CalRecurrenceGenerator *)self setEventEndDate:v16];
  }
}

- (id)copyOccurrenceDatesWithEKEvent:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 exceptionDates:(id)a7 limit:(int64_t)a8 adjustDatesForAllDayEvents:(BOOL)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v35 = a4;
  v34 = a5;
  v36 = a6;
  v33 = a7;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:v15 adjustDatesForAllDayEvents:a9];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = v15;
  v18 = [v15 recurrenceRules];
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:*(*(&v41 + 1) + 8 * i) forCalendarItem:v17];
        v23 = objc_autoreleasePoolPush();
        v24 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v35 endDate:v34 timeZone:v36 limit:a8];
        [v16 addObjectsFromArray:v24];

        objc_autoreleasePoolPop(v23);
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v20);
  }

  v25 = [(EKRecurrenceGenerator *)self adjustedExceptionDatesFromDates:v33 fromGMTToTimeZone:v36];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v38;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [v16 removeObject:*(*(&v37 + 1) + 8 * j)];
      }

      v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v27);
  }

  v30 = [v16 copy];

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)_copyOccurrenceDatesWithEKEvent:(id)a3 recurrenceRule:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 exceptionDates:(id)a8 limit:(int64_t)a9 adjustDatesForAllDayEvents:(BOOL)a10
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:v16 adjustDatesForAllDayEvents:a10];
  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v37 = v17;
  v23 = v17;
  v24 = v18;
  [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:v23 forCalendarItem:v16];
  context = objc_autoreleasePoolPush();
  v36 = v19;
  v25 = v19;
  v26 = v21;
  v27 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v18 endDate:v25 timeZone:v20 limit:a9];
  [v22 addObjectsFromArray:v27];
  v28 = [(EKRecurrenceGenerator *)self adjustedExceptionDatesFromDates:v21 fromGMTToTimeZone:v20];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v39;
    do
    {
      v32 = 0;
      do
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v22 removeObject:*(*(&v38 + 1) + 8 * v32++)];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v30);
  }

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)adjustedExceptionDatesFromDates:(id)a3 fromGMTToTimeZone:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CalRecurrenceGenerator *)self requiresEndDateConversionFromGMTToEventTimeZone];
  if (v7 && v8)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v6;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:{0, v19}];
          [v14 timeIntervalSinceReferenceDate];
          [(CalRecurrenceGenerator *)self convertAbsoluteTime:v15 fromTimeZone:v7 toTimeZone:?];
          v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
          [v9 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v6 = v19;
  }

  else
  {
    v9 = v6;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isOccurrenceDate:(id)a3 validForEvent:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 recurrenceRules];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([(EKRecurrenceGenerator *)self occurrenceDate:v6 matchesRecurrenceRule:*(*(&v16 + 1) + 8 * i) forEvent:v7 includeDetachedEventsInSeries:0])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)occurrenceDate:(id)a3 matchesRecurrenceRule:(id)a4 forEvent:(id)a5 includeDetachedEventsInSeries:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:v12 adjustDatesForAllDayEvents:1];
  v13 = [v10 date];
  v14 = [v13 dateByAddingTimeInterval:1.0];
  [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:v11 forCalendarItem:v12];
  v15 = objc_autoreleasePoolPush();
  v16 = [v10 timeZone];
  v17 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v13 endDate:v14 timeZone:v16 limit:1];

  if ([v17 count])
  {
    v33 = v15;
    v18 = a6;
    v19 = [v17 objectAtIndex:0];
    v20 = [v10 date];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      v22 = [v12 exceptionDatesAdjustedForFloatingEvents];
      v23 = [v22 count];

      if (v23)
      {
        v24 = [v12 exceptionDatesAdjustedForFloatingEvents];
        LOBYTE(v23) = [v24 containsObject:v19];
      }

      v25 = 1;
      if ((v23 & 1) == 0 && !v18)
      {
        v26 = v23;
        v27 = [v12 detachedItems];
        v28 = [v27 count];

        if (v28)
        {
          v29 = [v12 detachedItems];
          v30 = [v29 valueForKey:@"startDate"];
          v32 = [v30 containsObject:v19];

          v25 = v32 ^ 1;
        }

        else
        {
          v25 = 1;
        }

        LOBYTE(v23) = v26;
      }

      LOBYTE(v21) = (v23 ^ 1) & v25;
    }

    v15 = v33;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  objc_autoreleasePoolPop(v15);
  return v21;
}

- (id)nextOccurrenceDateWithEKRecurrences:(id)a3 forCalendarItem:(id)a4 exceptionDates:(id)a5 initialDate:(id)a6 afterDate:(id)a7 inclusive:(BOOL)a8
{
  v66 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v53 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 date];
  [(CalRecurrenceGenerator *)self setEventStartDate:v17];

  v18 = [v15 date];
  [(CalRecurrenceGenerator *)self setEventEndDate:v18];

  v19 = [v15 timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:v19];

  [(CalRecurrenceGenerator *)self setAllDay:0];
  v20 = MEMORY[0x1E69930C8];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1577840000.0];
  v47 = v15;
  v22 = [v15 timeZone];
  v48 = [v20 calendarDateWithDate:v21 timeZone:v22];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v13;
  v51 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v51)
  {
    v50 = *v61;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v61 != v50)
      {
        objc_enumerationMutation(obj);
      }

      [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:*(*(&v60 + 1) + 8 * v23) forCalendarItem:v53];
      v24 = objc_autoreleasePoolPush();
      if (a8)
      {
        v25 = [v16 copy];
      }

      else
      {
        v25 = [v16 calendarDateByAddingSeconds:1];
      }

      v26 = v25;
      v27 = [(CalRecurrenceGenerator *)self endDate];

      if (v27)
      {
        v28 = MEMORY[0x1E69930C8];
        v29 = [(CalRecurrenceGenerator *)self endDate];
        v30 = [v16 timeZone];
        v31 = [v28 calendarDateWithDate:v29 timeZone:v30];

        v32 = [v31 date];
        v33 = [v32 dateByAddingTimeInterval:1.0];
      }

      else
      {
        v33 = [v48 date];
      }

      v34 = [v14 count];
      v35 = [v26 date];
      v36 = [v16 timeZone];
      v37 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:v35 endDate:v33 timeZone:v36 limit:v34 + 1];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v39)
      {
        v54 = v26;
        v55 = v24;
        v40 = self;
        v41 = v16;
        v42 = *v57;
        while (2)
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v57 != v42)
            {
              objc_enumerationMutation(v38);
            }

            v44 = *(*(&v56 + 1) + 8 * i);
            if (([v14 containsObject:v44] & 1) == 0)
            {
              v39 = v44;
              goto LABEL_22;
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

LABEL_22:
        v16 = v41;
        self = v40;
        v26 = v54;
        v24 = v55;
      }

      objc_autoreleasePoolPop(v24);
      if (v39)
      {
        break;
      }

      if (++v23 == v51)
      {
        v51 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v51)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    v39 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v39;
}

- (void)_prepareForEKRecurrence:(id)a3 forCalendarItem:(id)a4
{
  v22 = a3;
  v6 = a4;
  -[CalRecurrenceGenerator setInterval:](self, "setInterval:", [v22 interval]);
  -[CalRecurrenceGenerator setFrequency:](self, "setFrequency:", [objc_opt_class() _convertEKRecurrenceFrequencyToCalRecurrenceFrequency:{objc_msgSend(v22, "frequency")}]);
  -[CalRecurrenceGenerator setWeekStart:](self, "setWeekStart:", [v22 firstDayOfTheWeek]);
  if (![(CalRecurrenceGenerator *)self weekStart])
  {
    [(CalRecurrenceGenerator *)self setWeekStart:2];
  }

  v7 = [v6 constraints];
  -[CalRecurrenceGenerator setShouldPinMonthDays:](self, "setShouldPinMonthDays:", [v7 recurrencesShouldPinToMonthDays]);

  v8 = [v22 daysOfTheWeek];
  [(CalRecurrenceGenerator *)self setDaysOfTheWeek:v8];

  v9 = [v22 daysOfTheMonth];
  [(CalRecurrenceGenerator *)self setDaysOfTheMonth:v9];

  v10 = [v22 daysOfTheYear];
  [(CalRecurrenceGenerator *)self setDaysOfTheYear:v10];

  v11 = [v22 weeksOfTheYear];
  [(CalRecurrenceGenerator *)self setWeeksOfTheYear:v11];

  v12 = [v22 monthsOfTheYear];
  [(CalRecurrenceGenerator *)self setMonthsOfTheYear:v12];

  v13 = [v22 setPositions];
  [(CalRecurrenceGenerator *)self setSetPositions:v13];

  [(CalRecurrenceGenerator *)self setEndDate:0];
  v14 = [v22 recurrenceEnd];
  v15 = [v14 occurrenceCount];

  v16 = [v22 recurrenceEnd];
  v17 = v16;
  if (v15)
  {
    v18 = -[CalRecurrenceGenerator computeRecurrenceEndDate:](self, "computeRecurrenceEndDate:", [v16 occurrenceCount]);
    [(CalRecurrenceGenerator *)self setEndDate:v18];
  }

  else
  {
    v19 = [v16 endDate];
    [(CalRecurrenceGenerator *)self setEndDate:v19];

    if (![(CalRecurrenceGenerator *)self allDay])
    {
      goto LABEL_8;
    }

    v17 = [(CalRecurrenceGenerator *)self endDate];
    v18 = [v6 eventStore];
    v20 = [v18 timeZone];
    v21 = [v17 dateInTimeZone:0 fromTimeZone:v20];
    [(CalRecurrenceGenerator *)self setEndDate:v21];
  }

LABEL_8:
}

+ (int)_convertEKRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return a3 + 1;
  }
}

+ (id)datesByExpandingRule:(id)a3 fromDate:(id)a4 toDate:(id)a5 inTimezone:(id)a6 isAllDay:(BOOL)a7 lunarCalendarString:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = [a5 dateByAddingTimeInterval:1.0];
  if ([a1 _isLunarBirthdayRecurrenceRule:v14 lunarCalendarString:v17])
  {
    v19 = [a1 _copyDatesForLunarBirthdayFromDate:v15 toDate:v18 inTimeZone:v16 lunarCalendarString:v17];
    goto LABEL_21;
  }

  v20 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:v14];
  if (v20)
  {
    v21 = objc_opt_new();
    [v20 freq];
    [v21 setFrequency:CalRecurrenceFrequencyFromICSFrequency()];
    v22 = [v20 interval];
    v45 = v9;
    v23 = [v22 intValue];

    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = v45;
    [v21 setInterval:v24];
    [v21 setWeekStart:{objc_msgSend(a1, "_weekStartFromICSRule:", v20)}];
    v26 = [a1 _daysOfWeekFromICSRule:v20];
    [v21 setDaysOfTheWeek:v26];

    v27 = [v20 bysetpos];
    [v21 setSetPositions:v27];

    v28 = [v20 bymonth];
    [v21 setMonthsOfTheYear:v28];

    v29 = [v20 bymonthday];
    [v21 setDaysOfTheMonth:v29];

    v30 = [v20 byweekno];
    [v21 setWeeksOfTheYear:v30];

    [v21 setEventStartDate:v15];
    if (v45)
    {
      v31 = [v15 ek_ios_dateForEndOfDayInTimeZone:v16];
      [v21 setEventEndDate:v31];
    }

    else
    {
      [v21 setEventEndDate:v15];
    }

    v32 = [v20 count];

    if (v32)
    {
      v33 = [v20 count];
      v34 = [v21 computeRecurrenceEndDate:{objc_msgSend(v33, "unsignedIntegerValue")}];
      [v21 setEndDate:v34];
    }

    else
    {
      v35 = [v20 until];

      if (!v35)
      {
LABEL_19:
        [v21 setEventTimeZone:v16];
        [v21 setAllDay:v25];
        v19 = [v21 copyOccurrenceDatesBetweenStartDate:v15 endDate:v18 timeZone:v16 limit:0];

        goto LABEL_20;
      }

      v36 = objc_alloc(MEMORY[0x1E69E3C90]);
      v37 = [v20 until];
      v33 = [v36 initWithValue:v37];

      v34 = [v33 components];
      v38 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v38 setTimeZone:v16];
      v44 = v38;
      v43 = [v38 dateFromComponents:v34];
      v39 = [v20 until];
      objc_opt_class();
      LODWORD(v42) = objc_opt_isKindOfClass();

      if (v42)
      {
        v40 = v43;
      }

      else
      {
        v42 = [v43 dateForEndOfDayInTimeZone:v16];

        v40 = v42;
      }

      [v21 setEndDate:{v40, v42}];
    }

    v25 = v45;
    goto LABEL_19;
  }

  v19 = 0;
LABEL_20:

LABEL_21:

  return v19;
}

+ (unint64_t)_weekStartFromICSRule:(id)a3
{
  v3 = a3;
  v4 = [v3 wkst];

  if (v4)
  {
    v5 = [v3 wkst];
    v6 = [v5 intValue];

    if (v6 - 1 >= 7)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

+ (id)_daysOfWeekFromICSRule:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 byday];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [v3 byday];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v3 byday];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x1E6993030]);
          v15 = [v13 weekday];
          v16 = [v13 number];
          v17 = [v14 initWithDayOfTheWeek:v15 weekNumber:{objc_msgSend(v16, "integerValue")}];

          [v7 addObject:v17];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v18 = [v7 copy];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_copyDatesForLunarBirthdayFromDate:(id)a3 toDate:(id)a4 inTimeZone:(id)a5 lunarCalendarString:(id)a6
{
  v9 = MEMORY[0x1E695DEE8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 CalCalendarWithUnsanitizedCalendarIdentifier:a6];
  v14 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v13 setTimeZone:v14];
  v15 = [MEMORY[0x1E69930C8] calendarDateWithDate:v12 timeZone:v10];
  v16 = [MEMORY[0x1E69930C8] calendarDateWithDate:v11 timeZone:v10];

  v17 = objc_alloc(MEMORY[0x1E6992F70]);
  v18 = [v15 date];
  v19 = [v16 date];
  v20 = [v17 initWithStartDate:v18 endDate:v19];

  v21 = [v13 components:24 fromDate:v12];

  [v13 setTimeZone:v10];
  v22 = [v13 CalOccurrencesForBirthday:v21 inDateRange:v20];

  return v22;
}

+ (BOOL)_isLunarBirthdayRecurrenceRule:(id)a3 lunarCalendarString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && ([v6 isEqualToString:*MEMORY[0x1E695D850]] & 1) == 0)
  {
    if ([v5 isEqualToString:@"FREQ=YEARLY"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"FREQ=YEARLY;INTERVAL=1"))
    {
      v8 = 1;
      goto LABEL_7;
    }

    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecurrenceGenerator(Deprecated) *)v5 _isLunarBirthdayRecurrenceRule:v7 lunarCalendarString:v10];
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end