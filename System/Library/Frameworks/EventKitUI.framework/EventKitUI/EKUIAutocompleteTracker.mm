@interface EKUIAutocompleteTracker
+ (BOOL)_trackedEventProperty:(unint64_t)property isPresentInAutocompleteResult:(id)result;
+ (BOOL)_trackedEventProperty:(unint64_t)property wasOverriddenInEvent:(id)event fromAutocompleteResult:(id)result;
+ (id)propertyName:(unint64_t)name;
- (BOOL)_trackedEventProperty:(unint64_t)property wasSetInNewEvent:(id)event;
- (void)_augmentPayload:(id)payload withEvent:(id)event selectedResult:(id)result selectedIndex:(unint64_t)index isZKW:(BOOL)w;
- (void)finalizeAutocompleteTrackingOnSave:(BOOL)save withEvent:(id)event selectedResult:(id)result selectedIndex:(unint64_t)index isZKW:(BOOL)w;
@end

@implementation EKUIAutocompleteTracker

- (void)finalizeAutocompleteTrackingOnSave:(BOOL)save withEvent:(id)event selectedResult:(id)result selectedIndex:(unint64_t)index isZKW:(BOOL)w
{
  wCopy = w;
  saveCopy = save;
  v31[8] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  resultCopy = result;
  v14 = resultCopy;
  if (!self->_hasFinalizedTracking)
  {
    v25 = wCopy;
    self->_hasFinalizedTracking = 1;
    indexCopy = index;
    if (resultCopy)
    {
      v15 = index + 1;
    }

    else
    {
      v15 = 0;
    }

    v29 = eventCopy;
    v30[0] = @"ZKWQueryStarted";
    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasTrackedZKWQuery];
    v31[0] = v28;
    v30[1] = @"ZKWResultShown";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasTrackedZKWResultShown];
    v31[1] = v27;
    v30[2] = @"NLResultShown";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasTrackedNLResultShown];
    v31[2] = v16;
    v30[3] = @"AutocompleteQueryStarted";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasTrackedAutocompleteQuery];
    v31[3] = v17;
    v30[4] = @"AutocompleteResultsShown";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasTrackedAutocompleteResultsShown];
    v31[4] = v18;
    v30[5] = @"NumberOfAutocompleteResults";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_finalNumberOfAutocompleteResults];
    v31[5] = v19;
    v30[6] = @"EventSaved";
    v26 = saveCopy;
    v20 = [MEMORY[0x1E696AD98] numberWithBool:saveCopy];
    v31[6] = v20;
    v30[7] = @"WhichResultSelected";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v31[7] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
    v23 = [v22 mutableCopy];

    eventCopy = v29;
    if (v14 && self->_finalNumberOfAutocompleteResults && v26)
    {
      [(EKUIAutocompleteTracker *)self _augmentPayload:v23 withEvent:v29 selectedResult:v14 selectedIndex:indexCopy isZKW:v25];
    }

    CalAnalyticsSendEvent();
  }
}

- (void)_augmentPayload:(id)payload withEvent:(id)event selectedResult:(id)result selectedIndex:(unint64_t)index isZKW:(BOOL)w
{
  wCopy = w;
  payloadCopy = payload;
  eventCopy = event;
  resultCopy = result;
  v13 = resultCopy;
  if (wCopy)
  {
    if (self->_hasTrackedAutocompleteResultsShown)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = [resultCopy source] == 2;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [payloadCopy setObject:v15 forKeyedSubscript:@"SelectionType"];

  v29 = 0;
  for (i = 0; i != 11; ++i)
  {
    v17 = [(EKUIAutocompleteTracker *)self _trackedEventProperty:i wasSetInNewEvent:eventCopy];
    v18 = [objc_opt_class() _trackedEventProperty:i isPresentInAutocompleteResult:v13];
    v19 = [objc_opt_class() _trackedEventProperty:i wasOverriddenInEvent:eventCopy fromAutocompleteResult:v13];
    v20 = v19;
    if (v17 && ((v18 ^ 1 | v19) & 1) != 0)
    {
      v29 |= [objc_opt_class() _isChangeToTrackedPropertySignificant:i];
    }

    v21 = [EKUIAutocompleteTracker propertyName:i];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    v23 = [v21 stringByAppendingString:@"SetInEvent"];
    [payloadCopy setObject:v22 forKeyedSubscript:v23];

    v24 = [MEMORY[0x1E696AD98] numberWithBool:v18];
    v25 = [v21 stringByAppendingString:@"PresentInResult"];
    [payloadCopy setObject:v24 forKeyedSubscript:v25];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:v20 & 1];
    v27 = [v21 stringByAppendingString:@"Overridden"];
    [payloadCopy setObject:v26 forKeyedSubscript:v27];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithInt:(v29 & 1) == 0];
  [payloadCopy setObject:v28 forKeyedSubscript:@"CompleteWin"];
}

