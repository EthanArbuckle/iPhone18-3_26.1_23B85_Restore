@interface PHSuggestionMessageMatchingResult
- (PHSuggestionMessageMatchingResult)initWithSuggestion:(id)suggestion messageContext:(id)context;
- (double)scoreForSuggestionMatchingType:(int64_t)type;
- (void)registerMatchingType:(int64_t)type weight:(double)weight;
@end

@implementation PHSuggestionMessageMatchingResult

- (double)scoreForSuggestionMatchingType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  scoreByCMMSuggestionMatchingType = self->_scoreByCMMSuggestionMatchingType;
  if (scoreByCMMSuggestionMatchingType)
  {
    v6 = [(NSMutableDictionary *)scoreByCMMSuggestionMatchingType objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)registerMatchingType:(int64_t)type weight:(double)weight
{
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [(NSMutableDictionary *)self->_scoreByCMMSuggestionMatchingType objectForKeyedSubscript:?];
  v7 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v8 = v6;
    [v6 doubleValue];
    weight = [v7 numberWithDouble:v9 + weight];
  }

  else
  {
    weight = [MEMORY[0x1E696AD98] numberWithDouble:weight];
  }

  [(NSMutableDictionary *)self->_scoreByCMMSuggestionMatchingType setObject:weight forKeyedSubscript:v11];
}

- (PHSuggestionMessageMatchingResult)initWithSuggestion:(id)suggestion messageContext:(id)context
{
  suggestionCopy = suggestion;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PHSuggestionMessageMatchingResult;
  v9 = [(PHSuggestionMessageMatchingResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, suggestion);
    objc_storeStrong(&v10->_messageContext, context);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    scoreByCMMSuggestionMatchingType = v10->_scoreByCMMSuggestionMatchingType;
    v10->_scoreByCMMSuggestionMatchingType = dictionary;
  }

  return v10;
}

@end