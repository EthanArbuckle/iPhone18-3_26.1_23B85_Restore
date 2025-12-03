@interface ATXTimeBasedInferredActivityBiomeStream
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
- (void)_addBedtimeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
- (void)_addHomeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
- (void)_addWorkTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array;
@end

@implementation ATXTimeBasedInferredActivityBiomeStream

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXTimeBasedInferredActivityBiomeStream *)self transitionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

- (id)transitionPublisherFromStartTime:(double)time
{
  v36 = *MEMORY[0x277D85DE8];
  if (time == 0.0)
  {
    v22 = __atxlog_handle_modes();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXTimeBasedInferredActivityBiomeStream transitionPublisherFromStartTime:v22];
    }

    bpsPublisher = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = objc_opt_new();
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:time];
    v8 = [currentCalendar startOfDayForDate:v7];

    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setHour:0];
    [v10 setMinute:0];
    [v10 setSecond:1];
    v11 = objc_opt_new();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __76__ATXTimeBasedInferredActivityBiomeStream_transitionPublisherFromStartTime___block_invoke;
    v31[3] = &unk_27859FE30;
    v12 = currentCalendar;
    v32 = v12;
    v25 = v9;
    v33 = v25;
    v13 = v11;
    v34 = v13;
    v26 = v8;
    [v12 enumerateDatesStartingAfterDate:v8 matchingComponents:v10 options:2 usingBlock:v31];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addBedtimeTransitionsForDate:v19 calendar:v12 toArray:v6, v25];
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addWorkTransitionsForDate:v19 calendar:v12 toArray:v6];
          [(ATXTimeBasedInferredActivityBiomeStream *)self _addHomeTransitionsForDate:v19 calendar:v12 toArray:v6];
          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    bpsPublisher = [v6 bpsPublisher];
  }

  v23 = *MEMORY[0x277D85DE8];

  return bpsPublisher;
}

void __76__ATXTimeBasedInferredActivityBiomeStream_transitionPublisherFromStartTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v9 = v6;
  if ([*(a1 + 32) compareDate:? toDate:? toUnitGranularity:?] == 1)
  {
    *a4 = 1;
  }

  else
  {
    v8 = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    [*(a1 + 48) addObject:v9];
  }

  v8 = v9;
LABEL_6:
}

- (void)_addBedtimeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  arrayCopy = array;
  calendarCopy = calendar;
  dateCopy = date;
  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:0 transitionMinute:1 calendar:calendarCopy isEntry:1 activity:5 toArray:arrayCopy];
  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:6 transitionMinute:30 calendar:calendarCopy isEntry:0 activity:5 toArray:arrayCopy];
}

- (void)_addWorkTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  dateCopy = date;
  calendarCopy = calendar;
  arrayCopy = array;
  if (([calendarCopy isDateInWeekend:dateCopy] & 1) == 0)
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:9 transitionMinute:0 calendar:calendarCopy isEntry:1 activity:2 toArray:arrayCopy];
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:17 transitionMinute:0 calendar:calendarCopy isEntry:0 activity:2 toArray:arrayCopy];
  }
}

- (void)_addHomeTransitionsForDate:(id)date calendar:(id)calendar toArray:(id)array
{
  arrayCopy = array;
  calendarCopy = calendar;
  dateCopy = date;
  if ([calendarCopy isDateInWeekend:?])
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:9 transitionMinute:0 calendar:calendarCopy isEntry:1 activity:1 toArray:arrayCopy];
  }

  else
  {
    [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:17 transitionMinute:30 calendar:calendarCopy isEntry:1 activity:1 toArray:arrayCopy];
  }

  [(ATXTimeBasedInferredActivityBiomeStream *)self _addTransitionForDate:dateCopy transitionHour:22 transitionMinute:0 calendar:calendarCopy isEntry:0 activity:1 toArray:arrayCopy];
}

@end