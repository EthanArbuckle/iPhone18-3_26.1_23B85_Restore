@interface ATXHeuristicFlightEventUtilities
+ (BOOL)currentLocationIsWithinAirportForEvent:(id)event;
+ (CLLocationCoordinate2D)locationAtArrivalAirport:(id)airport event:(id)event heuristicDevice:(id)device;
+ (id)_dateIntervalWithEvent:(id)event;
+ (id)fetchDestinationPlacemarkForFlightEvent:(id)event heuristicDevice:(id)device;
+ (id)flightInformationSchemaForEvent:(id)event;
+ (id)flightInformationSpotlightSuggestionForEvent:(id)event schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate;
+ (id)flightSchemaForEvent:(id)event;
+ (id)lastFlightLegEndTimeForEvent:(id)event heuristicDevice:(id)device;
+ (id)updatedFlightInformationSchemaForEvent:(id)event schemaForFlight:(id)flight heuristicDevice:(id)device;
+ (void)logSuggestion:(id)suggestion description:(id)description;
@end

@implementation ATXHeuristicFlightEventUtilities

+ (void)logSuggestion:(id)suggestion description:(id)description
{
  v20 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  descriptionCopy = description;
  atxActionCriteria = [suggestionCopy atxActionCriteria];
  v8 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [atxActionCriteria startDate];
    endDate = [atxActionCriteria endDate];
    v12 = 138413058;
    v13 = descriptionCopy;
    v14 = 2112;
    v15 = startDate;
    v16 = 2112;
    v17 = endDate;
    v18 = 2112;
    v19 = suggestionCopy;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "%@: start: %@, end: %@, %@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)flightSchemaForEvent:(id)event
{
  v3 = [event customObjectForKey:@"SGEventMetadataKey"];
  v4 = [v3 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)flightInformationSchemaForEvent:(id)event
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [event customObjectForKey:@"SGEventMetadataKey"];
  DeepCopy = CFPropertyListCreateDeepCopy(0, v3, 1uLL);
  v5 = [DeepCopy objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v5 firstObject];
  v7 = [firstObject objectForKeyedSubscript:@"reservationFor"];
  v8 = [firstObject objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"arrivalAirport"];

  v10 = [v9 objectForKeyedSubscript:@"address"];
  v11 = [v10 objectForKeyedSubscript:@"addressLocality"];

  v12 = [v9 objectForKeyedSubscript:@"iataCode"];
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v26 = DeepCopy;
    v27 = v3;
    mEMORY[0x277D024F0] = [MEMORY[0x277D024F0] sharedInstance];
    v15 = [mEMORY[0x277D024F0] cityForIataCode:v12];
    capitalizedString = [v15 capitalizedString];

    if (capitalizedString)
    {
      v17 = [v9 objectForKeyedSubscript:@"address"];
      if (v17)
      {
        v18 = [v9 objectForKeyedSubscript:@"address"];
        v19 = v18;
        v20 = @"addressLocality";
        v21 = capitalizedString;
      }

      else
      {
        v28 = @"addressLocality";
        v29[0] = capitalizedString;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v20 = @"address";
        v18 = v9;
        v21 = v19;
      }

      [v18 setObject:v21 forKeyedSubscript:v20];
    }

    [v7 setObject:v9 forKeyedSubscript:@"arrivalAirport"];
    [firstObject setObject:v7 forKeyedSubscript:@"reservationFor"];

    DeepCopy = v26;
    v3 = v27;
  }

  if (firstObject)
  {
    v22 = firstObject;
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)updatedFlightInformationSchemaForEvent:(id)event schemaForFlight:(id)flight heuristicDevice:(id)device
{
  v32[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  flightCopy = flight;
  deviceCopy = device;
  v10 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v11 = v10;
  if (v10 && ([v10 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"Flight"), v12, (v13 & 1) != 0))
  {
    DeepCopy = CFPropertyListCreateDeepCopy(0, flightCopy, 1uLL);
    v15 = [ATXHeuristicFlightEventUtilities fetchDestinationPlacemarkForFlightEvent:eventCopy heuristicDevice:deviceCopy];
    v16 = v15;
    if (v15)
    {
      locality = [v15 locality];
      country = [v16 country];
      v19 = country;
      if (locality && country)
      {
        v29 = [DeepCopy objectForKeyedSubscript:@"reservationFor"];
        v20 = [DeepCopy objectForKeyedSubscript:@"reservationFor"];
        v21 = [v20 objectForKeyedSubscript:@"arrivalAirport"];

        v27 = v21;
        v22 = [v21 objectForKeyedSubscript:@"address"];
        v23 = [v22 objectForKeyedSubscript:@"addressLocality"];
        v30 = [v22 objectForKeyedSubscript:@"addressCountry"];
        v28 = v19;
        if (!v23 || !v30 || ![locality isEqualToString:v23] || (objc_msgSend(v19, "isEqualToString:", v30) & 1) == 0)
        {
          if (v22)
          {
            [v22 setObject:locality forKeyedSubscript:@"addressLocality"];
            [v22 setObject:v19 forKeyedSubscript:@"addressCountry"];
          }

          else
          {
            v31[0] = @"addressLocality";
            v31[1] = @"addressCountry";
            v32[0] = locality;
            v32[1] = v19;
            v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
            v22 = [v24 mutableCopy];
          }
        }

        [v27 setObject:v22 forKeyedSubscript:@"address"];
        [v29 setObject:v27 forKeyedSubscript:@"arrivalAirport"];
        [DeepCopy setObject:v29 forKeyedSubscript:@"reservationFor"];

        v19 = v28;
      }
    }
  }

  else
  {
    DeepCopy = flightCopy;
  }

  v25 = *MEMORY[0x277D85DE8];

  return DeepCopy;
}

+ (id)lastFlightLegEndTimeForEvent:(id)event heuristicDevice:(id)device
{
  deviceCopy = device;
  eventCopy = event;
  endDate = [eventCopy endDate];
  endDate2 = [eventCopy endDate];

  v10 = [endDate2 dateByAddingTimeInterval:43200.0];

  v11 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "lastFlightLedEnd Event search", buf, 2u);
  }

  v12 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v13 = [(ATXCalendarEventsDataSource *)v12 flightEventsFromStartDate:endDate endDate:v10 reason:@"last flight leg computation"];
  date = [MEMORY[0x277CBEAA8] date];
  v15 = MEMORY[0x277CCAC30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__ATXHeuristicFlightEventUtilities_lastFlightLegEndTimeForEvent_heuristicDevice___block_invoke;
  v26[3] = &unk_278C3CE60;
  v27 = date;
  v16 = date;
  v17 = [v15 predicateWithBlock:v26];
  v18 = [v13 filteredArrayUsingPredicate:v17];

  v19 = [(ATXCalendarEventsDataSource *)v12 sortEkEvents:v18];
  if ([v19 count])
  {
    v25 = v10;
    v20 = endDate;
    lastObject = [v19 lastObject];
    v22 = [self lastFlightLegEndTimeForEvent:lastObject heuristicDevice:deviceCopy];
    if (v22)
    {
      [self lastFlightLegEndTimeForEvent:lastObject heuristicDevice:deviceCopy];
    }

    else
    {
      [lastObject endDate];
    }
    v23 = ;

    endDate = v20;
    v10 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL __81__ATXHeuristicFlightEventUtilities_lastFlightLegEndTimeForEvent_heuristicDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 endDate];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

+ (id)fetchDestinationPlacemarkForFlightEvent:(id)event heuristicDevice:(id)device
{
  eventCopy = event;
  deviceCopy = device;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [self lastFlightLegEndTimeForEvent:eventCopy heuristicDevice:deviceCopy];
  objc_autoreleasePoolPop(v9);
  if (!v10)
  {
    endDate = [eventCopy endDate];
    v10 = [endDate dateByAddingTimeInterval:43200.0];
  }

  v12 = objc_opt_new();
  startDate = [eventCopy startDate];
  [v12 setFromDate:startDate];

  [v12 setToDate:v10];
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_2850BA4A0, 0}];
  objc_autoreleasePoolPop(v14);
  [v12 setMatchingCategories:v15];

  v16 = objc_opt_new();
  v101[0] = 0;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke;
  v98[3] = &unk_278C3CE88;
  v99 = 0;
  v17 = v16;
  v100 = v17;
  v89 = v8;
  [v8 iterScoredEventsWithQuery:v12 error:v101 block:v98];
  v88 = v101[0];
  date = [MEMORY[0x277CBEAA8] date];
  v90 = eventCopy;
  startDate2 = [eventCopy startDate];
  v20 = [startDate2 dateByAddingTimeInterval:-3600.0];

  v21 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "fetchDestinationPlacemark Event search", buf, 2u);
  }

  v22 = deviceCopy;
  v23 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v24 = [(ATXCalendarEventsDataSource *)v23 flightEventsFromStartDate:v20 endDate:v10 reason:@"destination placemark event search"];
  v25 = MEMORY[0x277CCAC30];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_229;
  v95[3] = &unk_278C3CE60;
  v84 = date;
  v96 = v84;
  v26 = [v25 predicateWithBlock:v95];
  v85 = v24;
  v27 = [v24 filteredArrayUsingPredicate:v26];

  v86 = v23;
  v28 = [(ATXCalendarEventsDataSource *)v23 sortEkEvents:v27];
  v93 = objc_opt_new();
  v92 = objc_opt_new();
  v29 = objc_opt_new();
  v94 = v28;
  v87 = v20;
  v91 = v29;
  if ([v28 count] < 2)
  {
    goto LABEL_22;
  }

  v77 = v27;
  v80 = v12;
  firstObject = [v28 firstObject];
  v30 = [ATXHeuristicFlightEventUtilities flightSchemaForEvent:?];
  v31 = [v30 objectForKeyedSubscript:@"reservationFor"];
  v32 = [v31 objectForKeyedSubscript:@"arrivalAirport"];
  v33 = [v32 objectForKeyedSubscript:@"iataCode"];

  v34 = [v30 objectForKeyedSubscript:@"reservationFor"];
  v35 = [v34 objectForKeyedSubscript:@"departureAirport"];
  v36 = [v35 objectForKeyedSubscript:@"iataCode"];

  if (v33)
  {
    [v93 addObject:v33];
  }

  if (v36)
  {
    [v92 addObject:v36];
  }

  v82 = v10;
  v74 = v22;
  [v29 addObject:firstObject];
  v37 = v94;
  if ([v94 count] < 2)
  {
    goto LABEL_21;
  }

  v38 = 1;
  while (1)
  {
    v39 = v36;
    v40 = v33;
    v41 = v30;
    v42 = [v37 objectAtIndexedSubscript:v38];
    v30 = [ATXHeuristicFlightEventUtilities flightSchemaForEvent:v42];

    v43 = [v30 objectForKeyedSubscript:@"reservationFor"];
    v44 = [v43 objectForKeyedSubscript:@"arrivalAirport"];
    v33 = [v44 objectForKeyedSubscript:@"iataCode"];

    v45 = [v30 objectForKeyedSubscript:@"reservationFor"];
    v46 = [v45 objectForKeyedSubscript:@"departureAirport"];
    v36 = [v46 objectForKeyedSubscript:@"iataCode"];

    if (!v33 || !v36)
    {
      goto LABEL_17;
    }

    lastObject = [v93 lastObject];
    if (![lastObject isEqualToString:v36])
    {
      break;
    }

    v48 = [v92 containsObject:v33];

    if (v48)
    {
      goto LABEL_20;
    }

    [v92 addObject:v36];
    [v93 addObject:v33];
    [v29 addObject:v42];
LABEL_17:

    ++v38;
    v37 = v94;
    if (v38 >= [v94 count])
    {
      goto LABEL_21;
    }
  }

