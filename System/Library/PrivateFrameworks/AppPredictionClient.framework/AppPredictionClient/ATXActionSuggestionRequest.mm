@interface ATXActionSuggestionRequest
- (ATXActionSuggestionRequest)initWithLimit:(unint64_t)limit scope:(id)scope spotlightRecentTopics:(id)topics;
@end

@implementation ATXActionSuggestionRequest

- (ATXActionSuggestionRequest)initWithLimit:(unint64_t)limit scope:(id)scope spotlightRecentTopics:(id)topics
{
  topicsCopy = topics;
  v12.receiver = self;
  v12.super_class = ATXActionSuggestionRequest;
  v9 = [(ATXPredictionRequest *)&v12 initWithLimit:limit scope:scope];
  if (v9)
  {
    v10 = [topicsCopy copy];
    [(ATXActionSuggestionRequest *)v9 setSpotlightRecentTopics:v10];
  }

  return v9;
}

@end