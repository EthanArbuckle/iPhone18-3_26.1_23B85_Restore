@interface CHWorkoutDataProvider
+ (id)localizedNameForWorkoutTypeKey:(id)key;
+ (id)localizedShortNameForWorkoutTypeKey:(id)key;
- (BOOL)hasWorkouts;
- (BOOL)isCurrentFilterValid;
- (BOOL)isWatchWorkout:(id)workout;
- (CHWorkoutDataProvider)initWithHealthStore:(id)store;
- (id)_UUIDsForWorkoutsWithEndDate:(id)date;
- (id)unfilteredWorkouts;
- (id)unfilteredWorkoutsWithMaxCount:(int64_t)count;
- (id)workoutsEndingInDateInterval:(id)interval;
- (void)_calculateStatistics;
- (void)_commonInit;
- (void)_countWorkouts;
- (void)_handleInitialResults:(id)results;
- (void)_handleRemovedObjects:(id)objects;
- (void)_queue_sortAllWorkoutsByMonthAndYearWithCurrentFilter;
- (void)_recreateFilterObjects;
- (void)_retryAnchoredObjectQueryWithRetryCount:(unint64_t)count;
- (void)_runAnchoredObjectQueryWithRetryCount:(unint64_t)count;
- (void)_runAnimatedUpdateHandlers;
- (void)_runFilterActionFinishedHandlers;
- (void)_runFilterActionStartedHandlers;
- (void)_runHandlers:(id)handlers;
- (void)_runUpdateHandlers;
- (void)_timeZoneDidChange:(id)change;
- (void)addAnimatedUpdateHandler:(id)handler;
- (void)addFilterActionFinishedHandler:(id)handler;
- (void)addFilterActionStartedHandler:(id)handler;
- (void)addUpdateHandler:(id)handler;
- (void)cancelAllFetches;
- (void)dealloc;
- (void)deleteWorkout:(id)workout shouldDeleteAssociatedSamples:(BOOL)samples completion:(id)completion;
- (void)setCurrentFilteredTypeIdentifier:(id)identifier completion:(id)completion;
- (void)startFetching;
@end

@implementation CHWorkoutDataProvider

