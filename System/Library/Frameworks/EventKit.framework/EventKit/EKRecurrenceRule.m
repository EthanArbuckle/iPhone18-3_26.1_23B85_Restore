@interface EKRecurrenceRule
+ (BOOL)canParseRRULEString:(id)a3;
+ (EKRecurrenceRule)recurrenceRuleWithType:(int64_t)a3 interval:(unint64_t)a4 end:(id)a5;
+ (id)_acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:(id)a3;
+ (id)_acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4;
+ (id)_acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4;
+ (id)_acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4;
+ (id)adjustDateIntoUTC:(id)a3 dateOnly:(BOOL)a4 floating:(BOOL)a5;
+ (id)iCalendarValueFromDate:(id)a3 isDateOnly:(BOOL)a4 isFloating:(BOOL)a5;
+ (id)iCalendarValueFromRecurrenceType:(int64_t)a3;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (int)_calDayOfWeekFromEKWeekday:(int64_t)a3;
+ (int64_t)daysTypeForDayArray:(id)a3;
- (BOOL)dirtyStateMayAffectExceptionDates;
- (BOOL)hasDuplicateMonthsOfYear;
- (BOOL)isAnyDayRule;
- (BOOL)isEqualToRecurrenceRule:(id)a3;
- (BOOL)isPinnedToEndOfFrequency;
- (BOOL)isSimpleRule;
- (BOOL)isWeekdayRule;
- (BOOL)isWeekendRule;
- (BOOL)mayOccurAfterDate:(id)a3;
- (BOOL)newStartDateIsValid:(id)a3 currentStartDate:(id)a4 calendar:(id)a5;
- (BOOL)recurrenceEndHasChanges;
- (EKRecurrenceEnd)recurrenceEnd;
- (EKRecurrenceFrequency)frequency;
- (EKRecurrenceRule)init;
- (EKRecurrenceRule)initRecurrenceWithFrequency:(EKRecurrenceFrequency)type interval:(NSInteger)interval daysOfTheWeek:(NSArray *)days daysOfTheMonth:(NSArray *)monthDays monthsOfTheYear:(NSArray *)months weeksOfTheYear:(NSArray *)weeksOfTheYear daysOfTheYear:(NSArray *)daysOfTheYear setPositions:(NSArray *)setPositions end:(EKRecurrenceEnd *)end;
- (EKRecurrenceRule)initWithRRULEString:(id)a3;
- (NSArray)daysOfTheMonth;
- (NSArray)daysOfTheWeek;
- (NSArray)daysOfTheYear;
- (NSArray)monthsOfTheYear;
- (NSArray)setPositions;
- (NSArray)weeksOfTheYear;
- (NSDateComponents)dateComponents;
- (NSInteger)firstDayOfTheWeek;
- (NSInteger)interval;
- (id)_acceptableStartDateRangeWithCurrentStartDate:(id)a3 calendar:(id)a4;
- (id)_recurrenceHelper;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initRecurrenceWithRecurrenceRule:(id)a3;
- (int)firstDayOfTheWeekRaw;
- (int)frequencyRaw;
- (int64_t)ekRecurrenceFrequencyFromICSFrequency:(unint64_t)a3;
- (unint64_t)count;
- (void)_updateSpecifierIfNeeded;
- (void)frequency;
- (void)invalidateCachedEndDate;
- (void)rollback;
- (void)setCount:(unint64_t)a3;
- (void)setDaysOfTheMonth:(id)a3;
- (void)setDaysOfTheWeek:(id)a3;
- (void)setDaysOfTheYear:(id)a3;
- (void)setFirstDayOfTheWeek:(unint64_t)a3;
- (void)setFrequency:(int64_t)a3;
- (void)setInterval:(unint64_t)a3;
- (void)setMonthsOfTheYear:(id)a3;
- (void)setRecurrenceEnd:(EKRecurrenceEnd *)recurrenceEnd;
- (void)setSetPositions:(id)a3;
- (void)setWeeksOfTheYear:(id)a3;
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

+ (EKRecurrenceRule)recurrenceRuleWithType:(int64_t)a3 interval:(unint64_t)a4 end:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initRecurrenceWithFrequency:a3 interval:a4 end:v8];

  return v9;
}