LABEL_20:
LABEL_21:

  v22 = v74;
  v12 = v80;
  v10 = v82;
  v27 = v77;
LABEL_22:
  if ([v29 count])
  {
    lastObject2 = [v29 lastObject];
  }

  else
  {
    lastObject2 = v90;
  }

  v50 = lastObject2;
  v51 = v22;
  endLocation = [lastObject2 endLocation];
  v53 = v92;
  if (!endLocation)
  {
    goto LABEL_32;
  }

  v54 = endLocation;
  endLocation2 = [v50 endLocation];
  geoLocation = [endLocation2 geoLocation];

  if (!geoLocation)
  {
    goto LABEL_32;
  }

  v78 = v27;
  v79 = v17;
  v81 = v12;
  v83 = v10;
  v57 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:v50];
  v58 = [v57 objectForKeyedSubscript:@"reservationFor"];
  v59 = [v58 objectForKeyedSubscript:@"arrivalAirport"];
  v60 = [v59 objectForKeyedSubscript:@"address"];
  v61 = [v60 objectForKeyedSubscript:@"addressLocality"];

  v62 = [v57 objectForKeyedSubscript:@"reservationFor"];
  v63 = [v62 objectForKeyedSubscript:@"arrivalAirport"];
  v64 = [v63 objectForKeyedSubscript:@"address"];
  v65 = [v64 objectForKeyedSubscript:@"addressCountry"];

  v66 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v67 = v66;
  if (v61)
  {
    v75 = v51;
    [v66 setCity:v61];
    if (v65)
    {
      [v67 setCountry:v65];
    }

    v68 = MEMORY[0x277CBFC40];
    endLocation3 = [v50 endLocation];
    geoLocation2 = [endLocation3 geoLocation];
    endLocation4 = [v50 endLocation];
    title = [endLocation4 title];
    v62 = [v68 placemarkWithLocation:geoLocation2 name:title postalAddress:v67];

    v51 = v75;
  }

  v12 = v81;
  v10 = v83;
  v27 = v78;
  v17 = v79;
  v53 = v92;
  if (!v61)
  {
LABEL_32:
    v62 = 0;
  }

  return v62;
}

