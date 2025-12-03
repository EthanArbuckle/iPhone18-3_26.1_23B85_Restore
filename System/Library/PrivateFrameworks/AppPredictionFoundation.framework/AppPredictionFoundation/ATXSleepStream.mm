@interface ATXSleepStream
- (BOOL)hasAlreadyDetectedSleepEventOnGivenDay:(id)day sleepEvents:(id)events withCalendar:(id)calendar;
- (BOOL)isFirstBacklightOnAfterWakeup:(id)wakeup sleepStartTime:(id)time existingSleepEventsToday:(id)today withCalendar:(id)calendar;
- (BOOL)isTimeInEligibleNotificationWindow:(id)window withCalendar:(id)calendar;
- (id)backlightPublisherWithStartDate:(id)date endDate:(id)endDate;
- (id)screenLockedPublisherWithStartDate:(id)date endDate:(id)endDate;
- (void)enumerateSleepEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block;
@end

@implementation ATXSleepStream

- (void)enumerateSleepEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v13 = __atxlog_handle_sleep_schedule();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226368000, v13, OS_LOG_TYPE_DEFAULT, "Started enumeration of Sleep events", buf, 2u);
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__3;
  v30[4] = __Block_byref_object_dispose__3;
  array = [MEMORY[0x277CBEB18] array];
  v14 = [(ATXSleepStream *)self backlightPublisherWithStartDate:dateCopy endDate:endDateCopy];
  v15 = [(ATXSleepStream *)self screenLockedPublisherWithStartDate:dateCopy endDate:endDateCopy];
  v16 = [v14 orderedMergeWithOther:v15 comparator:&__block_literal_global_6];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [currentCalendar setTimeZone:defaultTimeZone];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke_17;
  v22[3] = &unk_278590438;
  limitCopy = limit;
  v26 = v38;
  v27 = v30;
  v19 = currentCalendar;
  v28 = buf;
  v23 = v19;
  selfCopy = self;
  v20 = blockCopy;
  v25 = v20;
  v21 = [v16 sinkWithCompletion:&__block_literal_global_16 shouldContinue:v22];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v38, 8);
}

uint64_t __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_sleep_schedule();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke_2_cold_1(v2, v3);
    }
  }
}

uint64_t __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke_17(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 24) < *(a1 + 80))
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v7 = *(a1 + 32);
      v8 = [*(*(*(a1 + 64) + 8) + 40) lastObject];
      v9 = [v8 wakeUpTime];
      LOBYTE(v7) = [v7 isDate:v6 inSameDayAsDate:v9];

      if ((v7 & 1) == 0)
      {
        [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      }
    }

    v10 = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [v4 eventBody];
    v13 = v12;
    if (isKindOfClass)
    {
      if (![v12 backlightLevel])
      {
        v22 = *(*(a1 + 72) + 8);
        v24 = *(v22 + 40);
        v23 = (v22 + 40);
        if (!v24)
        {
          objc_storeStrong(v23, v6);
        }

        goto LABEL_23;
      }

      if ([v13 backlightLevel] == 1)
      {
        v14 = *(*(*(a1 + 72) + 8) + 40);
        if (v14 && [*(a1 + 40) isFirstBacklightOnAfterWakeup:v6 sleepStartTime:v14 existingSleepEventsToday:*(*(*(a1 + 64) + 8) + 40) withCalendar:*(a1 + 32)])
        {
          v15 = [[ATXSleepEvent alloc] initWithSleepStart:*(*(*(a1 + 72) + 8) + 40) wakeUp:v6];
          v27 = 0;
          v16 = *(a1 + 48);
          if (v16)
          {
            (*(v16 + 16))(v16, v15, &v27);
          }

          [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
          ++*(*(*(a1 + 56) + 8) + 24);
          v17 = __atxlog_handle_sleep_schedule();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v15;
            _os_log_impl(&dword_226368000, v17, OS_LOG_TYPE_DEFAULT, "Emitted Sleep event: %@", buf, 0xCu);
          }

          if ((v27 & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) >= *(a1 + 80))
          {

            v18 = 0;
            goto LABEL_25;
          }
        }

LABEL_20:
        v20 = *(*(a1 + 72) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;
      }
    }

    else
    {
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if ((v19 & 1) == 0)
      {
LABEL_24:
        v18 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v13 = [v4 eventBody];
      if (([v13 starting] & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  v18 = 0;
LABEL_26:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)backlightPublisherWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = BiomeLibrary();
  device = [v7 Device];
  display = [device Display];
  backlight = [display Backlight];
  v11 = [backlight atx_publisherWithStartDate:dateCopy endDate:endDateCopy maxEvents:0 lastN:0 reversed:0];

  return v11;
}

- (id)screenLockedPublisherWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = BiomeLibrary();
  device = [v7 Device];
  screenLocked = [device ScreenLocked];
  v10 = [screenLocked atx_publisherWithStartDate:dateCopy endDate:endDateCopy maxEvents:0 lastN:0 reversed:0];

  return v10;
}

- (BOOL)isFirstBacklightOnAfterWakeup:(id)wakeup sleepStartTime:(id)time existingSleepEventsToday:(id)today withCalendar:(id)calendar
{
  wakeupCopy = wakeup;
  timeCopy = time;
  todayCopy = today;
  calendarCopy = calendar;
  if (-[ATXSleepStream isTimeInEligibleNotificationWindow:withCalendar:](self, "isTimeInEligibleNotificationWindow:withCalendar:", wakeupCopy, calendarCopy) && ([wakeupCopy timeIntervalSinceDate:timeCopy], -[ATXSleepStream isIdlePeriodLongEnough:](self, "isIdlePeriodLongEnough:")))
  {
    v14 = ![(ATXSleepStream *)self hasAlreadyDetectedSleepEventOnGivenDay:wakeupCopy sleepEvents:todayCopy withCalendar:calendarCopy];
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)isTimeInEligibleNotificationWindow:(id)window withCalendar:(id)calendar
{
  calendarCopy = calendar;
  windowCopy = window;
  v7 = [calendarCopy dateBySettingHour:3 minute:0 second:0 ofDate:windowCopy options:0];
  v8 = [calendarCopy dateBySettingHour:13 minute:0 second:0 ofDate:windowCopy options:0];

  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v10 = [v9 containsDate:windowCopy];

  return v10;
}

- (BOOL)hasAlreadyDetectedSleepEventOnGivenDay:(id)day sleepEvents:(id)events withCalendar:(id)calendar
{
  v25 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  eventsCopy = events;
  calendarCopy = calendar;
  if ([eventsCopy count])
  {
    v10 = [calendarCopy dateBySettingHour:3 minute:0 second:0 ofDate:dayCopy options:0];
    v11 = [calendarCopy dateBySettingHour:13 minute:0 second:0 ofDate:dayCopy options:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = eventsCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          wakeUpTime = [*(*(&v20 + 1) + 8 * i) wakeUpTime];
          v17 = wakeUpTime;
          if (wakeUpTime && [wakeUpTime compare:v10] != -1 && objc_msgSend(v17, "compare:", v11) == -1)
          {

            LOBYTE(v13) = 1;
            goto LABEL_15;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

void __72__ATXSleepStream_enumerateSleepEventsFromStartDate_endDate_limit_block___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXSleepStream enumerateSleepEventsFromStartDate:endDate:limit:block:]_block_invoke_2";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching biome events: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end