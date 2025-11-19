@interface EKUIAutocompleteTracker
+ (BOOL)_trackedEventProperty:(unint64_t)a3 isPresentInAutocompleteResult:(id)a4;
+ (BOOL)_trackedEventProperty:(unint64_t)a3 wasOverriddenInEvent:(id)a4 fromAutocompleteResult:(id)a5;
+ (id)propertyName:(unint64_t)a3;
- (BOOL)_trackedEventProperty:(unint64_t)a3 wasSetInNewEvent:(id)a4;
- (void)_augmentPayload:(id)a3 withEvent:(id)a4 selectedResult:(id)a5 selectedIndex:(unint64_t)a6 isZKW:(BOOL)a7;
- (void)finalizeAutocompleteTrackingOnSave:(BOOL)a3 withEvent:(id)a4 selectedResult:(id)a5 selectedIndex:(unint64_t)a6 isZKW:(BOOL)a7;
@end

@implementation EKUIAutocompleteTracker

- (void)finalizeAutocompleteTrackingOnSave:(BOOL)a3 withEvent:(id)a4 selectedResult:(id)a5 selectedIndex:(unint64_t)a6 isZKW:(BOOL)a7
{
  v7 = a7;
  v10 = a3;
  v31[8] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!self->_hasFinalizedTracking)
  {
    v25 = v7;
    self->_hasFinalizedTracking = 1;
    v24 = a6;
    if (v13)
    {
      v15 = a6 + 1;
    }

    else
    {
      v15 = 0;
    }

    v29 = v12;
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
    v26 = v10;
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v31[6] = v20;
    v30[7] = @"WhichResultSelected";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v31[7] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
    v23 = [v22 mutableCopy];

    v12 = v29;
    if (v14 && self->_finalNumberOfAutocompleteResults && v26)
    {
      [(EKUIAutocompleteTracker *)self _augmentPayload:v23 withEvent:v29 selectedResult:v14 selectedIndex:v24 isZKW:v25];
    }

    CalAnalyticsSendEvent();
  }
}

- (void)_augmentPayload:(id)a3 withEvent:(id)a4 selectedResult:(id)a5 selectedIndex:(unint64_t)a6 isZKW:(BOOL)a7
{
  v7 = a7;
  v30 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v7)
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
    v14 = [v12 source] == 2;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [v30 setObject:v15 forKeyedSubscript:@"SelectionType"];

  v29 = 0;
  for (i = 0; i != 11; ++i)
  {
    v17 = [(EKUIAutocompleteTracker *)self _trackedEventProperty:i wasSetInNewEvent:v11];
    v18 = [objc_opt_class() _trackedEventProperty:i isPresentInAutocompleteResult:v13];
    v19 = [objc_opt_class() _trackedEventProperty:i wasOverriddenInEvent:v11 fromAutocompleteResult:v13];
    v20 = v19;
    if (v17 && ((v18 ^ 1 | v19) & 1) != 0)
    {
      v29 |= [objc_opt_class() _isChangeToTrackedPropertySignificant:i];
    }

    v21 = [EKUIAutocompleteTracker propertyName:i];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    v23 = [v21 stringByAppendingString:@"SetInEvent"];
    [v30 setObject:v22 forKeyedSubscript:v23];

    v24 = [MEMORY[0x1E696AD98] numberWithBool:v18];
    v25 = [v21 stringByAppendingString:@"PresentInResult"];
    [v30 setObject:v24 forKeyedSubscript:v25];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:v20 & 1];
    v27 = [v21 stringByAppendingString:@"Overridden"];
    [v30 setObject:v26 forKeyedSubscript:v27];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithInt:(v29 & 1) == 0];
  [v30 setObject:v28 forKeyedSubscript:@"CompleteWin"];
}

+ (id)propertyName:(unint64_t)a3
{
  if (a3 - 1 > 0xA)
  {
    return @"Title";
  }

  else
  {
    return off_1E8441B20[a3 - 1];
  }
}