void __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    v4 = *(a1 + 40);

    [v4 addObject:a2];
  }
}

BOOL __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_229(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 endDate];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

+ (CLLocationCoordinate2D)locationAtArrivalAirport:(id)airport event:(id)event heuristicDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  airportCopy = airport;
  v9 = [self fetchDestinationPlacemarkForFlightEvent:event heuristicDevice:device];
  v10 = v9;
  if (v9)
  {
    location = [v9 location];
    [location coordinate];
    latitude = v12;
    longitude = v14;
  }

  else
  {
    v16 = [airportCopy objectForKeyedSubscript:@"geo"];
    location = [v16 objectForKeyedSubscript:@"latitude"];

    v17 = [airportCopy objectForKeyedSubscript:@"geo"];
    v18 = [v17 objectForKeyedSubscript:@"longitude"];

    if (location && v18)
    {
      [location doubleValue];
      v20 = v19;
      [v18 doubleValue];
      v22 = v21;
      v23 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 134218240;
        v30 = v20;
        v31 = 2048;
        v32 = v22;
        _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Geolocation from Schema metadata: %f, %f", &v29, 0x16u);
      }

      v24 = CLLocationCoordinate2DMake(v20, v22);
      latitude = v24.latitude;
      longitude = v24.longitude;
    }

    else
    {
      v25 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412546;
        v30 = *&location;
        v31 = 2112;
        v32 = *&v18;
        _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Missing latitude/longitude information: %@, %@", &v29, 0x16u);
      }

      latitude = *MEMORY[0x277CE4278];
      longitude = *(MEMORY[0x277CE4278] + 8);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  v27 = latitude;
  v28 = longitude;
  result.longitude = v28;
  result.latitude = v27;
  return result;
}

