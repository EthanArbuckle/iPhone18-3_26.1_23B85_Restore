@interface ATXHeuristicNavigationUtilities
+ (BOOL)allowNavigationSuggestionForLocation:(id)a3 maxDistance:(unint64_t)a4;
+ (BOOL)isAtLocation:(id)a3 maxDistance:(unint64_t)a4;
+ (BOOL)isDestinationTooCloseToNavigate:(id)a3;
+ (double)_travelTimeInSecondsWithEvent:(id)a3 destination:(id)a4 transportType:(id)a5 heuristicDevice:(id)a6;
+ (id)_dateIntervalWithEvent:(id)a3;
+ (id)_titleWithTravelTimeInSeconds:(double)a3 destinationName:(id)a4;
+ (id)destinationPlacemarkForEvent:(id)a3 name:(id)a4 schemaType:(unint64_t)a5;
+ (id)destinationPlacemarkForLocation:(id)a3 withDestinationName:(id)a4;
+ (id)fetchLocationForLOI:(int64_t)a3;
+ (id)getCurrentLocation;
+ (id)locationFromEvent:(id)a3 schemaType:(unint64_t)a4;
+ (id)navigationSubtitleForType:(unint64_t)a3;
+ (id)navigationSuggestionActionForDestination:(id)a3 event:(id)a4 transportType:(id)a5 schemaForEvent:(id)a6 predictionReasons:(unint64_t)a7 heuristicDevice:(id)a8 score:(double)a9 shouldClearOnEngagement:(BOOL)a10 validStartDate:(id)a11 validEndDate:(id)a12;
+ (id)navigationSuggestionActionForEvent:(id)a3 schemaForEvent:(id)a4 transportType:(id)a5 predictionReasons:(unint64_t)a6 heuristicDevice:(id)a7 score:(double)a8 validStartDate:(id)a9 validEndDate:(id)a10;
+ (id)navigationSuggestionActionForLOI:(int64_t)a3 destinationName:(id)a4 schemaForEvent:(id)a5 withScore:(double)a6 transportType:(id)a7 predictionReason:(unint64_t)a8 validStartDate:(id)a9 validEndDate:(id)a10 heuristicDevice:(id)a11;
+ (id)placemarkForLOI:(int64_t)a3 name:(id)a4;
+ (id)schemaTypeToString:(unint64_t)a3;
+ (unint64_t)navigationTypeForString:(id)a3;
@end

@implementation ATXHeuristicNavigationUtilities

+ (id)getCurrentLocation
{
  v2 = [MEMORY[0x277D41BF8] sharedInstance];
  v3 = [v2 getCurrentLocation];

  return v3;
}

+ (BOOL)isDestinationTooCloseToNavigate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    [v4 distanceFromLocation:v3];
    v8 = v7;
    if (v7 > 500.0)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v9 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v8 / 1000.0;
      v10 = "Navigation Suggestion: Close to event (distance to: %f). Skipping...";
      v11 = v9;
      v12 = 12;
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else
  {
    v9 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v10 = "Navigation Suggestion: Current location missing";
      v11 = v9;
      v12 = 2;
      goto LABEL_7;
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)fetchLocationForLOI:(int64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  v4 = [MEMORY[0x277D41BF8] sharedInstance];
  v5 = dispatch_semaphore_create(0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke;
  v12 = &unk_278C3D5E0;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [v4 fetchLOILocationOfType:a3 reply:&v9];
  [MEMORY[0x277D425A0] waitForSemaphore:v6 timeoutSeconds:{2.0, v9, v10, v11, v12}];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)destinationPlacemarkForLocation:(id)a3 withDestinationName:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  [v6 coordinate];
  v8 = v7;
  [v6 coordinate];
  v10 = v9;

  v11 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134283777;
    v17 = v8;
    v18 = 2049;
    v19 = v10;
    _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Geolocation from Structured location: (%{private}f), (%{private}f)", &v16, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
  v13 = [MEMORY[0x277CBFC40] placemarkWithLocation:v12 name:v5 postalAddress:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)schemaTypeToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278C3D600[a3];
  }
}

