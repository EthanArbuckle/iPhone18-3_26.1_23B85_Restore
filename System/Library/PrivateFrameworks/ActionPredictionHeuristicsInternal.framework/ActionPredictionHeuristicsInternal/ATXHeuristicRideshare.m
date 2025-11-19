@interface ATXHeuristicRideshare
+ (void)_appRegistrationChange:(id)a3;
+ (void)subscribeNotification;
- (ATXHeuristicRideshare)init;
- (id)_dateIntervalWithEvent:(id)a3;
- (id)_rideShareSuggestionActionForDestination:(id)a3 heuristicDevice:(id)a4 flightInformationSchema:(id)a5 predictionReasons:(unint64_t)a6 score:(double)a7 validFromStartDate:(id)a8 validToEndDate:(id)a9 dateInterval:(id)a10;
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
- (id)rideShareAppWithHeuristicDevice:(id)a3;
- (id)rideShareSuggestionActionForEvent:(id)a3 heuristicDevice:(id)a4 predictionReasons:(unint64_t)a5 score:(double)a6 validFromStartDate:(id)a7 validToEndDate:(id)a8;
- (id)suggestionForConcludedFlightWithHeuristicDevice:(id)a3;
- (id)suggestionForUpcomingFlightWithHeuristicDevice:(id)a3;
- (void)dealloc;
- (void)sendRefreshNotificationIfRequired:(id)a3;
- (void)setupCellularNetworkMonitoring;
@end

@implementation ATXHeuristicRideshare

- (void)setupCellularNetworkMonitoring
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("ATXHeuristicsRideshareRefresh", v3);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v4;

  v6 = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ATXHeuristicRideshare_setupCellularNetworkMonitoring__block_invoke;
  block[3] = &unk_278C3CF40;
  block[4] = self;
  dispatch_async(v6, block);
}

void __55__ATXHeuristicRideshare_setupCellularNetworkMonitoring__block_invoke(uint64_t a1)
{
  v2 = nw_path_monitor_create_with_type(nw_interface_type_cellular);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = MEMORY[0x23EF0A060]();
  nw_parameters_set_required_interface_type(v5, nw_interface_type_cellular);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (evaluator_for_endpoint)
  {
    v7 = nw_path_evaluator_copy_path();
    if (MEMORY[0x23EF0A100](v7, 2))
    {
      *(*(a1 + 32) + 32) = nw_path_get_status(v7);
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ATXHeuristicRideshare_setupCellularNetworkMonitoring__block_invoke_2;
  v9[3] = &unk_278C3D2A8;
  objc_copyWeak(&v10, &location);
  nw_path_monitor_set_update_handler(v8, v9);
  nw_path_monitor_set_queue(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24));
  nw_path_monitor_start(*(*(a1 + 32) + 8));
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__ATXHeuristicRideshare_setupCellularNetworkMonitoring__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (MEMORY[0x23EF0A100]())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained sendRefreshNotificationIfRequired:v4];
  }
}

- (void)sendRefreshNotificationIfRequired:(id)a3
{
  status = nw_path_get_status(a3);
  v5 = status;
  currentStatus = self->_currentStatus;
  p_currentStatus = &self->_currentStatus;
  if (currentStatus != 1 && status == nw_path_status_satisfied)
  {
    v9 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ATXHeuristicRideshare sendRefreshNotificationIfRequired:?];
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"ATXCellularEnabledNotification" object:0];
  }

  *p_currentStatus = v5;
}

+ (void)subscribeNotification
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:objc_opt_class() selector:sel__appRegistrationChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:objc_opt_class() selector:sel__appRegistrationChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

- (ATXHeuristicRideshare)init
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicRideshare;
  v2 = [(ATXHeuristicRideshare *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXHeuristicRideshare *)v2 setupCellularNetworkMonitoring];
    [objc_opt_class() subscribeNotification];
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  pathMonitor = self->_pathMonitor;
  if (pathMonitor)
  {
    nw_path_monitor_cancel(pathMonitor);
  }

  objc_autoreleasePoolPop(v3);
  v5.receiver = self;
  v5.super_class = ATXHeuristicRideshare;
  [(ATXHeuristicRideshare *)&v5 dealloc];
}

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXRideshareAppChangeNotification" type:0];
  v5 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXCellularEnabledNotification" type:0];
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, v4, v5, 0}];
  objc_autoreleasePoolPop(v6);

  return v7;
}

