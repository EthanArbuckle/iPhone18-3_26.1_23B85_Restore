@interface EKREMCompletionStateReminderPredicate
- (BOOL)evaluateWithObject:(id)object;
- (id)fetchMatchingRemindersInStore:(id)store allLists:(id)lists error:(id *)error;
- (id)initForCompletedRemindersWithCompletionDateStarting:(id)starting ending:(id)ending calendars:(id)calendars;
- (id)initForIncompleteRemindersWithDueDateStarting:(id)starting ending:(id)ending calendars:(id)calendars;
@end

@implementation EKREMCompletionStateReminderPredicate

- (id)initForIncompleteRemindersWithDueDateStarting:(id)starting ending:(id)ending calendars:(id)calendars
{
  startingCopy = starting;
  endingCopy = ending;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  v11 = [(EKREMReminderPredicate *)&v14 initWithCalendars:calendars];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_start, starting);
    objc_storeStrong(&v12->_end, ending);
    v12->_completed = 0;
  }

  return v12;
}

- (id)initForCompletedRemindersWithCompletionDateStarting:(id)starting ending:(id)ending calendars:(id)calendars
{
  startingCopy = starting;
  endingCopy = ending;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  v11 = [(EKREMReminderPredicate *)&v14 initWithCalendars:calendars];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_start, starting);
    objc_storeStrong(&v12->_end, ending);
    v12->_completed = 1;
  }

  return v12;
}

- (id)fetchMatchingRemindersInStore:(id)store allLists:(id)lists error:(id *)error
{
  storeCopy = store;
  v9 = [(EKREMReminderPredicate *)self remListIDsWithAllLists:lists];
  start = self->_start;
  end = self->_end;
  if (self->_completed)
  {
    [storeCopy fetchCompletedRemindersForEventKitBridgingWithCompletionDateFrom:start to:end withListIDs:v9 error:error];
  }

  else
  {
    [storeCopy fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:start to:end withListIDs:v9 error:error];
  }
  v12 = ;

  return v12;
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = EKREMCompletionStateReminderPredicate;
  if ([(EKREMReminderPredicate *)&v14 evaluateWithObject:objectCopy])
  {
    v5 = objectCopy;
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
      completionDate = [v5 completionDate];
    }

    else
    {
      dueDateComponents = [v5 dueDateComponents];
      if (!dueDateComponents)
      {
        completionDate = 0;
LABEL_25:
        v7 = 0;
        goto LABEL_26;
      }

      v9 = dueDateComponents;
      v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      [v9 setCalendar:v10];

      completionDate = [v9 date];
    }

    start = self->_start;
    if (self->_completed)
    {
      if (start && ([completionDate CalIsBeforeDate:?] & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (start && ([completionDate CalIsBeforeOrSameAsDate:?] & 1) != 0)
    {
      goto LABEL_25;
    }

    end = self->_end;
    if (self->_completed)
    {
      if (end && ([completionDate CalIsAfterOrSameAsDate:?] & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (end && [completionDate CalIsAfterDate:?])
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