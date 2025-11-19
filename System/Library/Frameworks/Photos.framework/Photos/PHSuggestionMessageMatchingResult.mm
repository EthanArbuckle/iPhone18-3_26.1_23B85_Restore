@interface PHSuggestionMessageMatchingResult
- (PHSuggestionMessageMatchingResult)initWithSuggestion:(id)a3 messageContext:(id)a4;
- (double)scoreForSuggestionMatchingType:(int64_t)a3;
- (void)registerMatchingType:(int64_t)a3 weight:(double)a4;
@end

@implementation PHSuggestionMessageMatchingResult

- (double)scoreForSuggestionMatchingType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

- (void)registerMatchingType:(int64_t)a3 weight:(double)a4
{
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(NSMutableDictionary *)self->_scoreByCMMSuggestionMatchingType objectForKeyedSubscript:?];
  v7 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v8 = v6;
    [v6 doubleValue];
    v10 = [v7 numberWithDouble:v9 + a4];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  }

  [(NSMutableDictionary *)self->_scoreByCMMSuggestionMatchingType setObject:v10 forKeyedSubscript:v11];
}

- (PHSuggestionMessageMatchingResult)initWithSuggestion:(id)a3 messageContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PHSuggestionMessageMatchingResult;
  v9 = [(PHSuggestionMessageMatchingResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeStrong(&v10->_messageContext, a4);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    scoreByCMMSuggestionMatchingType = v10->_scoreByCMMSuggestionMatchingType;
    v10->_scoreByCMMSuggestionMatchingType = v11;
  }

  return v10;
}

@end