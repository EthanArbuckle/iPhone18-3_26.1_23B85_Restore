@interface MenstrualCyclesOnboardingItem
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation MenstrualCyclesOnboardingItem

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;

  sub_29DF28EAC(analysisCopy);
}

@end