- (void)_commonInit
{
  if (!self->_healthStore)
  {
    v3 = objc_alloc_init(HKHealthStore);
    healthStore = self->_healthStore;
    self->_healthStore = v3;
  }

  v5 = objc_alloc_init(HKSortedSampleArray);
  workouts = self->_workouts;
  self->_workouts = v5;

  v7 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:0];
  [(HKSortedSampleArray *)self->_workouts setSortDescriptor:v7];

  workoutsByMonthAndYear = self->_workoutsByMonthAndYear;
  self->_workoutsByMonthAndYear = &__NSDictionary0__struct;

  workoutsByDay = self->_workoutsByDay;
  self->_workoutsByDay = &__NSDictionary0__struct;

  workoutsByIdentifier = self->_workoutsByIdentifier;
  self->_workoutsByIdentifier = &__NSDictionary0__struct;

  sortedDateComponentKeys = self->_sortedDateComponentKeys;
  self->_sortedDateComponentKeys = &__NSArray0__struct;

  sortedYearDateComponents = self->_sortedYearDateComponents;
  self->_sortedYearDateComponents = &__NSArray0__struct;

  dateComponentsByYear = self->_dateComponentsByYear;
  self->_dateComponentsByYear = &__NSDictionary0__struct;

  workoutStatisticsForMonthAndYear = self->_workoutStatisticsForMonthAndYear;
  self->_workoutStatisticsForMonthAndYear = &__NSDictionary0__struct;

  workoutStatisticsForYear = self->_workoutStatisticsForYear;
  self->_workoutStatisticsForYear = &__NSDictionary0__struct;

  workoutCountByTypeIdentifier = self->_workoutCountByTypeIdentifier;
  self->_workoutCountByTypeIdentifier = &__NSDictionary0__struct;

  v17 = objc_alloc_init(NSMutableDictionary);
  localizedWorkoutTypeNamesByTypeIdentifier = self->_localizedWorkoutTypeNamesByTypeIdentifier;
  self->_localizedWorkoutTypeNamesByTypeIdentifier = v17;

  sortedTypeIdentifiers = self->_sortedTypeIdentifiers;
  self->_sortedTypeIdentifiers = &__NSArray0__struct;

  v20 = self->_workoutCountByTypeIdentifier;
  self->_workoutCountByTypeIdentifier = &__NSDictionary0__struct;

  v21 = objc_alloc_init(NSMutableArray);
  updateHandlers = self->_updateHandlers;
  self->_updateHandlers = v21;

  v23 = objc_alloc_init(NSMutableArray);
  animatedUpdateHandlers = self->_animatedUpdateHandlers;
  self->_animatedUpdateHandlers = v23;

  v25 = objc_alloc_init(NSMutableArray);
  filterActionStartedHandlers = self->_filterActionStartedHandlers;
  self->_filterActionStartedHandlers = v25;

  v27 = objc_alloc_init(NSMutableArray);
  filterActionEndedHandlers = self->_filterActionEndedHandlers;
  self->_filterActionEndedHandlers = v27;

  v29 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  gregorianCalendar = self->_gregorianCalendar;
  self->_gregorianCalendar = v29;

  v31 = self->_gregorianCalendar;
  v32 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)v31 setTimeZone:v32];

  v33 = +[NSCalendar autoupdatingCurrentCalendar];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = v33;

  v35 = HKCreateSerialDispatchQueueWithQOSClass();
  sortingQueue = self->_sortingQueue;
  self->_sortingQueue = v35;

  v37 = HKCreateSerialDispatchQueueWithQOSClass();
  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = v37;

  self->_lock._os_unfair_lock_opaque = 0;
  v39 = +[NSNotificationCenter defaultCenter];
  [v39 addObserver:self selector:"_timeZoneDidChange:" name:NSSystemTimeZoneDidChangeNotification object:0];

  self->_demoDataProvider = objc_alloc_init(CHDemoDataProvider);

  _objc_release_x1();
}

- (void)startFetching
{
  if ([(CHDemoDataProvider *)self->_demoDataProvider hasDemoWorkouts])
  {
    workouts = [(CHDemoDataProvider *)self->_demoDataProvider workouts];
    [(CHWorkoutDataProvider *)self _handleInitialResults:workouts];
  }

  else
  {

    [(CHWorkoutDataProvider *)self _runAnchoredObjectQueryWithRetryCount:0];
  }
}

