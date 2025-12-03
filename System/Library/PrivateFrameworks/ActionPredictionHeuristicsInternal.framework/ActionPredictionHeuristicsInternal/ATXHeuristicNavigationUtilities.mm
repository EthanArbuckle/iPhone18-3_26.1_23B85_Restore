@interface ATXHeuristicNavigationUtilities
+ (BOOL)allowNavigationSuggestionForLocation:(id)location maxDistance:(unint64_t)distance;
+ (BOOL)isAtLocation:(id)location maxDistance:(unint64_t)distance;
+ (BOOL)isDestinationTooCloseToNavigate:(id)navigate;
+ (double)_travelTimeInSecondsWithEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device;
+ (id)_dateIntervalWithEvent:(id)event;
+ (id)_titleWithTravelTimeInSeconds:(double)seconds destinationName:(id)name;
+ (id)destinationPlacemarkForEvent:(id)event name:(id)name schemaType:(unint64_t)type;
+ (id)destinationPlacemarkForLocation:(id)location withDestinationName:(id)name;
+ (id)fetchLocationForLOI:(int64_t)i;
+ (id)getCurrentLocation;
+ (id)locationFromEvent:(id)event schemaType:(unint64_t)type;
+ (id)navigationSubtitleForType:(unint64_t)type;
+ (id)navigationSuggestionActionForDestination:(id)destination event:(id)event transportType:(id)type schemaForEvent:(id)forEvent predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score shouldClearOnEngagement:(BOOL)self0 validStartDate:(id)self1 validEndDate:(id)self2;
+ (id)navigationSuggestionActionForEvent:(id)event schemaForEvent:(id)forEvent transportType:(id)type predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score validStartDate:(id)date validEndDate:(id)self0;
+ (id)navigationSuggestionActionForLOI:(int64_t)i destinationName:(id)name schemaForEvent:(id)event withScore:(double)score transportType:(id)type predictionReason:(unint64_t)reason validStartDate:(id)date validEndDate:(id)self0 heuristicDevice:(id)self1;
+ (id)placemarkForLOI:(int64_t)i name:(id)name;
+ (id)schemaTypeToString:(unint64_t)string;
+ (unint64_t)navigationTypeForString:(id)string;
@end

@implementation ATXHeuristicNavigationUtilities

+ (id)getCurrentLocation
{
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  getCurrentLocation = [mEMORY[0x277D41BF8] getCurrentLocation];

  return getCurrentLocation;
}

+ (BOOL)isDestinationTooCloseToNavigate:(id)navigate
{
  v17 = *MEMORY[0x277D85DE8];
  navigateCopy = navigate;
  v4 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    [v4 distanceFromLocation:navigateCopy];
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

+ (id)fetchLocationForLOI:(int64_t)i
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v5 = dispatch_semaphore_create(0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke;
  v12 = &unk_278C3D5E0;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [mEMORY[0x277D41BF8] fetchLOILocationOfType:i reply:&v9];
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

+ (id)destinationPlacemarkForLocation:(id)location withDestinationName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  locationCopy = location;
  [locationCopy coordinate];
  v8 = v7;
  [locationCopy coordinate];
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
  v13 = [MEMORY[0x277CBFC40] placemarkWithLocation:v12 name:nameCopy postalAddress:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)schemaTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278C3D600[string];
  }
}

