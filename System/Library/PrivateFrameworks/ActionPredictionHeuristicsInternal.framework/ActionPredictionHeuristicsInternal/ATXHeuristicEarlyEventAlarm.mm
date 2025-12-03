@interface ATXHeuristicEarlyEventAlarm
- (BOOL)_willAlarm:(id)alarm fireFrom:(double)from to:(double)to;
- (BOOL)isEventInterestingForSettingAlarm:(id)alarm;
- (BOOL)shouldShowSuggestionForEarlyEvent:(id)event alarms:(id)alarms environment:(id)environment;
- (double)_timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset;
- (double)_timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days;
- (double)_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp;
- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment;
- (id)_usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicEarlyEventAlarm

- (id)permanentRefreshTriggers
{
  v2 = +[ATXHeuristicDevice sharedAlarmManager];
  [v2 checkIn];

  v3 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v4 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v3 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v5 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v6 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v5 initWithNotification:*MEMORY[0x277D29598] type:0];
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, v6, 0}];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v144 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXExtraordinaryEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v7 = [(ATXExtraordinaryEventsDataSource *)v5 initWithDevice:heuristicDevice];

  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__4;
  v129 = __Block_byref_object_dispose__4;
  v130 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__4;
  v123 = __Block_byref_object_dispose__4;
  v124 = 0;
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __62__ATXHeuristicEarlyEventAlarm_heuristicResultWithEnvironment___block_invoke;
  v118[3] = &unk_278C3CDA8;
  v118[4] = &v125;
  v118[5] = &v119;
  [(ATXExtraordinaryEventsDataSource *)v7 getEventsWithProminentFeature:&unk_2850BA488 callback:v118];
  if (v120[5])
  {
    v8 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v8 heuristicResultWithEnvironment:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = objc_opt_new();
LABEL_40:
    v66 = v16;
    goto LABEL_41;
  }

  v17 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v126[5] count];
    *buf = 134217984;
    v133 = v18;
    _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment %lu events", buf, 0xCu);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v19 = v126[5];
  v20 = [v19 countByEnumeratingWithState:&v114 objects:v143 count:16];
  if (!v20)
  {
LABEL_15:

LABEL_37:
    v65 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v65, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: No unusually early event found to set alarm", buf, 2u);
    }

    v16 = objc_opt_new();
    goto LABEL_40;
  }

  v21 = *v115;
