@interface HistoricalAnalysisDataSource
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation HistoricalAnalysisDataSource

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29E177B28(providerCopy, analysisCopy);
}

@end