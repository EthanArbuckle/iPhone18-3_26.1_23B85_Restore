@interface ATXHeuristicUpcomingFlightEventUtilities
+ (id)flightCheckInActionSuggestionForEvent:(id)event flightSchema:(id)schema validStartDate:(id)date validEndDate:(id)endDate;
+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device;
+ (id)weatherAtTravelDestinationSpotlightEntry:(id)entry schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate heuristicDevice:(id)device;
@end

@implementation ATXHeuristicUpcomingFlightEventUtilities

+ (id)flightCheckInActionSuggestionForEvent:(id)event flightSchema:(id)schema validStartDate:(id)date validEndDate:(id)endDate
{
  v58 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  schemaCopy = schema;
  dateCopy = date;
  endDateCopy = endDate;
  if (schemaCopy)
  {
    v13 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
    v14 = [v13 objectForKeyedSubscript:@"SGEventMetadataEventActivitiesKey"];
    firstObject = [v14 firstObject];
    v16 = firstObject;
    if (firstObject)
    {
      v17 = [firstObject objectForKeyedSubscript:@"SGEventActivityTypeKey"];
      if (v17)
      {
        v18 = v17;
        v19 = [v16 objectForKeyedSubscript:@"SGEventActivityTypeKey"];
        v20 = [v19 isEqualToString:@"CheckIn"];

        if (v20)
        {
          v21 = [v16 objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
          if (v21)
          {
            v22 = v21;
            v23 = [v16 objectForKeyedSubscript:@"SGEventActivityStartDateKey"];
            if (v23)
            {
              v24 = v23;
              v25 = [v16 objectForKeyedSubscript:@"SGEventActivityEndDateKey"];

              if (v25)
              {
                v26 = __atxlog_handle_context_heuristic();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  title = [eventCopy title];
                  startDate = [eventCopy startDate];
                  *buf = 138412546;
                  v53 = title;
                  v54 = 2112;
                  v55 = startDate;
                  _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Event: %@ at start:%@", buf, 0x16u);
                }

                v29 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v30 = [v29 objectForKeyedSubscript:@"arrivalAirport"];
                v31 = [v30 objectForKeyedSubscript:@"iataCode"];

                v32 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v33 = [v32 objectForKeyedSubscript:@"departureAirport"];
                v50 = [v33 objectForKeyedSubscript:@"iataCode"];

                v34 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v35 = [v34 objectForKeyedSubscript:@"flightNumber"];

                if (-[NSObject length](v31, "length") && [v50 length] && objc_msgSend(v35, "length"))
                {
                  log = [v16 objectForKeyedSubscript:@"SGEventActivityTeamIdentifierKey"];
                  v48 = v35;
                  if ([log length])
                  {
                    v36 = [v16 objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
                    v45 = MEMORY[0x277CCACA8];
                    v47 = v36;
                    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v37 = [v44 localizedStringForKey:@"FLIGHT_INFO_TITLE" value:&stru_2850AD368 table:0];
                    v51 = [v45 localizedStringWithFormat:v37, v35, v50, v31];

                    v46 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:eventCopy];
                    v38 = [[ATXContextFlightEventSuggestionProducer alloc] initWithTitle:v51 flightInformationSchema:schemaCopy urlString:v47 teamIdentifier:log validFromStartDate:dateCopy validToEndDate:endDateCopy alternateDestinationTitle:0 dateInterval:v46];
                    v39 = [(ATXContextFlightEventSuggestionProducer *)v38 suggestionForFlightCheckInWithReason:0x80000000 score:30.0];
                    [ATXHeuristicFlightEventUtilities logSuggestion:v39 description:@"ATXHeuristicUpcomingFlightEventUtilities: Flight checkin suggestion"];

                    v40 = v47;
                  }

                  else
                  {
                    v43 = __atxlog_handle_context_heuristic();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing TeamId. Unable to create suggestion for Flight Checkin", buf, 2u);
                    }

                    v40 = v43;
                    v39 = 0;
                  }

                  v35 = v48;
                }

                else
                {
                  log = __atxlog_handle_context_heuristic();
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412803;
                    v53 = v31;
                    v54 = 2112;
                    v55 = v50;
                    v56 = 2113;
                    v57 = v35;
                    _os_log_impl(&dword_23E3EA000, log, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing information: Arrival IATA code: %@, Departure IATA code: %@ Flight Number: %{private}@", buf, 0x20u);
                  }

                  v39 = 0;
                }

LABEL_22:
                goto LABEL_23;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    v31 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Check-in information is unavailable", buf, 2u);
    }

    v39 = 0;
    goto LABEL_22;
  }

  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing Schema", buf, 2u);
  }

  v39 = 0;
LABEL_23:

  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)weatherAtTravelDestinationSpotlightEntry:(id)entry schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate heuristicDevice:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  flightCopy = flight;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  v15 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v16 = [v15 objectForKeyedSubscript:@"arrivalAirport"];
  v17 = [v16 objectForKeyedSubscript:@"iataCode"];

  v18 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v19 = [v18 objectForKeyedSubscript:@"arrivalAirport"];
  v20 = [v19 objectForKeyedSubscript:@"address"];
  v21 = [v20 objectForKeyedSubscript:@"addressLocality"];

  v22 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v23 = [v22 objectForKeyedSubscript:@"flightNumber"];

  v24 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v25 = [v24 objectForKeyedSubscript:@"arrivalAirport"];
  v26 = [v25 objectForKeyedSubscript:@"address"];
  v27 = [v26 objectForKeyedSubscript:@"addressCountry"];

  if (-[NSObject length](v17, "length") && [v21 length] && objc_msgSend(v23, "length"))
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"FLIGHT_TRAVEL_INFO_TITLE" value:&stru_2850AD368 table:0];
    v31 = [v28 localizedStringWithFormat:v30, v23, v21];

    v47 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:entryCopy];
    v46 = [[ATXContextFlightEventSuggestionProducer alloc] initWithTitle:v31 flightInformationSchema:flightCopy urlString:0 teamIdentifier:0 validFromStartDate:dateCopy validToEndDate:endDateCopy alternateDestinationTitle:0 dateInterval:v47];
    v32 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
    v33 = [v32 objectForKeyedSubscript:@"arrivalAirport"];
    v34 = deviceCopy;
    [ATXHeuristicFlightEventUtilities locationAtArrivalAirport:v33 event:entryCopy heuristicDevice:deviceCopy];
    v36 = v35;
    v38 = v37;

    v61.latitude = v36;
    v61.longitude = v38;
    if (CLLocationCoordinate2DIsValid(v61))
    {
      if (v27)
      {
        v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@, %@", v21, v27];
      }

      else
      {
        v39 = v21;
      }

      v43 = v39;
      v42 = v46;
      score = [(ATXContextFlightEventSuggestionProducer *)v46 suggestionForWeatherAtFlightDestinationLocation:v39 destination:reasons predictionReasons:v36 score:v38, score];
      [ATXHeuristicFlightEventUtilities logSuggestion:score description:@"ATXHeuristicUpcomingFlightEventUtilities: Weather at travel destination suggestion"];
    }

    else
    {
      v41 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v31;
        _os_log_impl(&dword_23E3EA000, v41, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: no location for flight destination: %@", buf, 0xCu);
      }

      score = 0;
      v42 = v46;
    }
  }

  else
  {
    v31 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v54 = v17;
      v55 = 2112;
      v56 = v21;
      v57 = 2112;
      v58 = v23;
      _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: Weather for flight: Missing information: Arrival IATA code: %@, arrival city: %@ flight number: %@", buf, 0x20u);
    }

    score = 0;
    v34 = deviceCopy;
  }

  v44 = *MEMORY[0x277D85DE8];

  return score;
}