- (id)initRecurrenceWithRecurrenceRule:(id)a3
{
  v3 = a3;
  v15 = [EKRecurrenceRule alloc];
  v4 = [v3 frequency];
  v5 = [v3 interval];
  v6 = [v3 daysOfTheWeek];
  v7 = [v3 daysOfTheMonth];
  v8 = [v3 monthsOfTheYear];
  v9 = [v3 weeksOfTheYear];
  v10 = [v3 daysOfTheYear];
  v11 = [v3 setPositions];
  v12 = [v3 recurrenceEnd];

  v13 = [(EKRecurrenceRule *)v15 initRecurrenceWithFrequency:v4 interval:v5 daysOfTheWeek:v6 daysOfTheMonth:v7 monthsOfTheYear:v8 weeksOfTheYear:v9 daysOfTheYear:v10 setPositions:v11 end:v12];
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

+ (BOOL)canParseRRULEString:(id)a3
{
  v3 = [a1 trimmedRRULEString:a3];
  v4 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:v3];
  v5 = v4 != 0;

  return v5;
}

- (EKRecurrenceRule)initWithRRULEString:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = [objc_opt_class() trimmedRRULEString:v38];
  v4 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:?];
  v39 = self;
  v36 = -[EKRecurrenceRule ekRecurrenceFrequencyFromICSFrequency:](self, "ekRecurrenceFrequencyFromICSFrequency:", [v4 freq]);
  v5 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [v4 byday];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [EKRecurrenceDayOfWeek alloc];
        v13 = [v11 weekday];
        v14 = [v11 number];
        v15 = -[EKRecurrenceDayOfWeek initWithDayOfTheWeek:weekNumber:](v12, "initWithDayOfTheWeek:weekNumber:", v13, [v14 integerValue]);

        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v8);
  }

  v16 = [v4 until];

  if (v16)
  {
    v17 = [v4 until];
    v18 = [v17 components];

    v19 = [MEMORY[0x1E6992F28] activeCalendar];
    v20 = [v19 dateFromComponents:v18];
    v40 = [[EKRecurrenceEnd alloc] initWithEndDate:v20];
  }

  else
  {
    v21 = [v4 count];

    if (v21)
    {
      v22 = [v4 count];
      v23 = [v22 unsignedIntegerValue];

      v40 = [[EKRecurrenceEnd alloc] initWithOccurrenceCount:v23];
    }

    else
    {
      v40 = 0;
    }
  }

  v24 = [EKRecurrenceRule alloc];
  v25 = [v4 interval];
  if (v25)
  {
    v35 = [v4 interval];
    v26 = [v35 integerValue];
  }

  else
  {
    v26 = 1;
  }

  v27 = [v4 bymonthday];
  v28 = [v4 bymonth];
  v29 = [v4 byweekno];
  v30 = [v4 byyearday];
  v31 = [v4 bysetpos];
  v32 = [(EKRecurrenceRule *)v24 initRecurrenceWithFrequency:v36 interval:v26 daysOfTheWeek:v5 daysOfTheMonth:v27 monthsOfTheYear:v28 weeksOfTheYear:v29 daysOfTheYear:v30 setPositions:v31 end:v40];

  if (v25)
  {
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (int64_t)ekRecurrenceFrequencyFromICSFrequency:(unint64_t)a3
{
  if (a3 - 4 >= 4)
  {
    return -1;
  }

  else
  {
    return a3 - 4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v9.receiver = self;
    v9.super_class = EKRecurrenceRule;
    return [(EKObject *)&v9 copyWithZone:a3];
  }

  else
  {
    v5 = objc_alloc_init(EKRecurrenceRule);
    [(EKRecurrenceRule *)v5 setFrequency:[(EKRecurrenceRule *)self frequency]];
    [(EKRecurrenceRule *)v5 setInterval:[(EKRecurrenceRule *)self interval]];
    v6 = [(EKRecurrenceRule *)self recurrenceEnd];
    [(EKRecurrenceRule *)v5 setRecurrenceEnd:v6];

    v7 = [(EKRecurrenceRule *)self specifier];
    [(EKRecurrenceRule *)v5 setSpecifier:v7];

    [(EKRecurrenceRule *)v5 setFirstDayOfTheWeekRaw:[(EKRecurrenceRule *)self firstDayOfTheWeekRaw]];
  }

  return v5;
}

- (NSDateComponents)dateComponents
{
  v3 = objc_opt_new();
  v4 = [(EKRecurrenceRule *)self interval];
  if (v4 >= 1)
  {
    v5 = [(EKRecurrenceRule *)self frequency];
    if (v5 <= EKRecurrenceFrequencyWeekly)
    {
      if (v5 == EKRecurrenceFrequencyDaily)
      {
        v6 = v4 & 0x7FFFFFFF;
        goto LABEL_10;
      }

      if (v5 == EKRecurrenceFrequencyWeekly)
      {
        v6 = (7 * v4);
LABEL_10:
        [v3 setDay:v6];
        goto LABEL_12;
      }

LABEL_15:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for EKRecurrenceFrequency" userInfo:0];
      objc_exception_throw(v8);
    }

    if (v5 != EKRecurrenceFrequencyMonthly)
    {
      if (v5 == EKRecurrenceFrequencyYearly)
      {
        [v3 setYear:v4 & 0x7FFFFFFF];
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    [v3 setMonth:v4 & 0x7FFFFFFF];
  }

LABEL_12:

  return v3;
}

- (int)frequencyRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BC8]];
  v3 = [v2 integerValue];

  return v3;
}