+ (id)destinationPlacemarkForEvent:(id)a3 name:(id)a4 schemaType:(unint64_t)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v48 = a4;
  v8 = [v7 customObjectForKey:@"SGEventMetadataKey"];
  v9 = [v8 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  v49 = [v9 firstObject];
  v10 = [v7 preferredLocationWithoutPrediction];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v12 = [v10 geoLocation];

  if (!v12 || ([v11 geoLocation], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "destinationPlacemarkForLocation:withDestinationName:", v13, v48), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
LABEL_4:
    if (a5 == 1)
    {
      v27 = [v49 objectForKeyedSubscript:@"reservationFor"];
      v28 = [v27 objectForKeyedSubscript:@"address"];
      objc_opt_class();
      objc_opt_isKindOfClass();

      v29 = objc_opt_new();
      if (v29)
      {
        v30 = dispatch_semaphore_create(0);
        v31 = objc_opt_new();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v54 = __Block_byref_object_copy__17;
        *&v55 = __Block_byref_object_dispose__17;
        *(&v55 + 1) = 0;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke;
        v50[3] = &unk_278C3D180;
        v52 = buf;
        v32 = v30;
        v51 = v32;
        [v31 geocodeAddressString:v29 completionHandler:v50];
        [MEMORY[0x277D425A0] waitForSemaphore:v32 timeoutSeconds:1.0];
        v33 = *(*&buf[8] + 40);
        if (v33)
        {
          v34 = [v33 location];
          v14 = [a1 destinationPlacemarkForLocation:v34 withDestinationName:v48];
        }

        else
        {
          v14 = 0;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      if (a5)
      {
LABEL_22:
        v18 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [a1 schemaTypeToString:a5];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Destination placemark for %@ is empty. Cannot create suggestion", buf, 0xCu);
        }

LABEL_24:
        v14 = 0;
        goto LABEL_25;
      }

      v15 = [v49 objectForKeyedSubscript:@"reservationFor"];
      v16 = [v15 objectForKeyedSubscript:@"departureAirport"];
      v17 = [v16 objectForKeyedSubscript:@"geo"];
      v18 = [v17 objectForKeyedSubscript:@"latitude"];

      v19 = [v49 objectForKeyedSubscript:@"reservationFor"];
      v20 = [v19 objectForKeyedSubscript:@"departureAirport"];
      v21 = [v20 objectForKeyedSubscript:@"geo"];
      v22 = [v21 objectForKeyedSubscript:@"longitude"];

      if (!v18 || !v22)
      {
        v35 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          *&buf[4] = v18;
          *&buf[12] = 2113;
          *&buf[14] = v22;
          _os_log_impl(&dword_23E3EA000, v35, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Missing latitude/longitude/destination information: %{private}@, %{private}@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      [v18 doubleValue];
      v24 = v23;
      [v22 doubleValue];
      v26 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v24 longitude:v25];
      v14 = [a1 destinationPlacemarkForLocation:v26 withDestinationName:v48];
    }

    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_20:
  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [a1 schemaTypeToString:a5];
    v37 = [v14 location];
    [v37 coordinate];
    v39 = v38;
    v40 = [v14 location];
    [v40 coordinate];
    v42 = v41;
    v43 = [v14 name];
    *buf = 138413059;
    *&buf[4] = v36;
    *&buf[12] = 2049;
    *&buf[14] = v39;
    *&buf[22] = 2049;
    v54 = v42;
    LOWORD(v55) = 2113;
    *(&v55 + 2) = v43;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: For %@, geolocation information: (%{private}f), (%{private}f), (%{private}@)", buf, 0x2Au);
  }

LABEL_25:

  v45 = *MEMORY[0x277D85DE8];

  return v14;
}

void __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke_cold_1();
    }
  }

  v8 = [v5 firstObject];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (unint64_t)navigationTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WALKING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TRANSIT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CYCLING"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)navigationSubtitleForType:(unint64_t)a3
{
  if (a3 > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v3 = off_278C3D618[a3];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2850AD368 table:0];
  }

  return v5;
}

