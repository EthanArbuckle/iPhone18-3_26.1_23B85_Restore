@interface EKReminder
+ (EKReminder)reminderWithEventStore:(EKEventStore *)eventStore;
+ (id)generateUniqueIDWithReminder:(id)a3 calendar:(id)a4;
+ (id)knownSingleValueKeysForComparison;
+ (void)_removeSnoozedAlarmsFromReminder:(id)a3 usingDueDate:(id)a4;
- (BOOL)_reset;
- (BOOL)dueDateAllDay;
- (BOOL)isCompleted;
- (BOOL)refresh;
- (BOOL)save:(id *)a3;
- (BOOL)validate:(id *)a3;
- (EKReminder)init;
- (EKReminder)initWithPersistentObject:(id)a3;
- (NSTimeZone)dueDateTimeZone;
- (id)_generateNewUniqueID;
- (id)bestDisplayAlarm;
- (id)committedConstraints;
- (id)constraints;
- (id)description;
- (id)dueDate;
- (id)externalURI;
- (id)timeZone;
- (id)title;
- (unint64_t)displayOrder;
- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)a3 toNewCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6;
- (void)_adjustPersistedStartDateComponentsForNewTimeZone:(id)a3;
- (void)forceUpdateFrozenCalendar:(id)a3;
- (void)reset;
- (void)rollback;
- (void)setAllDay:(BOOL)a3;
- (void)setCompleted:(BOOL)completed;
- (void)setCompletionDate:(NSDate *)completionDate;
- (void)setDisplayOrder:(unint64_t)a3;
- (void)setDueDate:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 pinsTriggerToStartDate:(BOOL)a5;
@end

@implementation EKReminder

- (void)forceUpdateFrozenCalendar:(id)a3
{
  v5 = a3;
  v4 = [(EKObject *)self changeSet];
  if ([v4 hasUnsavedChangeForKey:@"calendar"])
  {
    [v4 forceChangeValue:v5 forKey:@"calendar"];
  }
}

+ (id)knownSingleValueKeysForComparison
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKReminder_knownSingleValueKeysForComparison__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (knownSingleValueKeysForComparison_onceToken_3 != -1)
  {
    dispatch_once(&knownSingleValueKeysForComparison_onceToken_3, block);
  }

  v2 = knownSingleValueKeysForComparison_keys_3;

  return v2;
}

void __47__EKReminder_knownSingleValueKeysForComparison__block_invoke(uint64_t a1)
{
  v2 = knownSingleValueKeysForComparison_keys_3;
  knownSingleValueKeysForComparison_keys_3 = &unk_1F1B6B1D0;

  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___EKReminder;
  v3 = objc_msgSendSuper2(&v6, sel_knownSingleValueKeysForComparison);
  v4 = [v3 arrayByAddingObjectsFromArray:knownSingleValueKeysForComparison_keys_3];
  v5 = knownSingleValueKeysForComparison_keys_3;
  knownSingleValueKeysForComparison_keys_3 = v4;
}

+ (EKReminder)reminderWithEventStore:(EKEventStore *)eventStore
{
  v3 = eventStore;
  if (!v3)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKReminder reminderWithEventStore:v4];
    }
  }

  v5 = [(EKEventStore *)v3 reminderStore];
  v6 = [v5 createNewReminder];

  return v6;
}

- (EKReminder)initWithPersistentObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKReminder;
  v5 = [(EKObject *)&v9 initWithPersistentObject:v4];
  if (v5 && [v4 isNew])
  {
    v6 = [v4 eventStore];
    v7 = [v6 timeZone];
    [(EKReminder *)v5 setTimeZone:v7];
  }

  return v5;
}

- (EKReminder)init
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E60901FFFFFFFFLL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You must use [EKReminder reminderWithEventStore:] to create a reminder"];
  }

  return 0;
}

- (id)title
{
  v4.receiver = self;
  v4.super_class = EKReminder;
  v2 = [(EKCalendarItem *)&v4 title];
  if (!v2)
  {
    v2 = &stru_1F1B49D68;
  }

  return v2;
}

