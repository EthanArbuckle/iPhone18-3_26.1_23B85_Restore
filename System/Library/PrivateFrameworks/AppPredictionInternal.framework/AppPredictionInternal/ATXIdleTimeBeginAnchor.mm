@interface ATXIdleTimeBeginAnchor
+ (double)minimumSecondsForBeingIdle;
+ (double)weightedAverageOfHoursFromDates:(id)dates;
+ (id)anchorOccurenceDateFromDuetEvent:(id)event;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)filterBlock;
+ (id)predictNextAnchorOccurrenceDate;
+ (id)sampleEvent;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector;
@end

@implementation ATXIdleTimeBeginAnchor

+ (double)minimumSecondsForBeingIdle
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v2 idleTimeEndAnchorMinimumSecondsForBeingIdle];
  v4 = v3;

  return v4;
}

+ (id)filterBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__ATXIdleTimeBeginAnchor_filterBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e31_B16__0___ATXGenericEventBase__8l;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

BOOL __37__ATXIdleTimeBeginAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 endTime];
    v6 = [v4 startTime];

    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    v9 = *(a1 + 32);
    [objc_opt_class() minimumSecondsForBeingIdle];
    v11 = v8 >= v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CEBC40];
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  filterBlock = [objc_opt_class() filterBlock];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__ATXIdleTimeBeginAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v14[3] = &unk_278598F50;
  v15 = v9;
  v11 = v9;
  [v8 enumerateDeviceScreenLockedStateEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:filterBlock limit:1000000 ascending:1 block:v14];

  v12 = [v11 _pas_filteredArrayWithTest:&__block_literal_global_43];

  return v12;
}

void __73__ATXIdleTimeBeginAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXScreenLockStateDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
}

uint64_t __73__ATXIdleTimeBeginAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 endDate];
  v3 = [_ATXActionUtils localHourOfDayFromDate:v2];

  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __73__ATXIdleTimeBeginAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_1(v3, v4);
  }

  return 1;
}

+ (id)anchorOccurenceDateFromDuetEvent:(id)event
{
  v3 = MEMORY[0x277CBEAA8];
  eventCopy = event;
  v5 = [v3 alloc];
  startDate = [eventCopy startDate];

  v7 = [v5 initWithTimeInterval:startDate sinceDate:-10800.0];

  return v7;
}

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector
{
  v24 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  predictNextAnchorOccurrenceDate = [self predictNextAnchorOccurrenceDate];
  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v22 = 2112;
    v23 = predictNextAnchorOccurrenceDate;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Inference (%@): Setting up XPC activity for IdleTimeBegin Anchor to fire at %@...", buf, 0x16u);
  }

  v10 = objc_opt_new();
  [predictNextAnchorOccurrenceDate timeIntervalSinceDate:v10];
  v12 = v11;

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v13, *MEMORY[0x277D86250], v12);
  xpc_dictionary_set_int64(v13, *MEMORY[0x277D86270], 60);
  xpc_dictionary_set_BOOL(v13, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v13, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v13, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v13, *MEMORY[0x277D86360], 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__ATXIdleTimeBeginAnchor_registerForNotificationsWithoutUsingContextStoreForObserver_enterSelector_exitSelector___block_invoke;
  v17[3] = &unk_278598F98;
  v18 = observerCopy;
  selectorCopy = selector;
  v14 = observerCopy;
  xpc_activity_register("com.apple.duetexpertd.idle_time_begin_trigger", v13, v17);
  v15 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Inference (%@): Done setting up XPC activity for IdleTimeBegin Anchor.", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __113__ATXIdleTimeBeginAnchor_registerForNotificationsWithoutUsingContextStoreForObserver_enterSelector_exitSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v4 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Triggering IdleTimeBegin Anchor based on prescheduled XPC Activity.", v7, 2u);
    }

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    if (v6)
    {
      ([v6 methodForSelector:*(a1 + 40)])(*(a1 + 32), *(a1 + 40));
    }

    objc_autoreleasePoolPop(v5);
  }
}

+ (id)predictNextAnchorOccurrenceDate
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [v3 historicalAnchorOccurrenceDatesForAnchor:v4];

  [self weightedAverageOfHoursFromDates:v5];
  __x = v6;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = objc_opt_new();
  v9 = [currentCalendar components:62 fromDate:v8];

  v10 = fmod(*__x.i64, 24.0);
  *v11.i64 = *__x.i64 - trunc(*__x.i64);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = *vbslq_s8(vnegq_f64(v12), v11, __x).i64 * 60.0;
  [v9 setHour:v10];
  [v9 setMinute:v13];
  v14 = [currentCalendar dateFromComponents:v9];
  [v14 timeIntervalSinceNow];
  if (v15 < -10.0)
  {
    v16 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v14 options:0];

    v14 = v16;
  }

  v17 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v14;
    v23 = 2048;
    v24 = __x.i64[0];
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Prediction: %@ (%.3f)", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (double)weightedAverageOfHoursFromDates:(id)dates
{
  datesCopy = dates;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__ATXIdleTimeBeginAnchor_weightedAverageOfHoursFromDates___block_invoke;
  v18[3] = &unk_278598FC0;
  v5 = currentCalendar;
  v19 = v5;
  v20 = 96;
  v6 = [datesCopy _pas_mappedArrayWithTransform:v18];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ATXIdleTimeBeginAnchor_weightedAverageOfHoursFromDates___block_invoke_2;
  v9[3] = &unk_278598FE8;
  v9[4] = &v14;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v15[3] / (v11[3] + 1.0e-12);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

id __58__ATXIdleTimeBeginAnchor_weightedAverageOfHoursFromDates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) components:*(a1 + 40) fromDate:a2];
  v3 = [v2 hour];
  v4 = [v2 minute] / 60.0 + v3;
  if (v4 < 12.0)
  {
    v4 = v4 + 24.0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];

  return v5;
}

double __58__ATXIdleTimeBeginAnchor_weightedAverageOfHoursFromDates___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = pow(0.9, a3);
  [a2 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + v6 * v5;
  v7 = *(*(a1 + 40) + 8);
  result = v5 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

+ (id)sampleEvent
{
  v2 = [ATXScreenLockStateDuetEvent alloc];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
  v4 = objc_opt_new();
  v5 = [(ATXScreenLockStateDuetEvent *)v2 initWithScreenLockState:0 startDate:v3 endDate:v4];

  return v5;
}

void __73__ATXIdleTimeBeginAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "IdleTimeBegin Anchor occurred at local hour: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end