- (EKRecurrenceFrequency)frequency
{
  v2 = [(EKRecurrenceRule *)self frequencyRaw];
  result = (v2 - 1);
  if (result >= 4)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKRecurrenceRule *)v2 frequency:v4];
    }

    return 0;
  }

  return result;
}

- (void)setFrequency:(int64_t)a3
{
  if (a3 < 4)
  {
    v3 = (a3 + 1);
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setInterval:(unint64_t)a3
{
  if (a3 <= 0)
  {
    [(EKRecurrenceRule *)a2 setInterval:?];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992BD0]];
}

- (unint64_t)count
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BB0]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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
  v4 = [(EKRecurrenceRule *)self recurrenceEnd];
  v5 = [(EKRecurrenceEnd *)v10 isEqual:v4];

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
        v9 = [(EKRecurrenceEnd *)v10 occurrenceCount];
        goto LABEL_8;
      }

      v8 = [(EKRecurrenceEnd *)v10 endDate];
      [(EKRecurrenceRule *)self setEndDate:v8];
    }

    else
    {
      [(EKRecurrenceRule *)self setEndDate:0];
    }

    v9 = 0;
LABEL_8:
    [(EKRecurrenceRule *)self setCount:v9];
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
  v3 = [v2 intValue];

  return v3;
}

+ (int)_calDayOfWeekFromEKWeekday:(int64_t)a3
{
  if (a3 < 8)
  {
    return dword_1A81C3A60[a3];
  }

  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKRecurrenceRule *)a3 _calDayOfWeekFromEKWeekday:v5, v6, v7, v8, v9, v10, v11];
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

- (void)setFirstDayOfTheWeek:(unint64_t)a3
{
  if (a3 >= 8)
  {
    [(EKRecurrenceRule *)a2 setFirstDayOfTheWeek:?];
  }

  v5 = [objc_opt_class() _calDayOfWeekFromEKWeekday:a3];

  [(EKRecurrenceRule *)self setFirstDayOfTheWeekRaw:v5];
}

- (id)_recurrenceHelper
{
  recurrenceHelper = self->_recurrenceHelper;
  if (!recurrenceHelper)
  {
    v4 = [EKRecurrenceHelper alloc];
    v5 = [(EKRecurrenceRule *)self specifier];
    v6 = [(EKRecurrenceHelper *)v4 initWithSpecifier:v5];
    v7 = self->_recurrenceHelper;
    self->_recurrenceHelper = v6;

    recurrenceHelper = self->_recurrenceHelper;
  }

  return recurrenceHelper;
}

- (NSArray)daysOfTheWeek
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 daysOfTheWeek];

  return v3;
}

- (void)setDaysOfTheWeek:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setDaysOfTheWeek:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)daysOfTheMonth
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 daysOfTheMonth];

  return v3;
}

- (void)setDaysOfTheMonth:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setDaysOfTheMonth:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)daysOfTheYear
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 daysOfTheYear];

  return v3;
}

- (void)setDaysOfTheYear:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setDaysOfTheYear:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)weeksOfTheYear
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 weeksOfTheYear];

  return v3;
}

- (void)setWeeksOfTheYear:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setWeeksOfTheYear:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)monthsOfTheYear
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 monthsOfTheYear];

  return v3;
}

