@interface EKRecurrenceRule
+ (BOOL)canParseRRULEString:(id)string;
+ (EKRecurrenceRule)recurrenceRuleWithType:(int64_t)type interval:(unint64_t)interval end:(id)end;
+ (id)_acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:(id)date;
+ (id)_acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar;
+ (id)_acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar;
+ (id)_acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar;
+ (id)adjustDateIntoUTC:(id)c dateOnly:(BOOL)only floating:(BOOL)floating;
+ (id)iCalendarValueFromDate:(id)date isDateOnly:(BOOL)only isFloating:(BOOL)floating;
+ (id)iCalendarValueFromRecurrenceType:(int64_t)type;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (int)_calDayOfWeekFromEKWeekday:(int64_t)weekday;
+ (int64_t)daysTypeForDayArray:(id)array;
- (BOOL)dirtyStateMayAffectExceptionDates;
- (BOOL)hasDuplicateMonthsOfYear;
- (BOOL)isAnyDayRule;
- (BOOL)isEqualToRecurrenceRule:(id)rule;
- (BOOL)isPinnedToEndOfFrequency;
- (BOOL)isSimpleRule;
- (BOOL)isWeekdayRule;
- (BOOL)isWeekendRule;
- (BOOL)mayOccurAfterDate:(id)date;
- (BOOL)newStartDateIsValid:(id)valid currentStartDate:(id)date calendar:(id)calendar;
- (BOOL)recurrenceEndHasChanges;
- (EKRecurrenceEnd)recurrenceEnd;
- (EKRecurrenceFrequency)frequency;
- (EKRecurrenceRule)init;
- (EKRecurrenceRule)initRecurrenceWithFrequency:(EKRecurrenceFrequency)type interval:(NSInteger)interval daysOfTheWeek:(NSArray *)days daysOfTheMonth:(NSArray *)monthDays monthsOfTheYear:(NSArray *)months weeksOfTheYear:(NSArray *)weeksOfTheYear daysOfTheYear:(NSArray *)daysOfTheYear setPositions:(NSArray *)setPositions end:(EKRecurrenceEnd *)end;
- (EKRecurrenceRule)initWithRRULEString:(id)string;
- (NSArray)daysOfTheMonth;
- (NSArray)daysOfTheWeek;
- (NSArray)daysOfTheYear;
- (NSArray)monthsOfTheYear;
- (NSArray)setPositions;
- (NSArray)weeksOfTheYear;
- (NSDateComponents)dateComponents;
- (NSInteger)firstDayOfTheWeek;
- (NSInteger)interval;
- (id)_acceptableStartDateRangeWithCurrentStartDate:(id)date calendar:(id)calendar;
- (id)_recurrenceHelper;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initRecurrenceWithRecurrenceRule:(id)rule;
- (int)firstDayOfTheWeekRaw;
- (int)frequencyRaw;
- (int64_t)ekRecurrenceFrequencyFromICSFrequency:(unint64_t)frequency;
- (unint64_t)count;
- (void)_updateSpecifierIfNeeded;
- (void)frequency;
- (void)invalidateCachedEndDate;
- (void)rollback;
- (void)setCount:(unint64_t)count;
- (void)setDaysOfTheMonth:(id)month;
- (void)setDaysOfTheWeek:(id)week;
- (void)setDaysOfTheYear:(id)year;
- (void)setFirstDayOfTheWeek:(unint64_t)week;
- (void)setFrequency:(int64_t)frequency;
- (void)setInterval:(unint64_t)interval;
- (void)setMonthsOfTheYear:(id)year;
- (void)setRecurrenceEnd:(EKRecurrenceEnd *)recurrenceEnd;
- (void)setSetPositions:(id)positions;
- (void)setWeeksOfTheYear:(id)year;
@end

@implementation EKRecurrenceRule

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken != -1)
  {
    +[EKRecurrenceRule knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys;

  return v3;
}

void __53__EKRecurrenceRule_knownSingleValueKeysForComparison__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992BD0];
  v6[0] = *MEMORY[0x1E6992BC8];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992BB8];
  v6[2] = *MEMORY[0x1E6992BC0];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6992BE0];
  v6[4] = *MEMORY[0x1E6992BB0];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = knownSingleValueKeysForComparison_keys;
  knownSingleValueKeysForComparison_keys = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken != -1)
  {
    +[EKRecurrenceRule knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys;

  return v3;
}

void __50__EKRecurrenceRule_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys;
  knownIdentityKeysForComparison_keys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken != -1)
  {
    +[EKRecurrenceRule knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys;

  return v3;
}

void __45__EKRecurrenceRule_knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992BD8];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys;
  knownRelationshipWeakKeys_keys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (EKRecurrenceRule)recurrenceRuleWithType:(int64_t)type interval:(unint64_t)interval end:(id)end
{
  endCopy = end;
  v9 = [[self alloc] initRecurrenceWithFrequency:type interval:interval end:endCopy];

  return v9;
}

