@interface EKRecurrenceGenerator
+ (BOOL)_isLunarBirthdayRecurrenceRule:(id)rule lunarCalendarString:(id)string;
+ (id)_copyDatesForLunarBirthdayFromDate:(id)date toDate:(id)toDate inTimeZone:(id)zone lunarCalendarString:(id)string;
+ (id)_daysOfWeekFromICSRule:(id)rule;
+ (id)datesByExpandingRule:(id)rule fromDate:(id)date toDate:(id)toDate inTimezone:(id)timezone isAllDay:(BOOL)day lunarCalendarString:(id)string;
+ (int)_convertEKRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)frequency;
+ (unint64_t)_weekStartFromICSRule:(id)rule;
- (BOOL)isOccurrenceDate:(id)date validForEvent:(id)event;
- (BOOL)occurrenceDate:(id)date matchesRecurrenceRule:(id)rule forEvent:(id)event includeDetachedEventsInSeries:(BOOL)series;
- (id)_copyOccurrenceDatesWithEKEvent:(id)event recurrenceRule:(id)rule startDate:(id)date endDate:(id)endDate timeZone:(id)zone exceptionDates:(id)dates limit:(int64_t)limit adjustDatesForAllDayEvents:(BOOL)self0;
- (id)adjustedExceptionDatesFromDates:(id)dates fromGMTToTimeZone:(id)zone;
- (id)copyOccurrenceDatesWithEKEvent:(id)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone exceptionDates:(id)dates limit:(int64_t)limit adjustDatesForAllDayEvents:(BOOL)events;
- (id)nextOccurrenceDateWithEKRecurrences:(id)recurrences forCalendarItem:(id)item exceptionDates:(id)dates initialDate:(id)date afterDate:(id)afterDate inclusive:(BOOL)inclusive;
- (void)_prepareForEKRecurrence:(id)recurrence forCalendarItem:(id)item;
- (void)_setupForEKEvent:(id)event adjustDatesForAllDayEvents:(BOOL)events;
@end

@implementation EKRecurrenceGenerator

- (void)_setupForEKEvent:(id)event adjustDatesForAllDayEvents:(BOOL)events
{
  eventsCopy = events;
  eventCopy = event;
  initialStartDate = [eventCopy initialStartDate];
  [(CalRecurrenceGenerator *)self setEventStartDate:initialStartDate];

  initialEndDate = [eventCopy initialEndDate];
  [(CalRecurrenceGenerator *)self setEventEndDate:initialEndDate];

  timeZone = [eventCopy timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:timeZone];

  -[CalRecurrenceGenerator setAllDay:](self, "setAllDay:", [eventCopy isAllDay]);
  if (eventsCopy && [eventCopy isFloating])
  {
    eventStartDate = [(CalRecurrenceGenerator *)self eventStartDate];
    eventStore = [eventCopy eventStore];
    timeZone2 = [eventStore timeZone];
    v12 = [eventStartDate dateInTimeZone:0 fromTimeZone:timeZone2];
    [(CalRecurrenceGenerator *)self setEventStartDate:v12];

    eventEndDate = [(CalRecurrenceGenerator *)self eventEndDate];
    eventStore2 = [eventCopy eventStore];
    timeZone3 = [eventStore2 timeZone];
    v16 = [eventEndDate dateInTimeZone:0 fromTimeZone:timeZone3];
    [(CalRecurrenceGenerator *)self setEventEndDate:v16];
  }
}

- (id)copyOccurrenceDatesWithEKEvent:(id)event startDate:(id)date endDate:(id)endDate timeZone:(id)zone exceptionDates:(id)dates limit:(int64_t)limit adjustDatesForAllDayEvents:(BOOL)events
{
  v47 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  datesCopy = dates;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:eventCopy adjustDatesForAllDayEvents:events];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = eventCopy;
  recurrenceRules = [eventCopy recurrenceRules];
  v19 = [recurrenceRules countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(recurrenceRules);
        }

        [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:*(*(&v41 + 1) + 8 * i) forCalendarItem:v17];
        v23 = objc_autoreleasePoolPush();
        v24 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy limit:limit];
        [v16 addObjectsFromArray:v24];

        objc_autoreleasePoolPop(v23);
      }

      v20 = [recurrenceRules countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v20);
  }

  v25 = [(EKRecurrenceGenerator *)self adjustedExceptionDatesFromDates:datesCopy fromGMTToTimeZone:zoneCopy];
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

