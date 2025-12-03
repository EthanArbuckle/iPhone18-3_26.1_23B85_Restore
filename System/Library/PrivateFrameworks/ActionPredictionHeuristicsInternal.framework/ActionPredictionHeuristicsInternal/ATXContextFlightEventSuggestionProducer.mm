@interface ATXContextFlightEventSuggestionProducer
- (ATXContextFlightEventSuggestionProducer)initWithTitle:(id)title flightInformationSchema:(id)schema urlString:(id)string teamIdentifier:(id)identifier validFromStartDate:(id)date validToEndDate:(id)endDate alternateDestinationTitle:(id)destinationTitle dateInterval:(id)self0;
- (id)_contextTitleWithReasons:(unint64_t)reasons;
- (id)_stringsWithPredictionReasons:(unint64_t)reasons;
- (id)suggestionForAirplaneModeWithPredictionReasons:(unint64_t)reasons score:(double)score;
- (id)suggestionForFlightCheckInWithReason:(unint64_t)reason score:(double)score;
- (id)suggestionForFlightInformationWithReason:(unint64_t)reason score:(double)score date:(id)date;
- (id)suggestionForRideShareAppForDestination:(id)destination source:(id)source rideOptionName:(id)name preferredBundleId:(id)id predictionReasons:(unint64_t)reasons score:(double)score;
- (id)suggestionForWeatherAtFlightDestinationLocation:(CLLocationCoordinate2D)location destination:(id)destination predictionReasons:(unint64_t)reasons score:(double)score;
- (id)suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score;
@end

@implementation ATXContextFlightEventSuggestionProducer

- (ATXContextFlightEventSuggestionProducer)initWithTitle:(id)title flightInformationSchema:(id)schema urlString:(id)string teamIdentifier:(id)identifier validFromStartDate:(id)date validToEndDate:(id)endDate alternateDestinationTitle:(id)destinationTitle dateInterval:(id)self0
{
  titleCopy = title;
  schemaCopy = schema;
  stringCopy = string;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  destinationTitleCopy = destinationTitle;
  intervalCopy = interval;
  v28.receiver = self;
  v28.super_class = ATXContextFlightEventSuggestionProducer;
  v19 = [(ATXContextFlightEventSuggestionProducer *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_flightInformationSchema, schema);
    objc_storeStrong(&v20->_urlString, string);
    objc_storeStrong(&v20->_teamIdentifier, identifier);
    objc_storeStrong(&v20->_validFromStartDate, date);
    objc_storeStrong(&v20->_validToEndDate, endDate);
    objc_storeStrong(&v20->_alternateDestinationTitle, destinationTitle);
    objc_storeStrong(&v20->_dateInterval, interval);
  }

  return v20;
}

- (id)_contextTitleWithReasons:(unint64_t)reasons
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    title = self->_title;
    *buf = 136446466;
    v25 = "[ATXContextFlightEventSuggestionProducer _contextTitleWithReasons:]";
    v26 = 2112;
    v27 = title;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s _eventTitle:%@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [(NSDictionary *)self->_flightInformationSchema objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"arrivalAirport"];
  v10 = [v9 objectForKeyedSubscript:@"address"];
  v11 = [v10 objectForKeyedSubscript:@"addressLocality"];

  if (v11)
  {
    if ((reasons & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (!v11)
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v18 = @"CONTEXT_UPCOMING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
      goto LABEL_21;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = @"CONTEXT_UPCOMING_FLIGHT_TITLE";
LABEL_18:
    v17 = [v7 localizedStringForKey:v15 value:&stru_2850AD368 table:0];
    v19 = [v14 localizedStringWithFormat:v17, v11];
LABEL_22:
    v13 = v19;

    goto LABEL_23;
  }

  v11 = self->_alternateDestinationTitle;
  if ((reasons & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((reasons & 0x100000000) != 0)
  {
    if (!v11)
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v18 = @"CONTEXT_ONGOING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
      goto LABEL_21;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = @"CONTEXT_ONGOING_FLIGHT_TITLE";
    goto LABEL_18;
  }

  if ((reasons & 0x200000000) != 0)
  {
    if (v11)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = @"CONTEXT_CONCLUDED_FLIGHT_TITLE";
      goto LABEL_18;
    }

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    v18 = @"CONTEXT_CONCLUDED_FLIGHT_NO_ARRIVAL_CITY_TITLE";
LABEL_21:
    v19 = [v16 localizedStringForKey:v18 value:&stru_2850AD368 table:0];
    goto LABEL_22;
  }

  v12 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v22 = self->_title;
    v23 = [(ATXContextFlightEventSuggestionProducer *)self _stringsWithPredictionReasons:reasons];
    *buf = 136446978;
    v25 = "[ATXContextFlightEventSuggestionProducer _contextTitleWithReasons:]";
    v26 = 2112;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    v30 = 2112;
    v31 = v11;
    _os_log_fault_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_FAULT, "%{public}s The predictionReasons for the suggestion for event%@ :%@ was not one of UpcomingFlight, OngoingFlight, ConcludedFlight. Arrival city: %@. Falling back on the title", buf, 0x2Au);
  }

  v13 = self->_title;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_stringsWithPredictionReasons:(unint64_t)reasons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = objc_opt_new();
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __73__ATXContextFlightEventSuggestionProducer__stringsWithPredictionReasons___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];
}

