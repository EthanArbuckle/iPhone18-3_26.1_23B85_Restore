@interface EKREMReminderPredicate
- (BOOL)evaluateWithObject:(id)object;
- (EKREMReminderPredicate)initWithCalendars:(id)calendars;
- (id)fetchMatchingRemindersInStore:(id)store allLists:(id)lists error:(id *)error;
- (id)initForCalendarStoreWithCalendars:(id)calendars;
- (id)remListIDsWithAllLists:(id)lists;
@end

@implementation EKREMReminderPredicate

- (EKREMReminderPredicate)initWithCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v9.receiver = self;
  v9.super_class = EKREMReminderPredicate;
  v5 = [(EKREMReminderPredicate *)&v9 init];
  if (v5)
  {
    v6 = [calendarsCopy copy];
    calendars = v5->_calendars;
    v5->_calendars = v6;

    v5->noCalendarNoResult = 0;
  }

  return v5;
}

- (id)initForCalendarStoreWithCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v9.receiver = self;
  v9.super_class = EKREMReminderPredicate;
  v5 = [(EKREMReminderPredicate *)&v9 init];
  if (v5)
  {
    v6 = [calendarsCopy copy];
    calendars = v5->_calendars;
    v5->_calendars = v6;

    v5->noCalendarNoResult = 1;
  }

  return v5;
}

- (id)remListIDsWithAllLists:(id)lists
{
  v24 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  if ([(NSArray *)self->_calendars count]|| self->noCalendarNoResult)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_calendars, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_calendars;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          frozenObject = [v11 frozenObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            frozenObject2 = [v11 frozenObject];
            remObjectID = [frozenObject2 remObjectID];
            [v5 addObject:remObjectID];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v16 = [v5 copy];
  }

  else
  {
    v16 = [listsCopy valueForKey:@"objectID"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)fetchMatchingRemindersInStore:(id)store allLists:(id)lists error:(id *)error
{
  storeCopy = store;
  v9 = [(EKREMReminderPredicate *)self remListIDsWithAllLists:lists];
  v10 = [storeCopy fetchRemindersForEventKitBridgingWithListIDs:v9 error:error];

  return v10;
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NSArray *)self->_calendars count])
    {
      if (!self->_calendarIdentifierSet)
      {
        v5 = MEMORY[0x1E695DFD8];
        v6 = [(NSArray *)self->_calendars valueForKey:@"calendarIdentifier"];
        v7 = [v5 setWithArray:v6];
        calendarIdentifierSet = self->_calendarIdentifierSet;
        self->_calendarIdentifierSet = v7;
      }

      v9 = self->_calendarIdentifierSet;
      calendar = [objectCopy calendar];
      calendarIdentifier = [calendar calendarIdentifier];
      v12 = [(NSSet *)v9 containsObject:calendarIdentifier];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end