- (void)setMonthsOfTheYear:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setMonthsOfTheYear:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (NSArray)setPositions
{
  v2 = [(EKRecurrenceRule *)self _recurrenceHelper];
  v3 = [v2 setPositions];

  return v3;
}

- (void)setSetPositions:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self _recurrenceHelper];
  [v5 setSetPositions:v4];

  [(EKRecurrenceRule *)self _updateSpecifierIfNeeded];
}

- (void)_updateSpecifierIfNeeded
{
  if ([(EKRecurrenceHelper *)self->_recurrenceHelper isDirty])
  {
    v3 = [(EKRecurrenceHelper *)self->_recurrenceHelper specifier];
    [(EKRecurrenceRule *)self setSpecifier:v3];
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
  v2 = [(EKObject *)self changeSet];
  v3 = [v2 changedKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
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

- (BOOL)mayOccurAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceRule *)self recurrenceEnd];
  v6 = [v5 endDate];

  if (v6 && [v6 compare:v4] == -1)
  {
    v11 = 0;
  }

  else
  {
    v7 = [(EKRecurrenceRule *)self recurrenceEnd];
    v8 = [v7 occurrenceCount];

    if (v8)
    {
      v9 = [(EKRecurrenceRule *)self cachedEndDate];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 compare:v4] != -1;
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

  v3 = [(EKRecurrenceRule *)self setPositions];
  if ([v3 count] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  v4 = [(EKRecurrenceRule *)self setPositions];
  v5 = [v4 objectAtIndexedSubscript:0];
  if ([v5 integerValue] != -1)
  {
LABEL_16:

    goto LABEL_17;
  }

  v6 = [(EKRecurrenceRule *)self daysOfTheMonth];
  if ([v6 count] < 2)
  {

    goto LABEL_16;
  }

  v7 = [(EKRecurrenceRule *)self daysOfTheMonth];
  v8 = [v7 count];

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
        v14 = [(EKRecurrenceRule *)self daysOfTheMonth];
        LOBYTE(v13) = [v13 isEqualToArray:v14];

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
    v15 = [(EKRecurrenceRule *)self setPositions];
    if ([v15 count] != 1)
    {
LABEL_22:

      goto LABEL_23;
    }

    v16 = [(EKRecurrenceRule *)self setPositions];
    v17 = [v16 objectAtIndexedSubscript:0];
    if ([v17 integerValue] != -1)
    {

      goto LABEL_22;
    }

    v20 = [(EKRecurrenceRule *)self daysOfTheMonth];
    v21 = [&unk_1F1B6B0E0 isEqualToArray:v20];

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
  v2 = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [v2 valueForKey:@"dayOfTheWeek"];

  LOBYTE(v2) = [v3 isEqualToArray:&unk_1F1B6B0F8];
  return v2;
}

- (BOOL)isWeekendRule
{
  v2 = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [v2 valueForKey:@"dayOfTheWeek"];

  LOBYTE(v2) = [v3 isEqualToArray:&unk_1F1B6B110];
  return v2;
}

- (BOOL)isAnyDayRule
{
  v2 = [(EKRecurrenceRule *)self daysOfTheWeek];
  v3 = [v2 valueForKey:@"dayOfTheWeek"];

  LOBYTE(v2) = [v3 isEqualToArray:&unk_1F1B6B128];
  return v2;
}

- (BOOL)isSimpleRule
{
  if ([(EKRecurrenceRule *)self frequency]== EKRecurrenceFrequencyDaily)
  {
    return 1;
  }

  v6 = [(EKRecurrenceRule *)self frequency];
  if (v6 == EKRecurrenceFrequencyWeekly)
  {
    v2 = [(EKRecurrenceRule *)self daysOfTheWeek];
    if ([v2 count] < 2)
    {
      v7 = 1;
LABEL_14:

      return v7;
    }
  }

  v8 = [(EKRecurrenceRule *)self frequency];
  if (v8 != EKRecurrenceFrequencyMonthly || (-[EKRecurrenceRule daysOfTheWeek](self, "daysOfTheWeek"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
  {
    v9 = 0;
    v7 = 0;
    if ([(EKRecurrenceRule *)self frequency]!= EKRecurrenceFrequencyYearly)
    {
      goto LABEL_11;
    }

LABEL_8:
    v10 = [(EKRecurrenceRule *)self daysOfTheWeek];
    if ([v10 count])
    {

      v7 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = [(EKRecurrenceRule *)self monthsOfTheYear];
    if (![v12 count])
    {
      v13 = [(EKRecurrenceRule *)self weeksOfTheYear];
      if (![v13 count])
      {
        v14 = [(EKRecurrenceRule *)self daysOfTheYear];
        v15 = v13;
        v7 = [v14 count] < 2;

        if ((v9 & 1) == 0)
        {
LABEL_11:
          if (v8 != EKRecurrenceFrequencyMonthly)
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

  v4 = [(EKRecurrenceRule *)self daysOfTheMonth];
  if ([v4 count] > 1)
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
  if (v6 == EKRecurrenceFrequencyWeekly)
  {
    goto LABEL_14;
  }

  return v7;
}

+ (id)iCalendarValueFromRecurrenceType:(int64_t)a3
{
  if (a3 >= 4)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for  EKRecurrenceFrequency" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return off_1E77FCF60[a3];
}

+ (id)iCalendarValueFromDate:(id)a3 isDateOnly:(BOOL)a4 isFloating:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = MEMORY[0x1E696AB78];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setFormatterBehavior:1040];
  v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v9 setTimeZone:v10];

  v11 = @"yyyyMMdd'T'HHmmss'Z'";
  if (v5)
  {
    v11 = @"yyyyMMdd'T'HHmmss";
  }

  if (v6)
  {
    v12 = @"yyyyMMdd";
  }

  else
  {
    v12 = v11;
  }

  [v9 setDateFormat:v12];
  v13 = [v9 stringFromDate:v8];

  return v13;
}

+ (id)adjustDateIntoUTC:(id)a3 dateOnly:(BOOL)a4 floating:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (a4 || v5)
  {
    v8 = MEMORY[0x1E6992FA8];
    v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v10 = [v8 dateInFloatingTimeZoneFromDate:v7 inTimeZone:v9];

    v7 = v10;
  }

  return v7;
}

+ (int64_t)daysTypeForDayArray:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
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
  v4 = [(EKRecurrenceRule *)self monthsOfTheYear];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectAtIndexedSubscript:{(objc_msgSend(v10, "intValue") - 1)}];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }

        [v3 setObject:v8 atIndexedSubscript:{(objc_msgSend(v10, "intValue") - 1)}];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)newStartDateIsValid:(id)a3 currentStartDate:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = [(EKRecurrenceRule *)self _acceptableStartDateRangeWithCurrentStartDate:a4 calendar:a5];
  LOBYTE(a4) = [v9 containsDate:v8];

  return a4;
}

+ (id)_acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:(id)a3
{
  v3 = MEMORY[0x1E6992F70];
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 rangeWithStartDate:v4 endDate:v5];

  return v6;
}

+ (id)_acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4
{
  v8 = 0;
  v9 = 0.0;
  v4 = [a4 rangeOfUnit:0x2000 startDate:&v8 interval:&v9 forDate:a3];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

+ (id)_acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4
{
  v8 = 0;
  v9 = 0.0;
  v4 = [a4 rangeOfUnit:8 startDate:&v8 interval:&v9 forDate:a3];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

+ (id)_acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:(id)a3 calendar:(id)a4
{
  v8 = 0;
  v9 = 0.0;
  v4 = [a4 rangeOfUnit:4 startDate:&v8 interval:&v9 forDate:a3];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E6992F70] rangeWithStartDate:v5 duration:v9];
  }

  return v6;
}

