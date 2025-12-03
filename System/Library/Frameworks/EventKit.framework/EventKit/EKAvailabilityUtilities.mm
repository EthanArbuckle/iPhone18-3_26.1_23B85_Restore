@interface EKAvailabilityUtilities
+ (BOOL)canSeeAttendeeStatusesForEvent:(id)event;
+ (BOOL)spansIncludeBusyPeriod:(id)period;
+ (id)getCALFreeBusyFromEKSpans:(id)spans inRange:(id)range;
+ (id)getCALFreeBusyFromResults:(id)results forAttendees:(id)attendees inRange:(id)range;
+ (int)CALFreeBusyTypeFromEKAvailType:(int64_t)type;
+ (int)leastAvailabileFreeBusyTypeForArray:(id)array;
+ (int64_t)availabilityPanelVisibilityForEvent:(id)event;
+ (int64_t)orderForType:(int64_t)type;
+ (int64_t)summarizedAvailabilityTypeForSpans:(id)spans;
@end

@implementation EKAvailabilityUtilities

+ (int)CALFreeBusyTypeFromEKAvailType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1A81C3D40[type - 1];
  }
}

+ (int)leastAvailabileFreeBusyTypeForArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v5 = [arrayCopy count];
    if (v5 < 2)
    {
      v7 = 6;
    }

    else
    {
      v6 = v5;
      v7 = 6;
      for (i = 1; i < v6; i += 2)
      {
        v9 = [v4 objectAtIndex:i];
        integerValue = [v9 integerValue];

        if (v7 >= integerValue)
        {
          v7 = integerValue;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getCALFreeBusyFromEKSpans:(id)spans inRange:(id)range
{
  v35 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  rangeCopy = range;
  v7 = objc_opt_new();
  if (spansCopy && [spansCopy count])
  {
    firstObject = [spansCopy firstObject];
    startDate = [rangeCopy startDate];
    startDate2 = [firstObject startDate];
    v11 = [startDate isBeforeDate:startDate2];

    if (v11)
    {
      startDate3 = [rangeCopy startDate];
      [v7 addObject:startDate3];

      [v7 addObject:&unk_1F1B6AC18];
    }

    v29 = spansCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = spansCopy;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          startDate4 = [v18 startDate];
          [v7 addObject:startDate4];

          v20 = [MEMORY[0x1E696AD98] numberWithInt:{+[EKAvailabilityUtilities CALFreeBusyTypeFromEKAvailType:](EKAvailabilityUtilities, "CALFreeBusyTypeFromEKAvailType:", objc_msgSend(v18, "type"))}];
          [v7 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    lastObject = [v13 lastObject];
    if (lastObject)
    {
      endDate = [rangeCopy endDate];
      endDate2 = [lastObject endDate];
      v24 = [endDate isAfterDate:endDate2];

      if (v24)
      {
        endDate3 = [lastObject endDate];
        [v7 addObject:endDate3];

        [v7 addObject:&unk_1F1B6AC18];
      }
    }

    spansCopy = v29;
  }

  else
  {
    startDate5 = [rangeCopy startDate];
    [v7 addObject:startDate5];

    [v7 addObject:&unk_1F1B6AC18];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getCALFreeBusyFromResults:(id)results forAttendees:(id)attendees inRange:(id)range
{
  v31 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  attendeesCopy = attendees;
  rangeCopy = range;
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = attendeesCopy;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_opt_new();
        if (resultsCopy)
        {
          v16 = [resultsCopy objectForKeyedSubscript:v14];
        }

        else
        {
          v16 = 0;
        }

        [v15 sanitizeAndInsertResults:v16 inRange:rangeCopy];
        spans = [v15 spans];
        v18 = [spans count];

        if (v18)
        {
          v19 = objc_opt_class();
          spans2 = [v15 spans];
          v21 = [v19 getCALFreeBusyFromEKSpans:spans2 inRange:rangeCopy];
          [v25 setObject:v21 forKeyedSubscript:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (int64_t)summarizedAvailabilityTypeForSpans:(id)spans
{
  spansCopy = spans;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = [objc_opt_class() orderForType:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EKAvailabilityUtilities_summarizedAvailabilityTypeForSpans___block_invoke;
  v7[3] = &unk_1E77FEFE8;
  v7[4] = v8;
  v7[5] = &v9;
  v7[6] = self;
  [spansCopy enumerateObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __62__EKAvailabilityUtilities_summarizedAvailabilityTypeForSpans___block_invoke(void *a1, void *a2)
{
  v3 = [a2 type];
  v4 = a1[6];
  result = [objc_opt_class() orderForType:v3];
  v6 = *(a1[4] + 8);
  if (result > *(v6 + 24))
  {
    *(v6 + 24) = result;
    *(*(a1[5] + 8) + 24) = v3;
  }

  return result;
}

+ (BOOL)spansIncludeBusyPeriod:(id)period
{
  periodCopy = period;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EKAvailabilityUtilities_spansIncludeBusyPeriod___block_invoke;
  v6[3] = &unk_1E77FF010;
  v6[4] = &v7;
  v6[5] = self;
  [periodCopy enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __50__EKAvailabilityUtilities_spansIncludeBusyPeriod___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 type];
  v7 = *(a1 + 40);
  result = [objc_opt_class() showTypeAsBusy:v6];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (int64_t)availabilityPanelVisibilityForEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    constraints = [eventCopy constraints];
    supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

    if (supportsAvailabilityRequests)
    {
      if ([v5 isAllDay])
      {
        v8 = 3;
      }

      else
      {
        activeCalendar = [MEMORY[0x1E6992F28] activeCalendar];
        v11 = [v5 isMultiDayTimedEventInCalendar:activeCalendar];

        if (v11)
        {
          v8 = 4;
        }

        else if ([v5 hasAttendees])
        {
          if ([self canSeeAttendeeStatusesForEvent:v5])
          {
            v8 = 0;
          }

          else
          {
            v8 = 6;
          }
        }

        else
        {
          v8 = 5;
        }
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)canSeeAttendeeStatusesForEvent:(id)event
{
  eventCopy = event;
  calendar = [eventCopy calendar];

  if (calendar)
  {
    if ([eventCopy isNew])
    {
      hasAttendees = [eventCopy hasAttendees];
    }

    else
    {
      hasAttendees = 0;
    }

    organizer = [eventCopy organizer];
    if (organizer)
    {
      organizer2 = [eventCopy organizer];
      isCurrentUser = [organizer2 isCurrentUser];
    }

    else
    {
      isCurrentUser = 0;
    }

    v10 = hasAttendees | isCurrentUser;
    calendar2 = [eventCopy calendar];
    source = [calendar2 source];
    _constraintsInternal = [source _constraintsInternal];
    v14 = _constraintsInternal;
    if (v10)
    {
      organizerCanSeeAttendeeStatuses = [_constraintsInternal organizerCanSeeAttendeeStatuses];
    }

    else
    {
      organizerCanSeeAttendeeStatuses = [_constraintsInternal inviteesCanSeeAttendeeStatuses];
    }

    v6 = organizerCanSeeAttendeeStatuses;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)orderForType:(int64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return qword_1A81C3D60[type];
  }
}

@end