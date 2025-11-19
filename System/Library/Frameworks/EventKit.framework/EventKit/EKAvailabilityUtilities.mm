@interface EKAvailabilityUtilities
+ (BOOL)canSeeAttendeeStatusesForEvent:(id)a3;
+ (BOOL)spansIncludeBusyPeriod:(id)a3;
+ (id)getCALFreeBusyFromEKSpans:(id)a3 inRange:(id)a4;
+ (id)getCALFreeBusyFromResults:(id)a3 forAttendees:(id)a4 inRange:(id)a5;
+ (int)CALFreeBusyTypeFromEKAvailType:(int64_t)a3;
+ (int)leastAvailabileFreeBusyTypeForArray:(id)a3;
+ (int64_t)availabilityPanelVisibilityForEvent:(id)a3;
+ (int64_t)orderForType:(int64_t)a3;
+ (int64_t)summarizedAvailabilityTypeForSpans:(id)a3;
@end

@implementation EKAvailabilityUtilities

+ (int)CALFreeBusyTypeFromEKAvailType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1A81C3D40[a3 - 1];
  }
}

+ (int)leastAvailabileFreeBusyTypeForArray:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
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
        v10 = [v9 integerValue];

        if (v7 >= v10)
        {
          v7 = v10;
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

+ (id)getCALFreeBusyFromEKSpans:(id)a3 inRange:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if (v5 && [v5 count])
  {
    v8 = [v5 firstObject];
    v9 = [v6 startDate];
    v10 = [v8 startDate];
    v11 = [v9 isBeforeDate:v10];

    if (v11)
    {
      v12 = [v6 startDate];
      [v7 addObject:v12];

      [v7 addObject:&unk_1F1B6AC18];
    }

    v29 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v5;
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
          v19 = [v18 startDate];
          [v7 addObject:v19];

          v20 = [MEMORY[0x1E696AD98] numberWithInt:{+[EKAvailabilityUtilities CALFreeBusyTypeFromEKAvailType:](EKAvailabilityUtilities, "CALFreeBusyTypeFromEKAvailType:", objc_msgSend(v18, "type"))}];
          [v7 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    v21 = [v13 lastObject];
    if (v21)
    {
      v22 = [v6 endDate];
      v23 = [v21 endDate];
      v24 = [v22 isAfterDate:v23];

      if (v24)
      {
        v25 = [v21 endDate];
        [v7 addObject:v25];

        [v7 addObject:&unk_1F1B6AC18];
      }
    }

    v5 = v29;
  }

  else
  {
    v26 = [v6 startDate];
    [v7 addObject:v26];

    [v7 addObject:&unk_1F1B6AC18];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getCALFreeBusyFromResults:(id)a3 forAttendees:(id)a4 inRange:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
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
        if (v7)
        {
          v16 = [v7 objectForKeyedSubscript:v14];
        }

        else
        {
          v16 = 0;
        }

        [v15 sanitizeAndInsertResults:v16 inRange:v9];
        v17 = [v15 spans];
        v18 = [v17 count];

        if (v18)
        {
          v19 = objc_opt_class();
          v20 = [v15 spans];
          v21 = [v19 getCALFreeBusyFromEKSpans:v20 inRange:v9];
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

+ (int64_t)summarizedAvailabilityTypeForSpans:(id)a3
{
  v4 = a3;
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
  v7[6] = a1;
  [v4 enumerateObjectsUsingBlock:v7];
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

+ (BOOL)spansIncludeBusyPeriod:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EKAvailabilityUtilities_spansIncludeBusyPeriod___block_invoke;
  v6[3] = &unk_1E77FF010;
  v6[4] = &v7;
  v6[5] = a1;
  [v4 enumerateObjectsUsingBlock:v6];
  LOBYTE(a1) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return a1;
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

+ (int64_t)availabilityPanelVisibilityForEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 constraints];
    v7 = [v6 supportsAvailabilityRequests];

    if (v7)
    {
      if ([v5 isAllDay])
      {
        v8 = 3;
      }

      else
      {
        v10 = [MEMORY[0x1E6992F28] activeCalendar];
        v11 = [v5 isMultiDayTimedEventInCalendar:v10];

        if (v11)
        {
          v8 = 4;
        }

        else if ([v5 hasAttendees])
        {
          if ([a1 canSeeAttendeeStatusesForEvent:v5])
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

+ (BOOL)canSeeAttendeeStatusesForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];

  if (v4)
  {
    if ([v3 isNew])
    {
      v5 = [v3 hasAttendees];
    }

    else
    {
      v5 = 0;
    }

    v7 = [v3 organizer];
    if (v7)
    {
      v8 = [v3 organizer];
      v9 = [v8 isCurrentUser];
    }

    else
    {
      v9 = 0;
    }

    v10 = v5 | v9;
    v11 = [v3 calendar];
    v12 = [v11 source];
    v13 = [v12 _constraintsInternal];
    v14 = v13;
    if (v10)
    {
      v15 = [v13 organizerCanSeeAttendeeStatuses];
    }

    else
    {
      v15 = [v13 inviteesCanSeeAttendeeStatuses];
    }

    v6 = v15;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)orderForType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1A81C3D60[a3];
  }
}

@end