+ (id)propertyName:(unint64_t)name
{
  if (name - 1 > 0xA)
  {
    return @"Title";
  }

  else
  {
    return off_1E8441B20[name - 1];
  }
}

+ (BOOL)_trackedEventProperty:(unint64_t)property isPresentInAutocompleteResult:(id)result
{
  resultCopy = result;
  v8 = resultCopy;
  v9 = 1;
  if (property > 5)
  {
    if (property <= 7)
    {
      if (property != 6)
      {
        goto LABEL_26;
      }

      alarms = [resultCopy alarms];
      goto LABEL_20;
    }

    if (property != 8)
    {
      if (property == 9)
      {
        notes = [resultCopy URL];
      }

      else
      {
        if (property != 10)
        {
          goto LABEL_17;
        }

        notes = [resultCopy notes];
      }

      v9 = notes != 0;

      goto LABEL_26;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_26;
  }

  if (property > 2)
  {
    if (property - 3 >= 2)
    {
      if (property == 5)
      {
        alarms = [resultCopy attendees];
LABEL_20:
        clientLocation = alarms;
        v9 = [alarms count] != 0;
LABEL_25:

        goto LABEL_26;
      }

LABEL_17:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[EKUIAutocompleteTracker _trackedEventProperty:isPresentInAutocompleteResult:]"];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EKUIAutocompleteTracker.m" lineNumber:206 description:{@"Unknown property id %lu in %@", property, v13}];

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (!property)
  {
    goto LABEL_26;
  }

  if (property == 1)
  {
    clientLocation = [resultCopy clientLocation];
    if (!clientLocation)
    {
      structuredLocation = [v8 structuredLocation];
      v9 = structuredLocation != 0;
    }

    goto LABEL_25;
  }

  if (property != 2)
  {
    goto LABEL_17;
  }

LABEL_26:

  return v9;
}

- (BOOL)_trackedEventProperty:(unint64_t)property wasSetInNewEvent:(id)event
{
  eventCopy = event;
  v8 = eventCopy;
  if (property > 4)
  {
    if (property <= 7)
    {
      if (property == 5)
      {
        attendees = [eventCopy attendees];
      }

      else
      {
        if (property != 6)
        {
          calendar = [eventCopy calendar];
          v10 = [calendar isEqual:self->_initialCalendar] ^ 1;
LABEL_41:

          goto LABEL_42;
        }

        attendees = [eventCopy alarms];
      }

      calendar = attendees;
      LOBYTE(v10) = [attendees count] != 0;
      goto LABEL_41;
    }

    if (property != 8)
    {
      if (property == 9)
      {
        notes = [eventCopy URL];
        goto LABEL_21;
      }

      if (property == 10)
      {
        notes = [eventCopy notes];
LABEL_21:
        LOBYTE(v10) = notes != 0;

        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if ([eventCopy allowsAvailabilityModifications] && objc_msgSend(v8, "availability"))
    {
LABEL_30:
      LOBYTE(v10) = 1;
      goto LABEL_42;
    }

    if (![v8 allowsPrivacyLevelModifications])
    {
      goto LABEL_38;
    }

    v14 = [v8 privacyLevel] == 0;
    goto LABEL_35;
  }

  if (property <= 1)
  {
    if (!property)
    {
      goto LABEL_30;
    }

    if (property != 1)
    {
LABEL_31:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EKUIAutocompleteTracker _trackedEventProperty:wasSetInNewEvent:]"];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EKUIAutocompleteTracker.m" lineNumber:243 description:{@"Unknown property id %lu in %@", property, v19}];

LABEL_38:
      LOBYTE(v10) = 0;
      goto LABEL_42;
    }

    calendar = [eventCopy location];
    if (!calendar)
    {
      preferredLocation = [v8 preferredLocation];
      LOBYTE(v10) = preferredLocation != 0;

      goto LABEL_41;
    }

LABEL_32:
    LOBYTE(v10) = 1;
    goto LABEL_41;
  }

  if (property == 2)
  {
    if (self->_initialIsAllDay != [eventCopy isAllDay])
    {
      goto LABEL_30;
    }

    calendar = [v8 startDate];
    if ([calendar isEqualToDate:self->_initialStartDate])
    {
      endDateUnadjustedForLegacyClients = [v8 endDateUnadjustedForLegacyClients];
      if ([endDateUnadjustedForLegacyClients isEqualToDate:self->_initialEndDate])
      {
        timeZone = [v8 timeZone];
        v10 = [timeZone isEqualToTimeZone:self->_initialTimeZone] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 1;
      }

      goto LABEL_41;
    }

    goto LABEL_32;
  }

  if (property != 3)
  {
    LOBYTE(v10) = [eventCopy hasRecurrenceRules];
    goto LABEL_42;
  }

  [eventCopy travelTime];
  v14 = v13 == 0.0;
LABEL_35:
  LOBYTE(v10) = !v14;
LABEL_42:

  return v10;
}

+ (BOOL)_trackedEventProperty:(unint64_t)property wasOverriddenInEvent:(id)event fromAutocompleteResult:(id)result
{
  eventCopy = event;
  resultCopy = result;
  if (![self _trackedEventProperty:property isPresentInAutocompleteResult:resultCopy])
  {
    goto LABEL_39;
  }

  if (property > 5)
  {
    if (property > 8)
    {
      if (property == 9)
      {
        notes = [eventCopy URL];
        notes2 = [resultCopy URL];
      }

      else
      {
        if (property != 10)
        {
          goto LABEL_38;
        }

        notes = [eventCopy notes];
        notes2 = [resultCopy notes];
      }
    }

    else
    {
      if (property == 6)
      {
        alarms = [eventCopy alarms];
        v32 = [alarms count];
        alarms2 = [resultCopy alarms];
        v34 = [alarms2 count];

        if (v32 == v34)
        {
          alarms3 = [eventCopy alarms];
          v36 = [alarms3 count];

          if (v36)
          {
            v37 = 0;
            do
            {
              alarms4 = [eventCopy alarms];
              v39 = [alarms4 objectAtIndexedSubscript:v37];
              alarms5 = [resultCopy alarms];
              v41 = [alarms5 objectAtIndexedSubscript:v37];
              v27 = [v39 isTopographicallyEqualToAlarm:v41];

              if ((v27 & 1) == 0)
              {
                break;
              }

              ++v37;
              alarms6 = [eventCopy alarms];
              v43 = [alarms6 count];
            }

            while (v37 != v43);
            goto LABEL_29;
          }

LABEL_39:
          v14 = 0;
          goto LABEL_40;
        }

LABEL_37:
        v14 = 1;
        goto LABEL_40;
      }

      if (property != 7)
      {
LABEL_38:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[EKUIAutocompleteTracker _trackedEventProperty:wasOverriddenInEvent:fromAutocompleteResult:]"];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EKUIAutocompleteTracker.m" lineNumber:318 description:{@"Unknown property id %lu in %@", property, v56}];

        goto LABEL_39;
      }

      notes = [eventCopy calendar];
      notes2 = [resultCopy calendar];
    }

    preferredLocation = notes2;
    v30 = [notes isEqual:notes2];
    goto LABEL_34;
  }

  if (property <= 1)
  {
    if (property)
    {
      if (property == 1)
      {
        notes = [resultCopy preferredLocation];
        if (!notes)
        {
          v14 = 0;
          goto LABEL_36;
        }

        preferredLocation = [eventCopy preferredLocation];
        preferredLocation2 = [resultCopy preferredLocation];
        v14 = [preferredLocation isEqualToLocation:preferredLocation2] ^ 1;

LABEL_35:
LABEL_36:

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    notes = [eventCopy title];
    preferredLocation = [resultCopy title];
    v30 = [notes isEqualToString:preferredLocation];
LABEL_34:
    v14 = v30 ^ 1;
    goto LABEL_35;
  }

  if (property != 2)
  {
    if (property == 5)
    {
      attendees = [eventCopy attendees];
      v17 = [attendees count];
      attendees2 = [resultCopy attendees];
      v19 = [attendees2 count];

      if (v17 == v19)
      {
        attendees3 = [eventCopy attendees];
        v21 = [attendees3 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            attendees4 = [eventCopy attendees];
            v24 = [attendees4 objectAtIndexedSubscript:v22];
            attendees5 = [resultCopy attendees];
            v26 = [attendees5 objectAtIndexedSubscript:v22];
            v27 = [v24 isEqualToParticipant:v26];

            if ((v27 & 1) == 0)
            {
              break;
            }

            ++v22;
            attendees6 = [eventCopy attendees];
            v29 = [attendees6 count];
          }

          while (v22 != v29);
LABEL_29:
          v14 = v27 ^ 1;
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  startDate = [eventCopy startDate];
  startDate2 = [resultCopy startDate];
  v46 = [startDate isEqualToDate:startDate2];

  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  endDate = [resultCopy endDate];
  v49 = [endDateUnadjustedForLegacyClients isEqualToDate:endDate];

  LODWORD(endDateUnadjustedForLegacyClients) = [eventCopy isAllDay];
  v50 = endDateUnadjustedForLegacyClients ^ [resultCopy allDay];
  timeZone = [resultCopy timeZone];
  if (timeZone)
  {
    timeZone2 = [eventCopy timeZone];
    timeZone3 = [resultCopy timeZone];
    v54 = [timeZone2 isEqualToTimeZone:timeZone3] ^ 1;
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  v14 = v46 & v49 ^ 1 | v50 | v54;
LABEL_40:

  return v14 & 1;
}

@end