@interface CycleChartsModelProvider
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)significantTimeChangeDidOccur;
@end

@implementation CycleChartsModelProvider

- (void)significantTimeChangeDidOccur
{

  sub_29DF13808();
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29DF14890(analysisCopy);
}

@end