+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device
{
  v75 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:86400.0];
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "Upcoming flight Event search", buf, 2u);
  }

  v62 = deviceCopy;
  v7 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v8 = [(ATXCalendarEventsDataSource *)v7 flightEventsFromStartDate:date endDate:v5 reason:@"upcoming flights heuristic"];
  v9 = [(ATXCalendarEventsDataSource *)v7 sortEkEvents:v8];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v9 count])
  {
    v50 = date;
    v51 = v11;
    v47 = v8;
    v48 = v7;
    v49 = v5;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = v9;
    obj = v9;
    v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v61)
    {
      v12 = *v67;
      v13 = 0x278C3C000uLL;
      v55 = v10;
      v52 = *v67;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v66 + 1) + 8 * i);
          v63 = [*(v13 + 864) flightInformationSchemaForEvent:v15];
          v16 = [*(v13 + 864) updatedFlightInformationSchemaForEvent:v15 schemaForFlight:? heuristicDevice:?];
          startDate = [v15 startDate];
          v18 = [startDate dateByAddingTimeInterval:-86400.0];

          startDate2 = [v15 startDate];
          v64 = v18;
          v65 = v16;
          if ([v18 compare:startDate2]== 1)
          {
            v20 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v64;
              v72 = 2112;
              v73 = startDate2;
              _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: flightInfoWindowStartTime %@ is after flightInfoWindowEndTime %@. Skipping event", buf, 0x16u);
            }

            v13 = 0x278C3C000;
          }

          else
          {
            v21 = v10;
            v20 = v18;
            startDate3 = [v15 startDate];
            v23 = [startDate3 dateByAddingTimeInterval:-2400.0];

            v60 = v23;
            v24 = [self flightCheckInActionSuggestionForEvent:v15 flightSchema:v16 validStartDate:v20 validEndDate:v23];
            if (v24)
            {
              [v21 addObject:v24];
            }

            v25 = [ATXHeuristicFlightEventUtilities flightInformationSpotlightSuggestionForEvent:v15 schemaForFlight:v16 predictionReasons:0x80000000 score:v20 validStartDate:startDate2 validEndDate:70.0];
            if (v25)
            {
              [v21 addObject:v25];
            }

            v58 = v25;
            v26 = [self weatherAtTravelDestinationSpotlightEntry:v15 schemaForFlight:v16 predictionReasons:0x80000000 score:v20 validStartDate:startDate2 validEndDate:v62 heuristicDevice:40.0];
            if (v26)
            {
              [v21 addObject:v26];
            }

            v57 = v26;
            v27 = [ATXHeuristicNavigationUtilities locationFromEvent:v15 schemaType:0];
            v59 = v24;
            v56 = v27;
            if ([ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v27 maxDistance:250000])
            {
              startDate4 = [v15 startDate];
              v29 = [startDate4 dateByAddingTimeInterval:-14400.0];

              startDate5 = [v15 startDate];
              v31 = [startDate5 dateByAddingTimeInterval:-2400.0];

              if ([v29 compare:v31]== 1)
              {
                v32 = __atxlog_handle_context_heuristic();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v71 = v29;
                  v72 = 2112;
                  v73 = v31;
                  _os_log_fault_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_FAULT, "ATXHeuristicUpcomingFlightEventUtilities: start %@ is after end %@", buf, 0x16u);
                }
              }

              else
              {
                v32 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v15 schemaForEvent:v65 transportType:@"AUTOMOBILE" predictionReasons:0x80000000 heuristicDevice:v62 score:v29 validStartDate:65.0 validEndDate:v31];
                if (v32)
                {
                  [v55 addObject:v32];
                  v33 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                  [v27 coordinate];
                  v34 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v33 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                  [v51 addObject:v34];
                }
              }
            }

            else
            {
              v29 = __atxlog_handle_context_heuristic();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: Skipped Navigation suggestions", buf, 2u);
              }
            }

            startDate6 = [v15 startDate];
            v36 = [startDate6 dateByAddingTimeInterval:-1200.0];

            startDate7 = [v15 startDate];
            v38 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:v15];
            v39 = [ATXContextFlightEventSuggestionProducer alloc];
            title = [v15 title];
            v41 = [(ATXContextFlightEventSuggestionProducer *)v39 initWithTitle:title flightInformationSchema:v65 urlString:0 teamIdentifier:0 validFromStartDate:v36 validToEndDate:startDate7 alternateDestinationTitle:0 dateInterval:v38];

            v42 = [(ATXContextFlightEventSuggestionProducer *)v41 suggestionForAirplaneModeWithPredictionReasons:0x80000000 score:80.0];
            if (v42)
            {
              [ATXHeuristicFlightEventUtilities logSuggestion:v42 description:@"ATXHeuristicUpcomingFlightEventUtilities: Airplane Mode suggestion"];
              [v55 addObject:v42];
            }

            v10 = v55;
            v12 = v52;
            v13 = 0x278C3C000uLL;
          }
        }

        v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v61);
    }

    v11 = v51;
    v43 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v10 additionalRefreshTriggers:v51];
    v5 = v49;
    date = v50;
    v8 = v47;
    v7 = v48;
    v9 = v46;
  }

  else
  {
    v43 = objc_opt_new();
  }

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

@end