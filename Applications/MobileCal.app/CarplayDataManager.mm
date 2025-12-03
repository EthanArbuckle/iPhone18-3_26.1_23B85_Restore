@interface CarplayDataManager
- (CUIKOccurrencesCollection)loadedEventCollection;
- (CUIKOccurrencesCollection)tomorrowLoadedEventCollection;
- (CarplayDataManager)initWithEventStore:(id)store;
- (id)_calendarOccurrencesCollectionFromPredicate:(id)predicate;
- (id)_selectedCalendars;
- (id)collectionForDayType:(int64_t)type;
- (void)_fetchUpcomingOccurrences:(id)occurrences;
- (void)_timeZoneChanged:(id)changed;
- (void)reloadEvents:(id)events;
@end

@implementation CarplayDataManager

- (CarplayDataManager)initWithEventStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CarplayDataManager;
  v6 = [(CarplayDataManager *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.mobilecal.carplay.loading", 0);
    eventLoadingQueue = v6->_eventLoadingQueue;
    v6->_eventLoadingQueue = v7;

    objc_storeStrong(&v6->_eventStore, store);
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"_timeZoneChanged:" name:kCalTimeZoneChangedNotification object:0];
  }

  return v6;
}

- (id)collectionForDayType:(int64_t)type
{
  if (type)
  {
    [(CarplayDataManager *)self tomorrowLoadedEventCollection];
  }

  else
  {
    [(CarplayDataManager *)self loadedEventCollection];
  }
  v3 = ;

  return v3;
}

- (id)_selectedCalendars
{
  v3 = [[EKCalendarVisibilityManager alloc] initWithEventStore:self->_eventStore visibilityChangedCallback:0 queue:0];
  visibleCalendars = [v3 visibleCalendars];
  v5 = [EKCalendarVisibilityManager unselectedCalendarsForFocusModeInEventStore:self->_eventStore];
  if (v5)
  {
    v6 = [NSMutableSet setWithArray:visibleCalendars];
    [v6 minusSet:v5];
    allObjects = [v6 allObjects];

    visibleCalendars = allObjects;
  }

  v8 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [visibleCalendars count]);
    v12 = 136315394;
    v13 = "[CarplayDataManager _selectedCalendars]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s found [%@] selected calendars", &v12, 0x16u);
  }

  return visibleCalendars;
}

- (CUIKOccurrencesCollection)loadedEventCollection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100054B78;
  v10 = sub_100054B88;
  v11 = 0;
  eventLoadingQueue = self->_eventLoadingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054B90;
  v5[3] = &unk_10020F500;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(eventLoadingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CUIKOccurrencesCollection)tomorrowLoadedEventCollection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100054B78;
  v10 = sub_100054B88;
  v11 = 0;
  eventLoadingQueue = self->_eventLoadingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054C94;
  v5[3] = &unk_10020F500;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(eventLoadingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)reloadEvents:(id)events
{
  eventsCopy = events;
  eventLoadingQueue = self->_eventLoadingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100054D40;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(eventLoadingQueue, v7);
}

