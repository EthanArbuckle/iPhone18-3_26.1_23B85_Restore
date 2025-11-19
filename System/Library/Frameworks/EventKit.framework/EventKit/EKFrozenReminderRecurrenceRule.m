@interface EKFrozenReminderRecurrenceRule
+ (int)convertFromReminderKitFrequency:(int64_t)a3;
+ (int)convertFromReminderKitWeekday:(int64_t)a3;
- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4;
- (EKFrozenReminderRecurrenceRule)initWithAlternateUniverseObject:(id)a3 inEventStore:(id)a4 withUpdatedChildObjects:(id)a5;
- (EKFrozenReminderRecurrenceRule)initWithREMObject:(id)a3 inStore:(id)a4 withChanges:(id)a5;
- (id)addUpdatedRecurrenceRule:(id)a3;
- (id)daysOfTheWeekFromREMRecurrenceRule;
- (id)endDate;
- (id)remDaysOfTheWeekFromEKDaysOfTheWeek:(id)a3;
- (id)remObjectID;
- (id)specifier;
- (id)uniqueIdentifier;
- (int)firstDayOfTheWeekRaw;
- (int)frequencyRaw;
- (int64_t)interval;
- (unint64_t)count;
- (void)loadSpecifierDaysOfTheWeek:(id *)a3 daysOfTheMonth:(id *)a4 monthsOfTheYear:(id *)a5 weeksOfTheYear:(id *)a6 daysOfTheYear:(id *)a7 setPositions:(id *)a8;
@end

@implementation EKFrozenReminderRecurrenceRule

- (EKFrozenReminderRecurrenceRule)initWithREMObject:(id)a3 inStore:(id)a4 withChanges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    if (!v10)
    {
      v11 = objc_alloc_init(EKChangeSet);
      [(EKChangeSet *)v11 setSkipsPersistentObjectCopy:1];
    }

    v12 = [(EKChangeSet *)v11 valueForSingleValueKey:@"uniqueIdentifier" basedOn:0];
    if (!v12)
    {
      v13 = [MEMORY[0x1E696AFB0] UUID];
      v14 = [v13 UUIDString];
      [(EKChangeSet *)v11 changeSingleValue:v14 forKey:@"uniqueIdentifier" basedOn:0];
    }
  }

  v17.receiver = self;
  v17.super_class = EKFrozenReminderRecurrenceRule;
  v15 = [(EKFrozenReminderObject *)&v17 initWithREMObject:v8 inStore:v9 withChanges:v11];

  return v15;
}

- (EKFrozenReminderRecurrenceRule)initWithAlternateUniverseObject:(id)a3 inEventStore:(id)a4 withUpdatedChildObjects:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v9 setSkipsPersistentObjectCopy:1];
  v10 = [v7 valueForKey:@"uniqueIdentifier"];
  if (v10)
  {
    [(EKChangeSet *)v9 changeSingleValue:v10 forKey:@"uniqueIdentifier" basedOn:0];
  }

  v11 = [v7 valueForKey:@"endDate"];
  [(EKChangeSet *)v9 changeSingleValue:v11 forKey:@"endDate" basedOn:0];

  v12 = [v7 valueForKey:@"count"];
  [(EKChangeSet *)v9 changeSingleValue:v12 forKey:@"count" basedOn:0];

  v13 = [v7 valueForKey:@"frequencyRaw"];
  [(EKChangeSet *)v9 changeSingleValue:v13 forKey:@"frequencyRaw" basedOn:0];

  v14 = [v7 valueForKey:@"interval"];
  [(EKChangeSet *)v9 changeSingleValue:v14 forKey:@"interval" basedOn:0];

  v15 = [v7 valueForKey:@"firstDayOfTheWeekRaw"];
  [(EKChangeSet *)v9 changeSingleValue:v15 forKey:@"firstDayOfTheWeekRaw" basedOn:0];

  v16 = [v7 valueForKey:@"specifier"];
  [(EKChangeSet *)v9 changeSingleValue:v16 forKey:@"specifier" basedOn:0];

  v17 = [v8 reminderStore];

  v18 = [(EKFrozenReminderRecurrenceRule *)self initWithREMObject:0 inStore:v17 withChanges:v9];
  return v18;
}

- (BOOL)_applyChangesToSaveRequest:(id)a3 error:(id *)a4
{
  v6 = [(EKFrozenReminderObject *)self path];
  v7 = [v6 firstObject];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._reminderStore);
    v9 = [WeakRetained remStore];

    v16 = 0;
    v10 = [v9 fetchReminderWithObjectID:v7 error:&v16];
    v11 = v16;
    v12 = v10 != 0;
    if (!v10)
    {
      v13 = +[EKReminderStore log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [EKFrozenReminderRecurrenceRule _applyChangesToSaveRequest:error:];
      }

      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
      }
    }
  }

  else
  {
    v14 = +[EKReminderStore log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [EKFrozenReminderRecurrenceRule _applyChangesToSaveRequest:error:];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)uniqueIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__EKFrozenReminderRecurrenceRule_uniqueIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"uniqueIdentifier" backingValue:v4];

  return v2;
}

