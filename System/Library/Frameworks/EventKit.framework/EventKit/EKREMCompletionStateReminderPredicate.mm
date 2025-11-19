@interface EKREMCompletionStateReminderPredicate
- (BOOL)evaluateWithObject:(id)a3;
- (id)fetchMatchingRemindersInStore:(id)a3 allLists:(id)a4 error:(id *)a5;
- (id)initForCompletedRemindersWithCompletionDateStarting:(id)a3 ending:(id)a4 calendars:(id)a5;
- (id)initForIncompleteRemindersWithDueDateStarting:(id)a3 ending:(id)a4 calendars:(id)a5;
@end

@implementation EKREMCompletionStateReminderPredicate

- (id)initForIncompleteRemindersWithDueDateStarting:(id)a3 ending:(id)a4 calendars:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  v11 = [(EKREMReminderPredicate *)&v14 initWithCalendars:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_start, a3);
    objc_storeStrong(&v12->_end, a4);
    v12->_completed = 0;
  }

  return v12;
}

- (id)initForCompletedRemindersWithCompletionDateStarting:(id)a3 ending:(id)a4 calendars:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  v11 = [(EKREMReminderPredicate *)&v14 initWithCalendars:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_start, a3);
    objc_storeStrong(&v12->_end, a4);
    v12->_completed = 1;
  }

  return v12;
}

- (id)fetchMatchingRemindersInStore:(id)a3 allLists:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(EKREMReminderPredicate *)self remListIDsWithAllLists:a4];
  start = self->_start;
  end = self->_end;
  if (self->_completed)
  {
    [v8 fetchCompletedRemindersForEventKitBridgingWithCompletionDateFrom:start to:end withListIDs:v9 error:a5];
  }

  else
  {
    [v8 fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:start to:end withListIDs:v9 error:a5];
  }
  v12 = ;

  return v12;
}

- (BOOL)evaluateWithObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  if ([(EKREMReminderPredicate *)&v14 evaluateWithObject:v4])
  {
    v5 = v4;
    if (self->_completed != [v5 isCompleted])
    {
      v7 = 0;
LABEL_27:

      goto LABEL_28;
    }

    if (!self->_start && !self->_end)
    {
      v7 = 1;
      goto LABEL_27;
    }

    if (self->_completed)
    {
      v6 = [v5 completionDate];
    }

    else
    {
      v8 = [v5 dueDateComponents];
      if (!v8)
      {
        v6 = 0;
LABEL_25:
        v7 = 0;
        goto LABEL_26;
      }

      v9 = v8;
      v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      [v9 setCalendar:v10];

      v6 = [v9 date];
    }

    start = self->_start;
    if (self->_completed)
    {
      if (start && ([v6 CalIsBeforeDate:?] & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (start && ([v6 CalIsBeforeOrSameAsDate:?] & 1) != 0)
    {
      goto LABEL_25;
    }

    end = self->_end;
    if (self->_completed)
    {
      if (end && ([v6 CalIsAfterOrSameAsDate:?] & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (end && [v6 CalIsAfterDate:?])
    {
      goto LABEL_25;
    }

    v7 = 1;
LABEL_26:

    goto LABEL_27;
  }

  v7 = 0;
LABEL_28:

  return v7;
}

@end