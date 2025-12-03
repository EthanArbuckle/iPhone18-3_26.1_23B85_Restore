@interface AnalysisModel
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation AnalysisModel

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29E0FC850();
}

@end