+ (BOOL)currentLocationIsWithinAirportForEvent:(id)event
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  endLocation = [eventCopy endLocation];
  if (!endLocation)
  {
    goto LABEL_20;
  }

  v5 = endLocation;
  endLocation2 = [eventCopy endLocation];
  geoLocation = [endLocation2 geoLocation];

  if (!geoLocation)
  {
    goto LABEL_20;
  }

  v8 = 0x278C3C000uLL;
  endLocation3 = [eventCopy endLocation];
  geoLocation2 = [endLocation3 geoLocation];
  v11 = [ATXHeuristicNavigationUtilities destinationPlacemarkForLocation:geoLocation2 withDestinationName:0];

  if (!v11)
  {
    v35 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
    v16 = [v35 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    firstObject = [v16 firstObject];
    v18 = [firstObject objectForKeyedSubscript:@"reservationFor"];
    v19 = [v18 objectForKeyedSubscript:@"arrivalAirport"];
    v20 = [v19 objectForKeyedSubscript:@"geo"];
    v21 = [v20 objectForKeyedSubscript:@"latitude"];

    v22 = [firstObject objectForKeyedSubscript:@"reservationFor"];
    v23 = [v22 objectForKeyedSubscript:@"arrivalAirport"];
    v24 = [v23 objectForKeyedSubscript:@"geo"];
    v25 = [v24 objectForKeyedSubscript:@"longitude"];

    if (v21)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (v26)
    {
      v32 = __atxlog_handle_context_heuristic();
      v8 = 0x278C3C000;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v37 = v21;
        v38 = 2113;
        v39 = v25;
        _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Missing latitude/longitude/destination information: %{private}@, %{private}@", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      [v21 doubleValue];
      v29 = v28;
      [v25 doubleValue];
      v31 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v29 longitude:v30];
      v8 = 0x278C3C000uLL;
      v11 = [ATXHeuristicNavigationUtilities destinationPlacemarkForLocation:v31 withDestinationName:0];
    }

    if (!v27)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Unable to determine if we are at airport. Missing location", buf, 2u);
    }

