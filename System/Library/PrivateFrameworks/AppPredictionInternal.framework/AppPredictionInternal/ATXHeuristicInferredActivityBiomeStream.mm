@interface ATXHeuristicInferredActivityBiomeStream
- (ATXHeuristicInferredActivityBiomeStream)init;
- (id)initFromInferredModeStream:(id)stream;
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
@end

@implementation ATXHeuristicInferredActivityBiomeStream

- (ATXHeuristicInferredActivityBiomeStream)init
{
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  inferredMode = [userFocus InferredMode];
  v6 = [(ATXHeuristicInferredActivityBiomeStream *)self initFromInferredModeStream:inferredMode];

  return v6;
}

- (id)initFromInferredModeStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXHeuristicInferredActivityBiomeStream;
  v6 = [(ATXHeuristicInferredActivityBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heuristicEventBiomeStream, stream);
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

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXHeuristicInferredActivityBiomeStream *)self transitionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

- (id)transitionPublisherFromStartTime:(double)time
{
  heuristicEventBiomeStream = self->_heuristicEventBiomeStream;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v6 = [(BMStream *)heuristicEventBiomeStream atx_publisherFromStartTime:v5];
  v7 = [(ATXHeuristicInferredActivityBiomeStream *)self _transitionPublisherFromInferredModePublisher:v6];

  return v7;
}

@end