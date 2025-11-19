@interface ATXActionSuggestionRequest
- (ATXActionSuggestionRequest)initWithLimit:(unint64_t)a3 scope:(id)a4 spotlightRecentTopics:(id)a5;
@end

@implementation ATXActionSuggestionRequest

- (ATXActionSuggestionRequest)initWithLimit:(unint64_t)a3 scope:(id)a4 spotlightRecentTopics:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = ATXActionSuggestionRequest;
  v9 = [(ATXPredictionRequest *)&v12 initWithLimit:a3 scope:a4];
  if (v9)
  {
    v10 = [v8 copy];
    [(ATXActionSuggestionRequest *)v9 setSpotlightRecentTopics:v10];
  }

  return v9;
}

@end