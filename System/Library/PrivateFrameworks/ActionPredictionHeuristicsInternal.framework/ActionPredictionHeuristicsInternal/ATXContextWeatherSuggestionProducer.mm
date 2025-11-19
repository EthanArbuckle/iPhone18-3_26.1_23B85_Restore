@interface ATXContextWeatherSuggestionProducer
- (ATXContextWeatherSuggestionProducer)initWithValidDateInterval:(id)a3 reasonCode:(int64_t)a4 score:(double)a5;
- (id)_dummySuggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5;
- (id)_suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5;
- (id)dummySuggestion;
- (id)weatherSuggestionWithRefreshTriggers:(id)a3;
@end

@implementation ATXContextWeatherSuggestionProducer

- (ATXContextWeatherSuggestionProducer)initWithValidDateInterval:(id)a3 reasonCode:(int64_t)a4 score:(double)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = ATXContextWeatherSuggestionProducer;
  v10 = [(ATXContextWeatherSuggestionProducer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, a3);
    v11->_score = a5;
    v11->_reasonCode = a4;
    v12 = [MEMORY[0x277D41BF8] sharedInstance];
    locationManager = v11->_locationManager;
    v11->_locationManager = v12;
  }

  return v11;
}

- (id)weatherSuggestionWithRefreshTriggers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CEB2D0]);
  v6 = [(NSDateInterval *)self->_validDateInterval startDate];
  v7 = [(NSDateInterval *)self->_validDateInterval endDate];
  v8 = [v5 initWithStartDate:v6 endDate:v7 lockScreenEligible:0 predicate:0];

  v9 = [(ATXLocationManager *)self->_locationManager getCurrentLocation];
  if (v9)
  {
    v10 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
    [v9 coordinate];
    v11 = [ATXInformationHeuristicRefreshLocationTrigger initWithExitingLocation:v10 radiusInMeters:"initWithExitingLocation:radiusInMeters:"];
    [v4 addObject:v11];
    [v9 coordinate];
    v14 = [objc_alloc(MEMORY[0x277CEB860]) initWithWeatherLatitude:v8 longitude:v12 criteria:v13];
    v15 = [(ATXContextWeatherSuggestionProducer *)self _suggestionWithAction:v14 predictionReasons:1 << self->_reasonCode score:self->_score];
  }

  else
  {
    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXContextWeatherSuggestionProducer weatherSuggestionWithRefreshTriggers:v16];
    }

    v15 = 0;
  }

  return v15;
}

- (id)dummySuggestion
{
  v3 = objc_alloc(MEMORY[0x277CEB2D0]);
  v4 = [(NSDateInterval *)self->_validDateInterval startDate];
  v5 = [(NSDateInterval *)self->_validDateInterval endDate];
  v6 = [v3 initWithStartDate:v4 endDate:v5 lockScreenEligible:0 predicate:0];

  v7 = [objc_alloc(MEMORY[0x277CEB860]) initWithEntityName:&stru_2850AD368 qid:&stru_2850AD368 criteria:v6];
  v8 = [(ATXContextWeatherSuggestionProducer *)self _dummySuggestionWithAction:v7 predictionReasons:1 << self->_reasonCode score:self->_score];

  return v8;
}

- (id)_suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5
{
  reasonCode = self->_reasonCode;
  v8 = a3;
  v9 = stringForATXSuggestionPredictionReasonCode();
  v10 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v8 predictionReasons:a4 localizedReason:v9 score:0 dateInterval:a5];

  return v10;
}

- (id)_dummySuggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 score:(double)a5
{
  reasonCode = self->_reasonCode;
  v8 = a3;
  v9 = stringForATXSuggestionPredictionReasonCode();
  v10 = [ATXContextHeuristicSuggestionProducer dummySuggestionWithSpotlightAction:v8 predictionReasons:a4 localizedReason:v9 score:a5];

  return v10;
}

@end