+ (BOOL)_trackedEventProperty:(unint64_t)a3 isPresentInAutocompleteResult:(id)a4
{
  v7 = a4;
  v8 = v7;
  v9 = 1;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 != 6)
      {
        goto LABEL_26;
      }

      v11 = [v7 alarms];
      goto LABEL_20;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        v10 = [v7 URL];
      }

      else
      {
        if (a3 != 10)
        {
          goto LABEL_17;
        }

        v10 = [v7 notes];
      }

      v9 = v10 != 0;

      goto LABEL_26;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_26;
  }

  if (a3 > 2)
  {
    if (a3 - 3 >= 2)
    {
      if (a3 == 5)
      {
        v11 = [v7 attendees];
LABEL_20:
        v14 = v11;
        v9 = [v11 count] != 0;
LABEL_25:

        goto LABEL_26;
      }

LABEL_17:
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[EKUIAutocompleteTracker _trackedEventProperty:isPresentInAutocompleteResult:]"];
      [v12 handleFailureInMethod:a2 object:a1 file:@"EKUIAutocompleteTracker.m" lineNumber:206 description:{@"Unknown property id %lu in %@", a3, v13}];

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  if (a3 == 1)
  {
    v14 = [v7 clientLocation];
    if (!v14)
    {
      v15 = [v8 structuredLocation];
      v9 = v15 != 0;
    }

    goto LABEL_25;
  }

  if (a3 != 2)
  {
    goto LABEL_17;
  }

LABEL_26:

  return v9;
}

- (BOOL)_trackedEventProperty:(unint64_t)a3 wasSetInNewEvent:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v15 = [v7 attendees];
      }

      else
      {
        if (a3 != 6)
        {
          v9 = [v7 calendar];
          v10 = [v9 isEqual:self->_initialCalendar] ^ 1;
LABEL_41:

          goto LABEL_42;
        }

        v15 = [v7 alarms];
      }

      v9 = v15;
      LOBYTE(v10) = [v15 count] != 0;
      goto LABEL_41;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        v11 = [v7 URL];
        goto LABEL_21;
      }

      if (a3 == 10)
      {
        v11 = [v7 notes];
LABEL_21:
        LOBYTE(v10) = v11 != 0;

        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if ([v7 allowsAvailabilityModifications] && objc_msgSend(v8, "availability"))
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

  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    if (a3 != 1)
    {
LABEL_31:
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EKUIAutocompleteTracker _trackedEventProperty:wasSetInNewEvent:]"];
      [v18 handleFailureInMethod:a2 object:self file:@"EKUIAutocompleteTracker.m" lineNumber:243 description:{@"Unknown property id %lu in %@", a3, v19}];

LABEL_38:
      LOBYTE(v10) = 0;
      goto LABEL_42;
    }

    v9 = [v7 location];
    if (!v9)
    {
      v12 = [v8 preferredLocation];
      LOBYTE(v10) = v12 != 0;

      goto LABEL_41;
    }

LABEL_32:
    LOBYTE(v10) = 1;
    goto LABEL_41;
  }

  if (a3 == 2)
  {
    if (self->_initialIsAllDay != [v7 isAllDay])
    {
      goto LABEL_30;
    }

    v9 = [v8 startDate];
    if ([v9 isEqualToDate:self->_initialStartDate])
    {
      v16 = [v8 endDateUnadjustedForLegacyClients];
      if ([v16 isEqualToDate:self->_initialEndDate])
      {
        v17 = [v8 timeZone];
        v10 = [v17 isEqualToTimeZone:self->_initialTimeZone] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 1;
      }

      goto LABEL_41;
    }

    goto LABEL_32;
  }

  if (a3 != 3)
  {
    LOBYTE(v10) = [v7 hasRecurrenceRules];
    goto LABEL_42;
  }

  [v7 travelTime];
  v14 = v13 == 0.0;