- (id)externalURI
{
  v2 = [(EKReminder *)self reminderIdentifier];
  if (v2)
  {
    if (externalURI_onceToken != -1)
    {
      [EKReminder externalURI];
    }

    v3 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:externalURI_allowedCharacters];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@", @"x-apple-reminderkit", @"REMCDReminder", v3];
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __25__EKReminder_externalURI__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v1 = [v3 copy];
  v2 = externalURI_allowedCharacters;
  externalURI_allowedCharacters = v1;
}

- (void)setCompletionDate:(NSDate *)completionDate
{
  v4 = completionDate;
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E695DF00];
    [(NSDate *)v4 timeIntervalSinceReferenceDate];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:floor(v7)];
  }

  else
  {
    v8 = 0;
  }

  [(EKObject *)self setSingleChangedValue:v8 forKey:@"completionDate"];
}

- (unint64_t)displayOrder
{
  v2 = [(EKObject *)self singleChangedValueForKey:@"displayOrder"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setDisplayOrder:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:@"displayOrder"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKReminder *)self title];
  v6 = [(EKReminder *)self dueDate];
  v7 = [(EKReminder *)self completionDate];
  v8 = [(EKCalendarItem *)self priority];
  v9 = [(EKCalendarItem *)self calendarItemIdentifier];
  v10 = [(EKCalendarItem *)self alarms];
  v11 = [v3 stringWithFormat:@"%@ <%p> {title = %@ dueDate = %@; completionDate = %@; priority = %ld; calendarItemIdentifier = %@; alarms = %@}", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (void)setCompleted:(BOOL)completed
{
  if (completed)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [(EKReminder *)self setCompletionDate:v4];
  }

  else
  {

    [(EKReminder *)self setCompletionDate:0];
  }
}

- (BOOL)isCompleted
{
  v2 = [(EKReminder *)self completionDate];
  v3 = v2 != 0;

  return v3;
}

- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 pinsTriggerToStartDate:(BOOL)a5
{
  v24 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  [v24 setAcknowledgedDate:v7];
  v8 = [(EKCalendarItem *)self calendar];
  v9 = [v8 constraints];
  v10 = [v9 maxAlarmsAllowed];

  if (v10 > 1)
  {
    v11 = [v24 duplicate];
  }

  else
  {
    v11 = v24;
  }

  v12 = v11;
  v13 = [v7 dateByAddingTimeInterval:a4];
  v14 = [(EKReminder *)self dueDate];

  if (v14)
  {
    v15 = [(EKReminder *)self dueDate];
    [v13 timeIntervalSinceDate:v15];
    v17 = v16;

    if (v17 > 0.0 && v17 < a4)
    {
      v19 = [(EKReminder *)self dueDate];

      v17 = 0.0;
      v13 = v19;
    }

    v20 = [v12 absoluteDate];

    if (v20)
    {
      [v12 setAbsoluteDate:v13];
    }

    else
    {
      v22 = [v12 structuredLocation];

      if (!v22)
      {
        [v12 setRelativeOffset:v17];
      }
    }
  }

  else
  {
    v21 = [v7 dateByAddingTimeInterval:a4];
    [v12 setAbsoluteDate:v21];
  }

  if (v10 >= 2)
  {
    v23 = [(EKCalendarItem *)self findOriginalAlarmStartingWith:v24];
    [v12 setOriginalAlarm:v23];
    [(EKCalendarItem *)self addAlarm:v12];
  }
}

- (id)committedConstraints
{
  v2 = [(EKObject *)self committedValueForKey:*MEMORY[0x1E6992570]];
  v3 = [v2 constraints];

  return v3;
}