- (id)heuristicResultWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 heuristicDevice];
  v7 = [(ATXHeuristicRideshare *)self suggestionForUpcomingFlightWithHeuristicDevice:v6];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [v4 heuristicDevice];
  v9 = [(ATXHeuristicRideshare *)self suggestionForConcludedFlightWithHeuristicDevice:v8];

  if (v9)
  {
    [v5 addObject:v9];
  }

  v10 = [ATXContextHeuristicResult alloc];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [(ATXContextHeuristicResult *)v10 initWithSuggestions:v5 additionalRefreshTriggers:v11];

  return v12;
}

+ (void)_appRegistrationChange:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[ATXHeuristicRideshare _appRegistrationChange:];
  }

  v6 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v7 = [v6 copy];

  v8 = [v7 firstObject];
  v9 = [v3 name];

  v10 = [v9 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"ATXRideshareAppChangeNotification" object:0];

  v12 = __atxlog_handle_context_heuristic();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v13)
    {
      +[ATXHeuristicRideshare _appRegistrationChange:];
    }
  }

  else if (v13)
  {
    +[ATXHeuristicRideshare _appRegistrationChange:];
  }
}

- (id)rideShareAppWithHeuristicDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__10;
  v13[3] = __Block_byref_object_dispose__10;
  v14 = 0;
  v4 = [[ATXUserAppPreferenceDataSource alloc] initWithDevice:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__ATXHeuristicRideshare_rideShareAppWithHeuristicDevice___block_invoke;
  v11[3] = &unk_278C3D2D0;
  v11[4] = &v15;
  v11[5] = &v12;
  [(ATXUserAppPreferenceDataSource *)v4 preferredAppForIntentName:@"INRequestRideIntent" andParameterCombination:&unk_2850BA338 skipAppSchemaCheck:1 callback:v11];
  if (*(v13[0] + 40))
  {
    v5 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicRideshare *)v13 rideShareAppWithHeuristicDevice:v5];
    }

    v6 = 0;
  }

  else
  {
    if (v16[5])
    {
      v7 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v16[5];
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "Using %@ app for rideshare", buf, 0xCu);
      }
    }

    else
    {
      v7 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicRideshare rideShareAppWithHeuristicDevice:];
      }
    }

    v6 = v16[5];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v15, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

void __57__ATXHeuristicRideshare_rideShareAppWithHeuristicDevice___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_rideShareSuggestionActionForDestination:(id)a3 heuristicDevice:(id)a4 flightInformationSchema:(id)a5 predictionReasons:(unint64_t)a6 score:(double)a7 validFromStartDate:(id)a8 validToEndDate:(id)a9 dateInterval:(id)a10
{
  v17 = a3;
  v36 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowRequestRide", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
  {
    v34 = a6;
    v35 = v20;
    v22 = v19;
    v23 = MEMORY[0x277CCACA8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"REQUEST_RIDE_TO_NEXT_EVENT_TITLE" value:&stru_2850AD368 table:0];
    v26 = [v17 name];
    v27 = [v23 localizedStringWithFormat:v25, v26];

    v28 = 0;
    if (!v18)
    {
      v28 = [v17 name];
    }

    v29 = v36;
    v30 = [(ATXHeuristicRideshare *)self rideShareAppWithHeuristicDevice:v36];
    v19 = v22;
    if (v30)
    {
      v31 = [[ATXContextFlightEventSuggestionProducer alloc] initWithTitle:v27 flightInformationSchema:v18 urlString:0 teamIdentifier:0 validFromStartDate:v22 validToEndDate:v35 alternateDestinationTitle:v28 dateInterval:v21];
      v32 = [(ATXContextFlightEventSuggestionProducer *)v31 suggestionForRideShareAppForDestination:v17 source:0 rideOptionName:0 preferredBundleId:v30 predictionReasons:v34 score:a7];
      [ATXHeuristicFlightEventUtilities logSuggestion:v32 description:@"ATXHeuristicRideshare: Rideshare app for flight suggestion"];

      v19 = v22;
    }

    else
    {
      v32 = 0;
    }

    v20 = v35;
  }

  else
  {
    v28 = __atxlog_handle_ui();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v28, OS_LOG_TYPE_DEFAULT, "Debug: Skip suggestion for request ride", buf, 2u);
    }

    v32 = 0;
    v29 = v36;
  }

  return v32;
}