+ (id)locationFromEvent:(id)a3 schemaType:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 destinationPlacemarkForEvent:v6 name:@"destination" schemaType:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 location];
  }

  else
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 eventIdentifier];
      v14 = 138477827;
      v15 = v11;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_INFO, "Empty placemark for event %{private}@", &v14, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)isAtLocation:(id)a3 maxDistance:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v6 distanceFromLocation:v5];
    v10 = v9;
    if (v9 <= a4)
    {
      v11 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v10 / 1000.0;
        _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: At location. Distance is %.2fkm", &v14, 0xCu);
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)allowNavigationSuggestionForLocation:(id)a3 maxDistance:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v6 distanceFromLocation:v5];
    v10 = v9;
    if (v9 <= 500.0)
    {
      v11 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = v10;
        v18 = 2048;
        *&v19 = 500;
        v13 = "ATXHeuristicNavigationUtilities: Too close to the event (%.2fkm < %.2lukm)";
        goto LABEL_9;
      }
    }

    else
    {
      v11 = __atxlog_handle_context_heuristic();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10 <= a4)
      {
        if (v12)
        {
          v16 = 134217984;
          v17 = v10 / 1000.0;
          _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Distance to destination is %.2fkm", &v16, 0xCu);
        }

        v8 = 1;
        goto LABEL_14;
      }

      if (v12)
      {
        v16 = 134218240;
        v17 = v10 / 1000.0;
        v18 = 2048;
        v19 = (a4 / 0x3E8);
        v13 = "ATXHeuristicNavigationUtilities: Will not create navigation to destination since distance %fKM is beyond %fKM";
LABEL_9:
        _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, v13, &v16, 0x16u);
      }
    }

    v8 = 0;
LABEL_14:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)placemarkForLOI:(int64_t)a3 name:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 fetchLocationForLOI:a3];
  v8 = __atxlog_handle_context_heuristic();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v18 = 138477827;
      v19 = v6;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Resolved (%{private}@) to destination", &v18, 0xCu);
    }

    [v7 coordinate];
    v11 = v10;
    [v7 coordinate];
    v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:v12];
    v13 = [MEMORY[0x277CBFC40] placemarkWithLocation:v8 name:v6 postalAddress:0];
    v14 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 name];
      v18 = 138477827;
      v19 = v15;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Location Resolved for (%{private}@)", &v18, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Unable to resolve %@ to destination", &v18, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)navigationSuggestionActionForLOI:(int64_t)a3 destinationName:(id)a4 schemaForEvent:(id)a5 withScore:(double)a6 transportType:(id)a7 predictionReason:(unint64_t)a8 validStartDate:(id)a9 validEndDate:(id)a10 heuristicDevice:(id)a11
{
  v18 = a5;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = [a1 placemarkForLOI:a3 name:a4];
  if (v23)
  {
    LOBYTE(v26) = 0;
    v24 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForDestination:v23 event:0 transportType:v19 schemaForEvent:v18 predictionReasons:a8 heuristicDevice:v22 score:a6 shouldClearOnEngagement:v26 validStartDate:v20 validEndDate:v21];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (double)_travelTimeInSecondsWithEvent:(id)a3 destination:(id)a4 transportType:(id)a5 heuristicDevice:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 eventIdentifier];
    v15 = [v10 name];
    v29 = 138412546;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Compute travel time for event Id %@ (or destination %@)", &v29, 0x16u);
  }

  v16 = objc_opt_new();
  v17 = [v16 travelTimeToEvent:v9 destination:v10 transportType:v12 heuristicDevice:v11];

  if (v17)
  {
    v18 = [v16 resolvedTimeInformation];
    v19 = [v18 objectForKeyedSubscript:@"estimatedTravelTime"];

    v20 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [v19 doubleValue];
      v29 = 134217984;
      v30 = v21;
      _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time: %fs", &v29, 0xCu);
    }

    [v19 doubleValue];
    if (v22 == 0.0)
    {
      v23 = [v17 objectForKeyedSubscript:@"estimatedTravelTime"];

      [v23 doubleValue];
      if (v25 == 0.0)
      {
        v24 = -1.0;
        goto LABEL_12;
      }

      v19 = v23;
    }

    else
    {
      v23 = v19;
    }

    [v19 doubleValue];
    v24 = v26;
LABEL_12:

    goto LABEL_13;
  }

  v24 = -1.0;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)_titleWithTravelTimeInSeconds:(double)a3 destinationName:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  [v6 setUnitsStyle:2];
  [v6 setAllowedUnits:96];
  v7 = [v6 stringFromTimeInterval:a3];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NAVIGATION_DESTINATION_TITLE" value:&stru_2850AD368 table:0];
  v11 = [v8 localizedStringWithFormat:v10, v7, v5];

  return v11;
}