LABEL_35:
  LOBYTE(v10) = !v14;
LABEL_42:

  return v10;
}

+ (BOOL)_trackedEventProperty:(unint64_t)a3 wasOverriddenInEvent:(id)a4 fromAutocompleteResult:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (![a1 _trackedEventProperty:a3 isPresentInAutocompleteResult:v10])
  {
    goto LABEL_39;
  }

  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        v11 = [v9 URL];
        v15 = [v10 URL];
      }

      else
      {
        if (a3 != 10)
        {
          goto LABEL_38;
        }

        v11 = [v9 notes];
        v15 = [v10 notes];
      }
    }

    else
    {
      if (a3 == 6)
      {
        v31 = [v9 alarms];
        v32 = [v31 count];
        v33 = [v10 alarms];
        v34 = [v33 count];

        if (v32 == v34)
        {
          v35 = [v9 alarms];
          v36 = [v35 count];

          if (v36)
          {
            v37 = 0;
            do
            {
              v38 = [v9 alarms];
              v39 = [v38 objectAtIndexedSubscript:v37];
              v40 = [v10 alarms];
              v41 = [v40 objectAtIndexedSubscript:v37];
              v27 = [v39 isTopographicallyEqualToAlarm:v41];

              if ((v27 & 1) == 0)
              {
                break;
              }

              ++v37;
              v42 = [v9 alarms];
              v43 = [v42 count];
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

      if (a3 != 7)
      {
LABEL_38:
        v55 = [MEMORY[0x1E696AAA8] currentHandler];
        v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[EKUIAutocompleteTracker _trackedEventProperty:wasOverriddenInEvent:fromAutocompleteResult:]"];
        [v55 handleFailureInMethod:a2 object:a1 file:@"EKUIAutocompleteTracker.m" lineNumber:318 description:{@"Unknown property id %lu in %@", a3, v56}];

        goto LABEL_39;
      }

      v11 = [v9 calendar];
      v15 = [v10 calendar];
    }

    v12 = v15;
    v30 = [v11 isEqual:v15];
    goto LABEL_34;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v11 = [v10 preferredLocation];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_36;
        }

        v12 = [v9 preferredLocation];
        v13 = [v10 preferredLocation];
        v14 = [v12 isEqualToLocation:v13] ^ 1;

LABEL_35:
LABEL_36:

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v11 = [v9 title];
    v12 = [v10 title];
    v30 = [v11 isEqualToString:v12];
LABEL_34:
    v14 = v30 ^ 1;
    goto LABEL_35;
  }

  if (a3 != 2)
  {
    if (a3 == 5)
    {
      v16 = [v9 attendees];
      v17 = [v16 count];
      v18 = [v10 attendees];
      v19 = [v18 count];

      if (v17 == v19)
      {
        v20 = [v9 attendees];
        v21 = [v20 count];

        if (v21)
        {
          v22 = 0;
          do
          {
            v23 = [v9 attendees];
            v24 = [v23 objectAtIndexedSubscript:v22];
            v25 = [v10 attendees];
            v26 = [v25 objectAtIndexedSubscript:v22];
            v27 = [v24 isEqualToParticipant:v26];

            if ((v27 & 1) == 0)
            {
              break;
            }

            ++v22;
            v28 = [v9 attendees];
            v29 = [v28 count];
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

  v44 = [v9 startDate];
  v45 = [v10 startDate];
  v46 = [v44 isEqualToDate:v45];

  v47 = [v9 endDateUnadjustedForLegacyClients];
  v48 = [v10 endDate];
  v49 = [v47 isEqualToDate:v48];

  LODWORD(v47) = [v9 isAllDay];
  v50 = v47 ^ [v10 allDay];
  v51 = [v10 timeZone];
  if (v51)
  {
    v52 = [v9 timeZone];
    v53 = [v10 timeZone];
    v54 = [v52 isEqualToTimeZone:v53] ^ 1;
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