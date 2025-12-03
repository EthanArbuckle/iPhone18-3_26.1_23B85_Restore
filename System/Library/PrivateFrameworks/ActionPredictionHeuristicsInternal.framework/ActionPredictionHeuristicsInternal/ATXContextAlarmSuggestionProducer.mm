@interface ATXContextAlarmSuggestionProducer
- (ATXContextAlarmSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score;
- (BOOL)_isToggleContextualAction:(id)action;
- (id)_alarmsWithEnvironment:(id)environment startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
- (id)_criteriaWithAlarm:(id)alarm;
- (id)_filterAlarmsEligible:(id)eligible proposedInterval:(id)interval;
- (id)_morningAlarmsWithEnvironment:(id)environment;
- (id)_nextMorningAlarmsWithEnvironment:(id)environment;
- (id)editNextAlarmSuggestionsWithEnvironment:(id)environment;
- (id)morningAlarmToggleSuggestionsWithEnvironment:(id)environment;
@end

@implementation ATXContextAlarmSuggestionProducer

- (ATXContextAlarmSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score
{
  intervalCopy = interval;
  v13.receiver = self;
  v13.super_class = ATXContextAlarmSuggestionProducer;
  v10 = [(ATXContextAlarmSuggestionProducer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, interval);
    v11->_reasonCode = code;
    v11->_score = score;
  }

  return v11;
}

- (id)morningAlarmToggleSuggestionsWithEnvironment:(id)environment
{
  v56 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [(ATXContextAlarmSuggestionProducer *)self _morningAlarmsWithEnvironment:?];
  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  selfCopy = self;
  reasonCode = self->_reasonCode;
  v37 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v44 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  v6 = 0;
  if (v44)
  {
    v36 = 1 << reasonCode;
    v7 = *v48;
    v8 = 0x278C3C000uLL;
    v38 = *v48;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [*(v8 + 744) localizedTimeWithAlarmDict:v10];
        v12 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 objectForKeyedSubscript:@"displayTitle"];
          *buf = 138412547;
          v52 = v11;
          v53 = 2117;
          v54 = v13;
          _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment found one morning alarm that fires at %@, %{sensitive}@", buf, 0x16u);

          v8 = 0x278C3C000uLL;
        }

        v14 = [v10 objectForKeyedSubscript:@"isSleepAlarm"];
        if ([v14 BOOLValue])
        {
          v15 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            [v10 objectForKeyedSubscript:@"isSleepAlarm"];
            v17 = v16 = v14;
            *buf = 138412546;
            v52 = v11;
            v53 = 2112;
            v54 = v17;
            _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: %@ morningAlarm[isSleepAlarm]=%@, skipping", buf, 0x16u);

            v14 = v16;
          }
        }

        else
        {
          v43 = v14;
          if (v11)
          {
            v18 = v11;
          }

          else
          {
            v18 = [v35 localizedStringForKey:@"TOGGLE_ALARM_TITLE" value:&stru_2850AD368 table:0];
          }

          v42 = v18;

          v19 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating update alarm action for one alarm", buf, 2u);
          }

          v41 = v11;

          v15 = [*(v8 + 744) alarmDataWithAlarmDict:v10];
          v20 = objc_alloc(MEMORY[0x277D7A180]);
          v21 = [v10 objectForKeyedSubscript:@"alarmID"];
          v22 = [v10 objectForKeyedSubscript:@"displayTitle"];
          v23 = [v20 initWithAlarmIdentifier:v21 alarmName:v22 alarmData:v15 operation:2];

          v24 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating WFToggleAlarmContextualAction for one alarm", buf, 2u);
          }

          v25 = [(ATXContextAlarmSuggestionProducer *)selfCopy _criteriaWithAlarm:v10];
          if (v25)
          {
            v26 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v23 criteria:v25];
            v27 = [*(v8 + 744) fireDateWithAlarmDict:v10];
            v28 = MEMORY[0x277CCACA8];
            [v27 timeIntervalSinceReferenceDate];
            v30 = [v28 stringWithFormat:@"%f", v29];
            v6 = v42;
            v31 = [ATXContextHeuristicSuggestionProducer suggestionWithShortcutAction:v26 predictionReasons:v36 localizedReason:0 title:v42 subtitle:v30 score:0 dateInterval:selfCopy->_score];

            v8 = 0x278C3C000;
            [v37 addObject:v31];

            v14 = v43;
          }

          else
          {
            v31 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              [(ATXContextAlarmSuggestionProducer *)&v45 morningAlarmToggleSuggestionsWithEnvironment:v46, v31];
            }

            v6 = v42;
            v14 = v43;
          }

          v11 = v41;

          v7 = v38;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v44);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)_criteriaWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [alarmCopy objectForKeyedSubscript:@"hour"];
  if (v6)
  {
    v7 = [alarmCopy objectForKeyedSubscript:@"minute"];
    if (v7)
    {
      integerValue = [v6 integerValue];
      integerValue2 = [v7 integerValue];
      startDate = [(NSDateInterval *)self->_validDateInterval startDate];
      v11 = [currentCalendar dateBySettingHour:integerValue minute:integerValue2 second:0 ofDate:startDate options:0];

      v12 = objc_alloc(MEMORY[0x277CEB2D0]);
      startDate2 = [(NSDateInterval *)self->_validDateInterval startDate];
      v14 = [v12 initWithStartDate:startDate2 endDate:v11 lockScreenEligible:0 predicate:0];

      goto LABEL_10;
    }

    v15 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXContextAlarmSuggestionProducer _criteriaWithAlarm:v15];
    }
  }

  else
  {
    v7 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXContextAlarmSuggestionProducer _criteriaWithAlarm:v7];
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)editNextAlarmSuggestionsWithEnvironment:(id)environment
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = self->_validDateInterval;
  v6 = [(ATXContextAlarmSuggestionProducer *)self _nextMorningAlarmsWithEnvironment:environment];
  v7 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment morningAlarms=%@", buf, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CEB2D0]);
  startDate = [(NSDateInterval *)v5 startDate];
  endDate = [(NSDateInterval *)v5 endDate];
  v11 = [v8 initWithStartDate:startDate endDate:endDate lockScreenEligible:0 predicate:0];

  if (v11)
  {
    if ([v6 count])
    {
      v12 = [ATXHeuristicAlarmUtilities firstFiringAmongAlarms:v6];
      if (v12)
      {
        v33 = [ATXHeuristicAlarmUtilities localizedTimeWithAlarmDict:v12];
        v13 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 objectForKeyedSubscript:@"displayTitle"];
          *buf = 138412547;
          v36 = v33;
          v37 = 2117;
          v38 = v14;
          _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment found one morning alarm that fires at %@, %{sensitive}@", buf, 0x16u);
        }

        v15 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: editNextAlarmSuggestionsWithEnvironment Creating update alarm action for one alarm", buf, 2u);
        }

        v31 = 1 << self->_reasonCode;
        v16 = [ATXHeuristicAlarmUtilities alarmDataWithAlarmDict:v12];
        v17 = objc_alloc(MEMORY[0x277D7A180]);
        v18 = [v12 objectForKeyedSubscript:@"alarmID"];
        v19 = [v12 objectForKeyedSubscript:@"displayTitle"];
        v32 = v16;
        v20 = [v17 initWithAlarmIdentifier:v18 alarmName:v19 alarmData:v16 operation:2];

        v21 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: morningAlarmToggleSuggestionsWithEnvironment Creating WFToggleAlarmContextualAction for one alarm", buf, 2u);
        }

        v22 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v20 criteria:v11];
        v23 = [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:v12];
        v24 = MEMORY[0x277CCACA8];
        [v23 timeIntervalSinceReferenceDate];
        v26 = [v24 stringWithFormat:@"%f", v25];
        v27 = [ATXContextHeuristicSuggestionProducer suggestionWithShortcutAction:v22 predictionReasons:v31 localizedReason:0 title:v33 subtitle:v26 score:0 dateInterval:self->_score];

        if (v27)
        {
          v34 = v27;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        }

        else
        {
          v28 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        v28 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v28 = objc_opt_new();
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)_isToggleContextualAction:(id)action
{
  actionCopy = action;
  if (objc_opt_respondsToSelector())
  {
    settingBiomeStreamIdentifier = [actionCopy settingBiomeStreamIdentifier];
    v5 = settingBiomeStreamIdentifier != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_nextMorningAlarmsWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = +[ATXHeuristicGoodMorning contextDateInterval];
  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v8 = v7;

  endDate2 = [v5 endDate];
  [endDate2 timeIntervalSinceReferenceDate];
  v11 = v10;

  [ATXHeuristicTimeUtilities timestampByOffsettingDays:1 dayOffset:v11];
  v13 = [(ATXContextAlarmSuggestionProducer *)self _alarmsWithEnvironment:environmentCopy startTimestamp:v8 endTimestamp:v12];

  return v13;
}

- (id)_morningAlarmsWithEnvironment:(id)environment
{
  validDateInterval = self->_validDateInterval;
  environmentCopy = environment;
  startDate = [(NSDateInterval *)validDateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v8 = v7;

  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [(ATXContextAlarmSuggestionProducer *)self _alarmsWithEnvironment:environmentCopy startTimestamp:v8 endTimestamp:v11];

  return v12;
}

- (id)_alarmsWithEnvironment:(id)environment startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  v33 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v9 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
    v11 = locDate(v10);
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:endTimestamp];
    v13 = locDate(v12);
    v29 = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment looking for alarms between %@ and %@", &v29, 0x16u);
  }

  v14 = [ATXHeuristicTimeUtilities enabledAlarmsFromTS:environmentCopy toTS:timestamp environment:endTimestamp];

  v15 = [v14 count];
  v16 = __atxlog_handle_context_heuristic();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = [v14 count];
      v29 = 134217984;
      v30 = v18;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Found a total of %lu alarm(s)", &v29, 0xCu);
    }

    v19 = [(ATXContextAlarmSuggestionProducer *)self _filterAlarmsEligible:v14 proposedInterval:self->_validDateInterval];
    v20 = [v19 count];
    v21 = __atxlog_handle_context_heuristic();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        v23 = [v19 count];
        endDate = [(NSDateInterval *)self->_validDateInterval endDate];
        v29 = 134218242;
        v30 = v23;
        v31 = 2112;
        v32 = endDate;
        _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Found %lu morning alarm(s) that will fire before %@", &v29, 0x16u);
      }

      v19 = v19;
      v25 = v19;
    }

    else
    {
      if (v22)
      {
        endDate2 = [(NSDateInterval *)self->_validDateInterval endDate];
        v29 = 138412290;
        v30 = endDate2;
        _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment Suppressing action because there are no enabled alarms before %@", &v29, 0xCu);
      }

      v25 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (v17)
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _alarmsWithEnvironment No existing alarms found", &v29, 2u);
    }

    v19 = MEMORY[0x277CBEBF8];
    v25 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_filterAlarmsEligible:(id)eligible proposedInterval:(id)interval
{
  intervalCopy = interval;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ATXContextAlarmSuggestionProducer__filterAlarmsEligible_proposedInterval___block_invoke;
  v9[3] = &unk_278C3D4B0;
  v10 = intervalCopy;
  v6 = intervalCopy;
  v7 = [eligible _pas_filteredArrayWithTest:v9];

  return v7;
}

BOOL __76__ATXContextAlarmSuggestionProducer__filterAlarmsEligible_proposedInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwAllowModifedAlarms", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
  {
    v4 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "ATXContextAlarmSuggestionProducer: _filterAlarmsEligible  internal setting zkwAllowModifedAlarms is on. Allowing even modified alarms", v7, 2u);
    }

    v5 = 1;
  }

  else
  {
    v5 = [ATXHeuristicAlarmUtilities isValidNonRecentlyModifiedAlarm:v3 duringInterval:*(a1 + 32)];
  }

  return v5;
}

- (void)morningAlarmToggleSuggestionsWithEnvironment:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E3EA000, log, OS_LOG_TYPE_FAULT, "ATXContextAlarmSuggestionProducer: _criteriaWithAlarm is nil, skipping", buf, 2u);
}

@end