@interface ATXHeuristicCommuteToWork
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicCommuteToWork

- (id)permanentRefreshTriggers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getATXUpcomingCommuteToWorkAnchorClass_softClass;
  v15 = getATXUpcomingCommuteToWorkAnchorClass_softClass;
  if (!getATXUpcomingCommuteToWorkAnchorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getATXUpcomingCommuteToWorkAnchorClass_block_invoke;
    v11[3] = &unk_278C3CC98;
    v11[4] = &v12;
    __getATXUpcomingCommuteToWorkAnchorClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  if (v2)
  {
    v4 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
    v5 = [v2 keyPathForContextStore];
    v6 = [v2 predicateForContextStoreRegistration];
    v7 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v4 initWithCDContextualKeyPath:v5 predicate:v6 registrationIdentifier:@"commuteWork"];

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
    v13 = v5;
    goto LABEL_34;
  }

  v7 = [v3 heuristicDevice];
  v8 = [v7 locationManager];

  v9 = [v8 getCurrentLocation];
  if (!v9)
  {
    v14 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteToWork heuristicResultWithEnvironment:];
    }

    v13 = v6;
    goto LABEL_33;
  }

  v10 = [v8 locationOfInterestAtCurrentLocation];
  v11 = v10;
  if (!v10)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteToWork heuristicResultWithEnvironment:];
    }

    goto LABEL_13;
  }

  if (![v10 type])
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [v11 coordinate];
    v17 = v16;
    [v11 coordinate];
    v18 = [v15 initWithLatitude:v17 longitude:?];
    [v9 distanceFromLocation:v18];
    v20 = v19;
    if (v19 >= 500.0)
    {
      v30 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v39 = v20 / 1000.0;
        _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: No longer at cached loi. Distance is %.2f km", buf, 0xCu);
      }

      v13 = v6;
      goto LABEL_31;
    }

    v21 = [[ATXTripDuetEventClass alloc] initWithCurrentContextStoreValuesWithOriginLOI:v11 ignoreBeforeDate:0];
    v22 = v21;
    if (v21)
    {
      if ([v21 origin] == 1 || objc_msgSend(v22, "destination") == 2)
      {
        v37 = v18;
        v23 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          [v22 startDate];
          v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v39 = v24;
          _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: Creating suggestion for expected trip at %@", buf, 0xCu);
        }

        v25 = [v22 startDate];
        v26 = [v25 dateByAddingTimeInterval:-3600.0];

        v27 = [v22 startDate];
        v28 = [v27 dateByAddingTimeInterval:1800.0];

        v29 = [v3 heuristicDevice];
        v13 = [ATXHeuristicCommuteWorkUtilities heuristicResultToWorkWithValidStartDate:v26 validEndDate:v28 heuristicDevice:v29];

        v18 = v37;
        goto LABEL_30;
      }

      v31 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&v39 = [v22 origin];
        v40 = 2048;
        v41 = [v22 destination];
        v32 = "ATXHeuristicCommuteToWork: Trip not from home to work, %lu -> %lu";
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
        v32 = "ATXHeuristicCommuteToWork: No upcoming trip";
        v33 = v31;
        v34 = 2;
LABEL_28:
        _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      }
    }

    v13 = v6;
LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  v12 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: Current loi is not type Home", buf, 2u);
  }

LABEL_13:

  v13 = v6;
LABEL_32:

LABEL_33:
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v13;
}

@end