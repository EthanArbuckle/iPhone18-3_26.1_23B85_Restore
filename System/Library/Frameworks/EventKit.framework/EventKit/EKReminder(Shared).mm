@interface EKReminder(Shared)
- (NSDateComponents)startDateComponents;
- (void)setDueDateComponents:()Shared;
- (void)setStartDateComponents:()Shared;
@end

@implementation EKReminder(Shared)

- (NSDateComponents)startDateComponents
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKReminder_Shared__startDateComponents__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"startDateComponents" populateBlock:v4];

  return v2;
}

- (void)setStartDateComponents:()Shared
{
  v4 = a3;
  if (!v4)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 calendar];
  v7 = v6;
  v8 = MEMORY[0x1E695D850];
  if (v6)
  {
    v9 = [v6 calendarIdentifier];
    v10 = [v9 isEqualToString:*v8];

    if ((v10 & 1) == 0)
    {
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"Calendar must be nil or Gregorian";
LABEL_20:
      v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:0];
      objc_exception_throw(v24);
    }
  }

  if ([v5 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"Invalid date components: must have at least a year, a month, and a day";
    goto LABEL_20;
  }

  -[EKReminder setAllDay:](self, "setAllDay:", [v5 hour] == 0x7FFFFFFFFFFFFFFFLL);
  v25 = [v5 copy];

  if ([v25 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v25 copy];

    [v11 setSecond:{objc_msgSend(v11, "second")}];
    v25 = v11;
  }

  v12 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*v8];
  v13 = [v25 calendar];

  if (!v13)
  {
    [v25 setCalendar:v12];
  }

  v14 = [v25 date];
  v15 = [v25 timeZone];
  [(EKReminder *)self setTimeZone:v15];

  v16 = [v25 timeZone];
  [(EKObject *)self setSingleChangedValue:v16 forKey:@"timeZone"];

  v17 = [(EKReminder *)self dueDateTimeZone];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    v19 = [v12 componentsInTimeZone:v18 fromDate:v14];
  }

  else
  {
    v19 = [v12 components:1048830 fromDate:v14];
  }

  v20 = v25;
LABEL_16:
  v26 = v20;
  [(EKObject *)self setCachedValue:v20 forKey:@"startDateComponents"];
  [(EKObject *)self setSingleChangedValue:v19 forKey:@"startDateComponents"];
}

- (void)setDueDateComponents:()Shared
{
  v4 = a3;
  if (!v4)
  {
    [(EKObject *)self setSingleChangedValue:0 forKey:@"dueDateComponents"];
    v22 = 0;
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 calendar];
  v7 = v6;
  v8 = MEMORY[0x1E695D850];
  if (v6)
  {
    v9 = [v6 calendarIdentifier];
    v10 = [v9 isEqualToString:*v8];

    if ((v10 & 1) == 0)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = @"Calendar must be nil or Gregorian";
LABEL_33:
      v28 = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
      objc_exception_throw(v28);
    }
  }

  v11 = [v5 copy];

  v12 = [v11 hour];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 setTimeZone:0];
  }

  if (!v7)
  {
    v13 = [v11 timeZone];
    if (!v13)
    {
      v14 = [(EKObject *)self eventStore];
      v13 = [v14 timeZone];
    }

    v7 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:*v8];
    [v7 setTimeZone:v13];
    [v11 setCalendar:v7];
  }

  if ([v11 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v27 = @"Invalid date components: must have at least a year, a month, and a day";
    goto LABEL_33;
  }

  if ([v11 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v11 copy];

    [v15 setSecond:{objc_msgSend(v15, "second")}];
    v11 = v15;
  }

  v16 = [(EKReminder(Shared) *)self startDateComponents];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || !v16)
  {
    v19 = v7;
    v29 = v11;
  }

  else
  {
    v17 = [(EKReminder *)self timeZone];
    v18 = [v11 date];
    v19 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*v8];

    if (v17)
    {
      [v19 setTimeZone:v17];
      v20 = [v19 components:1048830 fromDate:v18];
      v29 = v20;
      v21 = v17;
    }

    else
    {
      v20 = [v19 components:1048830 fromDate:v18];
      v29 = v20;
      v21 = 0;
    }

    [v20 setTimeZone:v21];

    v23 = [(EKReminder(Shared) *)self dueDateComponents];

    if (!v23)
    {
      [(EKReminder *)self _adjustPersistedStartDateComponentsForNewTimeZone:v17];
    }
  }

  [(EKObject *)self setSingleChangedValue:v29 forKey:@"dueDateComponents"];
  v22 = v29;
  if (v29)
  {
    v24 = [(EKReminder(Shared) *)self startDateComponents];

    if (!v24)
    {
      [(EKReminder(Shared) *)self setStartDateComponents:v29];
    }

    v22 = v29;
  }

LABEL_29:
}

@end