- (void)_fetchUpcomingOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  v5 = CUIKCalendar();
  v6 = [occurrencesCopy copy];
  [v6 setHour:23];
  [v6 setMinute:59];
  [v6 setSecond:59];
  v7 = [v5 dateFromComponents:occurrencesCopy];
  v8 = [v5 dateFromComponents:v6];
  date = [occurrencesCopy date];

  v46 = date;
  v10 = [date dateByAddingDays:1 inCalendar:v5];
  v11 = [v5 components:254 fromDate:v10];
  [v11 setHour:23];
  [v11 setMinute:59];
  [v11 setSecond:59];
  v12 = [v5 startOfDayForDate:v10];
  v13 = [v5 dateFromComponents:v11];
  _selectedCalendars = [(CarplayDataManager *)self _selectedCalendars];
  v47 = v8;
  v48 = v7;
  v45 = v12;
  if ([_selectedCalendars count])
  {
    v15 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v7 endDate:v8 calendars:_selectedCalendars];
    v16 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v12 endDate:v13 calendars:_selectedCalendars];
    v17 = [(CarplayDataManager *)self _calendarOccurrencesCollectionFromPredicate:v15];
    loadedEventCollection = self->_loadedEventCollection;
    self->_loadedEventCollection = v17;

    v19 = [(CarplayDataManager *)self _calendarOccurrencesCollectionFromPredicate:v16];
    tomorrowLoadedEventCollection = self->_tomorrowLoadedEventCollection;
    self->_tomorrowLoadedEventCollection = v19;
  }

  else
  {
    v21 = [[CUIKOccurrencesCollection alloc] initWithOccurrences:0 timedOccurrences:&__NSArray0__struct allDayOccurrences:&__NSArray0__struct];
    v22 = self->_loadedEventCollection;
    self->_loadedEventCollection = v21;

    v23 = [[CUIKOccurrencesCollection alloc] initWithOccurrences:0 timedOccurrences:&__NSArray0__struct allDayOccurrences:&__NSArray0__struct];
    v15 = self->_tomorrowLoadedEventCollection;
    self->_tomorrowLoadedEventCollection = v23;
  }

  v24 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v25 = self->_loadedEventCollection;
    v26 = v24;
    timedOccurrences = [(CUIKOccurrencesCollection *)v25 timedOccurrences];
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timedOccurrences count]);
    *buf = 136315394;
    v50 = "[CarplayDataManager _fetchUpcomingOccurrences:]";
    v51 = 2112;
    v52 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s fetched [%@] timed occurrences for today", buf, 0x16u);
  }

  v29 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v30 = self->_loadedEventCollection;
    v31 = v29;
    allDayOccurrences = [(CUIKOccurrencesCollection *)v30 allDayOccurrences];
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allDayOccurrences count]);
    *buf = 136315394;
    v50 = "[CarplayDataManager _fetchUpcomingOccurrences:]";
    v51 = 2112;
    v52 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s fetched [%@] all-day occurrences for today", buf, 0x16u);
  }

  v34 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v35 = self->_tomorrowLoadedEventCollection;
    v36 = v34;
    timedOccurrences2 = [(CUIKOccurrencesCollection *)v35 timedOccurrences];
    v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timedOccurrences2 count]);
    *buf = 136315394;
    v50 = "[CarplayDataManager _fetchUpcomingOccurrences:]";
    v51 = 2112;
    v52 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s fetched [%@] timed occurrences for tomorrow", buf, 0x16u);
  }

  v39 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v40 = self->_tomorrowLoadedEventCollection;
    v41 = v39;
    allDayOccurrences2 = [(CUIKOccurrencesCollection *)v40 allDayOccurrences];
    v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allDayOccurrences2 count]);
    *buf = 136315394;
    v50 = "[CarplayDataManager _fetchUpcomingOccurrences:]";
    v51 = 2112;
    v52 = v43;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s fetched [%@] all-day occurrences for tomorrow", buf, 0x16u);
  }

  [(CarplayDataManager *)self setHasEverCompletedFetch:1];
  v44 = +[NSNotificationCenter defaultCenter];
  [v44 postNotificationName:@"com.apple.mobilecal.carplay.kEventFetchCompletedNotification" object:0];
}

- (id)_calendarOccurrencesCollectionFromPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:predicateCopy];
  v8 = [v7 mutableCopy];
  if (([(EKEventStore *)self->_eventStore showDeclinedEvents]& 1) == 0)
  {
    v9 = [NSPredicate predicateWithBlock:&stru_10020F6C8];
    [v8 filterUsingPredicate:v9];
  }

  [v8 sortUsingFunction:&_CUIKCompareEKEvents context:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 isAllDay])
        {
          v16 = v6;
        }

        else
        {
          v16 = v5;
        }

        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [[CUIKOccurrencesCollection alloc] initWithOccurrences:v10 timedOccurrences:v5 allDayOccurrences:v6];

  return v17;
}

- (void)_timeZoneChanged:(id)changed
{
  changedCopy = changed;
  v5 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%@] received notification: [%@]", buf, 0x16u);
  }

  eventLoadingQueue = self->_eventLoadingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000556D0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(eventLoadingQueue, block);
}

@end