- (id)_acceptableStartDateRangeWithCurrentStartDate:(id)a3 calendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EKRecurrenceRule *)self frequency];
  if (v9 > EKRecurrenceFrequencyWeekly)
  {
    if (v9 == EKRecurrenceFrequencyMonthly)
    {
      v10 = [objc_opt_class() _acceptableStartDateRangeForMonthlyRecurrenceWithCurrentStartDate:v7 calendar:v8];
    }

    else
    {
      if (v9 != EKRecurrenceFrequencyYearly)
      {
        goto LABEL_11;
      }

      v10 = [objc_opt_class() _acceptableStartDateRangeForYearlyRecurrenceWithCurrentStartDate:v7 calendar:v8];
    }
  }

  else if (v9)
  {
    if (v9 != EKRecurrenceFrequencyWeekly)
    {
      goto LABEL_11;
    }

    v10 = [objc_opt_class() _acceptableStartDateRangeForWeeklyRecurrenceWithCurrentStartDate:v7 calendar:v8];
  }

  else
  {
    v10 = [objc_opt_class() _acceptableStartDateRangeForDailyRecurrenceWithCurrentStartDate:v7];
  }

  v4 = v10;
LABEL_11:

  return v4;
}

- (BOOL)isEqualToRecurrenceRule:(id)a3
{
  v8 = a3;
  v9 = [(EKRecurrenceRule *)self frequency];
  if (v9 != [v8 frequency] || (v10 = -[EKRecurrenceRule interval](self, "interval"), v10 != objc_msgSend(v8, "interval")) || (v11 = -[EKRecurrenceRule firstDayOfTheWeek](self, "firstDayOfTheWeek"), v11 != objc_msgSend(v8, "firstDayOfTheWeek")))
  {
    v14 = 0;
    goto LABEL_9;
  }

  v12 = [(EKRecurrenceRule *)self recurrenceEnd];
  if (v12 || ([v8 recurrenceEnd], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(EKRecurrenceRule *)self recurrenceEnd];
    v4 = [v8 recurrenceEnd];
    if (![v3 isEqual:v4])
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

  v16 = [(EKRecurrenceRule *)self monthsOfTheYear];
  if (v16 || ([v8 monthsOfTheYear], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(EKRecurrenceRule *)self monthsOfTheYear];
    v6 = [v8 monthsOfTheYear];
    if (![v5 isEqual:v6])
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

  v17 = [(EKRecurrenceRule *)self daysOfTheMonth];
  if (v17 || ([v8 daysOfTheMonth], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(EKRecurrenceRule *)self daysOfTheMonth];
    v55 = [v8 daysOfTheMonth];
    v56 = v18;
    if (![v18 isEqual:?])
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

  v57 = [(EKRecurrenceRule *)self daysOfTheYear];
  if (v57 || ([v8 daysOfTheYear], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = [(EKRecurrenceRule *)self daysOfTheYear];
    v51 = [v8 daysOfTheYear];
    v52 = v19;
    if (![v19 isEqual:v51])
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

  v49 = [(EKRecurrenceRule *)self weeksOfTheYear];
  if (v49 || ([v8 weeksOfTheYear], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [(EKRecurrenceRule *)self weeksOfTheYear];
    v46 = [v8 weeksOfTheYear];
    v47 = v20;
    if (![v20 isEqual:v46])
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

  v44 = [(EKRecurrenceRule *)self daysOfTheWeek];
  if (v44 || ([v8 daysOfTheWeek], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = [(EKRecurrenceRule *)self daysOfTheWeek];
    v41 = [v8 daysOfTheWeek];
    v42 = v21;
    if (![v21 isEqual:v41])
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

  v39 = [(EKRecurrenceRule *)self setPositions];
  if (v39 || ([v8 setPositions], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = [(EKRecurrenceRule *)self setPositions];
    v36 = [v8 setPositions];
    v37 = v22;
    if (![v22 isEqual:?])
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

  v34 = [(EKRecurrenceRule *)self calendarIdentifier];
  if (v34 || ([v8 calendarIdentifier], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = v23;
    v32 = [(EKRecurrenceRule *)self calendarIdentifier];
    v24 = [v8 calendarIdentifier];
    v14 = [v32 isEqual:v24];

    if (v34)
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
  v25 = v39;
  if (!v39)
  {

    v25 = 0;
  }

  if (v38)
  {
    goto LABEL_56;
  }

LABEL_57:
  v26 = v44;
  if (!v44)
  {

    v26 = 0;
  }

  if (v43)
  {
    goto LABEL_60;
  }

LABEL_61:
  v27 = v49;
  if (!v49)
  {

    v27 = 0;
  }

  if (v48)
  {
    goto LABEL_64;
  }

LABEL_65:
  v28 = v57;
  if (!v57)
  {

    v28 = 0;
  }

  if (v53)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (!v17)
  {
  }

  if (v58)
  {
    v13 = v59;
LABEL_73:

    if (v16)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v13 = v59;
  if (!v16)
  {
LABEL_74:
  }

LABEL_75:

  if (v13)
  {
    goto LABEL_76;
  }

LABEL_77:
  if (!v12)
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