id __50__EKFrozenReminderRecurrenceRule_uniqueIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) remObjectID];
  v2 = [v1 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)remObjectID
{
  v3 = [(EKFrozenReminderRecurrenceRule *)self _recurrenceRule];

  if (v3)
  {
    v4 = [(EKFrozenReminderRecurrenceRule *)self _recurrenceRule];
    v5 = [v4 objectID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)addUpdatedRecurrenceRule:(id)a3
{
  v4 = a3;
  v21 = [EKFrozenReminderRecurrenceRule convertToReminderKitFrequency:[(EKFrozenReminderRecurrenceRule *)self frequencyRaw]];
  v19 = [(EKFrozenReminderRecurrenceRule *)self interval];
  v18 = [objc_opt_class() convertToReminderKitWeekday:{-[EKFrozenReminderRecurrenceRule firstDayOfTheWeekRaw](self, "firstDayOfTheWeekRaw")}];
  v27 = 0;
  v28[0] = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  [(EKFrozenReminderRecurrenceRule *)self loadSpecifierDaysOfTheWeek:v28 daysOfTheMonth:&v27 monthsOfTheYear:&v26 weeksOfTheYear:&v25 daysOfTheYear:&v24 setPositions:&v23];
  v20 = v28[0];
  v22 = v27;
  v5 = v26;
  v6 = v25;
  v7 = v24;
  v17 = v23;
  v8 = [(EKFrozenReminderRecurrenceRule *)self count];
  if (v8)
  {
    v9 = [getREMRecurrenceEndClass() recurrenceEndWithOccurrenceCount:v8];
  }

  else
  {
    v10 = [(EKFrozenReminderRecurrenceRule *)self endDate];
    if (v10)
    {
      v9 = [getREMRecurrenceEndClass() recurrenceEndWithEndDate:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = [getREMRecurrenceRuleClass() newObjectID];
  v12 = objc_alloc(getREMRecurrenceRuleClass());
  v13 = [v4 accountID];
  v14 = [v4 objectID];
  v15 = [v12 initRecurrenceRuleWithObjectID:v11 accountID:v13 reminderID:v14 frequency:v21 interval:v19 firstDayOfTheWeek:v18 daysOfTheWeek:v20 daysOfTheMonth:v22 monthsOfTheYear:v5 weeksOfTheYear:v6 daysOfTheYear:v7 setPositions:v17 end:v9];

  [v4 addRecurrenceRule:v15];

  return v15;
}

- (id)endDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKFrozenReminderRecurrenceRule_endDate__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"endDate" backingValue:v4];

  return v2;
}

id __41__EKFrozenReminderRecurrenceRule_endDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _recurrenceRule];
  v2 = [v1 recurrenceEnd];
  v3 = [v2 endDate];

  return v3;
}

- (unint64_t)count
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKFrozenReminderRecurrenceRule_count__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"count" backingValue:v5];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id __39__EKFrozenReminderRecurrenceRule_count__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _recurrenceRule];
  v3 = [v2 recurrenceEnd];
  v4 = [v1 numberWithUnsignedInteger:{objc_msgSend(v3, "occurrenceCount")}];

  return v4;
}

- (int)frequencyRaw
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__EKFrozenReminderRecurrenceRule_frequencyRaw__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"frequencyRaw" backingValue:v5];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id __46__EKFrozenReminderRecurrenceRule_frequencyRaw__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _recurrenceRule];
  v3 = [v1 numberWithUnsignedInt:{+[EKFrozenReminderRecurrenceRule convertFromReminderKitFrequency:](EKFrozenReminderRecurrenceRule, "convertFromReminderKitFrequency:", objc_msgSend(v2, "frequency"))}];

  return v3;
}

+ (int)convertFromReminderKitFrequency:(int64_t)a3
{
  if (a3 < 5)
  {
    return dword_1A81C3C98[a3];
  }

  v4 = +[EKReminderStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[EKFrozenReminderRecurrenceRule convertFromReminderKitFrequency:];
  }

  return 1;
}

- (int64_t)interval
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__EKFrozenReminderRecurrenceRule_interval__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"interval" backingValue:v5];
  v3 = [v2 integerValue];

  return v3;
}

id __42__EKFrozenReminderRecurrenceRule_interval__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _recurrenceRule];
  v3 = [v1 numberWithInteger:{objc_msgSend(v2, "interval")}];

  return v3;
}

- (int)firstDayOfTheWeekRaw
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__EKFrozenReminderRecurrenceRule_firstDayOfTheWeekRaw__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"firstDayOfTheWeekRaw" backingValue:v5];
  v3 = [v2 integerValue];

  return v3;
}

id __54__EKFrozenReminderRecurrenceRule_firstDayOfTheWeekRaw__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _recurrenceRule];
  v3 = [v1 numberWithUnsignedInt:{+[EKFrozenReminderRecurrenceRule convertFromReminderKitWeekday:](EKFrozenReminderRecurrenceRule, "convertFromReminderKitWeekday:", objc_msgSend(v2, "firstDayOfTheWeek"))}];

  return v3;
}