- (BOOL)validate:(id *)a3
{
  v18.receiver = self;
  v18.super_class = EKReminder;
  LODWORD(v5) = [(EKCalendarItem *)&v18 validate:?];
  if (v5)
  {
    v6 = [(EKCalendarItem *)self calendar];
    v7 = [v6 allowReminders];

    if (v7)
    {
      if ([(EKCalendarItem *)self hasRecurrenceRules]&& ([(EKReminder(Shared) *)self dueDateComponents], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
      {
        if (a3)
        {
          v12 = 18;
          goto LABEL_11;
        }
      }

      else
      {
        v9 = [(EKReminder *)self constraints];
        v10 = [v9 supportsReminderLocations];

        if ((v10 & 1) != 0 || ([(EKCalendarItem *)self structuredLocation], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
        {
          v14 = [(EKReminder *)self constraints];
          v15 = [v14 supportsReminderActions];

          if ((v15 & 1) != 0 || ([(EKCalendarItem *)self action], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
          {
            if ([(EKCalendarItem *)self priority]< 0xA)
            {
              LOBYTE(v5) = 1;
              return v5;
            }

            if (a3)
            {
              v12 = 26;
              goto LABEL_11;
            }
          }

          else if (a3)
          {
            v12 = 42;
            goto LABEL_11;
          }
        }

        else if (a3)
        {
          v12 = 20;
LABEL_11:
          v13 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v12];
          v5 = v13;
          LOBYTE(v5) = 0;
          *a3 = v13;
          return v5;
        }
      }
    }

    else if (a3)
    {
      v12 = 23;
      goto LABEL_11;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)save:(id *)a3
{
  if (![(EKObject *)self isNew])
  {
    v4 = *MEMORY[0x1E6992570];
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]])
    {
      v5 = [(EKObject *)self committedValueForKey:v4];
      v6 = [(EKCalendarItem *)self calendar];
      [(EKReminder *)self _adjustAfterMovingOrCopyingFromOldCalendar:v5 toNewCalendar:v6 cachedConstraintsForOldCalendar:0 savingItem:self];
    }
  }

  [(EKCalendarItem *)self pinRecurrenceRuleToEndsOfFreqency];
  return 1;
}

- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)a3 toNewCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v12;
  v15 = v14;
  if (!v14)
  {
    v15 = [v10 constraints];
  }

  if ([v15 supportsAlarmProximity])
  {
    v16 = [v11 constraints];
    v17 = [v16 supportsAlarmProximity];

    if ((v17 & 1) == 0)
    {
      v18 = [(EKCalendarItem *)self alarms];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v25 + 1) + 8 * i);
            if ([v23 proximity])
            {
              [v23 setProximity:0];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_generateNewUniqueID
{
  v3 = objc_opt_class();
  v4 = [(EKCalendarItem *)self calendar];
  v5 = [v3 generateUniqueIDWithReminder:self calendar:v4];

  return v5;
}

- (BOOL)_reset
{
  v7.receiver = self;
  v7.super_class = EKReminder;
  v3 = [(EKObject *)&v7 _reset];
  if (v3)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __20__EKReminder__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(v3) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return v3;
}

id __20__EKReminder__reset__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  v3 = [v2 reminderStore];
  v4 = [*(a1 + 32) calendarItemIdentifier];
  v5 = [v3 backingReminderWithIdentifier:v4];

  return v5;
}

+ (void)_removeSnoozedAlarmsFromReminder:(id)a3 usingDueDate:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 constraints];
  if ([v7 maxAlarmsAllowed] >= 2)
  {

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    v28 = [v5 dueDateComponents];
    v29 = [v5 eventStore];
    v30 = [v29 timeZone];
    v6 = EKDateComponentsGetDate();

    goto LABEL_4;
  }

  v8 = [v5 allAlarms];
  v9 = [v8 count];

  if (v9 < 2)
  {
    goto LABEL_23;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  v10 = MEMORY[0x1E695DF70];
  v11 = [v5 allAlarms];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v5 allAlarms];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v18 originalAlarm];

        if (!v19)
        {
          if (![v18 isAbsolute])
          {
            continue;
          }

          v20 = [v18 absoluteDate];
          v21 = [v20 compare:v6];

          if (v21 != 1)
          {
            continue;
          }
        }

        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v15);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v5 removeAlarm:{*(*(&v31 + 1) + 8 * j), v31}];
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

LABEL_23:
  v27 = *MEMORY[0x1E69E9840];
}