- (id)suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score
{
  actionCopy = action;
  v9 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:reasons];
  v10 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:actionCopy predictionReasons:reasons localizedReason:v9 score:0 dateInterval:score];

  return v10;
}

- (id)suggestionForFlightInformationWithReason:(unint64_t)reason score:(double)score date:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  flightInformationSchema = self->_flightInformationSchema;
  dateCopy = date;
  v11 = [(NSDictionary *)flightInformationSchema objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"flightNumber"];

  if (!v12)
  {
    [ATXContextFlightEventSuggestionProducer suggestionForFlightInformationWithReason:a2 score:self date:?];
  }

  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446466;
    v20 = "[ATXContextFlightEventSuggestionProducer suggestionForFlightInformationWithReason:score:date:]";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "Flight Info: %{public}s flightNumber:%@", &v19, 0x16u);
  }

  v14 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithFlightCode:v12 date:dateCopy criteria:v14];

  v16 = [(ATXContextFlightEventSuggestionProducer *)self suggestionWithAction:v15 predictionReasons:reason score:score];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)suggestionForWeatherAtFlightDestinationLocation:(CLLocationCoordinate2D)location destination:(id)destination predictionReasons:(unint64_t)reasons score:(double)score
{
  longitude = location.longitude;
  latitude = location.latitude;
  v11 = MEMORY[0x277CEB2D0];
  destinationCopy = destination;
  v13 = [[v11 alloc] initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  v14 = [objc_alloc(MEMORY[0x277CEB860]) initWithWeatherLocation:destinationCopy latitude:v13 longitude:latitude criteria:longitude];

  v15 = [(ATXContextFlightEventSuggestionProducer *)self suggestionWithAction:v14 predictionReasons:reasons score:score];

  return v15;
}

- (id)suggestionForRideShareAppForDestination:(id)destination source:(id)source rideOptionName:(id)name preferredBundleId:(id)id predictionReasons:(unint64_t)reasons score:(double)score
{
  idCopy = id;
  destinationCopy = destination;
  v14 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:reasons];
  validToEndDate = self->_validToEndDate;
  v16 = [ATXContextHeuristicSuggestionProducer rideshareAppActionForDestination:destinationCopy preferredBundleId:idCopy predictionReasons:reasons title:self->_title localizedReason:v14 score:self->_validFromStartDate validFromStartDate:score validToEndDate:validToEndDate dateInterval:self->_dateInterval];

  return v16;
}

- (id)suggestionForFlightCheckInWithReason:(unint64_t)reason score:(double)score
{
  if (!self->_title)
  {
    [ATXContextFlightEventSuggestionProducer suggestionForFlightCheckInWithReason:a2 score:self];
  }

  if (!self->_teamIdentifier)
  {
    [ATXContextFlightEventSuggestionProducer suggestionForFlightCheckInWithReason:a2 score:self];
  }

  v8 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:reason];
  v9 = [ATXContextHeuristicSuggestionProducer flightCheckInActivityWithSubtitle:self->_title url:self->_urlString teamIdentifier:self->_teamIdentifier predictionReasons:reason localizedReason:v8 score:self->_validFromStartDate validStartDate:score validEndDate:self->_validToEndDate];

  return v9;
}

- (id)suggestionForAirplaneModeWithPredictionReasons:(unint64_t)reasons score:(double)score
{
  v7 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:?];
  v8 = [ATXContextHeuristicSuggestionProducer toggleAirplaneModeWithPredictionReasons:reasons localizedReason:v7 score:self->_validFromStartDate validFromStartDate:self->_validToEndDate validToEndDate:self->_dateInterval dateInterval:score];

  return v8;
}

- (void)suggestionForFlightInformationWithReason:(uint64_t)a1 score:(uint64_t)a2 date:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXContextFlightEventSuggestionProducer.m" lineNumber:117 description:@"Missing Flight Number for retrieving flight information"];
}

- (void)suggestionForFlightCheckInWithReason:(uint64_t)a1 score:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXContextFlightEventSuggestionProducer.m" lineNumber:166 description:@"Missing flight checkIn title "];
}

- (void)suggestionForFlightCheckInWithReason:(uint64_t)a1 score:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXContextFlightEventSuggestionProducer.m" lineNumber:167 description:@"Missing flight checkIn teamIdentifier"];
}

@end