- (id)initRecurrenceWithRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  v15 = [EKRecurrenceRule alloc];
  frequency = [ruleCopy frequency];
  interval = [ruleCopy interval];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  daysOfTheMonth = [ruleCopy daysOfTheMonth];
  monthsOfTheYear = [ruleCopy monthsOfTheYear];
  weeksOfTheYear = [ruleCopy weeksOfTheYear];
  daysOfTheYear = [ruleCopy daysOfTheYear];
  setPositions = [ruleCopy setPositions];
  recurrenceEnd = [ruleCopy recurrenceEnd];

  v13 = [(EKRecurrenceRule *)v15 initRecurrenceWithFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:recurrenceEnd];
  return v13;
}

- (EKRecurrenceRule)init
{
  v5.receiver = self;
  v5.super_class = EKRecurrenceRule;
  v2 = [(EKObject *)&v5 init];
  if (v2)
  {
    v3 = EKUUIDString();
    [(EKRecurrenceRule *)v2 setUUID:v3];

    [(EKRecurrenceRule *)v2 setFrequency:1];
    [(EKRecurrenceRule *)v2 setInterval:1];
    [(EKRecurrenceRule *)v2 setFirstDayOfTheWeek:0];
    [(EKObject *)v2 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v2;
}

- (EKRecurrenceRule)initRecurrenceWithFrequency:(EKRecurrenceFrequency)type interval:(NSInteger)interval daysOfTheWeek:(NSArray *)days daysOfTheMonth:(NSArray *)monthDays monthsOfTheYear:(NSArray *)months weeksOfTheYear:(NSArray *)weeksOfTheYear daysOfTheYear:(NSArray *)daysOfTheYear setPositions:(NSArray *)setPositions end:(EKRecurrenceEnd *)end
{
  v17 = days;
  v18 = monthDays;
  v19 = months;
  v20 = weeksOfTheYear;
  v21 = daysOfTheYear;
  v22 = setPositions;
  v23 = end;
  v24 = [(EKRecurrenceRule *)self init];
  if (v24)
  {
    if (interval <= 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Interval must be greater than 0"];
    }

    [(EKRecurrenceRule *)v24 setFrequency:type];
    [(EKRecurrenceRule *)v24 setInterval:interval];
    [(EKRecurrenceRule *)v24 setRecurrenceEnd:v23];
    [(EKRecurrenceRule *)v24 setDaysOfTheWeek:v17];
    [(EKRecurrenceRule *)v24 setDaysOfTheMonth:v18];
    [(EKRecurrenceRule *)v24 setSetPositions:v22];
    [(EKRecurrenceRule *)v24 setMonthsOfTheYear:v19];
    [(EKRecurrenceRule *)v24 setDaysOfTheYear:v21];
    [(EKRecurrenceRule *)v24 setWeeksOfTheYear:v20];
  }

  return v24;
}

+ (BOOL)canParseRRULEString:(id)string
{
  v3 = [self trimmedRRULEString:string];
  v4 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:v3];
  v5 = v4 != 0;

  return v5;
}

- (EKRecurrenceRule)initWithRRULEString:(id)string
{
  v46 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v37 = [objc_opt_class() trimmedRRULEString:stringCopy];
  v4 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:?];
  selfCopy = self;
  v36 = -[EKRecurrenceRule ekRecurrenceFrequencyFromICSFrequency:](self, "ekRecurrenceFrequencyFromICSFrequency:", [v4 freq]);
  array = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  byday = [v4 byday];
  v7 = [byday countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(byday);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [EKRecurrenceDayOfWeek alloc];
        weekday = [v11 weekday];
        number = [v11 number];
        v15 = -[EKRecurrenceDayOfWeek initWithDayOfTheWeek:weekNumber:](v12, "initWithDayOfTheWeek:weekNumber:", weekday, [number integerValue]);

        [array addObject:v15];
      }

      v8 = [byday countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v8);
  }

  until = [v4 until];

  if (until)
  {
    until2 = [v4 until];
    components = [until2 components];

    activeCalendar = [MEMORY[0x1E6992F28] activeCalendar];
    v20 = [activeCalendar dateFromComponents:components];
    v40 = [[EKRecurrenceEnd alloc] initWithEndDate:v20];
  }

  else
  {
    v21 = [v4 count];

    if (v21)
    {
      v22 = [v4 count];
      unsignedIntegerValue = [v22 unsignedIntegerValue];

      v40 = [[EKRecurrenceEnd alloc] initWithOccurrenceCount:unsignedIntegerValue];
    }

    else
    {
      v40 = 0;
    }
  }

  v24 = [EKRecurrenceRule alloc];
  interval = [v4 interval];
  if (interval)
  {
    interval2 = [v4 interval];
    integerValue = [interval2 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  bymonthday = [v4 bymonthday];
  bymonth = [v4 bymonth];
  byweekno = [v4 byweekno];
  byyearday = [v4 byyearday];
  bysetpos = [v4 bysetpos];
  v32 = [(EKRecurrenceRule *)v24 initRecurrenceWithFrequency:v36 interval:integerValue daysOfTheWeek:array daysOfTheMonth:bymonthday monthsOfTheYear:bymonth weeksOfTheYear:byweekno daysOfTheYear:byyearday setPositions:bysetpos end:v40];

  if (interval)
  {
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (int64_t)ekRecurrenceFrequencyFromICSFrequency:(unint64_t)frequency
{
  if (frequency - 4 >= 4)
  {
    return -1;
  }

  else
  {
    return frequency - 4;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKRecurrenceRule *)self stringValueAsDateOnly:0 isFloating:0];
  v6 = [v3 stringWithFormat:@"%@ <%p> RRULE %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v9.receiver = self;
    v9.super_class = EKRecurrenceRule;
    return [(EKObject *)&v9 copyWithZone:zone];
  }

  else
  {
    v5 = objc_alloc_init(EKRecurrenceRule);
    [(EKRecurrenceRule *)v5 setFrequency:[(EKRecurrenceRule *)self frequency]];
    [(EKRecurrenceRule *)v5 setInterval:[(EKRecurrenceRule *)self interval]];
    recurrenceEnd = [(EKRecurrenceRule *)self recurrenceEnd];
    [(EKRecurrenceRule *)v5 setRecurrenceEnd:recurrenceEnd];

    specifier = [(EKRecurrenceRule *)self specifier];
    [(EKRecurrenceRule *)v5 setSpecifier:specifier];

    [(EKRecurrenceRule *)v5 setFirstDayOfTheWeekRaw:[(EKRecurrenceRule *)self firstDayOfTheWeekRaw]];
  }

  return v5;
}

- (NSDateComponents)dateComponents
{
  v3 = objc_opt_new();
  interval = [(EKRecurrenceRule *)self interval];
  if (interval >= 1)
  {
    frequency = [(EKRecurrenceRule *)self frequency];
    if (frequency <= EKRecurrenceFrequencyWeekly)
    {
      if (frequency == EKRecurrenceFrequencyDaily)
      {
        v6 = interval & 0x7FFFFFFF;
        goto LABEL_10;
      }

      if (frequency == EKRecurrenceFrequencyWeekly)
      {
        v6 = (7 * interval);
LABEL_10:
        [v3 setDay:v6];
        goto LABEL_12;
      }

LABEL_15:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for EKRecurrenceFrequency" userInfo:0];
      objc_exception_throw(v8);
    }

    if (frequency != EKRecurrenceFrequencyMonthly)
    {
      if (frequency == EKRecurrenceFrequencyYearly)
      {
        [v3 setYear:interval & 0x7FFFFFFF];
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    [v3 setMonth:interval & 0x7FFFFFFF];
  }

LABEL_12:

  return v3;
}

- (int)frequencyRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BC8]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (EKRecurrenceFrequency)frequency
{
  frequencyRaw = [(EKRecurrenceRule *)self frequencyRaw];
  result = (frequencyRaw - 1);
  if (result >= 4)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecurrenceRule *)frequencyRaw frequency:v4];
    }

    return 0;
  }

  return result;
}