- (void)_recreateFilterObjects
{
  v3 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_workouts;
  v5 = [(HKSortedSampleArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [CHWorkoutTypeKey initForWorkout:*(*(&v13 + 1) + 8 * v8)];
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(HKSortedSampleArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  allObjects = [v3 allObjects];
  [(CHWorkoutDataProvider *)self _countWorkouts];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100117CB4;
  v12[3] = &unk_10083CBB8;
  v12[4] = self;
  v11 = [allObjects sortedArrayUsingComparator:v12];

  [(CHWorkoutDataProvider *)self setSortedTypeIdentifiers:v11];
}

- (void)_countWorkouts
{
  v3 = objc_alloc_init(NSMutableDictionary);
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  obj = self->_workouts;
  v4 = [(HKSortedSampleArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        selfCopy = [CHWorkoutTypeKey initForWorkout:*(*(&v16 + 1) + 8 * v7), selfCopy];
        v9 = [v3 objectForKeyedSubscript:selfCopy];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &off_10086E350;
        }

        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 unsignedIntegerValue] + 1);

        [v3 setObject:v11 forKeyedSubscript:selfCopy];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(HKSortedSampleArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v12 = [[NSDictionary alloc] initWithDictionary:v3];
  workoutCountByTypeIdentifier = selfCopy->_workoutCountByTypeIdentifier;
  selfCopy->_workoutCountByTypeIdentifier = v12;
}

- (void)_queue_sortAllWorkoutsByMonthAndYearWithCurrentFilter
{
  os_unfair_lock_lock(&self->_lock);
  allSamples = [(HKSortedSampleArray *)self->_workouts allSamples];
  v4 = [allSamples copy];

  os_unfair_lock_unlock(&self->_lock);
  v69 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableDictionary);
  v73 = objc_alloc_init(NSMutableDictionary);
  v68 = objc_alloc_init(NSMutableArray);
  v7 = v6;
  v72 = objc_alloc_init(NSMutableDictionary);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v86;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v86 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v85 + 1) + 8 * i);
        uUID = [v12 UUID];
        uUIDString = [uUID UUIDString];
        [v73 setObject:v12 forKeyedSubscript:uUIDString];

        currentCalendar = self->_currentCalendar;
        endDate = [v12 endDate];
        v17 = [(NSCalendar *)currentCalendar components:12 fromDate:endDate];

        v18 = [v5 objectForKeyedSubscript:v17];

        if (!v18)
        {
          [v69 addObject:v17];
          v19 = objc_alloc_init(NSMutableArray);
          [v5 setObject:v19 forKeyedSubscript:v17];
        }

        startDate = [v12 startDate];
        v21 = _HKActivityCacheDateComponentsFromDate();

        v22 = [v7 objectForKeyedSubscript:v21];

        if (!v22)
        {
          v23 = objc_alloc_init(NSMutableArray);
          [v7 setObject:v23 forKeyedSubscript:v21];
        }

        v24 = [v7 objectForKeyedSubscript:v21];
        [v24 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v9);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v70 = v69;
  v25 = [v70 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v82;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v82 != v27)
        {
          objc_enumerationMutation(v70);
        }

        v29 = *(*(&v81 + 1) + 8 * j);
        v30 = self->_currentCalendar;
        v31 = [(NSCalendar *)v30 dateFromComponents:v29];
        v32 = [(NSCalendar *)v30 components:4 fromDate:v31];

        v33 = [v72 objectForKeyedSubscript:v32];
        if (!v33)
        {
          v33 = objc_alloc_init(NSMutableArray);
          [v68 addObject:v32];
        }

        [v33 addObject:v29];
        [v72 setObject:v33 forKeyedSubscript:v32];
      }

      v26 = [v70 countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v26);
  }

  v67 = v7;

  currentFilteredTypeIdentifier = self->_currentFilteredTypeIdentifier;
  selfCopy = self;
  if (currentFilteredTypeIdentifier)
  {
    v35 = +[CHWorkoutTypeKey emptyKey];
    v36 = [(CHWorkoutTypeKey *)currentFilteredTypeIdentifier isEqual:v35];

    if ((v36 & 1) == 0)
    {
      activityType = [(CHWorkoutTypeKey *)self->_currentFilteredTypeIdentifier activityType];
      isIndoor = [(CHWorkoutTypeKey *)self->_currentFilteredTypeIdentifier isIndoor];
      if ([CHWorkoutTypeKey historyFilterDisambiguatesLocationForActivityType:activityType])
      {
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_100117B9C;
        v79[3] = &unk_10083CB30;
        v80 = isIndoor;
        v79[4] = activityType;
        v39 = v79;
      }

      else if (activityType == 77)
      {
        v39 = &stru_10083CB90;
      }

      else
      {
        if (activityType != 46)
        {
          v65 = [NSNumber numberWithUnsignedInteger:[(CHWorkoutTypeKey *)self->_currentFilteredTypeIdentifier activityType]];
          v41 = [NSPredicate predicateWithFormat:@"workoutActivityType==%@", v65];

          goto LABEL_30;
        }

        swimLocationType = [(CHWorkoutTypeKey *)self->_currentFilteredTypeIdentifier swimLocationType];
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_100117C18;
        v78[3] = &unk_10083CB50;
        v78[4] = swimLocationType;
        v39 = v78;
      }

      v41 = [NSPredicate predicateWithBlock:v39];
LABEL_30:
      v42 = [obj filteredArrayUsingPredicate:v41];

      obj = v42;
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = obj;
  v44 = [v43 countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v75;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v75 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v74 + 1) + 8 * k);
        v49 = +[NSCalendar currentCalendar];
        endDate2 = [v48 endDate];
        v51 = [v49 components:12 fromDate:endDate2];

        v52 = [v5 objectForKeyedSubscript:v51];
        [v52 addObject:v48];
        [v5 setObject:v52 forKeyedSubscript:v51];
      }

      v45 = [v43 countByEnumeratingWithState:&v74 objects:v89 count:16];
    }

    while (v45);
  }

  v53 = [[NSDictionary alloc] initWithDictionary:v5];
  workoutsByMonthAndYear = selfCopy->_workoutsByMonthAndYear;
  selfCopy->_workoutsByMonthAndYear = v53;

  v55 = [[NSDictionary alloc] initWithDictionary:v67];
  workoutsByDay = selfCopy->_workoutsByDay;
  selfCopy->_workoutsByDay = v55;

  v57 = [[NSArray alloc] initWithArray:v70];
  sortedDateComponentKeys = selfCopy->_sortedDateComponentKeys;
  selfCopy->_sortedDateComponentKeys = v57;

  v59 = [[NSArray alloc] initWithArray:v68];
  sortedYearDateComponents = selfCopy->_sortedYearDateComponents;
  selfCopy->_sortedYearDateComponents = v59;

  v61 = [[NSDictionary alloc] initWithDictionary:v72];
  dateComponentsByYear = selfCopy->_dateComponentsByYear;
  selfCopy->_dateComponentsByYear = v61;

  v63 = [[NSDictionary alloc] initWithDictionary:v73];
  workoutsByIdentifier = selfCopy->_workoutsByIdentifier;
  selfCopy->_workoutsByIdentifier = v63;

  [(CHWorkoutDataProvider *)selfCopy _calculateStatistics];
}

