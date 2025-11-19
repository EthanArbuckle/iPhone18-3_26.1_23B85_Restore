@interface CalendarItemSource
+ (id)sharedDateFormatter;
+ (id)subtitleFromEventName:(id)a3 eventDate:(id)a4;
+ (void)initialize;
- (BOOL)shouldIncludeEvent:(id)a3;
- (CalendarItemSource)init;
- (id)_nextUpdateDate;
- (id)allItems;
- (id)predicateForDateRangeSince:(id)a3;
- (id)predicateForIncompleteReminders;
- (id)predicateForRemindersDueAfter:(id)a3;
- (void)_clearUpdateTimer;
- (void)_scheduleUpdateTimer;
- (void)_updateCalendarItems;
- (void)applicationWillEnterForeground:(id)a3;
- (void)dateHasChanged:(id)a3;
- (void)excludeItemsFromSource:(id)a3;
- (void)loadCalendarItems;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation CalendarItemSource

- (BOOL)shouldIncludeEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 structuredLocation];

  if (v4 && ([v3 structuredLocation], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isPrediction"), v5, (v6 & 1) == 0))
  {
    v8 = [v3 selfAttendee];
    v9 = v8;
    v7 = !v8 || ([v8 participantStatus] & 0xFFFFFFFFFFFFFFFDLL) != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateCalendarItems
{
  if (byte_10195F000)
  {
    v31 = +[NSMutableArray array];
    v36 = +[NSDate date];
    v3 = [(CalendarItemSource *)self predicateForDateRangeSince:?];
    v4 = +[MapsSuggestionsSharedEventStore sharedEventStore];
    v35 = v3;
    v5 = [v4 eventsMatchingPredicate:v3];

    v6 = dispatch_group_create();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("_updateCalendarItems", v7);

    v9 = [(PersonalizedItemSource *)self->_exclusionSource allItems];
    v10 = +[NSMutableSet set];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v55 + 1) + 8 * i) keys];
          if (v15)
          {
            [v10 unionSet:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v12);
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100D06738;
    v50[3] = &unk_101651280;
    v33 = v10;
    v51 = v33;
    v34 = v8;
    v52 = v34;
    v53 = self;
    v32 = v31;
    v54 = v32;
    v16 = objc_retainBlock(v50);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          if ([(CalendarItemSource *)self shouldIncludeEvent:v22])
          {
            dispatch_group_enter(v6);
            v23 = [v22 structuredLocation];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100D06878;
            v43[3] = &unk_1016512A8;
            v45 = v16;
            v43[4] = v22;
            v44 = v6;
            sub_100D068FC(v23, v43);
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v61 count:16];
      }

      while (v19);
    }

    v24 = [(CalendarItemSource *)self predicateForIncompleteReminders];
    dispatch_group_enter(v6);
    v25 = +[MapsSuggestionsSharedEventStore sharedEventStore];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100D06B44;
    v40[3] = &unk_1016552A8;
    v41 = v6;
    v42 = v16;
    v26 = v16;
    v27 = v6;
    v28 = [v25 fetchRemindersMatchingPredicate:v24 completion:v40];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D06DA8;
    block[3] = &unk_101661A90;
    block[4] = self;
    v39 = v32;
    v29 = v32;
    dispatch_group_notify(v27, &_dispatch_main_q, block);
  }

  else
  {
    lockQueue = self->_lockQueue;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100D06710;
    v60[3] = &unk_101661B18;
    v60[4] = self;
    dispatch_sync(lockQueue, v60);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100D06730;
    v59[3] = &unk_101661B18;
    v59[4] = self;
    dispatch_async(&_dispatch_main_q, v59);
  }
}

- (void)loadCalendarItems
{
  updateQueue = self->_updateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D07234;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (id)predicateForIncompleteReminders
{
  v2 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v3 = [v2 predicateForIncompleteRemindersWithDueDateStarting:0 ending:0 calendars:0];

  return v3;
}

- (id)predicateForRemindersDueAfter:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setDay:7];
  v6 = [v4 dateByAddingComponents:v5 toDate:v3 options:0];
  v7 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v8 = [v7 predicateForIncompleteRemindersWithDueDateStarting:v3 ending:v6 calendars:0];

  return v8;
}

