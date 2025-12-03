@interface ATXAppLaunchBasedInferredActivityBiomeStream
- (ATXAppLaunchBasedInferredActivityBiomeStream)init;
- (ATXAppLaunchBasedInferredActivityBiomeStream)initWithInferredModeSessionStream:(id)stream;
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
@end

@implementation ATXAppLaunchBasedInferredActivityBiomeStream

- (ATXAppLaunchBasedInferredActivityBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXAppLaunchBasedInferredActivityBiomeStream *)self initWithInferredModeSessionStream:v3];

  return v4;
}

- (ATXAppLaunchBasedInferredActivityBiomeStream)initWithInferredModeSessionStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXAppLaunchBasedInferredActivityBiomeStream;
  v6 = [(ATXAppLaunchBasedInferredActivityBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeSessionStream, stream);
  }

  return v7;
}

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXAppLaunchInferredModeSessionBiomeStream *)self->_modeSessionStream publisherFromStartTime:time];
  v4 = [v3 mapWithTransform:&__block_literal_global_77];
  v5 = [v4 mapWithTransform:&__block_literal_global_13];

  return v5;
}

id __78__ATXAppLaunchBasedInferredActivityBiomeStream_sessionPublisherFromStartTime___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ATXUnifiedInferredActivitySession alloc];
  [v2 startTime];
  v5 = v4;
  [v2 endTime];
  v7 = v6;
  v8 = [v2 inferredActivityType];
  [v2 confidence];
  v10 = v9;

  v11 = [(ATXUnifiedInferredActivitySession *)v3 initFromStartTime:@"appLaunchInferredActivity" endTime:v8 source:v5 activityType:v7 confidence:v10];

  return v11;
}

- (id)transitionPublisherFromStartTime:(double)time
{
  v3 = [(ATXAppLaunchBasedInferredActivityBiomeStream *)self sessionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions transitionPublisherFromSessionPublisher:v3];

  return v4;
}

@end