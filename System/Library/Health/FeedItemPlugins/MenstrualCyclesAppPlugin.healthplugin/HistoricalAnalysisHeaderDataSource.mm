@interface HistoricalAnalysisHeaderDataSource
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation HistoricalAnalysisHeaderDataSource

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29E235260(analysisCopy);
}

@end