LABEL_22:
    LOBYTE(v14) = 0;
    goto LABEL_23;
  }

LABEL_4:
  v12 = *(v8 + 880);
  location = [v11 location];
  v14 = [v12 isAtLocation:location maxDistance:5000];

  v15 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = v14;
    _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXHeursiticFlightEventUtilities: Are we at the airport: (%{BOOL}d)", buf, 8u);
  }

LABEL_23:
  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)_dateIntervalWithEvent:(id)event
{
  v3 = MEMORY[0x277CCA970];
  eventCopy = event;
  v5 = [v3 alloc];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];

  v8 = [v5 initWithStartDate:startDate endDate:endDate];

  return v8;
}

+ (id)flightInformationSpotlightSuggestionForEvent:(id)event schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate
{
  v34 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  flightCopy = flight;
  dateCopy = date;
  endDateCopy = endDate;
  v18 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v19 = [v18 objectForKeyedSubscript:@"flightNumber"];

  if ([v19 length])
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"FLIGHT_CATEGORY" value:&stru_2850AD368 table:0];
    v23 = [v20 localizedStringWithFormat:v22, v19];

    v24 = [ATXContextFlightEventSuggestionProducer alloc];
    v25 = [self _dateIntervalWithEvent:eventCopy];
    v26 = [(ATXContextFlightEventSuggestionProducer *)v24 initWithTitle:v23 flightInformationSchema:flightCopy urlString:0 teamIdentifier:0 validFromStartDate:dateCopy validToEndDate:endDateCopy alternateDestinationTitle:0 dateInterval:v25];

    startDate = [eventCopy startDate];
    v28 = [(ATXContextFlightEventSuggestionProducer *)v26 suggestionForFlightInformationWithReason:reasons score:startDate date:score];

    [ATXHeuristicFlightEventUtilities logSuggestion:v28 description:@"ATXHeuristicFlightEventUtilities: Flight info suggestion"];
  }

  else
  {
    v29 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v19;
      _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Flight Information: Missing information: Flight Info : %@", buf, 0xCu);
    }

    v28 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

void __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicFlightEventUtilities: Error while resolving events: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end