- (void)setFrequency:(int64_t)frequency
{
  if (frequency < 4)
  {
    v3 = (frequency + 1);
  }

  else
  {
    v3 = 0;
  }

  [(EKRecurrenceRule *)self setFrequencyRaw:v3];
}

- (NSInteger)interval
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BD0]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setInterval:(unint64_t)interval
{
  if (interval <= 0)
  {
    [(EKRecurrenceRule *)a2 setInterval:?];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992BD0]];
}

- (unint64_t)count
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BB0]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCount:(unint64_t)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992BB0]];
}

- (EKRecurrenceEnd)recurrenceEnd
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__EKRecurrenceRule_recurrenceEnd__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"recurrenceEnd" populateBlock:v4];

  return v2;
}

id __33__EKRecurrenceRule_recurrenceEnd__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) endDate];
  v3 = [*(a1 + 32) count];
  if (v2)
  {
    v4 = [[EKRecurrenceEnd alloc] initWithEndDate:v2];
  }

  else
  {
    v5 = v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = [[EKRecurrenceEnd alloc] initWithOccurrenceCount:v3];
  }

  v5 = v4;
LABEL_6:

  return v5;
}

- (void)setRecurrenceEnd:(EKRecurrenceEnd *)recurrenceEnd
{
  v10 = recurrenceEnd;
  recurrenceEnd = [(EKRecurrenceRule *)self recurrenceEnd];
  v5 = [(EKRecurrenceEnd *)v10 isEqual:recurrenceEnd];

  v6 = v10;
  if (!v5)
  {
    v7 = [(EKRecurrenceEnd *)v10 copy];
    [(EKObject *)self setCachedValue:v7 forKey:@"recurrenceEnd"];

    if (v10)
    {
      if (![(EKRecurrenceEnd *)v10 usesEndDate])
      {
        [(EKRecurrenceRule *)self setEndDate:0];
        occurrenceCount = [(EKRecurrenceEnd *)v10 occurrenceCount];
        goto LABEL_8;
      }

      endDate = [(EKRecurrenceEnd *)v10 endDate];
      [(EKRecurrenceRule *)self setEndDate:endDate];
    }

    else
    {
      [(EKRecurrenceRule *)self setEndDate:0];
    }

    occurrenceCount = 0;
LABEL_8:
    [(EKRecurrenceRule *)self setCount:occurrenceCount];
    v6 = v10;
  }
}