- (void)_calculateStatistics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v35 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableDictionary);
  workoutStatisticsForMonthAndYear = self->_workoutStatisticsForMonthAndYear;
  self->_workoutStatisticsForMonthAndYear = v4;

  v6 = objc_alloc_init(NSMutableDictionary);
  workoutStatisticsForYear = self->_workoutStatisticsForYear;
  self->_workoutStatisticsForYear = v6;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_sortedDateComponentKeys;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
  v10 = ARUIRingsViewRenderer_ptr;
  if (v9)
  {
    v11 = v9;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [(NSDictionary *)self->_workoutsByMonthAndYear objectForKeyedSubscript:v14];
        v16 = [[FIUIWorkoutStatistics alloc] initWithWorkouts:v15];
        [v3 setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v11);
  }

  v32 = v3;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_sortedYearDateComponents;
  v36 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v36)
  {
    v34 = *v42;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        v18 = v10;
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        v20 = objc_alloc_init(NSMutableArray);
        v21 = [(NSDictionary *)self->_dateComponentsByYear objectForKeyedSubscript:v19];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v38;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [(NSDictionary *)self->_workoutsByMonthAndYear objectForKeyedSubscript:*(*(&v37 + 1) + 8 * k)];
              [v20 addObjectsFromArray:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v23);
        }

        v10 = v18;
        v27 = [objc_alloc(v18[288]) initWithWorkouts:v20];
        [v35 setObject:v27 forKeyedSubscript:v19];
      }

      v36 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v36);
  }

  v28 = [[NSDictionary alloc] initWithDictionary:v32];
  v29 = self->_workoutStatisticsForMonthAndYear;
  self->_workoutStatisticsForMonthAndYear = v28;

  v30 = [[NSDictionary alloc] initWithDictionary:v35];
  v31 = self->_workoutStatisticsForYear;
  self->_workoutStatisticsForYear = v30;
}

