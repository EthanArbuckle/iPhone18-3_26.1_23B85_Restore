@interface ATXEngagementTrackedMissedNotificationRankingBiomeStream
- (ATXEngagementTrackedMissedNotificationRankingBiomeStream)init;
- (id)initFromCompletedMNRBiomeStream:(id)a3;
- (id)initFromCompletedMNRBiomeStream:(id)a3 resolutionSource:(id)a4;
- (id)publisherFromStartTime:(double)a3;
@end

@implementation ATXEngagementTrackedMissedNotificationRankingBiomeStream

- (ATXEngagementTrackedMissedNotificationRankingBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXEngagementTrackedMissedNotificationRankingBiomeStream *)self initFromCompletedMNRBiomeStream:v3];

  return v4;
}

- (id)initFromCompletedMNRBiomeStream:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 updateDatabase];
  v6 = [(ATXEngagementTrackedMissedNotificationRankingBiomeStream *)self initFromCompletedMNRBiomeStream:v4 resolutionSource:v5];

  return v6;
}

- (id)initFromCompletedMNRBiomeStream:(id)a3 resolutionSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXEngagementTrackedMissedNotificationRankingBiomeStream;
  v9 = [(ATXEngagementTrackedMissedNotificationRankingBiomeStream *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_completedRankingStream, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)publisherFromStartTime:(double)a3
{
  v4 = [(ATXCompletedMissedNotificationRankingStream *)self->_completedRankingStream publisherFromStartTime:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__ATXEngagementTrackedMissedNotificationRankingBiomeStream_publisherFromStartTime___block_invoke;
  v7[3] = &unk_2785A11C0;
  v7[4] = self;
  v5 = [v4 mapWithTransform:v7];

  return v5;
}

id __83__ATXEngagementTrackedMissedNotificationRankingBiomeStream_publisherFromStartTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 populateEngagementFromSource:*(*(a1 + 32) + 16)];

  return v3;
}

@end