- (id)bestDisplayAlarm
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(EKCalendarItem *)self alarms];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  if ([(EKCalendarItem *)self hasAlarms])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = [(EKCalendarItem *)self allAlarms];
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      LOBYTE(v9) = 0;
      v10 = *v42;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          v13 = [v12 structuredLocation];

          if (v13)
          {
            v34 = v12;
LABEL_57:
            v16 = v34;

            goto LABEL_58;
          }

          v14 = [v12 originalAlarm];

          if (v14 || ([v5 addObject:v12], (v9 & 1) != 0))
          {
            if ([v5 count] >= 2)
            {
              v34 = [v5 objectAtIndex:0];
              goto LABEL_57;
            }

            v9 = 1;
          }

          else
          {
            v9 = 0;
          }

          ++v11;
        }

        while (v8 != v11);
        v15 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
        v8 = v15;
        if (!v15)
        {

          if (v9 && [v5 count])
          {
            v16 = [v5 objectAtIndex:0];
            goto LABEL_58;
          }

          goto LABEL_20;
        }
      }
    }
  }

LABEL_20:
  if ([v5 count])
  {
    v17 = [(EKReminder(Shared) *)self dueDateComponents];
    v18 = [(EKObject *)self eventStore];
    v19 = [v18 timeZone];
    v20 = EKDateComponentsGetDate();

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v5;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v16 = 0;
      v24 = *v38;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          if (v16)
          {
            if ([*(*(&v37 + 1) + 8 * i) isAbsolute])
            {
              [v26 absoluteDate];
            }

            else
            {
              [v26 relativeOffset];
              [v20 dateByAddingTimeInterval:?];
            }
            v27 = ;
            if ([v16 isAbsolute])
            {
              [v16 absoluteDate];
            }

            else
            {
              [v16 relativeOffset];
              [v20 dateByAddingTimeInterval:?];
            }
            v28 = ;
            if ([v27 isEqualToDate:v20])
            {
              v33 = v26;

              v16 = v33;
              goto LABEL_58;
            }

            if ([v20 compare:v28] == -1 && objc_msgSend(v20, "compare:", v27) != -1)
            {
              goto LABEL_46;
            }

            if ([v20 compare:v28] == -1 || objc_msgSend(v20, "compare:", v27) != -1)
            {
              [v20 timeIntervalSinceDate:v27];
              if (v29 >= 0.0)
              {
                v30 = v29;
              }

              else
              {
                v30 = -v29;
              }

              [v20 timeIntervalSinceDate:v28];
              if (v31 < 0.0)
              {
                v31 = -v31;
              }

              if (v30 < v31)
              {
LABEL_46:
                v32 = v26;

                v16 = v32;
              }
            }
          }

          else
          {
            v16 = v26;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_58:

  v35 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)constraints
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 cachedConstraintsForReminder:self];

  return v4;
}

+ (id)generateUniqueIDWithReminder:(id)a3 calendar:(id)a4
{
  v4 = [a4 constraints];
  v5 = [v4 requiresMSFormattedUID];

  if (v5)
  {
    _EKMSUUIDString();
  }

  else
  {
    EKUUIDString();
  }
  v6 = ;

  return v6;
}

id __41__EKReminder_Shared__startDateComponents__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) singleChangedValueForKey:@"startDateComponents"];
  v3 = [v2 copy];

  if (v3)
  {
    v4 = [*(a1 + 32) dueDateTimeZone];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
      [v3 setTimeZone:v5];

      v6 = [v3 date];
      v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v8 = [v7 componentsInTimeZone:v4 fromDate:v6];
      [v8 setTimeZone:v4];
    }

    else
    {
      [v3 setTimeZone:0];
      v8 = v3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSTimeZone)dueDateTimeZone
{
  v2 = [(EKReminder(Shared) *)self dueDateComponents];
  v3 = [v2 timeZone];

  return v3;
}

- (BOOL)dueDateAllDay
{
  v2 = [(EKReminder(Shared) *)self dueDateComponents];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hour] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dueDate
{
  v3 = [(EKReminder *)self dueDateTimeZone];

  v4 = [(EKReminder(Shared) *)self dueDateComponents];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 date];
  }

  else
  {
    v7 = [(EKObject *)self eventStore];
    v8 = [v7 timeZone];
    v6 = EKDateComponentsGetDate();
  }

  return v6;
}

