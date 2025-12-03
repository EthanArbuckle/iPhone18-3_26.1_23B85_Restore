@interface ATXCompletedMissedNotificationRankingStream
- (ATXCompletedMissedNotificationRankingStream)init;
- (id)initFromMissedNotificationRankingEventBiomeStream:(id)stream;
- (id)publisherFromStartTime:(double)time;
@end

@implementation ATXCompletedMissedNotificationRankingStream

- (ATXCompletedMissedNotificationRankingStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXCompletedMissedNotificationRankingStream *)self initFromMissedNotificationRankingEventBiomeStream:v3];

  return v4;
}

- (id)initFromMissedNotificationRankingEventBiomeStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXCompletedMissedNotificationRankingStream;
  v6 = [(ATXCompletedMissedNotificationRankingStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawMNREventStream, stream);
  }

  return v7;
}

- (id)publisherFromStartTime:(double)time
{
  v3 = [(ATXMissedNotificationRankingBiomeStream *)self->_rawMNREventStream publisherFromStartTime:time];
  v4 = objc_opt_new();
  v5 = [v3 scanWithInitial:v4 nextPartialResult:&__block_literal_global_190];
  v6 = [v5 filterWithIsIncluded:&__block_literal_global_69];
  v7 = [v6 mapWithTransform:&__block_literal_global_72];

  return v7;
}

_ATXActiveMissedNotificationRankingTuple *__70__ATXCompletedMissedNotificationRankingStream_publisherFromStartTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [_ATXActiveMissedNotificationRankingTuple alloc];
  v7 = [v4 eventBody];

  v8 = [(_ATXActiveMissedNotificationRankingTuple *)v6 initWithPreviousTuple:v5 nextRankingEvent:v7];

  return v8;
}

BOOL __70__ATXCompletedMissedNotificationRankingStream_publisherFromStartTime___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 justCompletedRanking];
  v3 = v2 != 0;

  return v3;
}

@end