@interface ATXProactiveSuggestionClientModelEvaluatorPublishers
- (ATXProactiveSuggestionClientModelEvaluatorPublishers)initWithStartTime:(id)a3 endTime:(id)a4;
- (BPSPublisher)clientModelCacheUpdatePublisher;
- (BPSPublisher)shadowCandidatePublisher;
- (BPSPublisher)uiPublisher;
@end

@implementation ATXProactiveSuggestionClientModelEvaluatorPublishers

- (ATXProactiveSuggestionClientModelEvaluatorPublishers)initWithStartTime:(id)a3 endTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXProactiveSuggestionClientModelEvaluatorPublishers;
  v8 = [(ATXProactiveSuggestionClientModelEvaluatorPublishers *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    startTime = v8->_startTime;
    v8->_startTime = v9;

    v11 = [v7 copy];
    endTime = v8->_endTime;
    v8->_endTime = v11;
  }

  return v8;
}

- (BPSPublisher)shadowCandidatePublisher
{
  v3 = [ATXCandidateRelevanceModelDatasetGeneratorConfigApp candidatePublisherWithStartTime:self->_startTime endTime:self->_endTime];
  v4 = [ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction candidatePublisherWithStartTime:self->_startTime endTime:self->_endTime];
  v5 = [v3 orderedMergeWithOther:v4 comparator:&__block_literal_global_159];

  return v5;
}

uint64_t __80__ATXProactiveSuggestionClientModelEvaluatorPublishers_shadowCandidatePublisher__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BPSPublisher)uiPublisher
{
  v3 = objc_opt_new();
  v4 = [v3 publisherWithStartTime:self->_startTime endTime:self->_endTime];

  return v4;
}

- (BPSPublisher)clientModelCacheUpdatePublisher
{
  v3 = objc_opt_new();
  v4 = [v3 publisherWithStartTime:self->_startTime endTime:self->_endTime];

  return v4;
}

@end