@interface ATXContextWeatherSuggestionProducer
- (ATXContextWeatherSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score;
- (id)_dummySuggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score;
- (id)_suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score;
- (id)dummySuggestion;
- (id)weatherSuggestionWithRefreshTriggers:(id)triggers;
@end

@implementation ATXContextWeatherSuggestionProducer

- (ATXContextWeatherSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score
{
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = ATXContextWeatherSuggestionProducer;
  v10 = [(ATXContextWeatherSuggestionProducer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, interval);
    v11->_score = score;
    v11->_reasonCode = code;
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    locationManager = v11->_locationManager;
    v11->_locationManager = mEMORY[0x277D41BF8];
  }

  return v11;
}

- (id)weatherSuggestionWithRefreshTriggers:(id)triggers
{
  triggersCopy = triggers;
  v5 = objc_alloc(MEMORY[0x277CEB2D0]);
  startDate = [(NSDateInterval *)self->_validDateInterval startDate];
  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  v8 = [v5 initWithStartDate:startDate endDate:endDate lockScreenEligible:0 predicate:0];

  getCurrentLocation = [(ATXLocationManager *)self->_locationManager getCurrentLocation];
  if (getCurrentLocation)
  {
    v10 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
    [getCurrentLocation coordinate];
    v11 = [ATXInformationHeuristicRefreshLocationTrigger initWithExitingLocation:v10 radiusInMeters:"initWithExitingLocation:radiusInMeters:"];
    [triggersCopy addObject:v11];
    [getCurrentLocation coordinate];
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
  startDate = [(NSDateInterval *)self->_validDateInterval startDate];
  endDate = [(NSDateInterval *)self->_validDateInterval endDate];
  v6 = [v3 initWithStartDate:startDate endDate:endDate lockScreenEligible:0 predicate:0];

  v7 = [objc_alloc(MEMORY[0x277CEB860]) initWithEntityName:&stru_2850AD368 qid:&stru_2850AD368 criteria:v6];
  v8 = [(ATXContextWeatherSuggestionProducer *)self _dummySuggestionWithAction:v7 predictionReasons:1 << self->_reasonCode score:self->_score];

  return v8;
}

- (id)_suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score
{
  reasonCode = self->_reasonCode;
  actionCopy = action;
  v9 = stringForATXSuggestionPredictionReasonCode();
  v10 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:actionCopy predictionReasons:reasons localizedReason:v9 score:0 dateInterval:score];

  return v10;
}

- (id)_dummySuggestionWithAction:(id)action predictionReasons:(unint64_t)reasons score:(double)score
{
  reasonCode = self->_reasonCode;
  actionCopy = action;
  v9 = stringForATXSuggestionPredictionReasonCode();
  v10 = [ATXContextHeuristicSuggestionProducer dummySuggestionWithSpotlightAction:actionCopy predictionReasons:reasons localizedReason:v9 score:score];

  return v10;
}

@end