LABEL_9:
  v22 = 0;
  while (1)
  {
    if (*v115 != v21)
    {
      objc_enumerationMutation(v19);
    }

    v23 = *(*(&v114 + 1) + 8 * v22);
    if ([(ATXHeuristicEarlyEventAlarm *)self isEventInterestingForSettingAlarm:v23])
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = [v19 countByEnumeratingWithState:&v114 objects:v143 count:16];
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v109 = v23;

  if (!v109)
  {
    goto LABEL_37;
  }

  v106 = objc_opt_new();
  if ([ATXHeuristicEarlyEventAlarm shouldShowSuggestionForEarlyEvent:"shouldShowSuggestionForEarlyEvent:alarms:environment:" alarms:v109 environment:?])
  {
    v107 = [v109 objectForKeyedSubscript:@"startDateTimestamp"];
    v104 = [v109 objectForKeyedSubscript:@"creationDateTimestamp"];
    [v107 doubleValue];
    [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingDays:-1 dayOffset:?];
    [(ATXHeuristicEarlyEventAlarm *)self _timestampAtDayOfTimestamp:0 hour:0 minute:?];
    v25 = v24;
    v26 = [(ATXHeuristicEarlyEventAlarm *)self _usualAlarmTimeOfDayDataSourceWithEnvironment:environmentCopy];
    v105 = v26;
    if (v26 && [v26 integerValue])
    {
      integerValue = [v105 integerValue];
      integerValue2 = [v105 integerValue];
      v29 = __atxlog_handle_context_heuristic();
      v30 = integerValue / 3600;
      v31 = ((integerValue2 - 3600 * v30) / 60.0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v133 = v30;
        v134 = 2048;
        v135 = v31;
        _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment medianSetAlarmTime: %lu:%lu)", buf, 0x16u);
      }

      [(ATXHeuristicEarlyEventAlarm *)self _timestampWithHour:v30 minute:v31 atDayOfTimestamp:v25];
      v33 = v32;
      v34 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v36 = locDate(v35);
        *buf = 138412290;
        v133 = v36;
        _os_log_impl(&dword_23E3EA000, v34, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment timestampOfSuggestedSetTime: %@)", buf, 0xCu);
      }

      [v107 doubleValue];
      if (v37 - v33 >= 86400.0)
      {
        v38 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = locDate(v107);
          v40 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          v41 = locDate(v40);
          *buf = 138412546;
          v133 = v39;
          v134 = 2112;
          v135 = v41;
          _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Night owl case detected. Event start time: %@; Original suggested timestamp to show prediction: %@", buf, 0x16u);
        }

        [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingDays:1 dayOffset:v33];
        v33 = v42;
      }

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v45 = v44;

      v46 = v33 + -3600.0;
      if (v33 + -3600.0 < v45)
      {
        [v104 doubleValue];
        v48 = v47;
        v49 = __atxlog_handle_context_heuristic();
        v33 = v48 + 3600.0;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          v51 = locDate(v50);
          *buf = 138412290;
          v133 = v51;
          _os_log_impl(&dword_23E3EA000, v49, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Suggested timestamp to show prediction detected as being in the past. Updating suggested timestamp to show the prediction to 1 hour + eventCreationTime = %@", buf, 0xCu);
        }
      }

      [v107 doubleValue];
      v53 = v52 + -28800.0;
      if (v33 >= v53)
      {
        v33 = v53;
      }

      v54 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v56 = locDate(v55);
        *buf = 138412290;
        v133 = v56;
        _os_log_impl(&dword_23E3EA000, v54, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: heuristicResultWithEnvironment Final suggested timestamp to show the prediction: %@)", buf, 0xCu);
      }

      [v107 doubleValue];
      v58 = v57;
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v102 = [v59 localizedStringForKey:@"ALARM_TITLE" value:&stru_2850AD368 table:0];
      v60 = MEMORY[0x277CBEAA8];
      [v107 doubleValue];
      v61 = [v60 dateWithTimeIntervalSinceReferenceDate:?];
      v62 = [MEMORY[0x277CCA968] localizedStringFromDate:v61 dateStyle:0 timeStyle:1];
      v103 = [v109 objectForKeyedSubscript:@"eventTitle"];
      [ATXHeuristicEventUtilities isEventAtOneWithTimestamp:v107];
      v63 = MEMORY[0x277CCACA8];
      v64 = [v59 localizedStringForKey:@"ALARM_SUBTITLE_(hour is 1)" value:&stru_2850AD368 table:0];
      v101 = [v63 localizedStringWithFormat:v64, v103, v62, v59, v61, v62];

      v71 = v33 + -14400.0;
      v72 = v33 + 14400.0;
      if (v106)
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        obj = v106;
        v73 = [obj countByEnumeratingWithState:&v110 objects:v142 count:16];
        if (v73)
        {
          v74 = *v111;
          while (2)
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v111 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v76 = *(*(&v110 + 1) + 8 * i);
              v77 = __atxlog_handle_context_heuristic();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v77, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Bailing because an alarm was already modified during the suggestion time span", buf, 2u);
              }

              v78 = [v76 objectForKeyedSubscript:@"lastModifiedTS"];
              v79 = v78 == 0;

              if (!v79)
              {
                v80 = [v76 objectForKeyedSubscript:@"lastModifiedTS"];
                [v80 doubleValue];
                if (v81 >= v71)
                {
                  [v80 doubleValue];
                  if (v82 <= v72)
                  {
                    v97 = __atxlog_handle_context_heuristic();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_23E3EA000, v97, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Bailing because an alarm was already modified during the suggestion time span", buf, 2u);
                    }

                    v66 = objc_opt_new();
                    goto LABEL_71;
                  }
                }
              }
            }

            v73 = [obj countByEnumeratingWithState:&v110 objects:v142 count:16];
            if (v73)
            {
              continue;
            }

            break;
          }
        }
      }

      obj = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v58 + -3600.0];
      v83 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = [MEMORY[0x277CCABB0] numberWithDouble:v71];
        v85 = locDate(v84);
        v86 = [MEMORY[0x277CCABB0] numberWithDouble:v72];
        v87 = locDate(v86);
        *buf = 138740995;
        v133 = v102;
        v134 = 2117;
        v135 = v101;
        v136 = 2112;
        v137 = obj;
        v138 = 2112;
        v139 = v85;
        v140 = 2112;
        v141 = v87;
        _os_log_impl(&dword_23E3EA000, v83, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: action title: %{sensitive}@, subtitle: %{sensitive}@ alarmDate:%@, valid between %@ and %@", buf, 0x34u);
      }

      v88 = MEMORY[0x277CEB2C8];
      v89 = [v109 objectForKeyedSubscript:@"eventIdentifier"];
      v80 = [v88 atx_setAlarmActionWithTitle:v102 subtitle:v101 eventIdentifier:v89 eventTitle:v103 alarmDate:obj heuristicName:@"setAlarmForUnusualEarlyEvents"];

      v90 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v71];
      v91 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v72];
      v92 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v90 endDate:v91 lockScreenEligible:0 predicate:0];
      [v80 setCriteria:v92];
      v93 = [ATXContextHeuristicSuggestionProducer suggestionWithAction:v80 predictionReasons:0x4000000000 localizedReason:0 score:0 dateInterval:40.0];
      v94 = objc_opt_new();
      v95 = [ATXContextHeuristicResult alloc];
      v131 = v93;
      v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
      v66 = [(ATXContextHeuristicResult *)v95 initWithSuggestions:v96 additionalRefreshTriggers:v94];

