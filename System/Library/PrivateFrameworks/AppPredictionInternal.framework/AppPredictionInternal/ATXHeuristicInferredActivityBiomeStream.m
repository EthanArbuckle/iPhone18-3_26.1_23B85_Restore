@interface ATXHeuristicInferredActivityBiomeStream
- (ATXHeuristicInferredActivityBiomeStream)init;
- (id)initFromInferredModeStream:(id)a3;
- (id)sessionPublisherFromStartTime:(double)a3;
- (id)transitionPublisherFromStartTime:(double)a3;
@end

@implementation ATXHeuristicInferredActivityBiomeStream

- (ATXHeuristicInferredActivityBiomeStream)init
{
  v3 = BiomeLibrary();
  v4 = [v3 UserFocus];
  v5 = [v4 InferredMode];
  v6 = [(ATXHeuristicInferredActivityBiomeStream *)self initFromInferredModeStream:v5];

  return v6;
}

- (id)initFromInferredModeStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicInferredActivityBiomeStream;
  v6 = [(ATXHeuristicInferredActivityBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heuristicEventBiomeStream, a3);
  }

  return v7;
}

id __89__ATXHeuristicInferredActivityBiomeStream__transitionPublisherFromInferredModePublisher___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  [v2 modeType];
  v3 = BMUserFocusInferredModeTypeToActivity();
  if (v3 == 14)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [ATXUnifiedInferredActivityTransition alloc];
  v6 = [v2 absoluteTimestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = -[ATXUnifiedInferredActivityTransition initFromTransitionTime:isEntryEvent:source:activityType:confidence:](v5, "initFromTransitionTime:isEntryEvent:source:activityType:confidence:", [v2 isStart], @"heuristicInferredActivity", v3, v7, v4);

  return v8;
}

- (id)sessionPublisherFromStartTime:(double)a3
{
  v3 = [(ATXHeuristicInferredActivityBiomeStream *)self transitionPublisherFromStartTime:a3];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

- (id)transitionPublisherFromStartTime:(double)a3
{
  heuristicEventBiomeStream = self->_heuristicEventBiomeStream;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [(BMStream *)heuristicEventBiomeStream atx_publisherFromStartTime:v5];
  v7 = [(ATXHeuristicInferredActivityBiomeStream *)self _transitionPublisherFromInferredModePublisher:v6];

  return v7;
}

@end