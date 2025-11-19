@interface ATXHeuristicCommuteFromWork
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicCommuteFromWork

- (id)permanentRefreshTriggers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getATXUpcomingCommuteFromWorkAnchorClass_softClass;
  v15 = getATXUpcomingCommuteFromWorkAnchorClass_softClass;
  if (!getATXUpcomingCommuteFromWorkAnchorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getATXUpcomingCommuteFromWorkAnchorClass_block_invoke;
    v11[3] = &unk_278C3CC98;
    v11[4] = &v12;
    __getATXUpcomingCommuteFromWorkAnchorClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  if (v2)
  {
    v4 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
    v5 = [v2 keyPathForContextStore];
    v6 = [v2 predicateForContextStoreRegistration];
    v7 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v4 initWithCDContextualKeyPath:v5 predicate:v6 registrationIdentifier:@"commuteHome"];

    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v7, 0}];
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (id)heuristicResultWithEnvironment:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  ATXTripDuetEventClass = getATXTripDuetEventClass();
  v5 = objc_opt_new();
  v6 = v5;
  if (!ATXTripDuetEventClass)
  {
    v27 = v5;
    goto LABEL_34;
  }

  v7 = [v3 heuristicDevice];
  v8 = [v7 locationManager];

  v9 = [v8 getCurrentLocation];
  if (!v9)
  {
    v28 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteFromWork heuristicResultWithEnvironment:];
    }

    v27 = v6;
    goto LABEL_33;
  }

  v10 = [v8 locationOfInterestAtCurrentLocation];
  v11 = v10;
  if (v10)
  {
    if ([v10 type] == 1)
    {
      v12 = objc_alloc(MEMORY[0x277CE41F8]);
      [v11 coordinate];
      v14 = v13;
      [v11 coordinate];
      v15 = [v12 initWithLatitude:v14 longitude:?];
      [v9 distanceFromLocation:v15];
      v17 = v16;
      if (v16 >= 500.0)
      {
        v30 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v39 = v17 / 1000.0;
          _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: No longer at cached loi. Distance is %.2f km", buf, 0xCu);
        }

        v27 = v6;
        goto LABEL_31;
      }

      v18 = [[ATXTripDuetEventClass alloc] initWithCurrentContextStoreValuesWithOriginLOI:v11 ignoreBeforeDate:0];
      v19 = v18;
      if (v18)
      {
        if ([v18 origin] == 2 || objc_msgSend(v19, "destination") == 1)
        {
          v37 = v15;
          v20 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v19 startDate];
            v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412290;
            v39 = v21;
            _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: Creating suggestion for expected trip at %@", buf, 0xCu);
          }

          v22 = [v19 startDate];
          v23 = [v22 dateByAddingTimeInterval:-3600.0];

          v24 = [v19 startDate];
          v25 = [v24 dateByAddingTimeInterval:1800.0];

          v26 = [v3 heuristicDevice];
          v27 = [ATXHeuristicCommuteHomeUtilities heuristicResultToHomeWithValidStartDate:v23 validEndDate:v25 heuristicDevice:v26];

          v15 = v37;
          goto LABEL_30;
        }

        v31 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&v39 = [v19 origin];
          v40 = 2048;
          v41 = [v19 destination];
          v32 = "ATXHeuristicCommuteToHome: Trip not from work to home, %lu -> %lu";
          v33 = v31;
          v34 = 22;
          goto LABEL_28;
        }
      }

      else
      {
        v31 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v32 = "ATXHeuristicCommuteToHome: No upcoming trip";
          v33 = v31;
          v34 = 2;
LABEL_28:
          _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
        }
      }

      v27 = v6;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v29 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: Current loi is not type Work", buf, 2u);
    }
  }

  else
  {
    v29 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteFromWork heuristicResultWithEnvironment:];
    }
  }

  v27 = v6;
LABEL_32:

LABEL_33:
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v27;
}

@end