- (id)rideShareSuggestionActionForEvent:(id)a3 heuristicDevice:(id)a4 predictionReasons:(unint64_t)a5 score:(double)a6 validFromStartDate:(id)a7 validToEndDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v42 = a7;
  v43 = a8;
  v16 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:v14];
  v17 = [ATXHeuristicFlightEventUtilities updatedFlightInformationSchemaForEvent:v14 schemaForFlight:v16 heuristicDevice:v15];
  v18 = [v14 customObjectForKey:@"SGEventMetadataKey"];
  v19 = [v18 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v20 = [v19 isEqualToString:@"Lodging"];

  if ((a5 & 0x80000000) != 0)
  {
    v28 = [v17 objectForKeyedSubscript:@"reservationFor"];
    v29 = [v28 objectForKeyedSubscript:@"departureAirport"];
    v26 = [v29 objectForKeyedSubscript:@"iataCode"];

    if (!v26)
    {
      v30 = [v14 structuredLocation];
      v26 = [v30 title];
    }

    v31 = v14;
    v32 = v26;
    v33 = 0;
  }

  else
  {
    if ((((a5 & 0x200000000) != 0) & v20) == 1)
    {
      v21 = [v14 structuredLocation];
      if (!v21)
      {
        goto LABEL_6;
      }

      v22 = v21;
      v23 = [v14 structuredLocation];
      v24 = [v23 geoLocation];

      if (!v24 || ([v14 structuredLocation], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "title"), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
      {
LABEL_6:
        v27 = [v17 objectForKeyedSubscript:@"reservationFor"];
        v26 = [v27 objectForKeyedSubscript:@"name"];
      }
    }

    else
    {
      if ((a5 & 0x100000) == 0)
      {
        v34 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [ATXHeuristicRideshare rideShareSuggestionActionForEvent:heuristicDevice:predictionReasons:score:validFromStartDate:validToEndDate:];
        }

        v26 = 0;
        v35 = 0;
        v36 = v42;
        goto LABEL_19;
      }

      v37 = [v14 title];
      if (!v37)
      {
        v34 = __atxlog_handle_context_heuristic();
        v36 = v42;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [ATXHeuristicRideshare rideShareSuggestionActionForEvent:heuristicDevice:predictionReasons:score:validFromStartDate:validToEndDate:];
        }

        v26 = 0;
        v35 = 0;
        goto LABEL_19;
      }

      v26 = v37;
    }

    v31 = v14;
    v32 = v26;
    v33 = 1;
  }

  v38 = [ATXHeuristicNavigationUtilities destinationPlacemarkForEvent:v31 name:v32 schemaType:v33];
  if (v38)
  {
    v34 = v38;
    v39 = [(ATXHeuristicRideshare *)self _dateIntervalWithEvent:v14];
    v40 = self;
    v36 = v42;
    v35 = [(ATXHeuristicRideshare *)v40 _rideShareSuggestionActionForDestination:v34 heuristicDevice:v15 flightInformationSchema:v17 predictionReasons:a5 score:v42 validFromStartDate:v43 validToEndDate:a6 dateInterval:v39];

LABEL_19:
    goto LABEL_21;
  }

  v35 = 0;
  v36 = v42;
LABEL_21:

  return v35;
}