+ (id)navigationSuggestionActionForDestination:(id)a3 event:(id)a4 transportType:(id)a5 schemaForEvent:(id)a6 predictionReasons:(unint64_t)a7 heuristicDevice:(id)a8 score:(double)a9 shouldClearOnEngagement:(BOOL)a10 validStartDate:(id)a11 validEndDate:(id)a12
{
  v58 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v55 = a6;
  v21 = a8;
  v22 = a11;
  v23 = a12;
  v53 = v20;
  v24 = [ATXHeuristicNavigationUtilities navigationTypeForString:v20];
  v25 = [v18 name];
  v26 = [ATXHeuristicNavigationUtilities navigationSubtitleForType:v24];
  v54 = v23;
  if ([v25 length])
  {
    v51 = v19;
    v52 = v21;
    v27 = objc_alloc(MEMORY[0x277CCA970]);
    v28 = v22;
    if (!v22)
    {
      v28 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v50 = v26;
    v29 = a7;
    if (v23)
    {
      v30 = [v27 initWithStartDate:v28 endDate:v23];
    }

    else
    {
      v32 = [MEMORY[0x277CBEAA8] distantFuture];
      v30 = [v27 initWithStartDate:v28 endDate:v32];
    }

    if (!v22)
    {
    }

    v33 = [v52 now];
    v34 = [v30 containsDate:v33];

    v35 = 0.0;
    if (v34)
    {
      v19 = v51;
      [a1 _travelTimeInSecondsWithEvent:v51 destination:v18 transportType:v53 heuristicDevice:v52];
      v35 = v36;
      if (v36 >= 180.0)
      {
        v39 = [a1 _titleWithTravelTimeInSeconds:v25 destinationName:v36];

        v25 = v39;
      }

      else
      {
        v21 = v52;
        v37 = __atxlog_handle_context_heuristic();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v35 != -1.0)
        {
          if (v38)
          {
            *buf = 134217984;
            v57 = v35;
            _os_log_impl(&dword_23E3EA000, v37, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time is below minimum [%f]. Navigation suggestion is skipped", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_29;
        }

        if (v38)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v37, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time returned -1. Navigation suggestion is included without ETA", buf, 2u);
        }

        v35 = -1.0;
      }
    }

    else
    {
      v19 = v51;
    }

    v40 = [ATXContextNavigationSuggestionProducer alloc];
    v41 = [v18 name];
    v37 = [(ATXContextNavigationSuggestionProducer *)v40 initWithTitle:v25 event:v19 schemaForEvent:v55 alternateDestinationTitle:v41];

    v42 = v54;
    if ((v29 & 0x3000000000) != 0 && v35 > 1800.0)
    {
      v43 = [v22 dateByAddingTimeInterval:v35];

      v42 = v43;
    }

    v21 = v52;
    v44 = [v18 name];
    v31 = [v37 suggestionForNavigationToDestination:v18 transportType:v24 destinationName:v44 subtitle:v50 predictionReasons:v29 score:a10 shouldClearOnEngagement:a9 validStartDate:v22 validEndDate:v42];

    if (v31)
    {
      [ATXHeuristicFlightEventUtilities logSuggestion:v31 description:@"ATXHeuristicNavigationUtilities: Navigation to destination suggestion"];
      v45 = v31;
    }

    else
    {
      v46 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v57 = *&v29;
        _os_log_impl(&dword_23E3EA000, v46, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Could not create navigation suggestion for prediction reason: %llu", buf, 0xCu);
      }

      v21 = v52;
    }

    v19 = v51;
LABEL_29:

    v26 = v50;
    goto LABEL_30;
  }

  v30 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination name is nil or empty. Navigation suggestion is skipped", buf, 2u);
  }

  v31 = 0;
LABEL_30:

  v47 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)navigationSuggestionActionForEvent:(id)a3 schemaForEvent:(id)a4 transportType:(id)a5 predictionReasons:(unint64_t)a6 heuristicDevice:(id)a7 score:(double)a8 validStartDate:(id)a9 validEndDate:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v55 = a7;
  v57 = a9;
  v56 = a10;
  v20 = [v17 customObjectForKey:@"SGEventMetadataKey"];
  v21 = v20;
  if (!v18)
  {
    v22 = [v20 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    v18 = [v22 firstObject];
  }

  v23 = [v21 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v24 = [v23 isEqualToString:@"Lodging"];

  v25 = [v17 preferredLocationWithoutPrediction];
  v26 = v25;
  if ((a6 & 0x80000000) != 0)
  {
    v37 = v19;
    v38 = [v18 objectForKeyedSubscript:@"reservationFor"];
    v39 = [v38 objectForKeyedSubscript:@"departureAirport"];
    v28 = [v39 objectForKeyedSubscript:@"iataCode"];

    if (!v28 && v26)
    {
      v40 = [v26 title];

      v19 = v37;
      if (!v40)
      {
LABEL_23:
        v47 = __atxlog_handle_context_heuristic();
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v60 = 0;
        v48 = "ATXHeuristicNavigationUtilities: For Upcoming flight, destination is empty";
        v49 = &v60;
        goto LABEL_27;
      }

      v41 = [v26 title];
      v42 = [v41 componentsSeparatedByString:@"\n"];
      v28 = [v42 firstObject];
    }

    v19 = v37;
    if (v28)
    {
      v33 = a1;
      v34 = v17;
      v35 = v28;
      v36 = 0;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if ((((a6 & 0x200000000) != 0) & v24) != 1)
  {
    if ((a6 & 0x300000) == 0)
    {
      v47 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:a6 schemaForEvent:v47 transportType:? predictionReasons:? heuristicDevice:? score:? validStartDate:? validEndDate:?];
      }

      goto LABEL_35;
    }

    if (v25 && ([v25 title], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
    {
      v54 = [v26 title];
      [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", \n"}];
      v45 = v44 = v19;
      v46 = [v54 componentsSeparatedByCharactersInSet:v45];
      v28 = [v46 firstObject];

      v19 = v44;
      if (!v28)
      {
LABEL_21:
        v47 = __atxlog_handle_context_heuristic();
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v58 = 0;
        v48 = "ATXHeuristicNavigationUtilities: For upcoming event, destination is empty";
        v49 = &v58;
LABEL_27:
        _os_log_impl(&dword_23E3EA000, v47, OS_LOG_TYPE_DEFAULT, v48, v49, 2u);
        goto LABEL_35;
      }
    }

    else
    {
      v28 = [v17 title];
      if (!v28)
      {
        goto LABEL_21;
      }
    }

    v33 = a1;
    v34 = v17;
    v35 = v28;
    v36 = 2;
    goto LABEL_30;
  }

  v27 = [v18 objectForKeyedSubscript:@"reservationFor"];
  v28 = [v27 objectForKeyedSubscript:@"name"];

  if (!v28 && v26)
  {
    v29 = [v26 title];

    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = [v26 title];
    [v30 componentsSeparatedByString:@"\n"];
    v32 = v31 = v19;
    v28 = [v32 firstObject];

    v19 = v31;
  }

  if (!v28)
  {
LABEL_25:
    v47 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v48 = "ATXHeuristicNavigationUtilities: For concluded flight, destination is empty";
      v49 = buf;
      goto LABEL_27;
    }

LABEL_35:
    v28 = 0;
    v51 = 0;
    v50 = v55;
    goto LABEL_36;
  }

  v33 = a1;
  v34 = v17;
  v35 = v28;
  v36 = 1;
LABEL_30:
  v47 = [v33 destinationPlacemarkForEvent:v34 name:v35 schemaType:v36];
  if (!v47)
  {
    v51 = 0;
    v50 = v55;
    goto LABEL_37;
  }

  LOBYTE(v53) = 0;
  v50 = v55;
  v51 = [a1 navigationSuggestionActionForDestination:v47 event:v17 transportType:v19 schemaForEvent:v18 predictionReasons:a6 heuristicDevice:v55 score:a8 shouldClearOnEngagement:v53 validStartDate:v57 validEndDate:v56];
LABEL_36:

LABEL_37:

  return v51;
}

+ (id)_dateIntervalWithEvent:(id)a3
{
  v3 = MEMORY[0x277CCA970];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 startDate];
  v7 = [v4 endDate];

  v8 = [v5 initWithStartDate:v6 endDate:v7];

  return v8;
}

void __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)navigationSuggestionActionForEvent:(uint64_t)a1 schemaForEvent:(NSObject *)a2 transportType:predictionReasons:heuristicDevice:score:validStartDate:validEndDate:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_FAULT, "ATXHeuristicNavigationUtilities: Navigation called for an unsupported prediction %llu reason", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end