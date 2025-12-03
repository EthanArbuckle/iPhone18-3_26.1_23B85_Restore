@interface ATXEngagementTrackedDigestBiomeStream
- (ATXEngagementTrackedDigestBiomeStream)init;
- (id)initFromCompletedDigestBiomeStream:(id)stream;
- (id)initFromCompletedDigestBiomeStream:(id)stream resolutionSource:(id)source;
- (id)publisherFromStartTime:(double)time;
@end

@implementation ATXEngagementTrackedDigestBiomeStream

- (ATXEngagementTrackedDigestBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXEngagementTrackedDigestBiomeStream *)self initFromCompletedDigestBiomeStream:v3];

  return v4;
}

- (id)initFromCompletedDigestBiomeStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_opt_new();
  [v5 updateDatabase];
  v6 = [(ATXEngagementTrackedDigestBiomeStream *)self initFromCompletedDigestBiomeStream:streamCopy resolutionSource:v5];

  return v6;
}

- (id)initFromCompletedDigestBiomeStream:(id)stream resolutionSource:(id)source
{
  streamCopy = stream;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = ATXEngagementTrackedDigestBiomeStream;
  v9 = [(ATXEngagementTrackedDigestBiomeStream *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_completedDigestStream, stream);
    objc_storeStrong(p_isa + 2, source);
  }

  return p_isa;
}

- (id)publisherFromStartTime:(double)time
{
  v4 = [(ATXCompletedDigestBiomeStream *)self->_completedDigestStream publisherFromStartTime:time];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ATXEngagementTrackedDigestBiomeStream_publisherFromStartTime___block_invoke;
  v7[3] = &unk_278599178;
  v7[4] = self;
  v5 = [v4 mapWithTransform:v7];

  return v5;
}

id __64__ATXEngagementTrackedDigestBiomeStream_publisherFromStartTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 populateEngagementFromSource:*(*(a1 + 32) + 16)];

  return v3;
}

@end