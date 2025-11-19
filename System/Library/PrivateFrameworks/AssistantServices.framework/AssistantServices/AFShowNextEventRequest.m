@interface AFShowNextEventRequest
+ (id)_calendarIDsForSyncHashes:(id)a3 inCalendars:(id)a4;
- (BOOL)_shouldExcludeEvent:(id)a3 allowAllDayEvents:(BOOL)a4;
- (id)_nextEventFromFilteredEvents:(id)a3;
- (id)_selectedCalendarsForEventStore:(id)a3;
- (void)_ad_handleShowNextEventRequestWithCompletionHandler:(id)a3;
@end

@implementation AFShowNextEventRequest

- (id)_selectedCalendarsForEventStore:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [off_10058E068() shared];
    if (!v4)
    {
      v5 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "[AFShowNextEventRequest(ADShowNextEventRequestHandler) _selectedCalendarsForEventStore:]";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unable to get the shared instance of EKPreferences.", buf, 0xCu);
      }
    }

    v21 = v4;
    v6 = [v4 deselectedCalendarSyncHashes];
    v7 = [v3 calendarsForEntityType:0];
    v20 = v6;
    v8 = [objc_opt_class() _calendarIDsForSyncHashes:v6 inCalendars:v7];
    v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
    v10 = [NSSet setWithArray:v8];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 calendarIdentifier];
          if (v17 && ([v10 containsObject:v17] & 1) == 0)
          {
            [v9 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v18 = [v9 allObjects];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_shouldExcludeEvent:(id)a3 allowAllDayEvents:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 calendar];
  v7 = [v6 type];

  v8 = [v5 isAllDay];
  v9 = [v5 status];
  if ([v5 hasAttendees])
  {
    v10 = [v5 organizer];
    v11 = ([v10 isCurrentUser] & 1) == 0 && objc_msgSend(v5, "selfParticipantStatus") == 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = !a4;
  if (v7 == 4)
  {
    v12 = 1;
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (!v8)
  {
    v12 = v13;
  }

  v14 = v9 == 3 || v11;
  v15 = v14 | v12;

  return v15 & 1;
}

- (id)_nextEventFromFilteredEvents:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {
    v19 = 0;
    goto LABEL_29;
  }

  sub_1002F2470();
  +[NSDate CalDateForNow];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002F24D0;
  v4 = v28[3] = &unk_10051AF60;
  v29 = v4;
  v5 = [v3 indexesOfObjectsPassingTest:v28];
  if ([v5 count])
  {
    v6 = [v3 objectAtIndex:{objc_msgSend(v5, "lastIndex")}];
    [v6 duration];
    v8 = v7;
    v9 = [v6 startDate];
    [v4 timeIntervalSinceDate:v9];
    v11 = v10;

    if (v11 / v8 < 0.5)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v3 mutableCopy];
    if ([v5 count])
    {
      [v14 removeObjectsAtIndexes:v5];
    }

    v15 = [v14 firstObject];
    v16 = v15;
    if (v13)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v27 = [v13 startDate];
      v20 = [v16 startDate];
      v21 = [off_10058E060() rangeWithStartDate:v27 endDate:v20];
      v22 = [v21 midpoint];

      v23 = [v4 CalIsBeforeDate:v22];
      if (v23)
      {
        v24 = v13;
      }

      else
      {
        v24 = v16;
      }

      if (v23)
      {
        v19 = v6;
      }

      else
      {
        v19 = v16;
      }

      v25 = v24;

      goto LABEL_27;
    }

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      if (!v6)
      {
        v19 = 0;
        goto LABEL_27;
      }

      v18 = v6;
    }

    v19 = v18;
LABEL_27:

    goto LABEL_28;
  }

  v19 = [v3 firstObject];
LABEL_28:

LABEL_29:

  return v19;
}

- (void)_ad_handleShowNextEventRequestWithCompletionHandler:(id)a3
{
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1002F29FC;
  v42[3] = &unk_10051AF38;
  v4 = a3;
  v43 = v4;
  v5 = objc_retainBlock(v42);
  v6 = objc_alloc_init(off_10058E058());
  v7 = [(AFShowNextEventRequest *)self _selectedCalendarsForEventStore:v6];
  v8 = [v7 count];
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_18;
  }

  v35 = v5;
  v36 = v4;
  sub_1002F2470();
  v10 = +[NSDate CalDateForNow];
  v32 = +[NSCalendar currentCalendar];
  [v10 dateByAddingWeeks:1 inCalendar:?];
  v31 = v33 = v10;
  v11 = [objc_alloc(off_10058E060()) initWithStartDate:v10 endDate:v31];
  v12 = [v11 startDate];
  v13 = [v11 endDate];
  v34 = v7;
  v14 = [v6 predicateForEventsWithStartDate:v12 endDate:v13 calendars:v7];

  v30 = v14;
  v15 = [v6 eventsMatchingPredicate:v14];
  v16 = [v15 sortedArrayUsingSelector:"compareStartDateWithEvent:"];
  v17 = +[NSMutableArray array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        if (![(AFShowNextEventRequest *)self _shouldExcludeEvent:v23 allowAllDayEvents:0])
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v20);
  }

  v24 = [(AFShowNextEventRequest *)self _nextEventFromFilteredEvents:v17];

  v5 = v35;
  v4 = v36;
  v7 = v34;
  if (!v24)
  {
LABEL_18:
    v24 = [NSError ad_calendarErrorWithCode:100];
    (v5[2])(v5, 0, v24);
  }

  else
  {
    v25 = AFIsNano();
    v26 = @"com.apple.mobilecal";
    if (v25)
    {
      v26 = @"com.apple.NanoCalendar";
    }

    v27 = v26;
    v28 = [objc_opt_class() nanoCalendarLaunchURLForEvent:v24];
    v29 = +[ADCommandCenter sharedCommandCenter];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1002F2A14;
    v37[3] = &unk_10051C718;
    v37[4] = self;
    v37[5] = v35;
    [v29 openApplicationWithBundleID:v27 URL:v28 completion:v37];
  }
}

+ (id)_calendarIDsForSyncHashes:(id)a3 inCalendars:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  v8 = [NSMutableArray arrayWithCapacity:v7];
  v9 = [NSMutableArray arrayWithCapacity:v7];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v30 + 1) + 8 * i) selectionSyncIdentifier];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v9 indexOfObject:{*(*(&v26 + 1) + 8 * j), v26}];
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [v10 objectAtIndexedSubscript:v21];
          v23 = [v22 calendarIdentifier];
          [v8 addObject:v23];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v8 copy];

  return v24;
}

@end