- (id)predicateForDateRangeSince:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setDay:7];
  v6 = [v4 dateByAddingComponents:v5 toDate:v3 options:0];
  v7 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v8 = [v7 predicateForEventsWithStartDate:v3 endDate:v6 calendars:0];

  return v8;
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100D0753C;
  v10 = sub_100D0754C;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100D07554;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nextUpdateDate
{
  v2 = +[NSDate date];
  v3 = +[NSTimeZone localTimeZone];
  v4 = [v2 _maps_nextDayAtHour:0 timeZone:v3];

  return v4;
}

- (void)_scheduleUpdateTimer
{
  v6 = [(CalendarItemSource *)self _nextUpdateDate];
  v3 = [[NSTimer alloc] initWithFireDate:v6 interval:self target:"dateHasChanged:" selector:0 userInfo:0 repeats:0.0];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v3;

  v5 = +[NSRunLoop mainRunLoop];
  [v5 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];
}

- (void)_clearUpdateTimer
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)dateHasChanged:(id)a3
{
  [(CalendarItemSource *)self _clearUpdateTimer];
  [(CalendarItemSource *)self _scheduleUpdateTimer];

  [(CalendarItemSource *)self loadCalendarItems];
}

- (void)excludeItemsFromSource:(id)a3
{
  objc_storeStrong(&self->_exclusionSource, a3);
  v5 = a3;
  [v5 addObserver:self];
}

- (void)applicationWillEnterForeground:(id)a3
{
  [(CalendarItemSource *)self _clearUpdateTimer];

  [(CalendarItemSource *)self _scheduleUpdateTimer];
}

- (void)userDefaultsDidChange:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__personalizedMapsCalendarItemsUseGenericPOI"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"__personalizedMapsCalendarEnabled"];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"__personalizedMapsCalendarDisableCanonicalLookupSearch"];

  if (byte_10195EFE1 != v5 || byte_10195F000 != v7 || byte_10195EFE0 != v9)
  {
    byte_10195EFE1 = v5;
    byte_10195F000 = v7;
    byte_10195EFE0 = v9;

    [(CalendarItemSource *)self loadCalendarItems];
  }
}

- (CalendarItemSource)init
{
  v17.receiver = self;
  v17.super_class = CalendarItemSource;
  v2 = [(CalendarItemSource *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CalendarItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("calendar item source", v6);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v7;

    v9 = +[NSUserDefaults standardUserDefaults];
    byte_10195EFE1 = [v9 BOOLForKey:@"__personalizedMapsCalendarItemsUseGenericPOI"];

    v10 = +[NSUserDefaults standardUserDefaults];
    byte_10195F000 = [v10 BOOLForKey:@"__personalizedMapsCalendarEnabled"];

    v11 = +[NSUserDefaults standardUserDefaults];
    byte_10195EFE0 = [v11 BOOLForKey:@"__personalizedMapsCalendarDisableCanonicalLookupSearch"];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"eventStoreDidChange:" name:EKEventStoreChangedNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    [(CalendarItemSource *)v2 _scheduleUpdateTimer];
  }

  return v2;
}

+ (id)subtitleFromEventName:(id)a3 eventDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CalendarItemSource sharedDateFormatter];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 stringFromDate:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = v5;
  if ([v10 length])
  {
    v11 = [NSString stringWithFormat:@"\b%@\b", v10];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  v13 = v9;
  if ([v13 length])
  {
    v14 = [NSString stringWithFormat:@"\b%@\b", v13];
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = v12;
  v17 = v15;
  if ([v16 length])
  {
    if ([v17 length])
    {
      v18 = [NSString stringWithFormat:@"%@\n%@", v16, v17];
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;

  return v19;
}

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CalendarItemSource;
  objc_msgSendSuper2(&v2, "initialize");
  if (qword_10195EFF8 != -1)
  {
    dispatch_once(&qword_10195EFF8, &stru_101651230);
  }
}

+ (id)sharedDateFormatter
{
  if (qword_10195EFF0 != -1)
  {
    dispatch_once(&qword_10195EFF0, &stru_101651210);
  }

  v3 = qword_10195EFE8;

  return v3;
}

@end