- (BOOL)hasWorkouts
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKSortedSampleArray *)self->_workouts count];
  os_unfair_lock_unlock(&self->_lock);
  return v3 > 0;
}

+ (id)localizedNameForWorkoutTypeKey:(id)key
{
  keyCopy = key;
  activityType = [keyCopy activityType];
  if (activityType == _HKWorkoutActivityTypeNone)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"ALL_WORKOUTS";
LABEL_3:
    v8 = @"Localizable";
LABEL_4:
    v9 = [v5 localizedStringForKey:v7 value:&stru_1008680E8 table:v8];

    goto LABEL_9;
  }

  activityType2 = [keyCopy activityType];
  if (activityType2 > 0x3F)
  {
    goto LABEL_18;
  }

  if (((1 << activityType2) & 0x8010102000010000) != 0)
  {
    goto LABEL_7;
  }

  if (activityType2 == 13)
  {
    isIndoor = [keyCopy isIndoor];
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (isIndoor)
    {
      v7 = @"WORKOUT_FILTER_INDOOR_CYCLE_DESCRIPTION";
    }

    else
    {
      v7 = @"WORKOUT_FILTER_OUTDOOR_CYCLE_DESCRIPTION";
    }

    v8 = @"Localizable";
    goto LABEL_4;
  }

  if (activityType2 != 46)
  {
LABEL_18:
    if (activityType2 == 84)
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"UNDERWATER_DIVING_DESCRIPTION";
      goto LABEL_3;
    }

    if (activityType2 != 3000)
    {
      [keyCopy activityType];
      [keyCopy swimLocationType];
      [keyCopy isIndoor];
      v11 = FILocalizedNameForActivityType();
      goto LABEL_8;
    }

LABEL_7:
    v11 = FILocalizedNameForIndoorAgnosticActivityType();
LABEL_8:
    v9 = v11;
    goto LABEL_9;
  }

  swimLocationType = [keyCopy swimLocationType];
  if (!swimLocationType)
  {
    v5 = FIUIBundle();
    v6 = v5;
    v7 = @"SWIMMING_DESCRIPTION";
    goto LABEL_28;
  }

  if (swimLocationType == 2)
  {
    v5 = FIUIBundle();
    v6 = v5;
    v7 = @"SWIMMING_DESCRIPTION_OPEN_WATER";
    goto LABEL_28;
  }

  if (swimLocationType == 1)
  {
    v5 = FIUIBundle();
    v6 = v5;
    v7 = @"SWIMMING_DESCRIPTION_POOL";
LABEL_28:
    v8 = @"Localizable-Ariel";
    goto LABEL_4;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)localizedShortNameForWorkoutTypeKey:(id)key
{
  keyCopy = key;
  [keyCopy activityType];
  v5 = _HKWorkoutActivityNameForActivityType();
  v6 = [NSString stringWithFormat:@"WORKOUT_FILTER_SHORT_TITLE_%@", v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_1008680E8 table:@"Localizable"];

  if ([v8 isEqualToString:v6])
  {
    v9 = [self localizedNameForWorkoutTypeKey:keyCopy];

    v8 = v9;
  }

  return v8;
}

- (CHWorkoutDataProvider)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CHWorkoutDataProvider;
  v6 = [(CHWorkoutDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    [(CHWorkoutDataProvider *)v7 _commonInit];
  }

  return v7;
}

- (void)_timeZoneDidChange:(id)change
{
  gregorianCalendar = self->_gregorianCalendar;
  v4 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)gregorianCalendar setTimeZone:v4];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CHWorkoutDataProvider;
  [(CHWorkoutDataProvider *)&v4 dealloc];
}

- (BOOL)isCurrentFilterValid
{
  currentFilteredTypeIdentifier = [(CHWorkoutDataProvider *)self currentFilteredTypeIdentifier];
  v4 = [(NSDictionary *)self->_workoutCountByTypeIdentifier objectForKeyedSubscript:currentFilteredTypeIdentifier];
  v5 = [v4 integerValue] > 0;

  return v5;
}