LABEL_71:
    }

    else
    {
      v70 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3EA000, v70, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Suppressing action because user has never set alarm before", buf, 2u);
      }

      v66 = objc_opt_new();
    }
  }

  else
  {
    v69 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v69, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: Earliest event is already covered by user alarm. Skipping", buf, 2u);
    }

    v66 = objc_opt_new();
  }

LABEL_41:
  _Block_object_dispose(&v119, 8);

  _Block_object_dispose(&v125, 8);
  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

void __62__ATXHeuristicEarlyEventAlarm_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)isEventInterestingForSettingAlarm:(id)alarm
{
  alarmCopy = alarm;
  v4 = [alarmCopy objectForKeyedSubscript:@"isAllDay"];

  if (v4)
  {
    v5 = [alarmCopy objectForKeyedSubscript:@"isAllDay"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_7;
    }
  }

  v7 = [alarmCopy objectForKeyedSubscript:@"nlEventCalendar"];

  if (v7)
  {
    v8 = [alarmCopy objectForKeyedSubscript:@"nlEventCalendar"];
    bOOLValue2 = [v8 BOOLValue];

    if (bOOLValue2)
    {
      goto LABEL_7;
    }
  }

  v10 = [alarmCopy objectForKeyedSubscript:@"eventTitle"];

  if (v10 && ([alarmCopy objectForKeyedSubscript:@"eventTitle"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"[Placeholder Item]"), v11, (v12 & 1) != 0))
  {
LABEL_7:
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)shouldShowSuggestionForEarlyEvent:(id)event alarms:(id)alarms environment:(id)environment
{
  v45 = *MEMORY[0x277D85DE8];
  alarmsCopy = alarms;
  environmentCopy = environment;
  v10 = [event objectForKeyedSubscript:@"startDateTimestamp"];
  [v10 doubleValue];
  v12 = v11;
  [(ATXHeuristicEarlyEventAlarm *)self _timestampByOffsettingStartOfTodayByNumberOfDays:1];
  v14 = v13;
  v15 = v12 + -3540.0;
  v16 = [(ATXHeuristicEarlyEventAlarm *)self _enabledAlarmsFromTS:environmentCopy toTS:v13 environment:v15];
  if ([v16 count])
  {
    v32 = v10;
    v33 = environmentCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:{@"isEnabled", v32, v33}];
          if ([v23 BOOLValue] && -[ATXHeuristicEarlyEventAlarm _willAlarm:fireFrom:to:](self, "_willAlarm:fireFrom:to:", v22, v14, v15))
          {

            v29 = 0;
            goto LABEL_23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v17;
    v24 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v17);
          }

          v28 = [*(*(&v34 + 1) + 8 * j) copy];
          [alarmsCopy addObject:v28];
        }

        v25 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v25);
    }

    v29 = 1;