+ (int)convertFromReminderKitWeekday:(int64_t)a3
{
  if (a3 < 8)
  {
    return dword_1A81C3CAC[a3];
  }

  v4 = +[EKReminderStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[EKFrozenReminderRecurrenceRule convertFromReminderKitWeekday:];
  }

  return 7;
}

- (id)daysOfTheWeekFromREMRecurrenceRule
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(EKFrozenReminderRecurrenceRule *)self _recurrenceRule];
  v4 = [v3 daysOfTheWeek];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [EKRecurrenceDayOfWeek alloc];
        v13 = -[EKRecurrenceDayOfWeek initWithDayOfTheWeek:weekNumber:](v12, "initWithDayOfTheWeek:weekNumber:", -[EKFrozenReminderRecurrenceRule remWeekdayToEKWeekday:](self, "remWeekdayToEKWeekday:", [v11 dayOfTheWeek]), objc_msgSend(v11, "weekNumber"));
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)remDaysOfTheWeekFromEKDaysOfTheWeek:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = *v18;
    v15 = v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2050000000;
        v10 = getREMRecurrenceDayOfWeekClass_softClass;
        v26 = getREMRecurrenceDayOfWeekClass_softClass;
        if (!getREMRecurrenceDayOfWeekClass_softClass)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v22[0] = __getREMRecurrenceDayOfWeekClass_block_invoke;
          v22[1] = &unk_1E77FCFD8;
          v22[2] = &v23;
          __getREMRecurrenceDayOfWeekClass_block_invoke(v21);
          v10 = v24[3];
        }

        v11 = v10;
        _Block_object_dispose(&v23, 8);
        v12 = [[v10 alloc] initWithDayOfTheWeek:-[EKFrozenReminderRecurrenceRule ekWeekdayToREMWeekday:](self weekNumber:{"ekWeekdayToREMWeekday:", objc_msgSend(v9, "dayOfTheWeek", v15)), objc_msgSend(v9, "weekNumber")}];
        [v5 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)specifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EKFrozenReminderRecurrenceRule_specifier__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"specifier" backingValue:v4];

  return v2;
}

id __43__EKFrozenReminderRecurrenceRule_specifier__block_invoke(uint64_t a1)
{
  v2 = [[EKRecurrenceHelper alloc] initWithSpecifier:0];
  v3 = [*(a1 + 32) daysOfTheWeekFromREMRecurrenceRule];
  [(EKRecurrenceHelper *)v2 setDaysOfTheWeek:v3];

  v4 = [*(a1 + 32) _recurrenceRule];
  v5 = [v4 daysOfTheMonth];
  [(EKRecurrenceHelper *)v2 setDaysOfTheMonth:v5];

  v6 = [v4 daysOfTheYear];
  [(EKRecurrenceHelper *)v2 setDaysOfTheYear:v6];

  v7 = [v4 weeksOfTheYear];
  [(EKRecurrenceHelper *)v2 setWeeksOfTheYear:v7];

  v8 = [v4 monthsOfTheYear];
  [(EKRecurrenceHelper *)v2 setMonthsOfTheYear:v8];

  v9 = [v4 setPositions];
  [(EKRecurrenceHelper *)v2 setSetPositions:v9];

  v10 = [(EKRecurrenceHelper *)v2 specifier];

  return v10;
}

- (void)loadSpecifierDaysOfTheWeek:(id *)a3 daysOfTheMonth:(id *)a4 monthsOfTheYear:(id *)a5 weeksOfTheYear:(id *)a6 daysOfTheYear:(id *)a7 setPositions:(id *)a8
{
  v15 = [EKRecurrenceHelper alloc];
  v16 = [(EKFrozenReminderRecurrenceRule *)self specifier];
  v19 = [(EKRecurrenceHelper *)v15 initWithSpecifier:v16];

  v17 = [(EKRecurrenceHelper *)v19 daysOfTheWeek];
  v18 = [(EKFrozenReminderRecurrenceRule *)self remDaysOfTheWeekFromEKDaysOfTheWeek:v17];
  *a3 = v18;
  *a4 = [(EKRecurrenceHelper *)v19 daysOfTheMonth];
  *a5 = [(EKRecurrenceHelper *)v19 monthsOfTheYear];
  *a6 = [(EKRecurrenceHelper *)v19 weeksOfTheYear];
  *a7 = [(EKRecurrenceHelper *)v19 daysOfTheYear];
  *a8 = [(EKRecurrenceHelper *)v19 setPositions];
}

- (void)_applyChangesToSaveRequest:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Couldn't fetch reminder to be saved: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applyChangesToSaveRequest:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Rule to be saved doesn't have a parent reminder: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)convertFromReminderKitFrequency:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Unknown REMFrequency: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)convertToReminderKitFrequency:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "Unknown frequency: %li", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)convertFromReminderKitWeekday:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Unknown REMWeekday: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)convertToReminderKitWeekday:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "Unknown Weekday: %li", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end