- (id)unfilteredWorkouts
{
  os_unfair_lock_lock(&self->_lock);
  allSamples = [(HKSortedSampleArray *)self->_workouts allSamples];
  v4 = [NSArray arrayWithArray:allSamples];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)unfilteredWorkoutsWithMaxCount:(int64_t)count
{
  v5 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_lock);
  v6 = [(HKSortedSampleArray *)self->_workouts count];
  if (v6 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v6;
  }

  if (countCopy >= 1)
  {
    for (i = 0; i != countCopy; ++i)
    {
      v9 = [(HKSortedSampleArray *)self->_workouts sampleAtIndex:i];
      [v5 addObject:v9];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)cancelAllFetches
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_currentAnchoredObjectQuery];
  currentAnchoredObjectQuery = self->_currentAnchoredObjectQuery;
  self->_currentAnchoredObjectQuery = 0;
}

- (void)addUpdateHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001166DC;
  v7[3] = &unk_10083C7F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)addAnimatedUpdateHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001167C8;
  v7[3] = &unk_10083C7F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)addFilterActionStartedHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001168B4;
  v7[3] = &unk_10083C7F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)addFilterActionFinishedHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001169A0;
  v7[3] = &unk_10083C7F8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (id)workoutsEndingInDateInterval:(id)interval
{
  intervalCopy = interval;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allSamples = [(HKSortedSampleArray *)self->_workouts allSamples];
  v7 = [allSamples countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allSamples);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        endDate = [v11 endDate];
        v13 = [intervalCopy containsDate:endDate];

        if (v13)
        {
          [v5 addObject:v11];
        }

        else
        {
          endDate2 = [intervalCopy endDate];
          [endDate2 timeIntervalSinceReferenceDate];
          v16 = v15;
          endDate3 = [v11 endDate];
          [endDate3 timeIntervalSinceReferenceDate];
          v19 = v18;

          if (v16 < v19)
          {
            goto LABEL_11;
          }
        }
      }

      v8 = [allSamples countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)deleteWorkout:(id)workout shouldDeleteAssociatedSamples:(BOOL)samples completion:(id)completion
{
  samplesCopy = samples;
  completionCopy = completion;
  v9 = samplesCopy;
  healthStore = self->_healthStore;
  workoutCopy = workout;
  workoutCopy2 = workout;
  v12 = [NSArray arrayWithObjects:&workoutCopy count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100116CD4;
  v14[3] = &unk_10083CA98;
  v15 = completionCopy;
  v13 = completionCopy;
  [(HKHealthStore *)healthStore _deleteObjects:v12 options:v9 completion:v14];
}

- (void)setCurrentFilteredTypeIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  currentFilteredTypeIdentifier = self->_currentFilteredTypeIdentifier;
  self->_currentFilteredTypeIdentifier = identifierCopy;
  v9 = identifierCopy;

  [(CHWorkoutDataProvider *)self _runFilterActionStartedHandlers];
  sortingQueue = self->_sortingQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100116E80;
  v12[3] = &unk_10083C7F8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_async(sortingQueue, v12);
}

- (void)_retryAnchoredObjectQueryWithRetryCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  self->_isRetrying = 1;
  v5 = [(HKSortedSampleArray *)self->_workouts count];
  [(HKSortedSampleArray *)self->_workouts removeAllSamples];
  os_unfair_lock_unlock(&self->_lock);
  currentAnchoredObjectQuery = self->_currentAnchoredObjectQuery;
  self->_currentAnchoredObjectQuery = 0;

  if (v5 >= 1)
  {
    [(CHWorkoutDataProvider *)self _runUpdateHandlers];
  }

  countCopy = 5;
  if (count < 5)
  {
    countCopy = count;
  }

  v8 = dispatch_time(0, 1000000000 * countCopy);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100117064;
  v9[3] = &unk_10083BFA0;
  v9[4] = self;
  v9[5] = count;
  dispatch_after(v8, &_dispatch_main_q, v9);
}