- (void)setDueDate:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 alloc];
  v10 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [(EKObject *)self eventStore];
  v8 = [v7 timeZone];
  [v10 setTimeZone:v8];

  v9 = [v10 components:2097278 fromDate:v5];

  [v9 setCalendar:v10];
  [(EKReminder(Shared) *)self setDueDateComponents:v9];
}

- (void)setTimeZone:(id)a3
{
  v17 = a3;
  v4 = [(EKReminder *)self timeZone];
  if ([(EKReminder *)self isAllDay])
  {

    v5 = 0;
  }

  else
  {
    v5 = v17;
  }

  v18 = v5;
  if (v4 | v5 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6 = [(EKReminder(Shared) *)self startDateComponents];
    v7 = [(EKReminder(Shared) *)self dueDateComponents];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 date];
      v10 = [v8 hour];
      v11 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v12 = v11;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 1048606;
      }

      else
      {
        v13 = 1048830;
      }

      if (v18)
      {
        [v11 setTimeZone:v18];
        v14 = [v12 components:v13 fromDate:v9];
        v15 = v14;
        v16 = v18;
      }

      else
      {
        v14 = [v11 components:v13 fromDate:v9];
        v15 = v14;
        v16 = 0;
      }

      [v14 setTimeZone:v16];
      [(EKObject *)self setSingleChangedValue:v15 forKey:@"dueDateComponents"];
    }

    if (v6)
    {
      [v6 setTimeZone:v18];
      [(EKObject *)self setSingleChangedValue:v18 forKey:@"timeZone"];
      [(EKReminder(Shared) *)self setStartDateComponents:v6];
    }
  }
}

- (id)timeZone
{
  v3 = [(EKReminder(Shared) *)self dueDateComponents];
  v4 = v3;
  if (v3)
  {
    [v3 timeZone];
  }

  else
  {
    [(EKObject *)self singleChangedValueForKey:@"timeZone"];
  }
  v5 = ;

  return v5;
}

- (void)setAllDay:(BOOL)a3
{
  v3 = a3;
  v11 = [(EKReminder(Shared) *)self dueDateComponents];
  v5 = [v11 hour] == 0x7FFFFFFFFFFFFFFFLL;
  v6 = v11;
  v7 = !v5;
  if (v11 && ((v7 ^ v3) & 1) == 0)
  {
    v8 = [v11 date];
    v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v10 = [v9 components:1048606 fromDate:v8];
    [v10 setTimeZone:0];
    [(EKReminder(Shared) *)self setDueDateComponents:v10];

    v6 = v11;
  }
}

- (void)_adjustPersistedStartDateComponentsForNewTimeZone:(id)a3
{
  v5 = [(EKReminder *)self startDateComponentsRaw];
  if (v5)
  {
    v13 = v5;
    v6 = [(EKReminder *)self dueDateTimeZone];
    if ((a3 == 0) == (v6 != 0))
    {
      if ([v13 hour] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 1048606;
      }

      else
      {
        v7 = 1048830;
      }

      v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      if (a3)
      {
        v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
        [v13 setTimeZone:v9];

        v10 = [v13 date];
        v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
        [v8 setTimeZone:v11];

        v12 = [v8 components:v7 fromDate:v10];
      }

      else
      {
        v10 = [v13 date];
        v12 = [v8 components:v7 fromDate:v10];
        [v12 setTimeZone:0];
      }

      [(EKObject *)self setSingleChangedValue:v12 forKey:@"startDateComponents"];
      [(EKObject *)self clearCachedValueForKey:@"startDateComponents"];
    }

    v5 = v13;
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = EKReminder;
  [(EKObject *)&v3 reset];
  [(EKObject *)self clearCachedValueForKey:@"startDateComponents"];
}

- (void)rollback
{
  v3.receiver = self;
  v3.super_class = EKReminder;
  [(EKObject *)&v3 rollback];
  [(EKObject *)self clearCachedValueForKey:@"startDateComponents"];
}

- (BOOL)refresh
{
  v5.receiver = self;
  v5.super_class = EKReminder;
  v3 = [(EKObject *)&v5 refresh];
  if (v3)
  {
    [(EKObject *)self clearCachedValueForKey:@"startDateComponents"];
  }

  return v3;
}

@end