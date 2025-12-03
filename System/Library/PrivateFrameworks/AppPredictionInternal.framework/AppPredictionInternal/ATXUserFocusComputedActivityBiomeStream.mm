@interface ATXUserFocusComputedActivityBiomeStream
- (ATXUserFocusComputedActivityBiomeStream)init;
- (id)_transitionPublisherFromComputedModeStreamPublisher:(id)publisher;
- (id)initFromUserFocusComputedModeStream:(id)stream;
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
@end

@implementation ATXUserFocusComputedActivityBiomeStream

- (ATXUserFocusComputedActivityBiomeStream)init
{
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  v6 = [(ATXUserFocusComputedActivityBiomeStream *)self initFromUserFocusComputedModeStream:computedMode];

  return v6;
}

- (id)initFromUserFocusComputedModeStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXUserFocusComputedActivityBiomeStream;
  v6 = [(ATXUserFocusComputedActivityBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_computedModeStream, stream);
  }

  return v7;
}

- (id)_transitionPublisherFromComputedModeStreamPublisher:(id)publisher
{
  v3 = [publisher filterWithIsIncluded:&__block_literal_global_173];
  v4 = [v3 mapWithTransform:&__block_literal_global_13_0];

  return v4;
}

BOOL __95__ATXUserFocusComputedActivityBiomeStream__transitionPublisherFromComputedModeStreamPublisher___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = v2 != 0;

  return v3;
}

id __95__ATXUserFocusComputedActivityBiomeStream__transitionPublisherFromComputedModeStreamPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  [v3 semanticType];
  BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType();
  v4 = BMUserFocusInferredModeTypeToActivity();
  if (v4 == 14)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [ATXUnifiedInferredActivityTransition alloc];
  [v2 timestamp];
  v8 = v7;

  v9 = -[ATXUnifiedInferredActivityTransition initFromTransitionTime:isEntryEvent:source:activityType:confidence:](v6, "initFromTransitionTime:isEntryEvent:source:activityType:confidence:", [v3 starting], @"computedModeActivity", v4, v8, v5);

  return v9;
}

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXUserFocusComputedActivityBiomeStream *)self transitionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

- (id)transitionPublisherFromStartTime:(double)time
{
  computedModeStream = self->_computedModeStream;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v6 = [(BMStream *)computedModeStream atx_publisherFromStartTime:v5];
  v7 = [(ATXUserFocusComputedActivityBiomeStream *)self _transitionPublisherFromComputedModeStreamPublisher:v6];

  return v7;
}

@end