- (void)_runAnchoredObjectQueryWithRetryCount:(unint64_t)count
{
  if (self->_currentAnchoredObjectQuery)
  {
    self->_isRetrying = 0;
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      countCopy = count;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CHWorkoutDataProvider] Running anchored object workout query with retry count: %lu", buf, 0xCu);
    }

    self->_isFirstQueryReturn = 1;
    objc_initWeak(buf, self);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100117264;
    v14 = &unk_10083CB10;
    v15[1] = count;
    objc_copyWeak(v15, buf);
    v6 = objc_retainBlock(&v11);
    v7 = [HKAnchoredObjectQuery alloc];
    v8 = [HKObjectType workoutType:v11];
    v9 = [v7 initWithType:v8 predicate:0 anchor:0 limit:0 resultsHandler:v6];
    currentAnchoredObjectQuery = self->_currentAnchoredObjectQuery;
    self->_currentAnchoredObjectQuery = v9;

    [(HKAnchoredObjectQuery *)self->_currentAnchoredObjectQuery setUpdateHandler:v6];
    [(HKAnchoredObjectQuery *)self->_currentAnchoredObjectQuery setDebugIdentifier:@"CHWorkoutDataProvider.currentAnchoredObjectQuery"];
    [(HKHealthStore *)self->_healthStore executeQuery:self->_currentAnchoredObjectQuery];

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }
}

- (void)_handleInitialResults:(id)results
{
  resultsCopy = results;
  os_unfair_lock_lock(&self->_lock);
  [(HKSortedSampleArray *)self->_workouts insertSamples:resultsCopy];

  os_unfair_lock_unlock(&self->_lock);
  [(CHWorkoutDataProvider *)self _recreateFilterObjects];
  self->_dataAvailable = 1;
  sortingQueue = self->_sortingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117954;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(sortingQueue, block);
}

- (void)_handleRemovedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uUID = [*(*(&v14 + 1) + 8 * v10) UUID];
        [v5 addObject:uUID];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(HKSortedSampleArray *)self->_workouts removeSamplesWithUUIDs:v5];
  os_unfair_lock_unlock(&self->_lock);
  v12 = +[NSNotificationCenter defaultCenter];
  v18 = @"CHDeletedWorkoutKey";
  v19 = v6;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v12 postNotificationName:@"FitnessWorkoutWasDeletedNotification" object:self userInfo:v13];
}

- (void)_runUpdateHandlers
{
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117DB0;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)_runAnimatedUpdateHandlers
{
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117E7C;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)_runFilterActionStartedHandlers
{
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117F48;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)_runFilterActionFinishedHandlers
{
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100118014;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)_runHandlers:(id)handlers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100118100;
  block[3] = &unk_10083A8B0;
  handlersCopy = handlers;
  v3 = handlersCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_UUIDsForWorkoutsWithEndDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseSampleEnumerator = [(HKSortedSampleArray *)self->_workouts reverseSampleEnumerator];
  v7 = [reverseSampleEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(reverseSampleEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        endDate = [v11 endDate];
        if ([endDate compare:dateCopy] == 1)
        {

          goto LABEL_13;
        }

        if ([endDate isEqualToDate:dateCopy])
        {
          uUID = [v11 UUID];
          [v5 addObject:uUID];
        }
      }

      v8 = [reverseSampleEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)isWatchWorkout:(id)workout
{
  workoutCopy = workout;
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_workouts;
  v6 = [(HKSortedSampleArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    _isWatchWorkout = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        uUID = [v11 UUID];
        v13 = [uUID isEqual:workoutCopy];

        if (v13)
        {
          _isWatchWorkout = [v11 _isWatchWorkout];
        }
      }

      v7 = [(HKSortedSampleArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    _isWatchWorkout = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return _isWatchWorkout & 1;
}

@end