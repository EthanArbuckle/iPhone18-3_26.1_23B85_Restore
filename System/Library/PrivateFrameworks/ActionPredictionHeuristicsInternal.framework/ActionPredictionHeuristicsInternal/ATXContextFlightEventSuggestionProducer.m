@interface ATXContextFlightEventSuggestionProducer
- (ATXContextFlightEventSuggestionProducer)initWithTitle:(id)a3 flightInformationSchema:(id)a4 urlString:(id)a5 teamIdentifier:(id)a6 validFromStartDate:(id)a7 validToEndDate:(id)a8 alternateDestinationTitle:(id)a9 dateInterval:(id)a10;
- (id)_contextTitleWithReasons:(unint64_t)a3;
- (id)_stringsWithPredictionReasons:(unint64_t)a3;
- (id)suggestionForAirplaneModeWithPredictionReasons:(unint64_t)a3 score:(double)a4;
- (id)suggestionForFlightCheckInWithReason:(unint64_t)a3 score:(double)a4;
- (id)suggestionForFlightInformationWithReason:(unint64_t)a3 score:(double)a4 date:(id)a5;
- (id)suggestionForRideShareAppForDestination:(id)a3 source:(id)a4 rideOptionName:(id)a5 preferredBundleId:(id)a6 predictionReasons:(unint64_t)a7 score:(double)a8;
- (id)suggestionForWeatherAtFlightDestinationLocation:(CLLocationCoordinate2D)a3 destination:(id)a4 predictionReasons:(unint64_t)a5 score:(double)a6;
- (id)suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5;
@end

@implementation ATXContextFlightEventSuggestionProducer

- (ATXContextFlightEventSuggestionProducer)initWithTitle:(id)a3 flightInformationSchema:(id)a4 urlString:(id)a5 teamIdentifier:(id)a6 validFromStartDate:(id)a7 validToEndDate:(id)a8 alternateDestinationTitle:(id)a9 dateInterval:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = ATXContextFlightEventSuggestionProducer;
  v19 = [(ATXContextFlightEventSuggestionProducer *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_flightInformationSchema, a4);
    objc_storeStrong(&v20->_urlString, a5);
    objc_storeStrong(&v20->_teamIdentifier, a6);
    objc_storeStrong(&v20->_validFromStartDate, a7);
    objc_storeStrong(&v20->_validToEndDate, a8);
    objc_storeStrong(&v20->_alternateDestinationTitle, a9);
    objc_storeStrong(&v20->_dateInterval, a10);
  }

  return v20;
}

- (id)_contextTitleWithReasons:(unint64_t)a3
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
    if ((a3 & 0x80000000) == 0)
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
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a3 & 0x100000000) != 0)
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

  if ((a3 & 0x200000000) != 0)
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
    v23 = [(ATXContextFlightEventSuggestionProducer *)self _stringsWithPredictionReasons:a3];
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

- (id)_stringsWithPredictionReasons:(unint64_t)a3
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

- (id)suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5
{
  v8 = a3;
  v9 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:a4];
  v10 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v8 predictionReasons:a4 localizedReason:v9 score:0 dateInterval:a5];

  return v10;
}

- (id)suggestionForFlightInformationWithReason:(unint64_t)a3 score:(double)a4 date:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  flightInformationSchema = self->_flightInformationSchema;
  v10 = a5;
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
  v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithFlightCode:v12 date:v10 criteria:v14];

  v16 = [(ATXContextFlightEventSuggestionProducer *)self suggestionWithAction:v15 predictionReasons:a3 score:a4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)suggestionForWeatherAtFlightDestinationLocation:(CLLocationCoordinate2D)a3 destination:(id)a4 predictionReasons:(unint64_t)a5 score:(double)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v11 = MEMORY[0x277CEB2D0];
  v12 = a4;
  v13 = [[v11 alloc] initWithStartDate:self->_validFromStartDate endDate:self->_validToEndDate lockScreenEligible:0 predicate:0];
  v14 = [objc_alloc(MEMORY[0x277CEB860]) initWithWeatherLocation:v12 latitude:v13 longitude:latitude criteria:longitude];

  v15 = [(ATXContextFlightEventSuggestionProducer *)self suggestionWithAction:v14 predictionReasons:a5 score:a6];

  return v15;
}

- (id)suggestionForRideShareAppForDestination:(id)a3 source:(id)a4 rideOptionName:(id)a5 preferredBundleId:(id)a6 predictionReasons:(unint64_t)a7 score:(double)a8
{
  v12 = a6;
  v13 = a3;
  v14 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:a7];
  validToEndDate = self->_validToEndDate;
  v16 = [ATXContextHeuristicSuggestionProducer rideshareAppActionForDestination:v13 preferredBundleId:v12 predictionReasons:a7 title:self->_title localizedReason:v14 score:self->_validFromStartDate validFromStartDate:a8 validToEndDate:validToEndDate dateInterval:self->_dateInterval];

  return v16;
}

- (id)suggestionForFlightCheckInWithReason:(unint64_t)a3 score:(double)a4
{
  if (!self->_title)
  {
    [ATXContextFlightEventSuggestionProducer suggestionForFlightCheckInWithReason:a2 score:self];
  }

  if (!self->_teamIdentifier)
  {
    [ATXContextFlightEventSuggestionProducer suggestionForFlightCheckInWithReason:a2 score:self];
  }

  v8 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:a3];
  v9 = [ATXContextHeuristicSuggestionProducer flightCheckInActivityWithSubtitle:self->_title url:self->_urlString teamIdentifier:self->_teamIdentifier predictionReasons:a3 localizedReason:v8 score:self->_validFromStartDate validStartDate:a4 validEndDate:self->_validToEndDate];

  return v9;
}

- (id)suggestionForAirplaneModeWithPredictionReasons:(unint64_t)a3 score:(double)a4
{
  v7 = [(ATXContextFlightEventSuggestionProducer *)self _contextTitleWithReasons:?];
  v8 = [ATXContextHeuristicSuggestionProducer toggleAirplaneModeWithPredictionReasons:a3 localizedReason:v7 score:self->_validFromStartDate validFromStartDate:self->_validToEndDate validToEndDate:self->_dateInterval dateInterval:a4];

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