+ (id)destinationPlacemarkForEvent:(id)event name:(id)name schemaType:(unint64_t)type
{
  v56 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  v8 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v9 = [v8 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v9 firstObject];
  preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
  v11 = preferredLocationWithoutPrediction;
  if (!preferredLocationWithoutPrediction)
  {
    goto LABEL_4;
  }

  geoLocation = [preferredLocationWithoutPrediction geoLocation];

  if (!geoLocation || ([v11 geoLocation], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "destinationPlacemarkForLocation:withDestinationName:", v13, nameCopy), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
LABEL_4:
    if (type == 1)
    {
      v27 = [firstObject objectForKeyedSubscript:@"reservationFor"];
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
          location = [v33 location];
          v14 = [self destinationPlacemarkForLocation:location withDestinationName:nameCopy];
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
      if (type)
      {
LABEL_22:
        v18 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [self schemaTypeToString:type];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Destination placemark for %@ is empty. Cannot create suggestion", buf, 0xCu);
        }

LABEL_24:
        v14 = 0;
        goto LABEL_25;
      }

      v15 = [firstObject objectForKeyedSubscript:@"reservationFor"];
      v16 = [v15 objectForKeyedSubscript:@"departureAirport"];
      v17 = [v16 objectForKeyedSubscript:@"geo"];
      v18 = [v17 objectForKeyedSubscript:@"latitude"];

      v19 = [firstObject objectForKeyedSubscript:@"reservationFor"];
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
      v14 = [self destinationPlacemarkForLocation:v26 withDestinationName:nameCopy];
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
    v36 = [self schemaTypeToString:type];
    location2 = [v14 location];
    [location2 coordinate];
    v39 = v38;
    location3 = [v14 location];
    [location3 coordinate];
    v42 = v41;
    name = [v14 name];
    *buf = 138413059;
    *&buf[4] = v36;
    *&buf[12] = 2049;
    *&buf[14] = v39;
    *&buf[22] = 2049;
    v54 = v42;
    LOWORD(v55) = 2113;
    *(&v55 + 2) = name;
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

+ (unint64_t)navigationTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"WALKING"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"CYCLING"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)navigationSubtitleForType:(unint64_t)type
{
  if (type > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v3 = off_278C3D618[type];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2850AD368 table:0];
  }

  return v5;
}

+ (id)locationFromEvent:(id)event schemaType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = [self destinationPlacemarkForEvent:eventCopy name:@"destination" schemaType:type];
  v8 = v7;
  if (v7)
  {
    location = [v7 location];
  }

  else
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      eventIdentifier = [eventCopy eventIdentifier];
      v14 = 138477827;
      v15 = eventIdentifier;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_INFO, "Empty placemark for event %{private}@", &v14, 0xCu);
    }

    location = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return location;
}