- (id)_copyOccurrenceDatesWithEKEvent:(id)event recurrenceRule:(id)rule startDate:(id)date endDate:(id)endDate timeZone:(id)zone exceptionDates:(id)dates limit:(int64_t)limit adjustDatesForAllDayEvents:(BOOL)self0
{
  v43 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  ruleCopy = rule;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  datesCopy = dates;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:eventCopy adjustDatesForAllDayEvents:events];
  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v37 = ruleCopy;
  v23 = ruleCopy;
  v24 = dateCopy;
  [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:v23 forCalendarItem:eventCopy];
  context = objc_autoreleasePoolPush();
  v36 = endDateCopy;
  v25 = endDateCopy;
  v26 = datesCopy;
  v27 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:dateCopy endDate:v25 timeZone:zoneCopy limit:limit];
  [v22 addObjectsFromArray:v27];
  v28 = [(EKRecurrenceGenerator *)self adjustedExceptionDatesFromDates:datesCopy fromGMTToTimeZone:zoneCopy];
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

- (id)adjustedExceptionDatesFromDates:(id)dates fromGMTToTimeZone:(id)zone
{
  v26 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  zoneCopy = zone;
  requiresEndDateConversionFromGMTToEventTimeZone = [(CalRecurrenceGenerator *)self requiresEndDateConversionFromGMTToEventTimeZone];
  if (zoneCopy && requiresEndDateConversionFromGMTToEventTimeZone)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = datesCopy;
    obj = datesCopy;
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
          [(CalRecurrenceGenerator *)self convertAbsoluteTime:v15 fromTimeZone:zoneCopy toTimeZone:?];
          v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
          [v9 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    datesCopy = v19;
  }

  else
  {
    v9 = datesCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isOccurrenceDate:(id)date validForEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  recurrenceRules = [eventCopy recurrenceRules];
  v9 = [recurrenceRules countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(recurrenceRules);
        }

        if ([(EKRecurrenceGenerator *)self occurrenceDate:dateCopy matchesRecurrenceRule:*(*(&v16 + 1) + 8 * i) forEvent:eventCopy includeDetachedEventsInSeries:0])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [recurrenceRules countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)occurrenceDate:(id)date matchesRecurrenceRule:(id)rule forEvent:(id)event includeDetachedEventsInSeries:(BOOL)series
{
  dateCopy = date;
  ruleCopy = rule;
  eventCopy = event;
  [(EKRecurrenceGenerator *)self _setupForEKEvent:eventCopy adjustDatesForAllDayEvents:1];
  date = [dateCopy date];
  v14 = [date dateByAddingTimeInterval:1.0];
  [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:ruleCopy forCalendarItem:eventCopy];
  v15 = objc_autoreleasePoolPush();
  timeZone = [dateCopy timeZone];
  v17 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:date endDate:v14 timeZone:timeZone limit:1];

  if ([v17 count])
  {
    v33 = v15;
    seriesCopy = series;
    v19 = [v17 objectAtIndex:0];
    date2 = [dateCopy date];
    v21 = [v19 isEqual:date2];

    if (v21)
    {
      exceptionDatesAdjustedForFloatingEvents = [eventCopy exceptionDatesAdjustedForFloatingEvents];
      v23 = [exceptionDatesAdjustedForFloatingEvents count];

      if (v23)
      {
        exceptionDatesAdjustedForFloatingEvents2 = [eventCopy exceptionDatesAdjustedForFloatingEvents];
        LOBYTE(v23) = [exceptionDatesAdjustedForFloatingEvents2 containsObject:v19];
      }

      v25 = 1;
      if ((v23 & 1) == 0 && !seriesCopy)
      {
        v26 = v23;
        detachedItems = [eventCopy detachedItems];
        v28 = [detachedItems count];

        if (v28)
        {
          detachedItems2 = [eventCopy detachedItems];
          v30 = [detachedItems2 valueForKey:@"startDate"];
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

- (id)nextOccurrenceDateWithEKRecurrences:(id)recurrences forCalendarItem:(id)item exceptionDates:(id)dates initialDate:(id)date afterDate:(id)afterDate inclusive:(BOOL)inclusive
{
  v66 = *MEMORY[0x1E69E9840];
  recurrencesCopy = recurrences;
  itemCopy = item;
  datesCopy = dates;
  dateCopy = date;
  afterDateCopy = afterDate;
  date = [dateCopy date];
  [(CalRecurrenceGenerator *)self setEventStartDate:date];

  date2 = [dateCopy date];
  [(CalRecurrenceGenerator *)self setEventEndDate:date2];

  timeZone = [dateCopy timeZone];
  [(CalRecurrenceGenerator *)self setEventTimeZone:timeZone];

  [(CalRecurrenceGenerator *)self setAllDay:0];
  v20 = MEMORY[0x1E69930C8];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1577840000.0];
  v47 = dateCopy;
  timeZone2 = [dateCopy timeZone];
  v48 = [v20 calendarDateWithDate:v21 timeZone:timeZone2];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = recurrencesCopy;
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

      [(EKRecurrenceGenerator *)self _prepareForEKRecurrence:*(*(&v60 + 1) + 8 * v23) forCalendarItem:itemCopy];
      v24 = objc_autoreleasePoolPush();
      if (inclusive)
      {
        v25 = [afterDateCopy copy];
      }

      else
      {
        v25 = [afterDateCopy calendarDateByAddingSeconds:1];
      }

      v26 = v25;
      endDate = [(CalRecurrenceGenerator *)self endDate];

      if (endDate)
      {
        v28 = MEMORY[0x1E69930C8];
        endDate2 = [(CalRecurrenceGenerator *)self endDate];
        timeZone3 = [afterDateCopy timeZone];
        v31 = [v28 calendarDateWithDate:endDate2 timeZone:timeZone3];

        date3 = [v31 date];
        date4 = [date3 dateByAddingTimeInterval:1.0];
      }

      else
      {
        date4 = [v48 date];
      }

      v34 = [datesCopy count];
      date5 = [v26 date];
      timeZone4 = [afterDateCopy timeZone];
      v37 = [(CalRecurrenceGenerator *)self copyOccurrenceDatesBetweenStartDate:date5 endDate:date4 timeZone:timeZone4 limit:v34 + 1];

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
        selfCopy = self;
        v41 = afterDateCopy;
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
            if (([datesCopy containsObject:v44] & 1) == 0)
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
        afterDateCopy = v41;
        self = selfCopy;
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

- (void)_prepareForEKRecurrence:(id)recurrence forCalendarItem:(id)item
{
  recurrenceCopy = recurrence;
  itemCopy = item;
  -[CalRecurrenceGenerator setInterval:](self, "setInterval:", [recurrenceCopy interval]);
  -[CalRecurrenceGenerator setFrequency:](self, "setFrequency:", [objc_opt_class() _convertEKRecurrenceFrequencyToCalRecurrenceFrequency:{objc_msgSend(recurrenceCopy, "frequency")}]);
  -[CalRecurrenceGenerator setWeekStart:](self, "setWeekStart:", [recurrenceCopy firstDayOfTheWeek]);
  if (![(CalRecurrenceGenerator *)self weekStart])
  {
    [(CalRecurrenceGenerator *)self setWeekStart:2];
  }

  constraints = [itemCopy constraints];
  -[CalRecurrenceGenerator setShouldPinMonthDays:](self, "setShouldPinMonthDays:", [constraints recurrencesShouldPinToMonthDays]);

  daysOfTheWeek = [recurrenceCopy daysOfTheWeek];
  [(CalRecurrenceGenerator *)self setDaysOfTheWeek:daysOfTheWeek];

  daysOfTheMonth = [recurrenceCopy daysOfTheMonth];
  [(CalRecurrenceGenerator *)self setDaysOfTheMonth:daysOfTheMonth];

  daysOfTheYear = [recurrenceCopy daysOfTheYear];
  [(CalRecurrenceGenerator *)self setDaysOfTheYear:daysOfTheYear];

  weeksOfTheYear = [recurrenceCopy weeksOfTheYear];
  [(CalRecurrenceGenerator *)self setWeeksOfTheYear:weeksOfTheYear];

  monthsOfTheYear = [recurrenceCopy monthsOfTheYear];
  [(CalRecurrenceGenerator *)self setMonthsOfTheYear:monthsOfTheYear];

  setPositions = [recurrenceCopy setPositions];
  [(CalRecurrenceGenerator *)self setSetPositions:setPositions];

  [(CalRecurrenceGenerator *)self setEndDate:0];
  recurrenceEnd = [recurrenceCopy recurrenceEnd];
  occurrenceCount = [recurrenceEnd occurrenceCount];

  recurrenceEnd2 = [recurrenceCopy recurrenceEnd];
  endDate2 = recurrenceEnd2;
  if (occurrenceCount)
  {
    eventStore = -[CalRecurrenceGenerator computeRecurrenceEndDate:](self, "computeRecurrenceEndDate:", [recurrenceEnd2 occurrenceCount]);
    [(CalRecurrenceGenerator *)self setEndDate:eventStore];
  }

  else
  {
    endDate = [recurrenceEnd2 endDate];
    [(CalRecurrenceGenerator *)self setEndDate:endDate];

    if (![(CalRecurrenceGenerator *)self allDay])
    {
      goto LABEL_8;
    }

    endDate2 = [(CalRecurrenceGenerator *)self endDate];
    eventStore = [itemCopy eventStore];
    timeZone = [eventStore timeZone];
    v21 = [endDate2 dateInTimeZone:0 fromTimeZone:timeZone];
    [(CalRecurrenceGenerator *)self setEndDate:v21];
  }

LABEL_8:
}

+ (int)_convertEKRecurrenceFrequencyToCalRecurrenceFrequency:(int64_t)frequency
{
  if ((frequency - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return frequency + 1;
  }
}

+ (id)datesByExpandingRule:(id)rule fromDate:(id)date toDate:(id)toDate inTimezone:(id)timezone isAllDay:(BOOL)day lunarCalendarString:(id)string
{
  dayCopy = day;
  ruleCopy = rule;
  dateCopy = date;
  timezoneCopy = timezone;
  stringCopy = string;
  v18 = [toDate dateByAddingTimeInterval:1.0];
  if ([self _isLunarBirthdayRecurrenceRule:ruleCopy lunarCalendarString:stringCopy])
  {
    v19 = [self _copyDatesForLunarBirthdayFromDate:dateCopy toDate:v18 inTimeZone:timezoneCopy lunarCalendarString:stringCopy];
    goto LABEL_21;
  }

  v20 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:ruleCopy];
  if (v20)
  {
    v21 = objc_opt_new();
    [v20 freq];
    [v21 setFrequency:CalRecurrenceFrequencyFromICSFrequency()];
    interval = [v20 interval];
    v45 = dayCopy;
    intValue = [interval intValue];

    if (intValue <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = intValue;
    }

    v25 = v45;
    [v21 setInterval:v24];
    [v21 setWeekStart:{objc_msgSend(self, "_weekStartFromICSRule:", v20)}];
    v26 = [self _daysOfWeekFromICSRule:v20];
    [v21 setDaysOfTheWeek:v26];

    bysetpos = [v20 bysetpos];
    [v21 setSetPositions:bysetpos];

    bymonth = [v20 bymonth];
    [v21 setMonthsOfTheYear:bymonth];

    bymonthday = [v20 bymonthday];
    [v21 setDaysOfTheMonth:bymonthday];

    byweekno = [v20 byweekno];
    [v21 setWeeksOfTheYear:byweekno];

    [v21 setEventStartDate:dateCopy];
    if (v45)
    {
      v31 = [dateCopy ek_ios_dateForEndOfDayInTimeZone:timezoneCopy];
      [v21 setEventEndDate:v31];
    }

    else
    {
      [v21 setEventEndDate:dateCopy];
    }

    v32 = [v20 count];

    if (v32)
    {
      v33 = [v20 count];
      components = [v21 computeRecurrenceEndDate:{objc_msgSend(v33, "unsignedIntegerValue")}];
      [v21 setEndDate:components];
    }

    else
    {
      until = [v20 until];

      if (!until)
      {
LABEL_19:
        [v21 setEventTimeZone:timezoneCopy];
        [v21 setAllDay:v25];
        v19 = [v21 copyOccurrenceDatesBetweenStartDate:dateCopy endDate:v18 timeZone:timezoneCopy limit:0];

        goto LABEL_20;
      }

      v36 = objc_alloc(MEMORY[0x1E69E3C90]);
      until2 = [v20 until];
      v33 = [v36 initWithValue:until2];

      components = [v33 components];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [currentCalendar setTimeZone:timezoneCopy];
      v44 = currentCalendar;
      v43 = [currentCalendar dateFromComponents:components];
      until3 = [v20 until];
      objc_opt_class();
      LODWORD(v42) = objc_opt_isKindOfClass();

      if (v42)
      {
        v40 = v43;
      }

      else
      {
        v42 = [v43 dateForEndOfDayInTimeZone:timezoneCopy];

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

+ (unint64_t)_weekStartFromICSRule:(id)rule
{
  ruleCopy = rule;
  wkst = [ruleCopy wkst];

  if (wkst)
  {
    wkst2 = [ruleCopy wkst];
    intValue = [wkst2 intValue];

    if (intValue - 1 >= 7)
    {
      v7 = 2;
    }

    else
    {
      v7 = intValue;
    }
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

+ (id)_daysOfWeekFromICSRule:(id)rule
{
  v26 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  byday = [ruleCopy byday];

  if (byday)
  {
    v5 = MEMORY[0x1E695DF70];
    byday2 = [ruleCopy byday];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(byday2, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    byday3 = [ruleCopy byday];
    v9 = [byday3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(byday3);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x1E6993030]);
          weekday = [v13 weekday];
          number = [v13 number];
          v17 = [v14 initWithDayOfTheWeek:weekday weekNumber:{objc_msgSend(number, "integerValue")}];

          [v7 addObject:v17];
        }

        v10 = [byday3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (id)_copyDatesForLunarBirthdayFromDate:(id)date toDate:(id)toDate inTimeZone:(id)zone lunarCalendarString:(id)string
{
  v9 = MEMORY[0x1E695DEE8];
  zoneCopy = zone;
  toDateCopy = toDate;
  dateCopy = date;
  v13 = [v9 CalCalendarWithUnsanitizedCalendarIdentifier:string];
  v14 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v13 setTimeZone:v14];
  v15 = [MEMORY[0x1E69930C8] calendarDateWithDate:dateCopy timeZone:zoneCopy];
  v16 = [MEMORY[0x1E69930C8] calendarDateWithDate:toDateCopy timeZone:zoneCopy];

  v17 = objc_alloc(MEMORY[0x1E6992F70]);
  date = [v15 date];
  date2 = [v16 date];
  v20 = [v17 initWithStartDate:date endDate:date2];

  v21 = [v13 components:24 fromDate:dateCopy];

  [v13 setTimeZone:zoneCopy];
  v22 = [v13 CalOccurrencesForBirthday:v21 inDateRange:v20];

  return v22;
}

+ (BOOL)_isLunarBirthdayRecurrenceRule:(id)rule lunarCalendarString:(id)string
{
  ruleCopy = rule;
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy && ([stringCopy isEqualToString:*MEMORY[0x1E695D850]] & 1) == 0)
  {
    if ([ruleCopy isEqualToString:@"FREQ=YEARLY"] & 1) != 0 || (objc_msgSend(ruleCopy, "isEqualToString:", @"FREQ=YEARLY;INTERVAL=1"))
    {
      v8 = 1;
      goto LABEL_7;
    }

    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecurrenceGenerator(Deprecated) *)ruleCopy _isLunarBirthdayRecurrenceRule:v7 lunarCalendarString:v10];
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end