- (BOOL)recurrenceEndHasChanges
{
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992BB8]])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6992BB0];

  return [(EKObject *)self _hasChangesForKey:v4];
}

- (void)invalidateCachedEndDate
{
  [(EKRecurrenceRule *)self setCachedEndDate:0];

  [(EKRecurrenceRule *)self setCachedEndDateTimeZone:0];
}

- (int)firstDayOfTheWeekRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BC0]];
  intValue = [v2 intValue];

  return intValue;
}

+ (int)_calDayOfWeekFromEKWeekday:(int64_t)weekday
{
  if (weekday < 8)
  {
    return dword_1A81C3A60[weekday];
  }

  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKRecurrenceRule *)weekday _calDayOfWeekFromEKWeekday:v5, v6, v7, v8, v9, v10, v11];
  }

  return 7;
}

- (NSInteger)firstDayOfTheWeek
{
  result = [objc_opt_class() _ekWeekdayFromCalDayOfWeek:{-[EKRecurrenceRule firstDayOfTheWeekRaw](self, "firstDayOfTheWeekRaw")}];
  if (!result)
  {
    return 2;
  }

  return result;
}

- (void)setFirstDayOfTheWeek:(unint64_t)week
{
  if (week >= 8)
  {
    [(EKRecurrenceRule *)a2 setFirstDayOfTheWeek:?];
  }

  v5 = [objc_opt_class() _calDayOfWeekFromEKWeekday:week];

  [(EKRecurrenceRule *)self setFirstDayOfTheWeekRaw:v5];
}

- (id)_recurrenceHelper
{
  recurrenceHelper = self->_recurrenceHelper;
  if (!recurrenceHelper)
  {
    v4 = [EKRecurrenceHelper alloc];
    specifier = [(EKRecurrenceRule *)self specifier];
    v6 = [(EKRecurrenceHelper *)v4 initWithSpecifier:specifier];
    v7 = self->_recurrenceHelper;
    self->_recurrenceHelper = v6;

    recurrenceHelper = self->_recurrenceHelper;
  }

  return recurrenceHelper;
}

- (NSArray)daysOfTheWeek
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  daysOfTheWeek = [_recurrenceHelper daysOfTheWeek];

  return daysOfTheWeek;
}

- (void)setDaysOfTheWeek:(id)week
{
  weekCopy = week;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setDaysOfTheWeek:weekCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)daysOfTheMonth
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  daysOfTheMonth = [_recurrenceHelper daysOfTheMonth];

  return daysOfTheMonth;
}

- (void)setDaysOfTheMonth:(id)month
{
  monthCopy = month;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setDaysOfTheMonth:monthCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)daysOfTheYear
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  daysOfTheYear = [_recurrenceHelper daysOfTheYear];

  return daysOfTheYear;
}

- (void)setDaysOfTheYear:(id)year
{
  yearCopy = year;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setDaysOfTheYear:yearCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)weeksOfTheYear
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  weeksOfTheYear = [_recurrenceHelper weeksOfTheYear];

  return weeksOfTheYear;
}

- (void)setWeeksOfTheYear:(id)year
{
  yearCopy = year;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setWeeksOfTheYear:yearCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)monthsOfTheYear
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  monthsOfTheYear = [_recurrenceHelper monthsOfTheYear];

  return monthsOfTheYear;
}

