@interface CycleLogNavigationHandler
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation CycleLogNavigationHandler

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29E2A4054(analysisCopy);
}

@end