+ (BOOL)isAtLocation:(id)location maxDistance:(unint64_t)distance
{
  v16 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (locationCopy && v6)
  {
    [v6 distanceFromLocation:locationCopy];
    v10 = v9;
    if (v9 <= distance)
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

+ (BOOL)allowNavigationSuggestionForLocation:(id)location maxDistance:(unint64_t)distance
{
  v20 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (locationCopy && v6)
  {
    [v6 distanceFromLocation:locationCopy];
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
      if (v10 <= distance)
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
        v19 = (distance / 0x3E8);
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

+ (id)placemarkForLOI:(int64_t)i name:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [self fetchLocationForLOI:i];
  v8 = __atxlog_handle_context_heuristic();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v18 = 138477827;
      v19 = nameCopy;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Resolved (%{private}@) to destination", &v18, 0xCu);
    }

    [v7 coordinate];
    v11 = v10;
    [v7 coordinate];
    v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:v12];
    v13 = [MEMORY[0x277CBFC40] placemarkWithLocation:v8 name:nameCopy postalAddress:0];
    v14 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [v13 name];
      v18 = 138477827;
      v19 = name;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Location Resolved for (%{private}@)", &v18, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v18 = 138412290;
      v19 = nameCopy;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Unable to resolve %@ to destination", &v18, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)navigationSuggestionActionForLOI:(int64_t)i destinationName:(id)name schemaForEvent:(id)event withScore:(double)score transportType:(id)type predictionReason:(unint64_t)reason validStartDate:(id)date validEndDate:(id)self0 heuristicDevice:(id)self1
{
  eventCopy = event;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  v23 = [self placemarkForLOI:i name:name];
  if (v23)
  {
    LOBYTE(v26) = 0;
    v24 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForDestination:v23 event:0 transportType:typeCopy schemaForEvent:eventCopy predictionReasons:reason heuristicDevice:deviceCopy score:score shouldClearOnEngagement:v26 validStartDate:dateCopy validEndDate:endDateCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (double)_travelTimeInSecondsWithEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  destinationCopy = destination;
  deviceCopy = device;
  typeCopy = type;
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    eventIdentifier = [eventCopy eventIdentifier];
    name = [destinationCopy name];
    v29 = 138412546;
    v30 = eventIdentifier;
    v31 = 2112;
    v32 = name;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Compute travel time for event Id %@ (or destination %@)", &v29, 0x16u);
  }

  v16 = objc_opt_new();
  v17 = [v16 travelTimeToEvent:eventCopy destination:destinationCopy transportType:typeCopy heuristicDevice:deviceCopy];

  if (v17)
  {
    resolvedTimeInformation = [v16 resolvedTimeInformation];
    v19 = [resolvedTimeInformation objectForKeyedSubscript:@"estimatedTravelTime"];

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

+ (id)_titleWithTravelTimeInSeconds:(double)seconds destinationName:(id)name
{
  nameCopy = name;
  v6 = objc_opt_new();
  [v6 setUnitsStyle:2];
  [v6 setAllowedUnits:96];
  v7 = [v6 stringFromTimeInterval:seconds];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NAVIGATION_DESTINATION_TITLE" value:&stru_2850AD368 table:0];
  nameCopy = [v8 localizedStringWithFormat:v10, v7, nameCopy];

  return nameCopy;
}

+ (id)navigationSuggestionActionForDestination:(id)destination event:(id)event transportType:(id)type schemaForEvent:(id)forEvent predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score shouldClearOnEngagement:(BOOL)self0 validStartDate:(id)self1 validEndDate:(id)self2
{
  v58 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  eventCopy = event;
  typeCopy = type;
  forEventCopy = forEvent;
  deviceCopy = device;
  dateCopy = date;
  endDateCopy = endDate;
  v53 = typeCopy;
  v24 = [ATXHeuristicNavigationUtilities navigationTypeForString:typeCopy];
  name = [destinationCopy name];
  v26 = [ATXHeuristicNavigationUtilities navigationSubtitleForType:v24];
  v54 = endDateCopy;
  if ([name length])
  {
    v51 = eventCopy;
    v52 = deviceCopy;
    v27 = objc_alloc(MEMORY[0x277CCA970]);
    distantPast = dateCopy;
    if (!dateCopy)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v50 = v26;
    reasonsCopy = reasons;
    if (endDateCopy)
    {
      v30 = [v27 initWithStartDate:distantPast endDate:endDateCopy];
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v30 = [v27 initWithStartDate:distantPast endDate:distantFuture];
    }

    if (!dateCopy)
    {
    }

    v33 = [v52 now];
    v34 = [v30 containsDate:v33];

    v35 = 0.0;
    if (v34)
    {
      eventCopy = v51;
      [self _travelTimeInSecondsWithEvent:v51 destination:destinationCopy transportType:v53 heuristicDevice:v52];
      v35 = v36;
      if (v36 >= 180.0)
      {
        v39 = [self _titleWithTravelTimeInSeconds:name destinationName:v36];

        name = v39;
      }

      else
      {
        deviceCopy = v52;
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
      eventCopy = v51;
    }

    v40 = [ATXContextNavigationSuggestionProducer alloc];
    name2 = [destinationCopy name];
    v37 = [(ATXContextNavigationSuggestionProducer *)v40 initWithTitle:name event:eventCopy schemaForEvent:forEventCopy alternateDestinationTitle:name2];

    v42 = v54;
    if ((reasonsCopy & 0x3000000000) != 0 && v35 > 1800.0)
    {
      v43 = [dateCopy dateByAddingTimeInterval:v35];

      v42 = v43;
    }

    deviceCopy = v52;
    name3 = [destinationCopy name];
    v31 = [v37 suggestionForNavigationToDestination:destinationCopy transportType:v24 destinationName:name3 subtitle:v50 predictionReasons:reasonsCopy score:engagement shouldClearOnEngagement:score validStartDate:dateCopy validEndDate:v42];

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
        v57 = *&reasonsCopy;
        _os_log_impl(&dword_23E3EA000, v46, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Could not create navigation suggestion for prediction reason: %llu", buf, 0xCu);
      }

      deviceCopy = v52;
    }

    eventCopy = v51;
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

+ (id)navigationSuggestionActionForEvent:(id)event schemaForEvent:(id)forEvent transportType:(id)type predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score validStartDate:(id)date validEndDate:(id)self0
{
  eventCopy = event;
  forEventCopy = forEvent;
  typeCopy = type;
  deviceCopy = device;
  dateCopy = date;
  endDateCopy = endDate;
  v20 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v21 = v20;
  if (!forEventCopy)
  {
    v22 = [v20 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    forEventCopy = [v22 firstObject];
  }

  v23 = [v21 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v24 = [v23 isEqualToString:@"Lodging"];

  preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
  v26 = preferredLocationWithoutPrediction;
  if ((reasons & 0x80000000) != 0)
  {
    v37 = typeCopy;
    v38 = [forEventCopy objectForKeyedSubscript:@"reservationFor"];
    v39 = [v38 objectForKeyedSubscript:@"departureAirport"];
    firstObject = [v39 objectForKeyedSubscript:@"iataCode"];

    if (!firstObject && v26)
    {
      title = [v26 title];

      typeCopy = v37;
      if (!title)
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

      title2 = [v26 title];
      v42 = [title2 componentsSeparatedByString:@"\n"];
      firstObject = [v42 firstObject];
    }

    typeCopy = v37;
    if (firstObject)
    {
      selfCopy3 = self;
      v34 = eventCopy;
      v35 = firstObject;
      v36 = 0;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if ((((reasons & 0x200000000) != 0) & v24) != 1)
  {
    if ((reasons & 0x300000) == 0)
    {
      v47 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:reasons schemaForEvent:v47 transportType:? predictionReasons:? heuristicDevice:? score:? validStartDate:? validEndDate:?];
      }

      goto LABEL_35;
    }

    if (preferredLocationWithoutPrediction && ([preferredLocationWithoutPrediction title], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
    {
      title3 = [v26 title];
      [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", \n"}];
      v45 = v44 = typeCopy;
      v46 = [title3 componentsSeparatedByCharactersInSet:v45];
      firstObject = [v46 firstObject];

      typeCopy = v44;
      if (!firstObject)
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
      firstObject = [eventCopy title];
      if (!firstObject)
      {
        goto LABEL_21;
      }
    }

    selfCopy3 = self;
    v34 = eventCopy;
    v35 = firstObject;
    v36 = 2;
    goto LABEL_30;
  }

  v27 = [forEventCopy objectForKeyedSubscript:@"reservationFor"];
  firstObject = [v27 objectForKeyedSubscript:@"name"];

  if (!firstObject && v26)
  {
    title4 = [v26 title];

    if (!title4)
    {
      goto LABEL_25;
    }

    title5 = [v26 title];
    [title5 componentsSeparatedByString:@"\n"];
    v32 = v31 = typeCopy;
    firstObject = [v32 firstObject];

    typeCopy = v31;
  }

  if (!firstObject)
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
    firstObject = 0;
    v51 = 0;
    v50 = deviceCopy;
    goto LABEL_36;
  }

  selfCopy3 = self;
  v34 = eventCopy;
  v35 = firstObject;
  v36 = 1;
LABEL_30:
  v47 = [selfCopy3 destinationPlacemarkForEvent:v34 name:v35 schemaType:v36];
  if (!v47)
  {
    v51 = 0;
    v50 = deviceCopy;
    goto LABEL_37;
  }

  LOBYTE(v53) = 0;
  v50 = deviceCopy;
  v51 = [self navigationSuggestionActionForDestination:v47 event:eventCopy transportType:typeCopy schemaForEvent:forEventCopy predictionReasons:reasons heuristicDevice:deviceCopy score:score shouldClearOnEngagement:v53 validStartDate:dateCopy validEndDate:endDateCopy];
LABEL_36:

LABEL_37:

  return v51;
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