- (void)setMonthsOfTheYear:(id)year
{
  yearCopy = year;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setMonthsOfTheYear:yearCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)setPositions
{
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  setPositions = [_recurrenceHelper setPositions];

  return setPositions;
}

- (void)setSetPositions:(id)positions
{
  positionsCopy = positions;
  _recurrenceHelper = [(EKRecurrenceRule *)self _recurrenceHelper];
  [_recurrenceHelper setSetPositions:positionsCopy];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (void)_updateSpecifierIfNeeded
{
  if ([(EKRecurrenceHelper *)self->_recurrenceHelper isDirty])
  {
    specifier = [(EKRecurrenceHelper *)self->_recurrenceHelper specifier];
    [(EKRecurrenceRule *)self setSpecifier:specifier];
  }
}

- (void)rollback
{
  v4.receiver = self;
  v4.super_class = EKRecurrenceRule;
  [(EKObject *)&v4 rollback];
  recurrenceHelper = self->_recurrenceHelper;
  self->_recurrenceHelper = 0;
}

- (BOOL)dirtyStateMayAffectExceptionDates
{
  v20 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  changedKeys = [changeSet changedKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = changedKeys;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E6992BB0];
    v9 = *MEMORY[0x1E6992BB8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isEqualToString:{v8, v15}] & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", v9))
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)mayOccurAfterDate:(id)date
{
  dateCopy = date;
  recurrenceEnd = [(EKRecurrenceRule *)self recurrenceEnd];
  endDate = [recurrenceEnd endDate];

  if (endDate && [endDate compare:dateCopy] == -1)
  {
    v11 = 0;
  }

  else
  {
    recurrenceEnd2 = [(EKRecurrenceRule *)self recurrenceEnd];
    occurrenceCount = [recurrenceEnd2 occurrenceCount];

    if (occurrenceCount)
    {
      cachedEndDate = [(EKRecurrenceRule *)self cachedEndDate];
      v10 = cachedEndDate;
      if (cachedEndDate)
      {
        v11 = [cachedEndDate compare:dateCopy] != -1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)isPinnedToEndOfFrequency
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(EKRecurrenceRule *)self frequency]!= EKRecurrenceFrequencyMonthly)
  {
    goto LABEL_18;
  }

  setPositions = [(EKRecurrenceRule *)self setPositions];
  if ([setPositions count] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  setPositions2 = [(EKRecurrenceRule *)self setPositions];
  v5 = [setPositions2 objectAtIndexedSubscript:0];
  if ([v5 integerValue] != -1)
  {
LABEL_16:

    goto LABEL_17;
  }

  daysOfTheMonth = [(EKRecurrenceRule *)self daysOfTheMonth];
  if ([daysOfTheMonth count] < 2)
  {

    goto LABEL_16;
  }

  daysOfTheMonth2 = [(EKRecurrenceRule *)self daysOfTheMonth];
  v8 = [daysOfTheMonth2 count];

  if (v8 <= 4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [&unk_1F1B6B0B0 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(&unk_1F1B6B0B0);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        daysOfTheMonth3 = [(EKRecurrenceRule *)self daysOfTheMonth];
        LOBYTE(v13) = [v13 isEqualToArray:daysOfTheMonth3];

        if (v13)
        {
          goto LABEL_26;
        }

        if (v10 == ++v12)
        {
          v10 = [&unk_1F1B6B0B0 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

LABEL_18:
  if ([(EKRecurrenceRule *)self frequency]== EKRecurrenceFrequencyYearly)
  {
    setPositions3 = [(EKRecurrenceRule *)self setPositions];
    if ([setPositions3 count] != 1)
    {
LABEL_22:

      goto LABEL_23;
    }

    setPositions4 = [(EKRecurrenceRule *)self setPositions];
    v17 = [setPositions4 objectAtIndexedSubscript:0];
    if ([v17 integerValue] != -1)
    {

      goto LABEL_22;
    }

    daysOfTheMonth4 = [(EKRecurrenceRule *)self daysOfTheMonth];
    v21 = [&unk_1F1B6B0E0 isEqualToArray:daysOfTheMonth4];

    if (v21)
    {
LABEL_26:
      result = 1;
      goto LABEL_24;
    }
  }

LABEL_23:
  result = 0;
LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isWeekdayRule
{
  daysOfTheWeek = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  LOBYTE(daysOfTheWeek) = [v3 isEqualToArray:&unk_1F1B6B0F8];
  return daysOfTheWeek;
}

- (BOOL)isWeekendRule
{
  daysOfTheWeek = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  LOBYTE(daysOfTheWeek) = [v3 isEqualToArray:&unk_1F1B6B110];
  return daysOfTheWeek;
}

- (BOOL)isAnyDayRule
{
  daysOfTheWeek = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  LOBYTE(daysOfTheWeek) = [v3 isEqualToArray:&unk_1F1B6B128];
  return daysOfTheWeek;
}

- (BOOL)isSimpleRule
{
  if ([(EKRecurrenceRule *)self frequency]== EKRecurrenceFrequencyDaily)
  {
    return 1;
  }

  frequency = [(EKRecurrenceRule *)self frequency];
  if (frequency == EKRecurrenceFrequencyWeekly)
  {
    daysOfTheWeek = [(EKRecurrenceRule *)self daysOfTheWeek];
    if ([daysOfTheWeek count] < 2)
    {
      v7 = 1;
LABEL_14:

      return v7;
    }
  }

  frequency2 = [(EKRecurrenceRule *)self frequency];
  if (frequency2 != EKRecurrenceFrequencyMonthly || (-[EKRecurrenceRule daysOfTheWeek](self, "daysOfTheWeek"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
  {
    v9 = 0;
    v7 = 0;
    if ([(EKRecurrenceRule *)self frequency]!= EKRecurrenceFrequencyYearly)
    {
      goto LABEL_11;
    }

LABEL_8:
    daysOfTheWeek2 = [(EKRecurrenceRule *)self daysOfTheWeek];
    if ([daysOfTheWeek2 count])
    {

      v7 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    monthsOfTheYear = [(EKRecurrenceRule *)self monthsOfTheYear];
    if (![monthsOfTheYear count])
    {
      weeksOfTheYear = [(EKRecurrenceRule *)self weeksOfTheYear];
      if (![weeksOfTheYear count])
      {
        daysOfTheYear = [(EKRecurrenceRule *)self daysOfTheYear];
        v15 = weeksOfTheYear;
        v7 = [daysOfTheYear count] < 2;

        if ((v9 & 1) == 0)
        {
LABEL_11:
          if (frequency2 != EKRecurrenceFrequencyMonthly)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    v7 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  daysOfTheMonth = [(EKRecurrenceRule *)self daysOfTheMonth];
  if ([daysOfTheMonth count] > 1)
  {
    if ([(EKRecurrenceRule *)self frequency]!= EKRecurrenceFrequencyYearly)
    {

      v7 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v9 = 1;
    goto LABEL_8;
  }

  v7 = 1;
LABEL_13:
  if (frequency == EKRecurrenceFrequencyWeekly)
  {
    goto LABEL_14;
  }

  return v7;
}

+ (id)iCalendarValueFromRecurrenceType:(int64_t)type
{
  if (type >= 4)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for  EKRecurrenceFrequency" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return off_1E77FCF60[type];
}

+ (id)iCalendarValueFromDate:(id)date isDateOnly:(BOOL)only isFloating:(BOOL)floating
{
  floatingCopy = floating;
  onlyCopy = only;
  v7 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v9 = objc_alloc_init(v7);
  [v9 setFormatterBehavior:1040];
  v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v9 setTimeZone:v10];

  v11 = @"yyyyMMdd'T'HHmmss'Z'";
  if (floatingCopy)
  {
    v11 = @"yyyyMMdd'T'HHmmss";
  }

  if (onlyCopy)
  {
    v12 = @"yyyyMMdd";
  }

  else
  {
    v12 = v11;
  }

  [v9 setDateFormat:v12];
  v13 = [v9 stringFromDate:dateCopy];

  return v13;
}

+ (id)adjustDateIntoUTC:(id)c dateOnly:(BOOL)only floating:(BOOL)floating
{
  floatingCopy = floating;
  cCopy = c;
  if (only || floatingCopy)
  {
    v8 = MEMORY[0x1E6992FA8];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v10 = [v8 dateInFloatingTimeZoneFromDate:cCopy inTimeZone:defaultTimeZone];

    cCopy = v10;
  }

  return cCopy;
}

+ (int64_t)daysTypeForDayArray:(id)array
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = arrayCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = +[EKRecurrenceDayOfWeek icsWeekDayFromDayOfTheWeek:](EKRecurrenceDayOfWeek, "icsWeekDayFromDayOfTheWeek:", [v9 dayOfTheWeek]);
        v11 = objc_alloc(MEMORY[0x1E69E3C60]);
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "weekNumber")}];
        v13 = [v11 initWithWeekday:v10 number:v12];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x1E6993040] daysTypeForDayArray:v4];
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)hasDuplicateMonthsOfYear
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [&unk_1F1B6B158 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  monthsOfTheYear = [(EKRecurrenceRule *)self monthsOfTheYear];
  v5 = [monthsOfTheYear countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = MEMORY[0x1E695E118];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(monthsOfTheYear);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectAtIndexedSubscript:{(objc_msgSend(v10, "intValue") - 1)}];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = 1;
          goto LABEL_11;
        }

        [v3 setObject:v8 atIndexedSubscript:{(objc_msgSend(v10, "intValue") - 1)}];
      }

      v6 = [monthsOfTheYear countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
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

- (BOOL)newStartDateIsValid:(id)valid currentStartDate:(id)date calendar:(id)calendar
{
  validCopy = valid;
  v9 = [(EKRecurrenceRule *)self _acceptableStartDateRangeWithCurrentStartDate:date calendar:calendar];
  LOBYTE(date) = [v9 containsDate:validCopy];

  return date;
}

+ (id)_acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:(id)date
{
  v3 = MEMORY[0x1E6992F70];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 rangeWithStartDate:distantPast endDate:distantFuture];

  return v6;
}

+ (id)_acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar
{
  v8 = 0;
  v9 = 0.0;
  v4 = [calendar rangeOfUnit:0x2000 startDate:&v8 interval:&v9 forDate:date];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

+ (id)_acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar
{
  v8 = 0;
  v9 = 0.0;
  v4 = [calendar rangeOfUnit:8 startDate:&v8 interval:&v9 forDate:date];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

+ (id)_acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:(id)date calendar:(id)calendar
{
  v8 = 0;
  v9 = 0.0;
  v4 = [calendar rangeOfUnit:4 startDate:&v8 interval:&v9 forDate:date];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

- (id)_acceptableStartDateRangeWithCurrentStartDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  frequency = [(EKRecurrenceRule *)self frequency];
  if (frequency > EKRecurrenceFrequencyWeekly)
  {
    if (frequency == EKRecurrenceFrequencyMonthly)
    {
      v10 = [objc_opt_class() _acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:dateCopy calendar:calendarCopy];
    }

    else
    {
      if (frequency != EKRecurrenceFrequencyYearly)
      {
        goto LABEL_11;
      }

      v10 = [objc_opt_class() _acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:dateCopy calendar:calendarCopy];
    }
  }

  else if (frequency)
  {
    if (frequency != EKRecurrenceFrequencyWeekly)
    {
      goto LABEL_11;
    }

    v10 = [objc_opt_class() _acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:dateCopy calendar:calendarCopy];
  }

  else
  {
    v10 = [objc_opt_class() _acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:dateCopy];
  }

  v4 = v10;
LABEL_11:

  return v4;
}

- (BOOL)isEqualToRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  frequency = [(EKRecurrenceRule *)self frequency];
  if (frequency != [ruleCopy frequency] || (v10 = -[EKRecurrenceRule interval](self, "interval"), v10 != objc_msgSend(ruleCopy, "interval")) || (v11 = -[EKRecurrenceRule firstDayOfTheWeek](self, "firstDayOfTheWeek"), v11 != objc_msgSend(ruleCopy, "firstDayOfTheWeek")))
  {
    v14 = 0;
    goto LABEL_9;
  }

  recurrenceEnd = [(EKRecurrenceRule *)self recurrenceEnd];
  if (recurrenceEnd || ([ruleCopy recurrenceEnd], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    recurrenceEnd2 = [(EKRecurrenceRule *)self recurrenceEnd];
    recurrenceEnd3 = [ruleCopy recurrenceEnd];
    if (![recurrenceEnd2 isEqual:recurrenceEnd3])
    {
      v14 = 0;
LABEL_76:

      goto LABEL_77;
    }

    v13 = 1;
  }

  else
  {
    v60 = 0;
    v13 = 0;
  }

  monthsOfTheYear = [(EKRecurrenceRule *)self monthsOfTheYear];
  if (monthsOfTheYear || ([ruleCopy monthsOfTheYear], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    monthsOfTheYear2 = [(EKRecurrenceRule *)self monthsOfTheYear];
    monthsOfTheYear3 = [ruleCopy monthsOfTheYear];
    if (![monthsOfTheYear2 isEqual:monthsOfTheYear3])
    {
      v14 = 0;
      goto LABEL_73;
    }

    v58 = 1;
    v59 = v13;
  }

  else
  {
    v58 = 0;
    v59 = v13;
    v54 = 0;
  }

  daysOfTheMonth = [(EKRecurrenceRule *)self daysOfTheMonth];
  if (daysOfTheMonth || ([ruleCopy daysOfTheMonth], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    daysOfTheMonth2 = [(EKRecurrenceRule *)self daysOfTheMonth];
    daysOfTheMonth3 = [ruleCopy daysOfTheMonth];
    v56 = daysOfTheMonth2;
    if (![daysOfTheMonth2 isEqual:?])
    {
      v14 = 0;
LABEL_68:

      goto LABEL_69;
    }

    v53 = 1;
  }

  else
  {
    v50 = 0;
    v53 = 0;
  }

  daysOfTheYear = [(EKRecurrenceRule *)self daysOfTheYear];
  if (daysOfTheYear || ([ruleCopy daysOfTheYear], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    daysOfTheYear2 = [(EKRecurrenceRule *)self daysOfTheYear];
    daysOfTheYear3 = [ruleCopy daysOfTheYear];
    v52 = daysOfTheYear2;
    if (![daysOfTheYear2 isEqual:daysOfTheYear3])
    {
      v14 = 0;
LABEL_64:

      goto LABEL_65;
    }

    v48 = 1;
  }

  else
  {
    v45 = 0;
    v48 = 0;
  }

  weeksOfTheYear = [(EKRecurrenceRule *)self weeksOfTheYear];
  if (weeksOfTheYear || ([ruleCopy weeksOfTheYear], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    weeksOfTheYear2 = [(EKRecurrenceRule *)self weeksOfTheYear];
    weeksOfTheYear3 = [ruleCopy weeksOfTheYear];
    v47 = weeksOfTheYear2;
    if (![weeksOfTheYear2 isEqual:weeksOfTheYear3])
    {
      v14 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v43 = 1;
  }

  else
  {
    v40 = 0;
    v43 = 0;
  }

  daysOfTheWeek = [(EKRecurrenceRule *)self daysOfTheWeek];
  if (daysOfTheWeek || ([ruleCopy daysOfTheWeek], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    daysOfTheWeek2 = [(EKRecurrenceRule *)self daysOfTheWeek];
    daysOfTheWeek3 = [ruleCopy daysOfTheWeek];
    v42 = daysOfTheWeek2;
    if (![daysOfTheWeek2 isEqual:daysOfTheWeek3])
    {
      v14 = 0;
LABEL_56:

      goto LABEL_57;
    }

    v38 = 1;
  }

  else
  {
    v35 = 0;
    v38 = 0;
  }

  setPositions = [(EKRecurrenceRule *)self setPositions];
  if (setPositions || ([ruleCopy setPositions], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    setPositions2 = [(EKRecurrenceRule *)self setPositions];
    setPositions3 = [ruleCopy setPositions];
    v37 = setPositions2;
    if (![setPositions2 isEqual:?])
    {
      v14 = 0;
      goto LABEL_52;
    }

    v23 = 1;
  }

  else
  {
    v31 = 0;
    v23 = 0;
  }

  calendarIdentifier = [(EKRecurrenceRule *)self calendarIdentifier];
  if (calendarIdentifier || ([ruleCopy calendarIdentifier], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = v23;
    calendarIdentifier2 = [(EKRecurrenceRule *)self calendarIdentifier];
    calendarIdentifier3 = [ruleCopy calendarIdentifier];
    v14 = [calendarIdentifier2 isEqual:calendarIdentifier3];

    if (calendarIdentifier)
    {

      if (!v33)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    LOBYTE(v23) = v33;
    v29 = v30;
  }

  else
  {
    v29 = 0;
    v14 = 1;
  }

  if (v23)
  {
LABEL_52:
  }

LABEL_53:
  v25 = setPositions;
  if (!setPositions)
  {

    v25 = 0;
  }

  if (v38)
  {
    goto LABEL_56;
  }

LABEL_57:
  v26 = daysOfTheWeek;
  if (!daysOfTheWeek)
  {

    v26 = 0;
  }

  if (v43)
  {
    goto LABEL_60;
  }

LABEL_61:
  v27 = weeksOfTheYear;
  if (!weeksOfTheYear)
  {

    v27 = 0;
  }

  if (v48)
  {
    goto LABEL_64;
  }

LABEL_65:
  v28 = daysOfTheYear;
  if (!daysOfTheYear)
  {

    v28 = 0;
  }

  if (v53)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (!daysOfTheMonth)
  {
  }

  if (v58)
  {
    v13 = v59;
LABEL_73:

    if (monthsOfTheYear)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v13 = v59;
  if (!monthsOfTheYear)
  {
LABEL_74:
  }

LABEL_75:

  if (v13)
  {
    goto LABEL_76;
  }

LABEL_77:
  if (!recurrenceEnd)
  {
  }

LABEL_9:
  return v14;
}

- (void)frequency
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected frequency value loaded from database: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInterval:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKRecurrenceRule.m" lineNumber:353 description:@"Interval must be greater than or equal to 1"];
}

+ (void)_ekWeekdayFromCalDayOfWeek:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected CalDayOfWeek: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_calDayOfWeekFromEKWeekday:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected EKWeekday: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setFirstDayOfTheWeek:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKRecurrenceRule.m" lineNumber:505 description:{@"Invalid parameter not satisfying: %@", @"(int)firstDay <= EKWeekdaySaturday"}];
}

@end