- (id)suggestionForUpcomingFlightWithHeuristicDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v5 dateByAddingTimeInterval:86400.0];
  v7 = [[ATXCalendarEventsDataSource alloc] initWithDevice:v4];
  v8 = [(ATXCalendarEventsDataSource *)v7 flightEventsFromStartDate:v5 endDate:v6 reason:@"ride share for upcoming flight heuristic"];
  v9 = [(ATXCalendarEventsDataSource *)v7 sortEkEvents:v8];
  v10 = [v9 firstObject];
  if (v10)
  {
    v20 = self;
    v11 = [ATXHeuristicNavigationUtilities locationFromEvent:v10 schemaType:0];
    v12 = 0;
    if ([ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v11 maxDistance:250000])
    {
      v19 = v11;
      v13 = [v10 startDate];
      v14 = [v13 dateByAddingTimeInterval:-14400.0];

      v15 = [v10 startDate];
      v16 = [v15 dateByAddingTimeInterval:-2400.0];

      if ([v14 compare:v16] == 1)
      {
        v17 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXHeuristicRideshare suggestionForUpcomingFlightWithHeuristicDevice:];
        }

        v12 = 0;
      }

      else
      {
        v12 = [(ATXHeuristicRideshare *)v20 rideShareSuggestionActionForEvent:v10 heuristicDevice:v4 predictionReasons:0x80000000 score:v14 validFromStartDate:v16 validToEndDate:60.0];
        if (v12)
        {
          [ATXHeuristicFlightEventUtilities logSuggestion:v12 description:@"ATXHeuristicRideshare: Upcoming flight suggestion"];
        }
      }

      v11 = v19;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)suggestionForConcludedFlightWithHeuristicDevice:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v4 dateByAddingTimeInterval:-64800.0];
  v6 = [ATXCalendarEventsDataSource alloc];
  v65 = v3;
  v7 = v3;
  v8 = v4;
  v9 = [(ATXCalendarEventsDataSource *)v6 initWithDevice:v7];
  v10 = [(ATXCalendarEventsDataSource *)v9 flightEventsFromStartDate:v5 endDate:v8 reason:@"ride share for concluded flight heuristic"];
  v11 = [(ATXCalendarEventsDataSource *)v9 sortEkEvents:v10];
  if (![v11 count])
  {
    v45 = 0;
    goto LABEL_44;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = v11;
  v58 = [v12 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (!v58)
  {
    v45 = 0;
    goto LABEL_43;
  }

  v59 = *v73;
  v56 = v11;
  v57 = v10;
  v55 = v12;
  v52 = v9;
  v53 = v5;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v73 != v59)
      {
        objc_enumerationMutation(v12);
      }

      v61 = v13;
      v66 = *(*(&v72 + 1) + 8 * v13);
      v63 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:?];
      v62 = [v8 dateByAddingTimeInterval:-43200.0];
      v14 = [ATXCalendarEventsDataSource hotelEventsFromStartDate:v9 endDate:"hotelEventsFromStartDate:endDate:reason:" reason:?];
      if (![v14 count])
      {
        [v8 dateByAddingTimeInterval:43200.0];
        v16 = v15 = v5;
        v17 = [(ATXCalendarEventsDataSource *)v9 hotelEventsFromStartDate:v8 endDate:v16 reason:@"hotel search for concluded flight"];
        v18 = v14;
        v14 = v17;

        v5 = v15;
      }

      v19 = [(ATXCalendarEventsDataSource *)v9 sortEkEvents:v14];
      if ([v19 count])
      {
        v60 = v14;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        obj = v19;
        v20 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (v20)
        {
          v21 = v20;
          v54 = v19;
          v22 = *v69;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v69 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v68 + 1) + 8 * i);
              v25 = [ATXHeuristicNavigationUtilities locationFromEvent:v24 schemaType:1];
              if ([ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v25 maxDistance:250000])
              {
                v26 = [v66 endDate];
                [v26 timeIntervalSinceDate:v8];
                v28 = v27;

                v29 = [v24 startDate];
                v30 = [v8 compare:v29];

                if (v30 == -1 && v28 <= 14400.0)
                {
                  v32 = v8;
                  v33 = [v24 endDate];
                  v34 = [v24 endDate];
                  v35 = [v34 dateByAddingTimeInterval:14400.0];

                  if ([v33 compare:v35] == 1)
                  {
                    v46 = __atxlog_handle_context_heuristic();
                    v9 = v52;
                    v5 = v53;
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
                    {
                      [ATXHeuristicRideshare suggestionForUpcomingFlightWithHeuristicDevice:];
                    }

                    v45 = 0;
                    v8 = v32;
                    goto LABEL_42;
                  }

                  v36 = [(ATXHeuristicRideshare *)self rideShareSuggestionActionForEvent:v24 heuristicDevice:v65 predictionReasons:0x200000000 score:v33 validFromStartDate:v35 validToEndDate:60.0];
                  if (v36)
                  {
                    v45 = v36;
                    [ATXHeuristicFlightEventUtilities logSuggestion:v36 description:@"ATXHeuristicRideshare: Concluded flight suggestion"];
                    v8 = v32;
                    v9 = v52;
                    v5 = v53;
                    goto LABEL_42;
                  }

                  v8 = v32;
                }
              }
            }

            v21 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v9 = v52;
          v5 = v53;
          v11 = v56;
          v10 = v57;
          v19 = v54;
          v12 = v55;
        }
      }

      else
      {
        if (![ATXHeuristicFlightEventUtilities currentLocationIsWithinAirportForEvent:v66])
        {
          goto LABEL_33;
        }

        v60 = v14;
        obj = [ATXHeuristicNavigationUtilities fetchLocationForLOI:0];
        v37 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:"allowNavigationSuggestionForLocation:maxDistance:" maxDistance:?];
        v38 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v77 = v37;
          _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "ATXHeursiticRideshare: Can we go home (%{BOOL}d)", buf, 8u);
        }

        if (v37)
        {
          v39 = v9;
          v40 = v8;
          v41 = MEMORY[0x277CCACA8];
          v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v43 = [v42 localizedStringForKey:@"HOME_NAVIGATION_TITLE" value:&stru_2850AD368 table:0];
          v25 = [v41 localizedStringWithFormat:v43];

          v44 = [ATXHeuristicNavigationUtilities placemarkForLOI:0 name:v25];
          if (v44)
          {
            v33 = v44;
            v54 = v19;
            v35 = [v66 endDate];
            v49 = [v66 endDate];
            v50 = [v49 dateByAddingTimeInterval:14400.0];

            v51 = [(ATXHeuristicRideshare *)self _dateIntervalWithEvent:v66];
            v45 = [(ATXHeuristicRideshare *)self _rideShareSuggestionActionForDestination:v33 heuristicDevice:v65 flightInformationSchema:v63 predictionReasons:0x200000000 score:v35 validFromStartDate:v50 validToEndDate:60.0 dateInterval:v51];

            v8 = v40;
            v9 = v39;
LABEL_42:

            v11 = v56;
            v10 = v57;
            v12 = v55;
            goto LABEL_43;
          }

          v8 = v40;
          v9 = v39;
          v11 = v56;
          v10 = v57;
          v12 = v55;
        }
      }

      v14 = v60;
LABEL_33:

      v13 = v61 + 1;
    }

    while (v61 + 1 != v58);
    v45 = 0;
    v58 = [v12 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_43:

LABEL_44:
  v47 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)_dateIntervalWithEvent:(id)a3
{
  v3 = MEMORY[0x277CCA970];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 startDate];
  v7 = [v4 endDate];

  v8 = [v5 initWithStartDate:v6 endDate:v7];

  return v8;
}

- (void)sendRefreshNotificationIfRequired:(int *)a1 .cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_appRegistrationChange:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_appRegistrationChange:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_appRegistrationChange:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rideShareAppWithHeuristicDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Error while resolving ride share apps: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)suggestionForUpcomingFlightWithHeuristicDevice:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_1(&dword_23E3EA000, v0, v1, "ATXHeuristicRideshare: Start %@ is after End %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end