LABEL_23:
    v10 = v32;
    environmentCopy = v33;
  }

  else
  {
    v17 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXHeuristicEarlyEventAlarm: shouldShowSuggestionForEarlyEvent: No existing alarms found", buf, 2u);
    }

    v29 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_willAlarm:(id)alarm fireFrom:(double)from to:(double)to
{
  v7 = MEMORY[0x277CBEAA8];
  alarmCopy = alarm;
  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:from];
  v10 = [alarmCopy objectForKeyedSubscript:@"MTAlarm"];

  v11 = [v10 nextFireDateAfterDate:v9];
  v12 = v11;
  if (v11)
  {
    [v11 timeIntervalSinceReferenceDate];
    v14 = v13 < to;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS environment:(id)environment
{
  environmentCopy = environment;
  v8 = [ATXAlarmsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v10 = [(ATXAlarmsDataSource *)v8 initWithDevice:heuristicDevice];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:s];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:tS];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__ATXHeuristicEarlyEventAlarm__enabledAlarmsFromTS_toTS_environment___block_invoke;
  v23[3] = &unk_278C3CDA8;
  v23[4] = &v30;
  v23[5] = &v24;
  [(ATXAlarmsDataSource *)v10 alarmsFromDate:v11 toDate:v12 completionHandler:v23];
  if (v25[5])
  {
    v13 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v13 _enabledAlarmsFromTS:v14 toTS:v15 environment:v16, v17, v18, v19, v20];
    }

    v21 = 0;
  }

  else
  {
    v21 = v31[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v21;
}

void __69__ATXHeuristicEarlyEventAlarm__enabledAlarmsFromTS_toTS_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_usualAlarmTimeOfDayDataSourceWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [ATXSetAlarmTimeOfDayDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXSetAlarmTimeOfDayDataSource *)v4 initWithDevice:heuristicDevice];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__ATXHeuristicEarlyEventAlarm__usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke;
  v17[3] = &unk_278C3CDD0;
  v17[4] = &v24;
  v17[5] = &v18;
  [(ATXSetAlarmTimeOfDayDataSource *)v6 alarmTimeOfDay:v17];
  if (v19[5])
  {
    v7 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicEarlyEventAlarm *)v7 _usualAlarmTimeOfDayDataSourceWithEnvironment:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = 0;
  }

  else
  {
    v15 = v25[5];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __77__ATXHeuristicEarlyEventAlarm__usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (double)_timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)days
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [currentCalendar startOfDayForDate:date];

  if (days)
  {
    v7 = [currentCalendar dateByAddingUnit:16 value:days toDate:v6 options:0];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
  }

  else
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v10;
  }

  return v9;
}

- (double)_timestampWithHour:(unint64_t)hour minute:(unint64_t)minute atDayOfTimestamp:(double)timestamp
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:timestamp];
  v10 = [currentCalendar components:28 fromDate:v9];
  [v10 setHour:hour];
  [v10 setMinute:minute];
  v11 = [currentCalendar dateFromComponents:v10];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  return v13;
}

- (double)_timestampByOffsettingDays:(double)days dayOffset:(int64_t)offset
{
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:days];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:offset toDate:v5 options:0];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v9;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enabledAlarmsFromTS:(uint64_t)a3 toTS:(uint64_t)a4 environment:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_usualAlarmTimeOfDayDataSourceWithEnvironment:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end